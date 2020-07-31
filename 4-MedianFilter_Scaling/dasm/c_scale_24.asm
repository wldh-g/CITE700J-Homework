; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF6216E4D10  mov         qword ptr [rsp+20h],r9
00007FF6216E4D15  mov         qword ptr [rsp+18h],r8
00007FF6216E4D1A  mov         qword ptr [rsp+10h],rdx
00007FF6216E4D1F  mov         qword ptr [rsp+8],rcx
00007FF6216E4D24  push        rbp
00007FF6216E4D25  push        rdi
00007FF6216E4D26  sub         rsp,148h
00007FF6216E4D2D  lea         rbp,[rsp+20h]
00007FF6216E4D32  mov         rdi,rsp
00007FF6216E4D35  mov         ecx,52h
00007FF6216E4D3A  mov         eax,0CCCCCCCCh
00007FF6216E4D3F  rep stos    dword ptr [rdi]
00007FF6216E4D41  mov         rcx,qword ptr [rsp+168h]
00007FF6216E4D49  lea         rcx,[__3BE03879_Func_C@cpp (07FF62175B041h)]
00007FF6216E4D50  call        __CheckForDebuggerJustMyCode (07FF6216DA569h)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF6216E4D55  mov         qword ptr [y],0
00007FF6216E4D5D  jmp         c::scale_24+5Ah (07FF6216E4D6Ah)
00007FF6216E4D5F  mov         rax,qword ptr [y]
00007FF6216E4D63  inc         rax
00007FF6216E4D66  mov         qword ptr [y],rax
00007FF6216E4D6A  mov         rax,qword ptr [y_size]
00007FF6216E4D71  cmp         qword ptr [y],rax
00007FF6216E4D75  jae         c::scale_24+124h (07FF6216E4E34h)
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4D7B  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4D83  jmp         c::scale_24+80h (07FF6216E4D90h)
00007FF6216E4D85  mov         rax,qword ptr [x]
00007FF6216E4D89  inc         rax
00007FF6216E4D8C  mov         qword ptr [x],rax
00007FF6216E4D90  mov         rax,qword ptr [x_size]
00007FF6216E4D97  cmp         qword ptr [x],rax
00007FF6216E4D9B  jae         c::scale_24+11Fh (07FF6216E4E2Fh)
				size_t pos = y * x_size + x;
00007FF6216E4DA1  mov         rax,qword ptr [y]
00007FF6216E4DA5  imul        rax,qword ptr [x_size]
00007FF6216E4DAD  add         rax,qword ptr [x]
00007FF6216E4DB1  mov         qword ptr [rbp+48h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : 2.4f * *(in + pos));
00007FF6216E4DB5  mov         rax,qword ptr [rbp+48h]
00007FF6216E4DB9  mov         rcx,qword ptr [in]
00007FF6216E4DC0  add         rcx,rax
00007FF6216E4DC3  mov         rax,rcx
00007FF6216E4DC6  movzx       eax,byte ptr [rax]
00007FF6216E4DC9  cmp         eax,6Bh
00007FF6216E4DCC  jl          c::scale_24+0D0h (07FF6216E4DE0h)
00007FF6216E4DCE  movss       xmm0,dword ptr [__real@437f0000 (07FF6217365F4h)]
00007FF6216E4DD6  movss       dword ptr [rbp+114h],xmm0
00007FF6216E4DDE  jmp         c::scale_24+0FFh (07FF6216E4E0Fh)
00007FF6216E4DE0  mov         rax,qword ptr [rbp+48h]
00007FF6216E4DE4  mov         rcx,qword ptr [in]
00007FF6216E4DEB  add         rcx,rax
00007FF6216E4DEE  mov         rax,rcx
00007FF6216E4DF1  movzx       eax,byte ptr [rax]
00007FF6216E4DF4  cvtsi2ss    xmm0,eax
00007FF6216E4DF8  movss       xmm1,dword ptr [__real@4019999a (07FF6217365F0h)]
00007FF6216E4E00  mulss       xmm1,xmm0
00007FF6216E4E04  movaps      xmm0,xmm1
00007FF6216E4E07  movss       dword ptr [rbp+114h],xmm0
00007FF6216E4E0F  cvttss2si   eax,dword ptr [rbp+114h]
00007FF6216E4E17  mov         rcx,qword ptr [rbp+48h]
00007FF6216E4E1B  mov         rdx,qword ptr [out]
00007FF6216E4E22  add         rdx,rcx
00007FF6216E4E25  mov         rcx,rdx
00007FF6216E4E28  mov         byte ptr [rcx],al
			}
00007FF6216E4E2A  jmp         c::scale_24+75h (07FF6216E4D85h)
		}
00007FF6216E4E2F  jmp         c::scale_24+4Fh (07FF6216E4D5Fh)
	};
00007FF6216E4E34  lea         rsp,[rbp+128h]
00007FF6216E4E3B  pop         rdi
00007FF6216E4E3C  pop         rbp
00007FF6216E4E3D  ret
