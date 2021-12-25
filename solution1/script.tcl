############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Output_port_lookup
set_top switch_output_port_lookup
add_files Output_port_lookup/queue.h
add_files Output_port_lookup/packet.h
add_files Output_port_lookup/packet.cpp
add_files Output_port_lookup/lut.cpp
add_files Output_port_lookup/Send_packet.cpp
add_files Output_port_lookup/Output_port_lookup.cpp
add_files Output_port_lookup/Fifo.cpp
add_files Output_port_lookup/Eth.cpp
add_files Output_port_lookup/Combine.cpp
add_files -tb Output_port_lookup/test.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7vx690tffg1157-1} -tool vivado
create_clock -period 10 -name default
#source "./Output_port_lookup/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -flow syn -rtl verilog -format ip_catalog
