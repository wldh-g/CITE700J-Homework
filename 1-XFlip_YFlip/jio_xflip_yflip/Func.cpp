#include "Func.h"

/*****************
 ** C Functions **
 *****************/

void c_xflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
	register size_t x, y;
	for (y = 0; y < y_size; y += 1) {
		for (x = 0; x < x_size; x += 1) {
			size_t in_pos = x * x_size + y;
			size_t out_pos = (x_size - x - 1) * x_size + y;
			*(out + out_pos) = *(in + in_pos);
		}
	}
};

void c_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
	register size_t x, y;
	for (x = 0; x < x_size; x += 1) {
		for (y = 0; y < y_size; y += 1) {
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
	
};

void simd_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {

};
