	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7CE976EE0  mov         qword ptr [rsp+20h],r9
00007FF7CE976EE5  mov         qword ptr [rsp+18h],r8
00007FF7CE976EEA  mov         qword ptr [rsp+10h],rdx
00007FF7CE976EEF  mov         qword ptr [rsp+8],rcx
00007FF7CE976EF4  push        rbp
00007FF7CE976EF5  push        rdi
00007FF7CE976EF6  sub         rsp,148h
00007FF7CE976EFD  lea         rbp,[rsp+20h]
00007FF7CE976F02  mov         rdi,rsp
00007FF7CE976F05  mov         ecx,52h
00007FF7CE976F0A  mov         eax,0CCCCCCCCh
00007FF7CE976F0F  rep stos    dword ptr [rdi]
00007FF7CE976F11  mov         rcx,qword ptr [rsp+168h]
00007FF7CE976F19  lea         rcx,[__5460E701_C@cpp (07FF7CE9B5001h)]
00007FF7CE976F20  call        __CheckForDebuggerJustMyCode (07FF7CE97331Bh)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF7CE976F25  mov         qword ptr [y],0
00007FF7CE976F2D  jmp         c::add_8b+5Ah (07FF7CE976F3Ah)
00007FF7CE976F2F  mov         rax,qword ptr [y]
00007FF7CE976F33  inc         rax
00007FF7CE976F36  mov         qword ptr [y],rax
00007FF7CE976F3A  mov         rax,qword ptr [y_size]
00007FF7CE976F41  cmp         qword ptr [y],rax
00007FF7CE976F45  jae         c::add_8b+102h (07FF7CE976FE2h)
			for (x = 0; x < x_size; x += 1) {
00007FF7CE976F4B  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF7CE976F53  jmp         c::add_8b+80h (07FF7CE976F60h)
00007FF7CE976F55  mov         rax,qword ptr [x]
00007FF7CE976F59  inc         rax
00007FF7CE976F5C  mov         qword ptr [x],rax
00007FF7CE976F60  mov         rax,qword ptr [x_size]
00007FF7CE976F67  cmp         qword ptr [x],rax
00007FF7CE976F6B  jae         c::add_8b+0FDh (07FF7CE976FDDh)
				size_t pos = y * y_size + x;
00007FF7CE976F6D  mov         rax,qword ptr [y]
00007FF7CE976F71  imul        rax,qword ptr [y_size]
00007FF7CE976F79  add         rax,qword ptr [x]
00007FF7CE976F7D  mov         qword ptr [rbp+48h],rax
				*(out + pos) = *(in1 + pos) / 2 + *(in2 + pos) / 2;
00007FF7CE976F81  mov         rax,qword ptr [rbp+48h]
00007FF7CE976F85  mov         rcx,qword ptr [in1]
00007FF7CE976F8C  add         rcx,rax
00007FF7CE976F8F  mov         rax,rcx
00007FF7CE976F92  movzx       eax,byte ptr [rax]
00007FF7CE976F95  cdq
00007FF7CE976F96  sub         eax,edx
00007FF7CE976F98  sar         eax,1
00007FF7CE976F9A  mov         dword ptr [rbp+114h],eax
00007FF7CE976FA0  mov         rcx,qword ptr [rbp+48h]
00007FF7CE976FA4  mov         rdx,qword ptr [in2]
00007FF7CE976FAB  add         rdx,rcx
00007FF7CE976FAE  mov         rcx,rdx
00007FF7CE976FB1  movzx       ecx,byte ptr [rcx]
00007FF7CE976FB4  mov         eax,ecx
00007FF7CE976FB6  cdq
00007FF7CE976FB7  sub         eax,edx
00007FF7CE976FB9  sar         eax,1
00007FF7CE976FBB  mov         ecx,dword ptr [rbp+114h]
00007FF7CE976FC1  add         ecx,eax
00007FF7CE976FC3  mov         eax,ecx
00007FF7CE976FC5  mov         rcx,qword ptr [rbp+48h]
00007FF7CE976FC9  mov         rdx,qword ptr [out]
00007FF7CE976FD0  add         rdx,rcx
00007FF7CE976FD3  mov         rcx,rdx
00007FF7CE976FD6  mov         byte ptr [rcx],al
			}
00007FF7CE976FD8  jmp         c::add_8b+75h (07FF7CE976F55h)
		}
00007FF7CE976FDD  jmp         c::add_8b+4Fh (07FF7CE976F2Fh)
	};
00007FF7CE976FE2  lea         rsp,[rbp+128h]
00007FF7CE976FE9  pop         rdi
00007FF7CE976FEA  pop         rbp
00007FF7CE976FEB  ret
