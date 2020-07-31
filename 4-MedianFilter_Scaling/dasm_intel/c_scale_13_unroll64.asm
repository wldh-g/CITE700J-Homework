; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_13_unroll64(uint8_t* in, uint8_t* out) {
00007FF63179F816  push        rbp
00007FF63179F817  sub         rsp,50h
00007FF63179F81B  lea         rbp,[rsp+20h]
00007FF63179F820  mov         qword ptr [rsp],rax
00007FF63179F824  mov         rax,4Ch
00007FF63179F82B  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179F832  sub         rax,4
00007FF63179F836  cmp         rax,4
00007FF63179F83A  jg          c::scale_13_unroll64+15h (07FF63179F82Bh)
00007FF63179F83C  mov         rax,qword ptr [rsp]
00007FF63179F840  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179F847  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179F84F  mov         qword ptr [in],rcx
00007FF63179F853  mov         qword ptr [out],rdx
00007FF63179F857  mov         byte ptr [rbp+3],0
00007FF63179F85B  mov         byte ptr [rbp+1],0
00007FF63179F85F  mov         byte ptr [rbp+2],0
00007FF63179F863  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(1.3f * 128);
00007FF63179F867  mov         byte ptr [rbp],1
00007FF63179F86B  mov         word ptr [scale],0A6h
		size_t x, y;
		#pragma unroll(64)
		for (y = 0; y < 512; y += 1) {
00007FF63179F871  mov         byte ptr [rbp+1],1
00007FF63179F875  mov         qword ptr [y],0
00007FF63179F87D  mov         rax,qword ptr [y]
00007FF63179F881  cmp         rax,200h
00007FF63179F887  jb          c::scale_13_unroll64+8Bh (07FF63179F8A1h)
00007FF63179F889  jmp         c::scale_13_unroll64+112h (07FF63179F928h)
00007FF63179F88E  mov         byte ptr [rbp+1],1
00007FF63179F892  mov         eax,1
00007FF63179F897  add         rax,qword ptr [y]
00007FF63179F89B  mov         qword ptr [y],rax
00007FF63179F89F  jmp         c::scale_13_unroll64+67h (07FF63179F87Dh)
			#pragma unroll(64)
			for (x = 0; x < 512; x += 1) {
00007FF63179F8A1  mov         byte ptr [rbp+2],1
00007FF63179F8A5  mov         qword ptr [x],0
00007FF63179F8AD  mov         rax,qword ptr [x]
00007FF63179F8B1  cmp         rax,200h
00007FF63179F8B7  jae         c::scale_13_unroll64+78h (07FF63179F88Eh)
				size_t pos = y * 512 + x;
00007FF63179F8B9  mov         byte ptr [rbp+3],1
00007FF63179F8BD  mov         rax,qword ptr [y]
00007FF63179F8C1  imul        rax,rax,200h
00007FF63179F8C8  add         rax,qword ptr [x]
00007FF63179F8CC  mov         qword ptr [rbp+20h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 7);
00007FF63179F8D0  mov         rax,qword ptr [rbp+20h]
00007FF63179F8D4  add         rax,qword ptr [in]
00007FF63179F8D8  movzx       eax,byte ptr [rax]
00007FF63179F8DB  movzx       eax,al
00007FF63179F8DE  cmp         eax,0C5h
00007FF63179F8E3  jge         c::scale_13_unroll64+0EBh (07FF63179F901h)
00007FF63179F8E5  mov         rax,qword ptr [rbp+20h]
00007FF63179F8E9  add         rax,qword ptr [in]
00007FF63179F8ED  movzx       eax,byte ptr [rax]
00007FF63179F8F0  movzx       eax,al
00007FF63179F8F3  imul        eax,eax,0A6h
00007FF63179F8F9  sar         eax,7
00007FF63179F8FC  mov         dword ptr [rbp+8],eax
00007FF63179F8FF  jmp         c::scale_13_unroll64+0F2h (07FF63179F908h)
00007FF63179F901  mov         dword ptr [rbp+8],0FFh
00007FF63179F908  mov         eax,dword ptr [rbp+8]
00007FF63179F90B  mov         rdx,qword ptr [rbp+20h]
00007FF63179F90F  add         rdx,qword ptr [out]
00007FF63179F913  mov         byte ptr [rdx],al
			#pragma unroll(64)
			for (x = 0; x < 512; x += 1) {
00007FF63179F915  mov         byte ptr [rbp+2],1
00007FF63179F919  mov         eax,1
00007FF63179F91E  add         rax,qword ptr [x]
00007FF63179F922  mov         qword ptr [x],rax
00007FF63179F926  jmp         c::scale_13_unroll64+97h (07FF63179F8ADh)
			}
		}
	};
00007FF63179F928  lea         rsp,[rbp+30h]
00007FF63179F92C  pop         rbp
00007FF63179F92D  ret
