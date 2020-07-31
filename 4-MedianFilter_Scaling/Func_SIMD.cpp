#include <intrin.h>
#include "Filters.h"
#include "Functions.h"

/********************
 ** SIMD Functions **
 ********************/

namespace simd {
	///////////////
	// Inversion //
	///////////////

	void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		const size_t i_max = x_size * y_size / 16;
		const __m128i ff = _mm_set1_epi8((char)255);
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			*(_out + i) = _mm_subs_epi8(ff, *(_in + i));
		}
	};

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
		throw "Not implemented"; // TODOe
	};

	//////////////////
	// Sobel Filter //
	//////////////////

	void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	/////////////
	// Scaling //
	/////////////

	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};
}
