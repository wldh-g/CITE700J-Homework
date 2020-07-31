; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF797B01734  mov         rbx,r8
00007FF797B01737  mov         rdi,rdx
00007FF797B0173A  mov         rsi,rcx
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF797B0173D  mov         r10,rdx
00007FF797B01740  mov         r11,r9
			for (x = 0; x < x_size; x += 1) {
00007FF797B01743  test        rbx,rbx
00007FF797B01746  je          c::invert_8b+54h (07FF797B01774h)
				size_t in_pos = y * y_size + x;
00007FF797B01748  mov         r8,rsi
00007FF797B0174B  mov         rax,r10
00007FF797B0174E  sub         r8,rdi
00007FF797B01751  mov         rdx,rbx
00007FF797B01754  nop         dword ptr [rax]
00007FF797B01758  nop         dword ptr [rax+rax]
				size_t out_pos = y * y_size + x;
				*(out + out_pos) = 255 - *(in + in_pos);
00007FF797B01760  movzx       ecx,byte ptr [r8+rax]
00007FF797B01765  lea         rax,[rax+1]
00007FF797B01769  not         cl
00007FF797B0176B  mov         byte ptr [rax-1],cl
00007FF797B0176E  sub         rdx,1
00007FF797B01772  jne         c::invert_8b+40h (07FF797B01760h)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF797B01774  add         r10,r9
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF797B01777  sub         r11,1
00007FF797B0177B  jne         c::invert_8b+23h (07FF797B01743h)
			}
		}
	};
00007FF797B0177D  mov         rbx,qword ptr [rsp+8]
00007FF797B01782  mov         rsi,qword ptr [rsp+10h]
00007FF797B01787  mov         rdi,qword ptr [rsp+18h]
00007FF797B0178C  ret
