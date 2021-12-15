#include "ap_int.h"
#include "packet.h"

#define NUM_OUTPUT_QUEUES 8
#define DST_PORT_POS 24




enum state{
	SEND,
	WAIT
};



void Send_packet(//Input
				ap_uint<TUSERWIDTH> &tuser_modified,
				ap_uint<NUM_OUTPUT_QUEUES> dst_port_latched,
				ap_uint<1> dst_port_fifo_empty,
				ap_uint<1> tvalid,
				ap_uint<1> tready,
				ap_uint<1> tlast,
				ap_uint<1> reset,

				//Outputs
				ap_uint<1> &send_packet,
				ap_uint<1> &dst_port_rd)
{

	static int state = WAIT;


	send_packet = 1;

	dst_port_rd = 0;


	switch(state)
	{


	case WAIT:{

		send_packet = 0;

		if(!dst_port_fifo_empty){

			tuser_modified.range(DST_PORT_POS + 7, DST_PORT_POS) = dst_port_latched;

			send_packet = 1;

			if(tvalid && tready){

				state = SEND;

				dst_port_rd = 1;

			}

		}
		break;
	}
	case SEND:{

		if(tlast && tvalid && tready)
			state = WAIT;

		break;
	}
	default: break;


	}


	if(reset)state = WAIT;


}
