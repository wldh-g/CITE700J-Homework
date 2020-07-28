#ifndef _FUNC_H_
#define _FUNC_H_

#include <cstdint>

namespace c {
	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);
}

namespace simd {
	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);
}

#endif // _FUNC_H_
