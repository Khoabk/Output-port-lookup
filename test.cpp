#include "ap_int.h"
#include "packet.h"
#include "iostream"

using namespace std;

#define C_S_AXIS_DATA_WIDTH 256
#define C_S_AXIS_TUSER_WIDTH 128
#define C_M_AXIS_DATA_WIDTH 256
#define C_M_AXIS_TUSER_WIDTH 128
#define NUM_OUTPUT_QUEUES 8



void switch_output_port_lookup
(//SLAVE Stream Ports
ap_uint<C_S_AXIS_DATA_WIDTH> s_axis_tdata,
ap_uint<C_S_AXIS_DATA_WIDTH/8> s_axis_tkeep,
ap_uint<C_S_AXIS_TUSER_WIDTH> s_axis_tuser,
ap_uint<1> 					  s_axis_tvalid,
ap_uint<1>  				 &s_axis_tready,
ap_uint<1>  				 s_axis_tlast,

//Master Stream Ports
ap_uint<C_M_AXIS_DATA_WIDTH> &m_axis_tdata,
ap_uint<C_M_AXIS_DATA_WIDTH/8> &m_axis_tkeep,
ap_uint<C_M_AXIS_TUSER_WIDTH> &m_axis_tuser,
ap_uint<1> 					  &m_axis_tvalid,
ap_uint<1>  				 m_axis_tready,
ap_uint<1>  				 &m_axis_tlast,

ap_uint<1>					reset
// Slave AXI PORTS
);



/*

void getpacket(ap_axis &din, uint64_t datain[4], uint64_t tuserin[2], uint32_t tkeep, ap_uint<1> tlast)
{


	//Assign value for tdata
	din.data.range(63, 0) = datain[0];
	din.data.range(127, 64) = datain[1];
	din.data.range(191, 128) = datain[2];
	din.data.range(255, 192) = datain[3];


	//Assign value for tuser
	din.user.range(63,0) = tuserin[0];
	din.user.range(127,64) = tuserin[1];

	//Assign value for tlast
	din.last = tlast;

	//Assign value for tkeep
	din.keep = tkeep;


}*/




void getpacket2(ap_uint<C_S_AXIS_DATA_WIDTH> &tdata,ap_uint<C_S_AXIS_TUSER_WIDTH> &tuser, uint64_t datain[4], uint64_t tuserin[2])
{

	tdata.range(63, 0) = datain[0];
	tdata.range(127, 64) = datain[1];
	tdata.range(191, 128) = datain[2];
	tdata.range(255, 192) = datain[3];


	tuser.range(63,0) = tuserin[0];
	tuser.range(127,64) = tuserin[1];

}





int main()
{


	//102030401020

	//Packet 1

	uint64_t datain[6][4]={{0x9999999999999990,0x1777777777703040,0x0012345010203040,0x1020304010203040},
						   {0x0000300010003040,0x1020304010203040,0x1020304010203040,0x1020304010203040},
						   {0x1900304010203040,0x1020304010203040,0x1020304010203040,0x1020304010203040},
						   {0x0000300010003040,0x1020304010203040,0x1020304010203040,0x1020304010203040},
						   {0x0000300010003940,0x1000304010203040,0x1020304010203040,0x1020304010203040},
						   {0x0000000000000040,0x1020304010203040,0x1020304010203040,0x1020304010203040}};

	uint64_t tuserin[6][2]={{0x1000044010053040,0x1020304010203040},
							{0x0000000010000000,0x1020304010203040},
							{0x0000004010023040,0x1020304010203040},
							{0x1000044010023040,0x1020304010203040},
							{0x1000044010023040,0x1020304010203040},
							{0x9000044010023040,0x1020304010203040}};

	uint32_t tkeep[6] = {0xffffffff,
						 0xffffffff,
						 0xffffffff,
						 0xffffffff,
						 0xffffffff,
						 0x1fffffff};

	ap_uint<1> last[6]= {0,0,0,0,0,1};

	//304010203040

	//Packet 2

	uint64_t datain1[4][4]={{0x3040777030409999,0x3333344444444420,0x1020304010203040,0x1020304010203040},
						   {0x0000300010003040,0x1020304010203040,0x1020304010203040,0x1020304010203040},
						   {0x1900304010203040,0x1020304010203040,0x1020304010203040,0x1020304010203040},
						   {0x8888888888888888,0x1020304010203040,0x1020304010203040,0x1020304010203040}};

	uint64_t tuserin1[4][2]={{0x1000044010033040,0x1020304010203040},
							{0x0000000010000000,0x1020304010203040},
							{0x0000004010023040,0x1020304010203040},
							{0x1000044010023040,0x1020304010203040}};

	uint32_t tkeep1[4] = {0xffffffff,
						 0xffffffff,
						 0xffffffff,
						 0xffffffff};

	ap_uint<1> last1[4]= {0,0,0,1};




	//Slave signals
	ap_uint<C_S_AXIS_DATA_WIDTH> s_axis_tdata;
	ap_uint<C_S_AXIS_TUSER_WIDTH> s_axis_tuser;
	ap_uint<1> 					  s_axis_tvalid;
	ap_uint<1>  				 s_axis_tready; //Output

	ap_uint<1>					reset;



	//Master signals
	ap_uint<C_M_AXIS_DATA_WIDTH>  m_axis_tdata;
	ap_uint<C_M_AXIS_DATA_WIDTH/8> m_axis_tkeep;
	ap_uint<C_M_AXIS_TUSER_WIDTH> m_axis_tuser;
	ap_uint<1> 					  m_axis_tvalid;
	ap_uint<1>  				 m_axis_tready; //Input
	ap_uint<1>  				 m_axis_tlast;




	reset = 0;

	m_axis_tready = 0;

	s_axis_tvalid = 0;

	for(int i =0; i< 2; i++)
	{

		if(i==1)reset =1;

    switch_output_port_lookup
	(//SLAVE Stream Ports
	s_axis_tdata,
	tkeep[0],
	s_axis_tuser,
	s_axis_tvalid,
	s_axis_tready,
	last[0],

	//Master Stream Ports
	m_axis_tdata,
	m_axis_tkeep,
	m_axis_tuser,
	m_axis_tvalid,
	m_axis_tready,
	m_axis_tlast,

	reset
	// Slave AXI PORTS
	);

	}


	m_axis_tready = 1;

	s_axis_tvalid = 1;



	//Load packet1

	int lock = 1;


	for(int i=0; i<6; i++)
	{



		getpacket2(s_axis_tdata,s_axis_tuser,datain[i],tuserin[i]);


		if(i==3)
				{
					if(lock)
					{

						s_axis_tvalid = 0;

						s_axis_tdata.range(256,0) = 0;

					}
					else
					{
						s_axis_tvalid = 1;
					}

				}


		 switch_output_port_lookup
			(//SLAVE Stream Ports
			s_axis_tdata,
			tkeep[i],
			s_axis_tuser,
			s_axis_tvalid,
			s_axis_tready,
			last[i],

			//Master Stream Ports
			m_axis_tdata,
			m_axis_tkeep,
			m_axis_tuser,
			m_axis_tvalid,
			m_axis_tready,
			m_axis_tlast,

		    reset
			// Slave AXI PORTS
			);

		 if(i==3)
		 {

			 if(lock)
			 {

				 i = 2;

				 lock = 0;

			 }

		 }


	//	cout<<"Tlast1: "<<(int)m_axis_tlast.VAL<<endl;

	}



	//lock = 1;



	m_axis_tready = 0;


	//Load packet2
	for(int i=0; i<4; i++)
	{


		if(i==2)
				{
					if(lock)
					{

						m_axis_tready = 0;

						s_axis_tdata.range(256,0) = 0;

					}
					else
					{
						m_axis_tready = 1;
					}

				}





		getpacket2(s_axis_tdata,s_axis_tuser,datain1[i],tuserin1[i]);

		 switch_output_port_lookup
			(//SLAVE Stream Ports
			s_axis_tdata,
			tkeep1[i],
			s_axis_tuser,
			s_axis_tvalid,
			s_axis_tready,
			last1[i],

			//Master Stream Ports
			m_axis_tdata,
			m_axis_tkeep,
			m_axis_tuser,
			m_axis_tvalid,
			m_axis_tready,
			m_axis_tlast,

		    reset
			// Slave AXI PORTS
			);

		  if(i==2)
			 {

				 if(lock)
				 {

					 i = 1;

					 lock = 0;

				 }

			 }


		//	cout<<"Tlast2: "<<(int)m_axis_tlast.VAL<<endl;


	}

	s_axis_tvalid = 0;

	m_axis_tready = 1;


	for(int i=0; i<4; i++)
		{

			getpacket2(s_axis_tdata,s_axis_tuser,datain1[i],tuserin1[i]);

			 switch_output_port_lookup
				(//SLAVE Stream Ports
				s_axis_tdata,
				tkeep1[i],
				s_axis_tuser,
				s_axis_tvalid,
				s_axis_tready,
				last1[i],

				//Master Stream Ports
				m_axis_tdata,
				m_axis_tkeep,
				m_axis_tuser,
				m_axis_tvalid,
				m_axis_tready,
				m_axis_tlast,

			    reset
				// Slave AXI PORTS
				);

		//	cout<<"Tlast2: "<<(int)m_axis_tlast.VAL<<endl;


		}






	return 0;

}
