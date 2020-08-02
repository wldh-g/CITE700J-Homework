; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF63179E982  push        rbp
00007FF63179E983  sub         rsp,110h
00007FF63179E98A  lea         rbp,[rsp+20h]
00007FF63179E98F  mov         qword ptr [rsp],rax
00007FF63179E993  mov         rax,10Ch
00007FF63179E99A  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179E9A1  sub         rax,4
00007FF63179E9A5  cmp         rax,4
00007FF63179E9A9  jg          c::median_5tap+18h (07FF63179E99Ah)
00007FF63179E9AB  mov         rax,qword ptr [rsp]
00007FF63179E9AF  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179E9B6  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179E9BE  mov         qword ptr [rbp+0E0h],rdi
00007FF63179E9C5  mov         qword ptr [rbp+0D8h],rsi
00007FF63179E9CC  mov         qword ptr [in],rcx
00007FF63179E9D3  mov         qword ptr [out],rdx
00007FF63179E9DA  mov         qword ptr [x_size],r8
00007FF63179E9E1  mov         qword ptr [y_size],r9
00007FF63179E9E8  mov         qword ptr [rbp+40h],0FFFFFFFFFFFFFFFEh
		size_t x, y;
		uint8_t* padded_img = new uint8_t[x_size * (y_size + 4)] { 0 };
00007FF63179E9F0  mov         dword ptr [rbp+38h],0
00007FF63179E9F7  mov         eax,4
00007FF63179E9FC  add         rax,qword ptr [y_size]
00007FF63179EA03  imul        rax,qword ptr [x_size]
00007FF63179EA0B  mov         qword ptr [rbp+48h],rax
00007FF63179EA0F  mov         rax,qword ptr [rbp+48h]
00007FF63179EA13  mov         rcx,rax
00007FF63179EA16  call        operator new[] (07FF631792A59h)
00007FF63179EA1B  jmp         c::median_5tap+139h (07FF63179EABBh)
00007FF63179EA20  mov         rax,qword ptr [rbp+50h]
00007FF63179EA24  mov         qword ptr [rbp+58h],rax
00007FF63179EA28  mov         rax,qword ptr [rbp+58h]
00007FF63179EA2C  mov         qword ptr [rbp+60h],rax
00007FF63179EA30  mov         rax,qword ptr [rbp+60h]
00007FF63179EA34  mov         qword ptr [rbp+68h],rax
00007FF63179EA38  mov         rax,qword ptr [rbp+60h]
00007FF63179EA3C  test        rax,rax
00007FF63179EA3F  jne         c::median_5tap+0C9h (07FF63179EA4Bh)
00007FF63179EA41  mov         qword ptr [rbp+70h],0
00007FF63179EA49  jmp         c::median_5tap+142h (07FF63179EAC4h)
00007FF63179EA4B  mov         dword ptr [rbp+38h],1
00007FF63179EA52  mov         rax,qword ptr [rbp+68h]
00007FF63179EA56  mov         edx,0
00007FF63179EA5B  mov         ecx,dword ptr [rbp+48h]
00007FF63179EA5E  movsxd      rcx,ecx
00007FF63179EA61  mov         qword ptr [rbp+0B8h],rcx
00007FF63179EA68  mov         rcx,rax
00007FF63179EA6B  mov         rax,qword ptr [rbp+0B8h]
00007FF63179EA72  mov         r8,rax
00007FF63179EA75  call        memset (07FF6317FD20Eh)
00007FF63179EA7A  mov         rax,qword ptr [rbp+68h]
00007FF63179EA7E  mov         edx,0
00007FF63179EA83  mov         ecx,1
00007FF63179EA88  mov         rdi,rax
00007FF63179EA8B  mov         eax,edx
00007FF63179EA8D  and         eax,0FFFFh
00007FF63179EA92  mov         ah,al
00007FF63179EA94  mov         edx,eax
00007FF63179EA96  shl         eax,10h
00007FF63179EA99  or          eax,edx
00007FF63179EA9B  mov         esi,ecx
00007FF63179EA9D  shr         rcx,2
00007FF63179EAA1  rep stos    dword ptr [rdi]
00007FF63179EAA3  mov         ecx,esi
00007FF63179EAA5  and         ecx,3
00007FF63179EAA8  rep stos    byte ptr [rdi]
00007FF63179EAAA  mov         dword ptr [rbp+38h],0
00007FF63179EAB1  mov         rax,qword ptr [rbp+68h]
00007FF63179EAB5  mov         qword ptr [rbp+70h],rax
00007FF63179EAB9  jmp         c::median_5tap+142h (07FF63179EAC4h)
00007FF63179EABB  mov         qword ptr [rbp+50h],rax
00007FF63179EABF  jmp         c::median_5tap+9Eh (07FF63179EA20h)
00007FF63179EAC4  mov         rax,qword ptr [rbp+70h]
00007FF63179EAC8  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF63179EACC  mov         rax,0FFFFFFFFFFFFFFFFh
00007FF63179EAD3  add         rax,qword ptr [y_size]
00007FF63179EADA  imul        rax,qword ptr [x_size]
00007FF63179EAE2  add         rax,qword ptr [in]
00007FF63179EAE9  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF63179EAF0  mov         qword ptr [y],0
00007FF63179EAFB  mov         rax,qword ptr [y]
00007FF63179EB02  mov         rdx,qword ptr [y_size]
00007FF63179EB09  cmp         rax,rdx
00007FF63179EB0C  jb          c::median_5tap+1A3h (07FF63179EB25h)
00007FF63179EB0E  jmp         c::median_5tap+1FAh (07FF63179EB7Ch)
00007FF63179EB10  mov         eax,1
00007FF63179EB15  add         rax,qword ptr [y]
00007FF63179EB1C  mov         qword ptr [y],rax
00007FF63179EB23  jmp         c::median_5tap+179h (07FF63179EAFBh)
			memcpy(padded_img + (y + 2) * x_size, in + y * x_size, x_size);
00007FF63179EB25  mov         eax,2
00007FF63179EB2A  add         rax,qword ptr [y]
00007FF63179EB31  imul        rax,qword ptr [x_size]
00007FF63179EB39  add         rax,qword ptr [padded_img]
00007FF63179EB3D  mov         rdx,qword ptr [x_size]
00007FF63179EB44  imul        rdx,qword ptr [y]
00007FF63179EB4C  add         rdx,qword ptr [in]
00007FF63179EB53  mov         rcx,qword ptr [x_size]
00007FF63179EB5A  mov         qword ptr [rbp+0C0h],rcx
			memcpy(padded_img + (y + 2) * x_size, in + y * x_size, x_size);
00007FF63179EB61  mov         rcx,rax
00007FF63179EB64  mov         rax,qword ptr [rbp+0C0h]
00007FF63179EB6B  mov         r8,rax
00007FF63179EB6E  call        memcpy (07FF6317FD232h)
00007FF63179EB73  mov         qword ptr [rbp+90h],rax
00007FF63179EB7A  jmp         c::median_5tap+18Eh (07FF63179EB10h)
		}
		for (y = 0; y < 2; y += 1) {
00007FF63179EB7C  mov         qword ptr [y],0
00007FF63179EB87  mov         rax,qword ptr [y]
00007FF63179EB8E  cmp         rax,2
00007FF63179EB92  jb          c::median_5tap+22Ch (07FF63179EBAEh)
00007FF63179EB94  jmp         c::median_5tap+2BFh (07FF63179EC41h)
00007FF63179EB99  mov         eax,1
00007FF63179EB9E  add         rax,qword ptr [y]
00007FF63179EBA5  mov         qword ptr [y],rax
00007FF63179EBAC  jmp         c::median_5tap+205h (07FF63179EB87h)
			memcpy(padded_img + y * x_size, in, x_size);
00007FF63179EBAE  mov         rax,qword ptr [x_size]
00007FF63179EBB5  imul        rax,qword ptr [y]
00007FF63179EBBD  add         rax,qword ptr [padded_img]
00007FF63179EBC1  mov         rdx,qword ptr [in]
00007FF63179EBC8  mov         rcx,qword ptr [x_size]
00007FF63179EBCF  mov         qword ptr [rbp+0C8h],rcx
00007FF63179EBD6  mov         rcx,rax
00007FF63179EBD9  mov         rax,qword ptr [rbp+0C8h]
00007FF63179EBE0  mov         r8,rax
00007FF63179EBE3  call        memcpy (07FF6317FD232h)
00007FF63179EBE8  mov         qword ptr [rbp+98h],rax
			memcpy(padded_img + (y_size + 2 + y) * x_size, in_last_line, x_size);
00007FF63179EBEF  mov         eax,2
00007FF63179EBF4  add         rax,qword ptr [y_size]
00007FF63179EBFB  add         rax,qword ptr [y]
00007FF63179EC02  imul        rax,qword ptr [x_size]
00007FF63179EC0A  add         rax,qword ptr [padded_img]
00007FF63179EC0E  mov         rdx,qword ptr [in_last_line]
00007FF63179EC15  mov         rcx,qword ptr [x_size]
00007FF63179EC1C  mov         qword ptr [rbp+0D0h],rcx
00007FF63179EC23  mov         rcx,rax
00007FF63179EC26  mov         rax,qword ptr [rbp+0D0h]
00007FF63179EC2D  mov         r8,rax
00007FF63179EC30  call        memcpy (07FF6317FD232h)
00007FF63179EC35  mov         qword ptr [rbp+0A0h],rax
00007FF63179EC3C  jmp         c::median_5tap+217h (07FF63179EB99h)
		}
		uint8_t point1, point2, point3, point4, point5;
		for (y = 0; y < y_size; y += 1) {
00007FF63179EC41  mov         qword ptr [y],0
00007FF63179EC4C  mov         rax,qword ptr [y]
00007FF63179EC53  mov         rdx,qword ptr [y_size]
00007FF63179EC5A  cmp         rax,rdx
00007FF63179EC5D  jb          c::median_5tap+2F7h (07FF63179EC79h)
00007FF63179EC5F  jmp         c::median_5tap+474h (07FF63179EDF6h)
00007FF63179EC64  mov         eax,1
00007FF63179EC69  add         rax,qword ptr [y]
00007FF63179EC70  mov         qword ptr [y],rax
00007FF63179EC77  jmp         c::median_5tap+2CAh (07FF63179EC4Ch)
			for (x = 0; x < x_size; x += 1) {
00007FF63179EC79  mov         qword ptr [x],0
00007FF63179EC84  mov         rax,qword ptr [x]
00007FF63179EC8B  mov         rdx,qword ptr [x_size]
00007FF63179EC92  cmp         rax,rdx
00007FF63179EC95  jae         c::median_5tap+2E2h (07FF63179EC64h)
				size_t pos = y * x_size + x;
00007FF63179EC97  mov         rax,qword ptr [x_size]
00007FF63179EC9E  imul        rax,qword ptr [y]
00007FF63179ECA6  add         rax,qword ptr [x]
00007FF63179ECAD  mov         qword ptr [rbp+0B0h],rax
				point1 = *(padded_img + pos);
00007FF63179ECB4  mov         rax,qword ptr [rbp+0B0h]
00007FF63179ECBB  add         rax,qword ptr [padded_img]
00007FF63179ECBF  movzx       eax,byte ptr [rax]
00007FF63179ECC2  mov         byte ptr [point1],al
				point2 = *(padded_img + pos + x_size);
00007FF63179ECC5  mov         rax,qword ptr [rbp+0B0h]
00007FF63179ECCC  add         rax,qword ptr [padded_img]
00007FF63179ECD0  add         rax,qword ptr [x_size]
00007FF63179ECD7  movzx       eax,byte ptr [rax]
00007FF63179ECDA  mov         byte ptr [point2],al
				point3 = *(padded_img + pos + 2 * x_size);
00007FF63179ECDD  mov         rax,qword ptr [rbp+0B0h]
00007FF63179ECE4  add         rax,qword ptr [padded_img]
00007FF63179ECE8  mov         rdx,qword ptr [x_size]
00007FF63179ECEF  imul        rdx,rdx,2
00007FF63179ECF3  add         rax,rdx
00007FF63179ECF6  movzx       eax,byte ptr [rax]
00007FF63179ECF9  mov         byte ptr [point3],al
				point4 = *(padded_img + pos + 3 * x_size);
00007FF63179ECFC  mov         rax,qword ptr [rbp+0B0h]
00007FF63179ED03  add         rax,qword ptr [padded_img]
00007FF63179ED07  mov         rdx,qword ptr [x_size]
00007FF63179ED0E  imul        rdx,rdx,3
00007FF63179ED12  add         rax,rdx
00007FF63179ED15  movzx       eax,byte ptr [rax]
00007FF63179ED18  mov         byte ptr [point4],al
				point5 = *(padded_img + pos + 4 * x_size);
00007FF63179ED1B  mov         rax,qword ptr [rbp+0B0h]
00007FF63179ED22  add         rax,qword ptr [padded_img]
00007FF63179ED26  mov         rdx,qword ptr [x_size]
00007FF63179ED2D  imul        rdx,rdx,4
00007FF63179ED31  add         rax,rdx
00007FF63179ED34  movzx       eax,byte ptr [rax]
00007FF63179ED37  mov         byte ptr [point5],al
				sort2(point1, point2);
00007FF63179ED3A  lea         rax,[point1]
00007FF63179ED3E  lea         rdx,[point2]
00007FF63179ED42  mov         rcx,rax
00007FF63179ED45  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point4, point5);
00007FF63179ED4A  lea         rax,[point4]
00007FF63179ED4E  lea         rdx,[point5]
00007FF63179ED52  mov         rcx,rax
00007FF63179ED55  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point3, point5);
00007FF63179ED5A  lea         rax,[point3]
00007FF63179ED5E  lea         rdx,[point5]
00007FF63179ED62  mov         rcx,rax
00007FF63179ED65  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point3, point4);
00007FF63179ED6A  lea         rax,[point3]
00007FF63179ED6E  lea         rdx,[point4]
00007FF63179ED72  mov         rcx,rax
00007FF63179ED75  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point4);
00007FF63179ED7A  lea         rax,[point1]
00007FF63179ED7E  lea         rdx,[point4]
00007FF63179ED82  mov         rcx,rax
00007FF63179ED85  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point3);
00007FF63179ED8A  lea         rax,[point1]
00007FF63179ED8E  lea         rdx,[point3]
00007FF63179ED92  mov         rcx,rax
00007FF63179ED95  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point5);
00007FF63179ED9A  lea         rax,[point2]
00007FF63179ED9E  lea         rdx,[point5]
00007FF63179EDA2  mov         rcx,rax
00007FF63179EDA5  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point4);
00007FF63179EDAA  lea         rax,[point2]
00007FF63179EDAE  lea         rdx,[point4]
00007FF63179EDB2  mov         rcx,rax
00007FF63179EDB5  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point3);
00007FF63179EDBA  lea         rax,[point2]
00007FF63179EDBE  lea         rdx,[point3]
00007FF63179EDC2  mov         rcx,rax
00007FF63179EDC5  call        sort2<unsigned char> (07FF6317928A1h)
				*(out + pos) = point3;
00007FF63179EDCA  mov         rax,qword ptr [rbp+0B0h]
00007FF63179EDD1  add         rax,qword ptr [out]
00007FF63179EDD8  movzx       edx,byte ptr [point3]
00007FF63179EDDC  mov         byte ptr [rax],dl
			for (x = 0; x < x_size; x += 1) {
00007FF63179EDDE  mov         eax,1
00007FF63179EDE3  add         rax,qword ptr [x]
00007FF63179EDEA  mov         qword ptr [x],rax
00007FF63179EDF1  jmp         c::median_5tap+302h (07FF63179EC84h)
			}
		}
		delete[] padded_img;
00007FF63179EDF6  mov         rax,qword ptr [padded_img]
00007FF63179EDFA  mov         edx,1
00007FF63179EDFF  mov         rcx,rax
00007FF63179EE02  call        operator delete[] (07FF631791CE9h)
	};
00007FF63179EE07  lea         rax,[std::_VBITS+2E8h (07FF6318026C0h)]
00007FF63179EE0E  mov         rdx,rax
00007FF63179EE11  mov         rcx,rbp
00007FF63179EE14  call        _RTC_CheckStackVars (07FF631792C20h)
00007FF63179EE19  mov         rsi,qword ptr [rbp+0D8h]
00007FF63179EE20  mov         rdi,qword ptr [rbp+0E0h]
00007FF63179EE27  lea         rsp,[rbp+0F0h]
00007FF63179EE2E  pop         rbp
00007FF63179EE2F  ret
00007FF63179EE30  push        rbp
00007FF63179EE31  sub         rsp,110h
00007FF63179EE38  lea         rbp,[rdx+20h]
00007FF63179EE3C  mov         qword ptr [rsp],rax
00007FF63179EE40  mov         rax,10Ch
00007FF63179EE47  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179EE4E  sub         rax,4
00007FF63179EE52  cmp         rax,4
00007FF63179EE56  jg          c::median_5tap+4C5h (07FF63179EE47h)
00007FF63179EE58  mov         rax,qword ptr [rsp]
00007FF63179EE5C  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179EE63  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179EE6B  mov         qword ptr [rsp+100h],rdi
00007FF63179EE73  mov         qword ptr [rsp+0F8h],rsi
00007FF63179EE7B  mov         qword ptr [rsp+120h],rcx
00007FF63179EE83  mov         qword ptr [rsp+128h],rdx
00007FF63179EE8B  mov         eax,dword ptr [rbp+38h]
00007FF63179EE8E  test        eax,eax
00007FF63179EE90  je          c::median_5tap+521h (07FF63179EEA3h)
00007FF63179EE92  mov         rax,qword ptr [rbp+68h]
00007FF63179EE96  mov         edx,0
00007FF63179EE9B  mov         rcx,rax
00007FF63179EE9E  call        operator delete[] (07FF631791CE9h)
00007FF63179EEA3  mov         rsi,qword ptr [rsp+0F8h]
00007FF63179EEAB  mov         rdi,qword ptr [rsp+100h]
00007FF63179EEB3  add         rsp,110h
00007FF63179EEBA  pop         rbp
00007FF63179EEBB  ret
