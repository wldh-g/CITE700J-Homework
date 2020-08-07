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
#include <tuple>
#include <type_traits>
#include <vector>
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

extern std::vector<void*>* vec_ptrs;

/***********************
 ** Allocation & Exit **
 ***********************/

template<typename T>
T* __malloc(size_t size) {
  T* ptr = new T[size];
  vec_ptrs->push_back(ptr);
  return ptr;
};

template<typename T>
void __free(T* ptr) {
  for (auto it = vec_ptrs->begin(); it != vec_ptrs->end(); it += 1) {
    if (*it == ptr) {
      delete[] (void*)*it;
      vec_ptrs->erase(it);
      break;
    }
  }
};

inline int __exit(int code) {
  for (size_t idx = 0; idx < vec_ptrs->size(); idx += 1) {
    delete[] (void*)vec_ptrs->back();
    vec_ptrs->pop_back();
  }
  delete vec_ptrs;
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

/*******************
 ** Output Helper **
 *******************/
// ExecResult is written to support infinite numbers of results

#ifndef loop_max_default
#define loop_max_default 2000
#endif

template<size_t X, size_t Y, size_t N, typename T>
class ExecResult {
public:
  std::vector<T*> outputs;
  std::vector<const char*> titles;
  std::vector<const char*> errors;
  std::vector<double> times;

  ExecResult(std::initializer_list<const char*> list) : titles { list } {
    if (list.size() != N) {
      throw "Unexpected initializer size.";
    }
    for (size_t i = 0; i < N; i += 1) {
      this->outputs.push_back(__malloc<T>(X * Y));
      this->errors.push_back(nullptr);
      this->times.push_back(0);
    }
  };

  ~ExecResult() {
    for (size_t i = 0; i < N; i += 1) {
      __free(outputs.at(i));
    }
  };

  void print_time() {
    auto idx = std::min_element(this->times.begin(), this->times.begin() + N);
    bool is_first_printed = false;
    for (size_t i = 0; i < N; i += 1) {
      if (this->times.at(i) != std::numeric_limits<double>::max()) {
        if (is_first_printed) {
          std::cout << " / ";
        } else {
          is_first_printed = true;
        }
        if (this->errors.at(i) == nullptr) {
          if (std::distance(this->times.begin(), idx) == i) {
            std::cout << _$c;
          }
          std::cout << this->titles.at(i) << " " << this->times.at(i) << " ms" << _$x;
        } else {
          std::cout << this->titles.at(i) << " : " << this->errors.at(i);
        }
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

  typename std::enable_if<!(std::is_same<T, void>::value), bool>::
  type verify_output() {
    if (N < 2) return true;
    std::vector<T*> cmp_set;
    for (size_t n = 0; n < N; n += 1) {
      if (this->times.at(n) != std::numeric_limits<double>::max()) {
        cmp_set.push_back(this->outputs.at(n));
      }
    }
    if (cmp_set.size() < 2) return true;
    for (size_t y = 0; y < Y; y += 1) {
      for (size_t x = 0; x < X; x += 1) {
        size_t pixel_idx = y * X + x;
        bool pixel_verified = true;
        for (size_t i = 1; i < cmp_set.size(); i += 1) {
          if (std::abs((long long const)((uint64_t)cmp_set.at(0)[pixel_idx]
                                         - (uint64_t)cmp_set.at(i)[pixel_idx])) > 1) {
            pixel_verified = false;
            break;
          }
        }
        if (!pixel_verified) {
          std::cout << "Diff : " << (uint64_t)cmp_set.at(0)[pixel_idx];
          for (size_t i = 1; i < cmp_set.size(); i += 1) {
            std::cout << " ¡ê " << (uint64_t)cmp_set.at(i)[pixel_idx];
          }
          std::cout << " in pixel (x, y) = (" << x << ", " << y << ")" << std::endl;
          return false;
        }
      }
    }
    return true;
  };

  void save_all(const std::string& file_name) {
    std::vector<size_t> save_idx;
    for (size_t n = 0; n < N; n += 1) {
      if (this->times.at(n) != std::numeric_limits<double>::max()) {
        save_idx.push_back(n);
      }
    }
    for (size_t i = 0; i < save_idx.size(); i += 1) {
      __file<T>((OUTPUT_DIR + ("/" + (this->titles.at(save_idx.at(i)) + ("_" + file_name + ".raw"))
                               )).c_str(), this->outputs.at(save_idx.at(i)), X, Y, "wb");
    }
  };
};

/*****************
 ** Test Helper **
 *****************/
// Test helper on CUDA supports up to 3 functions in one test. (See Core.cuh)
// Test helper without CUDA supports up to 2 functions in one test. (See below)

void __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                 std::function<void(void)> c1_flush, std::function<void(void)> c2_flush,
                 std::function<void(double, const char*)> c1_report,
                 std::function<void(double, const char*)> c2_report,
                 bool c1_enable, bool c2_enable, size_t loop_max);

// Execute function with one input
template<size_t X, size_t Y, typename T, typename R>
void __exec(std::function<void(T*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, R*, size_t, size_t)> c2_func,
            bool enable_c1, bool enable_c2, T* img, ExecResult<X, Y, 2, R>* r,
            unsigned short loop_max = loop_max_default, bool flush_output = true) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);

  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(0), out_size_d128);
    }
  };

  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(1), out_size_d128);
    }
  };

  auto c1_wrapper = [&]() -> void { c1_func(img, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img, r->outputs.at(1), X, Y); };

  auto c1_report = [&](double time, const char* error_message) -> void {
    r->times[0] = time;
    r->errors[0] = error_message;
  };
  auto c2_report = [&](double time, const char* error_message) -> void {
    r->times[1] = time;
    r->errors[1] = error_message;
  };

  __exec_base(c1_wrapper, c2_wrapper, c1_flush, c2_flush, c1_report, c2_report,
              enable_c1, enable_c2, loop_max);
};

// Execute function with two inputs
template<size_t X, size_t Y, typename T, typename R>
void __exec(std::function<void(T*, T*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, T*, R*, size_t, size_t)> c2_func,
            bool enable_c1, bool enable_c2, T* img1, T* img2, ExecResult<X, Y, 2, R>* r,
            unsigned short loop_max = loop_max_default, bool flush_output = true) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);

  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img1, img_size_d128);
    cache_flush((__m128i*)img2, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(0), out_size_d128);
    }
  };

  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img1, img_size_d128);
    cache_flush((__m128i*)img2, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(1), out_size_d128);
    }
  };

  auto c1_wrapper = [&]() -> void { c1_func(img1, img2, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img1, img2, r->outputs.at(1), X, Y); };

  auto c1_report = [&](double time, const char* error_message) -> void {
    r->times[0] = time;
    r->errors[0] = error_message;
  };
  auto c2_report = [&](double time, const char* error_message) -> void {
    r->times[1] = time;
    r->errors[1] = error_message;
  };

  __exec_base(c1_wrapper, c2_wrapper, c1_flush, c2_flush, c1_report, c2_report,
              enable_c1, enable_c2, loop_max);
};

// Execute function with a filter
template<size_t X, size_t Y, typename T, typename K, typename R>
void __exec(std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> c2_func,
            bool enable_c1, bool enable_c2, T* img, const filt::Filter<K>* filter,
            ExecResult<X, Y, 2, R>* r, unsigned short loop_max = loop_max_default,
            bool flush_output = true) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);
  const unsigned int kernel_size_d128 = (unsigned int)(filter->size2 * sizeof(K) / 16);

  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    cache_flush((__m128i*)filter->kernel, kernel_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(0), out_size_d128);
    }
  };

  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    cache_flush((__m128i*)filter->kernel, kernel_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(1), out_size_d128);
    }
  };

  auto c1_wrapper = [&]() -> void { c1_func(img, filter, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img, filter, r->outputs.at(1), X, Y); };

  auto c1_report = [&](double time, const char* error_message) -> void {
    r->times[0] = time;
    r->errors[0] = error_message;
  };
  auto c2_report = [&](double time, const char* error_message) -> void {
    r->times[1] = time;
    r->errors[1] = error_message;
  };

  __exec_base(c1_wrapper, c2_wrapper, c1_flush, c2_flush, c1_report, c2_report,
              enable_c1, enable_c2, loop_max);
};

/******************
 ** Bulk Helpers **
 ******************/

#define resple std::tuple<const char*, std::function<bool(bool)>, std::function<void(void)>>
#define respool std::vector<resple>
#define fileple std::tuple<const char*, void*, size_t, size_t>
#define filepool std::vector<fileple>
#define $ std::make_tuple
#define $ave(name, r) $(name, [&r](bool print_newline) -> bool { \
                          bool res = r->verify_output(); \
                          if (print_newline && !res) std::cout << std::endl; \
                          return res; \
                        }, [&r]() -> void { r->save_all(name); })

bool __bulk_diff(respool v);
void __bulk_save(respool v);

template<typename T>
void __bulk_save(filepool v) {
  for (size_t idx = 0; idx < v.size(); idx += 1) {
    __file<T>(std::get<0>(v[idx]), static_cast<T*>(std::get<1>(v[idx])), std::get<2>(v[idx]),
              std::get<3>(v[idx]), "wb");
  }
};

template<typename T>
void __bulk_load(filepool v) {
  for (size_t idx = 0; idx < v.size(); idx += 1) {
    __file<T>(std::get<0>(v[idx]), static_cast<T*>(std::get<1>(v[idx])), std::get<2>(v[idx]),
              std::get<3>(v[idx]), "r");
  }
};

#endif // _CORE_H_
