#ifndef _PACKET_H
#define _PACKET_H

#include "ap_int.h"


#define TDATAWIDTH 256

#define TUSERWIDTH 128

#define DATAINBASE 0

#define KEEPINBASE 256

#define USERINBASE 288

#define LASTINBASE 416



struct ap_axis{

	ap_uint<TDATAWIDTH + TDATAWIDTH/8 + TUSERWIDTH + 1> packet;

	ap_axis(ap_uint<TDATAWIDTH> datain=0,ap_uint<TDATAWIDTH/8> keepin=0,ap_uint<TUSERWIDTH> userin=0,ap_uint<1> lastin=0);

	void operator = (const int a);

};


#endif
