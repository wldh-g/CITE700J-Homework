; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7077AB580  mov         qword ptr [rsp+20h],r9
00007FF7077AB585  mov         qword ptr [rsp+18h],r8
00007FF7077AB58A  mov         qword ptr [rsp+10h],rdx
00007FF7077AB58F  mov         qword ptr [rsp+8],rcx
00007FF7077AB594  push        rbp
00007FF7077AB595  push        rdi
00007FF7077AB596  sub         rsp,168h
00007FF7077AB59D  lea         rbp,[rsp+20h]
00007FF7077AB5A2  mov         rdi,rsp
00007FF7077AB5A5  mov         ecx,5Ah
00007FF7077AB5AA  mov         eax,0CCCCCCCCh
00007FF7077AB5AF  rep stos    dword ptr [rdi]
00007FF7077AB5B1  mov         rcx,qword ptr [rsp+188h]
00007FF7077AB5B9  lea         rcx,[__3BE03879_Func_C@cpp (07FF707826086h)]
00007FF7077AB5C0  call        __CheckForDebuggerJustMyCode (07FF70779D5D7h)
		constexpr uint16_t scale = (uint16_t)(2.4f * 128);
00007FF7077AB5C5  mov         eax,133h
00007FF7077AB5CA  mov         word ptr [scale],ax
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF7077AB5CE  mov         qword ptr [y],0
00007FF7077AB5D6  jmp         c::scale_24+63h (07FF7077AB5E3h)
00007FF7077AB5D8  mov         rax,qword ptr [y]
00007FF7077AB5DC  inc         rax
00007FF7077AB5DF  mov         qword ptr [y],rax
00007FF7077AB5E3  mov         rax,qword ptr [y_size]
00007FF7077AB5EA  cmp         qword ptr [y],rax
00007FF7077AB5EE  jae         c::scale_24+116h (07FF7077AB696h)
			for (x = 0; x < x_size; x += 1) {
00007FF7077AB5F4  mov         qword ptr [x],0
00007FF7077AB5FC  jmp         c::scale_24+89h (07FF7077AB609h)
00007FF7077AB5FE  mov         rax,qword ptr [x]
00007FF7077AB602  inc         rax
00007FF7077AB605  mov         qword ptr [x],rax
00007FF7077AB609  mov         rax,qword ptr [x_size]
00007FF7077AB610  cmp         qword ptr [x],rax
00007FF7077AB614  jae         c::scale_24+111h (07FF7077AB691h)
				size_t pos = y * x_size + x;
00007FF7077AB616  mov         rax,qword ptr [y]
00007FF7077AB61A  imul        rax,qword ptr [x_size]
00007FF7077AB622  add         rax,qword ptr [x]
00007FF7077AB626  mov         qword ptr [rbp+68h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 7);
00007FF7077AB62A  mov         rax,qword ptr [rbp+68h]
00007FF7077AB62E  mov         rcx,qword ptr [in]
00007FF7077AB635  add         rcx,rax
00007FF7077AB638  mov         rax,rcx
00007FF7077AB63B  movzx       eax,byte ptr [rax]
00007FF7077AB63E  cmp         eax,6Bh
00007FF7077AB641  jl          c::scale_24+0CFh (07FF7077AB64Fh)
00007FF7077AB643  mov         dword ptr [rbp+134h],0FFh
00007FF7077AB64D  jmp         c::scale_24+0F2h (07FF7077AB672h)
00007FF7077AB64F  mov         rax,qword ptr [rbp+68h]
00007FF7077AB653  mov         rcx,qword ptr [in]
00007FF7077AB65A  add         rcx,rax
00007FF7077AB65D  mov         rax,rcx
00007FF7077AB660  movzx       eax,byte ptr [rax]
00007FF7077AB663  imul        eax,eax,133h
00007FF7077AB669  sar         eax,7
00007FF7077AB66C  mov         dword ptr [rbp+134h],eax
00007FF7077AB672  mov         rax,qword ptr [rbp+68h]
00007FF7077AB676  mov         rcx,qword ptr [out]
00007FF7077AB67D  add         rcx,rax
00007FF7077AB680  mov         rax,rcx
00007FF7077AB683  movzx       ecx,byte ptr [rbp+134h]
00007FF7077AB68A  mov         byte ptr [rax],cl
			}
00007FF7077AB68C  jmp         c::scale_24+7Eh (07FF7077AB5FEh)
		}
00007FF7077AB691  jmp         c::scale_24+58h (07FF7077AB5D8h)
	};
00007FF7077AB696  lea         rsp,[rbp+148h]
00007FF7077AB69D  pop         rdi
00007FF7077AB69E  pop         rbp
00007FF7077AB69F  ret
