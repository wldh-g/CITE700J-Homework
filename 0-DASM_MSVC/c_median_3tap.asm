; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF6216E40D0  mov         qword ptr [rsp+20h],r9
00007FF6216E40D5  mov         qword ptr [rsp+18h],r8
00007FF6216E40DA  mov         qword ptr [rsp+10h],rdx
00007FF6216E40DF  mov         qword ptr [rsp+8],rcx
00007FF6216E40E4  push        rbp
00007FF6216E40E5  push        rdi
00007FF6216E40E6  sub         rsp,258h
00007FF6216E40ED  lea         rbp,[rsp+20h]
00007FF6216E40F2  mov         rdi,rsp
00007FF6216E40F5  mov         ecx,96h
00007FF6216E40FA  mov         eax,0CCCCCCCCh
00007FF6216E40FF  rep stos    dword ptr [rdi]
00007FF6216E4101  mov         rcx,qword ptr [rsp+278h]
00007FF6216E4109  mov         rax,qword ptr [__security_cookie (07FF62174D018h)]
00007FF6216E4110  xor         rax,rbp
00007FF6216E4113  mov         qword ptr [rbp+228h],rax
00007FF6216E411A  lea         rcx,[__3BE03879_Func_C@cpp (07FF62175B041h)]
00007FF6216E4121  call        __CheckForDebuggerJustMyCode (07FF6216DA569h)
		size_t x, y;
		uint8_t* padded_img = new uint8_t[x_size * (y_size + 2)] { 0 };
00007FF6216E4126  mov         rax,qword ptr [y_size]
00007FF6216E412D  add         rax,2
00007FF6216E4131  mov         rcx,qword ptr [x_size]
00007FF6216E4138  imul        rcx,rax
00007FF6216E413C  mov         rax,rcx
00007FF6216E413F  mov         qword ptr [rbp+1C8h],rax
00007FF6216E4146  mov         rcx,qword ptr [rbp+1C8h]
00007FF6216E414D  call        operator new[] (07FF6216DBC2Ah)
00007FF6216E4152  mov         qword ptr [rbp+1E8h],rax
00007FF6216E4159  cmp         qword ptr [rbp+1E8h],0
00007FF6216E4161  je          c::median_3tap+0E4h (07FF6216E41B4h)
00007FF6216E4163  mov         rdi,qword ptr [rbp+1E8h]
00007FF6216E416A  xor         eax,eax
00007FF6216E416C  mov         rcx,qword ptr [rbp+1C8h]
00007FF6216E4173  rep stos    byte ptr [rdi]
00007FF6216E4175  cmp         qword ptr [rbp+1E8h],0
00007FF6216E417D  je          c::median_3tap+0C9h (07FF6216E4199h)
00007FF6216E417F  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E4186  mov         byte ptr [rax],0
00007FF6216E4189  mov         rax,qword ptr [rbp+1E8h]
00007FF6216E4190  mov         qword ptr [rbp+218h],rax
00007FF6216E4197  jmp         c::median_3tap+0D4h (07FF6216E41A4h)
00007FF6216E4199  mov         qword ptr [rbp+218h],0
00007FF6216E41A4  mov         rax,qword ptr [rbp+218h]
00007FF6216E41AB  mov         qword ptr [rbp+220h],rax
00007FF6216E41B2  jmp         c::median_3tap+0EFh (07FF6216E41BFh)
00007FF6216E41B4  mov         qword ptr [rbp+220h],0
00007FF6216E41BF  mov         rax,qword ptr [rbp+220h]
00007FF6216E41C6  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF6216E41CA  mov         rax,qword ptr [y_size]
00007FF6216E41D1  dec         rax
00007FF6216E41D4  imul        rax,qword ptr [x_size]
00007FF6216E41DC  mov         rcx,qword ptr [in]
00007FF6216E41E3  add         rcx,rax
00007FF6216E41E6  mov         rax,rcx
00007FF6216E41E9  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF6216E41ED  mov         qword ptr [y],0
00007FF6216E41F5  jmp         c::median_3tap+132h (07FF6216E4202h)
00007FF6216E41F7  mov         rax,qword ptr [y]
00007FF6216E41FB  inc         rax
00007FF6216E41FE  mov         qword ptr [y],rax
00007FF6216E4202  mov         rax,qword ptr [y_size]
00007FF6216E4209  cmp         qword ptr [y],rax
00007FF6216E420D  jae         c::median_3tap+182h (07FF6216E4252h)
			memcpy(padded_img + (y + 1) * x_size, in + y * x_size, x_size);
00007FF6216E420F  mov         rax,qword ptr [y]
00007FF6216E4213  imul        rax,qword ptr [x_size]
00007FF6216E421B  mov         rcx,qword ptr [in]
00007FF6216E4222  add         rcx,rax
00007FF6216E4225  mov         rax,rcx
00007FF6216E4228  mov         rcx,qword ptr [y]
00007FF6216E422C  inc         rcx
00007FF6216E422F  imul        rcx,qword ptr [x_size]
00007FF6216E4237  mov         rdx,qword ptr [padded_img]
00007FF6216E423B  add         rdx,rcx
00007FF6216E423E  mov         rcx,rdx
00007FF6216E4241  mov         r8,qword ptr [x_size]
00007FF6216E4248  mov         rdx,rax
00007FF6216E424B  call        memcpy (07FF6216DBAA9h)
		}
00007FF6216E4250  jmp         c::median_3tap+127h (07FF6216E41F7h)
		memcpy(padded_img, in, x_size);
00007FF6216E4252  mov         r8,qword ptr [x_size]
00007FF6216E4259  mov         rdx,qword ptr [in]
00007FF6216E4260  mov         rcx,qword ptr [padded_img]
00007FF6216E4264  call        memcpy (07FF6216DBAA9h)
		memcpy(padded_img + (y_size + 1) * x_size, in_last_line, x_size);
00007FF6216E4269  mov         rax,qword ptr [y_size]
00007FF6216E4270  inc         rax
00007FF6216E4273  imul        rax,qword ptr [x_size]
00007FF6216E427B  mov         rcx,qword ptr [padded_img]
00007FF6216E427F  add         rcx,rax
00007FF6216E4282  mov         rax,rcx
00007FF6216E4285  mov         r8,qword ptr [x_size]
00007FF6216E428C  mov         rdx,qword ptr [in_last_line]
00007FF6216E4290  mov         rcx,rax
00007FF6216E4293  call        memcpy (07FF6216DBAA9h)
		uint8_t point1, point2, point3;
		for (y = 0; y < y_size; y += 1) {
00007FF6216E4298  mov         qword ptr [y],0
00007FF6216E42A0  jmp         c::median_3tap+1DDh (07FF6216E42ADh)
00007FF6216E42A2  mov         rax,qword ptr [y]
00007FF6216E42A6  inc         rax
00007FF6216E42A9  mov         qword ptr [y],rax
00007FF6216E42AD  mov         rax,qword ptr [y_size]
00007FF6216E42B4  cmp         qword ptr [y],rax
00007FF6216E42B8  jae         c::median_3tap+2E9h (07FF6216E43B9h)
			for (x = 0; x < x_size; x += 1) {
00007FF6216E42BE  mov         qword ptr [x],0
00007FF6216E42C6  jmp         c::median_3tap+203h (07FF6216E42D3h)
00007FF6216E42C8  mov         rax,qword ptr [x]
00007FF6216E42CC  inc         rax
00007FF6216E42CF  mov         qword ptr [x],rax
00007FF6216E42D3  mov         rax,qword ptr [x_size]
00007FF6216E42DA  cmp         qword ptr [x],rax
00007FF6216E42DE  jae         c::median_3tap+2E4h (07FF6216E43B4h)
				size_t pos = y * x_size + x;
00007FF6216E42E4  mov         rax,qword ptr [y]
00007FF6216E42E8  imul        rax,qword ptr [x_size]
00007FF6216E42F0  add         rax,qword ptr [x]
00007FF6216E42F4  mov         qword ptr [rbp+0E8h],rax
				point1 = *(padded_img + pos);
00007FF6216E42FB  mov         rax,qword ptr [rbp+0E8h]
00007FF6216E4302  mov         rcx,qword ptr [padded_img]
00007FF6216E4306  add         rcx,rax
00007FF6216E4309  mov         rax,rcx
00007FF6216E430C  movzx       eax,byte ptr [rax]
00007FF6216E430F  mov         byte ptr [point1],al
				point2 = *(padded_img + pos + x_size);
00007FF6216E4315  mov         rax,qword ptr [rbp+0E8h]
00007FF6216E431C  mov         rcx,qword ptr [padded_img]
00007FF6216E4320  add         rcx,rax
00007FF6216E4323  mov         rax,rcx
00007FF6216E4326  mov         rcx,qword ptr [x_size]
00007FF6216E432D  movzx       eax,byte ptr [rax+rcx]
00007FF6216E4331  mov         byte ptr [point2],al
				point3 = *(padded_img + pos + 2 * x_size);
00007FF6216E4337  mov         rax,qword ptr [rbp+0E8h]
00007FF6216E433E  mov         rcx,qword ptr [padded_img]
00007FF6216E4342  add         rcx,rax
00007FF6216E4345  mov         rax,rcx
				point3 = *(padded_img + pos + 2 * x_size);
00007FF6216E4348  mov         rcx,qword ptr [x_size]
00007FF6216E434F  movzx       eax,byte ptr [rax+rcx*2]
00007FF6216E4353  mov         byte ptr [point3],al
				sort2(&point2, &point3);
00007FF6216E4359  lea         rdx,[point3]
00007FF6216E4360  lea         rcx,[point2]
00007FF6216E4367  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point3);
00007FF6216E436C  lea         rdx,[point3]
00007FF6216E4373  lea         rcx,[point1]
00007FF6216E437A  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point2);
00007FF6216E437F  lea         rdx,[point2]
00007FF6216E4386  lea         rcx,[point1]
00007FF6216E438D  call        sort2<unsigned char> (07FF6216DA45Bh)
				*(out + pos) = point2;
00007FF6216E4392  mov         rax,qword ptr [rbp+0E8h]
00007FF6216E4399  mov         rcx,qword ptr [out]
00007FF6216E43A0  add         rcx,rax
00007FF6216E43A3  mov         rax,rcx
00007FF6216E43A6  movzx       ecx,byte ptr [point2]
00007FF6216E43AD  mov         byte ptr [rax],cl
			}
00007FF6216E43AF  jmp         c::median_3tap+1F8h (07FF6216E42C8h)
		}
00007FF6216E43B4  jmp         c::median_3tap+1D2h (07FF6216E42A2h)
		delete[] padded_img;
00007FF6216E43B9  mov         rax,qword ptr [padded_img]
00007FF6216E43BD  mov         qword ptr [rbp+208h],rax
00007FF6216E43C4  mov         rcx,qword ptr [rbp+208h]
00007FF6216E43CB  call        operator delete[] (07FF6216DB365h)
00007FF6216E43D0  cmp         qword ptr [rbp+208h],0
00007FF6216E43D8  jne         c::median_3tap+317h (07FF6216E43E7h)
00007FF6216E43DA  mov         qword ptr [rbp+218h],0
00007FF6216E43E5  jmp         c::median_3tap+32Ah (07FF6216E43FAh)
00007FF6216E43E7  mov         qword ptr [padded_img],8123h
00007FF6216E43EF  mov         rax,qword ptr [padded_img]
00007FF6216E43F3  mov         qword ptr [rbp+218h],rax
	};
00007FF6216E43FA  lea         rcx,[rbp-20h]
00007FF6216E43FE  lea         rdx,[string L""transposed poi\x4000\0\0\0\0"...+58h (07FF621735FE8h)]
00007FF6216E4405  call        _RTC_CheckStackVars (07FF6216DBDFBh)
00007FF6216E440A  mov         rcx,qword ptr [rbp+228h]
00007FF6216E4411  xor         rcx,rbp
00007FF6216E4414  call        __security_check_cookie (07FF6216DA7EEh)
00007FF6216E4419  lea         rsp,[rbp+238h]
00007FF6216E4420  pop         rdi
00007FF6216E4421  pop         rbp
00007FF6216E4422  ret
