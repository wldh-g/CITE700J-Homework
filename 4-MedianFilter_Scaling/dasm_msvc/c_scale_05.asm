; Built with MSVC 19.26.28806 (x64) in Debug mode default options
	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
00007FF7077AB030  mov         qword ptr [rsp+20h],r9
00007FF7077AB035  mov         qword ptr [rsp+18h],r8
00007FF7077AB03A  mov         qword ptr [rsp+10h],rdx
00007FF7077AB03F  mov         qword ptr [rsp+8],rcx
00007FF7077AB044  push        rbp
00007FF7077AB045  push        rdi
00007FF7077AB046  sub         rsp,168h
00007FF7077AB04D  lea         rbp,[rsp+20h]
00007FF7077AB052  mov         rdi,rsp
00007FF7077AB055  mov         ecx,5Ah
00007FF7077AB05A  mov         eax,0CCCCCCCCh
00007FF7077AB05F  rep stos    dword ptr [rdi]
00007FF7077AB061  mov         rcx,qword ptr [rsp+188h]
00007FF7077AB069  lea         rcx,[__3BE03879_Func_C@cpp (07FF707826086h)]
00007FF7077AB070  call        __CheckForDebuggerJustMyCode (07FF70779D5D7h)
		constexpr uint16_t scale = (uint16_t)(0.5f * 128);
00007FF7077AB075  mov         eax,40h
00007FF7077AB07A  mov         word ptr [scale],ax
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
00007FF7077AB07E  mov         qword ptr [y],0
00007FF7077AB086  jmp         c::scale_05+63h (07FF7077AB093h)
00007FF7077AB088  mov         rax,qword ptr [y]
00007FF7077AB08C  inc         rax
00007FF7077AB08F  mov         qword ptr [y],rax
00007FF7077AB093  mov         rax,qword ptr [y_size]
00007FF7077AB09A  cmp         qword ptr [y],rax
00007FF7077AB09E  jae         c::scale_05+0D7h (07FF7077AB107h)
			for (x = 0; x < x_size; x += 1) {
00007FF7077AB0A0  mov         qword ptr [x],0
00007FF7077AB0A8  jmp         c::scale_05+85h (07FF7077AB0B5h)
00007FF7077AB0AA  mov         rax,qword ptr [x]
00007FF7077AB0AE  inc         rax
00007FF7077AB0B1  mov         qword ptr [x],rax
00007FF7077AB0B5  mov         rax,qword ptr [x_size]
00007FF7077AB0BC  cmp         qword ptr [x],rax
00007FF7077AB0C0  jae         c::scale_05+0D5h (07FF7077AB105h)
				size_t pos = y * x_size + x;
00007FF7077AB0C2  mov         rax,qword ptr [y]
00007FF7077AB0C6  imul        rax,qword ptr [x_size]
00007FF7077AB0CE  add         rax,qword ptr [x]
00007FF7077AB0D2  mov         qword ptr [rbp+68h],rax
				*(out + pos) = (uint8_t)((scale * *(in + pos)) >> 7);
00007FF7077AB0D6  mov         rax,qword ptr [rbp+68h]
00007FF7077AB0DA  mov         rcx,qword ptr [in]
00007FF7077AB0E1  add         rcx,rax
00007FF7077AB0E4  mov         rax,rcx
00007FF7077AB0E7  movzx       eax,byte ptr [rax]
00007FF7077AB0EA  imul        eax,eax,40h
00007FF7077AB0ED  sar         eax,7
00007FF7077AB0F0  mov         rcx,qword ptr [rbp+68h]
00007FF7077AB0F4  mov         rdx,qword ptr [out]
00007FF7077AB0FB  add         rdx,rcx
00007FF7077AB0FE  mov         rcx,rdx
00007FF7077AB101  mov         byte ptr [rcx],al
			}
00007FF7077AB103  jmp         c::scale_05+7Ah (07FF7077AB0AAh)
		}
00007FF7077AB105  jmp         c::scale_05+58h (07FF7077AB088h)
	};
00007FF7077AB107  lea         rsp,[rbp+148h]
	};
00007FF7077AB10E  pop         rdi
00007FF7077AB10F  pop         rbp
00007FF7077AB110  ret
