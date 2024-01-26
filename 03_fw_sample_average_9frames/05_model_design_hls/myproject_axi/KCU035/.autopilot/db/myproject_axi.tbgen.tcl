set moduleName myproject_axi
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ VideoIn_V_Data_V int 128 regular {axi_s 0 volatile  { VideoIn Data } }  }
	{ VideoIn_V_User_V int 4 regular {axi_s 0 volatile  { VideoIn User } }  }
	{ VideoOut_V_Data_V int 128 regular {axi_s 1 volatile  { VideoOut Data } }  }
	{ VideoOut_V_User_V int 4 regular {axi_s 1 volatile  { VideoOut User } }  }
	{ MetaIn_StreamId int 8 regular {pointer 0}  }
	{ MetaIn_SourceTag int 16 regular {pointer 0}  }
	{ MetaIn_Xsize_V int 24 regular {pointer 0}  }
	{ MetaIn_Xoffs_V int 24 regular {pointer 0}  }
	{ MetaIn_Ysize_V int 24 regular {pointer 0}  }
	{ MetaIn_Yoffs_V int 24 regular {pointer 0}  }
	{ MetaIn_DsizeL_V int 24 regular {pointer 0}  }
	{ MetaIn_PixelF int 16 regular {pointer 0}  }
	{ MetaIn_TapG int 16 regular {pointer 0}  }
	{ MetaIn_Flags int 8 regular {pointer 0}  }
	{ MetaIn_Timestamp int 32 regular {pointer 0}  }
	{ MetaIn_PixProcessingFlgs int 8 regular {pointer 0}  }
	{ MetaIn_ModPixelF int 32 regular {pointer 0}  }
	{ MetaIn_Status int 32 regular {pointer 0}  }
	{ MetaOut_StreamId int 8 regular {pointer 1}  }
	{ MetaOut_SourceTag int 16 regular {pointer 1}  }
	{ MetaOut_Xsize_V int 24 regular {pointer 1}  }
	{ MetaOut_Xoffs_V int 24 regular {pointer 1}  }
	{ MetaOut_Ysize_V int 24 regular {pointer 1}  }
	{ MetaOut_Yoffs_V int 24 regular {pointer 1}  }
	{ MetaOut_DsizeL_V int 24 regular {pointer 1}  }
	{ MetaOut_PixelF int 16 regular {pointer 1}  }
	{ MetaOut_TapG int 16 regular {pointer 1}  }
	{ MetaOut_Flags int 8 regular {pointer 1}  }
	{ MetaOut_Timestamp int 32 regular {pointer 1}  }
	{ MetaOut_PixProcessingFlgs int 8 regular {pointer 1}  }
	{ MetaOut_ModPixelF int 32 regular {pointer 1}  }
	{ MetaOut_Status int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "VideoIn_V_Data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "VideoIn.V.Data.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VideoIn_V_User_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "VideoIn.V.User.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VideoOut_V_Data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "VideoOut.V.Data.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VideoOut_V_User_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "VideoOut.V.User.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_StreamId", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "MetaIn.StreamId","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_SourceTag", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "MetaIn.SourceTag","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Xsize_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaIn.Xsize.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Xoffs_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaIn.Xoffs.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Ysize_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaIn.Ysize.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Yoffs_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaIn.Yoffs.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_DsizeL_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaIn.DsizeL.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_PixelF", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "MetaIn.PixelF","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_TapG", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "MetaIn.TapG","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Flags", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "MetaIn.Flags","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Timestamp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MetaIn.Timestamp","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_PixProcessingFlgs", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "MetaIn.PixProcessingFlgs","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_ModPixelF", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MetaIn.ModPixelF","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaIn_Status", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MetaIn.Status","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_StreamId", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "MetaOut.StreamId","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_SourceTag", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "MetaOut.SourceTag","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Xsize_V", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaOut.Xsize.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Xoffs_V", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaOut.Xoffs.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Ysize_V", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaOut.Ysize.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Yoffs_V", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaOut.Yoffs.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_DsizeL_V", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "MetaOut.DsizeL.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_PixelF", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "MetaOut.PixelF","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_TapG", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "MetaOut.TapG","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Flags", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "MetaOut.Flags","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Timestamp", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MetaOut.Timestamp","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_PixProcessingFlgs", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "MetaOut.PixProcessingFlgs","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_ModPixelF", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MetaOut.ModPixelF","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MetaOut_Status", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MetaOut.Status","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ VideoIn_TDATA sc_in sc_lv 128 signal 0 } 
	{ VideoIn_TVALID sc_in sc_logic 1 invld 1 } 
	{ VideoIn_TREADY sc_out sc_logic 1 inacc 1 } 
	{ VideoIn_TUSER sc_in sc_lv 4 signal 1 } 
	{ VideoOut_TDATA sc_out sc_lv 128 signal 2 } 
	{ VideoOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ VideoOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ VideoOut_TUSER sc_out sc_lv 4 signal 3 } 
	{ MetaIn_StreamId sc_in sc_lv 8 signal 4 } 
	{ MetaIn_StreamId_ap_vld sc_in sc_logic 1 invld 4 } 
	{ MetaIn_SourceTag sc_in sc_lv 16 signal 5 } 
	{ MetaIn_SourceTag_ap_vld sc_in sc_logic 1 invld 5 } 
	{ MetaIn_Xsize_V sc_in sc_lv 24 signal 6 } 
	{ MetaIn_Xsize_V_ap_vld sc_in sc_logic 1 invld 6 } 
	{ MetaIn_Xoffs_V sc_in sc_lv 24 signal 7 } 
	{ MetaIn_Xoffs_V_ap_vld sc_in sc_logic 1 invld 7 } 
	{ MetaIn_Ysize_V sc_in sc_lv 24 signal 8 } 
	{ MetaIn_Ysize_V_ap_vld sc_in sc_logic 1 invld 8 } 
	{ MetaIn_Yoffs_V sc_in sc_lv 24 signal 9 } 
	{ MetaIn_Yoffs_V_ap_vld sc_in sc_logic 1 invld 9 } 
	{ MetaIn_DsizeL_V sc_in sc_lv 24 signal 10 } 
	{ MetaIn_DsizeL_V_ap_vld sc_in sc_logic 1 invld 10 } 
	{ MetaIn_PixelF sc_in sc_lv 16 signal 11 } 
	{ MetaIn_PixelF_ap_vld sc_in sc_logic 1 invld 11 } 
	{ MetaIn_TapG sc_in sc_lv 16 signal 12 } 
	{ MetaIn_TapG_ap_vld sc_in sc_logic 1 invld 12 } 
	{ MetaIn_Flags sc_in sc_lv 8 signal 13 } 
	{ MetaIn_Flags_ap_vld sc_in sc_logic 1 invld 13 } 
	{ MetaIn_Timestamp sc_in sc_lv 32 signal 14 } 
	{ MetaIn_Timestamp_ap_vld sc_in sc_logic 1 invld 14 } 
	{ MetaIn_PixProcessingFlgs sc_in sc_lv 8 signal 15 } 
	{ MetaIn_PixProcessingFlgs_ap_vld sc_in sc_logic 1 invld 15 } 
	{ MetaIn_ModPixelF sc_in sc_lv 32 signal 16 } 
	{ MetaIn_ModPixelF_ap_vld sc_in sc_logic 1 invld 16 } 
	{ MetaIn_Status sc_in sc_lv 32 signal 17 } 
	{ MetaIn_Status_ap_vld sc_in sc_logic 1 invld 17 } 
	{ MetaOut_StreamId sc_out sc_lv 8 signal 18 } 
	{ MetaOut_SourceTag sc_out sc_lv 16 signal 19 } 
	{ MetaOut_Xsize_V sc_out sc_lv 24 signal 20 } 
	{ MetaOut_Xoffs_V sc_out sc_lv 24 signal 21 } 
	{ MetaOut_Ysize_V sc_out sc_lv 24 signal 22 } 
	{ MetaOut_Yoffs_V sc_out sc_lv 24 signal 23 } 
	{ MetaOut_DsizeL_V sc_out sc_lv 24 signal 24 } 
	{ MetaOut_PixelF sc_out sc_lv 16 signal 25 } 
	{ MetaOut_TapG sc_out sc_lv 16 signal 26 } 
	{ MetaOut_Flags sc_out sc_lv 8 signal 27 } 
	{ MetaOut_Timestamp sc_out sc_lv 32 signal 28 } 
	{ MetaOut_PixProcessingFlgs sc_out sc_lv 8 signal 29 } 
	{ MetaOut_ModPixelF sc_out sc_lv 32 signal 30 } 
	{ MetaOut_Status sc_out sc_lv 32 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "VideoIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "VideoIn_V_Data_V", "role": "default" }} , 
 	{ "name": "VideoIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "VideoIn_V_User_V", "role": "default" }} , 
 	{ "name": "VideoIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "VideoIn_V_User_V", "role": "default" }} , 
 	{ "name": "VideoIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VideoIn_V_User_V", "role": "default" }} , 
 	{ "name": "VideoOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "VideoOut_V_Data_V", "role": "default" }} , 
 	{ "name": "VideoOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "VideoOut_V_User_V", "role": "default" }} , 
 	{ "name": "VideoOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "VideoOut_V_User_V", "role": "default" }} , 
 	{ "name": "VideoOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VideoOut_V_User_V", "role": "default" }} , 
 	{ "name": "MetaIn_StreamId", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "MetaIn_StreamId", "role": "default" }} , 
 	{ "name": "MetaIn_StreamId_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_StreamId", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_SourceTag", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MetaIn_SourceTag", "role": "default" }} , 
 	{ "name": "MetaIn_SourceTag_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_SourceTag", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Xsize_V", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaIn_Xsize_V", "role": "default" }} , 
 	{ "name": "MetaIn_Xsize_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Xsize_V", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Xoffs_V", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaIn_Xoffs_V", "role": "default" }} , 
 	{ "name": "MetaIn_Xoffs_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Xoffs_V", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Ysize_V", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaIn_Ysize_V", "role": "default" }} , 
 	{ "name": "MetaIn_Ysize_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Ysize_V", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Yoffs_V", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaIn_Yoffs_V", "role": "default" }} , 
 	{ "name": "MetaIn_Yoffs_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Yoffs_V", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_DsizeL_V", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaIn_DsizeL_V", "role": "default" }} , 
 	{ "name": "MetaIn_DsizeL_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_DsizeL_V", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_PixelF", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MetaIn_PixelF", "role": "default" }} , 
 	{ "name": "MetaIn_PixelF_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_PixelF", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_TapG", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MetaIn_TapG", "role": "default" }} , 
 	{ "name": "MetaIn_TapG_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_TapG", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Flags", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "MetaIn_Flags", "role": "default" }} , 
 	{ "name": "MetaIn_Flags_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Flags", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Timestamp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MetaIn_Timestamp", "role": "default" }} , 
 	{ "name": "MetaIn_Timestamp_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Timestamp", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_PixProcessingFlgs", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "MetaIn_PixProcessingFlgs", "role": "default" }} , 
 	{ "name": "MetaIn_PixProcessingFlgs_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_PixProcessingFlgs", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_ModPixelF", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MetaIn_ModPixelF", "role": "default" }} , 
 	{ "name": "MetaIn_ModPixelF_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_ModPixelF", "role": "ap_vld" }} , 
 	{ "name": "MetaIn_Status", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MetaIn_Status", "role": "default" }} , 
 	{ "name": "MetaIn_Status_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "MetaIn_Status", "role": "ap_vld" }} , 
 	{ "name": "MetaOut_StreamId", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "MetaOut_StreamId", "role": "default" }} , 
 	{ "name": "MetaOut_SourceTag", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MetaOut_SourceTag", "role": "default" }} , 
 	{ "name": "MetaOut_Xsize_V", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaOut_Xsize_V", "role": "default" }} , 
 	{ "name": "MetaOut_Xoffs_V", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaOut_Xoffs_V", "role": "default" }} , 
 	{ "name": "MetaOut_Ysize_V", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaOut_Ysize_V", "role": "default" }} , 
 	{ "name": "MetaOut_Yoffs_V", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaOut_Yoffs_V", "role": "default" }} , 
 	{ "name": "MetaOut_DsizeL_V", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "MetaOut_DsizeL_V", "role": "default" }} , 
 	{ "name": "MetaOut_PixelF", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MetaOut_PixelF", "role": "default" }} , 
 	{ "name": "MetaOut_TapG", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MetaOut_TapG", "role": "default" }} , 
 	{ "name": "MetaOut_Flags", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "MetaOut_Flags", "role": "default" }} , 
 	{ "name": "MetaOut_Timestamp", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MetaOut_Timestamp", "role": "default" }} , 
 	{ "name": "MetaOut_PixProcessingFlgs", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "MetaOut_PixProcessingFlgs", "role": "default" }} , 
 	{ "name": "MetaOut_ModPixelF", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MetaOut_ModPixelF", "role": "default" }} , 
 	{ "name": "MetaOut_Status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MetaOut_Status", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "myproject_axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_myproject_fu_320"}],
		"Port" : [
			{"Name" : "VideoIn_V_Data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "VideoIn_V_Data_V"}]},
			{"Name" : "VideoIn_V_User_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "VideoIn_V_User_V"}]},
			{"Name" : "VideoOut_V_Data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "VideoOut_V_Data_V"}]},
			{"Name" : "VideoOut_V_User_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "VideoOut_V_User_V"}]},
			{"Name" : "MetaIn_StreamId", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_StreamId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_SourceTag", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_SourceTag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Xsize_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Xsize_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Xoffs_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Xoffs_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Ysize_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Ysize_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Yoffs_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Yoffs_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_DsizeL_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_DsizeL_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_PixelF", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_PixelF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_TapG", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_TapG_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Flags", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Flags_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Timestamp", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Timestamp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_PixProcessingFlgs", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_PixProcessingFlgs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_ModPixelF", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_ModPixelF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaIn_Status", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MetaIn_Status_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MetaOut_StreamId", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_SourceTag", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Xsize_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Xoffs_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Ysize_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Yoffs_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_DsizeL_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_PixelF", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_TapG", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Flags", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Timestamp", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_PixProcessingFlgs", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_ModPixelF", "Type" : "None", "Direction" : "O"},
			{"Name" : "MetaOut_Status", "Type" : "None", "Direction" : "O"},
			{"Name" : "DataBuf_Data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "DataBuf_Data_V"}]},
			{"Name" : "cntr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "cntr"}]},
			{"Name" : "sum_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_0"}]},
			{"Name" : "sum_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_1"}]},
			{"Name" : "sum_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_2"}]},
			{"Name" : "sum_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_3"}]},
			{"Name" : "sum_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_4"}]},
			{"Name" : "sum_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_5"}]},
			{"Name" : "sum_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_6"}]},
			{"Name" : "sum_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_myproject_fu_320", "Port" : "sum_V_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320", "Parent" : "0", "Child" : ["2", "3", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "read_pixel_data_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "send_output_U0"}],
		"Port" : [
			{"Name" : "VideoIn_V_Data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_pixel_data_U0", "Port" : "StreamIn_V_Data_V"}]},
			{"Name" : "VideoIn_V_User_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_pixel_data_U0", "Port" : "StreamIn_V_User_V"}]},
			{"Name" : "VideoOut_V_Data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "send_output_U0", "Port" : "StreamOut_V_Data_V"}]},
			{"Name" : "VideoOut_V_User_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "send_output_U0", "Port" : "StreamOut_V_User_V"}]},
			{"Name" : "DataBuf_Data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_pixel_data_U0", "Port" : "DataBuf_Data_V"}]},
			{"Name" : "cntr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "cntr"}]},
			{"Name" : "sum_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_0"}]},
			{"Name" : "sum_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_1"}]},
			{"Name" : "sum_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_2"}]},
			{"Name" : "sum_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_3"}]},
			{"Name" : "sum_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_4"}]},
			{"Name" : "sum_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_5"}]},
			{"Name" : "sum_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_6"}]},
			{"Name" : "sum_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "pix_average_U0", "Port" : "sum_V_7"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.read_pixel_data_U0", "Parent" : "1",
		"CDFG" : "read_pixel_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "StreamIn_V_Data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "VideoIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamIn_V_User_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "StreamOut_V_Data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataBuf_Data_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0", "Parent" : "1", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "pix_average",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10252", "EstimateLatencyMax" : "10252",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_pix_average_U0_U",
		"Port" : [
			{"Name" : "StreamIn_V_Data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamIn_V_User_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_Data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cntr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_0_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_1_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_2_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_3_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_4_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_5_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_6_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.sum_V_7_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U5", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U6", "Parent" : "3"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U7", "Parent" : "3"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U8", "Parent" : "3"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U9", "Parent" : "3"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U10", "Parent" : "3"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U11", "Parent" : "3"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U12", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.send_output_U0", "Parent" : "1",
		"CDFG" : "send_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10242", "EstimateLatencyMax" : "10242",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_send_output_U0_U",
		"Port" : [
			{"Name" : "StreamIn_V_Data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamIn_V_User_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_Data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "VideoOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.VideoBuffer_V_Data_V_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.VideoBuffer_V_User_V_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.AveragedOut_V_Data_V_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.AveragedOut_V_User_V_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.start_for_pix_average_U0_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_320.start_for_send_output_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	myproject_axi {
		VideoIn_V_Data_V {Type I LastRead 3 FirstWrite -1}
		VideoIn_V_User_V {Type I LastRead 3 FirstWrite -1}
		VideoOut_V_Data_V {Type O LastRead -1 FirstWrite 2}
		VideoOut_V_User_V {Type O LastRead -1 FirstWrite 2}
		MetaIn_StreamId {Type I LastRead 0 FirstWrite -1}
		MetaIn_SourceTag {Type I LastRead 0 FirstWrite -1}
		MetaIn_Xsize_V {Type I LastRead 0 FirstWrite -1}
		MetaIn_Xoffs_V {Type I LastRead 0 FirstWrite -1}
		MetaIn_Ysize_V {Type I LastRead 0 FirstWrite -1}
		MetaIn_Yoffs_V {Type I LastRead 0 FirstWrite -1}
		MetaIn_DsizeL_V {Type I LastRead 0 FirstWrite -1}
		MetaIn_PixelF {Type I LastRead 0 FirstWrite -1}
		MetaIn_TapG {Type I LastRead 0 FirstWrite -1}
		MetaIn_Flags {Type I LastRead 0 FirstWrite -1}
		MetaIn_Timestamp {Type I LastRead 0 FirstWrite -1}
		MetaIn_PixProcessingFlgs {Type I LastRead 0 FirstWrite -1}
		MetaIn_ModPixelF {Type I LastRead 0 FirstWrite -1}
		MetaIn_Status {Type I LastRead 0 FirstWrite -1}
		MetaOut_StreamId {Type O LastRead -1 FirstWrite 1}
		MetaOut_SourceTag {Type O LastRead -1 FirstWrite 1}
		MetaOut_Xsize_V {Type O LastRead -1 FirstWrite 1}
		MetaOut_Xoffs_V {Type O LastRead -1 FirstWrite 1}
		MetaOut_Ysize_V {Type O LastRead -1 FirstWrite 1}
		MetaOut_Yoffs_V {Type O LastRead -1 FirstWrite 1}
		MetaOut_DsizeL_V {Type O LastRead -1 FirstWrite 1}
		MetaOut_PixelF {Type O LastRead -1 FirstWrite 1}
		MetaOut_TapG {Type O LastRead -1 FirstWrite 1}
		MetaOut_Flags {Type O LastRead -1 FirstWrite 1}
		MetaOut_Timestamp {Type O LastRead -1 FirstWrite 1}
		MetaOut_PixProcessingFlgs {Type O LastRead -1 FirstWrite 1}
		MetaOut_ModPixelF {Type O LastRead -1 FirstWrite 1}
		MetaOut_Status {Type O LastRead -1 FirstWrite 1}
		DataBuf_Data_V {Type IO LastRead -1 FirstWrite -1}
		cntr {Type IO LastRead -1 FirstWrite -1}
		sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		sum_V_7 {Type IO LastRead -1 FirstWrite -1}}
	myproject {
		VideoIn_V_Data_V {Type I LastRead 3 FirstWrite -1}
		VideoIn_V_User_V {Type I LastRead 3 FirstWrite -1}
		VideoOut_V_Data_V {Type O LastRead -1 FirstWrite 2}
		VideoOut_V_User_V {Type O LastRead -1 FirstWrite 2}
		DataBuf_Data_V {Type IO LastRead -1 FirstWrite -1}
		cntr {Type IO LastRead -1 FirstWrite -1}
		sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		sum_V_7 {Type IO LastRead -1 FirstWrite -1}}
	read_pixel_data {
		StreamIn_V_Data_V {Type I LastRead 3 FirstWrite -1}
		StreamIn_V_User_V {Type I LastRead 3 FirstWrite -1}
		StreamOut_V_Data_V {Type O LastRead -1 FirstWrite 1}
		StreamOut_V_User_V {Type O LastRead -1 FirstWrite 1}
		DataBuf_Data_V {Type IO LastRead -1 FirstWrite -1}}
	pix_average {
		StreamIn_V_Data_V {Type I LastRead 3 FirstWrite -1}
		StreamIn_V_User_V {Type I LastRead 3 FirstWrite -1}
		StreamOut_V_Data_V {Type O LastRead -1 FirstWrite 11}
		StreamOut_V_User_V {Type O LastRead -1 FirstWrite 11}
		cntr {Type IO LastRead -1 FirstWrite -1}
		sum_V_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V_1 {Type IO LastRead -1 FirstWrite -1}
		sum_V_2 {Type IO LastRead -1 FirstWrite -1}
		sum_V_3 {Type IO LastRead -1 FirstWrite -1}
		sum_V_4 {Type IO LastRead -1 FirstWrite -1}
		sum_V_5 {Type IO LastRead -1 FirstWrite -1}
		sum_V_6 {Type IO LastRead -1 FirstWrite -1}
		sum_V_7 {Type IO LastRead -1 FirstWrite -1}}
	send_output {
		StreamIn_V_Data_V {Type I LastRead 2 FirstWrite -1}
		StreamIn_V_User_V {Type I LastRead 2 FirstWrite -1}
		StreamOut_V_Data_V {Type O LastRead -1 FirstWrite 2}
		StreamOut_V_User_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	VideoIn_V_Data_V { axis {  { VideoIn_TDATA in_data 0 128 } } }
	VideoIn_V_User_V { axis {  { VideoIn_TVALID in_vld 0 1 }  { VideoIn_TREADY in_acc 1 1 }  { VideoIn_TUSER in_data 0 4 } } }
	VideoOut_V_Data_V { axis {  { VideoOut_TDATA out_data 1 128 } } }
	VideoOut_V_User_V { axis {  { VideoOut_TVALID out_vld 1 1 }  { VideoOut_TREADY out_acc 0 1 }  { VideoOut_TUSER out_data 1 4 } } }
	MetaIn_StreamId { ap_vld {  { MetaIn_StreamId in_data 0 8 }  { MetaIn_StreamId_ap_vld in_vld 0 1 } } }
	MetaIn_SourceTag { ap_vld {  { MetaIn_SourceTag in_data 0 16 }  { MetaIn_SourceTag_ap_vld in_vld 0 1 } } }
	MetaIn_Xsize_V { ap_vld {  { MetaIn_Xsize_V in_data 0 24 }  { MetaIn_Xsize_V_ap_vld in_vld 0 1 } } }
	MetaIn_Xoffs_V { ap_vld {  { MetaIn_Xoffs_V in_data 0 24 }  { MetaIn_Xoffs_V_ap_vld in_vld 0 1 } } }
	MetaIn_Ysize_V { ap_vld {  { MetaIn_Ysize_V in_data 0 24 }  { MetaIn_Ysize_V_ap_vld in_vld 0 1 } } }
	MetaIn_Yoffs_V { ap_vld {  { MetaIn_Yoffs_V in_data 0 24 }  { MetaIn_Yoffs_V_ap_vld in_vld 0 1 } } }
	MetaIn_DsizeL_V { ap_vld {  { MetaIn_DsizeL_V in_data 0 24 }  { MetaIn_DsizeL_V_ap_vld in_vld 0 1 } } }
	MetaIn_PixelF { ap_vld {  { MetaIn_PixelF in_data 0 16 }  { MetaIn_PixelF_ap_vld in_vld 0 1 } } }
	MetaIn_TapG { ap_vld {  { MetaIn_TapG in_data 0 16 }  { MetaIn_TapG_ap_vld in_vld 0 1 } } }
	MetaIn_Flags { ap_vld {  { MetaIn_Flags in_data 0 8 }  { MetaIn_Flags_ap_vld in_vld 0 1 } } }
	MetaIn_Timestamp { ap_vld {  { MetaIn_Timestamp in_data 0 32 }  { MetaIn_Timestamp_ap_vld in_vld 0 1 } } }
	MetaIn_PixProcessingFlgs { ap_vld {  { MetaIn_PixProcessingFlgs in_data 0 8 }  { MetaIn_PixProcessingFlgs_ap_vld in_vld 0 1 } } }
	MetaIn_ModPixelF { ap_vld {  { MetaIn_ModPixelF in_data 0 32 }  { MetaIn_ModPixelF_ap_vld in_vld 0 1 } } }
	MetaIn_Status { ap_vld {  { MetaIn_Status in_data 0 32 }  { MetaIn_Status_ap_vld in_vld 0 1 } } }
	MetaOut_StreamId { ap_none {  { MetaOut_StreamId out_data 1 8 } } }
	MetaOut_SourceTag { ap_none {  { MetaOut_SourceTag out_data 1 16 } } }
	MetaOut_Xsize_V { ap_none {  { MetaOut_Xsize_V out_data 1 24 } } }
	MetaOut_Xoffs_V { ap_none {  { MetaOut_Xoffs_V out_data 1 24 } } }
	MetaOut_Ysize_V { ap_none {  { MetaOut_Ysize_V out_data 1 24 } } }
	MetaOut_Yoffs_V { ap_none {  { MetaOut_Yoffs_V out_data 1 24 } } }
	MetaOut_DsizeL_V { ap_none {  { MetaOut_DsizeL_V out_data 1 24 } } }
	MetaOut_PixelF { ap_none {  { MetaOut_PixelF out_data 1 16 } } }
	MetaOut_TapG { ap_none {  { MetaOut_TapG out_data 1 16 } } }
	MetaOut_Flags { ap_none {  { MetaOut_Flags out_data 1 8 } } }
	MetaOut_Timestamp { ap_none {  { MetaOut_Timestamp out_data 1 32 } } }
	MetaOut_PixProcessingFlgs { ap_none {  { MetaOut_PixProcessingFlgs out_data 1 8 } } }
	MetaOut_ModPixelF { ap_none {  { MetaOut_ModPixelF out_data 1 32 } } }
	MetaOut_Status { ap_none {  { MetaOut_Status out_data 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
