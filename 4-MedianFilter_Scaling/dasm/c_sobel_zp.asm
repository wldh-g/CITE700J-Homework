; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7D8140EB0  mov         qword ptr [rsp+20h],r9
00007FF7D8140EB5  mov         qword ptr [rsp+18h],r8
00007FF7D8140EBA  mov         qword ptr [rsp+10h],rdx
00007FF7D8140EBF  mov         qword ptr [rsp+8],rcx
00007FF7D8140EC4  push        rbp
00007FF7D8140EC5  push        rdi
00007FF7D8140EC6  sub         rsp,3B8h
00007FF7D8140ECD  lea         rbp,[rsp+20h]
00007FF7D8140ED2  mov         rdi,rsp
00007FF7D8140ED5  mov         ecx,0EEh
00007FF7D8140EDA  mov         eax,0CCCCCCCCh
00007FF7D8140EDF  rep stos    dword ptr [rdi]
00007FF7D8140EE1  mov         rcx,qword ptr [rsp+3D8h]
00007FF7D8140EE9  lea         rcx,[__64DFAD88_Func_C@cpp (07FF7D81B1053h)]
00007FF7D8140EF0  call        __CheckForDebuggerJustMyCode (07FF7D8137541h)
		size_t x, y, fx, fy;
		const size_t x_2plus = x_size + 2;
00007FF7D8140EF5  mov         rax,qword ptr [x_size]
00007FF7D8140EFC  add         rax,2
00007FF7D8140F00  mov         qword ptr [x_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2)] { 0 };
00007FF7D8140F07  mov         rax,qword ptr [y_size]
00007FF7D8140F0E  add         rax,2
00007FF7D8140F12  mov         rcx,qword ptr [x_2plus]
00007FF7D8140F19  imul        rcx,rax
00007FF7D8140F1D  mov         rax,rcx
00007FF7D8140F20  mov         qword ptr [rbp+328h],rax
00007FF7D8140F27  mov         rcx,qword ptr [rbp+328h]
00007FF7D8140F2E  call        operator new[] (07FF7D8138B85h)
00007FF7D8140F33  mov         qword ptr [rbp+348h],rax
00007FF7D8140F3A  cmp         qword ptr [rbp+348h],0
00007FF7D8140F42  je          c::sobel_zp+0E5h (07FF7D8140F95h)
00007FF7D8140F44  mov         rdi,qword ptr [rbp+348h]
00007FF7D8140F4B  xor         eax,eax
00007FF7D8140F4D  mov         rcx,qword ptr [rbp+328h]
00007FF7D8140F54  rep stos    byte ptr [rdi]
00007FF7D8140F56  cmp         qword ptr [rbp+348h],0
00007FF7D8140F5E  je          c::sobel_zp+0CAh (07FF7D8140F7Ah)
00007FF7D8140F60  mov         rax,qword ptr [rbp+348h]
00007FF7D8140F67  mov         byte ptr [rax],0
00007FF7D8140F6A  mov         rax,qword ptr [rbp+348h]
00007FF7D8140F71  mov         qword ptr [rbp+378h],rax
00007FF7D8140F78  jmp         c::sobel_zp+0D5h (07FF7D8140F85h)
00007FF7D8140F7A  mov         qword ptr [rbp+378h],0
00007FF7D8140F85  mov         rax,qword ptr [rbp+378h]
00007FF7D8140F8C  mov         qword ptr [rbp+380h],rax
00007FF7D8140F93  jmp         c::sobel_zp+0F0h (07FF7D8140FA0h)
00007FF7D8140F95  mov         qword ptr [rbp+380h],0
00007FF7D8140FA0  mov         rax,qword ptr [rbp+380h]
00007FF7D8140FA7  mov         qword ptr [padded_img],rax
		for (y = 0; y < y_size; y += 1) {
00007FF7D8140FAE  mov         qword ptr [y],0
00007FF7D8140FB6  jmp         c::sobel_zp+113h (07FF7D8140FC3h)
00007FF7D8140FB8  mov         rax,qword ptr [y]
00007FF7D8140FBC  inc         rax
00007FF7D8140FBF  mov         qword ptr [y],rax
00007FF7D8140FC3  mov         rax,qword ptr [y_size]
00007FF7D8140FCA  cmp         qword ptr [y],rax
00007FF7D8140FCE  jae         c::sobel_zp+165h (07FF7D8141015h)
			memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
00007FF7D8140FD0  mov         rax,qword ptr [y]
00007FF7D8140FD4  imul        rax,qword ptr [x_size]
00007FF7D8140FDC  mov         rcx,qword ptr [in]
00007FF7D8140FE3  add         rcx,rax
00007FF7D8140FE6  mov         rax,rcx
00007FF7D8140FE9  mov         rcx,qword ptr [y]
00007FF7D8140FED  inc         rcx
00007FF7D8140FF0  imul        rcx,qword ptr [x_2plus]
00007FF7D8140FF8  mov         rdx,qword ptr [padded_img]
00007FF7D8140FFF  lea         rcx,[rdx+rcx+1]
00007FF7D8141004  mov         r8,qword ptr [x_size]
00007FF7D814100B  mov         rdx,rax
00007FF7D814100E  call        memcpy (07FF7D8138A09h)
		}
00007FF7D8141013  jmp         c::sobel_zp+108h (07FF7D8140FB8h)
		auto gx = filt::sobel_x;
00007FF7D8141015  mov         rax,qword ptr [filt::sobel_x (07FF7D81A5AF0h)]
00007FF7D814101C  mov         qword ptr [gx],rax
		auto gy = filt::sobel_y;
00007FF7D8141023  mov         rax,qword ptr [filt::sobel_y (07FF7D81A5B00h)]
00007FF7D814102A  mov         qword ptr [gy],rax
		int32_t tmpx, tmpy, tmp;
		for (y = 0; y < y_size; y += 1) {
00007FF7D8141031  mov         qword ptr [y],0
00007FF7D8141039  jmp         c::sobel_zp+196h (07FF7D8141046h)
00007FF7D814103B  mov         rax,qword ptr [y]
00007FF7D814103F  inc         rax
00007FF7D8141042  mov         qword ptr [y],rax
00007FF7D8141046  mov         rax,qword ptr [y_size]
00007FF7D814104D  cmp         qword ptr [y],rax
00007FF7D8141051  jae         c::sobel_zp+3EAh (07FF7D814129Ah)
			for (x = 0; x < x_size; x += 1) {
00007FF7D8141057  mov         qword ptr [x],0
00007FF7D814105F  jmp         c::sobel_zp+1BCh (07FF7D814106Ch)
00007FF7D8141061  mov         rax,qword ptr [x]
00007FF7D8141065  inc         rax
00007FF7D8141068  mov         qword ptr [x],rax
00007FF7D814106C  mov         rax,qword ptr [x_size]
00007FF7D8141073  cmp         qword ptr [x],rax
00007FF7D8141077  jae         c::sobel_zp+3E5h (07FF7D8141295h)
				size_t pos = y * x_size + x;
00007FF7D814107D  mov         rax,qword ptr [y]
00007FF7D8141081  imul        rax,qword ptr [x_size]
00007FF7D8141089  add         rax,qword ptr [x]
00007FF7D814108D  mov         qword ptr [rbp+168h],rax
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D8141094  mov         rax,qword ptr [y]
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D8141098  imul        rax,qword ptr [x_2plus]
00007FF7D81410A0  mov         rcx,qword ptr [padded_img]
00007FF7D81410A7  add         rcx,rax
00007FF7D81410AA  mov         rax,rcx
00007FF7D81410AD  add         rax,qword ptr [x]
00007FF7D81410B1  mov         qword ptr [rbp+188h],rax
				tmpx = 0;
00007FF7D81410B8  mov         dword ptr [tmpx],0
				tmpy = 0;
00007FF7D81410C2  mov         dword ptr [tmpy],0
				for (fy = 0; fy < 3; fy += 1) {
00007FF7D81410CC  mov         qword ptr [fy],0
00007FF7D81410D4  jmp         c::sobel_zp+231h (07FF7D81410E1h)
00007FF7D81410D6  mov         rax,qword ptr [fy]
00007FF7D81410DA  inc         rax
00007FF7D81410DD  mov         qword ptr [fy],rax
00007FF7D81410E1  cmp         qword ptr [fy],3
00007FF7D81410E6  jae         c::sobel_zp+324h (07FF7D81411D4h)
					for (fx = 0; fx < 3; fx += 1) {
00007FF7D81410EC  mov         qword ptr [fx],0
00007FF7D81410F4  jmp         c::sobel_zp+251h (07FF7D8141101h)
00007FF7D81410F6  mov         rax,qword ptr [fx]
00007FF7D81410FA  inc         rax
00007FF7D81410FD  mov         qword ptr [fx],rax
00007FF7D8141101  cmp         qword ptr [fx],3
00007FF7D8141106  jae         c::sobel_zp+31Fh (07FF7D81411CFh)
						tmpx += *(gx->kernel + fy * gx->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D814110C  mov         rax,qword ptr [gx]
00007FF7D8141113  mov         rcx,qword ptr [fy]
00007FF7D8141117  imul        rcx,qword ptr [rax]
00007FF7D814111B  mov         rax,rcx
00007FF7D814111E  mov         rcx,qword ptr [gx]
00007FF7D8141125  mov         rcx,qword ptr [rcx+10h]
00007FF7D8141129  add         rcx,rax
00007FF7D814112C  mov         rax,rcx
00007FF7D814112F  mov         rcx,qword ptr [fx]
00007FF7D8141133  movsx       eax,byte ptr [rax+rcx]
00007FF7D8141137  mov         rcx,qword ptr [fy]
00007FF7D814113B  imul        rcx,qword ptr [x_2plus]
00007FF7D8141143  mov         rdx,qword ptr [rbp+188h]
00007FF7D814114A  add         rdx,rcx
00007FF7D814114D  mov         rcx,rdx
00007FF7D8141150  mov         rdx,qword ptr [fx]
00007FF7D8141154  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D8141158  imul        eax,ecx
00007FF7D814115B  mov         ecx,dword ptr [tmpx]
00007FF7D8141161  add         ecx,eax
00007FF7D8141163  mov         eax,ecx
00007FF7D8141165  mov         dword ptr [tmpx],eax
						tmpy += *(gy->kernel + fy * gy->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D814116B  mov         rax,qword ptr [gy]
00007FF7D8141172  mov         rcx,qword ptr [fy]
00007FF7D8141176  imul        rcx,qword ptr [rax]
00007FF7D814117A  mov         rax,rcx
00007FF7D814117D  mov         rcx,qword ptr [gy]
00007FF7D8141184  mov         rcx,qword ptr [rcx+10h]
00007FF7D8141188  add         rcx,rax
00007FF7D814118B  mov         rax,rcx
00007FF7D814118E  mov         rcx,qword ptr [fx]
00007FF7D8141192  movsx       eax,byte ptr [rax+rcx]
00007FF7D8141196  mov         rcx,qword ptr [fy]
00007FF7D814119A  imul        rcx,qword ptr [x_2plus]
00007FF7D81411A2  mov         rdx,qword ptr [rbp+188h]
00007FF7D81411A9  add         rdx,rcx
00007FF7D81411AC  mov         rcx,rdx
00007FF7D81411AF  mov         rdx,qword ptr [fx]
00007FF7D81411B3  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D81411B7  imul        eax,ecx
00007FF7D81411BA  mov         ecx,dword ptr [tmpy]
00007FF7D81411C0  add         ecx,eax
00007FF7D81411C2  mov         eax,ecx
00007FF7D81411C4  mov         dword ptr [tmpy],eax
					}
00007FF7D81411CA  jmp         c::sobel_zp+246h (07FF7D81410F6h)
				}
00007FF7D81411CF  jmp         c::sobel_zp+226h (07FF7D81410D6h)
				tmpx /= gx->scale;
00007FF7D81411D4  mov         eax,dword ptr [tmpx]
00007FF7D81411DA  cdq
00007FF7D81411DB  mov         rcx,qword ptr [gx]
00007FF7D81411E2  idiv        eax,dword ptr [rcx+1Ch]
00007FF7D81411E5  mov         dword ptr [tmpx],eax
				tmpy /= gy->scale;
00007FF7D81411EB  mov         eax,dword ptr [tmpy]
00007FF7D81411F1  cdq
00007FF7D81411F2  mov         rcx,qword ptr [gy]
00007FF7D81411F9  idiv        eax,dword ptr [rcx+1Ch]
00007FF7D81411FC  mov         dword ptr [tmpy],eax
				tmp = std::abs(tmpx) + std::abs(tmpy); // This was more clear than sqrt
00007FF7D8141202  mov         ecx,dword ptr [tmpx]
00007FF7D8141208  call        abs (07FF7D8138432h)
00007FF7D814120D  mov         dword ptr [rbp+374h],eax
00007FF7D8141213  mov         ecx,dword ptr [tmpy]
00007FF7D8141219  call        abs (07FF7D8138432h)
00007FF7D814121E  mov         ecx,dword ptr [rbp+374h]
00007FF7D8141224  add         ecx,eax
00007FF7D8141226  mov         eax,ecx
00007FF7D8141228  mov         dword ptr [tmp],eax
				*(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
00007FF7D814122E  cmp         dword ptr [tmp],0
00007FF7D8141235  jl          c::sobel_zp+3B9h (07FF7D8141269h)
00007FF7D8141237  cmp         dword ptr [tmp],0FFh
00007FF7D8141241  jg          c::sobel_zp+3A1h (07FF7D8141251h)
00007FF7D8141243  mov         eax,dword ptr [tmp]
00007FF7D8141249  mov         dword ptr [rbp+374h],eax
00007FF7D814124F  jmp         c::sobel_zp+3ABh (07FF7D814125Bh)
00007FF7D8141251  mov         dword ptr [rbp+374h],0FFh
00007FF7D814125B  mov         eax,dword ptr [rbp+374h]
00007FF7D8141261  mov         dword ptr [rbp+378h],eax
00007FF7D8141267  jmp         c::sobel_zp+3C3h (07FF7D8141273h)
00007FF7D8141269  mov         dword ptr [rbp+378h],0
00007FF7D8141273  mov         rax,qword ptr [rbp+168h]
00007FF7D814127A  mov         rcx,qword ptr [out]
00007FF7D8141281  add         rcx,rax
00007FF7D8141284  mov         rax,rcx
00007FF7D8141287  movzx       ecx,byte ptr [rbp+378h]
00007FF7D814128E  mov         byte ptr [rax],cl
			}
00007FF7D8141290  jmp         c::sobel_zp+1B1h (07FF7D8141061h)
		}
00007FF7D8141295  jmp         c::sobel_zp+18Bh (07FF7D814103Bh)
		delete[] padded_img;
00007FF7D814129A  mov         rax,qword ptr [padded_img]
00007FF7D81412A1  mov         qword ptr [rbp+368h],rax
00007FF7D81412A8  mov         rcx,qword ptr [rbp+368h]
00007FF7D81412AF  call        operator delete[] (07FF7D81382EDh)
00007FF7D81412B4  cmp         qword ptr [rbp+368h],0
00007FF7D81412BC  jne         c::sobel_zp+41Bh (07FF7D81412CBh)
00007FF7D81412BE  mov         qword ptr [rbp+378h],0
00007FF7D81412C9  jmp         c::sobel_zp+434h (07FF7D81412E4h)
00007FF7D81412CB  mov         qword ptr [padded_img],8123h
00007FF7D81412D6  mov         rax,qword ptr [padded_img]
00007FF7D81412DD  mov         qword ptr [rbp+378h],rax
	};
00007FF7D81412E4  lea         rsp,[rbp+398h]
00007FF7D81412EB  pop         rdi
00007FF7D81412EC  pop         rbp
00007FF7D81412ED  ret
