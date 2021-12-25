#include "ap_int.h"
#include "packet.h"
#include "queue.h"

//MASTER AXI Stream Data Width
#define  C_M_AXIS_DATA_WIDTH   256
#define  C_S_AXIS_DATA_WIDTH   256
#define  C_M_AXIS_TUSER_WIDTH  128
#define  C_S_AXIS_TUSER_WIDTH  128
#define  SRC_PORT_POS          16
#define  DST_PORT_POS          24
#define  NUM_OUTPUT_QUEUES     8




typedef ap_uint<8> dest_port_type;


void Send_packet(//Input
		ap_uint<TUSERWIDTH> 		       &tuser,
		ap_uint<NUM_OUTPUT_QUEUES>  dst_port_latched,
		ap_uint<1> 		  dst_port_fifo_empty,
		ap_uint<1> 			       tvalid,
		ap_uint<1> 			       tready,
		ap_uint<1> 				tlast,
		ap_uint<1> 				reset,

		//Outputs
		ap_uint<1> 			 &send_packet,
		ap_uint<1> 		        &dst_port_rd);





void Combine(//Input
		ap_uint<C_S_AXIS_DATA_WIDTH>	 tdata,
		ap_uint<C_S_AXIS_TUSER_WIDTH>	 tuser,
		ap_uint<1> 		         tlast,
		ap_uint<1> 			 reset,
		ap_uint<1>		     cam_reset,
		ap_uint<1>			 valid,

		//Output
		ap_uint<NUM_OUTPUT_QUEUES>  &dst_port,
		ap_uint<1> 		  &lookup_done,
		ap_uint<1>                  &lut_miss,
		ap_uint<1>                   &lut_hit);






void Write(//Input
		ap_uint<C_S_AXIS_DATA_WIDTH>   s_axis_tdata,
		ap_uint<C_S_AXIS_DATA_WIDTH/8> s_axis_tkeep,
		ap_uint<C_S_AXIS_TUSER_WIDTH>  s_axis_tuser,
		ap_uint<1> 		       s_axis_tvalid,
		ap_uint<1>  		      &s_axis_tready,
		ap_uint<1>  			s_axis_tlast,
		ap_uint<1>			       reset,
		ap_uint<1>			   cam_reset,

		  //Output
		ap_uint<1>			    &lut_hit,
		ap_uint<1>			   &lut_miss)
{

	static Queue<ap_axis> data_queue;

	static Queue<dest_port_type> dest_port_queue;

	if(reset)
	{
		data_queue.Reset();

		dest_port_queue.Reset();
	}

	s_axis_tready = !data_queue.isNearlyFull();

	ap_uint<1> is_nearly_full = !data_queue.isNearlyFull();

	ap_uint<1> wren;

	ap_uint<8> dst_port;

	ap_uint<1> lookup_done;


	wren = (s_axis_tvalid & !data_queue.isNearlyFull());


	if(wren)
	{

		ap_axis receive(s_axis_tdata,s_axis_tkeep,s_axis_tuser,s_axis_tlast);

		data_queue.Enqueue(receive);

	}


	Combine(s_axis_tdata,s_axis_tuser,s_axis_tlast,reset,cam_reset,s_axis_tvalid&is_nearly_full,dst_port,lookup_done,lut_miss,lut_hit);


	if(lookup_done)
	{
		dest_port_queue.Enqueue(dst_port);
	}

}




void Read(//Input
		ap_uint<1>     	                m_axis_tready,
		ap_uint<1> 		                reset,

		//Output
		ap_uint<C_M_AXIS_DATA_WIDTH>   &m_axis_tdata,
		ap_uint<C_M_AXIS_DATA_WIDTH/8> &m_axis_tkeep,
		ap_uint<C_M_AXIS_TUSER_WIDTH>  &m_axis_tuser,
		ap_uint<1> 		       &m_axis_tvalid,
		ap_uint<1>  			&m_axis_tlast)
{

	static Queue<ap_axis> data_queue;

	static Queue<dest_port_type> dest_port_queue;

	if(reset){

		data_queue.Reset();

		dest_port_queue.Reset();
	}

	ap_axis transfer = data_queue.Front();

	ap_uint<1> send_packet;

	ap_uint<1> dst_port_rd;

	ap_uint<1> infifo_empty = data_queue.isEmpty();

	ap_uint<1> internal_m_valid;

	ap_uint<1> infifo_ren;

	ap_uint<128> sth = transfer.packet.range(USERINBASE + TUSERWIDTH - 1,USERINBASE);

	Send_packet(sth,dest_port_queue.Front(),dest_port_queue.isEmpty(),~infifo_empty,m_axis_tready,transfer.packet.range(LASTINBASE,LASTINBASE),reset,send_packet,dst_port_rd);

	transfer.packet.range(USERINBASE + TUSERWIDTH - 1,USERINBASE) = sth;

	internal_m_valid = send_packet & ~infifo_empty;

	infifo_ren = m_axis_tready & internal_m_valid;

	if(infifo_ren)data_queue.Dequeue();

	if(dst_port_rd)dest_port_queue.Dequeue();

	m_axis_tdata = transfer.packet.range(DATAINBASE + TDATAWIDTH - 1,DATAINBASE);

	m_axis_tkeep = transfer.packet.range(KEEPINBASE + TDATAWIDTH/8 -1,KEEPINBASE);

	m_axis_tuser = transfer.packet.range(USERINBASE + TUSERWIDTH - 1,USERINBASE);

	m_axis_tlast = transfer.packet.range(LASTINBASE,LASTINBASE);

	m_axis_tvalid = internal_m_valid;

}







void switch_output_port_lookup(//SLAVE Stream Ports
		ap_uint<C_S_AXIS_DATA_WIDTH>     s_axis_tdata,
		ap_uint<C_S_AXIS_DATA_WIDTH/8>   s_axis_tkeep,
		ap_uint<C_S_AXIS_TUSER_WIDTH>    s_axis_tuser,
		ap_uint<1> 			 s_axis_tvalid,
		ap_uint<1>  		        &s_axis_tready,
		ap_uint<1>  			  s_axis_tlast,

		//Master Stream Ports
		ap_uint<C_M_AXIS_DATA_WIDTH>    &m_axis_tdata,
		ap_uint<C_M_AXIS_DATA_WIDTH/8>  &m_axis_tkeep,
		ap_uint<C_M_AXIS_TUSER_WIDTH>   &m_axis_tuser,
		ap_uint<1> 			&m_axis_tvalid,
		ap_uint<1>  		         m_axis_tready,
		ap_uint<1>  			 &m_axis_tlast,

		ap_uint<1>				  reset
){

      		#pragma HLS INTERFACE ap_none port= s_axis_tdata
		#pragma HLS INTERFACE ap_none port= s_axis_tkeep
		#pragma HLS INTERFACE ap_none port= s_axis_tuser
		#pragma HLS INTERFACE ap_none port= s_axis_tvalid
              	#pragma HLS INTERFACE ap_none port= s_axis_tready
		#pragma HLS INTERFACE ap_none port= s_axis_tlast

		#pragma HLS INTERFACE ap_none port= m_axis_tdata
		#pragma HLS INTERFACE ap_none port= m_axis_tkeep
		#pragma HLS INTERFACE ap_none port= m_axis_tuser
		#pragma HLS INTERFACE ap_none port= m_axis_tvalid
		#pragma HLS INTERFACE ap_none port= m_axis_tready
		#pragma HLS INTERFACE ap_none port= m_axis_tlast

		#pragma HLS INTERFACE ap_none port= reset


		ap_uint<1> lut_hit;

		ap_uint<1> lut_miss;


		Write(s_axis_tdata,s_axis_tkeep,s_axis_tuser,s_axis_tvalid,s_axis_tready,s_axis_tlast,~reset,~reset,lut_hit,lut_miss);

		Read(m_axis_tready,~reset,m_axis_tdata,m_axis_tkeep,m_axis_tuser,m_axis_tvalid,m_axis_tlast);



}





