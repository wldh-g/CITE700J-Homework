; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF63179EEBC  push        rbp
00007FF63179EEBD  sub         rsp,140h
00007FF63179EEC4  lea         rbp,[rsp+20h]
00007FF63179EEC9  mov         qword ptr [rsp],rax
00007FF63179EECD  mov         rax,13Ch
00007FF63179EED4  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179EEDB  sub         rax,4
00007FF63179EEDF  cmp         rax,4
00007FF63179EEE3  jg          c::median_3by3+18h (07FF63179EED4h)
00007FF63179EEE5  mov         rax,qword ptr [rsp]
00007FF63179EEE9  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179EEF0  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179EEF8  mov         qword ptr [rbp+110h],rdi
00007FF63179EEFF  mov         qword ptr [rbp+108h],rsi
00007FF63179EF06  mov         qword ptr [in],rcx
00007FF63179EF0D  mov         qword ptr [out],rdx
00007FF63179EF14  mov         qword ptr [x_size],r8
00007FF63179EF1B  mov         qword ptr [y_size],r9
00007FF63179EF22  mov         qword ptr [rbp+60h],0FFFFFFFFFFFFFFFEh
		size_t x, y;
		const size_t x_2plus = x_size + 2;
00007FF63179EF2A  mov         eax,2
00007FF63179EF2F  add         rax,qword ptr [x_size]
00007FF63179EF36  mov         qword ptr [x_2plus],rax
		const size_t y_2plus = y_size + 2;
00007FF63179EF3A  mov         eax,2
00007FF63179EF3F  add         rax,qword ptr [y_size]
00007FF63179EF46  mov         qword ptr [y_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
00007FF63179EF4A  mov         dword ptr [rbp+5Ch],0
00007FF63179EF51  mov         rax,qword ptr [y_2plus]
00007FF63179EF55  imul        rax,qword ptr [x_2plus]
00007FF63179EF5A  mov         qword ptr [rbp+78h],rax
00007FF63179EF5E  mov         rax,qword ptr [rbp+78h]
00007FF63179EF62  mov         rcx,rax
00007FF63179EF65  call        operator new[] (07FF631792A59h)
00007FF63179EF6A  jmp         c::median_3by3+175h (07FF63179F031h)
00007FF63179EF6F  mov         rax,qword ptr [rbp+80h]
00007FF63179EF76  mov         qword ptr [rbp+88h],rax
00007FF63179EF7D  mov         rax,qword ptr [rbp+88h]
00007FF63179EF84  mov         qword ptr [rbp+90h],rax
00007FF63179EF8B  mov         rax,qword ptr [rbp+90h]
00007FF63179EF92  mov         qword ptr [rbp+98h],rax
00007FF63179EF99  mov         rax,qword ptr [rbp+90h]
00007FF63179EFA0  test        rax,rax
00007FF63179EFA3  jne         c::median_3by3+0F9h (07FF63179EFB5h)
00007FF63179EFA5  mov         qword ptr [rbp+0A0h],0
00007FF63179EFB0  jmp         c::median_3by3+181h (07FF63179F03Dh)
00007FF63179EFB5  mov         dword ptr [rbp+5Ch],1
00007FF63179EFBC  mov         rax,qword ptr [rbp+98h]
00007FF63179EFC3  mov         edx,0
00007FF63179EFC8  mov         ecx,dword ptr [rbp+78h]
00007FF63179EFCB  movsxd      rcx,ecx
00007FF63179EFCE  mov         qword ptr [rbp+0E8h],rcx
00007FF63179EFD5  mov         rcx,rax
00007FF63179EFD8  mov         rax,qword ptr [rbp+0E8h]
00007FF63179EFDF  mov         r8,rax
00007FF63179EFE2  call        memset (07FF6317FD20Eh)
00007FF63179EFE7  mov         rax,qword ptr [rbp+98h]
00007FF63179EFEE  mov         edx,0
00007FF63179EFF3  mov         ecx,1
00007FF63179EFF8  mov         rdi,rax
00007FF63179EFFB  mov         eax,edx
00007FF63179EFFD  and         eax,0FFFFh
00007FF63179F002  mov         ah,al
00007FF63179F004  mov         edx,eax
00007FF63179F006  shl         eax,10h
00007FF63179F009  or          eax,edx
00007FF63179F00B  mov         esi,ecx
00007FF63179F00D  shr         rcx,2
00007FF63179F011  rep stos    dword ptr [rdi]
00007FF63179F013  mov         ecx,esi
00007FF63179F015  and         ecx,3
00007FF63179F018  rep stos    byte ptr [rdi]
00007FF63179F01A  mov         dword ptr [rbp+5Ch],0
00007FF63179F021  mov         rax,qword ptr [rbp+98h]
00007FF63179F028  mov         qword ptr [rbp+0A0h],rax
00007FF63179F02F  jmp         c::median_3by3+181h (07FF63179F03Dh)
00007FF63179F031  mov         qword ptr [rbp+80h],rax
00007FF63179F038  jmp         c::median_3by3+0B3h (07FF63179EF6Fh)
00007FF63179F03D  mov         rax,qword ptr [rbp+0A0h]
00007FF63179F044  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF63179F04B  mov         rax,0FFFFFFFFFFFFFFFFh
00007FF63179F052  add         rax,qword ptr [y_size]
00007FF63179F059  imul        rax,qword ptr [x_size]
00007FF63179F061  add         rax,qword ptr [in]
00007FF63179F068  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF63179F06F  mov         qword ptr [y],0
00007FF63179F07A  mov         rax,qword ptr [y]
00007FF63179F081  mov         rdx,qword ptr [y_size]
00007FF63179F088  cmp         rax,rdx
00007FF63179F08B  jb          c::median_3by3+1E8h (07FF63179F0A4h)
00007FF63179F08D  jmp         c::median_3by3+242h (07FF63179F0FEh)
00007FF63179F08F  mov         eax,1
00007FF63179F094  add         rax,qword ptr [y]
00007FF63179F09B  mov         qword ptr [y],rax
00007FF63179F0A2  jmp         c::median_3by3+1BEh (07FF63179F07Ah)
			memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
00007FF63179F0A4  mov         eax,1
00007FF63179F0A9  add         rax,qword ptr [y]
00007FF63179F0B0  imul        rax,qword ptr [x_2plus]
00007FF63179F0B5  add         rax,qword ptr [padded_img]
00007FF63179F0BC  inc         rax
00007FF63179F0BF  mov         rdx,qword ptr [x_size]
00007FF63179F0C6  imul        rdx,qword ptr [y]
00007FF63179F0CE  add         rdx,qword ptr [in]
00007FF63179F0D5  mov         rcx,qword ptr [x_size]
00007FF63179F0DC  mov         qword ptr [rbp+0F0h],rcx
00007FF63179F0E3  mov         rcx,rax
00007FF63179F0E6  mov         rax,qword ptr [rbp+0F0h]
00007FF63179F0ED  mov         r8,rax
00007FF63179F0F0  call        memcpy (07FF6317FD232h)
00007FF63179F0F5  mov         qword ptr [rbp+0C0h],rax
00007FF63179F0FC  jmp         c::median_3by3+1D3h (07FF63179F08Fh)
		}
		memcpy(padded_img + 1, in, x_size);
00007FF63179F0FE  mov         eax,1
00007FF63179F103  add         rax,qword ptr [padded_img]
00007FF63179F10A  mov         rdx,qword ptr [in]
00007FF63179F111  mov         rcx,qword ptr [x_size]
00007FF63179F118  mov         qword ptr [rbp+0F8h],rcx
00007FF63179F11F  mov         rcx,rax
00007FF63179F122  mov         rax,qword ptr [rbp+0F8h]
00007FF63179F129  mov         r8,rax
00007FF63179F12C  call        memcpy (07FF6317FD232h)
00007FF63179F131  mov         qword ptr [rbp+0C8h],rax
		memcpy(padded_img + (y_size + 1) * x_2plus + 1, in_last_line, x_size);
00007FF63179F138  mov         eax,1
00007FF63179F13D  add         rax,qword ptr [y_size]
00007FF63179F144  imul        rax,qword ptr [x_2plus]
00007FF63179F149  add         rax,qword ptr [padded_img]
00007FF63179F150  inc         rax
00007FF63179F153  mov         rdx,qword ptr [in_last_line]
00007FF63179F15A  mov         rcx,qword ptr [x_size]
00007FF63179F161  mov         qword ptr [rbp+100h],rcx
00007FF63179F168  mov         rcx,rax
00007FF63179F16B  mov         rax,qword ptr [rbp+100h]
00007FF63179F172  mov         r8,rax
00007FF63179F175  call        memcpy (07FF6317FD232h)
00007FF63179F17A  mov         qword ptr [rbp+0D0h],rax
		for (y = 0; y < y_2plus; y += 1) {
00007FF63179F181  mov         qword ptr [y],0
		for (y = 0; y < y_2plus; y += 1) {
00007FF63179F18C  mov         rax,qword ptr [y]
00007FF63179F193  mov         rdx,qword ptr [y_2plus]
00007FF63179F197  cmp         rax,rdx
00007FF63179F19A  jae         c::median_3by3+367h (07FF63179F223h)
			*(padded_img + y * x_2plus) = *(padded_img + y * x_2plus + 1);
00007FF63179F1A0  mov         rax,qword ptr [x_2plus]
00007FF63179F1A4  imul        rax,qword ptr [y]
00007FF63179F1AC  add         rax,qword ptr [padded_img]
00007FF63179F1B3  inc         rax
00007FF63179F1B6  mov         rdx,qword ptr [x_2plus]
00007FF63179F1BA  imul        rdx,qword ptr [y]
00007FF63179F1C2  add         rdx,qword ptr [padded_img]
00007FF63179F1C9  movzx       eax,byte ptr [rax]
00007FF63179F1CC  mov         byte ptr [rdx],al
			*(padded_img + (y + 1) * x_2plus - 2) = *(padded_img + (y + 1) * x_2plus - 3);
00007FF63179F1CE  mov         eax,1
00007FF63179F1D3  add         rax,qword ptr [y]
00007FF63179F1DA  imul        rax,qword ptr [x_2plus]
00007FF63179F1DF  add         rax,qword ptr [padded_img]
00007FF63179F1E6  add         rax,0FFFFFFFFFFFFFFFDh
00007FF63179F1EA  mov         edx,1
00007FF63179F1EF  add         rdx,qword ptr [y]
00007FF63179F1F6  imul        rdx,qword ptr [x_2plus]
00007FF63179F1FB  add         rdx,qword ptr [padded_img]
00007FF63179F202  add         rdx,0FFFFFFFFFFFFFFFEh
00007FF63179F206  movzx       eax,byte ptr [rax]
00007FF63179F209  mov         byte ptr [rdx],al
		for (y = 0; y < y_2plus; y += 1) {
00007FF63179F20B  mov         eax,1
00007FF63179F210  add         rax,qword ptr [y]
00007FF63179F217  mov         qword ptr [y],rax
00007FF63179F21E  jmp         c::median_3by3+2D0h (07FF63179F18Ch)
		}
		uint8_t point1, point2, point3, point4, point5, point6, point7, point8, point9;
		for (y = 0; y < y_size; y += 1) {
00007FF63179F223  mov         qword ptr [y],0
00007FF63179F22E  mov         rax,qword ptr [y]
00007FF63179F235  mov         rdx,qword ptr [y_size]
00007FF63179F23C  cmp         rax,rdx
00007FF63179F23F  jb          c::median_3by3+39Fh (07FF63179F25Bh)
00007FF63179F241  jmp         c::median_3by3+678h (07FF63179F534h)
00007FF63179F246  mov         eax,1
00007FF63179F24B  add         rax,qword ptr [y]
00007FF63179F252  mov         qword ptr [y],rax
00007FF63179F259  jmp         c::median_3by3+372h (07FF63179F22Eh)
			for (x = 0; x < x_size; x += 1) {
00007FF63179F25B  mov         qword ptr [x],0
00007FF63179F266  mov         rax,qword ptr [x]
00007FF63179F26D  mov         rdx,qword ptr [x_size]
00007FF63179F274  cmp         rax,rdx
00007FF63179F277  jae         c::median_3by3+38Ah (07FF63179F246h)
				size_t pos = y * x_2plus + x;
00007FF63179F279  mov         rax,qword ptr [x_2plus]
00007FF63179F27D  imul        rax,qword ptr [y]
00007FF63179F285  add         rax,qword ptr [x]
00007FF63179F28C  mov         qword ptr [rbp+0E0h],rax
				point1 = *(padded_img + pos);
00007FF63179F293  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F29A  add         rax,qword ptr [padded_img]
00007FF63179F2A1  movzx       eax,byte ptr [rax]
00007FF63179F2A4  mov         byte ptr [point1],al
				point2 = *(padded_img + pos + 1);
00007FF63179F2A7  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F2AE  add         rax,qword ptr [padded_img]
00007FF63179F2B5  inc         rax
00007FF63179F2B8  movzx       eax,byte ptr [rax]
00007FF63179F2BB  mov         byte ptr [point2],al
				point3 = *(padded_img + pos + 2);
00007FF63179F2BE  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F2C5  add         rax,qword ptr [padded_img]
00007FF63179F2CC  add         rax,2
00007FF63179F2D0  movzx       eax,byte ptr [rax]
00007FF63179F2D3  mov         byte ptr [point3],al
				point4 = *(padded_img + pos + x_2plus);
00007FF63179F2D6  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F2DD  add         rax,qword ptr [padded_img]
00007FF63179F2E4  add         rax,qword ptr [x_2plus]
00007FF63179F2E8  movzx       eax,byte ptr [rax]
00007FF63179F2EB  mov         byte ptr [point4],al
				point5 = *(padded_img + pos + x_2plus + 1);
00007FF63179F2EE  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F2F5  add         rax,qword ptr [padded_img]
00007FF63179F2FC  add         rax,qword ptr [x_2plus]
00007FF63179F300  inc         rax
00007FF63179F303  movzx       eax,byte ptr [rax]
00007FF63179F306  mov         byte ptr [point5],al
				point6 = *(padded_img + pos + x_2plus + 2);
00007FF63179F309  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F310  add         rax,qword ptr [padded_img]
00007FF63179F317  add         rax,qword ptr [x_2plus]
00007FF63179F31B  add         rax,2
00007FF63179F31F  movzx       eax,byte ptr [rax]
00007FF63179F322  mov         byte ptr [point6],al
				point7 = *(padded_img + pos + 2 * x_2plus);
00007FF63179F325  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F32C  add         rax,qword ptr [padded_img]
00007FF63179F333  mov         rdx,qword ptr [x_2plus]
00007FF63179F337  imul        rdx,rdx,2
00007FF63179F33B  add         rax,rdx
00007FF63179F33E  movzx       eax,byte ptr [rax]
00007FF63179F341  mov         byte ptr [point7],al
				point8 = *(padded_img + pos + 2 * x_2plus + 1);
00007FF63179F344  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F34B  add         rax,qword ptr [padded_img]
00007FF63179F352  mov         rdx,qword ptr [x_2plus]
00007FF63179F356  imul        rdx,rdx,2
00007FF63179F35A  add         rax,rdx
00007FF63179F35D  inc         rax
00007FF63179F360  movzx       eax,byte ptr [rax]
00007FF63179F363  mov         byte ptr [point8],al
				point9 = *(padded_img + pos + 2 * x_2plus + 2);
00007FF63179F366  mov         rax,qword ptr [rbp+0E0h]
00007FF63179F36D  add         rax,qword ptr [padded_img]
00007FF63179F374  mov         rdx,qword ptr [x_2plus]
00007FF63179F378  imul        rdx,rdx,2
00007FF63179F37C  add         rax,rdx
00007FF63179F37F  add         rax,2
00007FF63179F383  movzx       eax,byte ptr [rax]
00007FF63179F386  mov         byte ptr [point9],al
				sort2(point1, point2);
00007FF63179F389  lea         rax,[point1]
00007FF63179F38D  lea         rdx,[point2]
00007FF63179F391  mov         rcx,rax
00007FF63179F394  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point4, point5);
00007FF63179F399  lea         rax,[point4]
00007FF63179F39D  lea         rdx,[point5]
00007FF63179F3A1  mov         rcx,rax
00007FF63179F3A4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point7, point8);
00007FF63179F3A9  lea         rax,[point7]
00007FF63179F3AD  lea         rdx,[point8]
00007FF63179F3B1  mov         rcx,rax
00007FF63179F3B4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point3);
00007FF63179F3B9  lea         rax,[point2]
00007FF63179F3BD  lea         rdx,[point3]
00007FF63179F3C1  mov         rcx,rax
00007FF63179F3C4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point5, point6);
00007FF63179F3C9  lea         rax,[point5]
00007FF63179F3CD  lea         rdx,[point6]
00007FF63179F3D1  mov         rcx,rax
00007FF63179F3D4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point8, point9);
00007FF63179F3D9  lea         rax,[point8]
00007FF63179F3DD  lea         rdx,[point9]
00007FF63179F3E1  mov         rcx,rax
00007FF63179F3E4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point2);
00007FF63179F3E9  lea         rax,[point1]
00007FF63179F3ED  lea         rdx,[point2]
00007FF63179F3F1  mov         rcx,rax
00007FF63179F3F4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point4, point5);
00007FF63179F3F9  lea         rax,[point4]
00007FF63179F3FD  lea         rdx,[point5]
00007FF63179F401  mov         rcx,rax
00007FF63179F404  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point7, point8);
00007FF63179F409  lea         rax,[point7]
00007FF63179F40D  lea         rdx,[point8]
00007FF63179F411  mov         rcx,rax
00007FF63179F414  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point4);
00007FF63179F419  lea         rax,[point1]
00007FF63179F41D  lea         rdx,[point4]
00007FF63179F421  mov         rcx,rax
00007FF63179F424  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point4, point7);
00007FF63179F429  lea         rax,[point4]
00007FF63179F42D  lea         rdx,[point7]
00007FF63179F431  mov         rcx,rax
00007FF63179F434  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point4);
00007FF63179F439  lea         rax,[point1]
00007FF63179F43D  lea         rdx,[point4]
00007FF63179F441  mov         rcx,rax
00007FF63179F444  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point5);
00007FF63179F449  lea         rax,[point2]
00007FF63179F44D  lea         rdx,[point5]
00007FF63179F451  mov         rcx,rax
00007FF63179F454  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point5, point8);
00007FF63179F459  lea         rax,[point5]
00007FF63179F45D  lea         rdx,[point8]
00007FF63179F461  mov         rcx,rax
00007FF63179F464  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point5);
00007FF63179F469  lea         rax,[point2]
00007FF63179F46D  lea         rdx,[point5]
00007FF63179F471  mov         rcx,rax
00007FF63179F474  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point3, point6);
00007FF63179F479  lea         rax,[point3]
00007FF63179F47D  lea         rdx,[point6]
00007FF63179F481  mov         rcx,rax
00007FF63179F484  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point6, point9);
00007FF63179F489  lea         rax,[point6]
00007FF63179F48D  lea         rdx,[point9]
00007FF63179F491  mov         rcx,rax
00007FF63179F494  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point3, point6);
00007FF63179F499  lea         rax,[point3]
00007FF63179F49D  lea         rdx,[point6]
00007FF63179F4A1  mov         rcx,rax
00007FF63179F4A4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point2, point4);
00007FF63179F4A9  lea         rax,[point2]
00007FF63179F4AD  lea         rdx,[point4]
00007FF63179F4B1  mov         rcx,rax
00007FF63179F4B4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point6, point8);
00007FF63179F4B9  lea         rax,[point6]
00007FF63179F4BD  lea         rdx,[point8]
00007FF63179F4C1  mov         rcx,rax
00007FF63179F4C4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point3, point7);
00007FF63179F4C9  lea         rax,[point3]
00007FF63179F4CD  lea         rdx,[point7]
00007FF63179F4D1  mov         rcx,rax
00007FF63179F4D4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point5, point7);
00007FF63179F4D9  lea         rax,[point5]
00007FF63179F4DD  lea         rdx,[point7]
00007FF63179F4E1  mov         rcx,rax
00007FF63179F4E4  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point3, point5);
00007FF63179F4E9  lea         rax,[point3]
00007FF63179F4ED  lea         rdx,[point5]
00007FF63179F4F1  mov         rcx,rax
00007FF63179F4F4  call        sort2<unsigned char> (07FF6317928A1h)
				*(out + y * x_size + x) = point5;
00007FF63179F4F9  mov         rax,qword ptr [x_size]
00007FF63179F500  imul        rax,qword ptr [y]
00007FF63179F508  add         rax,qword ptr [out]
00007FF63179F50F  add         rax,qword ptr [x]
00007FF63179F516  movzx       edx,byte ptr [point5]
00007FF63179F51A  mov         byte ptr [rax],dl
			for (x = 0; x < x_size; x += 1) {
00007FF63179F51C  mov         eax,1
00007FF63179F521  add         rax,qword ptr [x]
00007FF63179F528  mov         qword ptr [x],rax
00007FF63179F52F  jmp         c::median_3by3+3AAh (07FF63179F266h)
			}
		}
		delete[] padded_img;
00007FF63179F534  mov         rax,qword ptr [padded_img]
00007FF63179F53B  mov         edx,1
00007FF63179F540  mov         rcx,rax
00007FF63179F543  call        operator delete[] (07FF631791CE9h)
	}
00007FF63179F548  lea         rax,[std::_VBITS+3D8h (07FF6318027B0h)]
00007FF63179F54F  mov         rdx,rax
00007FF63179F552  mov         rcx,rbp
00007FF63179F555  call        _RTC_CheckStackVars (07FF631792C20h)
00007FF63179F55A  mov         rsi,qword ptr [rbp+108h]
00007FF63179F561  mov         rdi,qword ptr [rbp+110h]
00007FF63179F568  lea         rsp,[rbp+120h]
00007FF63179F56F  pop         rbp
00007FF63179F570  ret
00007FF63179F571  push        rbp
00007FF63179F572  sub         rsp,140h
00007FF63179F579  lea         rbp,[rdx+20h]
00007FF63179F57D  mov         qword ptr [rsp],rax
00007FF63179F581  mov         rax,13Ch
00007FF63179F588  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179F58F  sub         rax,4
00007FF63179F593  cmp         rax,4
00007FF63179F597  jg          c::median_3by3+6CCh (07FF63179F588h)
00007FF63179F599  mov         rax,qword ptr [rsp]
00007FF63179F59D  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179F5A4  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179F5AC  mov         qword ptr [rsp+130h],rdi
00007FF63179F5B4  mov         qword ptr [rsp+128h],rsi
00007FF63179F5BC  mov         qword ptr [rsp+150h],rcx
00007FF63179F5C4  mov         qword ptr [rsp+158h],rdx
00007FF63179F5CC  mov         eax,dword ptr [rbp+5Ch]
00007FF63179F5CF  test        eax,eax
00007FF63179F5D1  je          c::median_3by3+72Bh (07FF63179F5E7h)
00007FF63179F5D3  mov         rax,qword ptr [rbp+98h]
00007FF63179F5DA  mov         edx,0
00007FF63179F5DF  mov         rcx,rax
00007FF63179F5E2  call        operator delete[] (07FF631791CE9h)
00007FF63179F5E7  mov         rsi,qword ptr [rsp+128h]
00007FF63179F5EF  mov         rdi,qword ptr [rsp+130h]
00007FF63179F5F7  add         rsp,140h
00007FF63179F5FE  pop         rbp
00007FF63179F5FF  ret
