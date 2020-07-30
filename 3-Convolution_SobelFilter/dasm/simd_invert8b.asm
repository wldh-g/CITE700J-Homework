		const __m128i ff = _mm_set1_epi8((char)255);
00007FF7B6293980  movdqa      xmm1,xmmword ptr [__xmm@ffffffffffffffffffffffffffffffff (07FF7B6297A30h)]
00007FF7B6293988  imul        r8,r9
00007FF7B629398C  shr         r8,4
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
00007FF7B6293990  test        r8,r8
00007FF7B6293993  je          simd::invert_8b+39h (07FF7B62939B9h)
		const size_t i_max = x_size * y_size / 16;
00007FF7B6293995  sub         rcx,rdx
00007FF7B6293998  nop         dword ptr [rax+rax]
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
00007FF7B62939A0  lea         rdx,[rdx+10h]
			*(_out + i) = _mm_subs_epi8(ff, *(_in + i));
00007FF7B62939A4  movdqa      xmm0,xmm1
00007FF7B62939A8  psubsb      xmm0,xmmword ptr [rcx+rdx-10h]
00007FF7B62939AE  movdqu      xmmword ptr [rdx-10h],xmm0
00007FF7B62939B3  sub         r8,1
00007FF7B62939B7  jne         simd::invert_8b+20h (07FF7B62939A0h)
		}
	};
00007FF7B62939B9  ret
