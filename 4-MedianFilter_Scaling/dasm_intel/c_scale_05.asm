; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF63179F600  push        rbp
00007FF63179F601  sub         rsp,40h
00007FF63179F605  lea         rbp,[rsp+20h]
00007FF63179F60A  mov         qword ptr [rsp],rax
00007FF63179F60E  mov         rax,3Ch
00007FF63179F615  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179F61C  sub         rax,4
00007FF63179F620  cmp         rax,4
00007FF63179F624  jg          c::scale_05+15h (07FF63179F615h)
00007FF63179F626  mov         rax,qword ptr [rsp]
00007FF63179F62A  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179F631  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179F639  mov         qword ptr [in],rcx
00007FF63179F63D  mov         qword ptr [out],rdx
00007FF63179F641  mov         qword ptr [x_size],r8
00007FF63179F645  mov         qword ptr [y_size],r9
00007FF63179F649  mov         byte ptr [rbp+3],0
00007FF63179F64D  mov         byte ptr [rbp+1],0
00007FF63179F651  mov         byte ptr [rbp+2],0
00007FF63179F655  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(0.5f * 128);
00007FF63179F659  mov         byte ptr [rbp],1
00007FF63179F65D  mov         word ptr [scale],40h
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF63179F663  mov         byte ptr [rbp+1],1
00007FF63179F667  mov         qword ptr [y],0
00007FF63179F66F  mov         rax,qword ptr [y]
00007FF63179F673  mov         rdx,qword ptr [y_size]
00007FF63179F677  cmp         rax,rdx
00007FF63179F67A  jb          c::scale_05+91h (07FF63179F691h)
00007FF63179F67C  jmp         c::scale_05+0F0h (07FF63179F6F0h)
00007FF63179F67E  mov         byte ptr [rbp+1],1
00007FF63179F682  mov         eax,1
00007FF63179F687  add         rax,qword ptr [y]
00007FF63179F68B  mov         qword ptr [y],rax
00007FF63179F68F  jmp         c::scale_05+6Fh (07FF63179F66Fh)
			for (x = 0; x < x_size; x += 1) {
00007FF63179F691  mov         byte ptr [rbp+2],1
00007FF63179F695  mov         qword ptr [x],0
00007FF63179F69D  mov         rax,qword ptr [x]
00007FF63179F6A1  mov         rdx,qword ptr [x_size]
00007FF63179F6A5  cmp         rax,rdx
00007FF63179F6A8  jae         c::scale_05+7Eh (07FF63179F67Eh)
				size_t pos = y * x_size + x;
00007FF63179F6AA  mov         byte ptr [rbp+3],1
00007FF63179F6AE  mov         rax,qword ptr [x_size]
00007FF63179F6B2  imul        rax,qword ptr [y]
00007FF63179F6B7  add         rax,qword ptr [x]
00007FF63179F6BB  mov         qword ptr [rbp+18h],rax
				*(out + pos) = (uint8_t)((scale * *(in + pos)) >> 7);
00007FF63179F6BF  mov         rax,qword ptr [rbp+18h]
00007FF63179F6C3  add         rax,qword ptr [in]
00007FF63179F6C7  movzx       eax,byte ptr [rax]
00007FF63179F6CA  movzx       eax,al
00007FF63179F6CD  imul        eax,eax,40h
00007FF63179F6D0  sar         eax,7
00007FF63179F6D3  mov         rdx,qword ptr [rbp+18h]
00007FF63179F6D7  add         rdx,qword ptr [out]
00007FF63179F6DB  mov         byte ptr [rdx],al
			for (x = 0; x < x_size; x += 1) {
00007FF63179F6DD  mov         byte ptr [rbp+2],1
00007FF63179F6E1  mov         eax,1
00007FF63179F6E6  add         rax,qword ptr [x]
00007FF63179F6EA  mov         qword ptr [x],rax
00007FF63179F6EE  jmp         c::scale_05+9Dh (07FF63179F69Dh)
			}
		}
	};
00007FF63179F6F0  lea         rsp,[rbp+20h]
00007FF63179F6F4  pop         rbp
00007FF63179F6F5  ret
