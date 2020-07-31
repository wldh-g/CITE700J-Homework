; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7077AB150  mov         qword ptr [rsp+20h],r9
00007FF7077AB155  mov         qword ptr [rsp+18h],r8
00007FF7077AB15A  mov         qword ptr [rsp+10h],rdx
00007FF7077AB15F  mov         qword ptr [rsp+8],rcx
00007FF7077AB164  push        rbp
00007FF7077AB165  push        rdi
00007FF7077AB166  sub         rsp,168h
00007FF7077AB16D  lea         rbp,[rsp+20h]
00007FF7077AB172  mov         rdi,rsp
00007FF7077AB175  mov         ecx,5Ah
00007FF7077AB17A  mov         eax,0CCCCCCCCh
00007FF7077AB17F  rep stos    dword ptr [rdi]
00007FF7077AB181  mov         rcx,qword ptr [rsp+188h]
00007FF7077AB189  lea         rcx,[__3BE03879_Func_C@cpp (07FF707826086h)]
00007FF7077AB190  call        __CheckForDebuggerJustMyCode (07FF70779D5D7h)
		constexpr uint16_t scale = (uint16_t)(1.3f * 128);
00007FF7077AB195  mov         eax,0A6h
00007FF7077AB19A  mov         word ptr [scale],ax
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF7077AB19E  mov         qword ptr [y],0
00007FF7077AB1A6  jmp         c::scale_13+63h (07FF7077AB1B3h)
00007FF7077AB1A8  mov         rax,qword ptr [y]
00007FF7077AB1AC  inc         rax
00007FF7077AB1AF  mov         qword ptr [y],rax
00007FF7077AB1B3  mov         rax,qword ptr [y_size]
00007FF7077AB1BA  cmp         qword ptr [y],rax
00007FF7077AB1BE  jae         c::scale_13+118h (07FF7077AB268h)
			for (x = 0; x < x_size; x += 1) {
00007FF7077AB1C4  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF7077AB1CC  jmp         c::scale_13+89h (07FF7077AB1D9h)
00007FF7077AB1CE  mov         rax,qword ptr [x]
00007FF7077AB1D2  inc         rax
00007FF7077AB1D5  mov         qword ptr [x],rax
00007FF7077AB1D9  mov         rax,qword ptr [x_size]
00007FF7077AB1E0  cmp         qword ptr [x],rax
00007FF7077AB1E4  jae         c::scale_13+113h (07FF7077AB263h)
				size_t pos = y * x_size + x;
00007FF7077AB1E6  mov         rax,qword ptr [y]
00007FF7077AB1EA  imul        rax,qword ptr [x_size]
00007FF7077AB1F2  add         rax,qword ptr [x]
00007FF7077AB1F6  mov         qword ptr [rbp+68h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 7);
00007FF7077AB1FA  mov         rax,qword ptr [rbp+68h]
00007FF7077AB1FE  mov         rcx,qword ptr [in]
00007FF7077AB205  add         rcx,rax
00007FF7077AB208  mov         rax,rcx
00007FF7077AB20B  movzx       eax,byte ptr [rax]
00007FF7077AB20E  cmp         eax,0C5h
00007FF7077AB213  jl          c::scale_13+0D1h (07FF7077AB221h)
00007FF7077AB215  mov         dword ptr [rbp+134h],0FFh
00007FF7077AB21F  jmp         c::scale_13+0F4h (07FF7077AB244h)
00007FF7077AB221  mov         rax,qword ptr [rbp+68h]
00007FF7077AB225  mov         rcx,qword ptr [in]
00007FF7077AB22C  add         rcx,rax
00007FF7077AB22F  mov         rax,rcx
00007FF7077AB232  movzx       eax,byte ptr [rax]
00007FF7077AB235  imul        eax,eax,0A6h
00007FF7077AB23B  sar         eax,7
00007FF7077AB23E  mov         dword ptr [rbp+134h],eax
00007FF7077AB244  mov         rax,qword ptr [rbp+68h]
00007FF7077AB248  mov         rcx,qword ptr [out]
00007FF7077AB24F  add         rcx,rax
00007FF7077AB252  mov         rax,rcx
00007FF7077AB255  movzx       ecx,byte ptr [rbp+134h]
00007FF7077AB25C  mov         byte ptr [rax],cl
			}
00007FF7077AB25E  jmp         c::scale_13+7Eh (07FF7077AB1CEh)
		}
00007FF7077AB263  jmp         c::scale_13+58h (07FF7077AB1A8h)
	};
00007FF7077AB268  lea         rsp,[rbp+148h]
00007FF7077AB26F  pop         rdi
00007FF7077AB270  pop         rbp
00007FF7077AB271  ret
