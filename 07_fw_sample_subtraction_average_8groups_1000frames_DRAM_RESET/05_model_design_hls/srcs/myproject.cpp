//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <iostream>
#include "myproject.h"


void read_pixel_data(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){

  // Whether or not we're in the frame
  bool inFrame;

  static video_if_t DataBuf;
  //Latch meta data as received as input image is identical
  //in size and format to output image

  //Reset input control signal
  DataBuf.User = 0;
  FrameLoop:
  do {
    #pragma HLS PIPELINE
    bool InLine;

    //As long as the frame is not finish
    if (DataBuf.nEndOF) {
      //Read data
      StreamIn >> DataBuf; // Same as DataBuf = StreamIn.read()
      inFrame = true;
    } else{ // If frame has finished
      //If End of frame met, reset inFrame flag
      inFrame = false;
      // And forward EOF if not sync with EOL
      if (DataBuf.nEndOL) {
        // Forward EOF if not sync with EOL
        video_if_t output_buf;
        output_buf.Data = 0;
        output_buf.User = DataBuf.User;
        StreamOut << output_buf;
      }
    }
    // If Start of frame is detected without Start Of Line
    if (DataBuf.SOF && DataBuf.nSOL) {
      // Forward SOF if not sync with SOL
      StreamOut << DataBuf;
    }
    // If Line Start, do computation
    if (DataBuf.SOL) {
      WriteInLoop:
      do{
        #pragma HLS PIPELINE

        video_if_t output_buf;
        
        Process_pixel:
        for (unsigned char i = 0; i < MONO16PIX_NBR; i++) {
          #pragma HLS UNROLL
          output_buf.MONO16PIX(i) = DataBuf.MONO16PIX(i);
        }

				// Set output control signal
				output_buf.User = DataBuf.User;
				//Store the result in the output stream
				StreamOut << output_buf;

        // If line is not finish
        if (DataBuf.nEndOL) {
          //Keep reading
          InLine = true;
          StreamIn >> DataBuf;
        } else {
          InLine = false;
        }
      } while (InLine);
    }
  } while (inFrame);
}


/**
 * @brief Forward image stream to CustomLogic output stream
 * 
 * @param StreamIn 
 * @param StreamOut 
 */
void send_output(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){

  static video_if_t DataOut;

  for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){
    #pragma HLS PIPELINE

    StreamIn >> DataOut;
    StreamOut << DataOut;
  }
}


/**
 * @brief Frame subtraction and averaging utilizing DRAM.
 * 
 * @param StreamIn 
 * @param StreamOut 
 * @param onboard_mem_base base address for the CustomLogic portion of the DRAM, data width is STREAM_DATA_WIDTH
 */
void pix_average(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut, ap_uint<STREAM_DATA_WIDTH>* onboard_mem_base, pixMono8 customlogic_reset){

  const unsigned PACKED_DEPTH = ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // 8 pixels per CoaXPress data packet

  // Subtraction buffer
  static ap_ufixed<pixMono12::width,pixMono12::width> buf[IMAGE_WIDTH * IMAGE_HEIGHT] = {0};
  #pragma HLS ARRAY_PARTITION variable=buf cyclic factor=8

  static bool arbitrator = 0; // Arbitrator

  static unsigned dram_wr_idx = 0; // DRAM write index for current CoaXPress packet
  static unsigned dram_group_idx = 0; // Current group writing to

  const unsigned num_groups = 8;
  const unsigned num_frames = 1000; // Must be even

  static ap_ufixed<21,21> sum[MONO16PIX_NBR] = {0}; // Accumulator sized to 21 bits, overkill but just to be safe
  #pragma HLS ARRAY_PARTITION variable=sum complete

  static video_if_t DataOut;
  video_if_t output_buf; // Output packet
  
  static video_if_t temp; // Buffer packet
  static video_if_t sub_res; // Subtraction result packet

  if(customlogic_reset == 1){ // reset
    StreamIn >> DataOut; // read CoaXPress packet
    StreamOut << DataOut; // Send output packet

    arbitrator = 0;
    dram_wr_idx = 0;
    dram_group_idx = 0;

  }else{
    ImageLoop:
    for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){ // Loop through the data stream These image dims MUST match eGrabber
      #pragma HLS PIPELINE

      StreamIn >> DataOut; // read CoaXPress packet

      if(dram_group_idx < num_groups){ // Save the first num_groups groups to DRAM

        UnpackLoop:
        for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
          #pragma HLS UNROLL
          output_buf.MONO16PIX(j) = DataOut.MONO16PIX(j); // This fw still sends the original frames back
        }

        // Check arbitrator, write subtraction to DRAM if arbitrator is 1

        if(arbitrator == 0){ // Buffer frame, but do nothing else
          SubBufferLoop:
          for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
            #pragma HLS UNROLL
            buf[i*MONO16PIX_NBR + j].range(11,0) = DataOut.MONO16PIX(j); // Buffer image 0 for subtraction
          }
        }else{ // Subtract image and send to DRAM memory

          SubtractLoop:
          for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
            #pragma HLS UNROLL
            sub_res.MONO16PIX(j) = DataOut.MONO16PIX(j) - buf[i*MONO16PIX_NBR + j].range(11,0); // Subtract last frame from current frame
          }
          onboard_mem_base[(dram_group_idx * (((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR) * num_frames)) + dram_wr_idx] = sub_res.Data; // Send subtraction result to DRAM
          dram_wr_idx++;
        }

      }else if(dram_group_idx == num_groups){ // Average num_frames frames across num_groups groups

        if(arbitrator == 0){ // Just forward this frame like normal

          UnpackSumLoop:
          for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
            #pragma HLS UNROLL
            output_buf.MONO16PIX(j) = DataOut.MONO16PIX(j); // This fw still sends the original frames back
          }

        }else{ // If arb==1, grab 500 subtracted frames from DRAM, average them, and send them. subtracted/averaged frames will be interleaved with normal
          
          // Calculate sums across groups
          SumOuterLoop:
          for(unsigned j = 0; j < num_groups; j++){
            #pragma HLS UNROLL
            temp.Data = onboard_mem_base[(j * (((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR) * num_frames)) + dram_wr_idx];

            SumInnerLoop:
            for(unsigned k = 0; k < MONO16PIX_NBR; k++){
              #pragma HLS LOOP_FLATTEN
              sum[k] += temp.MONO16PIX(k);
            }
          }

          // Calculate average image 
          AverageLoop:
          for(unsigned k = 0; k < MONO16PIX_NBR; k++){
            #pragma HLS UNROLL
            output_buf.MONO16PIX(k) = sum[k] / num_groups; // Calc average
            sum[k] = 0; // Reset running sum
          }

          dram_wr_idx++;
        }
      }

      output_buf.User = DataOut.User; // Attach side-channel TUSER info
      StreamOut << output_buf; // Send output packet
    }

    arbitrator = !arbitrator; 
    
    // Manage packet and group counters
    if(dram_wr_idx >= ((((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR) * num_frames) / 2)){ // Divide by two because only half of the frames are going to DRAM
      dram_wr_idx = 0;
      if(dram_group_idx == num_groups){
        dram_group_idx = 0;
      }else{
        dram_group_idx++;
      }
    }

  }
}


/**
 * @brief Primary HLS dataflow region. Streaming arch used to take advantage of functional pipelining.
 * 
 * @param VideoIn CustomLogic input stream
 * @param VideoOut CustomLogic output stream
 */
void myproject(
    hls::stream<video_if_t> &VideoIn, 
    hls::stream<video_if_t> &VideoOut,
    ap_uint<STREAM_DATA_WIDTH>* onboard_mem_base,
    pixMono8 customlogic_reset
) {

    const unsigned PACKED_DEPTH = ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // Packed depth of the data stream, 12-bit pixels use 16 bits. 8 pixels per data packed.
    
    #pragma HLS DATAFLOW 

    hls::stream<video_if_t> VideoBuffer; // Video stream buffer
    #pragma HLS STREAM variable=VideoBuffer depth=PACKED_DEPTH

    hls::stream<video_if_t> AveragedOut; // Averaging operation output stream
    #pragma HLS STREAM variable=AveragedOut depth=PACKED_DEPTH

    read_pixel_data(VideoIn, VideoBuffer); // Read CoaXPress image data 

    pix_average(VideoBuffer, AveragedOut, onboard_mem_base, customlogic_reset); // Average every num_frames images

    send_output(AveragedOut, VideoOut); // Forward frames to output
}
