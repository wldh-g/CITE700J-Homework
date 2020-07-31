; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size) {
00007FF7D813EF70  mov         qword ptr [rsp+20h],r9
00007FF7D813EF75  mov         qword ptr [rsp+18h],r8
00007FF7D813EF7A  mov         qword ptr [rsp+10h],rdx
00007FF7D813EF7F  mov         qword ptr [rsp+8],rcx
00007FF7D813EF84  push        rbp
00007FF7D813EF85  push        rdi
00007FF7D813EF86  sub         rsp,2D8h
00007FF7D813EF8D  lea         rbp,[rsp+20h]
00007FF7D813EF92  mov         rdi,rsp
00007FF7D813EF95  mov         ecx,0B6h
00007FF7D813EF9A  mov         eax,0CCCCCCCCh
00007FF7D813EF9F  rep stos    dword ptr [rdi]
00007FF7D813EFA1  mov         rcx,qword ptr [rsp+2F8h]
00007FF7D813EFA9  lea         rcx,[__64DFAD88_Func_C@cpp (07FF7D81B1053h)]
00007FF7D813EFB0  call        __CheckForDebuggerJustMyCode (07FF7D8137541h)
		size_t x, y, fx, fy;
		const size_t plus = (filter->size - 1) / 2;
00007FF7D813EFB5  mov         rax,qword ptr [filter]
00007FF7D813EFBC  mov         rax,qword ptr [rax]
00007FF7D813EFBF  dec         rax
00007FF7D813EFC2  xor         edx,edx
00007FF7D813EFC4  mov         ecx,2
00007FF7D813EFC9  div         rax,rcx
00007FF7D813EFCC  mov         qword ptr [plus],rax
		const size_t x_2plus = x_size + 2 * plus;
00007FF7D813EFD3  mov         rax,qword ptr [x_size]
00007FF7D813EFDA  mov         rcx,qword ptr [plus]
00007FF7D813EFE1  lea         rax,[rax+rcx*2]
00007FF7D813EFE5  mov         qword ptr [x_2plus],rax
		const size_t y_2plus = y_size + 2 * plus;
00007FF7D813EFEC  mov         rax,qword ptr [y_size]
00007FF7D813EFF3  mov         rcx,qword ptr [plus]
00007FF7D813EFFA  lea         rax,[rax+rcx*2]
00007FF7D813EFFE  mov         qword ptr [y_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
00007FF7D813F005  mov         rax,qword ptr [x_2plus]
00007FF7D813F00C  imul        rax,qword ptr [y_2plus]
00007FF7D813F014  mov         qword ptr [rbp+248h],rax
00007FF7D813F01B  mov         rcx,qword ptr [rbp+248h]
00007FF7D813F022  call        operator new[] (07FF7D8138B85h)
00007FF7D813F027  mov         qword ptr [rbp+268h],rax
00007FF7D813F02E  cmp         qword ptr [rbp+268h],0
00007FF7D813F036  je          c::conv_be_signed+119h (07FF7D813F089h)
00007FF7D813F038  mov         rdi,qword ptr [rbp+268h]
00007FF7D813F03F  xor         eax,eax
00007FF7D813F041  mov         rcx,qword ptr [rbp+248h]
00007FF7D813F048  rep stos    byte ptr [rdi]
00007FF7D813F04A  cmp         qword ptr [rbp+268h],0
00007FF7D813F052  je          c::conv_be_signed+0FEh (07FF7D813F06Eh)
00007FF7D813F054  mov         rax,qword ptr [rbp+268h]
00007FF7D813F05B  mov         byte ptr [rax],0
00007FF7D813F05E  mov         rax,qword ptr [rbp+268h]
00007FF7D813F065  mov         qword ptr [rbp+298h],rax
00007FF7D813F06C  jmp         c::conv_be_signed+109h (07FF7D813F079h)
00007FF7D813F06E  mov         qword ptr [rbp+298h],0
00007FF7D813F079  mov         rax,qword ptr [rbp+298h]
00007FF7D813F080  mov         qword ptr [rbp+2A0h],rax
00007FF7D813F087  jmp         c::conv_be_signed+124h (07FF7D813F094h)
00007FF7D813F089  mov         qword ptr [rbp+2A0h],0
00007FF7D813F094  mov         rax,qword ptr [rbp+2A0h]
00007FF7D813F09B  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF7D813F0A2  mov         rax,qword ptr [y_size]
00007FF7D813F0A9  dec         rax
00007FF7D813F0AC  imul        rax,qword ptr [x_size]
00007FF7D813F0B4  mov         rcx,qword ptr [in]
00007FF7D813F0BB  add         rcx,rax
00007FF7D813F0BE  mov         rax,rcx
00007FF7D813F0C1  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF7D813F0C8  mov         qword ptr [y],0
		for (y = 0; y < y_size; y += 1) {
00007FF7D813F0D0  jmp         c::conv_be_signed+16Dh (07FF7D813F0DDh)
00007FF7D813F0D2  mov         rax,qword ptr [y]
00007FF7D813F0D6  inc         rax
00007FF7D813F0D9  mov         qword ptr [y],rax
00007FF7D813F0DD  mov         rax,qword ptr [y_size]
00007FF7D813F0E4  cmp         qword ptr [y],rax
00007FF7D813F0E8  jae         c::conv_be_signed+1D1h (07FF7D813F141h)
			memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
00007FF7D813F0EA  mov         rax,qword ptr [y]
00007FF7D813F0EE  imul        rax,qword ptr [x_size]
00007FF7D813F0F6  mov         rcx,qword ptr [in]
00007FF7D813F0FD  add         rcx,rax
00007FF7D813F100  mov         rax,rcx
00007FF7D813F103  mov         rcx,qword ptr [plus]
00007FF7D813F10A  mov         rdx,qword ptr [y]
00007FF7D813F10E  add         rdx,rcx
00007FF7D813F111  mov         rcx,rdx
00007FF7D813F114  imul        rcx,qword ptr [x_2plus]
00007FF7D813F11C  mov         rdx,qword ptr [padded_img]
00007FF7D813F123  add         rdx,rcx
00007FF7D813F126  mov         rcx,rdx
00007FF7D813F129  add         rcx,qword ptr [plus]
00007FF7D813F130  mov         r8,qword ptr [x_size]
00007FF7D813F137  mov         rdx,rax
00007FF7D813F13A  call        memcpy (07FF7D8138A09h)
		}
00007FF7D813F13F  jmp         c::conv_be_signed+162h (07FF7D813F0D2h)
		for (y = 0; y < plus; y += 1) {
00007FF7D813F141  mov         qword ptr [y],0
00007FF7D813F149  jmp         c::conv_be_signed+1E6h (07FF7D813F156h)
00007FF7D813F14B  mov         rax,qword ptr [y]
00007FF7D813F14F  inc         rax
		for (y = 0; y < plus; y += 1) {
00007FF7D813F152  mov         qword ptr [y],rax
00007FF7D813F156  mov         rax,qword ptr [plus]
00007FF7D813F15D  cmp         qword ptr [y],rax
00007FF7D813F161  jae         c::conv_be_signed+27Ch (07FF7D813F1ECh)
			memcpy(padded_img + y * x_2plus + plus, in, x_size);
00007FF7D813F167  mov         rax,qword ptr [y]
00007FF7D813F16B  imul        rax,qword ptr [x_2plus]
00007FF7D813F173  mov         rcx,qword ptr [padded_img]
00007FF7D813F17A  add         rcx,rax
00007FF7D813F17D  mov         rax,rcx
00007FF7D813F180  add         rax,qword ptr [plus]
00007FF7D813F187  mov         r8,qword ptr [x_size]
00007FF7D813F18E  mov         rdx,qword ptr [in]
00007FF7D813F195  mov         rcx,rax
00007FF7D813F198  call        memcpy (07FF7D8138A09h)
			memcpy(padded_img + (y_size + plus + y) * x_2plus + plus, in_last_line, x_size);
00007FF7D813F19D  mov         rax,qword ptr [plus]
00007FF7D813F1A4  mov         rcx,qword ptr [y_size]
00007FF7D813F1AB  add         rcx,rax
00007FF7D813F1AE  mov         rax,rcx
00007FF7D813F1B1  add         rax,qword ptr [y]
00007FF7D813F1B5  imul        rax,qword ptr [x_2plus]
00007FF7D813F1BD  mov         rcx,qword ptr [padded_img]
00007FF7D813F1C4  add         rcx,rax
00007FF7D813F1C7  mov         rax,rcx
00007FF7D813F1CA  add         rax,qword ptr [plus]
00007FF7D813F1D1  mov         r8,qword ptr [x_size]
00007FF7D813F1D8  mov         rdx,qword ptr [in_last_line]
00007FF7D813F1DF  mov         rcx,rax
00007FF7D813F1E2  call        memcpy (07FF7D8138A09h)
		}
00007FF7D813F1E7  jmp         c::conv_be_signed+1DBh (07FF7D813F14Bh)
		for (y = 0; y < y_2plus; y += 1) {
00007FF7D813F1EC  mov         qword ptr [y],0
00007FF7D813F1F4  jmp         c::conv_be_signed+291h (07FF7D813F201h)
00007FF7D813F1F6  mov         rax,qword ptr [y]
00007FF7D813F1FA  inc         rax
00007FF7D813F1FD  mov         qword ptr [y],rax
00007FF7D813F201  mov         rax,qword ptr [y_2plus]
00007FF7D813F208  cmp         qword ptr [y],rax
00007FF7D813F20C  jae         c::conv_be_signed+350h (07FF7D813F2C0h)
			memcpy(padded_img + y * x_2plus, padded_img + y * x_2plus + plus, plus);
00007FF7D813F212  mov         rax,qword ptr [y]
00007FF7D813F216  imul        rax,qword ptr [x_2plus]
00007FF7D813F21E  mov         rcx,qword ptr [padded_img]
00007FF7D813F225  add         rcx,rax
00007FF7D813F228  mov         rax,rcx
00007FF7D813F22B  add         rax,qword ptr [plus]
00007FF7D813F232  mov         rcx,qword ptr [y]
00007FF7D813F236  imul        rcx,qword ptr [x_2plus]
00007FF7D813F23E  mov         rdx,qword ptr [padded_img]
00007FF7D813F245  add         rdx,rcx
00007FF7D813F248  mov         rcx,rdx
00007FF7D813F24B  mov         r8,qword ptr [plus]
00007FF7D813F252  mov         rdx,rax
00007FF7D813F255  call        memcpy (07FF7D8138A09h)
			memcpy(padded_img + (y + 1) * x_2plus - plus - 1,
00007FF7D813F25A  mov         rax,qword ptr [y]
			memcpy(padded_img + (y + 1) * x_2plus - plus - 1,
00007FF7D813F25E  inc         rax
00007FF7D813F261  imul        rax,qword ptr [x_2plus]
00007FF7D813F269  mov         rcx,qword ptr [padded_img]
00007FF7D813F270  add         rcx,rax
00007FF7D813F273  mov         rax,rcx
00007FF7D813F276  mov         rcx,qword ptr [plus]
00007FF7D813F27D  shl         rcx,1
00007FF7D813F280  sub         rax,rcx
00007FF7D813F283  dec         rax
00007FF7D813F286  mov         rcx,qword ptr [y]
00007FF7D813F28A  inc         rcx
00007FF7D813F28D  imul        rcx,qword ptr [x_2plus]
00007FF7D813F295  mov         rdx,qword ptr [padded_img]
00007FF7D813F29C  add         rdx,rcx
00007FF7D813F29F  mov         rcx,rdx
00007FF7D813F2A2  sub         rcx,qword ptr [plus]
00007FF7D813F2A9  dec         rcx
00007FF7D813F2AC  mov         r8,qword ptr [plus]
00007FF7D813F2B3  mov         rdx,rax
00007FF7D813F2B6  call        memcpy (07FF7D8138A09h)
						 padded_img + (y + 1) * x_2plus - 2 * plus - 1, plus);
		}
00007FF7D813F2BB  jmp         c::conv_be_signed+286h (07FF7D813F1F6h)
		int32_t tmp;
		for (y = 0; y < y_size; y += 1) {
00007FF7D813F2C0  mov         qword ptr [y],0
00007FF7D813F2C8  jmp         c::conv_be_signed+365h (07FF7D813F2D5h)
00007FF7D813F2CA  mov         rax,qword ptr [y]
00007FF7D813F2CE  inc         rax
00007FF7D813F2D1  mov         qword ptr [y],rax
00007FF7D813F2D5  mov         rax,qword ptr [y_size]
00007FF7D813F2DC  cmp         qword ptr [y],rax
00007FF7D813F2E0  jae         c::conv_be_signed+515h (07FF7D813F485h)
			for (x = 0; x < x_size; x += 1) {
00007FF7D813F2E6  mov         qword ptr [x],0
00007FF7D813F2EE  jmp         c::conv_be_signed+38Bh (07FF7D813F2FBh)
00007FF7D813F2F0  mov         rax,qword ptr [x]
00007FF7D813F2F4  inc         rax
00007FF7D813F2F7  mov         qword ptr [x],rax
00007FF7D813F2FB  mov         rax,qword ptr [x_size]
00007FF7D813F302  cmp         qword ptr [x],rax
00007FF7D813F306  jae         c::conv_be_signed+510h (07FF7D813F480h)
				size_t pos = y * x_size + x;
00007FF7D813F30C  mov         rax,qword ptr [y]
00007FF7D813F310  imul        rax,qword ptr [x_size]
00007FF7D813F318  add         rax,qword ptr [x]
00007FF7D813F31C  mov         qword ptr [rbp+148h],rax
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D813F323  mov         rax,qword ptr [y]
00007FF7D813F327  imul        rax,qword ptr [x_2plus]
00007FF7D813F32F  mov         rcx,qword ptr [padded_img]
00007FF7D813F336  add         rcx,rax
00007FF7D813F339  mov         rax,rcx
00007FF7D813F33C  add         rax,qword ptr [x]
00007FF7D813F340  mov         qword ptr [rbp+168h],rax
				tmp = 0;
00007FF7D813F347  mov         dword ptr [tmp],0
				for (fy = 0; fy < filter->size; fy += 1) {
00007FF7D813F351  mov         qword ptr [fy],0
00007FF7D813F359  jmp         c::conv_be_signed+3F6h (07FF7D813F366h)
00007FF7D813F35B  mov         rax,qword ptr [fy]
00007FF7D813F35F  inc         rax
00007FF7D813F362  mov         qword ptr [fy],rax
00007FF7D813F366  mov         rax,qword ptr [filter]
00007FF7D813F36D  mov         rax,qword ptr [rax]
00007FF7D813F370  cmp         qword ptr [fy],rax
00007FF7D813F374  jae         c::conv_be_signed+495h (07FF7D813F405h)
					for (fx = 0; fx < filter->size; fx += 1) {
00007FF7D813F37A  mov         qword ptr [fx],0
00007FF7D813F382  jmp         c::conv_be_signed+41Fh (07FF7D813F38Fh)
00007FF7D813F384  mov         rax,qword ptr [fx]
00007FF7D813F388  inc         rax
00007FF7D813F38B  mov         qword ptr [fx],rax
00007FF7D813F38F  mov         rax,qword ptr [filter]
00007FF7D813F396  mov         rax,qword ptr [rax]
00007FF7D813F399  cmp         qword ptr [fx],rax
00007FF7D813F39D  jae         c::conv_be_signed+490h (07FF7D813F400h)
						tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D813F39F  mov         rax,qword ptr [filter]
00007FF7D813F3A6  mov         rcx,qword ptr [fy]
00007FF7D813F3AA  imul        rcx,qword ptr [rax]
00007FF7D813F3AE  mov         rax,rcx
00007FF7D813F3B1  mov         rcx,qword ptr [filter]
00007FF7D813F3B8  mov         rcx,qword ptr [rcx+10h]
00007FF7D813F3BC  add         rcx,rax
00007FF7D813F3BF  mov         rax,rcx
00007FF7D813F3C2  mov         rcx,qword ptr [fx]
00007FF7D813F3C6  movsx       eax,byte ptr [rax+rcx]
00007FF7D813F3CA  mov         rcx,qword ptr [fy]
00007FF7D813F3CE  imul        rcx,qword ptr [x_2plus]
00007FF7D813F3D6  mov         rdx,qword ptr [rbp+168h]
00007FF7D813F3DD  add         rdx,rcx
00007FF7D813F3E0  mov         rcx,rdx
00007FF7D813F3E3  mov         rdx,qword ptr [fx]
00007FF7D813F3E7  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D813F3EB  imul        eax,ecx
00007FF7D813F3EE  mov         ecx,dword ptr [tmp]
00007FF7D813F3F4  add         ecx,eax
00007FF7D813F3F6  mov         eax,ecx
00007FF7D813F3F8  mov         dword ptr [tmp],eax
					}
00007FF7D813F3FE  jmp         c::conv_be_signed+414h (07FF7D813F384h)
				}
00007FF7D813F400  jmp         c::conv_be_signed+3EBh (07FF7D813F35Bh)
				tmp /= filter->kernel_sum;
00007FF7D813F405  mov         eax,dword ptr [tmp]
00007FF7D813F40B  cdq
00007FF7D813F40C  mov         rcx,qword ptr [filter]
00007FF7D813F413  idiv        eax,dword ptr [rcx+18h]
00007FF7D813F416  mov         dword ptr [tmp],eax
				*(out + pos) = (int8_t)(tmp >= -128 ? (tmp <= 127 ? tmp : 127) : -128);
00007FF7D813F41C  cmp         dword ptr [tmp],0FFFFFF80h
00007FF7D813F423  jl          c::conv_be_signed+4E4h (07FF7D813F454h)
00007FF7D813F425  cmp         dword ptr [tmp],7Fh
00007FF7D813F42C  jg          c::conv_be_signed+4CCh (07FF7D813F43Ch)
00007FF7D813F42E  mov         eax,dword ptr [tmp]
00007FF7D813F434  mov         dword ptr [rbp+294h],eax
00007FF7D813F43A  jmp         c::conv_be_signed+4D6h (07FF7D813F446h)
00007FF7D813F43C  mov         dword ptr [rbp+294h],7Fh
00007FF7D813F446  mov         eax,dword ptr [rbp+294h]
00007FF7D813F44C  mov         dword ptr [rbp+298h],eax
00007FF7D813F452  jmp         c::conv_be_signed+4EEh (07FF7D813F45Eh)
00007FF7D813F454  mov         dword ptr [rbp+298h],0FFFFFF80h
00007FF7D813F45E  mov         rax,qword ptr [rbp+148h]
00007FF7D813F465  mov         rcx,qword ptr [out]
00007FF7D813F46C  add         rcx,rax
00007FF7D813F46F  mov         rax,rcx
00007FF7D813F472  movzx       ecx,byte ptr [rbp+298h]
00007FF7D813F479  mov         byte ptr [rax],cl
			}
00007FF7D813F47B  jmp         c::conv_be_signed+380h (07FF7D813F2F0h)
		}
00007FF7D813F480  jmp         c::conv_be_signed+35Ah (07FF7D813F2CAh)
		delete[] padded_img;
00007FF7D813F485  mov         rax,qword ptr [padded_img]
00007FF7D813F48C  mov         qword ptr [rbp+288h],rax
00007FF7D813F493  mov         rcx,qword ptr [rbp+288h]
00007FF7D813F49A  call        operator delete[] (07FF7D81382EDh)
00007FF7D813F49F  cmp         qword ptr [rbp+288h],0
00007FF7D813F4A7  jne         c::conv_be_signed+546h (07FF7D813F4B6h)
00007FF7D813F4A9  mov         qword ptr [rbp+298h],0
00007FF7D813F4B4  jmp         c::conv_be_signed+55Fh (07FF7D813F4CFh)
00007FF7D813F4B6  mov         qword ptr [padded_img],8123h
00007FF7D813F4C1  mov         rax,qword ptr [padded_img]
00007FF7D813F4C8  mov         qword ptr [rbp+298h],rax
	};
00007FF7D813F4CF  lea         rsp,[rbp+2B8h]
00007FF7D813F4D6  pop         rdi
00007FF7D813F4D7  pop         rbp
00007FF7D813F4D8  ret
