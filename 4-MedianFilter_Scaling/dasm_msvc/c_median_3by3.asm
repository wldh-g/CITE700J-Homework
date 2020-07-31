; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF6216E3900  mov         qword ptr [rsp+20h],r9
00007FF6216E3905  mov         qword ptr [rsp+18h],r8
00007FF6216E390A  mov         qword ptr [rsp+10h],rdx
00007FF6216E390F  mov         qword ptr [rsp+8],rcx
00007FF6216E3914  push        rbp
00007FF6216E3915  push        rdi
00007FF6216E3916  sub         rsp,418h
00007FF6216E391D  lea         rbp,[rsp+20h]
00007FF6216E3922  mov         rdi,rsp
00007FF6216E3925  mov         ecx,106h
00007FF6216E392A  mov         eax,0CCCCCCCCh
00007FF6216E392F  rep stos    dword ptr [rdi]
00007FF6216E3931  mov         rcx,qword ptr [rsp+438h]
00007FF6216E3939  mov         rax,qword ptr [__security_cookie (07FF62174D018h)]
00007FF6216E3940  xor         rax,rbp
00007FF6216E3943  mov         qword ptr [rbp+3E8h],rax
00007FF6216E394A  lea         rcx,[__3BE03879_Func_C@cpp (07FF62175B041h)]
00007FF6216E3951  call        __CheckForDebuggerJustMyCode (07FF6216DA569h)
		size_t x, y;
		const size_t x_2plus = x_size + 2;
00007FF6216E3956  mov         rax,qword ptr [x_size]
00007FF6216E395D  add         rax,2
00007FF6216E3961  mov         qword ptr [x_2plus],rax
		const size_t y_2plus = y_size + 2;
00007FF6216E3965  mov         rax,qword ptr [y_size]
00007FF6216E396C  add         rax,2
00007FF6216E3970  mov         qword ptr [y_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
00007FF6216E3974  mov         rax,qword ptr [x_2plus]
00007FF6216E3978  imul        rax,qword ptr [y_2plus]
00007FF6216E397D  mov         qword ptr [rbp+388h],rax
00007FF6216E3984  mov         rcx,qword ptr [rbp+388h]
00007FF6216E398B  call        operator new[] (07FF6216DBC2Ah)
00007FF6216E3990  mov         qword ptr [rbp+3A8h],rax
00007FF6216E3997  cmp         qword ptr [rbp+3A8h],0
00007FF6216E399F  je          c::median_3by3+0F2h (07FF6216E39F2h)
00007FF6216E39A1  mov         rdi,qword ptr [rbp+3A8h]
00007FF6216E39A8  xor         eax,eax
00007FF6216E39AA  mov         rcx,qword ptr [rbp+388h]
00007FF6216E39B1  rep stos    byte ptr [rdi]
00007FF6216E39B3  cmp         qword ptr [rbp+3A8h],0
00007FF6216E39BB  je          c::median_3by3+0D7h (07FF6216E39D7h)
00007FF6216E39BD  mov         rax,qword ptr [rbp+3A8h]
00007FF6216E39C4  mov         byte ptr [rax],0
00007FF6216E39C7  mov         rax,qword ptr [rbp+3A8h]
00007FF6216E39CE  mov         qword ptr [rbp+3D8h],rax
00007FF6216E39D5  jmp         c::median_3by3+0E2h (07FF6216E39E2h)
00007FF6216E39D7  mov         qword ptr [rbp+3D8h],0
00007FF6216E39E2  mov         rax,qword ptr [rbp+3D8h]
00007FF6216E39E9  mov         qword ptr [rbp+3E0h],rax
00007FF6216E39F0  jmp         c::median_3by3+0FDh (07FF6216E39FDh)
00007FF6216E39F2  mov         qword ptr [rbp+3E0h],0
00007FF6216E39FD  mov         rax,qword ptr [rbp+3E0h]
00007FF6216E3A04  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF6216E3A0B  mov         rax,qword ptr [y_size]
00007FF6216E3A12  dec         rax
00007FF6216E3A15  imul        rax,qword ptr [x_size]
00007FF6216E3A1D  mov         rcx,qword ptr [in]
00007FF6216E3A24  add         rcx,rax
00007FF6216E3A27  mov         rax,rcx
00007FF6216E3A2A  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF6216E3A31  mov         qword ptr [y],0
00007FF6216E3A39  jmp         c::median_3by3+146h (07FF6216E3A46h)
00007FF6216E3A3B  mov         rax,qword ptr [y]
00007FF6216E3A3F  inc         rax
00007FF6216E3A42  mov         qword ptr [y],rax
00007FF6216E3A46  mov         rax,qword ptr [y_size]
00007FF6216E3A4D  cmp         qword ptr [y],rax
00007FF6216E3A51  jae         c::median_3by3+195h (07FF6216E3A95h)
			memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
00007FF6216E3A53  mov         rax,qword ptr [y]
00007FF6216E3A57  imul        rax,qword ptr [x_size]
00007FF6216E3A5F  mov         rcx,qword ptr [in]
00007FF6216E3A66  add         rcx,rax
00007FF6216E3A69  mov         rax,rcx
00007FF6216E3A6C  mov         rcx,qword ptr [y]
00007FF6216E3A70  inc         rcx
00007FF6216E3A73  imul        rcx,qword ptr [x_2plus]
00007FF6216E3A78  mov         rdx,qword ptr [padded_img]
00007FF6216E3A7F  lea         rcx,[rdx+rcx+1]
00007FF6216E3A84  mov         r8,qword ptr [x_size]
00007FF6216E3A8B  mov         rdx,rax
00007FF6216E3A8E  call        memcpy (07FF6216DBAA9h)
		}
00007FF6216E3A93  jmp         c::median_3by3+13Bh (07FF6216E3A3Bh)
		memcpy(padded_img + 1, in, x_size);
00007FF6216E3A95  mov         rax,qword ptr [padded_img]
00007FF6216E3A9C  inc         rax
00007FF6216E3A9F  mov         r8,qword ptr [x_size]
00007FF6216E3AA6  mov         rdx,qword ptr [in]
00007FF6216E3AAD  mov         rcx,rax
00007FF6216E3AB0  call        memcpy (07FF6216DBAA9h)
		memcpy(padded_img + (y_size + 1) * x_2plus + 1, in_last_line, x_size);
00007FF6216E3AB5  mov         rax,qword ptr [y_size]
00007FF6216E3ABC  inc         rax
00007FF6216E3ABF  imul        rax,qword ptr [x_2plus]
00007FF6216E3AC4  mov         rcx,qword ptr [padded_img]
00007FF6216E3ACB  lea         rax,[rcx+rax+1]
00007FF6216E3AD0  mov         r8,qword ptr [x_size]
00007FF6216E3AD7  mov         rdx,qword ptr [in_last_line]
00007FF6216E3ADE  mov         rcx,rax
00007FF6216E3AE1  call        memcpy (07FF6216DBAA9h)
		for (y = 0; y < y_2plus; y += 1) {
00007FF6216E3AE6  mov         qword ptr [y],0
00007FF6216E3AEE  jmp         c::median_3by3+1FBh (07FF6216E3AFBh)
		for (y = 0; y < y_2plus; y += 1) {
00007FF6216E3AF0  mov         rax,qword ptr [y]
00007FF6216E3AF4  inc         rax
00007FF6216E3AF7  mov         qword ptr [y],rax
00007FF6216E3AFB  mov         rax,qword ptr [y_2plus]
00007FF6216E3AFF  cmp         qword ptr [y],rax
00007FF6216E3B03  jae         c::median_3by3+25Eh (07FF6216E3B5Eh)
			*(padded_img + y * x_2plus) = *(padded_img + y * x_2plus + 1);
00007FF6216E3B05  mov         rax,qword ptr [y]
00007FF6216E3B09  imul        rax,qword ptr [x_2plus]
00007FF6216E3B0E  mov         rcx,qword ptr [y]
00007FF6216E3B12  imul        rcx,qword ptr [x_2plus]
00007FF6216E3B17  mov         rdx,qword ptr [padded_img]
00007FF6216E3B1E  mov         rdi,qword ptr [padded_img]
00007FF6216E3B25  movzx       eax,byte ptr [rdi+rax+1]
00007FF6216E3B2A  mov         byte ptr [rdx+rcx],al
			*(padded_img + (y + 1) * x_2plus - 2) = *(padded_img + (y + 1) * x_2plus - 3);
00007FF6216E3B2D  mov         rax,qword ptr [y]
00007FF6216E3B31  inc         rax
00007FF6216E3B34  imul        rax,qword ptr [x_2plus]
00007FF6216E3B39  mov         rcx,qword ptr [y]
00007FF6216E3B3D  inc         rcx
00007FF6216E3B40  imul        rcx,qword ptr [x_2plus]
00007FF6216E3B45  mov         rdx,qword ptr [padded_img]
00007FF6216E3B4C  mov         rdi,qword ptr [padded_img]
00007FF6216E3B53  movzx       eax,byte ptr [rdi+rax-3]
00007FF6216E3B58  mov         byte ptr [rdx+rcx-2],al
		}
00007FF6216E3B5C  jmp         c::median_3by3+1F0h (07FF6216E3AF0h)
		uint8_t point1, point2, point3, point4, point5, point6, point7, point8, point9;
		for (y = 0; y < y_size; y += 1) {
00007FF6216E3B5E  mov         qword ptr [y],0
00007FF6216E3B66  jmp         c::median_3by3+273h (07FF6216E3B73h)
00007FF6216E3B68  mov         rax,qword ptr [y]
00007FF6216E3B6C  inc         rax
00007FF6216E3B6F  mov         qword ptr [y],rax
00007FF6216E3B73  mov         rax,qword ptr [y_size]
00007FF6216E3B7A  cmp         qword ptr [y],rax
00007FF6216E3B7E  jae         c::median_3by3+5CDh (07FF6216E3ECDh)
			for (x = 0; x < x_size; x += 1) {
00007FF6216E3B84  mov         qword ptr [x],0
00007FF6216E3B8C  jmp         c::median_3by3+299h (07FF6216E3B99h)
00007FF6216E3B8E  mov         rax,qword ptr [x]
00007FF6216E3B92  inc         rax
00007FF6216E3B95  mov         qword ptr [x],rax
00007FF6216E3B99  mov         rax,qword ptr [x_size]
00007FF6216E3BA0  cmp         qword ptr [x],rax
00007FF6216E3BA4  jae         c::median_3by3+5C8h (07FF6216E3EC8h)
				size_t pos = y * x_2plus + x;
00007FF6216E3BAA  mov         rax,qword ptr [y]
00007FF6216E3BAE  imul        rax,qword ptr [x_2plus]
00007FF6216E3BB3  add         rax,qword ptr [x]
00007FF6216E3BB7  mov         qword ptr [rbp+1E8h],rax
				point1 = *(padded_img + pos);
00007FF6216E3BBE  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3BC5  mov         rcx,qword ptr [padded_img]
00007FF6216E3BCC  add         rcx,rax
00007FF6216E3BCF  mov         rax,rcx
00007FF6216E3BD2  movzx       eax,byte ptr [rax]
00007FF6216E3BD5  mov         byte ptr [point1],al
				point2 = *(padded_img + pos + 1);
00007FF6216E3BDB  mov         rax,qword ptr [rbp+1E8h]
				point2 = *(padded_img + pos + 1);
00007FF6216E3BE2  mov         rcx,qword ptr [padded_img]
00007FF6216E3BE9  add         rcx,rax
00007FF6216E3BEC  mov         rax,rcx
00007FF6216E3BEF  movzx       eax,byte ptr [rax+1]
00007FF6216E3BF3  mov         byte ptr [point2],al
				point3 = *(padded_img + pos + 2);
00007FF6216E3BF9  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3C00  mov         rcx,qword ptr [padded_img]
00007FF6216E3C07  add         rcx,rax
00007FF6216E3C0A  mov         rax,rcx
00007FF6216E3C0D  movzx       eax,byte ptr [rax+2]
00007FF6216E3C11  mov         byte ptr [point3],al
				point4 = *(padded_img + pos + x_2plus);
00007FF6216E3C17  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3C1E  mov         rcx,qword ptr [padded_img]
00007FF6216E3C25  add         rcx,rax
00007FF6216E3C28  mov         rax,rcx
00007FF6216E3C2B  mov         rcx,qword ptr [x_2plus]
00007FF6216E3C2F  movzx       eax,byte ptr [rax+rcx]
00007FF6216E3C33  mov         byte ptr [point4],al
				point5 = *(padded_img + pos + x_2plus + 1);
00007FF6216E3C39  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3C40  mov         rcx,qword ptr [padded_img]
00007FF6216E3C47  add         rcx,rax
00007FF6216E3C4A  mov         rax,rcx
00007FF6216E3C4D  mov         rcx,qword ptr [x_2plus]
00007FF6216E3C51  movzx       eax,byte ptr [rax+rcx+1]
00007FF6216E3C56  mov         byte ptr [point5],al
				point6 = *(padded_img + pos + x_2plus + 2);
00007FF6216E3C5C  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3C63  mov         rcx,qword ptr [padded_img]
00007FF6216E3C6A  add         rcx,rax
00007FF6216E3C6D  mov         rax,rcx
00007FF6216E3C70  mov         rcx,qword ptr [x_2plus]
00007FF6216E3C74  movzx       eax,byte ptr [rax+rcx+2]
00007FF6216E3C79  mov         byte ptr [point6],al
				point7 = *(padded_img + pos + 2 * x_2plus);
00007FF6216E3C7F  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3C86  mov         rcx,qword ptr [padded_img]
00007FF6216E3C8D  add         rcx,rax
00007FF6216E3C90  mov         rax,rcx
00007FF6216E3C93  mov         rcx,qword ptr [x_2plus]
00007FF6216E3C97  movzx       eax,byte ptr [rax+rcx*2]
00007FF6216E3C9B  mov         byte ptr [point7],al
				point8 = *(padded_img + pos + 2 * x_2plus + 1);
00007FF6216E3CA1  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3CA8  mov         rcx,qword ptr [padded_img]
00007FF6216E3CAF  add         rcx,rax
00007FF6216E3CB2  mov         rax,rcx
00007FF6216E3CB5  mov         rcx,qword ptr [x_2plus]
00007FF6216E3CB9  movzx       eax,byte ptr [rax+rcx*2+1]
00007FF6216E3CBE  mov         byte ptr [point8],al
				point9 = *(padded_img + pos + 2 * x_2plus + 2);
00007FF6216E3CC4  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E3CCB  mov         rcx,qword ptr [padded_img]
00007FF6216E3CD2  add         rcx,rax
00007FF6216E3CD5  mov         rax,rcx
00007FF6216E3CD8  mov         rcx,qword ptr [x_2plus]
00007FF6216E3CDC  movzx       eax,byte ptr [rax+rcx*2+2]
00007FF6216E3CE1  mov         byte ptr [point9],al
				sort2(&point1, &point2);
00007FF6216E3CE7  lea         rdx,[point2]
00007FF6216E3CEE  lea         rcx,[point1]
00007FF6216E3CF5  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point4, &point5);
00007FF6216E3CFA  lea         rdx,[point5]
00007FF6216E3D01  lea         rcx,[point4]
00007FF6216E3D08  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point7, &point8);
00007FF6216E3D0D  lea         rdx,[point8]
00007FF6216E3D14  lea         rcx,[point7]
00007FF6216E3D1B  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point3);
00007FF6216E3D20  lea         rdx,[point3]
00007FF6216E3D27  lea         rcx,[point2]
00007FF6216E3D2E  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point5, &point6);
00007FF6216E3D33  lea         rdx,[point6]
00007FF6216E3D3A  lea         rcx,[point5]
00007FF6216E3D41  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point8, &point9);
00007FF6216E3D46  lea         rdx,[point9]
00007FF6216E3D4D  lea         rcx,[point8]
00007FF6216E3D54  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point2);
00007FF6216E3D59  lea         rdx,[point2]
00007FF6216E3D60  lea         rcx,[point1]
00007FF6216E3D67  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point4, &point5);
00007FF6216E3D6C  lea         rdx,[point5]
00007FF6216E3D73  lea         rcx,[point4]
00007FF6216E3D7A  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point7, &point8);
00007FF6216E3D7F  lea         rdx,[point8]
00007FF6216E3D86  lea         rcx,[point7]
00007FF6216E3D8D  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point4);
00007FF6216E3D92  lea         rdx,[point4]
00007FF6216E3D99  lea         rcx,[point1]
00007FF6216E3DA0  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point4, &point7);
00007FF6216E3DA5  lea         rdx,[point7]
00007FF6216E3DAC  lea         rcx,[point4]
00007FF6216E3DB3  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point4);
00007FF6216E3DB8  lea         rdx,[point4]
00007FF6216E3DBF  lea         rcx,[point1]
00007FF6216E3DC6  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point5);
00007FF6216E3DCB  lea         rdx,[point5]
00007FF6216E3DD2  lea         rcx,[point2]
00007FF6216E3DD9  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point5, &point8);
00007FF6216E3DDE  lea         rdx,[point8]
00007FF6216E3DE5  lea         rcx,[point5]
00007FF6216E3DEC  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point5);
00007FF6216E3DF1  lea         rdx,[point5]
00007FF6216E3DF8  lea         rcx,[point2]
00007FF6216E3DFF  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point3, &point6);
00007FF6216E3E04  lea         rdx,[point6]
00007FF6216E3E0B  lea         rcx,[point3]
00007FF6216E3E12  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point6, &point9);
00007FF6216E3E17  lea         rdx,[point9]
				sort2(&point6, &point9);
00007FF6216E3E1E  lea         rcx,[point6]
00007FF6216E3E25  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point3, &point6);
00007FF6216E3E2A  lea         rdx,[point6]
00007FF6216E3E31  lea         rcx,[point3]
00007FF6216E3E38  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point4);
00007FF6216E3E3D  lea         rdx,[point4]
00007FF6216E3E44  lea         rcx,[point2]
00007FF6216E3E4B  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point6, &point8);
00007FF6216E3E50  lea         rdx,[point8]
00007FF6216E3E57  lea         rcx,[point6]
00007FF6216E3E5E  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point3, &point7);
00007FF6216E3E63  lea         rdx,[point7]
00007FF6216E3E6A  lea         rcx,[point3]
00007FF6216E3E71  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point5, &point7);
00007FF6216E3E76  lea         rdx,[point7]
00007FF6216E3E7D  lea         rcx,[point5]
00007FF6216E3E84  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point3, &point5);
00007FF6216E3E89  lea         rdx,[point5]
00007FF6216E3E90  lea         rcx,[point3]
00007FF6216E3E97  call        sort2<unsigned char> (07FF6216DA45Bh)
				*(out + y * x_size + x) = point5;
00007FF6216E3E9C  mov         rax,qword ptr [y]
00007FF6216E3EA0  imul        rax,qword ptr [x_size]
00007FF6216E3EA8  mov         rcx,qword ptr [out]
00007FF6216E3EAF  add         rcx,rax
00007FF6216E3EB2  mov         rax,rcx
00007FF6216E3EB5  mov         rcx,qword ptr [x]
00007FF6216E3EB9  movzx       edx,byte ptr [point5]
00007FF6216E3EC0  mov         byte ptr [rax+rcx],dl
			}
00007FF6216E3EC3  jmp         c::median_3by3+28Eh (07FF6216E3B8Eh)
		}
00007FF6216E3EC8  jmp         c::median_3by3+268h (07FF6216E3B68h)
		delete[] padded_img;
00007FF6216E3ECD  mov         rax,qword ptr [padded_img]
00007FF6216E3ED4  mov         qword ptr [rbp+3C8h],rax
00007FF6216E3EDB  mov         rcx,qword ptr [rbp+3C8h]
00007FF6216E3EE2  call        operator delete[] (07FF6216DB365h)
00007FF6216E3EE7  cmp         qword ptr [rbp+3C8h],0
00007FF6216E3EEF  jne         c::median_3by3+5FEh (07FF6216E3EFEh)
00007FF6216E3EF1  mov         qword ptr [rbp+3D8h],0
00007FF6216E3EFC  jmp         c::median_3by3+617h (07FF6216E3F17h)
00007FF6216E3EFE  mov         qword ptr [padded_img],8123h
00007FF6216E3F09  mov         rax,qword ptr [padded_img]
00007FF6216E3F10  mov         qword ptr [rbp+3D8h],rax
	}
00007FF6216E3F17  lea         rcx,[rbp-20h]
00007FF6216E3F1B  lea         rdx,[string L""transposed poi\x4000\0\0\0\0"...+378h (07FF621736308h)]
00007FF6216E3F22  call        _RTC_CheckStackVars (07FF6216DBDFBh)
00007FF6216E3F27  mov         rcx,qword ptr [rbp+3E8h]
00007FF6216E3F2E  xor         rcx,rbp
00007FF6216E3F31  call        __security_check_cookie (07FF6216DA7EEh)
00007FF6216E3F36  lea         rsp,[rbp+3F8h]
00007FF6216E3F3D  pop         rdi
00007FF6216E3F3E  pop         rbp
00007FF6216E3F3F  ret
