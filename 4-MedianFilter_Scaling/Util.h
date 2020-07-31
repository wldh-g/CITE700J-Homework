#ifndef _UTIL_H_
#define _UTIL_H_

#include <algorithm>
#include <cstdint>

template<typename T = uint8_t>
inline void sort2(T& a, T& b) {
	if (a > b) std::swap(a, b);
}

#endif // _UTIL_H_