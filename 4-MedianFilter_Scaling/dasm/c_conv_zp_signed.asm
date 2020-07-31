; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size) {
00007FF7D813FD20  mov         qword ptr [rsp+20h],r9
00007FF7D813FD25  mov         qword ptr [rsp+18h],r8
00007FF7D813FD2A  mov         qword ptr [rsp+10h],rdx
00007FF7D813FD2F  mov         qword ptr [rsp+8],rcx
00007FF7D813FD34  push        rbp
00007FF7D813FD35  push        rdi
00007FF7D813FD36  sub         rsp,298h
00007FF7D813FD3D  lea         rbp,[rsp+20h]
00007FF7D813FD42  mov         rdi,rsp
00007FF7D813FD45  mov         ecx,0A6h
00007FF7D813FD4A  mov         eax,0CCCCCCCCh
00007FF7D813FD4F  rep stos    dword ptr [rdi]
00007FF7D813FD51  mov         rcx,qword ptr [rsp+2B8h]
00007FF7D813FD59  lea         rcx,[__64DFAD88_Func_C@cpp (07FF7D81B1053h)]
00007FF7D813FD60  call        __CheckForDebuggerJustMyCode (07FF7D8137541h)
		size_t x, y, fx, fy;
		const size_t plus = (filter->size - 1) / 2;
00007FF7D813FD65  mov         rax,qword ptr [filter]
00007FF7D813FD6C  mov         rax,qword ptr [rax]
00007FF7D813FD6F  dec         rax
00007FF7D813FD72  xor         edx,edx
00007FF7D813FD74  mov         ecx,2
00007FF7D813FD79  div         rax,rcx
00007FF7D813FD7C  mov         qword ptr [plus],rax
		const size_t x_2plus = x_size + 2 * plus;
00007FF7D813FD83  mov         rax,qword ptr [x_size]
00007FF7D813FD8A  mov         rcx,qword ptr [plus]
00007FF7D813FD91  lea         rax,[rax+rcx*2]
00007FF7D813FD95  mov         qword ptr [x_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2 * plus)] { 0 };
00007FF7D813FD9C  mov         rax,qword ptr [y_size]
00007FF7D813FDA3  mov         rcx,qword ptr [plus]
00007FF7D813FDAA  lea         rax,[rax+rcx*2]
00007FF7D813FDAE  mov         rcx,qword ptr [x_2plus]
00007FF7D813FDB5  imul        rcx,rax
00007FF7D813FDB9  mov         rax,rcx
00007FF7D813FDBC  mov         qword ptr [rbp+208h],rax
00007FF7D813FDC3  mov         rcx,qword ptr [rbp+208h]
00007FF7D813FDCA  call        operator new[] (07FF7D8138B85h)
00007FF7D813FDCF  mov         qword ptr [rbp+228h],rax
00007FF7D813FDD6  cmp         qword ptr [rbp+228h],0
00007FF7D813FDDE  je          c::conv_zp_signed+111h (07FF7D813FE31h)
00007FF7D813FDE0  mov         rdi,qword ptr [rbp+228h]
00007FF7D813FDE7  xor         eax,eax
00007FF7D813FDE9  mov         rcx,qword ptr [rbp+208h]
00007FF7D813FDF0  rep stos    byte ptr [rdi]
00007FF7D813FDF2  cmp         qword ptr [rbp+228h],0
00007FF7D813FDFA  je          c::conv_zp_signed+0F6h (07FF7D813FE16h)
00007FF7D813FDFC  mov         rax,qword ptr [rbp+228h]
00007FF7D813FE03  mov         byte ptr [rax],0
00007FF7D813FE06  mov         rax,qword ptr [rbp+228h]
00007FF7D813FE0D  mov         qword ptr [rbp+258h],rax
00007FF7D813FE14  jmp         c::conv_zp_signed+101h (07FF7D813FE21h)
00007FF7D813FE16  mov         qword ptr [rbp+258h],0
00007FF7D813FE21  mov         rax,qword ptr [rbp+258h]
00007FF7D813FE28  mov         qword ptr [rbp+260h],rax
00007FF7D813FE2F  jmp         c::conv_zp_signed+11Ch (07FF7D813FE3Ch)
00007FF7D813FE31  mov         qword ptr [rbp+260h],0
00007FF7D813FE3C  mov         rax,qword ptr [rbp+260h]
00007FF7D813FE43  mov         qword ptr [padded_img],rax
		for (y = 0; y < y_size; y += 1) {
00007FF7D813FE4A  mov         qword ptr [y],0
00007FF7D813FE52  jmp         c::conv_zp_signed+13Fh (07FF7D813FE5Fh)
00007FF7D813FE54  mov         rax,qword ptr [y]
00007FF7D813FE58  inc         rax
00007FF7D813FE5B  mov         qword ptr [y],rax
00007FF7D813FE5F  mov         rax,qword ptr [y_size]
00007FF7D813FE66  cmp         qword ptr [y],rax
00007FF7D813FE6A  jae         c::conv_zp_signed+1A3h (07FF7D813FEC3h)
			memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
00007FF7D813FE6C  mov         rax,qword ptr [y]
00007FF7D813FE70  imul        rax,qword ptr [x_size]
00007FF7D813FE78  mov         rcx,qword ptr [in]
00007FF7D813FE7F  add         rcx,rax
00007FF7D813FE82  mov         rax,rcx
00007FF7D813FE85  mov         rcx,qword ptr [plus]
00007FF7D813FE8C  mov         rdx,qword ptr [y]
00007FF7D813FE90  add         rdx,rcx
00007FF7D813FE93  mov         rcx,rdx
00007FF7D813FE96  imul        rcx,qword ptr [x_2plus]
00007FF7D813FE9E  mov         rdx,qword ptr [padded_img]
00007FF7D813FEA5  add         rdx,rcx
00007FF7D813FEA8  mov         rcx,rdx
00007FF7D813FEAB  add         rcx,qword ptr [plus]
00007FF7D813FEB2  mov         r8,qword ptr [x_size]
00007FF7D813FEB9  mov         rdx,rax
00007FF7D813FEBC  call        memcpy (07FF7D8138A09h)
		}
00007FF7D813FEC1  jmp         c::conv_zp_signed+134h (07FF7D813FE54h)
		int32_t tmp;
		for (y = 0; y < y_size; y += 1) {
00007FF7D813FEC3  mov         qword ptr [y],0
00007FF7D813FECB  jmp         c::conv_zp_signed+1B8h (07FF7D813FED8h)
00007FF7D813FECD  mov         rax,qword ptr [y]
00007FF7D813FED1  inc         rax
00007FF7D813FED4  mov         qword ptr [y],rax
00007FF7D813FED8  mov         rax,qword ptr [y_size]
00007FF7D813FEDF  cmp         qword ptr [y],rax
00007FF7D813FEE3  jae         c::conv_zp_signed+368h (07FF7D8140088h)
			for (x = 0; x < x_size; x += 1) {
00007FF7D813FEE9  mov         qword ptr [x],0
00007FF7D813FEF1  jmp         c::conv_zp_signed+1DEh (07FF7D813FEFEh)
00007FF7D813FEF3  mov         rax,qword ptr [x]
00007FF7D813FEF7  inc         rax
00007FF7D813FEFA  mov         qword ptr [x],rax
00007FF7D813FEFE  mov         rax,qword ptr [x_size]
00007FF7D813FF05  cmp         qword ptr [x],rax
00007FF7D813FF09  jae         c::conv_zp_signed+363h (07FF7D8140083h)
				size_t pos = y * x_size + x;
00007FF7D813FF0F  mov         rax,qword ptr [y]
00007FF7D813FF13  imul        rax,qword ptr [x_size]
00007FF7D813FF1B  add         rax,qword ptr [x]
00007FF7D813FF1F  mov         qword ptr [rbp+108h],rax
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D813FF26  mov         rax,qword ptr [y]
00007FF7D813FF2A  imul        rax,qword ptr [x_2plus]
00007FF7D813FF32  mov         rcx,qword ptr [padded_img]
00007FF7D813FF39  add         rcx,rax
00007FF7D813FF3C  mov         rax,rcx
00007FF7D813FF3F  add         rax,qword ptr [x]
00007FF7D813FF43  mov         qword ptr [rbp+128h],rax
				tmp = 0;
00007FF7D813FF4A  mov         dword ptr [tmp],0
				for (fy = 0; fy < filter->size; fy += 1) {
00007FF7D813FF54  mov         qword ptr [fy],0
00007FF7D813FF5C  jmp         c::conv_zp_signed+249h (07FF7D813FF69h)
00007FF7D813FF5E  mov         rax,qword ptr [fy]
00007FF7D813FF62  inc         rax
00007FF7D813FF65  mov         qword ptr [fy],rax
00007FF7D813FF69  mov         rax,qword ptr [filter]
00007FF7D813FF70  mov         rax,qword ptr [rax]
00007FF7D813FF73  cmp         qword ptr [fy],rax
00007FF7D813FF77  jae         c::conv_zp_signed+2E8h (07FF7D8140008h)
					for (fx = 0; fx < filter->size; fx += 1) {
00007FF7D813FF7D  mov         qword ptr [fx],0
00007FF7D813FF85  jmp         c::conv_zp_signed+272h (07FF7D813FF92h)
00007FF7D813FF87  mov         rax,qword ptr [fx]
00007FF7D813FF8B  inc         rax
					for (fx = 0; fx < filter->size; fx += 1) {
00007FF7D813FF8E  mov         qword ptr [fx],rax
00007FF7D813FF92  mov         rax,qword ptr [filter]
00007FF7D813FF99  mov         rax,qword ptr [rax]
00007FF7D813FF9C  cmp         qword ptr [fx],rax
00007FF7D813FFA0  jae         c::conv_zp_signed+2E3h (07FF7D8140003h)
						tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D813FFA2  mov         rax,qword ptr [filter]
00007FF7D813FFA9  mov         rcx,qword ptr [fy]
00007FF7D813FFAD  imul        rcx,qword ptr [rax]
00007FF7D813FFB1  mov         rax,rcx
00007FF7D813FFB4  mov         rcx,qword ptr [filter]
00007FF7D813FFBB  mov         rcx,qword ptr [rcx+10h]
00007FF7D813FFBF  add         rcx,rax
00007FF7D813FFC2  mov         rax,rcx
00007FF7D813FFC5  mov         rcx,qword ptr [fx]
00007FF7D813FFC9  movsx       eax,byte ptr [rax+rcx]
00007FF7D813FFCD  mov         rcx,qword ptr [fy]
00007FF7D813FFD1  imul        rcx,qword ptr [x_2plus]
00007FF7D813FFD9  mov         rdx,qword ptr [rbp+128h]
00007FF7D813FFE0  add         rdx,rcx
00007FF7D813FFE3  mov         rcx,rdx
00007FF7D813FFE6  mov         rdx,qword ptr [fx]
00007FF7D813FFEA  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D813FFEE  imul        eax,ecx
00007FF7D813FFF1  mov         ecx,dword ptr [tmp]
00007FF7D813FFF7  add         ecx,eax
00007FF7D813FFF9  mov         eax,ecx
00007FF7D813FFFB  mov         dword ptr [tmp],eax
					}
00007FF7D8140001  jmp         c::conv_zp_signed+267h (07FF7D813FF87h)
				}
00007FF7D8140003  jmp         c::conv_zp_signed+23Eh (07FF7D813FF5Eh)
				tmp /= filter->kernel_sum;
00007FF7D8140008  mov         eax,dword ptr [tmp]
00007FF7D814000E  cdq
00007FF7D814000F  mov         rcx,qword ptr [filter]
00007FF7D8140016  idiv        eax,dword ptr [rcx+18h]
00007FF7D8140019  mov         dword ptr [tmp],eax
				*(out + pos) = (int8_t)(tmp >= -128 ? (tmp <= 127 ? tmp : 127) : -128);
00007FF7D814001F  cmp         dword ptr [tmp],0FFFFFF80h
00007FF7D8140026  jl          c::conv_zp_signed+337h (07FF7D8140057h)
00007FF7D8140028  cmp         dword ptr [tmp],7Fh
00007FF7D814002F  jg          c::conv_zp_signed+31Fh (07FF7D814003Fh)
00007FF7D8140031  mov         eax,dword ptr [tmp]
00007FF7D8140037  mov         dword ptr [rbp+254h],eax
00007FF7D814003D  jmp         c::conv_zp_signed+329h (07FF7D8140049h)
00007FF7D814003F  mov         dword ptr [rbp+254h],7Fh
00007FF7D8140049  mov         eax,dword ptr [rbp+254h]
00007FF7D814004F  mov         dword ptr [rbp+258h],eax
00007FF7D8140055  jmp         c::conv_zp_signed+341h (07FF7D8140061h)
00007FF7D8140057  mov         dword ptr [rbp+258h],0FFFFFF80h
00007FF7D8140061  mov         rax,qword ptr [rbp+108h]
00007FF7D8140068  mov         rcx,qword ptr [out]
00007FF7D814006F  add         rcx,rax
00007FF7D8140072  mov         rax,rcx
00007FF7D8140075  movzx       ecx,byte ptr [rbp+258h]
00007FF7D814007C  mov         byte ptr [rax],cl
			}
00007FF7D814007E  jmp         c::conv_zp_signed+1D3h (07FF7D813FEF3h)
		}
00007FF7D8140083  jmp         c::conv_zp_signed+1ADh (07FF7D813FECDh)
		delete[] padded_img;
00007FF7D8140088  mov         rax,qword ptr [padded_img]
00007FF7D814008F  mov         qword ptr [rbp+248h],rax
00007FF7D8140096  mov         rcx,qword ptr [rbp+248h]
00007FF7D814009D  call        operator delete[] (07FF7D81382EDh)
00007FF7D81400A2  cmp         qword ptr [rbp+248h],0
00007FF7D81400AA  jne         c::conv_zp_signed+399h (07FF7D81400B9h)
00007FF7D81400AC  mov         qword ptr [rbp+258h],0
00007FF7D81400B7  jmp         c::conv_zp_signed+3B2h (07FF7D81400D2h)
00007FF7D81400B9  mov         qword ptr [padded_img],8123h
00007FF7D81400C4  mov         rax,qword ptr [padded_img]
00007FF7D81400CB  mov         qword ptr [rbp+258h],rax
	};
00007FF7D81400D2  lea         rsp,[rbp+278h]
00007FF7D81400D9  pop         rdi
00007FF7D81400DA  pop         rbp
00007FF7D81400DB  ret
