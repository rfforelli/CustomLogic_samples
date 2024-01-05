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


/*  OLD  */
// void pix_average(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){

//   const unsigned PACKED_DEPTH =  ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR);

//   const unsigned num_frames = 500; 

//   static unsigned cntr = 0;

//   static ap_ufixed<21,21> sum[IMAGE_WIDTH * IMAGE_HEIGHT] = {0}; 
//   #pragma HLS ARRAY_PARTITION variable=sum cyclic factor=8

//   static video_if_t DataOut;
//   video_if_t output_buf;

//   ImageLoop:
//   for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){
//     #pragma HLS PIPELINE

//     StreamIn >> DataOut;


//     UnpackSumLoop:
//     for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
//       #pragma HLS UNROLL
//       sum[i*MONO16PIX_NBR + j] += DataOut.MONO16PIX(j); 
//     }
//     if(cntr < (num_frames-1)){
//       output_buf.Data = DataOut.Data;
//     }else if(cntr == (num_frames-1)){
//       AverageLoop:
//       for(unsigned char j = 0; j < MONO16PIX_NBR; j++){
//         #pragma HLS UNROLL
//         output_buf.MONO16PIX(j) = sum[i*MONO16PIX_NBR + j] / num_frames;
//         // std::cout << "sum: " << output_buf.MONO16PIX(j) << " ";
//         sum[i*MONO16PIX_NBR + j] = 0;
//       }

//     }
    
//     output_buf.User = DataOut.User;

//     StreamOut << output_buf;
//   }
  
//   if(cntr == (num_frames-1)){
//     cntr = 0;
//   }else{
//     cntr++;
//   }
// }



/**
 * @brief Frame averaging.
 * 
 * @param StreamIn 
 * @param StreamOut 
 */
void pix_average(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){


  const unsigned PACKED_DEPTH =  ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // 8 pixels per CoaXPress data packet

  const unsigned num_frames = 499; // Num frames to average

  static unsigned cntr = 0; // frame counter

  static ap_ufixed<21,21> sum[IMAGE_WIDTH * IMAGE_HEIGHT] = {0}; // Accumulator, sized to 21 bits to cover full range. MUST INCREASE IF num_frames INCREASES! Initialization unnecessary for hardware but useful for csim. 
  #pragma HLS ARRAY_PARTITION variable=sum cyclic factor=8

  static video_if_t DataOut;
  #pragma HLS DATA_PACK variable=DataOut

  video_if_t output_buf; // Output packet
  #pragma HLS DATA_PACK variable=output_buf

  ImageLoop:
  for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){ // Loop through the data stream These image dims MUST match eGrabber
    #pragma HLS PIPELINE

    StreamIn >> DataOut; // read CoaXPress packet

    if(cntr < num_frames){ // Add frames up to n-2 to the running sum
      UnpackSumLoop:
      for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
        #pragma HLS UNROLL
        output_buf.MONO16PIX(j) = DataOut.MONO16PIX(j); // This fw still sends the original frames back
        sum[i*MONO16PIX_NBR + j] += DataOut.MONO16PIX(j); // Add current pixel to running sum in its relative position
      }
    }else if(cntr == num_frames){ // average num_frames frames
      /* Uncomment to include 500th frame in average */
      // UnpackSumLoop1:
      // for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
      //   #pragma HLS UNROLL
      //   sum[i*MONO16PIX_NBR + j] += DataOut.MONO16PIX(j); // Add current packet to running sum
      // }

      AverageLoop:
      for(unsigned char j = 0; j < MONO16PIX_NBR; j++){
        #pragma HLS UNROLL
        output_buf.MONO16PIX(j) = sum[i*MONO16PIX_NBR + j] / num_frames; // Calc average
        // std::cout << "sum: " << output_buf.MONO16PIX(j) << " ";
        sum[i*MONO16PIX_NBR + j] = 0; // Reset running sum
      }
    }
    output_buf.User = DataOut.User; // Attach side-channel TUSER info

    StreamOut << output_buf; // Send output packet
  }
  
  // Reset frame counter
  if(cntr == num_frames){
    cntr = 0;
  }else{
    cntr++;
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
    hls::stream<video_if_t> &VideoOut
) {

    const unsigned PACKED_DEPTH = ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // Packed depth of the data stream, 12-bit pixels use 16 bits. 8 pixels per data packed.
    
    #pragma HLS DATAFLOW 

    hls::stream<video_if_t> VideoBuffer; // Video stream buffer
    #pragma HLS STREAM variable=VideoBuffer depth=PACKED_DEPTH

    hls::stream<video_if_t> AveragedOut; // Averaging operation output stream
    #pragma HLS STREAM variable=AveragedOut depth=PACKED_DEPTH

    read_pixel_data(VideoIn, VideoBuffer); // Read CoaXPress image data 

    pix_average(VideoBuffer, AveragedOut); // Average every num_frames images

    send_output(AveragedOut, VideoOut); // Forward frames to output
}
