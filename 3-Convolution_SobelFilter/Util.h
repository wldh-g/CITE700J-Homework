#ifndef _UTIL_H_
#define _UTIL_H_

#include <cerrno>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <functional>
#include <intrin.h>
#include <iostream>
#include <queue>
#include <tuple>
#include <type_traits>
#include <vector>
#include "Filters.h"
#include "Timer.h"

#define COLOR_SUPPORT true

#if COLOR_SUPPORT
#define _$m "\x1B[95m"
#define _$x "\x1B[0m"
#else
#define _$m ""
#define _$x ""
#endif

extern std::queue<void*>* q_ptrs;

/***********************
 ** Allocation & Exit **
 ***********************/

template<typename T>
T* __malloc(size_t size) {
	T* ptr = new T[size];
	q_ptrs->push(ptr);
	return ptr;
};

inline int __exit(int code) {
	for (size_t idx = 0; idx < q_ptrs->size(); idx += 1) {
		delete[] q_ptrs->front();
		q_ptrs->pop();
	}
	delete q_ptrs;
	filt::unallocate();
	exit(code);
	return code;
};

/*******************
 ** File Handling **
 *******************/

template<typename T>
void __file(const char* path, T* img, size_t x_size, size_t y_size, const char* mode) {
	FILE* fp;
	errno_t img_open_err = fopen_s(&fp, path, mode);
	if (img_open_err != 0) {
		char img_open_err_desc[256] = { 0 };
		strerror_s(img_open_err_desc, img_open_err);
		std::cout << img_open_err_desc << " (" << path << ")" << std::endl;
		__exit((int)img_open_err);
	}
	size_t hdl_count;
	if (strcmp(mode, "wb") == 0) {
		hdl_count = fwrite(img, x_size * sizeof(T), y_size, fp);
	} else {
		hdl_count = fread_s(img, x_size * y_size * sizeof(T), x_size, y_size, fp);
	}
	if (hdl_count == 0) {
		char img_hdl_err_desc[256] = { 0 };
		strerror_s(img_hdl_err_desc, errno);
		std::cout << img_hdl_err_desc << " (" << path << ")" << std::endl;
		__exit(errno);
	}
	fclose(fp);
};

/*********************
 ** Function Tester **
 *********************/

#define loop_max_default 2000

class ExecResult {
public:
	bool simd_enabled;
	const char* c_error = nullptr;
	const char* simd_error = nullptr;
	double c_time = 0;
	double simd_time = 0;

	ExecResult(bool simd_enabled);
	ExecResult* print();
};

ExecResult* __exec_base(std::function<void(void)> c_func, std::function<void(void)> simd_func,
												std::function<void(void)> c_flush, std::function<void(void)> simd_flush,
												bool enable_simd, unsigned short loop_max);

// Execute function with one input
template<typename T>
ExecResult* __exec(std::function<void(T*, T*, size_t, size_t)> c_func,
									 std::function<void(T*, T*, size_t, size_t)> simd_func, bool enable_simd,
									 T* img, T* c_out, T* simd_out, size_t x_size, size_t y_size,
									 unsigned short loop_max = loop_max_default) {
	const unsigned int img_size_d128 = (unsigned int)(x_size * y_size * sizeof(T) / 16);

	auto c_flush = [&]() -> void {
		cache_flush((__m128i*)img, img_size_d128);
		cache_flush((__m128i*)c_out, img_size_d128);
	};

	auto simd_flush = [&]() -> void {
		cache_flush((__m128i*)img, img_size_d128);
		cache_flush((__m128i*)simd_out, img_size_d128);
	};

	auto c_wrapper = [&]() -> void {
		c_func(img, c_out, x_size, y_size);
	};

	auto simd_wrapper = [&]() -> void {
		simd_func(img, simd_out, x_size, y_size);
	};

	return __exec_base(c_wrapper, simd_wrapper, c_flush, simd_flush, enable_simd, loop_max);
};

// Execute function with two inputs
template<typename T, typename R>
ExecResult* __exec(std::function<void(T*, T*, R*, size_t, size_t)> c_func,
									 std::function<void(T*, T*, R*, size_t, size_t)> simd_func, bool enable_simd,
									 T* img1, T* img2, R* c_out, R* simd_out, size_t x_size, size_t y_size,
									 unsigned short loop_max = loop_max_default) {
	const unsigned int img_size_d128 = (unsigned int)(x_size * y_size * sizeof(T) / 16);
	const unsigned int out_size_d128 = (unsigned int)(x_size * y_size * sizeof(R) / 16);
	
	auto c_flush = [&]() -> void {
		cache_flush((__m128i*)img1, img_size_d128);
		cache_flush((__m128i*)img2, img_size_d128);
		cache_flush((__m128i*)c_out, out_size_d128);
	};

	auto simd_flush = [&]() -> void {
		cache_flush((__m128i*)img1, img_size_d128);
		cache_flush((__m128i*)img2, img_size_d128);
		cache_flush((__m128i*)simd_out, out_size_d128);
	};

	auto c_wrapper = [&]() -> void {
		c_func(img1, img2, c_out, x_size, y_size);
	};

	auto simd_wrapper = [&]() -> void {
		simd_func(img1, img2, simd_out, x_size, y_size);
	};

	return __exec_base(c_wrapper, simd_wrapper, c_flush, simd_flush, enable_simd, loop_max);
};

// Execute function with filter
template<typename T, typename K, typename R>
ExecResult* __exec(std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> c_func,
									 std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> simd_func,
									 bool enable_simd, T* img, const filt::Filter<K>* filter, R* c_out, R* simd_out,
									 size_t x_size, size_t y_size, unsigned short loop_max = loop_max_default) {
	const unsigned int img_size_d128 = (unsigned int)(x_size * y_size * sizeof(T) / 16);
	const unsigned int kernel_size_d128 = (unsigned int)(filter->size2 * sizeof(K) / 16);
	const unsigned int out_size_d128 = (unsigned int)(x_size * y_size * sizeof(R) / 16);

	auto c_flush = [&]() -> void {
		cache_flush((__m128i*)filter->kernel, kernel_size_d128);
		cache_flush((__m128i*)img, img_size_d128);
		cache_flush((__m128i*)c_out, out_size_d128);
	};

	auto simd_flush = [&]() -> void {
		cache_flush((__m128i*)filter->kernel, kernel_size_d128);
		cache_flush((__m128i*)img, img_size_d128);
		cache_flush((__m128i*)simd_out, out_size_d128);
	};

	auto c_wrapper = [&]() -> void {
		c_func(img, filter, c_out, x_size, y_size);
	};

	auto simd_wrapper = [&]() -> void {
		simd_func(img, filter, simd_out, x_size, y_size);
	};

	return __exec_base(c_wrapper, simd_wrapper, c_flush, simd_flush, enable_simd, loop_max);
};

// Difference verification function
template<typename T>
typename std::enable_if<!(std::is_same<T, void>::value), bool>::
type __diff(T* img_a, T* img_b, size_t x_size, size_t y_size) {
	const size_t img_buf_size = x_size * y_size * sizeof(T);
	const uint8_t* img_a8 = (uint8_t*)img_a;
	const uint8_t* img_b8 = (uint8_t*)img_b;
	for (size_t pixel_idx = 0; pixel_idx < img_buf_size; pixel_idx += 1) {
		if (img_a8[pixel_idx] != img_b8[pixel_idx]) {
			std::cout << "Diff : " << (int)img_a8[pixel_idx] << " != " << (int)img_b8[pixel_idx]
				<< " in pixel " << pixel_idx << std::endl;
			return true;
		}
	}
	return false;
};

/*****************************
 ** Bulk Processing Helpers **
 *****************************/

#define veriple std::tuple<const char*, void*, void*, size_t, size_t>
#define veriples std::vector<veriple>
#define fileple std::tuple<const char*, void*, size_t, size_t>
#define fileples std::vector<fileple>
#define $ std::make_tuple

template<typename T>
void __bulk_diff(veriples v) {
	for (size_t idx = 0; idx < v.size(); idx += 1) {
		if (__diff<T>(static_cast<T*>(std::get<1>(v[idx])), static_cast<T*>(std::get<2>(v[idx])),
									std::get<3>(v[idx]), std::get<4>(v[idx]))) {
			std::cout << "Verification failed in " << std::get<0>(v[idx]) << ". Stopping." << std::endl;
			__exit(-2000);
		}
	}
};

template<typename T>
void __bulk_save(fileples v) {
	for (size_t idx = 0; idx < v.size(); idx += 1) {
		__file<T>(std::get<0>(v[idx]), static_cast<T*>(std::get<1>(v[idx])), std::get<2>(v[idx]),
							std::get<3>(v[idx]), "wb");
	}
};

template<typename T>
void __bulk_load(fileples v) {
	for (size_t idx = 0; idx < v.size(); idx += 1) {
		__file<T>(std::get<0>(v[idx]), static_cast<T*>(std::get<1>(v[idx])), std::get<2>(v[idx]),
							std::get<3>(v[idx]), "r");
	}
};


/*******************
 ** Cache Flusher **
 *******************/

inline void cache_flush(__m128i* src, unsigned int cnt_vec) {
	for (unsigned int j = 0; j < cnt_vec; j += 1) {
		_mm_clflush(src + j);
	}
};

#endif // _UTIL_H_
