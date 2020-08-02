; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_24_unroll64(uint8_t* in, uint8_t* out) {
00007FF63179FB64  push        rbp
00007FF63179FB65  sub         rsp,50h
00007FF63179FB69  lea         rbp,[rsp+20h]
00007FF63179FB6E  mov         qword ptr [rsp],rax
00007FF63179FB72  mov         rax,4Ch
00007FF63179FB79  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179FB80  sub         rax,4
00007FF63179FB84  cmp         rax,4
00007FF63179FB88  jg          c::scale_24_unroll64+15h (07FF63179FB79h)
00007FF63179FB8A  mov         rax,qword ptr [rsp]
00007FF63179FB8E  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179FB95  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179FB9D  mov         qword ptr [in],rcx
00007FF63179FBA1  mov         qword ptr [out],rdx
00007FF63179FBA5  mov         byte ptr [rbp+3],0
00007FF63179FBA9  mov         byte ptr [rbp+1],0
00007FF63179FBAD  mov         byte ptr [rbp+2],0
00007FF63179FBB1  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(2.4f * 128);
00007FF63179FBB5  mov         byte ptr [rbp],1
00007FF63179FBB9  mov         word ptr [scale],133h
		size_t x, y;
		#pragma unroll(64)
		for (y = 0; y < 512; y += 1) {
00007FF63179FBBF  mov         byte ptr [rbp+1],1
00007FF63179FBC3  mov         qword ptr [y],0
00007FF63179FBCB  mov         rax,qword ptr [y]
00007FF63179FBCF  cmp         rax,200h
00007FF63179FBD5  jb          c::scale_24_unroll64+8Bh (07FF63179FBEFh)
00007FF63179FBD7  jmp         c::scale_24_unroll64+110h (07FF63179FC74h)
00007FF63179FBDC  mov         byte ptr [rbp+1],1
00007FF63179FBE0  mov         eax,1
00007FF63179FBE5  add         rax,qword ptr [y]
00007FF63179FBE9  mov         qword ptr [y],rax
00007FF63179FBED  jmp         c::scale_24_unroll64+67h (07FF63179FBCBh)
			#pragma unroll(64)
			for (x = 0; x < 512; x += 1) {
00007FF63179FBEF  mov         byte ptr [rbp+2],1
00007FF63179FBF3  mov         qword ptr [x],0
00007FF63179FBFB  mov         rax,qword ptr [x]
00007FF63179FBFF  cmp         rax,200h
00007FF63179FC05  jae         c::scale_24_unroll64+78h (07FF63179FBDCh)
				size_t pos = y * 512 + x;
00007FF63179FC07  mov         byte ptr [rbp+3],1
00007FF63179FC0B  mov         rax,qword ptr [y]
00007FF63179FC0F  imul        rax,rax,200h
00007FF63179FC16  add         rax,qword ptr [x]
00007FF63179FC1A  mov         qword ptr [rbp+20h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 7);
00007FF63179FC1E  mov         rax,qword ptr [rbp+20h]
00007FF63179FC22  add         rax,qword ptr [in]
00007FF63179FC26  movzx       eax,byte ptr [rax]
00007FF63179FC29  movzx       eax,al
00007FF63179FC2C  cmp         eax,6Bh
00007FF63179FC2F  jge         c::scale_24_unroll64+0E9h (07FF63179FC4Dh)
00007FF63179FC31  mov         rax,qword ptr [rbp+20h]
00007FF63179FC35  add         rax,qword ptr [in]
00007FF63179FC39  movzx       eax,byte ptr [rax]
00007FF63179FC3C  movzx       eax,al
00007FF63179FC3F  imul        eax,eax,133h
00007FF63179FC45  sar         eax,7
00007FF63179FC48  mov         dword ptr [rbp+8],eax
00007FF63179FC4B  jmp         c::scale_24_unroll64+0F0h (07FF63179FC54h)
00007FF63179FC4D  mov         dword ptr [rbp+8],0FFh
00007FF63179FC54  mov         eax,dword ptr [rbp+8]
00007FF63179FC57  mov         rdx,qword ptr [rbp+20h]
00007FF63179FC5B  add         rdx,qword ptr [out]
00007FF63179FC5F  mov         byte ptr [rdx],al
			#pragma unroll(64)
			for (x = 0; x < 512; x += 1) {
00007FF63179FC61  mov         byte ptr [rbp+2],1
00007FF63179FC65  mov         eax,1
00007FF63179FC6A  add         rax,qword ptr [x]
00007FF63179FC6E  mov         qword ptr [x],rax
00007FF63179FC72  jmp         c::scale_24_unroll64+97h (07FF63179FBFBh)
			}
		}
	};
00007FF63179FC74  lea         rsp,[rbp+30h]
00007FF63179FC78  pop         rbp
00007FF63179FC79  ret
