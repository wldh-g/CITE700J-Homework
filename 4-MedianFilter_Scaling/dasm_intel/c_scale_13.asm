; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF63179F6F6  push        rbp
00007FF63179F6F7  sub         rsp,50h
00007FF63179F6FB  lea         rbp,[rsp+20h]
00007FF63179F700  mov         qword ptr [rsp],rax
00007FF63179F704  mov         rax,4Ch
00007FF63179F70B  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179F712  sub         rax,4
00007FF63179F716  cmp         rax,4
00007FF63179F71A  jg          c::scale_13+15h (07FF63179F70Bh)
00007FF63179F71C  mov         rax,qword ptr [rsp]
00007FF63179F720  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179F727  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179F72F  mov         qword ptr [in],rcx
00007FF63179F733  mov         qword ptr [out],rdx
00007FF63179F737  mov         qword ptr [x_size],r8
00007FF63179F73B  mov         qword ptr [y_size],r9
00007FF63179F73F  mov         byte ptr [rbp+3],0
00007FF63179F743  mov         byte ptr [rbp+1],0
00007FF63179F747  mov         byte ptr [rbp+2],0
00007FF63179F74B  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(1.3f * 128);
00007FF63179F74F  mov         byte ptr [rbp],1
00007FF63179F753  mov         word ptr [scale],0A6h
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF63179F759  mov         byte ptr [rbp+1],1
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF63179F75D  mov         qword ptr [y],0
00007FF63179F765  mov         rax,qword ptr [y]
00007FF63179F769  mov         rdx,qword ptr [y_size]
00007FF63179F76D  cmp         rax,rdx
00007FF63179F770  jb          c::scale_13+94h (07FF63179F78Ah)
00007FF63179F772  jmp         c::scale_13+11Ah (07FF63179F810h)
00007FF63179F777  mov         byte ptr [rbp+1],1
00007FF63179F77B  mov         eax,1
00007FF63179F780  add         rax,qword ptr [y]
00007FF63179F784  mov         qword ptr [y],rax
00007FF63179F788  jmp         c::scale_13+6Fh (07FF63179F765h)
			for (x = 0; x < x_size; x += 1) {
00007FF63179F78A  mov         byte ptr [rbp+2],1
00007FF63179F78E  mov         qword ptr [x],0
00007FF63179F796  mov         rax,qword ptr [x]
00007FF63179F79A  mov         rdx,qword ptr [x_size]
00007FF63179F79E  cmp         rax,rdx
00007FF63179F7A1  jae         c::scale_13+81h (07FF63179F777h)
				size_t pos = y * x_size + x;
00007FF63179F7A3  mov         byte ptr [rbp+3],1
00007FF63179F7A7  mov         rax,qword ptr [x_size]
00007FF63179F7AB  imul        rax,qword ptr [y]
00007FF63179F7B0  add         rax,qword ptr [x]
00007FF63179F7B4  mov         qword ptr [rbp+20h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 7);
00007FF63179F7B8  mov         rax,qword ptr [rbp+20h]
00007FF63179F7BC  add         rax,qword ptr [in]
00007FF63179F7C0  movzx       eax,byte ptr [rax]
00007FF63179F7C3  movzx       eax,al
00007FF63179F7C6  cmp         eax,0C5h
00007FF63179F7CB  jge         c::scale_13+0F3h (07FF63179F7E9h)
00007FF63179F7CD  mov         rax,qword ptr [rbp+20h]
00007FF63179F7D1  add         rax,qword ptr [in]
00007FF63179F7D5  movzx       eax,byte ptr [rax]
00007FF63179F7D8  movzx       eax,al
00007FF63179F7DB  imul        eax,eax,0A6h
00007FF63179F7E1  sar         eax,7
00007FF63179F7E4  mov         dword ptr [rbp+8],eax
00007FF63179F7E7  jmp         c::scale_13+0FAh (07FF63179F7F0h)
00007FF63179F7E9  mov         dword ptr [rbp+8],0FFh
00007FF63179F7F0  mov         eax,dword ptr [rbp+8]
00007FF63179F7F3  mov         rdx,qword ptr [rbp+20h]
00007FF63179F7F7  add         rdx,qword ptr [out]
00007FF63179F7FB  mov         byte ptr [rdx],al
			for (x = 0; x < x_size; x += 1) {
00007FF63179F7FD  mov         byte ptr [rbp+2],1
00007FF63179F801  mov         eax,1
00007FF63179F806  add         rax,qword ptr [x]
00007FF63179F80A  mov         qword ptr [x],rax
00007FF63179F80E  jmp         c::scale_13+0A0h (07FF63179F796h)
			}
		}
	};
00007FF63179F810  lea         rsp,[rbp+30h]
00007FF63179F814  pop         rbp
00007FF63179F815  ret
