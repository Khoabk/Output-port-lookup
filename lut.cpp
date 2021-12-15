#include <ap_int.h>
#include <iostream>



#define LUT_BIT_LENGTH 4
#define NUM_OUTPUT_QUEUES 8
#define LUT_LENGTH 1<<4
#define DATA_WIDTH 48
#define DEFAULT_MISS_OUTPUT_PORTS  0x55

struct Lut{

	struct{
		ap_uint<NUM_OUTPUT_QUEUES> dst_port;
		ap_uint<DATA_WIDTH> dest_mac;
	}table[LUT_LENGTH];

		ap_uint<LUT_BIT_LENGTH> replace_pos;

};




void lut(ap_uint<DATA_WIDTH> dst_mac,
		ap_uint<DATA_WIDTH> src_mac,
		ap_uint<NUM_OUTPUT_QUEUES> src_port,
		ap_uint<1> lookup_req,
		ap_uint<1> reset,

		ap_uint<NUM_OUTPUT_QUEUES> &dst_port,
		ap_uint<1> &lookup_done,
		ap_uint<1> &lut_miss,
		ap_uint<1> &lut_hit)
{


	lookup_done=0;

	static struct Lut lut;

#pragma HLS ARRAY_PARTITION variable = lut.table dim =1 complete



	if(reset){
		lut.replace_pos =0;
	}


	if(!lookup_req){

		lookup_done =0;

		return;

	}


	ap_uint<NUM_OUTPUT_QUEUES> dest_port= DEFAULT_MISS_OUTPUT_PORTS;

	ap_uint<1> lut_learn_hit=0;

	ap_uint<1> lookup_hit=0;


		for(int i=0; i<16; i++)
		{
			#pragma HLS UNROLL

			// Search for dst mac

			if(lut.table[i].dest_mac==dst_mac)
			{
				dest_port = lut.table[i].dst_port;

				lookup_hit =1;
			}


			//Search for source mac

			if(lut.table[i].dest_mac==src_mac)
			{

				lut.table[i].dst_port = src_port;

				lut_learn_hit =1;

			}

		}


	if(!lut_learn_hit){
		lut.table[lut.replace_pos].dest_mac = src_mac;
		lut.table[lut.replace_pos].dst_port = src_port;

		lut.replace_pos++;
	}

	dst_port = dest_port;
	lut_hit = lookup_hit;
	lut_miss = ! lookup_hit;
	lookup_done = 1;



}
