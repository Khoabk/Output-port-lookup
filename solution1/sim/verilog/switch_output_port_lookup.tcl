
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set m_axis_tlast_group [add_wave_group m_axis_tlast(wire) -into $coutputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/m_axis_tlast_V -into $m_axis_tlast_group -radix hex
set m_axis_tvalid_group [add_wave_group m_axis_tvalid(wire) -into $coutputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/m_axis_tvalid_V -into $m_axis_tvalid_group -radix hex
set m_axis_tuser_group [add_wave_group m_axis_tuser(wire) -into $coutputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/m_axis_tuser_V -into $m_axis_tuser_group -radix hex
set m_axis_tkeep_group [add_wave_group m_axis_tkeep(wire) -into $coutputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/m_axis_tkeep_V -into $m_axis_tkeep_group -radix hex
set m_axis_tdata_group [add_wave_group m_axis_tdata(wire) -into $coutputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/m_axis_tdata_V -into $m_axis_tdata_group -radix hex
set s_axis_tready_group [add_wave_group s_axis_tready(wire) -into $coutputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/s_axis_tready_V -into $s_axis_tready_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set reset_group [add_wave_group reset(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/reset_V -into $reset_group -radix hex
set m_axis_tready_group [add_wave_group m_axis_tready(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/m_axis_tready_V -into $m_axis_tready_group -radix hex
set s_axis_tlast_group [add_wave_group s_axis_tlast(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/s_axis_tlast_V -into $s_axis_tlast_group -radix hex
set s_axis_tvalid_group [add_wave_group s_axis_tvalid(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/s_axis_tvalid_V -into $s_axis_tvalid_group -radix hex
set s_axis_tuser_group [add_wave_group s_axis_tuser(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/s_axis_tuser_V -into $s_axis_tuser_group -radix hex
set s_axis_tkeep_group [add_wave_group s_axis_tkeep(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/s_axis_tkeep_V -into $s_axis_tkeep_group -radix hex
set s_axis_tdata_group [add_wave_group s_axis_tdata(wire) -into $cinputgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/s_axis_tdata_V -into $s_axis_tdata_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/ap_start -into $blocksiggroup
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/ap_done -into $blocksiggroup
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/ap_idle -into $blocksiggroup
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_switch_output_port_lookup_top/AESL_inst_switch_output_port_lookup/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_switch_output_port_lookup_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_s_axis_tdata_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_s_axis_tkeep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_s_axis_tuser_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_s_axis_tvalid_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_s_axis_tready_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_s_axis_tlast_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_m_axis_tdata_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_m_axis_tkeep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_m_axis_tuser_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_m_axis_tvalid_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_m_axis_tready_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_m_axis_tlast_V -into $tb_portdepth_group -radix hex
add_wave /apatb_switch_output_port_lookup_top/LENGTH_reset_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_m_axis_tlast_group [add_wave_group m_axis_tlast(wire) -into $tbcoutputgroup]
add_wave /apatb_switch_output_port_lookup_top/m_axis_tlast_V -into $tb_m_axis_tlast_group -radix hex
set tb_m_axis_tvalid_group [add_wave_group m_axis_tvalid(wire) -into $tbcoutputgroup]
add_wave /apatb_switch_output_port_lookup_top/m_axis_tvalid_V -into $tb_m_axis_tvalid_group -radix hex
set tb_m_axis_tuser_group [add_wave_group m_axis_tuser(wire) -into $tbcoutputgroup]
add_wave /apatb_switch_output_port_lookup_top/m_axis_tuser_V -into $tb_m_axis_tuser_group -radix hex
set tb_m_axis_tkeep_group [add_wave_group m_axis_tkeep(wire) -into $tbcoutputgroup]
add_wave /apatb_switch_output_port_lookup_top/m_axis_tkeep_V -into $tb_m_axis_tkeep_group -radix hex
set tb_m_axis_tdata_group [add_wave_group m_axis_tdata(wire) -into $tbcoutputgroup]
add_wave /apatb_switch_output_port_lookup_top/m_axis_tdata_V -into $tb_m_axis_tdata_group -radix hex
set tb_s_axis_tready_group [add_wave_group s_axis_tready(wire) -into $tbcoutputgroup]
add_wave /apatb_switch_output_port_lookup_top/s_axis_tready_V -into $tb_s_axis_tready_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_reset_group [add_wave_group reset(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/reset_V -into $tb_reset_group -radix hex
set tb_m_axis_tready_group [add_wave_group m_axis_tready(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/m_axis_tready_V -into $tb_m_axis_tready_group -radix hex
set tb_s_axis_tlast_group [add_wave_group s_axis_tlast(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/s_axis_tlast_V -into $tb_s_axis_tlast_group -radix hex
set tb_s_axis_tvalid_group [add_wave_group s_axis_tvalid(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/s_axis_tvalid_V -into $tb_s_axis_tvalid_group -radix hex
set tb_s_axis_tuser_group [add_wave_group s_axis_tuser(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/s_axis_tuser_V -into $tb_s_axis_tuser_group -radix hex
set tb_s_axis_tkeep_group [add_wave_group s_axis_tkeep(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/s_axis_tkeep_V -into $tb_s_axis_tkeep_group -radix hex
set tb_s_axis_tdata_group [add_wave_group s_axis_tdata(wire) -into $tbcinputgroup]
add_wave /apatb_switch_output_port_lookup_top/s_axis_tdata_V -into $tb_s_axis_tdata_group -radix hex
save_wave_config switch_output_port_lookup.wcfg
run all
quit

