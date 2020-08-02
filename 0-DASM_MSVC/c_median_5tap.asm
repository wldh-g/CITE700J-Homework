; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF6216E4500  mov         qword ptr [rsp+20h],r9
00007FF6216E4505  mov         qword ptr [rsp+18h],r8
00007FF6216E450A  mov         qword ptr [rsp+10h],rdx
00007FF6216E450F  mov         qword ptr [rsp+8],rcx
00007FF6216E4514  push        rbp
00007FF6216E4515  push        rdi
00007FF6216E4516  sub         rsp,298h
00007FF6216E451D  lea         rbp,[rsp+20h]
00007FF6216E4522  mov         rdi,rsp
00007FF6216E4525  mov         ecx,0A6h
00007FF6216E452A  mov         eax,0CCCCCCCCh
00007FF6216E452F  rep stos    dword ptr [rdi]
00007FF6216E4531  mov         rcx,qword ptr [rsp+2B8h]
00007FF6216E4539  mov         rax,qword ptr [__security_cookie (07FF62174D018h)]
00007FF6216E4540  xor         rax,rbp
00007FF6216E4543  mov         qword ptr [rbp+268h],rax
00007FF6216E454A  lea         rcx,[__3BE03879_Func_C@cpp (07FF62175B041h)]
00007FF6216E4551  call        __CheckForDebuggerJustMyCode (07FF6216DA569h)
		size_t x, y;
		uint8_t* padded_img = new uint8_t[x_size * (y_size + 4)] { 0 };
00007FF6216E4556  mov         rax,qword ptr [y_size]
00007FF6216E455D  add         rax,4
00007FF6216E4561  mov         rcx,qword ptr [x_size]
00007FF6216E4568  imul        rcx,rax
00007FF6216E456C  mov         rax,rcx
00007FF6216E456F  mov         qword ptr [rbp+208h],rax
00007FF6216E4576  mov         rcx,qword ptr [rbp+208h]
00007FF6216E457D  call        operator new[] (07FF6216DBC2Ah)
00007FF6216E4582  mov         qword ptr [rbp+228h],rax
00007FF6216E4589  cmp         qword ptr [rbp+228h],0
00007FF6216E4591  je          c::median_5tap+0E4h (07FF6216E45E4h)
00007FF6216E4593  mov         rdi,qword ptr [rbp+228h]
00007FF6216E459A  xor         eax,eax
00007FF6216E459C  mov         rcx,qword ptr [rbp+208h]
00007FF6216E45A3  rep stos    byte ptr [rdi]
00007FF6216E45A5  cmp         qword ptr [rbp+228h],0
00007FF6216E45AD  je          c::median_5tap+0C9h (07FF6216E45C9h)
00007FF6216E45AF  mov         rax,qword ptr [rbp+228h]
00007FF6216E45B6  mov         byte ptr [rax],0
00007FF6216E45B9  mov         rax,qword ptr [rbp+228h]
00007FF6216E45C0  mov         qword ptr [rbp+258h],rax
00007FF6216E45C7  jmp         c::median_5tap+0D4h (07FF6216E45D4h)
00007FF6216E45C9  mov         qword ptr [rbp+258h],0
00007FF6216E45D4  mov         rax,qword ptr [rbp+258h]
00007FF6216E45DB  mov         qword ptr [rbp+260h],rax
00007FF6216E45E2  jmp         c::median_5tap+0EFh (07FF6216E45EFh)
00007FF6216E45E4  mov         qword ptr [rbp+260h],0
00007FF6216E45EF  mov         rax,qword ptr [rbp+260h]
00007FF6216E45F6  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF6216E45FA  mov         rax,qword ptr [y_size]
00007FF6216E4601  dec         rax
00007FF6216E4604  imul        rax,qword ptr [x_size]
00007FF6216E460C  mov         rcx,qword ptr [in]
00007FF6216E4613  add         rcx,rax
00007FF6216E4616  mov         rax,rcx
00007FF6216E4619  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF6216E461D  mov         qword ptr [y],0
00007FF6216E4625  jmp         c::median_5tap+132h (07FF6216E4632h)
00007FF6216E4627  mov         rax,qword ptr [y]
00007FF6216E462B  inc         rax
00007FF6216E462E  mov         qword ptr [y],rax
00007FF6216E4632  mov         rax,qword ptr [y_size]
00007FF6216E4639  cmp         qword ptr [y],rax
00007FF6216E463D  jae         c::median_5tap+183h (07FF6216E4683h)
			memcpy(padded_img + (y + 2) * x_size, in + y * x_size, x_size);
00007FF6216E463F  mov         rax,qword ptr [y]
00007FF6216E4643  imul        rax,qword ptr [x_size]
00007FF6216E464B  mov         rcx,qword ptr [in]
00007FF6216E4652  add         rcx,rax
00007FF6216E4655  mov         rax,rcx
00007FF6216E4658  mov         rcx,qword ptr [y]
00007FF6216E465C  add         rcx,2
00007FF6216E4660  imul        rcx,qword ptr [x_size]
00007FF6216E4668  mov         rdx,qword ptr [padded_img]
00007FF6216E466C  add         rdx,rcx
00007FF6216E466F  mov         rcx,rdx
00007FF6216E4672  mov         r8,qword ptr [x_size]
00007FF6216E4679  mov         rdx,rax
00007FF6216E467C  call        memcpy (07FF6216DBAA9h)
		}
00007FF6216E4681  jmp         c::median_5tap+127h (07FF6216E4627h)
		for (y = 0; y < 2; y += 1) {
00007FF6216E4683  mov         qword ptr [y],0
00007FF6216E468B  jmp         c::median_5tap+198h (07FF6216E4698h)
00007FF6216E468D  mov         rax,qword ptr [y]
00007FF6216E4691  inc         rax
00007FF6216E4694  mov         qword ptr [y],rax
00007FF6216E4698  cmp         qword ptr [y],2
00007FF6216E469D  jae         c::median_5tap+202h (07FF6216E4702h)
			memcpy(padded_img + y * x_size, in, x_size);
00007FF6216E469F  mov         rax,qword ptr [y]
00007FF6216E46A3  imul        rax,qword ptr [x_size]
00007FF6216E46AB  mov         rcx,qword ptr [padded_img]
00007FF6216E46AF  add         rcx,rax
00007FF6216E46B2  mov         rax,rcx
00007FF6216E46B5  mov         r8,qword ptr [x_size]
00007FF6216E46BC  mov         rdx,qword ptr [in]
00007FF6216E46C3  mov         rcx,rax
00007FF6216E46C6  call        memcpy (07FF6216DBAA9h)
			memcpy(padded_img + (y_size + 2 + y) * x_size, in_last_line, x_size);
00007FF6216E46CB  mov         rax,qword ptr [y_size]
00007FF6216E46D2  mov         rcx,qword ptr [y]
00007FF6216E46D6  lea         rax,[rax+rcx+2]
00007FF6216E46DB  imul        rax,qword ptr [x_size]
00007FF6216E46E3  mov         rcx,qword ptr [padded_img]
00007FF6216E46E7  add         rcx,rax
00007FF6216E46EA  mov         rax,rcx
00007FF6216E46ED  mov         r8,qword ptr [x_size]
00007FF6216E46F4  mov         rdx,qword ptr [in_last_line]
00007FF6216E46F8  mov         rcx,rax
00007FF6216E46FB  call        memcpy (07FF6216DBAA9h)
		}
00007FF6216E4700  jmp         c::median_5tap+18Dh (07FF6216E468Dh)
		uint8_t point1, point2, point3, point4, point5;
		for (y = 0; y < y_size; y += 1) {
00007FF6216E4702  mov         qword ptr [y],0
00007FF6216E470A  jmp         c::median_5tap+217h (07FF6216E4717h)
00007FF6216E470C  mov         rax,qword ptr [y]
00007FF6216E4710  inc         rax
00007FF6216E4713  mov         qword ptr [y],rax
00007FF6216E4717  mov         rax,qword ptr [y_size]
00007FF6216E471E  cmp         qword ptr [y],rax
00007FF6216E4722  jae         c::median_5tap+3DAh (07FF6216E48DAh)
			for (x = 0; x < x_size; x += 1) {
00007FF6216E4728  mov         qword ptr [x],0
00007FF6216E4730  jmp         c::median_5tap+23Dh (07FF6216E473Dh)
00007FF6216E4732  mov         rax,qword ptr [x]
00007FF6216E4736  inc         rax
00007FF6216E4739  mov         qword ptr [x],rax
00007FF6216E473D  mov         rax,qword ptr [x_size]
00007FF6216E4744  cmp         qword ptr [x],rax
00007FF6216E4748  jae         c::median_5tap+3D5h (07FF6216E48D5h)
				size_t pos = y * x_size + x;
00007FF6216E474E  mov         rax,qword ptr [y]
00007FF6216E4752  imul        rax,qword ptr [x_size]
00007FF6216E475A  add         rax,qword ptr [x]
00007FF6216E475E  mov         qword ptr [rbp+128h],rax
				point1 = *(padded_img + pos);
00007FF6216E4765  mov         rax,qword ptr [rbp+128h]
				point1 = *(padded_img + pos);
00007FF6216E476C  mov         rcx,qword ptr [padded_img]
00007FF6216E4770  add         rcx,rax
00007FF6216E4773  mov         rax,rcx
00007FF6216E4776  movzx       eax,byte ptr [rax]
00007FF6216E4779  mov         byte ptr [point1],al
				point2 = *(padded_img + pos + x_size);
00007FF6216E477F  mov         rax,qword ptr [rbp+128h]
00007FF6216E4786  mov         rcx,qword ptr [padded_img]
00007FF6216E478A  add         rcx,rax
00007FF6216E478D  mov         rax,rcx
00007FF6216E4790  mov         rcx,qword ptr [x_size]
00007FF6216E4797  movzx       eax,byte ptr [rax+rcx]
00007FF6216E479B  mov         byte ptr [point2],al
				point3 = *(padded_img + pos + 2 * x_size);
00007FF6216E47A1  mov         rax,qword ptr [rbp+128h]
00007FF6216E47A8  mov         rcx,qword ptr [padded_img]
00007FF6216E47AC  add         rcx,rax
00007FF6216E47AF  mov         rax,rcx
00007FF6216E47B2  mov         rcx,qword ptr [x_size]
00007FF6216E47B9  movzx       eax,byte ptr [rax+rcx*2]
00007FF6216E47BD  mov         byte ptr [point3],al
				point4 = *(padded_img + pos + 3 * x_size);
00007FF6216E47C3  mov         rax,qword ptr [rbp+128h]
00007FF6216E47CA  mov         rcx,qword ptr [padded_img]
00007FF6216E47CE  add         rcx,rax
00007FF6216E47D1  mov         rax,rcx
00007FF6216E47D4  imul        rcx,qword ptr [x_size],3
00007FF6216E47DC  movzx       eax,byte ptr [rax+rcx]
00007FF6216E47E0  mov         byte ptr [point4],al
				point5 = *(padded_img + pos + 4 * x_size);
00007FF6216E47E6  mov         rax,qword ptr [rbp+128h]
00007FF6216E47ED  mov         rcx,qword ptr [padded_img]
00007FF6216E47F1  add         rcx,rax
00007FF6216E47F4  mov         rax,rcx
00007FF6216E47F7  mov         rcx,qword ptr [x_size]
00007FF6216E47FE  movzx       eax,byte ptr [rax+rcx*4]
00007FF6216E4802  mov         byte ptr [point5],al
				sort2(&point1, &point2);
00007FF6216E4808  lea         rdx,[point2]
00007FF6216E480F  lea         rcx,[point1]
00007FF6216E4816  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point4, &point5);
00007FF6216E481B  lea         rdx,[point5]
00007FF6216E4822  lea         rcx,[point4]
00007FF6216E4829  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point3, &point5);
00007FF6216E482E  lea         rdx,[point5]
00007FF6216E4835  lea         rcx,[point3]
00007FF6216E483C  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point3, &point4);
00007FF6216E4841  lea         rdx,[point4]
00007FF6216E4848  lea         rcx,[point3]
00007FF6216E484F  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point4);
00007FF6216E4854  lea         rdx,[point4]
00007FF6216E485B  lea         rcx,[point1]
00007FF6216E4862  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point1, &point3);
00007FF6216E4867  lea         rdx,[point3]
00007FF6216E486E  lea         rcx,[point1]
00007FF6216E4875  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point5);
00007FF6216E487A  lea         rdx,[point5]
				sort2(&point2, &point5);
00007FF6216E4881  lea         rcx,[point2]
00007FF6216E4888  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point4);
00007FF6216E488D  lea         rdx,[point4]
00007FF6216E4894  lea         rcx,[point2]
00007FF6216E489B  call        sort2<unsigned char> (07FF6216DA45Bh)
				sort2(&point2, &point3);
00007FF6216E48A0  lea         rdx,[point3]
00007FF6216E48A7  lea         rcx,[point2]
00007FF6216E48AE  call        sort2<unsigned char> (07FF6216DA45Bh)
				*(out + pos) = point3;
00007FF6216E48B3  mov         rax,qword ptr [rbp+128h]
00007FF6216E48BA  mov         rcx,qword ptr [out]
00007FF6216E48C1  add         rcx,rax
00007FF6216E48C4  mov         rax,rcx
00007FF6216E48C7  movzx       ecx,byte ptr [point3]
00007FF6216E48CE  mov         byte ptr [rax],cl
			}
00007FF6216E48D0  jmp         c::median_5tap+232h (07FF6216E4732h)
		}
00007FF6216E48D5  jmp         c::median_5tap+20Ch (07FF6216E470Ch)
		delete[] padded_img;
00007FF6216E48DA  mov         rax,qword ptr [padded_img]
00007FF6216E48DE  mov         qword ptr [rbp+248h],rax
00007FF6216E48E5  mov         rcx,qword ptr [rbp+248h]
00007FF6216E48EC  call        operator delete[] (07FF6216DB365h)
00007FF6216E48F1  cmp         qword ptr [rbp+248h],0
00007FF6216E48F9  jne         c::median_5tap+408h (07FF6216E4908h)
00007FF6216E48FB  mov         qword ptr [rbp+258h],0
00007FF6216E4906  jmp         c::median_5tap+41Bh (07FF6216E491Bh)
00007FF6216E4908  mov         qword ptr [padded_img],8123h
00007FF6216E4910  mov         rax,qword ptr [padded_img]
00007FF6216E4914  mov         qword ptr [rbp+258h],rax
	};
00007FF6216E491B  lea         rcx,[rbp-20h]
00007FF6216E491F  lea         rdx,[string L""transposed poi\x4000\0\0\0\0"...+188h (07FF621736118h)]
00007FF6216E4926  call        _RTC_CheckStackVars (07FF6216DBDFBh)
00007FF6216E492B  mov         rcx,qword ptr [rbp+268h]
00007FF6216E4932  xor         rcx,rbp
00007FF6216E4935  call        __security_check_cookie (07FF6216DA7EEh)
00007FF6216E493A  lea         rsp,[rbp+278h]
00007FF6216E4941  pop         rdi
00007FF6216E4942  pop         rbp
00007FF6216E4943  ret
