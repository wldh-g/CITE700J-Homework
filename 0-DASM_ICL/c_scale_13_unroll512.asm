; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_13_unroll512(uint8_t* in, uint8_t* out) {
00007FF63179F92E  push        rbp
00007FF63179F92F  sub         rsp,50h
00007FF63179F933  lea         rbp,[rsp+20h]
00007FF63179F938  mov         qword ptr [rsp],rax
00007FF63179F93C  mov         rax,4Ch
00007FF63179F943  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179F94A  sub         rax,4
00007FF63179F94E  cmp         rax,4
00007FF63179F952  jg          c::scale_13_unroll512+15h (07FF63179F943h)
00007FF63179F954  mov         rax,qword ptr [rsp]
00007FF63179F958  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179F95F  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179F967  mov         qword ptr [in],rcx
00007FF63179F96B  mov         qword ptr [out],rdx
00007FF63179F96F  mov         byte ptr [rbp+3],0
00007FF63179F973  mov         byte ptr [rbp+1],0
00007FF63179F977  mov         byte ptr [rbp+2],0
00007FF63179F97B  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(1.3f * 128);
00007FF63179F97F  mov         byte ptr [rbp],1
00007FF63179F983  mov         word ptr [scale],0A6h
		size_t x, y;
		#pragma unroll(512)
		for (y = 0; y < 512; y += 1) {
00007FF63179F989  mov         byte ptr [rbp+1],1
00007FF63179F98D  mov         qword ptr [y],0
00007FF63179F995  mov         rax,qword ptr [y]
00007FF63179F999  cmp         rax,200h
00007FF63179F99F  jb          c::scale_13_unroll512+8Bh (07FF63179F9B9h)
00007FF63179F9A1  jmp         c::scale_13_unroll512+112h (07FF63179FA40h)
00007FF63179F9A6  mov         byte ptr [rbp+1],1
00007FF63179F9AA  mov         eax,1
00007FF63179F9AF  add         rax,qword ptr [y]
00007FF63179F9B3  mov         qword ptr [y],rax
00007FF63179F9B7  jmp         c::scale_13_unroll512+67h (07FF63179F995h)
			#pragma unroll(512)
			for (x = 0; x < 512; x += 1) {
00007FF63179F9B9  mov         byte ptr [rbp+2],1
00007FF63179F9BD  mov         qword ptr [x],0
00007FF63179F9C5  mov         rax,qword ptr [x]
00007FF63179F9C9  cmp         rax,200h
00007FF63179F9CF  jae         c::scale_13_unroll512+78h (07FF63179F9A6h)
				size_t pos = y * 512 + x;
00007FF63179F9D1  mov         byte ptr [rbp+3],1
00007FF63179F9D5  mov         rax,qword ptr [y]
00007FF63179F9D9  imul        rax,rax,200h
00007FF63179F9E0  add         rax,qword ptr [x]
00007FF63179F9E4  mov         qword ptr [rbp+20h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 7);
00007FF63179F9E8  mov         rax,qword ptr [rbp+20h]
00007FF63179F9EC  add         rax,qword ptr [in]
00007FF63179F9F0  movzx       eax,byte ptr [rax]
00007FF63179F9F3  movzx       eax,al
00007FF63179F9F6  cmp         eax,0C5h
00007FF63179F9FB  jge         c::scale_13_unroll512+0EBh (07FF63179FA19h)
00007FF63179F9FD  mov         rax,qword ptr [rbp+20h]
00007FF63179FA01  add         rax,qword ptr [in]
00007FF63179FA05  movzx       eax,byte ptr [rax]
00007FF63179FA08  movzx       eax,al
00007FF63179FA0B  imul        eax,eax,0A6h
00007FF63179FA11  sar         eax,7
00007FF63179FA14  mov         dword ptr [rbp+8],eax
00007FF63179FA17  jmp         c::scale_13_unroll512+0F2h (07FF63179FA20h)
00007FF63179FA19  mov         dword ptr [rbp+8],0FFh
00007FF63179FA20  mov         eax,dword ptr [rbp+8]
00007FF63179FA23  mov         rdx,qword ptr [rbp+20h]
00007FF63179FA27  add         rdx,qword ptr [out]
00007FF63179FA2B  mov         byte ptr [rdx],al
			#pragma unroll(512)
			for (x = 0; x < 512; x += 1) {
00007FF63179FA2D  mov         byte ptr [rbp+2],1
00007FF63179FA31  mov         eax,1
00007FF63179FA36  add         rax,qword ptr [x]
00007FF63179FA3A  mov         qword ptr [x],rax
00007FF63179FA3E  jmp         c::scale_13_unroll512+97h (07FF63179F9C5h)
			}
		}
	};
00007FF63179FA40  lea         rsp,[rbp+30h]
00007FF63179FA44  pop         rbp
00007FF63179FA45  ret
