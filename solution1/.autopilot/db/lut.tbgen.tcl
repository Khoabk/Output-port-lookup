set moduleName lut
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {lut}
set C_modelType { int 9 }
set C_modelArgList {
	{ dst_mac_V int 48 regular  }
	{ src_mac_V int 48 regular  }
	{ src_port_V int 8 regular  }
	{ lookup_req_V int 1 regular  }
	{ reset_V int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dst_mac_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "src_mac_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "src_port_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lookup_req_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "reset_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dst_mac_V sc_in sc_lv 48 signal 0 } 
	{ src_mac_V sc_in sc_lv 48 signal 1 } 
	{ src_port_V sc_in sc_lv 8 signal 2 } 
	{ lookup_req_V sc_in sc_lv 1 signal 3 } 
	{ reset_V sc_in sc_lv 1 signal 4 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dst_mac_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "dst_mac_V", "role": "default" }} , 
 	{ "name": "src_mac_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_V", "role": "default" }} , 
 	{ "name": "src_port_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_port_V", "role": "default" }} , 
 	{ "name": "lookup_req_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lookup_req_V", "role": "default" }} , 
 	{ "name": "reset_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reset_V", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "lut",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dst_mac_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_mac_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_port_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "lookup_req_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "lut_replace_pos_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dest_mac_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lut_table_dst_port_V_15", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	lut {
		dst_mac_V {Type I LastRead 0 FirstWrite -1}
		src_mac_V {Type I LastRead 0 FirstWrite -1}
		src_port_V {Type I LastRead 0 FirstWrite -1}
		lookup_req_V {Type I LastRead 0 FirstWrite -1}
		reset_V {Type I LastRead 0 FirstWrite -1}
		lut_replace_pos_V {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_1 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_1 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_2 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_2 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_3 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_3 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_4 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_4 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_5 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_5 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_6 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_6 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_7 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_7 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_8 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_8 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_9 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_9 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_10 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_10 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_11 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_11 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_12 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_12 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_13 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_13 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_14 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_14 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dest_mac_V_15 {Type IO LastRead -1 FirstWrite -1}
		lut_table_dst_port_V_15 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dst_mac_V { ap_none {  { dst_mac_V in_data 0 48 } } }
	src_mac_V { ap_none {  { src_mac_V in_data 0 48 } } }
	src_port_V { ap_none {  { src_port_V in_data 0 8 } } }
	lookup_req_V { ap_none {  { lookup_req_V in_data 0 1 } } }
	reset_V { ap_none {  { reset_V in_data 0 1 } } }
}
