#ifndef MYPROJECT_AXI_H_
#define MYPROJECT_AXI_H_

#include "CustomLogic.h"
#include <iostream>
#include "myproject.h"

Metadata_t meta_data_proc(Metadata_t MetaIn);

void myproject_axi(hls::stream<video_if_t> &VideoIn, hls::stream<video_if_t> &VideoOut,
				 Metadata_t* MetaIn, Metadata_t* MetaOut, ap_uint<STREAM_DATA_WIDTH>* dram_interface);

#endif
