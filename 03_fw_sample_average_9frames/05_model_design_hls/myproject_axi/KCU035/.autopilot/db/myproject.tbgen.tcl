set moduleName myproject
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ VideoIn_V_Data_V int 128 regular {axi_s 0 volatile  { VideoIn Data } }  }
	{ VideoIn_V_User_V int 4 regular {axi_s 0 volatile  { VideoIn User } }  }
	{ VideoOut_V_Data_V int 128 regular {axi_s 1 volatile  { VideoOut Data } }  }
	{ VideoOut_V_User_V int 4 regular {axi_s 1 volatile  { VideoOut User } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "VideoIn_V_Data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "VideoIn_V_User_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "VideoOut_V_Data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "VideoOut_V_User_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ VideoIn_TDATA sc_in sc_lv 128 signal 0 } 
	{ VideoIn_TUSER sc_in sc_lv 4 signal 1 } 
	{ VideoOut_TDATA sc_out sc_lv 128 signal 2 } 
	{ VideoOut_TUSER sc_out sc_lv 4 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ VideoIn_TVALID sc_in sc_logic 1 invld 1 } 
	{ VideoIn_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ VideoOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ VideoOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "VideoIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "VideoIn_V_Data_V", "role": "default" }} , 
 	{ "name": "VideoIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VideoIn_V_User_V", "role": "default" }} , 
 	{ "name": "VideoOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "VideoOut_V_Data_V", "role": "default" }} , 
 	{ "name": "VideoOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VideoOut_V_User_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "VideoIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "VideoIn_V_User_V", "role": "default" }} , 
 	{ "name": "VideoIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "VideoIn_V_User_V", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "VideoOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "VideoOut_V_User_V", "role": "default" }} , 
 	{ "name": "VideoOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "VideoOut_V_User_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "20", "21", "22", "23", "24", "25"],
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
			{"ID" : "1", "Name" : "read_pixel_data_U0"}],
		"OutputProcess" : [
			{"ID" : "19", "Name" : "send_output_U0"}],
		"Port" : [
			{"Name" : "VideoIn_V_Data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_pixel_data_U0", "Port" : "StreamIn_V_Data_V"}]},
			{"Name" : "VideoIn_V_User_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_pixel_data_U0", "Port" : "StreamIn_V_User_V"}]},
			{"Name" : "VideoOut_V_Data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "send_output_U0", "Port" : "StreamOut_V_Data_V"}]},
			{"Name" : "VideoOut_V_User_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "send_output_U0", "Port" : "StreamOut_V_User_V"}]},
			{"Name" : "DataBuf_Data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_pixel_data_U0", "Port" : "DataBuf_Data_V"}]},
			{"Name" : "cntr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "cntr"}]},
			{"Name" : "sum_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_0"}]},
			{"Name" : "sum_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_1"}]},
			{"Name" : "sum_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_2"}]},
			{"Name" : "sum_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_3"}]},
			{"Name" : "sum_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_4"}]},
			{"Name" : "sum_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_5"}]},
			{"Name" : "sum_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_6"}]},
			{"Name" : "sum_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pix_average_U0", "Port" : "sum_V_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_pixel_data_U0", "Parent" : "0",
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
			{"Name" : "StreamOut_V_Data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataBuf_Data_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pix_average_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_pix_average_U0_U",
		"Port" : [
			{"Name" : "StreamIn_V_Data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamIn_V_User_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_Data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "23",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_2_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_3_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_4_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_5_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_6_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.sum_V_7_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U5", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U6", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U7", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U8", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U9", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U10", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U11", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pix_average_U0.myproject_axi_mul_21ns_23ns_44_6_1_U12", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_output_U0", "Parent" : "0",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_send_output_U0_U",
		"Port" : [
			{"Name" : "StreamIn_V_Data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamIn_V_User_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_Data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "VideoOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.VideoBuffer_V_Data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.VideoBuffer_V_User_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AveragedOut_V_Data_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AveragedOut_V_User_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pix_average_U0_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_send_output_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	VideoIn_V_Data_V { axis {  { VideoIn_TDATA in_data 0 128 } } }
	VideoIn_V_User_V { axis {  { VideoIn_TUSER in_data 0 4 }  { VideoIn_TVALID in_vld 0 1 }  { VideoIn_TREADY in_acc 1 1 } } }
	VideoOut_V_Data_V { axis {  { VideoOut_TDATA out_data 1 128 } } }
	VideoOut_V_User_V { axis {  { VideoOut_TUSER out_data 1 4 }  { VideoOut_TVALID out_vld 1 1 }  { VideoOut_TREADY out_acc 0 1 } } }
}
