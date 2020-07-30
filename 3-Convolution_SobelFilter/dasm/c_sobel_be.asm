	void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7D81407A0  mov         qword ptr [rsp+20h],r9
00007FF7D81407A5  mov         qword ptr [rsp+18h],r8
00007FF7D81407AA  mov         qword ptr [rsp+10h],rdx
00007FF7D81407AF  mov         qword ptr [rsp+8],rcx
00007FF7D81407B4  push        rbp
00007FF7D81407B5  push        rdi
00007FF7D81407B6  sub         rsp,3F8h
00007FF7D81407BD  lea         rbp,[rsp+20h]
00007FF7D81407C2  mov         rdi,rsp
00007FF7D81407C5  mov         ecx,0FEh
00007FF7D81407CA  mov         eax,0CCCCCCCCh
00007FF7D81407CF  rep stos    dword ptr [rdi]
00007FF7D81407D1  mov         rcx,qword ptr [rsp+418h]
00007FF7D81407D9  lea         rcx,[__64DFAD88_Func_C@cpp (07FF7D81B1053h)]
00007FF7D81407E0  call        __CheckForDebuggerJustMyCode (07FF7D8137541h)
		size_t x, y, fx, fy;
		const size_t x_2plus = x_size + 2;
00007FF7D81407E5  mov         rax,qword ptr [x_size]
00007FF7D81407EC  add         rax,2
00007FF7D81407F0  mov         qword ptr [x_2plus],rax
		const size_t y_2plus = y_size + 2;
00007FF7D81407F7  mov         rax,qword ptr [y_size]
00007FF7D81407FE  add         rax,2
00007FF7D8140802  mov         qword ptr [y_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
00007FF7D8140809  mov         rax,qword ptr [x_2plus]
00007FF7D8140810  imul        rax,qword ptr [y_2plus]
00007FF7D8140818  mov         qword ptr [rbp+368h],rax
00007FF7D814081F  mov         rcx,qword ptr [rbp+368h]
00007FF7D8140826  call        operator new[] (07FF7D8138B85h)
00007FF7D814082B  mov         qword ptr [rbp+388h],rax
00007FF7D8140832  cmp         qword ptr [rbp+388h],0
00007FF7D814083A  je          c::sobel_be+0EDh (07FF7D814088Dh)
00007FF7D814083C  mov         rdi,qword ptr [rbp+388h]
00007FF7D8140843  xor         eax,eax
00007FF7D8140845  mov         rcx,qword ptr [rbp+368h]
00007FF7D814084C  rep stos    byte ptr [rdi]
00007FF7D814084E  cmp         qword ptr [rbp+388h],0
00007FF7D8140856  je          c::sobel_be+0D2h (07FF7D8140872h)
00007FF7D8140858  mov         rax,qword ptr [rbp+388h]
00007FF7D814085F  mov         byte ptr [rax],0
00007FF7D8140862  mov         rax,qword ptr [rbp+388h]
00007FF7D8140869  mov         qword ptr [rbp+3B8h],rax
00007FF7D8140870  jmp         c::sobel_be+0DDh (07FF7D814087Dh)
00007FF7D8140872  mov         qword ptr [rbp+3B8h],0
00007FF7D814087D  mov         rax,qword ptr [rbp+3B8h]
00007FF7D8140884  mov         qword ptr [rbp+3C0h],rax
00007FF7D814088B  jmp         c::sobel_be+0F8h (07FF7D8140898h)
00007FF7D814088D  mov         qword ptr [rbp+3C0h],0
00007FF7D8140898  mov         rax,qword ptr [rbp+3C0h]
00007FF7D814089F  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF7D81408A6  mov         rax,qword ptr [y_size]
00007FF7D81408AD  dec         rax
00007FF7D81408B0  imul        rax,qword ptr [x_size]
00007FF7D81408B8  mov         rcx,qword ptr [in]
00007FF7D81408BF  add         rcx,rax
00007FF7D81408C2  mov         rax,rcx
00007FF7D81408C5  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF7D81408CC  mov         qword ptr [y],0
00007FF7D81408D4  jmp         c::sobel_be+141h (07FF7D81408E1h)
00007FF7D81408D6  mov         rax,qword ptr [y]
00007FF7D81408DA  inc         rax
00007FF7D81408DD  mov         qword ptr [y],rax
00007FF7D81408E1  mov         rax,qword ptr [y_size]
00007FF7D81408E8  cmp         qword ptr [y],rax
00007FF7D81408EC  jae         c::sobel_be+193h (07FF7D8140933h)
			memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
00007FF7D81408EE  mov         rax,qword ptr [y]
00007FF7D81408F2  imul        rax,qword ptr [x_size]
00007FF7D81408FA  mov         rcx,qword ptr [in]
00007FF7D8140901  add         rcx,rax
00007FF7D8140904  mov         rax,rcx
00007FF7D8140907  mov         rcx,qword ptr [y]
00007FF7D814090B  inc         rcx
00007FF7D814090E  imul        rcx,qword ptr [x_2plus]
00007FF7D8140916  mov         rdx,qword ptr [padded_img]
00007FF7D814091D  lea         rcx,[rdx+rcx+1]
00007FF7D8140922  mov         r8,qword ptr [x_size]
00007FF7D8140929  mov         rdx,rax
00007FF7D814092C  call        memcpy (07FF7D8138A09h)
		}
00007FF7D8140931  jmp         c::sobel_be+136h (07FF7D81408D6h)
		memcpy(padded_img + 1, in, x_size);
00007FF7D8140933  mov         rax,qword ptr [padded_img]
00007FF7D814093A  inc         rax
00007FF7D814093D  mov         r8,qword ptr [x_size]
00007FF7D8140944  mov         rdx,qword ptr [in]
00007FF7D814094B  mov         rcx,rax
00007FF7D814094E  call        memcpy (07FF7D8138A09h)
		memcpy(padded_img + (y_size + 1) * x_2plus + 1, in_last_line, x_size);
00007FF7D8140953  mov         rax,qword ptr [y_size]
00007FF7D814095A  inc         rax
00007FF7D814095D  imul        rax,qword ptr [x_2plus]
00007FF7D8140965  mov         rcx,qword ptr [padded_img]
00007FF7D814096C  lea         rax,[rcx+rax+1]
00007FF7D8140971  mov         r8,qword ptr [x_size]
00007FF7D8140978  mov         rdx,qword ptr [in_last_line]
00007FF7D814097F  mov         rcx,rax
00007FF7D8140982  call        memcpy (07FF7D8138A09h)
		for (y = 0; y < y_2plus; y += 1) {
00007FF7D8140987  mov         qword ptr [y],0
00007FF7D814098F  jmp         c::sobel_be+1FCh (07FF7D814099Ch)
		for (y = 0; y < y_2plus; y += 1) {
00007FF7D8140991  mov         rax,qword ptr [y]
00007FF7D8140995  inc         rax
00007FF7D8140998  mov         qword ptr [y],rax
00007FF7D814099C  mov         rax,qword ptr [y_2plus]
00007FF7D81409A3  cmp         qword ptr [y],rax
00007FF7D81409A7  jae         c::sobel_be+26Eh (07FF7D8140A0Eh)
			*(padded_img + y * x_2plus) = *(padded_img + y * x_2plus + 1);
00007FF7D81409A9  mov         rax,qword ptr [y]
00007FF7D81409AD  imul        rax,qword ptr [x_2plus]
00007FF7D81409B5  mov         rcx,qword ptr [y]
00007FF7D81409B9  imul        rcx,qword ptr [x_2plus]
00007FF7D81409C1  mov         rdx,qword ptr [padded_img]
00007FF7D81409C8  mov         rdi,qword ptr [padded_img]
00007FF7D81409CF  movzx       eax,byte ptr [rdi+rax+1]
00007FF7D81409D4  mov         byte ptr [rdx+rcx],al
			*(padded_img + (y + 1) * x_2plus - 2) = *(padded_img + (y + 1) * x_2plus - 3);
00007FF7D81409D7  mov         rax,qword ptr [y]
00007FF7D81409DB  inc         rax
00007FF7D81409DE  imul        rax,qword ptr [x_2plus]
00007FF7D81409E6  mov         rcx,qword ptr [y]
00007FF7D81409EA  inc         rcx
00007FF7D81409ED  imul        rcx,qword ptr [x_2plus]
00007FF7D81409F5  mov         rdx,qword ptr [padded_img]
00007FF7D81409FC  mov         rdi,qword ptr [padded_img]
00007FF7D8140A03  movzx       eax,byte ptr [rdi+rax-3]
00007FF7D8140A08  mov         byte ptr [rdx+rcx-2],al
		}
00007FF7D8140A0C  jmp         c::sobel_be+1F1h (07FF7D8140991h)
		auto gx = filt::sobel_x;
00007FF7D8140A0E  mov         rax,qword ptr [filt::sobel_x (07FF7D81A5AF0h)]
00007FF7D8140A15  mov         qword ptr [gx],rax
		auto gy = filt::sobel_y;
00007FF7D8140A1C  mov         rax,qword ptr [filt::sobel_y (07FF7D81A5B00h)]
00007FF7D8140A23  mov         qword ptr [gy],rax
		int32_t tmpx, tmpy, tmp;
		for (y = 0; y < y_size; y += 1) {
00007FF7D8140A2A  mov         qword ptr [y],0
00007FF7D8140A32  jmp         c::sobel_be+29Fh (07FF7D8140A3Fh)
00007FF7D8140A34  mov         rax,qword ptr [y]
00007FF7D8140A38  inc         rax
00007FF7D8140A3B  mov         qword ptr [y],rax
00007FF7D8140A3F  mov         rax,qword ptr [y_size]
00007FF7D8140A46  cmp         qword ptr [y],rax
00007FF7D8140A4A  jae         c::sobel_be+4F3h (07FF7D8140C93h)
			for (x = 0; x < x_size; x += 1) {
00007FF7D8140A50  mov         qword ptr [x],0
00007FF7D8140A58  jmp         c::sobel_be+2C5h (07FF7D8140A65h)
00007FF7D8140A5A  mov         rax,qword ptr [x]
00007FF7D8140A5E  inc         rax
00007FF7D8140A61  mov         qword ptr [x],rax
00007FF7D8140A65  mov         rax,qword ptr [x_size]
00007FF7D8140A6C  cmp         qword ptr [x],rax
00007FF7D8140A70  jae         c::sobel_be+4EEh (07FF7D8140C8Eh)
				size_t pos = y * x_size + x;
00007FF7D8140A76  mov         rax,qword ptr [y]
00007FF7D8140A7A  imul        rax,qword ptr [x_size]
00007FF7D8140A82  add         rax,qword ptr [x]
00007FF7D8140A86  mov         qword ptr [rbp+1A8h],rax
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D8140A8D  mov         rax,qword ptr [y]
00007FF7D8140A91  imul        rax,qword ptr [x_2plus]
00007FF7D8140A99  mov         rcx,qword ptr [padded_img]
00007FF7D8140AA0  add         rcx,rax
00007FF7D8140AA3  mov         rax,rcx
00007FF7D8140AA6  add         rax,qword ptr [x]
00007FF7D8140AAA  mov         qword ptr [rbp+1C8h],rax
				tmpx = 0;
00007FF7D8140AB1  mov         dword ptr [tmpx],0
				tmpy = 0;
00007FF7D8140ABB  mov         dword ptr [tmpy],0
				for (fy = 0; fy < 3; fy += 1) {
00007FF7D8140AC5  mov         qword ptr [fy],0
00007FF7D8140ACD  jmp         c::sobel_be+33Ah (07FF7D8140ADAh)
00007FF7D8140ACF  mov         rax,qword ptr [fy]
00007FF7D8140AD3  inc         rax
00007FF7D8140AD6  mov         qword ptr [fy],rax
00007FF7D8140ADA  cmp         qword ptr [fy],3
00007FF7D8140ADF  jae         c::sobel_be+42Dh (07FF7D8140BCDh)
					for (fx = 0; fx < 3; fx += 1) {
00007FF7D8140AE5  mov         qword ptr [fx],0
00007FF7D8140AED  jmp         c::sobel_be+35Ah (07FF7D8140AFAh)
00007FF7D8140AEF  mov         rax,qword ptr [fx]
00007FF7D8140AF3  inc         rax
00007FF7D8140AF6  mov         qword ptr [fx],rax
00007FF7D8140AFA  cmp         qword ptr [fx],3
00007FF7D8140AFF  jae         c::sobel_be+428h (07FF7D8140BC8h)
						tmpx += *(gx->kernel + fy * gx->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D8140B05  mov         rax,qword ptr [gx]
00007FF7D8140B0C  mov         rcx,qword ptr [fy]
00007FF7D8140B10  imul        rcx,qword ptr [rax]
00007FF7D8140B14  mov         rax,rcx
00007FF7D8140B17  mov         rcx,qword ptr [gx]
00007FF7D8140B1E  mov         rcx,qword ptr [rcx+10h]
00007FF7D8140B22  add         rcx,rax
00007FF7D8140B25  mov         rax,rcx
00007FF7D8140B28  mov         rcx,qword ptr [fx]
00007FF7D8140B2C  movsx       eax,byte ptr [rax+rcx]
00007FF7D8140B30  mov         rcx,qword ptr [fy]
00007FF7D8140B34  imul        rcx,qword ptr [x_2plus]
00007FF7D8140B3C  mov         rdx,qword ptr [rbp+1C8h]
00007FF7D8140B43  add         rdx,rcx
00007FF7D8140B46  mov         rcx,rdx
00007FF7D8140B49  mov         rdx,qword ptr [fx]
00007FF7D8140B4D  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D8140B51  imul        eax,ecx
00007FF7D8140B54  mov         ecx,dword ptr [tmpx]
00007FF7D8140B5A  add         ecx,eax
00007FF7D8140B5C  mov         eax,ecx
00007FF7D8140B5E  mov         dword ptr [tmpx],eax
						tmpy += *(gy->kernel + fy * gy->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D8140B64  mov         rax,qword ptr [gy]
00007FF7D8140B6B  mov         rcx,qword ptr [fy]
00007FF7D8140B6F  imul        rcx,qword ptr [rax]
00007FF7D8140B73  mov         rax,rcx
00007FF7D8140B76  mov         rcx,qword ptr [gy]
00007FF7D8140B7D  mov         rcx,qword ptr [rcx+10h]
00007FF7D8140B81  add         rcx,rax
00007FF7D8140B84  mov         rax,rcx
00007FF7D8140B87  mov         rcx,qword ptr [fx]
00007FF7D8140B8B  movsx       eax,byte ptr [rax+rcx]
00007FF7D8140B8F  mov         rcx,qword ptr [fy]
00007FF7D8140B93  imul        rcx,qword ptr [x_2plus]
00007FF7D8140B9B  mov         rdx,qword ptr [rbp+1C8h]
00007FF7D8140BA2  add         rdx,rcx
00007FF7D8140BA5  mov         rcx,rdx
00007FF7D8140BA8  mov         rdx,qword ptr [fx]
00007FF7D8140BAC  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D8140BB0  imul        eax,ecx
00007FF7D8140BB3  mov         ecx,dword ptr [tmpy]
00007FF7D8140BB9  add         ecx,eax
00007FF7D8140BBB  mov         eax,ecx
00007FF7D8140BBD  mov         dword ptr [tmpy],eax
					}
00007FF7D8140BC3  jmp         c::sobel_be+34Fh (07FF7D8140AEFh)
				}
00007FF7D8140BC8  jmp         c::sobel_be+32Fh (07FF7D8140ACFh)
				tmpx /= gx->scale;
00007FF7D8140BCD  mov         eax,dword ptr [tmpx]
00007FF7D8140BD3  cdq
00007FF7D8140BD4  mov         rcx,qword ptr [gx]
00007FF7D8140BDB  idiv        eax,dword ptr [rcx+1Ch]
00007FF7D8140BDE  mov         dword ptr [tmpx],eax
				tmpy /= gy->scale;
00007FF7D8140BE4  mov         eax,dword ptr [tmpy]
00007FF7D8140BEA  cdq
00007FF7D8140BEB  mov         rcx,qword ptr [gy]
00007FF7D8140BF2  idiv        eax,dword ptr [rcx+1Ch]
00007FF7D8140BF5  mov         dword ptr [tmpy],eax
				tmp = std::abs(tmpx) + std::abs(tmpy); // This was more clear than sqrt
00007FF7D8140BFB  mov         ecx,dword ptr [tmpx]
00007FF7D8140C01  call        abs (07FF7D8138432h)
00007FF7D8140C06  mov         dword ptr [rbp+3B4h],eax
00007FF7D8140C0C  mov         ecx,dword ptr [tmpy]
00007FF7D8140C12  call        abs (07FF7D8138432h)
00007FF7D8140C17  mov         ecx,dword ptr [rbp+3B4h]
00007FF7D8140C1D  add         ecx,eax
00007FF7D8140C1F  mov         eax,ecx
00007FF7D8140C21  mov         dword ptr [tmp],eax
				*(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
00007FF7D8140C27  cmp         dword ptr [tmp],0
00007FF7D8140C2E  jl          c::sobel_be+4C2h (07FF7D8140C62h)
00007FF7D8140C30  cmp         dword ptr [tmp],0FFh
00007FF7D8140C3A  jg          c::sobel_be+4AAh (07FF7D8140C4Ah)
00007FF7D8140C3C  mov         eax,dword ptr [tmp]
00007FF7D8140C42  mov         dword ptr [rbp+3B4h],eax
00007FF7D8140C48  jmp         c::sobel_be+4B4h (07FF7D8140C54h)
00007FF7D8140C4A  mov         dword ptr [rbp+3B4h],0FFh
00007FF7D8140C54  mov         eax,dword ptr [rbp+3B4h]
00007FF7D8140C5A  mov         dword ptr [rbp+3B8h],eax
00007FF7D8140C60  jmp         c::sobel_be+4CCh (07FF7D8140C6Ch)
00007FF7D8140C62  mov         dword ptr [rbp+3B8h],0
00007FF7D8140C6C  mov         rax,qword ptr [rbp+1A8h]
00007FF7D8140C73  mov         rcx,qword ptr [out]
00007FF7D8140C7A  add         rcx,rax
00007FF7D8140C7D  mov         rax,rcx
00007FF7D8140C80  movzx       ecx,byte ptr [rbp+3B8h]
00007FF7D8140C87  mov         byte ptr [rax],cl
			}
00007FF7D8140C89  jmp         c::sobel_be+2BAh (07FF7D8140A5Ah)
		}
00007FF7D8140C8E  jmp         c::sobel_be+294h (07FF7D8140A34h)
		delete[] padded_img;
00007FF7D8140C93  mov         rax,qword ptr [padded_img]
00007FF7D8140C9A  mov         qword ptr [rbp+3A8h],rax
00007FF7D8140CA1  mov         rcx,qword ptr [rbp+3A8h]
00007FF7D8140CA8  call        operator delete[] (07FF7D81382EDh)
00007FF7D8140CAD  cmp         qword ptr [rbp+3A8h],0
00007FF7D8140CB5  jne         c::sobel_be+524h (07FF7D8140CC4h)
00007FF7D8140CB7  mov         qword ptr [rbp+3B8h],0
00007FF7D8140CC2  jmp         c::sobel_be+53Dh (07FF7D8140CDDh)
00007FF7D8140CC4  mov         qword ptr [padded_img],8123h
00007FF7D8140CCF  mov         rax,qword ptr [padded_img]
00007FF7D8140CD6  mov         qword ptr [rbp+3B8h],rax
	};
00007FF7D8140CDD  lea         rsp,[rbp+3D8h]
00007FF7D8140CE4  pop         rdi
00007FF7D8140CE5  pop         rbp
00007FF7D8140CE6  ret
