; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF63179E58A  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179E591  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179E599  mov         qword ptr [rbp+0C8h],rdi
00007FF63179E5A0  mov         qword ptr [rbp+0C0h],rsi
00007FF63179E5A7  mov         qword ptr [in],rcx
00007FF63179E5AE  mov         qword ptr [out],rdx
00007FF63179E5B5  mov         qword ptr [x_size],r8
00007FF63179E5BC  mov         qword ptr [y_size],r9
00007FF63179E5C3  mov         qword ptr [rbp+28h],0FFFFFFFFFFFFFFFEh
		size_t x, y;
		uint8_t* padded_img = new uint8_t[x_size * (y_size + 2)] { 0 };
00007FF63179E5CB  mov         dword ptr [rbp+24h],0
00007FF63179E5D2  mov         eax,2
00007FF63179E5D7  add         rax,qword ptr [y_size]
00007FF63179E5DE  imul        rax,qword ptr [x_size]
00007FF63179E5E6  mov         qword ptr [rbp+30h],rax
00007FF63179E5EA  mov         rax,qword ptr [rbp+30h]
00007FF63179E5EE  mov         rcx,rax
00007FF63179E5F1  call        operator new[] (07FF631792A59h)
00007FF63179E5F6  jmp         c::median_3tap+139h (07FF63179E696h)
00007FF63179E5FB  mov         rax,qword ptr [rbp+38h]
00007FF63179E5FF  mov         qword ptr [rbp+40h],rax
00007FF63179E603  mov         rax,qword ptr [rbp+40h]
00007FF63179E607  mov         qword ptr [rbp+48h],rax
00007FF63179E60B  mov         rax,qword ptr [rbp+48h]
00007FF63179E60F  mov         qword ptr [rbp+50h],rax
00007FF63179E613  mov         rax,qword ptr [rbp+48h]
00007FF63179E617  test        rax,rax
00007FF63179E61A  jne         c::median_3tap+0C9h (07FF63179E626h)
00007FF63179E61C  mov         qword ptr [rbp+58h],0
00007FF63179E624  jmp         c::median_3tap+142h (07FF63179E69Fh)
00007FF63179E626  mov         dword ptr [rbp+24h],1
00007FF63179E62D  mov         rax,qword ptr [rbp+50h]
00007FF63179E631  mov         edx,0
00007FF63179E636  mov         ecx,dword ptr [rbp+30h]
00007FF63179E639  movsxd      rcx,ecx
00007FF63179E63C  mov         qword ptr [rbp+0A0h],rcx
00007FF63179E643  mov         rcx,rax
00007FF63179E646  mov         rax,qword ptr [rbp+0A0h]
00007FF63179E64D  mov         r8,rax
00007FF63179E650  call        memset (07FF6317FD20Eh)
00007FF63179E655  mov         rax,qword ptr [rbp+50h]
00007FF63179E659  mov         edx,0
00007FF63179E65E  mov         ecx,1
00007FF63179E663  mov         rdi,rax
00007FF63179E666  mov         eax,edx
00007FF63179E668  and         eax,0FFFFh
00007FF63179E66D  mov         ah,al
00007FF63179E66F  mov         edx,eax
00007FF63179E671  shl         eax,10h
00007FF63179E674  or          eax,edx
00007FF63179E676  mov         esi,ecx
00007FF63179E678  shr         rcx,2
00007FF63179E67C  rep stos    dword ptr [rdi]
00007FF63179E67E  mov         ecx,esi
00007FF63179E680  and         ecx,3
00007FF63179E683  rep stos    byte ptr [rdi]
00007FF63179E685  mov         dword ptr [rbp+24h],0
00007FF63179E68C  mov         rax,qword ptr [rbp+50h]
00007FF63179E690  mov         qword ptr [rbp+58h],rax
00007FF63179E694  jmp         c::median_3tap+142h (07FF63179E69Fh)
00007FF63179E696  mov         qword ptr [rbp+38h],rax
00007FF63179E69A  jmp         c::median_3tap+9Eh (07FF63179E5FBh)
00007FF63179E69F  mov         rax,qword ptr [rbp+58h]
00007FF63179E6A3  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF63179E6A7  mov         rax,0FFFFFFFFFFFFFFFFh
00007FF63179E6AE  add         rax,qword ptr [y_size]
00007FF63179E6B5  imul        rax,qword ptr [x_size]
00007FF63179E6BD  add         rax,qword ptr [in]
00007FF63179E6C4  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF63179E6C8  mov         qword ptr [y],0
00007FF63179E6D0  mov         rax,qword ptr [y]
00007FF63179E6D4  mov         rdx,qword ptr [y_size]
00007FF63179E6DB  cmp         rax,rdx
00007FF63179E6DE  jb          c::median_3tap+194h (07FF63179E6F1h)
00007FF63179E6E0  jmp         c::median_3tap+1E2h (07FF63179E73Fh)
00007FF63179E6E2  mov         eax,1
00007FF63179E6E7  add         rax,qword ptr [y]
00007FF63179E6EB  mov         qword ptr [y],rax
00007FF63179E6EF  jmp         c::median_3tap+173h (07FF63179E6D0h)
			memcpy(padded_img + (y + 1) * x_size, in + y * x_size, x_size);
00007FF63179E6F1  mov         eax,1
00007FF63179E6F6  add         rax,qword ptr [y]
00007FF63179E6FA  imul        rax,qword ptr [x_size]
00007FF63179E702  add         rax,qword ptr [padded_img]
00007FF63179E706  mov         rdx,qword ptr [x_size]
00007FF63179E70D  imul        rdx,qword ptr [y]
00007FF63179E712  add         rdx,qword ptr [in]
00007FF63179E719  mov         rcx,qword ptr [x_size]
00007FF63179E720  mov         qword ptr [rbp+0A8h],rcx
00007FF63179E727  mov         rcx,rax
00007FF63179E72A  mov         rax,qword ptr [rbp+0A8h]
00007FF63179E731  mov         r8,rax
00007FF63179E734  call        memcpy (07FF6317FD232h)
00007FF63179E739  mov         qword ptr [rbp+78h],rax
00007FF63179E73D  jmp         c::median_3tap+185h (07FF63179E6E2h)
		}
		memcpy(padded_img, in, x_size);
00007FF63179E73F  mov         rax,qword ptr [padded_img]
00007FF63179E743  mov         rdx,qword ptr [in]
00007FF63179E74A  mov         rcx,qword ptr [x_size]
00007FF63179E751  mov         qword ptr [rbp+0B0h],rcx
00007FF63179E758  mov         rcx,rax
00007FF63179E75B  mov         rax,qword ptr [rbp+0B0h]
00007FF63179E762  mov         r8,rax
00007FF63179E765  call        memcpy (07FF6317FD232h)
00007FF63179E76A  mov         qword ptr [rbp+80h],rax
		memcpy(padded_img + (y_size + 1) * x_size, in_last_line, x_size);
00007FF63179E771  mov         eax,1
00007FF63179E776  add         rax,qword ptr [y_size]
00007FF63179E77D  imul        rax,qword ptr [x_size]
00007FF63179E785  add         rax,qword ptr [padded_img]
00007FF63179E789  mov         rdx,qword ptr [in_last_line]
00007FF63179E78D  mov         rcx,qword ptr [x_size]
00007FF63179E794  mov         qword ptr [rbp+0B8h],rcx
00007FF63179E79B  mov         rcx,rax
00007FF63179E79E  mov         rax,qword ptr [rbp+0B8h]
00007FF63179E7A5  mov         r8,rax
00007FF63179E7A8  call        memcpy (07FF6317FD232h)
00007FF63179E7AD  mov         qword ptr [rbp+88h],rax
		uint8_t point1, point2, point3;
		for (y = 0; y < y_size; y += 1) {
00007FF63179E7B4  mov         qword ptr [y],0
00007FF63179E7BC  mov         rax,qword ptr [y]
00007FF63179E7C0  mov         rdx,qword ptr [y_size]
00007FF63179E7C7  cmp         rax,rdx
00007FF63179E7CA  jb          c::median_3tap+283h (07FF63179E7E0h)
00007FF63179E7CC  jmp         c::median_3tap+35Fh (07FF63179E8BCh)
00007FF63179E7D1  mov         eax,1
00007FF63179E7D6  add         rax,qword ptr [y]
00007FF63179E7DA  mov         qword ptr [y],rax
00007FF63179E7DE  jmp         c::median_3tap+25Fh (07FF63179E7BCh)
			for (x = 0; x < x_size; x += 1) {
00007FF63179E7E0  mov         qword ptr [x],0
00007FF63179E7EB  mov         rax,qword ptr [x]
00007FF63179E7F2  mov         rdx,qword ptr [x_size]
00007FF63179E7F9  cmp         rax,rdx
00007FF63179E7FC  jae         c::median_3tap+274h (07FF63179E7D1h)
				size_t pos = y * x_size + x;
00007FF63179E7FE  mov         rax,qword ptr [x_size]
00007FF63179E805  imul        rax,qword ptr [y]
00007FF63179E80A  add         rax,qword ptr [x]
00007FF63179E811  mov         qword ptr [rbp+98h],rax
				point1 = *(padded_img + pos);
00007FF63179E818  mov         rax,qword ptr [rbp+98h]
00007FF63179E81F  add         rax,qword ptr [padded_img]
00007FF63179E823  movzx       eax,byte ptr [rax]
00007FF63179E826  mov         byte ptr [point1],al
				point2 = *(padded_img + pos + x_size);
00007FF63179E829  mov         rax,qword ptr [rbp+98h]
00007FF63179E830  add         rax,qword ptr [padded_img]
00007FF63179E834  add         rax,qword ptr [x_size]
00007FF63179E83B  movzx       eax,byte ptr [rax]
00007FF63179E83E  mov         byte ptr [point2],al
				point3 = *(padded_img + pos + 2 * x_size);
00007FF63179E841  mov         rax,qword ptr [rbp+98h]
00007FF63179E848  add         rax,qword ptr [padded_img]
00007FF63179E84C  mov         rdx,qword ptr [x_size]
00007FF63179E853  imul        rdx,rdx,2
00007FF63179E857  add         rax,rdx
00007FF63179E85A  movzx       eax,byte ptr [rax]
00007FF63179E85D  mov         byte ptr [point3],al
				sort2(point2, point3);
00007FF63179E860  lea         rax,[point2]
00007FF63179E864  lea         rdx,[point3]
00007FF63179E868  mov         rcx,rax
00007FF63179E86B  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point3);
00007FF63179E870  lea         rax,[point1]
00007FF63179E874  lea         rdx,[point3]
00007FF63179E878  mov         rcx,rax
00007FF63179E87B  call        sort2<unsigned char> (07FF6317928A1h)
				sort2(point1, point2);
00007FF63179E880  lea         rax,[point1]
00007FF63179E884  lea         rdx,[point2]
00007FF63179E888  mov         rcx,rax
00007FF63179E88B  call        sort2<unsigned char> (07FF6317928A1h)
				*(out + pos) = point2;
00007FF63179E890  mov         rax,qword ptr [rbp+98h]
00007FF63179E897  add         rax,qword ptr [out]
00007FF63179E89E  movzx       edx,byte ptr [point2]
00007FF63179E8A2  mov         byte ptr [rax],dl
			for (x = 0; x < x_size; x += 1) {
00007FF63179E8A4  mov         eax,1
00007FF63179E8A9  add         rax,qword ptr [x]
00007FF63179E8B0  mov         qword ptr [x],rax
00007FF63179E8B7  jmp         c::median_3tap+28Eh (07FF63179E7EBh)
			}
		}
		delete[] padded_img;
00007FF63179E8BC  mov         rax,qword ptr [padded_img]
00007FF63179E8C0  mov         edx,1
00007FF63179E8C5  mov         rcx,rax
00007FF63179E8C8  call        operator delete[] (07FF631791CE9h)
	};
00007FF63179E8CD  lea         rax,[std::_VBITS+238h (07FF631802610h)]
00007FF63179E8D4  mov         rdx,rax
00007FF63179E8D7  mov         rcx,rbp
00007FF63179E8DA  call        _RTC_CheckStackVars (07FF631792C20h)
00007FF63179E8DF  mov         rsi,qword ptr [rbp+0C0h]
00007FF63179E8E6  mov         rdi,qword ptr [rbp+0C8h]
00007FF63179E8ED  lea         rsp,[rbp+0D0h]
	};
00007FF63179E8F4  pop         rbp
00007FF63179E8F5  ret
00007FF63179E8F6  push        rbp
00007FF63179E8F7  sub         rsp,0F0h
00007FF63179E8FE  lea         rbp,[rdx+20h]
00007FF63179E902  mov         qword ptr [rsp],rax
00007FF63179E906  mov         rax,0ECh
00007FF63179E90D  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179E914  sub         rax,4
00007FF63179E918  cmp         rax,4
00007FF63179E91C  jg          c::median_3tap+3B0h (07FF63179E90Dh)
00007FF63179E91E  mov         rax,qword ptr [rsp]
00007FF63179E922  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179E929  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179E931  mov         qword ptr [rsp+0E8h],rdi
00007FF63179E939  mov         qword ptr [rsp+0E0h],rsi
00007FF63179E941  mov         qword ptr [rsp+100h],rcx
00007FF63179E949  mov         qword ptr [rsp+108h],rdx
00007FF63179E951  mov         eax,dword ptr [rbp+24h]
00007FF63179E954  test        eax,eax
00007FF63179E956  je          c::median_3tap+40Ch (07FF63179E969h)
00007FF63179E958  mov         rax,qword ptr [rbp+50h]
00007FF63179E95C  mov         edx,0
00007FF63179E961  mov         rcx,rax
00007FF63179E964  call        operator delete[] (07FF631791CE9h)
00007FF63179E969  mov         rsi,qword ptr [rsp+0E0h]
00007FF63179E971  mov         rdi,qword ptr [rsp+0E8h]
00007FF63179E979  add         rsp,0F0h
00007FF63179E980  pop         rbp
00007FF63179E981  ret
