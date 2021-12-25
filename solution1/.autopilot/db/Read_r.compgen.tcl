# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name Queue_buffer_packet \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Queue_buffer_packet \
    op interface \
    ports { Queue_buffer_packet_address0 { O 4 vector } Queue_buffer_packet_ce0 { O 1 bit } Queue_buffer_packet_q0 { I 417 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Queue_buffer_packet'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name Queue_buffer_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Queue_buffer_V \
    op interface \
    ports { Queue_buffer_V_address0 { O 4 vector } Queue_buffer_V_ce0 { O 1 bit } Queue_buffer_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Queue_buffer_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name m_axis_tready_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_axis_tready_V \
    op interface \
    ports { m_axis_tready_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name reset_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reset_V \
    op interface \
    ports { reset_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name Queue_ap_axis_size \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Queue_ap_axis_size \
    op interface \
    ports { Queue_ap_axis_size_i { I 32 vector } Queue_ap_axis_size_o { O 32 vector } Queue_ap_axis_size_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name Queue_wr_pos_V_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Queue_wr_pos_V_1 \
    op interface \
    ports { Queue_wr_pos_V_1 { O 4 vector } Queue_wr_pos_V_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name Queue_rd_pos_V_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Queue_rd_pos_V_1 \
    op interface \
    ports { Queue_rd_pos_V_1_i { I 4 vector } Queue_rd_pos_V_1_o { O 4 vector } Queue_rd_pos_V_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name Queue_size \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Queue_size \
    op interface \
    ports { Queue_size_i { I 32 vector } Queue_size_o { O 32 vector } Queue_size_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name Queue_wr_pos_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Queue_wr_pos_V \
    op interface \
    ports { Queue_wr_pos_V { O 4 vector } Queue_wr_pos_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name Queue_rd_pos_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Queue_rd_pos_V \
    op interface \
    ports { Queue_rd_pos_V_i { I 4 vector } Queue_rd_pos_V_o { O 4 vector } Queue_rd_pos_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


