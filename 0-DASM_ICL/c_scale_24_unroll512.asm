; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_24_unroll512(uint8_t* in, uint8_t* out) {
00007FF63179FC7A  push        rbp
00007FF63179FC7B  sub         rsp,50h
00007FF63179FC7F  lea         rbp,[rsp+20h]
00007FF63179FC84  mov         qword ptr [rsp],rax
00007FF63179FC88  mov         rax,4Ch
00007FF63179FC8F  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179FC96  sub         rax,4
00007FF63179FC9A  cmp         rax,4
00007FF63179FC9E  jg          c::scale_24_unroll512+15h (07FF63179FC8Fh)
00007FF63179FCA0  mov         rax,qword ptr [rsp]
00007FF63179FCA4  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179FCAB  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179FCB3  mov         qword ptr [in],rcx
00007FF63179FCB7  mov         qword ptr [out],rdx
00007FF63179FCBB  mov         byte ptr [rbp+3],0
00007FF63179FCBF  mov         byte ptr [rbp+1],0
00007FF63179FCC3  mov         byte ptr [rbp+2],0
00007FF63179FCC7  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(2.4f * 128);
00007FF63179FCCB  mov         byte ptr [rbp],1
00007FF63179FCCF  mov         word ptr [scale],133h
		size_t x, y;
		#pragma unroll(512)
		for (y = 0; y < 512; y += 1) {
00007FF63179FCD5  mov         byte ptr [rbp+1],1
00007FF63179FCD9  mov         qword ptr [y],0
00007FF63179FCE1  mov         rax,qword ptr [y]
00007FF63179FCE5  cmp         rax,200h
00007FF63179FCEB  jb          c::scale_24_unroll512+8Bh (07FF63179FD05h)
00007FF63179FCED  jmp         c::scale_24_unroll512+110h (07FF63179FD8Ah)
00007FF63179FCF2  mov         byte ptr [rbp+1],1
00007FF63179FCF6  mov         eax,1
00007FF63179FCFB  add         rax,qword ptr [y]
00007FF63179FCFF  mov         qword ptr [y],rax
00007FF63179FD03  jmp         c::scale_24_unroll512+67h (07FF63179FCE1h)
			#pragma unroll(512)
			for (x = 0; x < 512; x += 1) {
00007FF63179FD05  mov         byte ptr [rbp+2],1
00007FF63179FD09  mov         qword ptr [x],0
00007FF63179FD11  mov         rax,qword ptr [x]
00007FF63179FD15  cmp         rax,200h
00007FF63179FD1B  jae         c::scale_24_unroll512+78h (07FF63179FCF2h)
				size_t pos = y * 512 + x;
00007FF63179FD1D  mov         byte ptr [rbp+3],1
00007FF63179FD21  mov         rax,qword ptr [y]
00007FF63179FD25  imul        rax,rax,200h
00007FF63179FD2C  add         rax,qword ptr [x]
00007FF63179FD30  mov         qword ptr [rbp+20h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 7);
00007FF63179FD34  mov         rax,qword ptr [rbp+20h]
00007FF63179FD38  add         rax,qword ptr [in]
00007FF63179FD3C  movzx       eax,byte ptr [rax]
00007FF63179FD3F  movzx       eax,al
00007FF63179FD42  cmp         eax,6Bh
00007FF63179FD45  jge         c::scale_24_unroll512+0E9h (07FF63179FD63h)
00007FF63179FD47  mov         rax,qword ptr [rbp+20h]
00007FF63179FD4B  add         rax,qword ptr [in]
00007FF63179FD4F  movzx       eax,byte ptr [rax]
00007FF63179FD52  movzx       eax,al
00007FF63179FD55  imul        eax,eax,133h
00007FF63179FD5B  sar         eax,7
00007FF63179FD5E  mov         dword ptr [rbp+8],eax
00007FF63179FD61  jmp         c::scale_24_unroll512+0F0h (07FF63179FD6Ah)
00007FF63179FD63  mov         dword ptr [rbp+8],0FFh
00007FF63179FD6A  mov         eax,dword ptr [rbp+8]
00007FF63179FD6D  mov         rdx,qword ptr [rbp+20h]
00007FF63179FD71  add         rdx,qword ptr [out]
00007FF63179FD75  mov         byte ptr [rdx],al
			#pragma unroll(512)
			for (x = 0; x < 512; x += 1) {
00007FF63179FD77  mov         byte ptr [rbp+2],1
00007FF63179FD7B  mov         eax,1
00007FF63179FD80  add         rax,qword ptr [x]
00007FF63179FD84  mov         qword ptr [x],rax
00007FF63179FD88  jmp         c::scale_24_unroll512+97h (07FF63179FD11h)
			}
		}
	};
00007FF63179FD8A  lea         rsp,[rbp+30h]
00007FF63179FD8E  pop         rbp
00007FF63179FD8F  ret
