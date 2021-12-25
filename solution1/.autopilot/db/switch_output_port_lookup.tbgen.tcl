set C_TypeInfoList {{ 
"switch_output_port_lookup" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"reset": [[],"0"] }, {"s_axis_tdata": [[],"1"] }, {"s_axis_tkeep": [[],"2"] }, {"s_axis_tuser": [[],"3"] }, {"s_axis_tvalid": [[],"0"] }, {"s_axis_tready": [[], {"reference": "0"}] }, {"s_axis_tlast": [[],"0"] }, {"m_axis_tdata": [[], {"reference": "1"}] }, {"m_axis_tkeep": [[], {"reference": "2"}] }, {"m_axis_tuser": [[], {"reference": "3"}] }, {"m_axis_tvalid": [[], {"reference": "0"}] }, {"m_axis_tready": [[],"0"] }, {"m_axis_tlast": [[], {"reference": "0"}] }],[],""], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}], 
"1": [ "ap_uint<256>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 256}}]],""]}}], 
"0": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName switch_output_port_lookup
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
set C_modelName {switch_output_port_lookup}
set C_modelType { void 0 }
set C_modelArgList {
	{ reset_V int 1 regular  }
	{ s_axis_tdata_V int 256 regular  }
	{ s_axis_tkeep_V int 32 regular  }
	{ s_axis_tuser_V int 128 regular  }
	{ s_axis_tvalid_V int 1 regular  }
	{ s_axis_tready_V int 1 regular {pointer 1}  }
	{ s_axis_tlast_V int 1 regular  }
	{ m_axis_tdata_V int 256 regular {pointer 1}  }
	{ m_axis_tkeep_V int 32 regular {pointer 1}  }
	{ m_axis_tuser_V int 128 regular {pointer 1}  }
	{ m_axis_tvalid_V int 1 regular {pointer 1}  }
	{ m_axis_tready_V int 1 regular  }
	{ m_axis_tlast_V int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reset_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "reset.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tdata_V", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "s_axis_tdata.V","cData": "uint256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tkeep_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s_axis_tkeep.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tuser_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "s_axis_tuser.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tvalid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tvalid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tready.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_axis_tlast_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tlast.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tdata_V", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "m_axis_tdata.V","cData": "uint256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_tkeep_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "m_axis_tkeep.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_tuser_V", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "m_axis_tuser.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_tvalid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tvalid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_tready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tready.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tlast_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tlast.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reset_V sc_in sc_lv 1 signal 0 } 
	{ s_axis_tdata_V sc_in sc_lv 256 signal 1 } 
	{ s_axis_tkeep_V sc_in sc_lv 32 signal 2 } 
	{ s_axis_tuser_V sc_in sc_lv 128 signal 3 } 
	{ s_axis_tvalid_V sc_in sc_lv 1 signal 4 } 
	{ s_axis_tready_V sc_out sc_lv 1 signal 5 } 
	{ s_axis_tlast_V sc_in sc_lv 1 signal 6 } 
	{ m_axis_tdata_V sc_out sc_lv 256 signal 7 } 
	{ m_axis_tkeep_V sc_out sc_lv 32 signal 8 } 
	{ m_axis_tuser_V sc_out sc_lv 128 signal 9 } 
	{ m_axis_tvalid_V sc_out sc_lv 1 signal 10 } 
	{ m_axis_tready_V sc_in sc_lv 1 signal 11 } 
	{ m_axis_tlast_V sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reset_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reset_V", "role": "default" }} , 
 	{ "name": "s_axis_tdata_V", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "s_axis_tdata_V", "role": "default" }} , 
 	{ "name": "s_axis_tkeep_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_tkeep_V", "role": "default" }} , 
 	{ "name": "s_axis_tuser_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_tuser_V", "role": "default" }} , 
 	{ "name": "s_axis_tvalid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tvalid_V", "role": "default" }} , 
 	{ "name": "s_axis_tready_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tready_V", "role": "default" }} , 
 	{ "name": "s_axis_tlast_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tlast_V", "role": "default" }} , 
 	{ "name": "m_axis_tdata_V", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "m_axis_tdata_V", "role": "default" }} , 
 	{ "name": "m_axis_tkeep_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tkeep_V", "role": "default" }} , 
 	{ "name": "m_axis_tuser_V", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_tuser_V", "role": "default" }} , 
 	{ "name": "m_axis_tvalid_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tvalid_V", "role": "default" }} , 
 	{ "name": "m_axis_tready_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tready_V", "role": "default" }} , 
 	{ "name": "m_axis_tlast_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tlast_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "switch_output_port_lookup",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Read_r_fu_353"}],
		"Port" : [
			{"Name" : "reset_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_tdata_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_tkeep_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_tuser_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_tvalid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_tready_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axis_tlast_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_tdata_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "m_axis_tkeep_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "m_axis_tuser_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "m_axis_tvalid_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "m_axis_tready_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_tlast_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "Queue_ap_axis_size", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_ap_axis_size"}]},
			{"Name" : "Queue_wr_pos_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_wr_pos_V_1"}]},
			{"Name" : "Queue_rd_pos_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_rd_pos_V_1"}]},
			{"Name" : "Queue_size", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_size"}]},
			{"Name" : "Queue_wr_pos_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_wr_pos_V"}]},
			{"Name" : "Queue_rd_pos_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_rd_pos_V"}]},
			{"Name" : "Queue_buffer_packet", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_buffer_packet"}]},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "eth_ret_i_i_eth_fu_377", "Port" : "state"}]},
			{"Name" : "lut_replace_pos_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_replace_pos_V"}]},
			{"Name" : "lut_table_dest_mac_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V"}]},
			{"Name" : "lut_table_dst_port_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V"}]},
			{"Name" : "lut_table_dest_mac_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_1"}]},
			{"Name" : "lut_table_dst_port_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_1"}]},
			{"Name" : "lut_table_dest_mac_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_2"}]},
			{"Name" : "lut_table_dst_port_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_2"}]},
			{"Name" : "lut_table_dest_mac_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_3"}]},
			{"Name" : "lut_table_dst_port_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_3"}]},
			{"Name" : "lut_table_dest_mac_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_4"}]},
			{"Name" : "lut_table_dst_port_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_4"}]},
			{"Name" : "lut_table_dest_mac_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_5"}]},
			{"Name" : "lut_table_dst_port_V_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_5"}]},
			{"Name" : "lut_table_dest_mac_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_6"}]},
			{"Name" : "lut_table_dst_port_V_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_6"}]},
			{"Name" : "lut_table_dest_mac_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_7"}]},
			{"Name" : "lut_table_dst_port_V_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_7"}]},
			{"Name" : "lut_table_dest_mac_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_8"}]},
			{"Name" : "lut_table_dst_port_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_8"}]},
			{"Name" : "lut_table_dest_mac_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_9"}]},
			{"Name" : "lut_table_dst_port_V_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_9"}]},
			{"Name" : "lut_table_dest_mac_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_10"}]},
			{"Name" : "lut_table_dst_port_V_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_10"}]},
			{"Name" : "lut_table_dest_mac_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_11"}]},
			{"Name" : "lut_table_dst_port_V_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_11"}]},
			{"Name" : "lut_table_dest_mac_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_12"}]},
			{"Name" : "lut_table_dst_port_V_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_12"}]},
			{"Name" : "lut_table_dest_mac_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_13"}]},
			{"Name" : "lut_table_dst_port_V_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_13"}]},
			{"Name" : "lut_table_dest_mac_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_14"}]},
			{"Name" : "lut_table_dst_port_V_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_14"}]},
			{"Name" : "lut_table_dest_mac_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dest_mac_V_15"}]},
			{"Name" : "lut_table_dst_port_V_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "lut_ret_i_i_lut_fu_278", "Port" : "lut_table_dst_port_V_15"}]},
			{"Name" : "Queue_buffer_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "Queue_buffer_V"}]},
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Read_r_fu_353", "Port" : "state_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Queue_buffer_packet_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Queue_buffer_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_ret_i_i_lut_fu_278", "Parent" : "0",
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
			{"Name" : "lut_table_dst_port_V_15", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Read_r_fu_353", "Parent" : "0",
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
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eth_ret_i_i_eth_fu_377", "Parent" : "0",
		"CDFG" : "eth",
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
			{"Name" : "tdata_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tuser_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tlast_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	switch_output_port_lookup {
		reset_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tdata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tkeep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tuser_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tvalid_V {Type I LastRead 0 FirstWrite -1}
		s_axis_tready_V {Type O LastRead -1 FirstWrite 2}
		s_axis_tlast_V {Type I LastRead 0 FirstWrite -1}
		m_axis_tdata_V {Type O LastRead -1 FirstWrite 4}
		m_axis_tkeep_V {Type O LastRead -1 FirstWrite 4}
		m_axis_tuser_V {Type O LastRead -1 FirstWrite 4}
		m_axis_tvalid_V {Type O LastRead -1 FirstWrite 4}
		m_axis_tready_V {Type I LastRead 0 FirstWrite -1}
		m_axis_tlast_V {Type O LastRead -1 FirstWrite 4}
		Queue_ap_axis_size {Type IO LastRead -1 FirstWrite -1}
		Queue_wr_pos_V_1 {Type IO LastRead -1 FirstWrite -1}
		Queue_rd_pos_V_1 {Type IO LastRead -1 FirstWrite -1}
		Queue_size {Type IO LastRead -1 FirstWrite -1}
		Queue_wr_pos_V {Type IO LastRead -1 FirstWrite -1}
		Queue_rd_pos_V {Type IO LastRead -1 FirstWrite -1}
		Queue_buffer_packet {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
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
		lut_table_dst_port_V_15 {Type IO LastRead -1 FirstWrite -1}
		Queue_buffer_V {Type IO LastRead -1 FirstWrite -1}
		state_1 {Type IO LastRead -1 FirstWrite -1}}
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
		lut_table_dst_port_V_15 {Type IO LastRead -1 FirstWrite -1}}
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
		state_1 {Type IO LastRead -1 FirstWrite -1}}
	eth {
		tdata_V {Type I LastRead 0 FirstWrite -1}
		tuser_V {Type I LastRead 0 FirstWrite -1}
		valid_V {Type I LastRead 0 FirstWrite -1}
		tlast_V {Type I LastRead 0 FirstWrite -1}
		reset_V {Type I LastRead 0 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reset_V { ap_none {  { reset_V in_data 0 1 } } }
	s_axis_tdata_V { ap_none {  { s_axis_tdata_V in_data 0 256 } } }
	s_axis_tkeep_V { ap_none {  { s_axis_tkeep_V in_data 0 32 } } }
	s_axis_tuser_V { ap_none {  { s_axis_tuser_V in_data 0 128 } } }
	s_axis_tvalid_V { ap_none {  { s_axis_tvalid_V in_data 0 1 } } }
	s_axis_tready_V { ap_none {  { s_axis_tready_V out_data 1 1 } } }
	s_axis_tlast_V { ap_none {  { s_axis_tlast_V in_data 0 1 } } }
	m_axis_tdata_V { ap_none {  { m_axis_tdata_V out_data 1 256 } } }
	m_axis_tkeep_V { ap_none {  { m_axis_tkeep_V out_data 1 32 } } }
	m_axis_tuser_V { ap_none {  { m_axis_tuser_V out_data 1 128 } } }
	m_axis_tvalid_V { ap_none {  { m_axis_tvalid_V out_data 1 1 } } }
	m_axis_tready_V { ap_none {  { m_axis_tready_V in_data 0 1 } } }
	m_axis_tlast_V { ap_none {  { m_axis_tlast_V out_data 1 1 } } }
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
