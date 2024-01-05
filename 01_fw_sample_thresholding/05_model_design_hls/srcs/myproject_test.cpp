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
#include <fstream>
#include <iostream>
#include <algorithm>
#include <vector>
#include <map>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "myproject_axi.h"
#include "nnet_utils/nnet_helpers.h"

#define LIMIT 20

void copy_image_data(std::vector<float> in, hls::stream<video_if_t> &VideoIn){
  #ifndef __SYNTHESIS__
    std::cout << "\n\nCaptured Image: \n";
  #endif

  // Construct and stream raw image to CoaxPress input
  for(unsigned i = 0; i < IMAGE_HEIGHT; i++){
    for(unsigned j = 0; j < IMAGE_WIDTH / MONO16PIX_NBR; j++){
      DataMono16 data_packet;
      ap_uint<4> user_data;

      // Pack pixels
      for(unsigned k=0; k < MONO16PIX_NBR; k++){
        pixMono16 pixel_in = (pixMono16)(in[(i*(IMAGE_WIDTH / MONO16PIX_NBR) * MONO16PIX_NBR) + (j*MONO16PIX_NBR) + k]);
        data_packet.range((k * pixMono16::width) + (pixMono16::width - 1), k * (pixMono16::width)) = pixel_in.range(pixMono16::width - 1, 0);

        #ifndef __SYNTHESIS__
          std::cout << pixel_in << " ";
        #endif
      }

      if(i == 0 && j == 0){ // start of frame, start of line
        user_data = 0b0011;
      }else if(j == 0){ // start of line
        user_data = 0b0010;
      }else if(i == (IMAGE_HEIGHT - 1) && j == ((IMAGE_WIDTH / MONO16PIX_NBR) - 1)){ // end of frame, end of line
        user_data = 0b1100; 
      }else if(j == ((IMAGE_WIDTH / MONO16PIX_NBR) - 1)){ // end of line
        user_data = 0b0100;
      }
      video_if_t video_packet_in = {data_packet, user_data};
      VideoIn << video_packet_in;
    }
  }
}


int main(int argc, char **argv)
{

  //load input data from text file
  std::ifstream fin("../../../../tb_data/tb_input_features.dat"); // TODO: Fix paths here
  //load predictions from text file
  // std::ifstream fpr("../../../../tb_data/tb_output_predictions.dat");

  // std::ofstream predictions_file("../../../../tb_data/CNN_predictions.dat", std::ios::trunc);
  // if (!predictions_file.is_open()) {
  //     std::cerr << "Error opening prediction file." << std::endl;
  //     exit(1);
  // }
  // predictions_file.close();

  std::string iline;
  int e = 0;

  if (fin.is_open()) {
    while ( std::getline(fin,iline)) {
      std::cout << "Processing input " << e << std::endl;
      char* cstr=const_cast<char*>(iline.c_str());
      char* current;
      std::vector<float> in;
      current=strtok(cstr," ");
      while(current!=NULL) {
        in.push_back(atof(current));
        current=strtok(NULL," ");
      }

      hls::stream<video_if_t> VideoIn("VideoIn");
      hls::stream<video_if_t> VideoOut("VideoOut");
      copy_image_data(in, VideoIn);

      Metadata_t MetaIn;
      Metadata_t MetaOut;

      myproject_axi(VideoIn, VideoOut, &MetaIn, &MetaOut); // Instantiate neural network
          
      std::cout << "\n\nReceived Image: \n";
      video_if_t video_packet_out;
      for(unsigned i = 0; i < IMAGE_HEIGHT; i++){
        for(unsigned j = 0; j < IMAGE_WIDTH / MONO16PIX_NBR; j++){
          VideoOut >> video_packet_out;
          for(unsigned k = 0; k < MONO16PIX_NBR; k++){
            pixMono16 pixel_out; 
            pixel_out.range(pixMono16::width - 1, 0) = video_packet_out.MONO16PIX(k);
            std::cout << pixel_out << " ";
          }
        }
      }

      // std::cout << "\n\nReceived Predictions (image embedded): \n";
      // result_t::value_type res;
      // for(unsigned i = 0; i < result_t::size; i++){
      //   res.range(result_t::value_type::width-1, 0) = video_packet_out.Data.range(STREAM_DATA_WIDTH - 1 - (i*result_t::value_type::width), STREAM_DATA_WIDTH - (i*result_t::value_type::width) - result_t::value_type::width);
      //   std::cout << res << " ";
      // }
      
      std::cout << "\n-------------------------------------------------------------------------------------------------\n\n";

      if(e == LIMIT-1) break;

      e++;
    }
    fin.close();
  }

  return 0;
}
