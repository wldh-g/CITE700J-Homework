; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF6216E4B90  mov         qword ptr [rsp+20h],r9
00007FF6216E4B95  mov         qword ptr [rsp+18h],r8
00007FF6216E4B9A  mov         qword ptr [rsp+10h],rdx
00007FF6216E4B9F  mov         qword ptr [rsp+8],rcx
00007FF6216E4BA4  push        rbp
00007FF6216E4BA5  push        rdi
00007FF6216E4BA6  sub         rsp,148h
00007FF6216E4BAD  lea         rbp,[rsp+20h]
00007FF6216E4BB2  mov         rdi,rsp
00007FF6216E4BB5  mov         ecx,52h
00007FF6216E4BBA  mov         eax,0CCCCCCCCh
00007FF6216E4BBF  rep stos    dword ptr [rdi]
00007FF6216E4BC1  mov         rcx,qword ptr [rsp+168h]
00007FF6216E4BC9  lea         rcx,[__3BE03879_Func_C@cpp (07FF62175B041h)]
00007FF6216E4BD0  call        __CheckForDebuggerJustMyCode (07FF6216DA569h)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF6216E4BD5  mov         qword ptr [y],0
00007FF6216E4BDD  jmp         c::scale_13+5Ah (07FF6216E4BEAh)
00007FF6216E4BDF  mov         rax,qword ptr [y]
00007FF6216E4BE3  inc         rax
00007FF6216E4BE6  mov         qword ptr [y],rax
00007FF6216E4BEA  mov         rax,qword ptr [y_size]
00007FF6216E4BF1  cmp         qword ptr [y],rax
00007FF6216E4BF5  jae         c::scale_13+126h (07FF6216E4CB6h)
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4BFB  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4C03  jmp         c::scale_13+80h (07FF6216E4C10h)
00007FF6216E4C05  mov         rax,qword ptr [x]
00007FF6216E4C09  inc         rax
00007FF6216E4C0C  mov         qword ptr [x],rax
00007FF6216E4C10  mov         rax,qword ptr [x_size]
00007FF6216E4C17  cmp         qword ptr [x],rax
00007FF6216E4C1B  jae         c::scale_13+121h (07FF6216E4CB1h)
				size_t pos = y * x_size + x;
00007FF6216E4C21  mov         rax,qword ptr [y]
00007FF6216E4C25  imul        rax,qword ptr [x_size]
00007FF6216E4C2D  add         rax,qword ptr [x]
00007FF6216E4C31  mov         qword ptr [rbp+48h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : 1.3f * *(in + pos));
00007FF6216E4C35  mov         rax,qword ptr [rbp+48h]
00007FF6216E4C39  mov         rcx,qword ptr [in]
00007FF6216E4C40  add         rcx,rax
00007FF6216E4C43  mov         rax,rcx
00007FF6216E4C46  movzx       eax,byte ptr [rax]
00007FF6216E4C49  cmp         eax,0C5h
00007FF6216E4C4E  jl          c::scale_13+0D2h (07FF6216E4C62h)
00007FF6216E4C50  movss       xmm0,dword ptr [__real@437f0000 (07FF6217365F4h)]
00007FF6216E4C58  movss       dword ptr [rbp+114h],xmm0
00007FF6216E4C60  jmp         c::scale_13+101h (07FF6216E4C91h)
00007FF6216E4C62  mov         rax,qword ptr [rbp+48h]
00007FF6216E4C66  mov         rcx,qword ptr [in]
00007FF6216E4C6D  add         rcx,rax
00007FF6216E4C70  mov         rax,rcx
00007FF6216E4C73  movzx       eax,byte ptr [rax]
00007FF6216E4C76  cvtsi2ss    xmm0,eax
00007FF6216E4C7A  movss       xmm1,dword ptr [__real@3fa66666 (07FF6217365ECh)]
00007FF6216E4C82  mulss       xmm1,xmm0
00007FF6216E4C86  movaps      xmm0,xmm1
00007FF6216E4C89  movss       dword ptr [rbp+114h],xmm0
00007FF6216E4C91  cvttss2si   eax,dword ptr [rbp+114h]
00007FF6216E4C99  mov         rcx,qword ptr [rbp+48h]
00007FF6216E4C9D  mov         rdx,qword ptr [out]
00007FF6216E4CA4  add         rdx,rcx
00007FF6216E4CA7  mov         rcx,rdx
00007FF6216E4CAA  mov         byte ptr [rcx],al
			}
00007FF6216E4CAC  jmp         c::scale_13+75h (07FF6216E4C05h)
		}
00007FF6216E4CB1  jmp         c::scale_13+4Fh (07FF6216E4BDFh)
	};
00007FF6216E4CB6  lea         rsp,[rbp+128h]
00007FF6216E4CBD  pop         rdi
00007FF6216E4CBE  pop         rbp
00007FF6216E4CBF  ret
