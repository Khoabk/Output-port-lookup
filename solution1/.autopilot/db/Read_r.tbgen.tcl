set moduleName Read_r
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
set C_modelName {Read}
set C_modelType { int 418 }
set C_modelArgList {
	{ m_axis_tready_V int 1 regular  }
	{ reset_V int 1 regular  }
	{ Queue_ap_axis_size int 32 regular {pointer 2} {global 2}  }
	{ Queue_wr_pos_V_1 int 4 regular {pointer 1} {global 1}  }
	{ Queue_rd_pos_V_1 int 4 regular {pointer 2} {global 2}  }
	{ Queue_size int 32 regular {pointer 2} {global 2}  }
	{ Queue_wr_pos_V int 4 regular {pointer 1} {global 1}  }
	{ Queue_rd_pos_V int 4 regular {pointer 2} {global 2}  }
	{ Queue_buffer_packet int 417 regular {array 16 { 1 3 } 1 1 } {global 0}  }
	{ Queue_buffer_V int 8 regular {array 16 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_tready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "reset_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Queue_ap_axis_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "Queue_wr_pos_V_1", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "Queue_rd_pos_V_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "Queue_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "Queue_wr_pos_V", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "Queue_rd_pos_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "Queue_buffer_packet", "interface" : "memory", "bitwidth" : 417, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "Queue_buffer_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 418} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axis_tready_V sc_in sc_lv 1 signal 0 } 
	{ reset_V sc_in sc_lv 1 signal 1 } 
	{ Queue_ap_axis_size_i sc_in sc_lv 32 signal 2 } 
	{ Queue_ap_axis_size_o sc_out sc_lv 32 signal 2 } 
	{ Queue_ap_axis_size_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ Queue_wr_pos_V_1 sc_out sc_lv 4 signal 3 } 
	{ Queue_wr_pos_V_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ Queue_rd_pos_V_1_i sc_in sc_lv 4 signal 4 } 
	{ Queue_rd_pos_V_1_o sc_out sc_lv 4 signal 4 } 
	{ Queue_rd_pos_V_1_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ Queue_size_i sc_in sc_lv 32 signal 5 } 
	{ Queue_size_o sc_out sc_lv 32 signal 5 } 
	{ Queue_size_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ Queue_wr_pos_V sc_out sc_lv 4 signal 6 } 
	{ Queue_wr_pos_V_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ Queue_rd_pos_V_i sc_in sc_lv 4 signal 7 } 
	{ Queue_rd_pos_V_o sc_out sc_lv 4 signal 7 } 
	{ Queue_rd_pos_V_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Queue_buffer_packet_address0 sc_out sc_lv 4 signal 8 } 
	{ Queue_buffer_packet_ce0 sc_out sc_logic 1 signal 8 } 
	{ Queue_buffer_packet_q0 sc_in sc_lv 417 signal 8 } 
	{ Queue_buffer_V_address0 sc_out sc_lv 4 signal 9 } 
	{ Queue_buffer_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ Queue_buffer_V_q0 sc_in sc_lv 8 signal 9 } 
	{ ap_return_0 sc_out sc_lv 256 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 128 signal -1 } 
	{ ap_return_3 sc_out sc_lv 1 signal -1 } 
	{ ap_return_4 sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axis_tready_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tready_V", "role": "default" }} , 
 	{ "name": "reset_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reset_V", "role": "default" }} , 
 	{ "name": "Queue_ap_axis_size_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Queue_ap_axis_size", "role": "i" }} , 
 	{ "name": "Queue_ap_axis_size_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Queue_ap_axis_size", "role": "o" }} , 
 	{ "name": "Queue_ap_axis_size_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Queue_ap_axis_size", "role": "o_ap_vld" }} , 
 	{ "name": "Queue_wr_pos_V_1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_wr_pos_V_1", "role": "default" }} , 
 	{ "name": "Queue_wr_pos_V_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Queue_wr_pos_V_1", "role": "ap_vld" }} , 
 	{ "name": "Queue_rd_pos_V_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_rd_pos_V_1", "role": "i" }} , 
 	{ "name": "Queue_rd_pos_V_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_rd_pos_V_1", "role": "o" }} , 
 	{ "name": "Queue_rd_pos_V_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Queue_rd_pos_V_1", "role": "o_ap_vld" }} , 
 	{ "name": "Queue_size_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Queue_size", "role": "i" }} , 
 	{ "name": "Queue_size_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Queue_size", "role": "o" }} , 
 	{ "name": "Queue_size_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Queue_size", "role": "o_ap_vld" }} , 
 	{ "name": "Queue_wr_pos_V", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_wr_pos_V", "role": "default" }} , 
 	{ "name": "Queue_wr_pos_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Queue_wr_pos_V", "role": "ap_vld" }} , 
 	{ "name": "Queue_rd_pos_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_rd_pos_V", "role": "i" }} , 
 	{ "name": "Queue_rd_pos_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_rd_pos_V", "role": "o" }} , 
 	{ "name": "Queue_rd_pos_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Queue_rd_pos_V", "role": "o_ap_vld" }} , 
 	{ "name": "Queue_buffer_packet_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_buffer_packet", "role": "address0" }} , 
 	{ "name": "Queue_buffer_packet_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Queue_buffer_packet", "role": "ce0" }} , 
 	{ "name": "Queue_buffer_packet_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":417, "type": "signal", "bundle":{"name": "Queue_buffer_packet", "role": "q0" }} , 
 	{ "name": "Queue_buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Queue_buffer_V", "role": "address0" }} , 
 	{ "name": "Queue_buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Queue_buffer_V", "role": "ce0" }} , 
 	{ "name": "Queue_buffer_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Queue_buffer_V", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Read_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_axis_tready_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Queue_ap_axis_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Queue_wr_pos_V_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Queue_rd_pos_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Queue_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Queue_wr_pos_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Queue_rd_pos_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Queue_buffer_packet", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Queue_buffer_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	Read_r {
		m_axis_tready_V {Type I LastRead 0 FirstWrite -1}
		reset_V {Type I LastRead 0 FirstWrite -1}
		Queue_ap_axis_size {Type IO LastRead 2 FirstWrite 0}
		Queue_wr_pos_V_1 {Type O LastRead -1 FirstWrite 0}
		Queue_rd_pos_V_1 {Type IO LastRead 1 FirstWrite 0}
		Queue_size {Type IO LastRead 2 FirstWrite 0}
		Queue_wr_pos_V {Type O LastRead -1 FirstWrite 0}
		Queue_rd_pos_V {Type IO LastRead 1 FirstWrite 0}
		Queue_buffer_packet {Type I LastRead 1 FirstWrite -1}
		Queue_buffer_V {Type I LastRead 1 FirstWrite -1}
		state_1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_tready_V { ap_none {  { m_axis_tready_V in_data 0 1 } } }
	reset_V { ap_none {  { reset_V in_data 0 1 } } }
	Queue_ap_axis_size { ap_ovld {  { Queue_ap_axis_size_i in_data 0 32 }  { Queue_ap_axis_size_o out_data 1 32 }  { Queue_ap_axis_size_o_ap_vld out_vld 1 1 } } }
	Queue_wr_pos_V_1 { ap_vld {  { Queue_wr_pos_V_1 out_data 1 4 }  { Queue_wr_pos_V_1_ap_vld out_vld 1 1 } } }
	Queue_rd_pos_V_1 { ap_ovld {  { Queue_rd_pos_V_1_i in_data 0 4 }  { Queue_rd_pos_V_1_o out_data 1 4 }  { Queue_rd_pos_V_1_o_ap_vld out_vld 1 1 } } }
	Queue_size { ap_ovld {  { Queue_size_i in_data 0 32 }  { Queue_size_o out_data 1 32 }  { Queue_size_o_ap_vld out_vld 1 1 } } }
	Queue_wr_pos_V { ap_vld {  { Queue_wr_pos_V out_data 1 4 }  { Queue_wr_pos_V_ap_vld out_vld 1 1 } } }
	Queue_rd_pos_V { ap_ovld {  { Queue_rd_pos_V_i in_data 0 4 }  { Queue_rd_pos_V_o out_data 1 4 }  { Queue_rd_pos_V_o_ap_vld out_vld 1 1 } } }
	Queue_buffer_packet { ap_memory {  { Queue_buffer_packet_address0 mem_address 1 4 }  { Queue_buffer_packet_ce0 mem_ce 1 1 }  { Queue_buffer_packet_q0 mem_dout 0 417 } } }
	Queue_buffer_V { ap_memory {  { Queue_buffer_V_address0 mem_address 1 4 }  { Queue_buffer_V_ce0 mem_ce 1 1 }  { Queue_buffer_V_q0 mem_dout 0 8 } } }
}
