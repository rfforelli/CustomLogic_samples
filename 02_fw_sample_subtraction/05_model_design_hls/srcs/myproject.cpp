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


/*   OLD   */
// /**
//  * @brief Pixel threshold. Loop through data stream, fully exposed if >2047, 0 otherwise
//  * 
//  * @param StreamIn 
//  * @param StreamOut 
//  */
// void pix_subtract(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){

//   unsigned PACKED_DEPTH =  ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // 8 pixels per CoaXPress packet

//   static bool arbitrator = 0; // Arbitrator
//   static hls::stream<video_if_t> SubtractionBuffer;
//   #pragma HLS STREAM variable=SubtractionBuffer depth=PACKED_DEPTH

//   static video_if_t DataOut;
//   video_if_t output_buf;
//   video_if_t subtrahend_buf;

//   for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){
//     #pragma HLS PIPELINE

//     StreamIn >> DataOut;

//     if(arbitrator == 0){ // Store current frame in stream buffer. This frame will be subtracted from the next. Still forward to the output stream
//       for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
//         #pragma HLS UNROLL
//         output_buf.MONO16PIX(j) = DataOut.MONO16PIX(j);
//       }
//       output_buf.User = DataOut.User;
//       SubtractionBuffer << output_buf;
//     }else if(arbitrator == 1){ // Subtraction previous frame from current
//       ap_ufixed<16,16,AP_TRN,AP_SAT> sub_res;
//       SubtractionBuffer >> subtrahend_buf;
//       for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
//         #pragma HLS UNROLL
//         sub_res = (ap_ufixed<16,16,AP_TRN,AP_SAT>)DataOut.MONO16PIX(j) - (ap_ufixed<16,16,AP_TRN,AP_SAT>)subtrahend_buf.MONO16PIX(j);
//         output_buf.MONO16PIX(j) = sub_res.range(11,0);
//       }
//     }

//     StreamOut << output_buf;
//   }
  
//   arbitrator = !arbitrator;
// }


/**
 * @brief Pixel threshold. Loop through data stream, fully exposed if >2047, 0 otherwise
 * 
 * @param StreamIn 
 * @param StreamOut 
 */
void pix_subtract(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){

  unsigned PACKED_DEPTH =  ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // 8 pixels per CoaXPress packet

  static bool arbitrator = 0; // Arbitrator
  static ap_ufixed<12,12> buf[IMAGE_WIDTH * IMAGE_HEIGHT] = {0};
  #pragma HLS ARRAY_PARTITION variable=buf cyclic factor=8

  static video_if_t DataOut;
  video_if_t output_buf; // Output packet

  for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){
    #pragma HLS PIPELINE

    StreamIn >> DataOut; // Read CoaXPress image packet (contains 8 pixels)

    if(arbitrator == 0){ // Store current frame in stream buffer. This frame will be subtracted from the next. Still forward to the output stream
      for (unsigned char j = 0; j < MONO16PIX_NBR; j++) {
        #pragma HLS UNROLL
        output_buf.MONO16PIX(j) = DataOut.MONO16PIX(j); // We still send this first image (subtrahend) image back to host
        buf[i*MONO16PIX_NBR + j].range(11,0) = DataOut.MONO16PIX(j); // Buffer image 0 for subtraction
      }
    }else if(arbitrator == 1){ // Subtraction previous frame from current
      ap_ufixed<16,16,AP_TRN,AP_SAT> sub_res;
      for (unsigned char j = 0; j < MONO16PIX_NBR; j++) { // Compute subtraction
        #pragma HLS UNROLL
        sub_res = (ap_ufixed<16,16,AP_TRN,AP_SAT>)DataOut.MONO16PIX(j) - (buf[i*MONO16PIX_NBR + j]); // Subtract pixels
        output_buf.MONO16PIX(j) = sub_res.range(11,0); // Output subtraction result
      }
    }
    output_buf.User = DataOut.User; // Attach side-band info

    StreamOut << output_buf; // Send out packet
  }
  
  arbitrator = !arbitrator; 
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

    const unsigned PACKED_DEPTH =  ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // Packed depth of the data stream, 12-bit pixels use 16 bits. 8 pixels per data packed.

    #pragma HLS DATAFLOW 

    hls::stream<video_if_t> VideoBuffer; // Video stream buffer
    #pragma HLS STREAM variable=VideoBuffer depth=PACKED_DEPTH

    hls::stream<video_if_t> SubtractionOut; // Subtraction operation output stream
    #pragma HLS STREAM variable=SubtractionOut depth=PACKED_DEPTH

    read_pixel_data(VideoIn, VideoBuffer); // Read CoaXPress image data 

    pix_subtract(VideoBuffer, SubtractionOut); // Subtract every other frame

    send_output(SubtractionOut, VideoOut); // Forward frames to output
}
