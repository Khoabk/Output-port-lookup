#include <ap_int.h>


enum state{
	READ_MAC,
	WAIT
};



#define C_S_AXIS_DATA_WIDTH 256
#define C_S_AXIS_TUSER_WIDTH 128
#define NUM_QUEUES 8
#define SRC_PORT_POS          16

void eth(ap_uint<C_S_AXIS_DATA_WIDTH>	tdata,
		ap_uint<C_S_AXIS_TUSER_WIDTH>	tuser,
		ap_uint<1>						valid,
		ap_uint<1> 						tlast,
		ap_uint<1>						reset,

		ap_uint<48>						&dst_mac,
		ap_uint<48>						&src_mac,
		ap_uint<NUM_QUEUES>				&src_port,
		ap_uint<1>						&eth_done)
{


	static int state = READ_MAC;


	if(reset)
	{
		state = READ_MAC;
		src_port = 0;
		dst_mac = 0;
		src_mac = 0;
		eth_done = 0;
		return;
	}


	switch(state)
	{

	case READ_MAC:{

		if(valid){

			src_port = tuser.range(SRC_PORT_POS+7, SRC_PORT_POS);
			dst_mac = tdata.range(47, 0);
			src_mac = tdata.range(95, 48);
			eth_done = 1;
			state = WAIT;

		}

		break;
	}
	case WAIT:
	{

		src_port = 0;
		dst_mac = 0;
		src_mac = 0;
		eth_done =0;

		if(valid&&tlast){ state = READ_MAC;}

		break;
	}
	default: break;


	}


}
