; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF6216E4A60  mov         qword ptr [rsp+20h],r9
00007FF6216E4A65  mov         qword ptr [rsp+18h],r8
00007FF6216E4A6A  mov         qword ptr [rsp+10h],rdx
00007FF6216E4A6F  mov         qword ptr [rsp+8],rcx
00007FF6216E4A74  push        rbp
00007FF6216E4A75  push        rdi
00007FF6216E4A76  sub         rsp,148h
00007FF6216E4A7D  lea         rbp,[rsp+20h]
00007FF6216E4A82  mov         rdi,rsp
00007FF6216E4A85  mov         ecx,52h
00007FF6216E4A8A  mov         eax,0CCCCCCCCh
00007FF6216E4A8F  rep stos    dword ptr [rdi]
00007FF6216E4A91  mov         rcx,qword ptr [rsp+168h]
00007FF6216E4A99  lea         rcx,[__3BE03879_Func_C@cpp (07FF62175B041h)]
00007FF6216E4AA0  call        __CheckForDebuggerJustMyCode (07FF6216DA569h)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF6216E4AA5  mov         qword ptr [y],0
00007FF6216E4AAD  jmp         c::scale_05+5Ah (07FF6216E4ABAh)
00007FF6216E4AAF  mov         rax,qword ptr [y]
00007FF6216E4AB3  inc         rax
00007FF6216E4AB6  mov         qword ptr [y],rax
00007FF6216E4ABA  mov         rax,qword ptr [y_size]
00007FF6216E4AC1  cmp         qword ptr [y],rax
00007FF6216E4AC5  jae         c::scale_05+0E2h (07FF6216E4B42h)
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4AC7  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4ACF  jmp         c::scale_05+7Ch (07FF6216E4ADCh)
00007FF6216E4AD1  mov         rax,qword ptr [x]
00007FF6216E4AD5  inc         rax
00007FF6216E4AD8  mov         qword ptr [x],rax
00007FF6216E4ADC  mov         rax,qword ptr [x_size]
00007FF6216E4AE3  cmp         qword ptr [x],rax
00007FF6216E4AE7  jae         c::scale_05+0DDh (07FF6216E4B3Dh)
				size_t pos = y * x_size + x;
00007FF6216E4AE9  mov         rax,qword ptr [y]
00007FF6216E4AED  imul        rax,qword ptr [x_size]
00007FF6216E4AF5  add         rax,qword ptr [x]
00007FF6216E4AF9  mov         qword ptr [rbp+48h],rax
				*(out + pos) = (uint8_t)(0.5f * *(in + pos));
00007FF6216E4AFD  mov         rax,qword ptr [rbp+48h]
00007FF6216E4B01  mov         rcx,qword ptr [in]
00007FF6216E4B08  add         rcx,rax
00007FF6216E4B0B  mov         rax,rcx
00007FF6216E4B0E  movzx       eax,byte ptr [rax]
00007FF6216E4B11  cvtsi2ss    xmm0,eax
00007FF6216E4B15  movss       xmm1,dword ptr [__real@3f000000 (07FF6217365E8h)]
00007FF6216E4B1D  mulss       xmm1,xmm0
00007FF6216E4B21  movaps      xmm0,xmm1
00007FF6216E4B24  cvttss2si   eax,xmm0
00007FF6216E4B28  mov         rcx,qword ptr [rbp+48h]
00007FF6216E4B2C  mov         rdx,qword ptr [out]
00007FF6216E4B33  add         rdx,rcx
00007FF6216E4B36  mov         rcx,rdx
00007FF6216E4B39  mov         byte ptr [rcx],al
			}
00007FF6216E4B3B  jmp         c::scale_05+71h (07FF6216E4AD1h)
		}
00007FF6216E4B3D  jmp         c::scale_05+4Fh (07FF6216E4AAFh)
	};
00007FF6216E4B42  lea         rsp,[rbp+128h]
00007FF6216E4B49  pop         rdi
00007FF6216E4B4A  pop         rbp
00007FF6216E4B4B  ret
