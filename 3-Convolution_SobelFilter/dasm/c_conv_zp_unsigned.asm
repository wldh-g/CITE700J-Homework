	void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size) {
00007FF7D81401D0  mov         qword ptr [rsp+20h],r9
00007FF7D81401D5  mov         qword ptr [rsp+18h],r8
00007FF7D81401DA  mov         qword ptr [rsp+10h],rdx
00007FF7D81401DF  mov         qword ptr [rsp+8],rcx
00007FF7D81401E4  push        rbp
00007FF7D81401E5  push        rdi
00007FF7D81401E6  sub         rsp,298h
00007FF7D81401ED  lea         rbp,[rsp+20h]
00007FF7D81401F2  mov         rdi,rsp
00007FF7D81401F5  mov         ecx,0A6h
00007FF7D81401FA  mov         eax,0CCCCCCCCh
00007FF7D81401FF  rep stos    dword ptr [rdi]
00007FF7D8140201  mov         rcx,qword ptr [rsp+2B8h]
00007FF7D8140209  lea         rcx,[__64DFAD88_Func_C@cpp (07FF7D81B1053h)]
00007FF7D8140210  call        __CheckForDebuggerJustMyCode (07FF7D8137541h)
		size_t x, y, fx, fy;
		const size_t plus = (filter->size - 1) / 2;
00007FF7D8140215  mov         rax,qword ptr [filter]
00007FF7D814021C  mov         rax,qword ptr [rax]
00007FF7D814021F  dec         rax
00007FF7D8140222  xor         edx,edx
00007FF7D8140224  mov         ecx,2
00007FF7D8140229  div         rax,rcx
00007FF7D814022C  mov         qword ptr [plus],rax
		const size_t x_2plus = x_size + 2 * plus;
00007FF7D8140233  mov         rax,qword ptr [x_size]
00007FF7D814023A  mov         rcx,qword ptr [plus]
00007FF7D8140241  lea         rax,[rax+rcx*2]
00007FF7D8140245  mov         qword ptr [x_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2 * plus)] { 0 };
00007FF7D814024C  mov         rax,qword ptr [y_size]
00007FF7D8140253  mov         rcx,qword ptr [plus]
00007FF7D814025A  lea         rax,[rax+rcx*2]
00007FF7D814025E  mov         rcx,qword ptr [x_2plus]
00007FF7D8140265  imul        rcx,rax
00007FF7D8140269  mov         rax,rcx
00007FF7D814026C  mov         qword ptr [rbp+208h],rax
00007FF7D8140273  mov         rcx,qword ptr [rbp+208h]
00007FF7D814027A  call        operator new[] (07FF7D8138B85h)
00007FF7D814027F  mov         qword ptr [rbp+228h],rax
00007FF7D8140286  cmp         qword ptr [rbp+228h],0
00007FF7D814028E  je          c::conv_zp_unsigned+111h (07FF7D81402E1h)
00007FF7D8140290  mov         rdi,qword ptr [rbp+228h]
00007FF7D8140297  xor         eax,eax
00007FF7D8140299  mov         rcx,qword ptr [rbp+208h]
00007FF7D81402A0  rep stos    byte ptr [rdi]
00007FF7D81402A2  cmp         qword ptr [rbp+228h],0
00007FF7D81402AA  je          c::conv_zp_unsigned+0F6h (07FF7D81402C6h)
00007FF7D81402AC  mov         rax,qword ptr [rbp+228h]
00007FF7D81402B3  mov         byte ptr [rax],0
00007FF7D81402B6  mov         rax,qword ptr [rbp+228h]
00007FF7D81402BD  mov         qword ptr [rbp+258h],rax
00007FF7D81402C4  jmp         c::conv_zp_unsigned+101h (07FF7D81402D1h)
00007FF7D81402C6  mov         qword ptr [rbp+258h],0
00007FF7D81402D1  mov         rax,qword ptr [rbp+258h]
00007FF7D81402D8  mov         qword ptr [rbp+260h],rax
00007FF7D81402DF  jmp         c::conv_zp_unsigned+11Ch (07FF7D81402ECh)
00007FF7D81402E1  mov         qword ptr [rbp+260h],0
00007FF7D81402EC  mov         rax,qword ptr [rbp+260h]
00007FF7D81402F3  mov         qword ptr [padded_img],rax
		for (y = 0; y < y_size; y += 1) {
00007FF7D81402FA  mov         qword ptr [y],0
00007FF7D8140302  jmp         c::conv_zp_unsigned+13Fh (07FF7D814030Fh)
00007FF7D8140304  mov         rax,qword ptr [y]
00007FF7D8140308  inc         rax
00007FF7D814030B  mov         qword ptr [y],rax
00007FF7D814030F  mov         rax,qword ptr [y_size]
00007FF7D8140316  cmp         qword ptr [y],rax
00007FF7D814031A  jae         c::conv_zp_unsigned+1A3h (07FF7D8140373h)
			memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
00007FF7D814031C  mov         rax,qword ptr [y]
00007FF7D8140320  imul        rax,qword ptr [x_size]
00007FF7D8140328  mov         rcx,qword ptr [in]
00007FF7D814032F  add         rcx,rax
00007FF7D8140332  mov         rax,rcx
00007FF7D8140335  mov         rcx,qword ptr [plus]
00007FF7D814033C  mov         rdx,qword ptr [y]
00007FF7D8140340  add         rdx,rcx
00007FF7D8140343  mov         rcx,rdx
00007FF7D8140346  imul        rcx,qword ptr [x_2plus]
00007FF7D814034E  mov         rdx,qword ptr [padded_img]
00007FF7D8140355  add         rdx,rcx
00007FF7D8140358  mov         rcx,rdx
00007FF7D814035B  add         rcx,qword ptr [plus]
00007FF7D8140362  mov         r8,qword ptr [x_size]
00007FF7D8140369  mov         rdx,rax
00007FF7D814036C  call        memcpy (07FF7D8138A09h)
		}
00007FF7D8140371  jmp         c::conv_zp_unsigned+134h (07FF7D8140304h)
		int32_t tmp;
		for (y = 0; y < y_size; y += 1) {
00007FF7D8140373  mov         qword ptr [y],0
00007FF7D814037B  jmp         c::conv_zp_unsigned+1B8h (07FF7D8140388h)
00007FF7D814037D  mov         rax,qword ptr [y]
00007FF7D8140381  inc         rax
00007FF7D8140384  mov         qword ptr [y],rax
00007FF7D8140388  mov         rax,qword ptr [y_size]
00007FF7D814038F  cmp         qword ptr [y],rax
00007FF7D8140393  jae         c::conv_zp_unsigned+36Bh (07FF7D814053Bh)
			for (x = 0; x < x_size; x += 1) {
00007FF7D8140399  mov         qword ptr [x],0
00007FF7D81403A1  jmp         c::conv_zp_unsigned+1DEh (07FF7D81403AEh)
00007FF7D81403A3  mov         rax,qword ptr [x]
			for (x = 0; x < x_size; x += 1) {
00007FF7D81403A7  inc         rax
00007FF7D81403AA  mov         qword ptr [x],rax
00007FF7D81403AE  mov         rax,qword ptr [x_size]
00007FF7D81403B5  cmp         qword ptr [x],rax
00007FF7D81403B9  jae         c::conv_zp_unsigned+366h (07FF7D8140536h)
				size_t pos = y * x_size + x;
00007FF7D81403BF  mov         rax,qword ptr [y]
00007FF7D81403C3  imul        rax,qword ptr [x_size]
00007FF7D81403CB  add         rax,qword ptr [x]
00007FF7D81403CF  mov         qword ptr [rbp+108h],rax
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D81403D6  mov         rax,qword ptr [y]
00007FF7D81403DA  imul        rax,qword ptr [x_2plus]
00007FF7D81403E2  mov         rcx,qword ptr [padded_img]
00007FF7D81403E9  add         rcx,rax
00007FF7D81403EC  mov         rax,rcx
00007FF7D81403EF  add         rax,qword ptr [x]
00007FF7D81403F3  mov         qword ptr [rbp+128h],rax
				tmp = 0;
00007FF7D81403FA  mov         dword ptr [tmp],0
				for (fy = 0; fy < filter->size; fy += 1) {
00007FF7D8140404  mov         qword ptr [fy],0
00007FF7D814040C  jmp         c::conv_zp_unsigned+249h (07FF7D8140419h)
00007FF7D814040E  mov         rax,qword ptr [fy]
00007FF7D8140412  inc         rax
00007FF7D8140415  mov         qword ptr [fy],rax
00007FF7D8140419  mov         rax,qword ptr [filter]
00007FF7D8140420  mov         rax,qword ptr [rax]
00007FF7D8140423  cmp         qword ptr [fy],rax
00007FF7D8140427  jae         c::conv_zp_unsigned+2E8h (07FF7D81404B8h)
					for (fx = 0; fx < filter->size; fx += 1) {
00007FF7D814042D  mov         qword ptr [fx],0
00007FF7D8140435  jmp         c::conv_zp_unsigned+272h (07FF7D8140442h)
00007FF7D8140437  mov         rax,qword ptr [fx]
00007FF7D814043B  inc         rax
00007FF7D814043E  mov         qword ptr [fx],rax
00007FF7D8140442  mov         rax,qword ptr [filter]
00007FF7D8140449  mov         rax,qword ptr [rax]
00007FF7D814044C  cmp         qword ptr [fx],rax
00007FF7D8140450  jae         c::conv_zp_unsigned+2E3h (07FF7D81404B3h)
						tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D8140452  mov         rax,qword ptr [filter]
00007FF7D8140459  mov         rcx,qword ptr [fy]
00007FF7D814045D  imul        rcx,qword ptr [rax]
00007FF7D8140461  mov         rax,rcx
00007FF7D8140464  mov         rcx,qword ptr [filter]
00007FF7D814046B  mov         rcx,qword ptr [rcx+10h]
00007FF7D814046F  add         rcx,rax
00007FF7D8140472  mov         rax,rcx
00007FF7D8140475  mov         rcx,qword ptr [fx]
00007FF7D8140479  movsx       eax,byte ptr [rax+rcx]
00007FF7D814047D  mov         rcx,qword ptr [fy]
00007FF7D8140481  imul        rcx,qword ptr [x_2plus]
00007FF7D8140489  mov         rdx,qword ptr [rbp+128h]
00007FF7D8140490  add         rdx,rcx
00007FF7D8140493  mov         rcx,rdx
00007FF7D8140496  mov         rdx,qword ptr [fx]
00007FF7D814049A  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D814049E  imul        eax,ecx
00007FF7D81404A1  mov         ecx,dword ptr [tmp]
00007FF7D81404A7  add         ecx,eax
00007FF7D81404A9  mov         eax,ecx
00007FF7D81404AB  mov         dword ptr [tmp],eax
					}
00007FF7D81404B1  jmp         c::conv_zp_unsigned+267h (07FF7D8140437h)
				}
00007FF7D81404B3  jmp         c::conv_zp_unsigned+23Eh (07FF7D814040Eh)
				tmp /= filter->kernel_sum;
00007FF7D81404B8  mov         eax,dword ptr [tmp]
00007FF7D81404BE  cdq
00007FF7D81404BF  mov         rcx,qword ptr [filter]
00007FF7D81404C6  idiv        eax,dword ptr [rcx+18h]
00007FF7D81404C9  mov         dword ptr [tmp],eax
				*(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
00007FF7D81404CF  cmp         dword ptr [tmp],0
00007FF7D81404D6  jl          c::conv_zp_unsigned+33Ah (07FF7D814050Ah)
00007FF7D81404D8  cmp         dword ptr [tmp],0FFh
00007FF7D81404E2  jg          c::conv_zp_unsigned+322h (07FF7D81404F2h)
00007FF7D81404E4  mov         eax,dword ptr [tmp]
00007FF7D81404EA  mov         dword ptr [rbp+254h],eax
00007FF7D81404F0  jmp         c::conv_zp_unsigned+32Ch (07FF7D81404FCh)
00007FF7D81404F2  mov         dword ptr [rbp+254h],0FFh
00007FF7D81404FC  mov         eax,dword ptr [rbp+254h]
00007FF7D8140502  mov         dword ptr [rbp+258h],eax
00007FF7D8140508  jmp         c::conv_zp_unsigned+344h (07FF7D8140514h)
00007FF7D814050A  mov         dword ptr [rbp+258h],0
00007FF7D8140514  mov         rax,qword ptr [rbp+108h]
00007FF7D814051B  mov         rcx,qword ptr [out]
00007FF7D8140522  add         rcx,rax
00007FF7D8140525  mov         rax,rcx
00007FF7D8140528  movzx       ecx,byte ptr [rbp+258h]
00007FF7D814052F  mov         byte ptr [rax],cl
			}
00007FF7D8140531  jmp         c::conv_zp_unsigned+1D3h (07FF7D81403A3h)
		}
00007FF7D8140536  jmp         c::conv_zp_unsigned+1ADh (07FF7D814037Dh)
		delete[] padded_img;
00007FF7D814053B  mov         rax,qword ptr [padded_img]
00007FF7D8140542  mov         qword ptr [rbp+248h],rax
00007FF7D8140549  mov         rcx,qword ptr [rbp+248h]
00007FF7D8140550  call        operator delete[] (07FF7D81382EDh)
00007FF7D8140555  cmp         qword ptr [rbp+248h],0
00007FF7D814055D  jne         c::conv_zp_unsigned+39Ch (07FF7D814056Ch)
00007FF7D814055F  mov         qword ptr [rbp+258h],0
00007FF7D814056A  jmp         c::conv_zp_unsigned+3B5h (07FF7D8140585h)
00007FF7D814056C  mov         qword ptr [padded_img],8123h
00007FF7D8140577  mov         rax,qword ptr [padded_img]
00007FF7D814057E  mov         qword ptr [rbp+258h],rax
	};
00007FF7D8140585  lea         rsp,[rbp+278h]
00007FF7D814058C  pop         rdi
00007FF7D814058D  pop         rbp
00007FF7D814058E  ret
