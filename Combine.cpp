#include "ap_int.h"



#define C_S_AXIS_DATA_WIDTH 256
#define C_S_AXIS_TUSER_WIDTH 128
#define NUM_OUTPUT_QUEUES 8
#define DATA_WIDTH 48





void eth(ap_uint<C_S_AXIS_DATA_WIDTH>	tdata,
		ap_uint<C_S_AXIS_TUSER_WIDTH>	tuser,
		ap_uint<1>						valid,
		ap_uint<1> 						tlast,
		ap_uint<1>						reset,

		ap_uint<48>						&dst_mac,
		ap_uint<48>						&src_mac,
		ap_uint<NUM_OUTPUT_QUEUES>				&src_port,
		ap_uint<1>						&eth_done);


void lut(ap_uint<DATA_WIDTH> dst_mac,
		ap_uint<DATA_WIDTH> src_mac,
		ap_uint<NUM_OUTPUT_QUEUES> src_port,
		ap_uint<1> lookup_req,
		ap_uint<1> reset,

		ap_uint<NUM_OUTPUT_QUEUES> &dst_port,
		ap_uint<1> &lookup_done,
		ap_uint<1> &lut_miss,
		ap_uint<1> &lut_hit);


void Combine(//Input
			ap_uint<C_S_AXIS_DATA_WIDTH>	tdata,
			ap_uint<C_S_AXIS_TUSER_WIDTH>	tuser,
			ap_uint<1> 						tlast,
			ap_uint<1> 						reset,
			ap_uint<1> 					 camreset,
			ap_uint<1>						valid,

			//Output
			ap_uint<NUM_OUTPUT_QUEUES>  &dst_port,
			ap_uint<1>               &lookup_done,
			ap_uint<1>                  &lut_miss,
			ap_uint<1>                   &lut_hit)
{

	ap_uint<48>						dst_mac =0;
	ap_uint<48>						src_mac =0;
	ap_uint<NUM_OUTPUT_QUEUES>		src_port = 0;
	ap_uint<1>						eth_done = 0;



	eth(tdata, tuser, valid, tlast, reset, dst_mac, src_mac, src_port, eth_done);

	lut(dst_mac, src_mac, src_port, eth_done, camreset, dst_port, lookup_done, lut_miss, lut_hit);


}
