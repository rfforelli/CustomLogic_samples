set moduleName read_pixel_data
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
set C_modelName {read_pixel_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ StreamIn_V_Data_V int 128 regular {axi_s 0 volatile  { VideoIn Data } }  }
	{ StreamIn_V_User_V int 4 regular {axi_s 0 volatile  { VideoIn User } }  }
	{ StreamOut_V_Data_V int 128 regular {fifo 1 volatile }  }
	{ StreamOut_V_User_V int 4 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "StreamIn_V_Data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "StreamIn_V_User_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "StreamOut_V_Data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "StreamOut_V_User_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ VideoIn_TDATA sc_in sc_lv 128 signal 0 } 
	{ VideoIn_TVALID sc_in sc_logic 1 invld 0 } 
	{ VideoIn_TREADY sc_out sc_logic 1 inacc 1 } 
	{ VideoIn_TUSER sc_in sc_lv 4 signal 1 } 
	{ StreamOut_V_Data_V_din sc_out sc_lv 128 signal 2 } 
	{ StreamOut_V_Data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ StreamOut_V_Data_V_write sc_out sc_logic 1 signal 2 } 
	{ StreamOut_V_User_V_din sc_out sc_lv 4 signal 3 } 
	{ StreamOut_V_User_V_full_n sc_in sc_logic 1 signal 3 } 
	{ StreamOut_V_User_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "VideoIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "StreamIn_V_Data_V", "role": "default" }} , 
 	{ "name": "VideoIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "StreamIn_V_Data_V", "role": "default" }} , 
 	{ "name": "VideoIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "StreamIn_V_User_V", "role": "default" }} , 
 	{ "name": "VideoIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "StreamIn_V_User_V", "role": "default" }} , 
 	{ "name": "StreamOut_V_Data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "StreamOut_V_Data_V", "role": "din" }} , 
 	{ "name": "StreamOut_V_Data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_Data_V", "role": "full_n" }} , 
 	{ "name": "StreamOut_V_Data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_Data_V", "role": "write" }} , 
 	{ "name": "StreamOut_V_User_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "StreamOut_V_User_V", "role": "din" }} , 
 	{ "name": "StreamOut_V_User_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_User_V", "role": "full_n" }} , 
 	{ "name": "StreamOut_V_User_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_User_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "StreamOut_V_Data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataBuf_Data_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	read_pixel_data {
		StreamIn_V_Data_V {Type I LastRead 3 FirstWrite -1}
		StreamIn_V_User_V {Type I LastRead 3 FirstWrite -1}
		StreamOut_V_Data_V {Type O LastRead -1 FirstWrite 1}
		StreamOut_V_User_V {Type O LastRead -1 FirstWrite 1}
		DataBuf_Data_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	StreamIn_V_Data_V { axis {  { VideoIn_TDATA in_data 0 128 }  { VideoIn_TVALID in_vld 0 1 } } }
	StreamIn_V_User_V { axis {  { VideoIn_TREADY in_acc 1 1 }  { VideoIn_TUSER in_data 0 4 } } }
	StreamOut_V_Data_V { ap_fifo {  { StreamOut_V_Data_V_din fifo_data 1 128 }  { StreamOut_V_Data_V_full_n fifo_status 0 1 }  { StreamOut_V_Data_V_write fifo_update 1 1 } } }
	StreamOut_V_User_V { ap_fifo {  { StreamOut_V_User_V_din fifo_data 1 4 }  { StreamOut_V_User_V_full_n fifo_status 0 1 }  { StreamOut_V_User_V_write fifo_update 1 1 } } }
}
