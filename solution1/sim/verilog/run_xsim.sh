
/opt/Xilinx/Vivado/2018.2/bin/xelab xil_defaultlib.apatb_switch_output_port_lookup_top glbl -prj switch_output_port_lookup.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/opt/Xilinx/Vivado/2018.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s switch_output_port_lookup -debug wave
/opt/Xilinx/Vivado/2018.2/bin/xsim --noieeewarnings switch_output_port_lookup -tclbatch switch_output_port_lookup.tcl
