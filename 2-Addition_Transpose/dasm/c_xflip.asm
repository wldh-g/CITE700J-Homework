void c_xflip(unsigned char* in, unsigned char* out, size_t x_size, size_t y_size) {
00007FF6B5454B80  mov         qword ptr [rsp+20h],r9  
00007FF6B5454B85  mov         qword ptr [rsp+18h],r8  
00007FF6B5454B8A  mov         qword ptr [rsp+10h],rdx  
00007FF6B5454B8F  mov         qword ptr [rsp+8],rcx  
00007FF6B5454B94  push        rbp  
00007FF6B5454B95  push        rdi  
00007FF6B5454B96  sub         rsp,168h  
00007FF6B5454B9D  lea         rbp,[rsp+20h]  
00007FF6B5454BA2  mov         rdi,rsp  
00007FF6B5454BA5  mov         ecx,5Ah  
00007FF6B5454BAA  mov         eax,0CCCCCCCCh  
00007FF6B5454BAF  rep stos    dword ptr [rdi]  
00007FF6B5454BB1  mov         rcx,qword ptr [rsp+188h]  
00007FF6B5454BB9  lea         rcx,[__F29EA983_Func@cpp (07FF6B546803Eh)]  
00007FF6B5454BC0  call        __CheckForDebuggerJustMyCode (07FF6B5451109h)  
	register size_t x, y;
	for (y = 0; y < y_size; y += 1) {
00007FF6B5454BC5  mov         qword ptr [y],0  
00007FF6B5454BCD  jmp         c_xflip+5Ah (07FF6B5454BDAh)  
00007FF6B5454BCF  mov         rax,qword ptr [y]  
00007FF6B5454BD3  inc         rax  
00007FF6B5454BD6  mov         qword ptr [y],rax  
00007FF6B5454BDA  mov         rax,qword ptr [y_size]  
00007FF6B5454BE1  cmp         qword ptr [y],rax  
00007FF6B5454BE5  jae         c_xflip+0EDh (07FF6B5454C6Dh)  
		for (x = 0; x < x_size; x += 1) {
00007FF6B5454BEB  mov         qword ptr [x],0  
00007FF6B5454BF3  jmp         c_xflip+80h (07FF6B5454C00h)  
00007FF6B5454BF5  mov         rax,qword ptr [x]  
00007FF6B5454BF9  inc         rax  
00007FF6B5454BFC  mov         qword ptr [x],rax  
00007FF6B5454C00  mov         rax,qword ptr [x_size]  
00007FF6B5454C07  cmp         qword ptr [x],rax  
00007FF6B5454C0B  jae         c_xflip+0E8h (07FF6B5454C68h)  
			size_t in_pos = y * y_size + x;
00007FF6B5454C0D  mov         rax,qword ptr [y]  
00007FF6B5454C11  imul        rax,qword ptr [y_size]  
00007FF6B5454C19  add         rax,qword ptr [x]  
00007FF6B5454C1D  mov         qword ptr [rbp+48h],rax  
			size_t out_pos = y * y_size + x_size - x - 1;
00007FF6B5454C21  mov         rax,qword ptr [y]  
00007FF6B5454C25  imul        rax,qword ptr [y_size]  
00007FF6B5454C2D  add         rax,qword ptr [x_size]  
00007FF6B5454C34  sub         rax,qword ptr [x]  
00007FF6B5454C38  dec         rax  
00007FF6B5454C3B  mov         qword ptr [rbp+68h],rax  
			*(out + out_pos) = *(in + in_pos);
00007FF6B5454C3F  mov         rax,qword ptr [rbp+68h]  
00007FF6B5454C43  mov         rcx,qword ptr [out]  
00007FF6B5454C4A  add         rcx,rax  
00007FF6B5454C4D  mov         rax,rcx  
00007FF6B5454C50  mov         rcx,qword ptr [rbp+48h]  
00007FF6B5454C54  mov         rdx,qword ptr [in]  
00007FF6B5454C5B  add         rdx,rcx  
00007FF6B5454C5E  mov         rcx,rdx  
00007FF6B5454C61  movzx       ecx,byte ptr [rcx]  
00007FF6B5454C64  mov         byte ptr [rax],cl  
		}
00007FF6B5454C66  jmp         c_xflip+75h (07FF6B5454BF5h)  
	}
00007FF6B5454C68  jmp         c_xflip+4Fh (07FF6B5454BCFh)  
};
00007FF6B5454C6D  lea         rsp,[rbp+148h]  
00007FF6B5454C74  pop         rdi  
00007FF6B5454C75  pop         rbp  
00007FF6B5454C76  ret  
