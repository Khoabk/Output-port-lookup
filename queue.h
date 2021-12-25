#ifndef _QUEUE_H
#define _QUEUE_H

#include "ap_int.h"

#define MAX_BIT_DEPTH 4
#define MAX_DEPTH 1<<4
#define NUM_OUTPUT_QUEUES 8

template<typename T>
struct Queue{

	static T buffer[MAX_DEPTH];

	static ap_uint<MAX_BIT_DEPTH> wr_pos;

	static ap_uint<MAX_BIT_DEPTH> rd_pos;

	static int size;

	bool isNearlyFull();

	bool isEmpty();

	void Enqueue(T data);

	void Dequeue();


	T Front();


	void Reset();

};




#endif
