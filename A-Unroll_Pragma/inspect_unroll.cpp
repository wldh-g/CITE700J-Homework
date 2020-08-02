// Unroll pragma test code
// Modified a little from Intel's unroll/nounroll example code

#include <cstdio>

#define SIZE 16

int main(int argc) {
  int* a = new int[1000] { argc };
  int* b = new int[1000] { argc };
  __asm {
    // FLAG_UNROLL_OP
    NOP
    NOP
    CMP rax, rbx
    CMP rcx, rdx
    NOP
    NOP
  }
  #pragma unroll(SIZE)
  for (int i = 1; i < 1000; i += 1) {
    b[i] = a[i] + 1;
  }
  __asm {
    // FLAG_UNROLL_ED
    NOP
    NOP
    CMP eax, ebx
    CMP ecx, edx
    NOP
    NOP
  }
  printf("Result : %d %d\n", a[8], b[16]);
  delete[] a;
  delete[] b;
  return 0;
}
