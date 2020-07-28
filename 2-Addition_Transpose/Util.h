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
#include "Timer.h"

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
		std::cout << "Error opening input image : " << img_open_err_desc << std::endl;
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
		std::cout << "Error on file handling (" << path << ") : " << img_hdl_err_desc << std::endl;
		__exit(-1000);
	}
	fclose(fp);
};

/*********************
 ** Function Tester **
 *********************/

template<typename T>
double __exec(std::function<void(T*, T*, size_t, size_t)> func, T* img, T* output, size_t x_size,
							size_t y_size, unsigned short loop_max) {
	const unsigned int img_buf_size_d16 = (unsigned int)(x_size * y_size / 16);
	CPerfCounter timer;
	double cpu_time = 0;

	for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
		cache_flush((__m128i*)img, img_buf_size_d16);
		cache_flush((__m128i*)output, img_buf_size_d16);
		timer.Reset();
		timer.Start();
		func(img, output, x_size, y_size);
		timer.Stop();
		cpu_time += timer.GetElapsedTime();
	}

	return cpu_time / (double)loop_max * 1000.0;
};

template<typename T, typename R>
double __exec(std::function<void(T*, T*, R*, size_t, size_t)> func, T* img1, T* img2, R* output,
							size_t x_size, size_t y_size, unsigned short loop_max = 2000) {
	const unsigned int img_buf_size_d16 = (unsigned int)(x_size * y_size / 16);
	CPerfCounter timer;
	double cpu_time = 0;

	for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
		cache_flush((__m128i*)img1, img_buf_size_d16);
		cache_flush((__m128i*)img2, img_buf_size_d16);
		cache_flush((__m128i*)output, img_buf_size_d16);
		timer.Reset();
		timer.Start();
		func(img1, img2, output, x_size, y_size);
		timer.Stop();
		cpu_time += timer.GetElapsedTime();
	}

	return cpu_time / (double)loop_max * 1000.0;
};

template<typename T>
typename std::enable_if<!(std::is_same<T, void>::value), bool>::
type __diff(T* img_a, T* img_b, size_t x_size, size_t y_size) {
	const size_t img_buf_size = x_size * y_size * sizeof(T);
	const uint8_t* img_a8 = (uint8_t*)img_a;
	const uint8_t* img_b8 = (uint8_t*)img_b;
	for (size_t pixel_idx = 0; pixel_idx < img_buf_size; pixel_idx += 1) {
		if (img_a8[pixel_idx] != img_b8[pixel_idx]) {
			std::cout << "Diff : " << img_a8[pixel_idx] << " != " << img_b8[pixel_idx]
				<< " in " << pixel_idx << std::endl;
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
void __bulk_diff(veriples& v) {
	for (size_t idx = 0; idx < v.size(); idx += 1) {
		if (__diff<T>(std::get<1>(v[idx]), std::get<2>(v[idx]), std::get<3>(v[idx]),
									std::get<4>(v[idx]))) {
			std::cout << "Verification failed in " << std::get<0>(v[idx]) << ". Stopping." << std::endl;
			__exit(-2000);
		}
	}
};

template<typename T>
void __bulk_save(fileples v) {
	for (size_t idx = 0; idx < v.size(); idx += 1) {
		__file<T>(std::get<0>(v[idx]), std::get<1>(v[idx]), static_cast<T*>(std::get<2>(v[idx])),
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

// Cache Flush
inline void cache_flush(__m128i* src, unsigned int cnt_vec) {
	for (unsigned int j = 0; j < cnt_vec; j += 1) {
		_mm_clflush(src + j);
	}
};

#endif // _UTIL_H_
