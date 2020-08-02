; Built with ICL 19.1.2.254 Build 20200623 (x64) in Debug mode default options
	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF63179FA46  push        rbp
00007FF63179FA47  sub         rsp,50h
00007FF63179FA4B  lea         rbp,[rsp+20h]
00007FF63179FA50  mov         qword ptr [rsp],rax
00007FF63179FA54  mov         rax,4Ch
00007FF63179FA5B  mov         dword ptr [rsp+rax],0CCCCCCCCh
00007FF63179FA62  sub         rax,4
00007FF63179FA66  cmp         rax,4
00007FF63179FA6A  jg          c::scale_24+15h (07FF63179FA5Bh)
00007FF63179FA6C  mov         rax,qword ptr [rsp]
00007FF63179FA70  mov         dword ptr [rsp],0CCCCCCCCh
00007FF63179FA77  mov         dword ptr [rsp+4],0CCCCCCCCh
00007FF63179FA7F  mov         qword ptr [in],rcx
00007FF63179FA83  mov         qword ptr [out],rdx
00007FF63179FA87  mov         qword ptr [x_size],r8
00007FF63179FA8B  mov         qword ptr [y_size],r9
00007FF63179FA8F  mov         byte ptr [rbp+3],0
00007FF63179FA93  mov         byte ptr [rbp+1],0
00007FF63179FA97  mov         byte ptr [rbp+2],0
00007FF63179FA9B  mov         byte ptr [rbp],0
		constexpr uint16_t scale = (uint16_t)(2.4f * 128);
00007FF63179FA9F  mov         byte ptr [rbp],1
00007FF63179FAA3  mov         word ptr [scale],133h
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF63179FAA9  mov         byte ptr [rbp+1],1
00007FF63179FAAD  mov         qword ptr [y],0
00007FF63179FAB5  mov         rax,qword ptr [y]
00007FF63179FAB9  mov         rdx,qword ptr [y_size]
00007FF63179FABD  cmp         rax,rdx
00007FF63179FAC0  jb          c::scale_24+94h (07FF63179FADAh)
00007FF63179FAC2  jmp         c::scale_24+118h (07FF63179FB5Eh)
00007FF63179FAC7  mov         byte ptr [rbp+1],1
00007FF63179FACB  mov         eax,1
00007FF63179FAD0  add         rax,qword ptr [y]
00007FF63179FAD4  mov         qword ptr [y],rax
00007FF63179FAD8  jmp         c::scale_24+6Fh (07FF63179FAB5h)
			for (x = 0; x < x_size; x += 1) {
00007FF63179FADA  mov         byte ptr [rbp+2],1
00007FF63179FADE  mov         qword ptr [x],0
00007FF63179FAE6  mov         rax,qword ptr [x]
00007FF63179FAEA  mov         rdx,qword ptr [x_size]
00007FF63179FAEE  cmp         rax,rdx
00007FF63179FAF1  jae         c::scale_24+81h (07FF63179FAC7h)
				size_t pos = y * x_size + x;
00007FF63179FAF3  mov         byte ptr [rbp+3],1
00007FF63179FAF7  mov         rax,qword ptr [x_size]
00007FF63179FAFB  imul        rax,qword ptr [y]
00007FF63179FB00  add         rax,qword ptr [x]
00007FF63179FB04  mov         qword ptr [rbp+20h],rax
				*(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 7);
00007FF63179FB08  mov         rax,qword ptr [rbp+20h]
00007FF63179FB0C  add         rax,qword ptr [in]
00007FF63179FB10  movzx       eax,byte ptr [rax]
00007FF63179FB13  movzx       eax,al
00007FF63179FB16  cmp         eax,6Bh
00007FF63179FB19  jge         c::scale_24+0F1h (07FF63179FB37h)
00007FF63179FB1B  mov         rax,qword ptr [rbp+20h]
00007FF63179FB1F  add         rax,qword ptr [in]
00007FF63179FB23  movzx       eax,byte ptr [rax]
00007FF63179FB26  movzx       eax,al
00007FF63179FB29  imul        eax,eax,133h
00007FF63179FB2F  sar         eax,7
00007FF63179FB32  mov         dword ptr [rbp+8],eax
00007FF63179FB35  jmp         c::scale_24+0F8h (07FF63179FB3Eh)
00007FF63179FB37  mov         dword ptr [rbp+8],0FFh
00007FF63179FB3E  mov         eax,dword ptr [rbp+8]
00007FF63179FB41  mov         rdx,qword ptr [rbp+20h]
00007FF63179FB45  add         rdx,qword ptr [out]
00007FF63179FB49  mov         byte ptr [rdx],al
			for (x = 0; x < x_size; x += 1) {
00007FF63179FB4B  mov         byte ptr [rbp+2],1
00007FF63179FB4F  mov         eax,1
00007FF63179FB54  add         rax,qword ptr [x]
00007FF63179FB58  mov         qword ptr [x],rax
00007FF63179FB5C  jmp         c::scale_24+0A0h (07FF63179FAE6h)
			}
		}
	};
00007FF63179FB5E  lea         rsp,[rbp+30h]
00007FF63179FB62  pop         rbp
00007FF63179FB63  ret
