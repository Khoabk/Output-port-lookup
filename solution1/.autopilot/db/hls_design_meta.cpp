#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("reset_V", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("s_axis_tdata_V", 256, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("s_axis_tkeep_V", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("s_axis_tuser_V", 128, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("s_axis_tvalid_V", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("s_axis_tready_V", 1, hls_out, 5, "ap_none", "out_data", 1),
	Port_Property("s_axis_tlast_V", 1, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("m_axis_tdata_V", 256, hls_out, 7, "ap_none", "out_data", 1),
	Port_Property("m_axis_tkeep_V", 32, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("m_axis_tuser_V", 128, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("m_axis_tvalid_V", 1, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("m_axis_tready_V", 1, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("m_axis_tlast_V", 1, hls_out, 12, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "switch_output_port_lookup";
