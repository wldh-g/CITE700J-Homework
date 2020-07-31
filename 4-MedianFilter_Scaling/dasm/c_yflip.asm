; Built with MSVC 19.26.28806 (x64) in Debug mode default options
void c_yflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
00007FF6B5454CC0  mov         qword ptr [rsp+20h],r9
00007FF6B5454CC5  mov         qword ptr [rsp+18h],r8
00007FF6B5454CCA  mov         qword ptr [rsp+10h],rdx
00007FF6B5454CCF  mov         qword ptr [rsp+8],rcx
00007FF6B5454CD4  push        rbp
00007FF6B5454CD5  push        rdi
00007FF6B5454CD6  sub         rsp,168h
00007FF6B5454CDD  lea         rbp,[rsp+20h]
00007FF6B5454CE2  mov         rdi,rsp
00007FF6B5454CE5  mov         ecx,5Ah
00007FF6B5454CEA  mov         eax,0CCCCCCCCh
00007FF6B5454CEF  rep stos    dword ptr [rdi]
00007FF6B5454CF1  mov         rcx,qword ptr [rsp+188h]
00007FF6B5454CF9  lea         rcx,[__F29EA983_Func@cpp (07FF6B546803Eh)]
00007FF6B5454D00  call        __CheckForDebuggerJustMyCode (07FF6B5451109h)
	register size_t x, y;
	for (y = 0; y < y_size; y += 1) {
00007FF6B5454D05  mov         qword ptr [y],0
00007FF6B5454D0D  jmp         c_yflip+5Ah (07FF6B5454D1Ah)
00007FF6B5454D0F  mov         rax,qword ptr [y]
00007FF6B5454D13  inc         rax
00007FF6B5454D16  mov         qword ptr [y],rax
00007FF6B5454D1A  mov         rax,qword ptr [y_size]
00007FF6B5454D21  cmp         qword ptr [y],rax
00007FF6B5454D25  jae         c_yflip+0F3h (07FF6B5454DB3h)
		for (x = 0; x < x_size; x += 1) {
00007FF6B5454D2B  mov         qword ptr [x],0
00007FF6B5454D33  jmp         c_yflip+80h (07FF6B5454D40h)
00007FF6B5454D35  mov         rax,qword ptr [x]
00007FF6B5454D39  inc         rax
00007FF6B5454D3C  mov         qword ptr [x],rax
00007FF6B5454D40  mov         rax,qword ptr [x_size]
00007FF6B5454D47  cmp         qword ptr [x],rax
00007FF6B5454D4B  jae         c_yflip+0EEh (07FF6B5454DAEh)
			size_t in_pos = y * y_size + x;
00007FF6B5454D4D  mov         rax,qword ptr [y]
00007FF6B5454D51  imul        rax,qword ptr [y_size]
00007FF6B5454D59  add         rax,qword ptr [x]
00007FF6B5454D5D  mov         qword ptr [rbp+48h],rax
			size_t out_pos = (y_size - y - 1) * y_size + x;
00007FF6B5454D61  mov         rax,qword ptr [y]
00007FF6B5454D65  mov         rcx,qword ptr [y_size]
00007FF6B5454D6C  sub         rcx,rax
00007FF6B5454D6F  mov         rax,rcx
00007FF6B5454D72  dec         rax
00007FF6B5454D75  imul        rax,qword ptr [y_size]
00007FF6B5454D7D  add         rax,qword ptr [x]
00007FF6B5454D81  mov         qword ptr [rbp+68h],rax
			*(out + out_pos) = *(in + in_pos);
00007FF6B5454D85  mov         rax,qword ptr [rbp+68h]
00007FF6B5454D89  mov         rcx,qword ptr [out]
00007FF6B5454D90  add         rcx,rax
00007FF6B5454D93  mov         rax,rcx
00007FF6B5454D96  mov         rcx,qword ptr [rbp+48h]
00007FF6B5454D9A  mov         rdx,qword ptr [in]
00007FF6B5454DA1  add         rdx,rcx
00007FF6B5454DA4  mov         rcx,rdx
00007FF6B5454DA7  movzx       ecx,byte ptr [rcx]
00007FF6B5454DAA  mov         byte ptr [rax],cl
		}
00007FF6B5454DAC  jmp         c_yflip+75h (07FF6B5454D35h)
	}
00007FF6B5454DAE  jmp         c_yflip+4Fh (07FF6B5454D0Fh)
};
00007FF6B5454DB3  lea         rsp,[rbp+148h]
00007FF6B5454DBA  pop         rdi
00007FF6B5454DBB  pop         rbp
00007FF6B5454DBC  ret
