; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void transpose_block(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, size_t blk_size) {
00007FF7CE977030  mov         qword ptr [rsp+20h],r9
00007FF7CE977035  mov         qword ptr [rsp+18h],r8
00007FF7CE97703A  mov         qword ptr [rsp+10h],rdx
00007FF7CE97703F  mov         qword ptr [rsp+8],rcx
00007FF7CE977044  push        rbp
00007FF7CE977045  push        rdi
00007FF7CE977046  sub         rsp,228h
00007FF7CE97704D  lea         rbp,[rsp+20h]
00007FF7CE977052  mov         rdi,rsp
00007FF7CE977055  mov         ecx,8Ah
00007FF7CE97705A  mov         eax,0CCCCCCCCh
00007FF7CE97705F  rep stos    dword ptr [rdi]
00007FF7CE977061  mov         rcx,qword ptr [rsp+248h]
00007FF7CE977069  lea         rcx,[__5460E701_C@cpp (07FF7CE9B5001h)]
00007FF7CE977070  call        __CheckForDebuggerJustMyCode (07FF7CE97331Bh)
		size_t x, y, blk_x, blk_y;
		const size_t blk_x_size = x_size / blk_size;
00007FF7CE977075  xor         edx,edx
00007FF7CE977077  mov         rax,qword ptr [x_size]
00007FF7CE97707E  div         rax,qword ptr [blk_size]
00007FF7CE977085  mov         qword ptr [blk_x_size],rax
		const size_t blk_y_size = y_size / blk_size;
00007FF7CE97708C  xor         edx,edx
00007FF7CE97708E  mov         rax,qword ptr [y_size]
00007FF7CE977095  div         rax,qword ptr [blk_size]
00007FF7CE97709C  mov         qword ptr [blk_y_size],rax
		for (blk_y = 0; blk_y < blk_y_size; blk_y += 1) {
00007FF7CE9770A3  mov         qword ptr [blk_y],0
00007FF7CE9770AB  jmp         c::transpose_block+88h (07FF7CE9770B8h)
00007FF7CE9770AD  mov         rax,qword ptr [blk_y]
00007FF7CE9770B1  inc         rax
00007FF7CE9770B4  mov         qword ptr [blk_y],rax
00007FF7CE9770B8  mov         rax,qword ptr [blk_y_size]
00007FF7CE9770BF  cmp         qword ptr [blk_y],rax
00007FF7CE9770C3  jae         c::transpose_block+1E4h (07FF7CE977214h)
			for (blk_x = 0; blk_x < blk_x_size; blk_x += 1) {
00007FF7CE9770C9  mov         qword ptr [blk_x],0
00007FF7CE9770D1  jmp         c::transpose_block+0AEh (07FF7CE9770DEh)
00007FF7CE9770D3  mov         rax,qword ptr [blk_x]
00007FF7CE9770D7  inc         rax
00007FF7CE9770DA  mov         qword ptr [blk_x],rax
00007FF7CE9770DE  mov         rax,qword ptr [blk_x_size]
00007FF7CE9770E5  cmp         qword ptr [blk_x],rax
00007FF7CE9770E9  jae         c::transpose_block+1DFh (07FF7CE97720Fh)
				size_t in_base = blk_size * blk_y * x_size + blk_size * blk_x;
00007FF7CE9770EF  mov         rax,qword ptr [blk_size]
00007FF7CE9770F6  imul        rax,qword ptr [blk_y]
00007FF7CE9770FB  imul        rax,qword ptr [x_size]
00007FF7CE977103  mov         rcx,qword ptr [blk_size]
00007FF7CE97710A  imul        rcx,qword ptr [blk_x]
00007FF7CE97710F  add         rax,rcx
00007FF7CE977112  mov         qword ptr [rbp+0C8h],rax
				size_t out_base = blk_size * blk_x * y_size + blk_size * blk_y;
00007FF7CE977119  mov         rax,qword ptr [blk_size]
00007FF7CE977120  imul        rax,qword ptr [blk_x]
00007FF7CE977125  imul        rax,qword ptr [y_size]
00007FF7CE97712D  mov         rcx,qword ptr [blk_size]
00007FF7CE977134  imul        rcx,qword ptr [blk_y]
00007FF7CE977139  add         rax,rcx
00007FF7CE97713C  mov         qword ptr [rbp+0E8h],rax
				for (y = 0; y < blk_size; y += 1) {
00007FF7CE977143  mov         qword ptr [y],0
00007FF7CE97714B  jmp         c::transpose_block+128h (07FF7CE977158h)
00007FF7CE97714D  mov         rax,qword ptr [y]
00007FF7CE977151  inc         rax
00007FF7CE977154  mov         qword ptr [y],rax
00007FF7CE977158  mov         rax,qword ptr [blk_size]
00007FF7CE97715F  cmp         qword ptr [y],rax
00007FF7CE977163  jae         c::transpose_block+1DAh (07FF7CE97720Ah)
					for (x = 0; x < blk_size; x += 1) {
00007FF7CE977169  mov         qword ptr [x],0
00007FF7CE977171  jmp         c::transpose_block+14Eh (07FF7CE97717Eh)
00007FF7CE977173  mov         rax,qword ptr [x]
00007FF7CE977177  inc         rax
00007FF7CE97717A  mov         qword ptr [x],rax
00007FF7CE97717E  mov         rax,qword ptr [blk_size]
00007FF7CE977185  cmp         qword ptr [x],rax
00007FF7CE977189  jae         c::transpose_block+1D5h (07FF7CE977205h)
						size_t in_pos = in_base + y * x_size + x;
00007FF7CE97718B  mov         rax,qword ptr [y]
00007FF7CE97718F  imul        rax,qword ptr [x_size]
00007FF7CE977197  mov         rcx,qword ptr [rbp+0C8h]
00007FF7CE97719E  add         rcx,rax
00007FF7CE9771A1  mov         rax,rcx
00007FF7CE9771A4  add         rax,qword ptr [x]
00007FF7CE9771A8  mov         qword ptr [rbp+108h],rax
						size_t out_pos = out_base + x * y_size + y;
00007FF7CE9771AF  mov         rax,qword ptr [x]
00007FF7CE9771B3  imul        rax,qword ptr [y_size]
00007FF7CE9771BB  mov         rcx,qword ptr [rbp+0E8h]
00007FF7CE9771C2  add         rcx,rax
00007FF7CE9771C5  mov         rax,rcx
00007FF7CE9771C8  add         rax,qword ptr [y]
00007FF7CE9771CC  mov         qword ptr [rbp+128h],rax
						*(out + out_pos) = *(in + in_pos);
00007FF7CE9771D3  mov         rax,qword ptr [rbp+128h]
00007FF7CE9771DA  mov         rcx,qword ptr [out]
00007FF7CE9771E1  add         rcx,rax
00007FF7CE9771E4  mov         rax,rcx
00007FF7CE9771E7  mov         rcx,qword ptr [rbp+108h]
00007FF7CE9771EE  mov         rdx,qword ptr [in]
00007FF7CE9771F5  add         rdx,rcx
00007FF7CE9771F8  mov         rcx,rdx
00007FF7CE9771FB  movzx       ecx,byte ptr [rcx]
00007FF7CE9771FE  mov         byte ptr [rax],cl
					}
00007FF7CE977200  jmp         c::transpose_block+143h (07FF7CE977173h)
				}
00007FF7CE977205  jmp         c::transpose_block+11Dh (07FF7CE97714Dh)
			}
00007FF7CE97720A  jmp         c::transpose_block+0A3h (07FF7CE9770D3h)
		}
00007FF7CE97720F  jmp         c::transpose_block+7Dh (07FF7CE9770ADh)
	};
00007FF7CE977214  lea         rsp,[rbp+208h]
00007FF7CE97721B  pop         rdi
00007FF7CE97721C  pop         rbp
00007FF7CE97721D  ret
