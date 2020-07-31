#ifndef _UTIL_H_
#define _UTIL_H_

#include <cstdint>

template<typename T = uint8_t>
inline void sort2(T* a, T* b) {
	T low = *(a) > *(b) ? *b : *a;
	*b = *(a) > * (b) ? *a : *b;
	*a = low;
}

#endif // _UTIL_H_