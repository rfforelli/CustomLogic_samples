set moduleName pix_average
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
set C_modelName {pix_average}
set C_modelType { void 0 }
set C_modelArgList {
	{ StreamIn_V_Data_V int 128 regular {fifo 0 volatile }  }
	{ StreamIn_V_User_V int 4 regular {fifo 0 volatile }  }
	{ StreamOut_V_Data_V int 128 regular {fifo 1 volatile }  }
	{ StreamOut_V_User_V int 4 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "StreamIn_V_Data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "StreamIn_V_User_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "StreamOut_V_Data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "StreamOut_V_User_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
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
	{ StreamIn_V_Data_V_dout sc_in sc_lv 128 signal 0 } 
	{ StreamIn_V_Data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ StreamIn_V_Data_V_read sc_out sc_logic 1 signal 0 } 
	{ StreamIn_V_User_V_dout sc_in sc_lv 4 signal 1 } 
	{ StreamIn_V_User_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ StreamIn_V_User_V_read sc_out sc_logic 1 signal 1 } 
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
 	{ "name": "StreamIn_V_Data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "StreamIn_V_Data_V", "role": "dout" }} , 
 	{ "name": "StreamIn_V_Data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamIn_V_Data_V", "role": "empty_n" }} , 
 	{ "name": "StreamIn_V_Data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamIn_V_Data_V", "role": "read" }} , 
 	{ "name": "StreamIn_V_User_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "StreamIn_V_User_V", "role": "dout" }} , 
 	{ "name": "StreamIn_V_User_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamIn_V_User_V", "role": "empty_n" }} , 
 	{ "name": "StreamIn_V_User_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamIn_V_User_V", "role": "read" }} , 
 	{ "name": "StreamOut_V_Data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "StreamOut_V_Data_V", "role": "din" }} , 
 	{ "name": "StreamOut_V_Data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_Data_V", "role": "full_n" }} , 
 	{ "name": "StreamOut_V_Data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_Data_V", "role": "write" }} , 
 	{ "name": "StreamOut_V_User_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "StreamOut_V_User_V", "role": "din" }} , 
 	{ "name": "StreamOut_V_User_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_User_V", "role": "full_n" }} , 
 	{ "name": "StreamOut_V_User_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StreamOut_V_User_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
		"Port" : [
			{"Name" : "StreamIn_V_Data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamIn_V_User_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "StreamIn_V_User_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_Data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "StreamOut_V_Data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StreamOut_V_User_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_21ns_23ns_44_6_1_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		sum_V_7 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10252", "Max" : "10252"}
	, {"Name" : "Interval", "Min" : "10252", "Max" : "10252"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	StreamIn_V_Data_V { ap_fifo {  { StreamIn_V_Data_V_dout fifo_data 0 128 }  { StreamIn_V_Data_V_empty_n fifo_status 0 1 }  { StreamIn_V_Data_V_read fifo_update 1 1 } } }
	StreamIn_V_User_V { ap_fifo {  { StreamIn_V_User_V_dout fifo_data 0 4 }  { StreamIn_V_User_V_empty_n fifo_status 0 1 }  { StreamIn_V_User_V_read fifo_update 1 1 } } }
	StreamOut_V_Data_V { ap_fifo {  { StreamOut_V_Data_V_din fifo_data 1 128 }  { StreamOut_V_Data_V_full_n fifo_status 0 1 }  { StreamOut_V_Data_V_write fifo_update 1 1 } } }
	StreamOut_V_User_V { ap_fifo {  { StreamOut_V_User_V_din fifo_data 1 4 }  { StreamOut_V_User_V_full_n fifo_status 0 1 }  { StreamOut_V_User_V_write fifo_update 1 1 } } }
}
