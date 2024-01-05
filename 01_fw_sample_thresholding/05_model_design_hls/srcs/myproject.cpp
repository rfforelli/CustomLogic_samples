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
 * @brief Pixel threshold
 * 
 * @param StreamIn 
 * @param StreamOut 
 */
void pix_threshold(hls::stream<video_if_t> &StreamIn, hls::stream<video_if_t> &StreamOut){

  static video_if_t DataOut;
  video_if_t output_buf; // Output CoaXPress packet

  for(unsigned i = 0; i < ((IMAGE_HEIGHT * IMAGE_WIDTH) / MONO16PIX_NBR); i++){ // Image dims here MUST match eGrabber
    #pragma HLS PIPELINE

    StreamIn >> DataOut; // Read from input stream

    for (unsigned char i = 0; i < MONO16PIX_NBR; i++) {
      #pragma HLS UNROLL
      output_buf.MONO16PIX(i) = (DataOut.MONO16PIX(i) > 2047) ? DataOut.MONO16PIX(i) : 0; // Threshold, if >2047 identity, otherwise 0
      // output_buf.MONO16PIX(i) = DataOut.MONO16PIX(i); // No change, forward
    }
    output_buf.User = DataOut.User; // Attach side-channel info

    StreamOut << output_buf; // Send packet to output
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

    const unsigned PACKED_DEPTH =  ((IMAGE_WIDTH * IMAGE_HEIGHT) / MONO16PIX_NBR); // Packed depth of the data stream, 12-bit pixels use 16 bits. 8 pixels per data packed.

    #pragma HLS DATAFLOW 

    hls::stream<video_if_t> VideoBuffer; // Video stream buffer
    #pragma HLS STREAM variable=VideoBuffer depth=PACKED_DEPTH

    hls::stream<video_if_t> ThresholdOut; // Averaging operation output stream
    #pragma HLS STREAM variable=ThresholdOut depth=PACKED_DEPTH

    read_pixel_data(VideoIn, VideoBuffer); // Read CoaXPress image data 

    pix_threshold(VideoBuffer, ThresholdOut); // Apply thresholding to image pixels

    send_output(ThresholdOut, VideoOut); // Forward frames to output
}
