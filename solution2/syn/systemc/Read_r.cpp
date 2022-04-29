// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Read_r.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Read_r::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Read_r::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Read_r::ap_ST_fsm_state1 = "1";
const sc_lv<3> Read_r::ap_ST_fsm_state2 = "10";
const sc_lv<3> Read_r::ap_ST_fsm_state3 = "100";
const sc_lv<32> Read_r::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Read_r::ap_const_lv32_1 = "1";
const sc_lv<32> Read_r::ap_const_lv32_2 = "10";
const sc_lv<1> Read_r::ap_const_lv1_1 = "1";
const sc_lv<4> Read_r::ap_const_lv4_0 = "0000";
const sc_lv<32> Read_r::ap_const_lv32_120 = "100100000";
const sc_lv<32> Read_r::ap_const_lv32_19F = "110011111";
const sc_lv<32> Read_r::ap_const_lv32_1A0 = "110100000";
const sc_lv<32> Read_r::ap_const_lv32_18 = "11000";
const sc_lv<32> Read_r::ap_const_lv32_1F = "11111";
const sc_lv<2> Read_r::ap_const_lv2_0 = "00";
const sc_lv<2> Read_r::ap_const_lv2_1 = "1";
const sc_lv<32> Read_r::ap_const_lv32_FFFFFFFF = "11111111111111111111111111111111";
const sc_lv<4> Read_r::ap_const_lv4_1 = "1";
const sc_lv<32> Read_r::ap_const_lv32_100 = "100000000";
const sc_lv<32> Read_r::ap_const_lv32_11F = "100011111";
const sc_lv<256> Read_r::ap_const_lv256_lc_1 = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<128> Read_r::ap_const_lv128_lc_1 = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<1> Read_r::ap_const_lv1_0 = "0";
const bool Read_r::ap_const_boolean_1 = true;

Read_r::Read_r(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Queue_ap_axis_size_o);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( Queue_ap_axis_size_i );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( Queue_size_assign_i_fu_349_p2 );
    sensitive << ( r_V_fu_344_p2 );

    SC_METHOD(thread_Queue_ap_axis_size_o_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( r_V_fu_344_p2 );

    SC_METHOD(thread_Queue_buffer_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_i2_fu_151_p1 );

    SC_METHOD(thread_Queue_buffer_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_Queue_buffer_packet_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_i_fu_142_p1 );

    SC_METHOD(thread_Queue_buffer_packet_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_Queue_rd_pos_V_1_o);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( Queue_rd_pos_V_1_i );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( r_V_fu_344_p2 );
    sensitive << ( Queue_rd_pos_V_assi_fu_361_p2 );

    SC_METHOD(thread_Queue_rd_pos_V_1_o_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( r_V_fu_344_p2 );

    SC_METHOD(thread_Queue_rd_pos_V_assi_1_fu_384_p2);
    sensitive << ( Queue_rd_pos_V_load_reg_462 );

    SC_METHOD(thread_Queue_rd_pos_V_assi_fu_361_p2);
    sensitive << ( Queue_rd_pos_V_1_lo_reg_452 );

    SC_METHOD(thread_Queue_rd_pos_V_o);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( Queue_rd_pos_V_i );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( dst_port_rd_V_fu_312_p2 );
    sensitive << ( Queue_rd_pos_V_assi_1_fu_384_p2 );

    SC_METHOD(thread_Queue_rd_pos_V_o_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( dst_port_rd_V_fu_312_p2 );

    SC_METHOD(thread_Queue_size_assign_i_2_fu_372_p2);
    sensitive << ( Queue_size_i );

    SC_METHOD(thread_Queue_size_assign_i_fu_349_p2);
    sensitive << ( Queue_ap_axis_size_i );

    SC_METHOD(thread_Queue_size_o);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( Queue_size_i );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( Queue_size_assign_i_2_fu_372_p2 );
    sensitive << ( dst_port_rd_V_fu_312_p2 );

    SC_METHOD(thread_Queue_size_o_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( dst_port_rd_V_fu_312_p2 );

    SC_METHOD(thread_Queue_wr_pos_V);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );

    SC_METHOD(thread_Queue_wr_pos_V_1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );

    SC_METHOD(thread_Queue_wr_pos_V_1_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );

    SC_METHOD(thread_Queue_wr_pos_V_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V_read_read_fu_64_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_15_fu_395_p1 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( Queue_buffer_packet_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( sth_V_fu_304_p3 );
    sensitive << ( ap_return_2_preg );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( internal_m_valid_V_fu_338_p2 );
    sensitive << ( ap_return_3_preg );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( Queue_buffer_packet_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_return_4_preg );

    SC_METHOD(thread_brmerge_demorgan_i_fu_214_p2);
    sensitive << ( m_axis_tready_V );
    sensitive << ( this_assign_s_fu_180_p2 );

    SC_METHOD(thread_dst_port_rd_V_fu_312_p2);
    sensitive << ( sel_tmp7_i_fu_272_p2 );
    sensitive << ( brmerge_demorgan_i_fu_214_p2 );

    SC_METHOD(thread_internal_m_valid_V_fu_338_p2);
    sensitive << ( this_assign_s_fu_180_p2 );
    sensitive << ( send_packet_V_fu_298_p2 );

    SC_METHOD(thread_not_sel_tmp3_i_fu_237_p2);
    sensitive << ( sel_tmp3_i_fu_231_p2 );

    SC_METHOD(thread_not_sel_tmp7_i_fu_292_p2);
    sensitive << ( val_assign_fu_174_p2 );
    sensitive << ( sel_tmp2_i_not_fu_286_p2 );

    SC_METHOD(thread_p_Result_s_fu_202_p5);
    sensitive << ( Queue_buffer_V_q0 );
    sensitive << ( sth_V_2_fu_160_p4 );

    SC_METHOD(thread_p_state_1_flag_1_i_fu_318_p2);
    sensitive << ( reset_V );
    sensitive << ( state_1_flag_1_i_fu_278_p3 );

    SC_METHOD(thread_p_state_1_new_1_i_cas_fu_328_p1);
    sensitive << ( p_state_1_new_1_i_fu_323_p2 );

    SC_METHOD(thread_p_state_1_new_1_i_fu_323_p2);
    sensitive << ( reset_V );
    sensitive << ( not_sel_tmp7_i_fu_292_p2 );

    SC_METHOD(thread_r_V_fu_344_p2);
    sensitive << ( m_axis_tready_V );
    sensitive << ( internal_m_valid_V_fu_338_p2 );

    SC_METHOD(thread_reset_V_read_read_fu_64_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_V );

    SC_METHOD(thread_sel_tmp2_i_fu_225_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_14_fu_198_p1 );

    SC_METHOD(thread_sel_tmp2_i_not_fu_286_p2);
    sensitive << ( sel_tmp2_i_fu_225_p2 );

    SC_METHOD(thread_sel_tmp3_i_fu_231_p2);
    sensitive << ( sel_tmp2_i_fu_225_p2 );
    sensitive << ( val_assign_fu_174_p2 );

    SC_METHOD(thread_sel_tmp4_i_fu_260_p2);
    sensitive << ( tmp1_fu_255_p2 );
    sensitive << ( tmp_fu_243_p2 );

    SC_METHOD(thread_sel_tmp6_i_fu_266_p2);
    sensitive << ( val_assign_fu_174_p2 );

    SC_METHOD(thread_sel_tmp7_i_fu_272_p2);
    sensitive << ( sel_tmp2_i_fu_225_p2 );
    sensitive << ( sel_tmp6_i_fu_266_p2 );

    SC_METHOD(thread_sel_tmp_i_fu_219_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_14_fu_198_p1 );

    SC_METHOD(thread_send_packet_V_fu_298_p2);
    sensitive << ( not_sel_tmp3_i_fu_237_p2 );
    sensitive << ( sel_tmp7_i_fu_272_p2 );

    SC_METHOD(thread_state_1_flag_1_i_fu_278_p3);
    sensitive << ( sel_tmp7_i_fu_272_p2 );
    sensitive << ( brmerge_demorgan_i_fu_214_p2 );
    sensitive << ( sel_tmp4_i_fu_260_p2 );

    SC_METHOD(thread_sth_V_2_fu_160_p4);
    sensitive << ( Queue_buffer_packet_q0 );

    SC_METHOD(thread_sth_V_fu_304_p3);
    sensitive << ( sth_V_2_fu_160_p4 );
    sensitive << ( sel_tmp7_i_fu_272_p2 );
    sensitive << ( p_Result_s_fu_202_p5 );

    SC_METHOD(thread_this_assign_s_fu_180_p2);
    sensitive << ( Queue_ap_axis_size_i );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp1_fu_255_p2);
    sensitive << ( m_axis_tready_V );
    sensitive << ( tmp2_fu_249_p2 );

    SC_METHOD(thread_tmp2_fu_249_p2);
    sensitive << ( sel_tmp_i_fu_219_p2 );
    sensitive << ( not_sel_tmp3_i_fu_237_p2 );

    SC_METHOD(thread_tmp_13_fu_186_p3);
    sensitive << ( Queue_buffer_packet_q0 );

    SC_METHOD(thread_tmp_14_fu_198_p1);
    sensitive << ( state_1 );

    SC_METHOD(thread_tmp_15_fu_395_p1);
    sensitive << ( Queue_buffer_packet_q0 );

    SC_METHOD(thread_tmp_fu_243_p2);
    sensitive << ( this_assign_s_fu_180_p2 );
    sensitive << ( tmp_13_fu_186_p3 );

    SC_METHOD(thread_tmp_i2_fu_151_p1);
    sensitive << ( Queue_rd_pos_V_i );

    SC_METHOD(thread_tmp_i_fu_142_p1);
    sensitive << ( Queue_rd_pos_V_1_i );

    SC_METHOD(thread_val_assign_fu_174_p2);
    sensitive << ( Queue_size_i );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_CS_fsm = "001";
    state_1 = "00000000000000000000000000000001";
    ap_return_0_preg = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    ap_return_1_preg = "00000000000000000000000000000000";
    ap_return_2_preg = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    ap_return_3_preg = "0";
    ap_return_4_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Read_r_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, m_axis_tready_V, "(port)m_axis_tready_V");
    sc_trace(mVcdFile, reset_V, "(port)reset_V");
    sc_trace(mVcdFile, Queue_ap_axis_size_i, "(port)Queue_ap_axis_size_i");
    sc_trace(mVcdFile, Queue_ap_axis_size_o, "(port)Queue_ap_axis_size_o");
    sc_trace(mVcdFile, Queue_ap_axis_size_o_ap_vld, "(port)Queue_ap_axis_size_o_ap_vld");
    sc_trace(mVcdFile, Queue_wr_pos_V_1, "(port)Queue_wr_pos_V_1");
    sc_trace(mVcdFile, Queue_wr_pos_V_1_ap_vld, "(port)Queue_wr_pos_V_1_ap_vld");
    sc_trace(mVcdFile, Queue_rd_pos_V_1_i, "(port)Queue_rd_pos_V_1_i");
    sc_trace(mVcdFile, Queue_rd_pos_V_1_o, "(port)Queue_rd_pos_V_1_o");
    sc_trace(mVcdFile, Queue_rd_pos_V_1_o_ap_vld, "(port)Queue_rd_pos_V_1_o_ap_vld");
    sc_trace(mVcdFile, Queue_size_i, "(port)Queue_size_i");
    sc_trace(mVcdFile, Queue_size_o, "(port)Queue_size_o");
    sc_trace(mVcdFile, Queue_size_o_ap_vld, "(port)Queue_size_o_ap_vld");
    sc_trace(mVcdFile, Queue_wr_pos_V, "(port)Queue_wr_pos_V");
    sc_trace(mVcdFile, Queue_wr_pos_V_ap_vld, "(port)Queue_wr_pos_V_ap_vld");
    sc_trace(mVcdFile, Queue_rd_pos_V_i, "(port)Queue_rd_pos_V_i");
    sc_trace(mVcdFile, Queue_rd_pos_V_o, "(port)Queue_rd_pos_V_o");
    sc_trace(mVcdFile, Queue_rd_pos_V_o_ap_vld, "(port)Queue_rd_pos_V_o_ap_vld");
    sc_trace(mVcdFile, Queue_buffer_packet_address0, "(port)Queue_buffer_packet_address0");
    sc_trace(mVcdFile, Queue_buffer_packet_ce0, "(port)Queue_buffer_packet_ce0");
    sc_trace(mVcdFile, Queue_buffer_packet_q0, "(port)Queue_buffer_packet_q0");
    sc_trace(mVcdFile, Queue_buffer_V_address0, "(port)Queue_buffer_V_address0");
    sc_trace(mVcdFile, Queue_buffer_V_ce0, "(port)Queue_buffer_V_ce0");
    sc_trace(mVcdFile, Queue_buffer_V_q0, "(port)Queue_buffer_V_q0");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, state_1, "state_1");
    sc_trace(mVcdFile, reset_V_read_read_fu_64_p2, "reset_V_read_read_fu_64_p2");
    sc_trace(mVcdFile, Queue_rd_pos_V_1_lo_reg_452, "Queue_rd_pos_V_1_lo_reg_452");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, Queue_rd_pos_V_load_reg_462, "Queue_rd_pos_V_load_reg_462");
    sc_trace(mVcdFile, tmp_i_fu_142_p1, "tmp_i_fu_142_p1");
    sc_trace(mVcdFile, tmp_i2_fu_151_p1, "tmp_i2_fu_151_p1");
    sc_trace(mVcdFile, p_state_1_new_1_i_cas_fu_328_p1, "p_state_1_new_1_i_cas_fu_328_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, p_state_1_flag_1_i_fu_318_p2, "p_state_1_flag_1_i_fu_318_p2");
    sc_trace(mVcdFile, Queue_size_assign_i_fu_349_p2, "Queue_size_assign_i_fu_349_p2");
    sc_trace(mVcdFile, r_V_fu_344_p2, "r_V_fu_344_p2");
    sc_trace(mVcdFile, Queue_rd_pos_V_assi_fu_361_p2, "Queue_rd_pos_V_assi_fu_361_p2");
    sc_trace(mVcdFile, Queue_size_assign_i_2_fu_372_p2, "Queue_size_assign_i_2_fu_372_p2");
    sc_trace(mVcdFile, dst_port_rd_V_fu_312_p2, "dst_port_rd_V_fu_312_p2");
    sc_trace(mVcdFile, Queue_rd_pos_V_assi_1_fu_384_p2, "Queue_rd_pos_V_assi_1_fu_384_p2");
    sc_trace(mVcdFile, sth_V_2_fu_160_p4, "sth_V_2_fu_160_p4");
    sc_trace(mVcdFile, this_assign_s_fu_180_p2, "this_assign_s_fu_180_p2");
    sc_trace(mVcdFile, tmp_14_fu_198_p1, "tmp_14_fu_198_p1");
    sc_trace(mVcdFile, sel_tmp2_i_fu_225_p2, "sel_tmp2_i_fu_225_p2");
    sc_trace(mVcdFile, val_assign_fu_174_p2, "val_assign_fu_174_p2");
    sc_trace(mVcdFile, sel_tmp3_i_fu_231_p2, "sel_tmp3_i_fu_231_p2");
    sc_trace(mVcdFile, tmp_13_fu_186_p3, "tmp_13_fu_186_p3");
    sc_trace(mVcdFile, sel_tmp_i_fu_219_p2, "sel_tmp_i_fu_219_p2");
    sc_trace(mVcdFile, not_sel_tmp3_i_fu_237_p2, "not_sel_tmp3_i_fu_237_p2");
    sc_trace(mVcdFile, tmp2_fu_249_p2, "tmp2_fu_249_p2");
    sc_trace(mVcdFile, tmp1_fu_255_p2, "tmp1_fu_255_p2");
    sc_trace(mVcdFile, tmp_fu_243_p2, "tmp_fu_243_p2");
    sc_trace(mVcdFile, sel_tmp6_i_fu_266_p2, "sel_tmp6_i_fu_266_p2");
    sc_trace(mVcdFile, sel_tmp7_i_fu_272_p2, "sel_tmp7_i_fu_272_p2");
    sc_trace(mVcdFile, brmerge_demorgan_i_fu_214_p2, "brmerge_demorgan_i_fu_214_p2");
    sc_trace(mVcdFile, sel_tmp4_i_fu_260_p2, "sel_tmp4_i_fu_260_p2");
    sc_trace(mVcdFile, sel_tmp2_i_not_fu_286_p2, "sel_tmp2_i_not_fu_286_p2");
    sc_trace(mVcdFile, p_Result_s_fu_202_p5, "p_Result_s_fu_202_p5");
    sc_trace(mVcdFile, state_1_flag_1_i_fu_278_p3, "state_1_flag_1_i_fu_278_p3");
    sc_trace(mVcdFile, not_sel_tmp7_i_fu_292_p2, "not_sel_tmp7_i_fu_292_p2");
    sc_trace(mVcdFile, p_state_1_new_1_i_fu_323_p2, "p_state_1_new_1_i_fu_323_p2");
    sc_trace(mVcdFile, send_packet_V_fu_298_p2, "send_packet_V_fu_298_p2");
    sc_trace(mVcdFile, internal_m_valid_V_fu_338_p2, "internal_m_valid_V_fu_338_p2");
    sc_trace(mVcdFile, tmp_15_fu_395_p1, "tmp_15_fu_395_p1");
    sc_trace(mVcdFile, sth_V_fu_304_p3, "sth_V_fu_304_p3");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_return_2_preg, "ap_return_2_preg");
    sc_trace(mVcdFile, ap_return_3_preg, "ap_return_3_preg");
    sc_trace(mVcdFile, ap_return_4_preg, "ap_return_4_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Read_r::~Read_r() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Read_r::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv256_lc_1;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_0_preg = tmp_15_fu_395_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_1_preg = Queue_buffer_packet_q0.read().range(287, 256);
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_2_preg = ap_const_lv128_lc_1;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_2_preg = sth_V_fu_304_p3.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_3_preg = ap_const_lv1_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_3_preg = internal_m_valid_V_fu_338_p2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_4_preg = ap_const_lv1_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_return_4_preg = Queue_buffer_packet_q0.read().range(416, 416);
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        Queue_rd_pos_V_1_lo_reg_452 = Queue_rd_pos_V_1_i.read();
        Queue_rd_pos_V_load_reg_462 = Queue_rd_pos_V_i.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(p_state_1_flag_1_i_fu_318_p2.read(), ap_const_lv1_1))) {
        state_1 = p_state_1_new_1_i_cas_fu_328_p1.read();
    }
}

void Read_r::thread_Queue_ap_axis_size_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, r_V_fu_344_p2.read()))) {
        Queue_ap_axis_size_o = Queue_size_assign_i_fu_349_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1))) {
        Queue_ap_axis_size_o = ap_const_lv32_0;
    } else {
        Queue_ap_axis_size_o = Queue_ap_axis_size_i.read();
    }
}

void Read_r::thread_Queue_ap_axis_size_o_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, r_V_fu_344_p2.read())))) {
        Queue_ap_axis_size_o_ap_vld = ap_const_logic_1;
    } else {
        Queue_ap_axis_size_o_ap_vld = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_buffer_V_address0() {
    Queue_buffer_V_address0 =  (sc_lv<4>) (tmp_i2_fu_151_p1.read());
}

void Read_r::thread_Queue_buffer_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        Queue_buffer_V_ce0 = ap_const_logic_1;
    } else {
        Queue_buffer_V_ce0 = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_buffer_packet_address0() {
    Queue_buffer_packet_address0 =  (sc_lv<4>) (tmp_i_fu_142_p1.read());
}

void Read_r::thread_Queue_buffer_packet_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        Queue_buffer_packet_ce0 = ap_const_logic_1;
    } else {
        Queue_buffer_packet_ce0 = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_rd_pos_V_1_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, r_V_fu_344_p2.read()))) {
        Queue_rd_pos_V_1_o = Queue_rd_pos_V_assi_fu_361_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1))) {
        Queue_rd_pos_V_1_o = ap_const_lv4_0;
    } else {
        Queue_rd_pos_V_1_o = Queue_rd_pos_V_1_i.read();
    }
}

void Read_r::thread_Queue_rd_pos_V_1_o_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, r_V_fu_344_p2.read())))) {
        Queue_rd_pos_V_1_o_ap_vld = ap_const_logic_1;
    } else {
        Queue_rd_pos_V_1_o_ap_vld = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_rd_pos_V_assi_1_fu_384_p2() {
    Queue_rd_pos_V_assi_1_fu_384_p2 = (!Queue_rd_pos_V_load_reg_462.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(Queue_rd_pos_V_load_reg_462.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Read_r::thread_Queue_rd_pos_V_assi_fu_361_p2() {
    Queue_rd_pos_V_assi_fu_361_p2 = (!Queue_rd_pos_V_1_lo_reg_452.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(Queue_rd_pos_V_1_lo_reg_452.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Read_r::thread_Queue_rd_pos_V_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, dst_port_rd_V_fu_312_p2.read()))) {
        Queue_rd_pos_V_o = Queue_rd_pos_V_assi_1_fu_384_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1))) {
        Queue_rd_pos_V_o = ap_const_lv4_0;
    } else {
        Queue_rd_pos_V_o = Queue_rd_pos_V_i.read();
    }
}

void Read_r::thread_Queue_rd_pos_V_o_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, dst_port_rd_V_fu_312_p2.read())))) {
        Queue_rd_pos_V_o_ap_vld = ap_const_logic_1;
    } else {
        Queue_rd_pos_V_o_ap_vld = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_size_assign_i_2_fu_372_p2() {
    Queue_size_assign_i_2_fu_372_p2 = (!Queue_size_i.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_biguint<32>(Queue_size_i.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void Read_r::thread_Queue_size_assign_i_fu_349_p2() {
    Queue_size_assign_i_fu_349_p2 = (!Queue_ap_axis_size_i.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_biguint<32>(Queue_ap_axis_size_i.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void Read_r::thread_Queue_size_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, dst_port_rd_V_fu_312_p2.read()))) {
        Queue_size_o = Queue_size_assign_i_2_fu_372_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1))) {
        Queue_size_o = ap_const_lv32_0;
    } else {
        Queue_size_o = Queue_size_i.read();
    }
}

void Read_r::thread_Queue_size_o_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, dst_port_rd_V_fu_312_p2.read())))) {
        Queue_size_o_ap_vld = ap_const_logic_1;
    } else {
        Queue_size_o_ap_vld = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_wr_pos_V() {
    Queue_wr_pos_V = ap_const_lv4_0;
}

void Read_r::thread_Queue_wr_pos_V_1() {
    Queue_wr_pos_V_1 = ap_const_lv4_0;
}

void Read_r::thread_Queue_wr_pos_V_1_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1))) {
        Queue_wr_pos_V_1_ap_vld = ap_const_logic_1;
    } else {
        Queue_wr_pos_V_1_ap_vld = ap_const_logic_0;
    }
}

void Read_r::thread_Queue_wr_pos_V_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(reset_V_read_read_fu_64_p2.read(), ap_const_lv1_1))) {
        Queue_wr_pos_V_ap_vld = ap_const_logic_1;
    } else {
        Queue_wr_pos_V_ap_vld = ap_const_logic_0;
    }
}

void Read_r::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Read_r::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Read_r::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Read_r::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void Read_r::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Read_r::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Read_r::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_0 = tmp_15_fu_395_p1.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void Read_r::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_1 = Queue_buffer_packet_q0.read().range(287, 256);
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void Read_r::thread_ap_return_2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_2 = sth_V_fu_304_p3.read();
    } else {
        ap_return_2 = ap_return_2_preg.read();
    }
}

void Read_r::thread_ap_return_3() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_3 = internal_m_valid_V_fu_338_p2.read();
    } else {
        ap_return_3 = ap_return_3_preg.read();
    }
}

void Read_r::thread_ap_return_4() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_return_4 = Queue_buffer_packet_q0.read().range(416, 416);
    } else {
        ap_return_4 = ap_return_4_preg.read();
    }
}

void Read_r::thread_brmerge_demorgan_i_fu_214_p2() {
    brmerge_demorgan_i_fu_214_p2 = (this_assign_s_fu_180_p2.read() & m_axis_tready_V.read());
}

void Read_r::thread_dst_port_rd_V_fu_312_p2() {
    dst_port_rd_V_fu_312_p2 = (sel_tmp7_i_fu_272_p2.read() & brmerge_demorgan_i_fu_214_p2.read());
}

void Read_r::thread_internal_m_valid_V_fu_338_p2() {
    internal_m_valid_V_fu_338_p2 = (send_packet_V_fu_298_p2.read() & this_assign_s_fu_180_p2.read());
}

void Read_r::thread_not_sel_tmp3_i_fu_237_p2() {
    not_sel_tmp3_i_fu_237_p2 = (sel_tmp3_i_fu_231_p2.read() ^ ap_const_lv1_1);
}

void Read_r::thread_not_sel_tmp7_i_fu_292_p2() {
    not_sel_tmp7_i_fu_292_p2 = (val_assign_fu_174_p2.read() | sel_tmp2_i_not_fu_286_p2.read());
}

void Read_r::thread_p_Result_s_fu_202_p5() {
    p_Result_s_fu_202_p5 = esl_partset<128,128,8,32,32>(sth_V_2_fu_160_p4.read(), Queue_buffer_V_q0.read(), ap_const_lv32_18, ap_const_lv32_1F);
}

void Read_r::thread_p_state_1_flag_1_i_fu_318_p2() {
    p_state_1_flag_1_i_fu_318_p2 = (state_1_flag_1_i_fu_278_p3.read() | reset_V.read());
}

void Read_r::thread_p_state_1_new_1_i_cas_fu_328_p1() {
    p_state_1_new_1_i_cas_fu_328_p1 = esl_zext<32,1>(p_state_1_new_1_i_fu_323_p2.read());
}

void Read_r::thread_p_state_1_new_1_i_fu_323_p2() {
    p_state_1_new_1_i_fu_323_p2 = (not_sel_tmp7_i_fu_292_p2.read() | reset_V.read());
}

void Read_r::thread_r_V_fu_344_p2() {
    r_V_fu_344_p2 = (internal_m_valid_V_fu_338_p2.read() & m_axis_tready_V.read());
}

void Read_r::thread_reset_V_read_read_fu_64_p2() {
    reset_V_read_read_fu_64_p2 = reset_V.read();
}

void Read_r::thread_sel_tmp2_i_fu_225_p2() {
    sel_tmp2_i_fu_225_p2 = (!tmp_14_fu_198_p1.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(tmp_14_fu_198_p1.read() == ap_const_lv2_1);
}

void Read_r::thread_sel_tmp2_i_not_fu_286_p2() {
    sel_tmp2_i_not_fu_286_p2 = (sel_tmp2_i_fu_225_p2.read() ^ ap_const_lv1_1);
}

void Read_r::thread_sel_tmp3_i_fu_231_p2() {
    sel_tmp3_i_fu_231_p2 = (sel_tmp2_i_fu_225_p2.read() & val_assign_fu_174_p2.read());
}

void Read_r::thread_sel_tmp4_i_fu_260_p2() {
    sel_tmp4_i_fu_260_p2 = (tmp1_fu_255_p2.read() & tmp_fu_243_p2.read());
}

void Read_r::thread_sel_tmp6_i_fu_266_p2() {
    sel_tmp6_i_fu_266_p2 = (val_assign_fu_174_p2.read() ^ ap_const_lv1_1);
}

void Read_r::thread_sel_tmp7_i_fu_272_p2() {
    sel_tmp7_i_fu_272_p2 = (sel_tmp2_i_fu_225_p2.read() & sel_tmp6_i_fu_266_p2.read());
}

void Read_r::thread_sel_tmp_i_fu_219_p2() {
    sel_tmp_i_fu_219_p2 = (!tmp_14_fu_198_p1.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_14_fu_198_p1.read() == ap_const_lv2_0);
}

void Read_r::thread_send_packet_V_fu_298_p2() {
    send_packet_V_fu_298_p2 = (sel_tmp7_i_fu_272_p2.read() | not_sel_tmp3_i_fu_237_p2.read());
}

void Read_r::thread_state_1_flag_1_i_fu_278_p3() {
    state_1_flag_1_i_fu_278_p3 = (!sel_tmp7_i_fu_272_p2.read()[0].is_01())? sc_lv<1>(): ((sel_tmp7_i_fu_272_p2.read()[0].to_bool())? brmerge_demorgan_i_fu_214_p2.read(): sel_tmp4_i_fu_260_p2.read());
}

void Read_r::thread_sth_V_2_fu_160_p4() {
    sth_V_2_fu_160_p4 = Queue_buffer_packet_q0.read().range(415, 288);
}

void Read_r::thread_sth_V_fu_304_p3() {
    sth_V_fu_304_p3 = (!sel_tmp7_i_fu_272_p2.read()[0].is_01())? sc_lv<128>(): ((sel_tmp7_i_fu_272_p2.read()[0].to_bool())? p_Result_s_fu_202_p5.read(): sth_V_2_fu_160_p4.read());
}

void Read_r::thread_this_assign_s_fu_180_p2() {
    this_assign_s_fu_180_p2 = (!Queue_ap_axis_size_i.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(Queue_ap_axis_size_i.read() != ap_const_lv32_0);
}

void Read_r::thread_tmp1_fu_255_p2() {
    tmp1_fu_255_p2 = (tmp2_fu_249_p2.read() & m_axis_tready_V.read());
}

void Read_r::thread_tmp2_fu_249_p2() {
    tmp2_fu_249_p2 = (sel_tmp_i_fu_219_p2.read() & not_sel_tmp3_i_fu_237_p2.read());
}

void Read_r::thread_tmp_13_fu_186_p3() {
    tmp_13_fu_186_p3 = Queue_buffer_packet_q0.read().range(416, 416);
}

void Read_r::thread_tmp_14_fu_198_p1() {
    tmp_14_fu_198_p1 = state_1.read().range(2-1, 0);
}

void Read_r::thread_tmp_15_fu_395_p1() {
    tmp_15_fu_395_p1 = Queue_buffer_packet_q0.read().range(256-1, 0);
}

void Read_r::thread_tmp_fu_243_p2() {
    tmp_fu_243_p2 = (tmp_13_fu_186_p3.read() & this_assign_s_fu_180_p2.read());
}

void Read_r::thread_tmp_i2_fu_151_p1() {
    tmp_i2_fu_151_p1 = esl_zext<64,4>(Queue_rd_pos_V_i.read());
}

void Read_r::thread_tmp_i_fu_142_p1() {
    tmp_i_fu_142_p1 = esl_zext<64,4>(Queue_rd_pos_V_1_i.read());
}

void Read_r::thread_val_assign_fu_174_p2() {
    val_assign_fu_174_p2 = (!Queue_size_i.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(Queue_size_i.read() == ap_const_lv32_0);
}

void Read_r::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
