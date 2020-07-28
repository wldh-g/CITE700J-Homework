#ifndef _FUNC_H_
#define _FUNC_H_

#include <tmmintrin.h>
#include <emmintrin.h>

void c_xflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size);
void c_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size);

void simd_xflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size);
void simd_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size);

inline void cache_flush(__m128i* src, unsigned int cnt_vec) {
	for (unsigned int j = 0; j < cnt_vec; j += 1) {
		_mm_clflush(src + j);
	}
}

#endif // _FUNC_H_
