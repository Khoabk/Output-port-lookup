#include "packet.h"



ap_axis::ap_axis(ap_uint<TDATAWIDTH> datain,ap_uint<TDATAWIDTH/8> keepin,ap_uint<TUSERWIDTH> userin,ap_uint<1> lastin)
{

	packet.range(DATAINBASE+TDATAWIDTH-1,DATAINBASE)= datain;

	packet.range(KEEPINBASE+TDATAWIDTH/8-1,KEEPINBASE)= keepin;

	packet.range(USERINBASE+TUSERWIDTH-1,USERINBASE)= userin;

	packet.range(LASTINBASE,LASTINBASE)= lastin;

}





void ap_axis::operator = (const int a)
{
	packet = a;
}
