-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity switch_output_port_lookup is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_tdata_V : IN STD_LOGIC_VECTOR (255 downto 0);
    s_axis_tkeep_V : IN STD_LOGIC_VECTOR (31 downto 0);
    s_axis_tuser_V : IN STD_LOGIC_VECTOR (127 downto 0);
    s_axis_tvalid_V : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_tready_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    s_axis_tlast_V : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axis_tdata_V : OUT STD_LOGIC_VECTOR (255 downto 0);
    m_axis_tkeep_V : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axis_tuser_V : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axis_tvalid_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_tready_V : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axis_tlast_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    reset_V : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of switch_output_port_lookup is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "switch_output_port_lookup,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx690tffg1761-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.003963,HLS_SYN_LAT=6,HLS_SYN_TPT=none,HLS_SYN_MEM=12,HLS_SYN_DSP=0,HLS_SYN_FF=1561,HLS_SYN_LUT=2487,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv29_1 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal Queue_ap_axis_size : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal Queue_wr_pos_V_1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal Queue_rd_pos_V_1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal Queue_size : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal Queue_wr_pos_V : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal Queue_rd_pos_V : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal Queue_buffer_packet_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal Queue_buffer_packet_ce0 : STD_LOGIC;
    signal Queue_buffer_packet_we0 : STD_LOGIC;
    signal Queue_buffer_packet_d0 : STD_LOGIC_VECTOR (416 downto 0);
    signal Queue_buffer_packet_q0 : STD_LOGIC_VECTOR (416 downto 0);
    signal Queue_buffer_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal Queue_buffer_V_ce0 : STD_LOGIC;
    signal Queue_buffer_V_we0 : STD_LOGIC;
    signal Queue_buffer_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal this_assign_2_fu_388_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal this_assign_2_reg_624 : STD_LOGIC_VECTOR (0 downto 0);
    signal rhs_V_fu_444_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rhs_V_reg_631 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal dst_port_V_reg_639 : STD_LOGIC_VECTOR (7 downto 0);
    signal lookup_done_V_reg_644 : STD_LOGIC_VECTOR (0 downto 0);
    signal lut_ret_i_i_lut_fu_278_ap_start : STD_LOGIC;
    signal lut_ret_i_i_lut_fu_278_ap_done : STD_LOGIC;
    signal lut_ret_i_i_lut_fu_278_ap_idle : STD_LOGIC;
    signal lut_ret_i_i_lut_fu_278_ap_ready : STD_LOGIC;
    signal lut_ret_i_i_lut_fu_278_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lut_ret_i_i_lut_fu_278_ap_return_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Read_r_fu_353_ap_start : STD_LOGIC;
    signal grp_Read_r_fu_353_ap_done : STD_LOGIC;
    signal grp_Read_r_fu_353_ap_idle : STD_LOGIC;
    signal grp_Read_r_fu_353_ap_ready : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_ap_axis_size_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_Read_r_fu_353_Queue_ap_axis_size_o_ap_vld : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_wr_pos_V_1 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Read_r_fu_353_Queue_wr_pos_V_1_ap_vld : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_rd_pos_V_1_o : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Read_r_fu_353_Queue_rd_pos_V_1_o_ap_vld : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_size_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_Read_r_fu_353_Queue_size_o_ap_vld : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_wr_pos_V : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Read_r_fu_353_Queue_wr_pos_V_ap_vld : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_rd_pos_V_o : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Read_r_fu_353_Queue_rd_pos_V_o_ap_vld : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_buffer_packet_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Read_r_fu_353_Queue_buffer_packet_ce0 : STD_LOGIC;
    signal grp_Read_r_fu_353_Queue_buffer_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Read_r_fu_353_Queue_buffer_V_ce0 : STD_LOGIC;
    signal grp_Read_r_fu_353_ap_return_0 : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_Read_r_fu_353_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_Read_r_fu_353_ap_return_2 : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_Read_r_fu_353_ap_return_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Read_r_fu_353_ap_return_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal eth_ret_i_i_eth_fu_377_ap_start : STD_LOGIC;
    signal eth_ret_i_i_eth_fu_377_ap_done : STD_LOGIC;
    signal eth_ret_i_i_eth_fu_377_ap_idle : STD_LOGIC;
    signal eth_ret_i_i_eth_fu_377_ap_ready : STD_LOGIC;
    signal eth_ret_i_i_eth_fu_377_valid_V : STD_LOGIC_VECTOR (0 downto 0);
    signal eth_ret_i_i_eth_fu_377_ap_return_0 : STD_LOGIC_VECTOR (47 downto 0);
    signal eth_ret_i_i_eth_fu_377_ap_return_1 : STD_LOGIC_VECTOR (47 downto 0);
    signal eth_ret_i_i_eth_fu_377_ap_return_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal eth_ret_i_i_eth_fu_377_ap_return_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Read_r_fu_353_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal r_V_fu_450_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_i_fu_493_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i3_i_fu_558_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal reset_V_read_read_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Queue_size_assign_i_fu_465_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal Queue_wr_pos_V_assi_fu_481_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal Queue_size_assign_i_1_fu_530_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal Queue_wr_pos_V_assi_1_fu_546_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal s_axis_tready_V_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_fu_434_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component lut IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        dst_mac_V : IN STD_LOGIC_VECTOR (47 downto 0);
        src_mac_V : IN STD_LOGIC_VECTOR (47 downto 0);
        src_port_V : IN STD_LOGIC_VECTOR (7 downto 0);
        lookup_req_V : IN STD_LOGIC_VECTOR (0 downto 0);
        reset_V : IN STD_LOGIC_VECTOR (0 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component Read_r IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        m_axis_tready_V : IN STD_LOGIC_VECTOR (0 downto 0);
        reset_V : IN STD_LOGIC_VECTOR (0 downto 0);
        Queue_ap_axis_size_i : IN STD_LOGIC_VECTOR (31 downto 0);
        Queue_ap_axis_size_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        Queue_ap_axis_size_o_ap_vld : OUT STD_LOGIC;
        Queue_wr_pos_V_1 : OUT STD_LOGIC_VECTOR (3 downto 0);
        Queue_wr_pos_V_1_ap_vld : OUT STD_LOGIC;
        Queue_rd_pos_V_1_i : IN STD_LOGIC_VECTOR (3 downto 0);
        Queue_rd_pos_V_1_o : OUT STD_LOGIC_VECTOR (3 downto 0);
        Queue_rd_pos_V_1_o_ap_vld : OUT STD_LOGIC;
        Queue_size_i : IN STD_LOGIC_VECTOR (31 downto 0);
        Queue_size_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        Queue_size_o_ap_vld : OUT STD_LOGIC;
        Queue_wr_pos_V : OUT STD_LOGIC_VECTOR (3 downto 0);
        Queue_wr_pos_V_ap_vld : OUT STD_LOGIC;
        Queue_rd_pos_V_i : IN STD_LOGIC_VECTOR (3 downto 0);
        Queue_rd_pos_V_o : OUT STD_LOGIC_VECTOR (3 downto 0);
        Queue_rd_pos_V_o_ap_vld : OUT STD_LOGIC;
        Queue_buffer_packet_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        Queue_buffer_packet_ce0 : OUT STD_LOGIC;
        Queue_buffer_packet_q0 : IN STD_LOGIC_VECTOR (416 downto 0);
        Queue_buffer_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        Queue_buffer_V_ce0 : OUT STD_LOGIC;
        Queue_buffer_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (255 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (127 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (0 downto 0);
        ap_return_4 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component eth IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        tdata_V : IN STD_LOGIC_VECTOR (255 downto 0);
        tuser_V : IN STD_LOGIC_VECTOR (127 downto 0);
        valid_V : IN STD_LOGIC_VECTOR (0 downto 0);
        tlast_V : IN STD_LOGIC_VECTOR (0 downto 0);
        reset_V : IN STD_LOGIC_VECTOR (0 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (47 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (47 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component switch_output_porbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (416 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (416 downto 0) );
    end component;


    component switch_output_porcud IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    Queue_buffer_packet_U : component switch_output_porbkb
    generic map (
        DataWidth => 417,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => Queue_buffer_packet_address0,
        ce0 => Queue_buffer_packet_ce0,
        we0 => Queue_buffer_packet_we0,
        d0 => Queue_buffer_packet_d0,
        q0 => Queue_buffer_packet_q0);

    Queue_buffer_V_U : component switch_output_porcud
    generic map (
        DataWidth => 8,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => Queue_buffer_V_address0,
        ce0 => Queue_buffer_V_ce0,
        we0 => Queue_buffer_V_we0,
        d0 => dst_port_V_reg_639,
        q0 => Queue_buffer_V_q0);

    lut_ret_i_i_lut_fu_278 : component lut
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => lut_ret_i_i_lut_fu_278_ap_start,
        ap_done => lut_ret_i_i_lut_fu_278_ap_done,
        ap_idle => lut_ret_i_i_lut_fu_278_ap_idle,
        ap_ready => lut_ret_i_i_lut_fu_278_ap_ready,
        dst_mac_V => eth_ret_i_i_eth_fu_377_ap_return_0,
        src_mac_V => eth_ret_i_i_eth_fu_377_ap_return_1,
        src_port_V => eth_ret_i_i_eth_fu_377_ap_return_2,
        lookup_req_V => eth_ret_i_i_eth_fu_377_ap_return_3,
        reset_V => this_assign_2_reg_624,
        ap_return_0 => lut_ret_i_i_lut_fu_278_ap_return_0,
        ap_return_1 => lut_ret_i_i_lut_fu_278_ap_return_1);

    grp_Read_r_fu_353 : component Read_r
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_Read_r_fu_353_ap_start,
        ap_done => grp_Read_r_fu_353_ap_done,
        ap_idle => grp_Read_r_fu_353_ap_idle,
        ap_ready => grp_Read_r_fu_353_ap_ready,
        m_axis_tready_V => m_axis_tready_V,
        reset_V => this_assign_2_reg_624,
        Queue_ap_axis_size_i => Queue_ap_axis_size,
        Queue_ap_axis_size_o => grp_Read_r_fu_353_Queue_ap_axis_size_o,
        Queue_ap_axis_size_o_ap_vld => grp_Read_r_fu_353_Queue_ap_axis_size_o_ap_vld,
        Queue_wr_pos_V_1 => grp_Read_r_fu_353_Queue_wr_pos_V_1,
        Queue_wr_pos_V_1_ap_vld => grp_Read_r_fu_353_Queue_wr_pos_V_1_ap_vld,
        Queue_rd_pos_V_1_i => Queue_rd_pos_V_1,
        Queue_rd_pos_V_1_o => grp_Read_r_fu_353_Queue_rd_pos_V_1_o,
        Queue_rd_pos_V_1_o_ap_vld => grp_Read_r_fu_353_Queue_rd_pos_V_1_o_ap_vld,
        Queue_size_i => Queue_size,
        Queue_size_o => grp_Read_r_fu_353_Queue_size_o,
        Queue_size_o_ap_vld => grp_Read_r_fu_353_Queue_size_o_ap_vld,
        Queue_wr_pos_V => grp_Read_r_fu_353_Queue_wr_pos_V,
        Queue_wr_pos_V_ap_vld => grp_Read_r_fu_353_Queue_wr_pos_V_ap_vld,
        Queue_rd_pos_V_i => Queue_rd_pos_V,
        Queue_rd_pos_V_o => grp_Read_r_fu_353_Queue_rd_pos_V_o,
        Queue_rd_pos_V_o_ap_vld => grp_Read_r_fu_353_Queue_rd_pos_V_o_ap_vld,
        Queue_buffer_packet_address0 => grp_Read_r_fu_353_Queue_buffer_packet_address0,
        Queue_buffer_packet_ce0 => grp_Read_r_fu_353_Queue_buffer_packet_ce0,
        Queue_buffer_packet_q0 => Queue_buffer_packet_q0,
        Queue_buffer_V_address0 => grp_Read_r_fu_353_Queue_buffer_V_address0,
        Queue_buffer_V_ce0 => grp_Read_r_fu_353_Queue_buffer_V_ce0,
        Queue_buffer_V_q0 => Queue_buffer_V_q0,
        ap_return_0 => grp_Read_r_fu_353_ap_return_0,
        ap_return_1 => grp_Read_r_fu_353_ap_return_1,
        ap_return_2 => grp_Read_r_fu_353_ap_return_2,
        ap_return_3 => grp_Read_r_fu_353_ap_return_3,
        ap_return_4 => grp_Read_r_fu_353_ap_return_4);

    eth_ret_i_i_eth_fu_377 : component eth
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => eth_ret_i_i_eth_fu_377_ap_start,
        ap_done => eth_ret_i_i_eth_fu_377_ap_done,
        ap_idle => eth_ret_i_i_eth_fu_377_ap_idle,
        ap_ready => eth_ret_i_i_eth_fu_377_ap_ready,
        tdata_V => s_axis_tdata_V,
        tuser_V => s_axis_tuser_V,
        valid_V => eth_ret_i_i_eth_fu_377_valid_V,
        tlast_V => s_axis_tlast_V,
        reset_V => this_assign_2_reg_624,
        ap_return_0 => eth_ret_i_i_eth_fu_377_ap_return_0,
        ap_return_1 => eth_ret_i_i_eth_fu_377_ap_return_1,
        ap_return_2 => eth_ret_i_i_eth_fu_377_ap_return_2,
        ap_return_3 => eth_ret_i_i_eth_fu_377_ap_return_3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_Read_r_fu_353_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_Read_r_fu_353_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_Read_r_fu_353_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_Read_r_fu_353_ap_ready = ap_const_logic_1)) then 
                    grp_Read_r_fu_353_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    s_axis_tready_V_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                s_axis_tready_V_preg <= ap_const_lv1_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    s_axis_tready_V_preg <= rhs_V_reg_631;
                end if; 
            end if;
        end if;
    end process;


    Queue_ap_axis_size_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((r_V_fu_450_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                Queue_ap_axis_size <= Queue_size_assign_i_fu_465_p2;
            elsif (((reset_V_read_read_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                Queue_ap_axis_size <= ap_const_lv32_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_Queue_ap_axis_size_o_ap_vld = ap_const_logic_1))) then 
                Queue_ap_axis_size <= grp_Read_r_fu_353_Queue_ap_axis_size_o;
            end if; 
        end if;
    end process;

    Queue_rd_pos_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((reset_V_read_read_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                Queue_rd_pos_V <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_Queue_rd_pos_V_o_ap_vld = ap_const_logic_1))) then 
                Queue_rd_pos_V <= grp_Read_r_fu_353_Queue_rd_pos_V_o;
            end if; 
        end if;
    end process;

    Queue_rd_pos_V_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((reset_V_read_read_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                Queue_rd_pos_V_1 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_Queue_rd_pos_V_1_o_ap_vld = ap_const_logic_1))) then 
                Queue_rd_pos_V_1 <= grp_Read_r_fu_353_Queue_rd_pos_V_1_o;
            end if; 
        end if;
    end process;

    Queue_size_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((lookup_done_V_reg_644 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                Queue_size <= Queue_size_assign_i_1_fu_530_p2;
            elsif (((reset_V_read_read_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                Queue_size <= ap_const_lv32_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_Queue_size_o_ap_vld = ap_const_logic_1))) then 
                Queue_size <= grp_Read_r_fu_353_Queue_size_o;
            end if; 
        end if;
    end process;

    Queue_wr_pos_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((lookup_done_V_reg_644 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                Queue_wr_pos_V <= Queue_wr_pos_V_assi_1_fu_546_p2;
            elsif (((reset_V_read_read_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                Queue_wr_pos_V <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_Queue_wr_pos_V_ap_vld = ap_const_logic_1))) then 
                Queue_wr_pos_V <= grp_Read_r_fu_353_Queue_wr_pos_V;
            end if; 
        end if;
    end process;

    Queue_wr_pos_V_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((r_V_fu_450_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                Queue_wr_pos_V_1 <= Queue_wr_pos_V_assi_fu_481_p2;
            elsif (((reset_V_read_read_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                Queue_wr_pos_V_1 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_Queue_wr_pos_V_1_ap_vld = ap_const_logic_1))) then 
                Queue_wr_pos_V_1 <= grp_Read_r_fu_353_Queue_wr_pos_V_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                dst_port_V_reg_639 <= lut_ret_i_i_lut_fu_278_ap_return_0;
                lookup_done_V_reg_644 <= lut_ret_i_i_lut_fu_278_ap_return_1;
                rhs_V_reg_631 <= rhs_V_fu_444_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                this_assign_2_reg_624 <= this_assign_2_fu_388_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_Read_r_fu_353_ap_done, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    Queue_buffer_V_address0_assign_proc : process(grp_Read_r_fu_353_Queue_buffer_V_address0, ap_CS_fsm_state5, tmp_i3_i_fu_558_p1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            Queue_buffer_V_address0 <= tmp_i3_i_fu_558_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            Queue_buffer_V_address0 <= grp_Read_r_fu_353_Queue_buffer_V_address0;
        else 
            Queue_buffer_V_address0 <= "XXXX";
        end if; 
    end process;


    Queue_buffer_V_ce0_assign_proc : process(grp_Read_r_fu_353_Queue_buffer_V_ce0, ap_CS_fsm_state5, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            Queue_buffer_V_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            Queue_buffer_V_ce0 <= grp_Read_r_fu_353_Queue_buffer_V_ce0;
        else 
            Queue_buffer_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    Queue_buffer_V_we0_assign_proc : process(lookup_done_V_reg_644, ap_CS_fsm_state3)
    begin
        if (((lookup_done_V_reg_644 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            Queue_buffer_V_we0 <= ap_const_logic_1;
        else 
            Queue_buffer_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    Queue_buffer_packet_address0_assign_proc : process(ap_CS_fsm_state2, grp_Read_r_fu_353_Queue_buffer_packet_address0, ap_CS_fsm_state5, tmp_i_i_fu_493_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            Queue_buffer_packet_address0 <= tmp_i_i_fu_493_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            Queue_buffer_packet_address0 <= grp_Read_r_fu_353_Queue_buffer_packet_address0;
        else 
            Queue_buffer_packet_address0 <= "XXXX";
        end if; 
    end process;


    Queue_buffer_packet_ce0_assign_proc : process(ap_CS_fsm_state2, grp_Read_r_fu_353_Queue_buffer_packet_ce0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            Queue_buffer_packet_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            Queue_buffer_packet_ce0 <= grp_Read_r_fu_353_Queue_buffer_packet_ce0;
        else 
            Queue_buffer_packet_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Queue_buffer_packet_d0 <= (((s_axis_tlast_V & s_axis_tuser_V) & s_axis_tkeep_V) & s_axis_tdata_V);

    Queue_buffer_packet_we0_assign_proc : process(ap_CS_fsm_state2, r_V_fu_450_p2)
    begin
        if (((r_V_fu_450_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            Queue_buffer_packet_we0 <= ap_const_logic_1;
        else 
            Queue_buffer_packet_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Queue_size_assign_i_1_fu_530_p2 <= std_logic_vector(unsigned(Queue_size) + unsigned(ap_const_lv32_1));
    Queue_size_assign_i_fu_465_p2 <= std_logic_vector(unsigned(Queue_ap_axis_size) + unsigned(ap_const_lv32_1));
    Queue_wr_pos_V_assi_1_fu_546_p2 <= std_logic_vector(unsigned(Queue_wr_pos_V) + unsigned(ap_const_lv4_1));
    Queue_wr_pos_V_assi_fu_481_p2 <= std_logic_vector(unsigned(Queue_wr_pos_V_1) + unsigned(ap_const_lv4_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(grp_Read_r_fu_353_ap_done, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_Read_r_fu_353_ap_done, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_Read_r_fu_353_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    eth_ret_i_i_eth_fu_377_ap_start_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            eth_ret_i_i_eth_fu_377_ap_start <= ap_const_logic_1;
        else 
            eth_ret_i_i_eth_fu_377_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    eth_ret_i_i_eth_fu_377_valid_V <= (s_axis_tvalid_V and rhs_V_fu_444_p2);
    grp_Read_r_fu_353_ap_start <= grp_Read_r_fu_353_ap_start_reg;

    lut_ret_i_i_lut_fu_278_ap_start_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            lut_ret_i_i_lut_fu_278_ap_start <= ap_const_logic_1;
        else 
            lut_ret_i_i_lut_fu_278_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    m_axis_tdata_V <= grp_Read_r_fu_353_ap_return_0;
    m_axis_tkeep_V <= grp_Read_r_fu_353_ap_return_1;
    m_axis_tlast_V <= grp_Read_r_fu_353_ap_return_4;
    m_axis_tuser_V <= grp_Read_r_fu_353_ap_return_2;
    m_axis_tvalid_V <= grp_Read_r_fu_353_ap_return_3;
    r_V_fu_450_p2 <= (s_axis_tvalid_V and rhs_V_fu_444_p2);
    reset_V_read_read_fu_168_p2 <= reset_V;
    rhs_V_fu_444_p2 <= "1" when (signed(tmp_fu_434_p4) < signed(ap_const_lv29_1)) else "0";

    s_axis_tready_V_assign_proc : process(rhs_V_reg_631, ap_CS_fsm_state3, s_axis_tready_V_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            s_axis_tready_V <= rhs_V_reg_631;
        else 
            s_axis_tready_V <= s_axis_tready_V_preg;
        end if; 
    end process;

    this_assign_2_fu_388_p2 <= (reset_V xor ap_const_lv1_1);
    tmp_fu_434_p4 <= Queue_ap_axis_size(31 downto 3);
    tmp_i3_i_fu_558_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Queue_wr_pos_V),64));
    tmp_i_i_fu_493_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Queue_wr_pos_V_1),64));
end behav;
