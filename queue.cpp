#include "queue.h"
#include "packet.h"

template <typename T>
T Queue<T>::buffer[MAX_DEPTH];

template <typename T>
ap_uint<MAX_BIT_DEPTH> Queue<T>::wr_pos = 0;

template <typename T>
ap_uint<MAX_BIT_DEPTH> Queue<T>::rd_pos = 0;

template <typename T>
int Queue<T>::size = 0;




template <typename T>
bool Queue<T>::isEmpty()
{
	return (size == 0);
}


template<typename T>
bool Queue<T>::isNearlyFull()
{
	return (size >= (MAX_DEPTH - 1));
}


template <typename T>
void Queue<T>::Enqueue(T data)
{
	size++;
	buffer[wr_pos++] = data;

}



template<typename T>
T Queue<T>::Front()
{
	return buffer[rd_pos];
}



template <typename T>
void Queue<T>::Dequeue()
{
	size--;

    rd_pos++;
}


template <typename T>
void Queue<T>::Reset()
{
	size=0;
	wr_pos =0;
	rd_pos =0;
}


