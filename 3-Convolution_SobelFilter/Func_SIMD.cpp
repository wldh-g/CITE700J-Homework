#include "Filters.h"
#include "Functions.h"

/********************
 ** SIMD Functions **
 ********************/

namespace simd {
	//////////////
	// Flipping //
	//////////////

	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	//////////////
	// Addition //
	//////////////

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	///////////////
	// Transpose //
	///////////////

	void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	/////////////////
	// Convolution //
	/////////////////

	void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};
	void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size) {
		throw "Not implemented"; // TODO
	};
	void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};
	void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size) {
		throw "Not implemented"; // TODO
	};
}
