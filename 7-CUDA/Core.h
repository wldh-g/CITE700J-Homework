#ifndef _CORE_H_
#define _CORE_H_

#include <algorithm>
#include <cerrno>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <functional>
#include <initializer_list>
#include <intrin.h>
#include <iostream>
#include <limits>
#include <queue>
#include <tuple>
#include <type_traits>
#include <vector>
#include "Core.cuh"
#include "Filters.h"
#include "Tasks.h"
#include "Timer.h"

#define OUTPUT_DIR "output"
#define COLOR_SUPPORT 256

#if COLOR_SUPPORT >= 256
#define _$c "\x1B[38;5;38m"
#define _$m "\x1B[38;5;200m"
#define _$y "\x1B[38;5;220m"
#define _$r "\x1B[38;5;196m"
#define _$x "\x1B[0m"
#elif COLOR_SUPPORT >= 16
#define _$c "\x1B[94m"
#define _$m "\x1B[95m"
#define _$y "\x1B[93m"
#define _$r "\x1B[91m"
#define _$x "\x1B[0m"
#else
#define _$c ""
#define _$m ""
#define _$y ""
#define _$r ""
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
 ** Cache Flusher **
 *******************/

inline void cache_flush(__m128i* src, unsigned int cnt_vec) {
  for (unsigned int j = 0; j < cnt_vec; j += 1) {
    _mm_clflush(src + j);
  }
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
    hdl_count = fwrite(img, sizeof(T), x_size * y_size, fp);
  } else {
    hdl_count = fread_s(img, x_size * y_size * sizeof(T), sizeof(T), x_size * y_size, fp);
  }
  if (hdl_count == 0 && errno != 0) {
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

template<typename T>
typename std::enable_if<!(std::is_same<T, void>::value), bool>::
type __diff(ExecOutputSet<T>* img_a, size_t x_size, size_t y_size, bool pre_newline = false) {
  for (size_t y = 0; y < y_size; y += 1) {
    for (size_t x = 0; x < x_size; x += 1) {
      size_t pixel_idx = y * x_size + x;
      if (std::abs((int32_t)img_a[pixel_idx] - (int32_t)img_b[pixel_idx]) > 1) {
        if (pre_newline) {
          std::cout << std::endl;
        }
        std::cout << "Diff : " << (int32_t)img_a[pixel_idx] << " != " << (int32_t)img_b[pixel_idx]
          << " in pixel (x, y) = (" << x << ", " << y << ")" << std::endl;
        return true;
      }
    }
  }
  return false;
};

/*********************
 ** Running Helpers **
 *********************/

#define loop_max_default 2000

template<size_t X, size_t Y, size_t N, typename T>
class ExecResult {
public:
  std::vector<T*> outputs;
  std::vector<const char*> titles;
  std::vector<const char*> errors;
  std::vector<double> times;

  ExecResult(std::initializer_list<const char*> list) {
    if (list.size() != N) {
      throw "Unexpected initializer size.";
    }
    std::copy(list.begin(), list.end(), this->titles.begin());
    for (size_t i = 0; i < N; i += 1) {
      this->outputs.push_back(__malloc<T>(X * Y));
      this->errors.push_back(nullptr);
      this->times.push_back(0);
    }
  };

  ~ExecResult() {
    for (size_t i = 0; i < N; i += 1) {
      delete[] outputs.at(i);
    }
  };

  void print_time() {
    auto idx = std::min_element(this->times.begin(), this->times.begin() + N);
    for (size_t i = 0; i < N; i += 1) {
      if (i != 0) {
        std::cout << " / ";
      }
      if (this->errors.at(i) == nullptr) {
        if (idx == i) {
          std::cout << _$c;
        }
        std::cout << this->titles.at(i) << " " << this->times.at(i) << " ms" << _$x;
      } else {
        std::cout << this->titles.at(i) << " : " << this->errors.at(i);
      }
    }
    std::cout << std::endl;
  };

  bool check_error() {
    for (size_t i = 0; i < N; i += 1) {
      if (this->errors.at(i) != nullptr) {
        return true;
      }
    }
    return false;
  };

  bool verify_output() {

  };

  void save_all(const std::string& file_name) {
    for (size_t i = 0; i < N; i += 1) {
      __file<T>((OUTPUT_DIR + ("/" + (this->titles.at(i) + ("_" + file_name + ".raw")))).c_str(),
                this->c, this->x_size, this->y_size, "wb");
    }
  };
};

void __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                 std::function<void(void)> c1_flush, std::function<void(void)> c2_flush,
                 bool enable_second, unsigned short loop_max = loop_max_default,
                 const char* c1_title = "C", const char* c2_title = "SIMD");

// Execute two functions with label and fixed size
template<typename T>
ExecMetaSet* __exec(std::function<void(T*, T*)> c1_func, std::function<void(T*, T*)> c2_func,
                   const char* c1_title, const char* c2_title, T* img, T* c1_out, T* c2_out,
                   size_t x_size, size_t y_size, unsigned short loop_max = loop_max_default) {
  const unsigned int img_size_d128 = (unsigned int)(x_size * y_size * sizeof(T) / 16);

  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    cache_flush((__m128i*)c1_out, img_size_d128);
  };

  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    cache_flush((__m128i*)c2_out, img_size_d128);
  };

  auto c1_wrapper = [&]() -> void {
    c1_func(img, c1_out);
  };

  auto c2_wrapper = [&]() -> void {
    c2_func(img, c2_out);
  };

  return __exec_base(c1_wrapper, c2_wrapper, c1_flush, c2_flush, true, loop_max, c1_title,
                     c2_title);
};

// Execute function with one input
template<typename T, typename R>
ExecMetaSet* __exec(std::function<void(T*, R*, size_t, size_t)> c_func,
                   std::function<void(T*, R*, size_t, size_t)> simd_func, bool enable_simd,
                   T* img, R* c_out, R* simd_out, size_t x_size, size_t y_size,
                   unsigned short loop_max = loop_max_default, bool flush_output = true) {
  const unsigned int img_size_d128 = (unsigned int)(x_size * y_size * sizeof(T) / 16);
  const unsigned int out_size_d128 = (unsigned int)(x_size * y_size * sizeof(R) / 16);

  auto c_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)c_out, out_size_d128);
    }
  };

  auto simd_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)simd_out, out_size_d128);
    }
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
ExecMetaSet* __exec(std::function<void(T*, T*, R*, size_t, size_t)> c_func,
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
ExecMetaSet* __exec(std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> c_func,
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

/************************
 ** Multi-task Helpers **
 ************************/

#define veriple(T) std::tuple<const char*, ExecOutputSet<T>*, size_t, size_t>
#define veriples(T) std::vector<veriple(T)>
#define fileple std::tuple<const char*, void*, size_t, size_t>
#define fileples std::vector<fileple>
#define $ std::make_tuple

template<typename T>
bool __bulk_diff(veriples(T) v) {
  bool is_not_diff = true;
  for (size_t idx = 0; idx < v.size(); idx += 1) {
    if (__diff<T>(static_cast<T*>(std::get<1>(v[idx])), static_cast<T*>(std::get<2>(v[idx])),
                  std::get<3>(v[idx]), is_not_diff)) {
      std::cout << "Verification failed in " << std::get<0>(v[idx]) << "." << std::endl;
      is_not_diff = false;
    }
  }
  return is_not_diff;
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

#endif // _CORE_H_
