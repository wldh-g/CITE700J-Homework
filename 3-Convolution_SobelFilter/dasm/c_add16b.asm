	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
00007FF7CE976DC0  mov         qword ptr [rsp+20h],r9
00007FF7CE976DC5  mov         qword ptr [rsp+18h],r8
00007FF7CE976DCA  mov         qword ptr [rsp+10h],rdx
00007FF7CE976DCF  mov         qword ptr [rsp+8],rcx
00007FF7CE976DD4  push        rbp
00007FF7CE976DD5  push        rdi
00007FF7CE976DD6  sub         rsp,148h
00007FF7CE976DDD  lea         rbp,[rsp+20h]
00007FF7CE976DE2  mov         rdi,rsp
00007FF7CE976DE5  mov         ecx,52h
00007FF7CE976DEA  mov         eax,0CCCCCCCCh
00007FF7CE976DEF  rep stos    dword ptr [rdi]
00007FF7CE976DF1  mov         rcx,qword ptr [rsp+168h]
00007FF7CE976DF9  lea         rcx,[__5460E701_C@cpp (07FF7CE9B5001h)]
00007FF7CE976E00  call        __CheckForDebuggerJustMyCode (07FF7CE97331Bh)
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF7CE976E05  mov         qword ptr [y],0
00007FF7CE976E0D  jmp         c::add_16b+5Ah (07FF7CE976E1Ah)
00007FF7CE976E0F  mov         rax,qword ptr [y]
00007FF7CE976E13  inc         rax
00007FF7CE976E16  mov         qword ptr [y],rax
00007FF7CE976E1A  mov         rax,qword ptr [y_size]
00007FF7CE976E21  cmp         qword ptr [y],rax
00007FF7CE976E25  jae         c::add_16b+0DDh (07FF7CE976E9Dh)
			for (x = 0; x < x_size; x += 1) {
00007FF7CE976E27  mov         qword ptr [x],0
			for (x = 0; x < x_size; x += 1) {
00007FF7CE976E2F  jmp         c::add_16b+7Ch (07FF7CE976E3Ch)
00007FF7CE976E31  mov         rax,qword ptr [x]
00007FF7CE976E35  inc         rax
00007FF7CE976E38  mov         qword ptr [x],rax
00007FF7CE976E3C  mov         rax,qword ptr [x_size]
00007FF7CE976E43  cmp         qword ptr [x],rax
00007FF7CE976E47  jae         c::add_16b+0D8h (07FF7CE976E98h)
				size_t pos = y * y_size + x;
00007FF7CE976E49  mov         rax,qword ptr [y]
00007FF7CE976E4D  imul        rax,qword ptr [y_size]
00007FF7CE976E55  add         rax,qword ptr [x]
00007FF7CE976E59  mov         qword ptr [rbp+48h],rax
				*(out + pos) = (uint16_t)*(in1 + pos) + (uint16_t)*(in2 + pos);
00007FF7CE976E5D  mov         rax,qword ptr [rbp+48h]
00007FF7CE976E61  mov         rcx,qword ptr [in1]
00007FF7CE976E68  add         rcx,rax
00007FF7CE976E6B  mov         rax,rcx
00007FF7CE976E6E  movzx       eax,byte ptr [rax]
00007FF7CE976E71  mov         rcx,qword ptr [rbp+48h]
00007FF7CE976E75  mov         rdx,qword ptr [in2]
00007FF7CE976E7C  add         rdx,rcx
00007FF7CE976E7F  mov         rcx,rdx
00007FF7CE976E82  movzx       ecx,byte ptr [rcx]
00007FF7CE976E85  add         eax,ecx
00007FF7CE976E87  mov         rcx,qword ptr [out]
00007FF7CE976E8E  mov         rdx,qword ptr [rbp+48h]
00007FF7CE976E92  mov         word ptr [rcx+rdx*2],ax
			}
00007FF7CE976E96  jmp         c::add_16b+71h (07FF7CE976E31h)
		}
00007FF7CE976E98  jmp         c::add_16b+4Fh (07FF7CE976E0Fh)
	};
00007FF7CE976E9D  lea         rsp,[rbp+128h]
00007FF7CE976EA4  pop         rdi
00007FF7CE976EA5  pop         rbp
00007FF7CE976EA6  ret
