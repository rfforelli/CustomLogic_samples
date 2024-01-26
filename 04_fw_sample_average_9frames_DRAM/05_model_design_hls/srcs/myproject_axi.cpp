#include "myproject_axi.h"

Metadata_t meta_data_proc(Metadata_t MetaIn){
  static Metadata_t MetaTmp;
  MetaTmp = MetaIn;
  return MetaTmp;
}

void myproject_axi(hls::stream<video_if_t> &VideoIn, hls::stream<video_if_t> &VideoOut,
         Metadata_t* MetaIn, Metadata_t* MetaOut, ap_uint<STREAM_DATA_WIDTH>* onboard_mem_base) {

  #pragma HLS INTERFACE m_axi depth=10400 port=onboard_mem_base offset=direct bundle=gmem0 // Generate AXI4 interface to DRAM, direct offset generates an offset port to input the CustomLogic partition base address. This way we don't have to worry about it in HLS. Depth is only used for RTL simulation, (IMAGE_HEIGHT * IMAGE_WIDTH * pixMono16::width) / STREAM_DATA_WIDTH = 10400
  // #pragma HLS INTERFACE ap_none port=customlogic_mem_base
  // #pragma HLS INTERFACE ap_none port=customlogic_mem_size

  // Set proper interface for CustomLogic
  #pragma HLS INTERFACE ap_none port=MetaOut
  #pragma HLS INTERFACE ap_vld register port=MetaIn
  // Meta Data valid signal needs to be connect on VideoIn AXI-Stream valid signal
  #pragma HLS INTERFACE axis depth=0 port=VideoIn
  #pragma HLS INTERFACE axis port=VideoOut

  (*MetaOut) = meta_data_proc((*MetaIn));

  myproject(VideoIn, VideoOut, onboard_mem_base);

}