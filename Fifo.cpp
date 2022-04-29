#include "queue.h"
#include "packet.h"


template <typename T>
void Fifo(T datain, T &dataout, ap_uint<1> rden, ap_uint<1> wren, ap_uint<1> reset, ap_uint<1> & empty, ap_uint<1> & nearly_full)
{

	static Queue<T> queue;


	if(reset)
	{
		queue.Reset();
	}

	if(wren)
	{
		queue.Enqueue(datain);
	}


	dataout = queue.Front();

	if(rden)
	{
		queue.Dequeue();
	}


	empty = queue.isEmpty();

	nearly_full = queue.isNearlyFull();

}




void Fifo_data(ap_axis datain, ap_axis &dataout, ap_uint<1> rden, ap_uint<1> wren, ap_uint<1> reset, ap_uint<1> & empty, ap_uint<1> & nearly_full)
{
	Fifo<ap_axis>(datain, dataout, rden, wren, reset, empty, nearly_full);
}

void Fifo_port(ap_uint<8> datain, ap_uint<8> &dataout, ap_uint<1> rden, ap_uint<1> wren, ap_uint<1> reset, ap_uint<1> & empty, ap_uint<1> & nearly_full)
{
	typedef ap_uint<8> sth;

	Fifo<sth>(datain, dataout, rden, wren, reset, empty, nearly_full);
}

