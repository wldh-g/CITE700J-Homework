	void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7CE977590  mov         qword ptr [rsp+20h],r9
00007FF7CE977595  mov         qword ptr [rsp+18h],r8
00007FF7CE97759A  mov         qword ptr [rsp+10h],rdx
00007FF7CE97759F  mov         qword ptr [rsp+8],rcx
00007FF7CE9775A4  push        rbp
00007FF7CE9775A5  push        rdi
00007FF7CE9775A6  sub         rsp,168h
00007FF7CE9775AD  lea         rbp,[rsp+20h]
00007FF7CE9775B2  mov         rdi,rsp
00007FF7CE9775B5  mov         ecx,5Ah
00007FF7CE9775BA  mov         eax,0CCCCCCCCh
00007FF7CE9775BF  rep stos    dword ptr [rdi]
00007FF7CE9775C1  mov         rcx,qword ptr [rsp+188h]
00007FF7CE9775C9  lea         rcx,[__5460E701_C@cpp (07FF7CE9B5001h)]
00007FF7CE9775D0  call        __CheckForDebuggerJustMyCode (07FF7CE97331Bh)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF7CE9775D5  mov         qword ptr [y],0
00007FF7CE9775DD  jmp         c::transpose_line_by_line+5Ah (07FF7CE9775EAh)
00007FF7CE9775DF  mov         rax,qword ptr [y]
00007FF7CE9775E3  inc         rax
00007FF7CE9775E6  mov         qword ptr [y],rax
00007FF7CE9775EA  mov         rax,qword ptr [y_size]
00007FF7CE9775F1  cmp         qword ptr [y],rax
00007FF7CE9775F5  jae         c::transpose_line_by_line+0DFh (07FF7CE97766Fh)
			for (x = 0; x < x_size; x += 1) {
00007FF7CE9775F7  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF7CE9775FF  jmp         c::transpose_line_by_line+7Ch (07FF7CE97760Ch)
00007FF7CE977601  mov         rax,qword ptr [x]
00007FF7CE977605  inc         rax
00007FF7CE977608  mov         qword ptr [x],rax
00007FF7CE97760C  mov         rax,qword ptr [x_size]
00007FF7CE977613  cmp         qword ptr [x],rax
00007FF7CE977617  jae         c::transpose_line_by_line+0DAh (07FF7CE97766Ah)
				size_t in_pos = y * x_size + x;
00007FF7CE977619  mov         rax,qword ptr [y]
00007FF7CE97761D  imul        rax,qword ptr [x_size]
00007FF7CE977625  add         rax,qword ptr [x]
00007FF7CE977629  mov         qword ptr [rbp+48h],rax
				size_t out_pos = x * x_size + y;
00007FF7CE97762D  mov         rax,qword ptr [x]
00007FF7CE977631  imul        rax,qword ptr [x_size]
00007FF7CE977639  add         rax,qword ptr [y]
00007FF7CE97763D  mov         qword ptr [rbp+68h],rax
				*(out + out_pos) = *(in + in_pos);
00007FF7CE977641  mov         rax,qword ptr [rbp+68h]
00007FF7CE977645  mov         rcx,qword ptr [out]
00007FF7CE97764C  add         rcx,rax
00007FF7CE97764F  mov         rax,rcx
00007FF7CE977652  mov         rcx,qword ptr [rbp+48h]
00007FF7CE977656  mov         rdx,qword ptr [in]
00007FF7CE97765D  add         rdx,rcx
00007FF7CE977660  mov         rcx,rdx
00007FF7CE977663  movzx       ecx,byte ptr [rcx]
00007FF7CE977666  mov         byte ptr [rax],cl
			}
00007FF7CE977668  jmp         c::transpose_line_by_line+71h (07FF7CE977601h)
		}
00007FF7CE97766A  jmp         c::transpose_line_by_line+4Fh (07FF7CE9775DFh)
	};
00007FF7CE97766F  lea         rsp,[rbp+148h]
00007FF7CE977676  pop         rdi
00007FF7CE977677  pop         rbp
00007FF7CE977678  ret
