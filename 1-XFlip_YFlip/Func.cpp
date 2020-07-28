#include "Func.h"

/*****************
 ** C Functions **
 *****************/

void c_xflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
	register size_t x, y;
	for (y = 0; y < y_size; y += 1) {
		for (x = 0; x < x_size; x += 1) {
			size_t in_pos = y * y_size + x;
			size_t out_pos = y * y_size + x_size - x - 1;
			*(out + out_pos) = *(in + in_pos);
		}
	}
};

void c_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
	register size_t x, y;
	for (y = 0; y < y_size; y += 1) {
		for (x = 0; x < x_size; x += 1) {
			size_t in_pos = y * y_size + x;
			size_t out_pos = (y_size - y - 1) * y_size + x;
			*(out + out_pos) = *(in + in_pos);
		}
	}
};

/********************
 ** SIMD Functions **
 ********************/

void simd_xflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
	// TODO
};

void simd_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
	// TODO
};
