	void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size) {
00007FF7D813F640  mov         qword ptr [rsp+20h],r9
00007FF7D813F645  mov         qword ptr [rsp+18h],r8
00007FF7D813F64A  mov         qword ptr [rsp+10h],rdx
00007FF7D813F64F  mov         qword ptr [rsp+8],rcx
00007FF7D813F654  push        rbp
00007FF7D813F655  push        rdi
00007FF7D813F656  sub         rsp,2D8h
00007FF7D813F65D  lea         rbp,[rsp+20h]
00007FF7D813F662  mov         rdi,rsp
00007FF7D813F665  mov         ecx,0B6h
00007FF7D813F66A  mov         eax,0CCCCCCCCh
00007FF7D813F66F  rep stos    dword ptr [rdi]
00007FF7D813F671  mov         rcx,qword ptr [rsp+2F8h]
00007FF7D813F679  lea         rcx,[__64DFAD88_Func_C@cpp (07FF7D81B1053h)]
00007FF7D813F680  call        __CheckForDebuggerJustMyCode (07FF7D8137541h)
		size_t x, y, fx, fy;
		const size_t plus = (filter->size - 1) / 2;
00007FF7D813F685  mov         rax,qword ptr [filter]
00007FF7D813F68C  mov         rax,qword ptr [rax]
00007FF7D813F68F  dec         rax
00007FF7D813F692  xor         edx,edx
00007FF7D813F694  mov         ecx,2
00007FF7D813F699  div         rax,rcx
00007FF7D813F69C  mov         qword ptr [plus],rax
		const size_t x_2plus = x_size + 2 * plus;
00007FF7D813F6A3  mov         rax,qword ptr [x_size]
00007FF7D813F6AA  mov         rcx,qword ptr [plus]
00007FF7D813F6B1  lea         rax,[rax+rcx*2]
00007FF7D813F6B5  mov         qword ptr [x_2plus],rax
		const size_t y_2plus = y_size + 2 * plus;
00007FF7D813F6BC  mov         rax,qword ptr [y_size]
00007FF7D813F6C3  mov         rcx,qword ptr [plus]
00007FF7D813F6CA  lea         rax,[rax+rcx*2]
00007FF7D813F6CE  mov         qword ptr [y_2plus],rax
		uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2 * plus)] { 0 };
00007FF7D813F6D5  mov         rax,qword ptr [y_size]
00007FF7D813F6DC  mov         rcx,qword ptr [plus]
00007FF7D813F6E3  lea         rax,[rax+rcx*2]
00007FF7D813F6E7  mov         rcx,qword ptr [x_2plus]
00007FF7D813F6EE  imul        rcx,rax
00007FF7D813F6F2  mov         rax,rcx
00007FF7D813F6F5  mov         qword ptr [rbp+248h],rax
00007FF7D813F6FC  mov         rcx,qword ptr [rbp+248h]
00007FF7D813F703  call        operator new[] (07FF7D8138B85h)
00007FF7D813F708  mov         qword ptr [rbp+268h],rax
00007FF7D813F70F  cmp         qword ptr [rbp+268h],0
00007FF7D813F717  je          c::conv_be_unsigned+12Ah (07FF7D813F76Ah)
00007FF7D813F719  mov         rdi,qword ptr [rbp+268h]
00007FF7D813F720  xor         eax,eax
00007FF7D813F722  mov         rcx,qword ptr [rbp+248h]
00007FF7D813F729  rep stos    byte ptr [rdi]
00007FF7D813F72B  cmp         qword ptr [rbp+268h],0
00007FF7D813F733  je          c::conv_be_unsigned+10Fh (07FF7D813F74Fh)
00007FF7D813F735  mov         rax,qword ptr [rbp+268h]
00007FF7D813F73C  mov         byte ptr [rax],0
00007FF7D813F73F  mov         rax,qword ptr [rbp+268h]
00007FF7D813F746  mov         qword ptr [rbp+298h],rax
00007FF7D813F74D  jmp         c::conv_be_unsigned+11Ah (07FF7D813F75Ah)
00007FF7D813F74F  mov         qword ptr [rbp+298h],0
00007FF7D813F75A  mov         rax,qword ptr [rbp+298h]
00007FF7D813F761  mov         qword ptr [rbp+2A0h],rax
00007FF7D813F768  jmp         c::conv_be_unsigned+135h (07FF7D813F775h)
00007FF7D813F76A  mov         qword ptr [rbp+2A0h],0
00007FF7D813F775  mov         rax,qword ptr [rbp+2A0h]
00007FF7D813F77C  mov         qword ptr [padded_img],rax
		uint8_t* in_last_line = in + (y_size - 1) * x_size;
00007FF7D813F783  mov         rax,qword ptr [y_size]
00007FF7D813F78A  dec         rax
00007FF7D813F78D  imul        rax,qword ptr [x_size]
00007FF7D813F795  mov         rcx,qword ptr [in]
00007FF7D813F79C  add         rcx,rax
00007FF7D813F79F  mov         rax,rcx
00007FF7D813F7A2  mov         qword ptr [in_last_line],rax
		for (y = 0; y < y_size; y += 1) {
00007FF7D813F7A9  mov         qword ptr [y],0
00007FF7D813F7B1  jmp         c::conv_be_unsigned+17Eh (07FF7D813F7BEh)
00007FF7D813F7B3  mov         rax,qword ptr [y]
00007FF7D813F7B7  inc         rax
00007FF7D813F7BA  mov         qword ptr [y],rax
00007FF7D813F7BE  mov         rax,qword ptr [y_size]
00007FF7D813F7C5  cmp         qword ptr [y],rax
00007FF7D813F7C9  jae         c::conv_be_unsigned+1E2h (07FF7D813F822h)
			memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
00007FF7D813F7CB  mov         rax,qword ptr [y]
00007FF7D813F7CF  imul        rax,qword ptr [x_size]
00007FF7D813F7D7  mov         rcx,qword ptr [in]
00007FF7D813F7DE  add         rcx,rax
00007FF7D813F7E1  mov         rax,rcx
00007FF7D813F7E4  mov         rcx,qword ptr [plus]
00007FF7D813F7EB  mov         rdx,qword ptr [y]
00007FF7D813F7EF  add         rdx,rcx
00007FF7D813F7F2  mov         rcx,rdx
00007FF7D813F7F5  imul        rcx,qword ptr [x_2plus]
00007FF7D813F7FD  mov         rdx,qword ptr [padded_img]
00007FF7D813F804  add         rdx,rcx
00007FF7D813F807  mov         rcx,rdx
00007FF7D813F80A  add         rcx,qword ptr [plus]
00007FF7D813F811  mov         r8,qword ptr [x_size]
00007FF7D813F818  mov         rdx,rax
00007FF7D813F81B  call        memcpy (07FF7D8138A09h)
		}
00007FF7D813F820  jmp         c::conv_be_unsigned+173h (07FF7D813F7B3h)
		for (y = 0; y < plus; y += 1) {
00007FF7D813F822  mov         qword ptr [y],0
		for (y = 0; y < plus; y += 1) {
00007FF7D813F82A  jmp         c::conv_be_unsigned+1F7h (07FF7D813F837h)
00007FF7D813F82C  mov         rax,qword ptr [y]
00007FF7D813F830  inc         rax
00007FF7D813F833  mov         qword ptr [y],rax
00007FF7D813F837  mov         rax,qword ptr [plus]
00007FF7D813F83E  cmp         qword ptr [y],rax
00007FF7D813F842  jae         c::conv_be_unsigned+28Dh (07FF7D813F8CDh)
			memcpy(padded_img + y * x_2plus + plus, in, x_size);
00007FF7D813F848  mov         rax,qword ptr [y]
00007FF7D813F84C  imul        rax,qword ptr [x_2plus]
00007FF7D813F854  mov         rcx,qword ptr [padded_img]
00007FF7D813F85B  add         rcx,rax
00007FF7D813F85E  mov         rax,rcx
00007FF7D813F861  add         rax,qword ptr [plus]
00007FF7D813F868  mov         r8,qword ptr [x_size]
00007FF7D813F86F  mov         rdx,qword ptr [in]
00007FF7D813F876  mov         rcx,rax
00007FF7D813F879  call        memcpy (07FF7D8138A09h)
			memcpy(padded_img + (y_size + plus + y) * x_2plus + plus, in_last_line, x_size);
00007FF7D813F87E  mov         rax,qword ptr [plus]
00007FF7D813F885  mov         rcx,qword ptr [y_size]
00007FF7D813F88C  add         rcx,rax
00007FF7D813F88F  mov         rax,rcx
00007FF7D813F892  add         rax,qword ptr [y]
00007FF7D813F896  imul        rax,qword ptr [x_2plus]
00007FF7D813F89E  mov         rcx,qword ptr [padded_img]
00007FF7D813F8A5  add         rcx,rax
00007FF7D813F8A8  mov         rax,rcx
00007FF7D813F8AB  add         rax,qword ptr [plus]
00007FF7D813F8B2  mov         r8,qword ptr [x_size]
00007FF7D813F8B9  mov         rdx,qword ptr [in_last_line]
			memcpy(padded_img + (y_size + plus + y) * x_2plus + plus, in_last_line, x_size);
00007FF7D813F8C0  mov         rcx,rax
00007FF7D813F8C3  call        memcpy (07FF7D8138A09h)
		}
00007FF7D813F8C8  jmp         c::conv_be_unsigned+1ECh (07FF7D813F82Ch)
		for (y = 0; y < y_2plus; y += 1) {
00007FF7D813F8CD  mov         qword ptr [y],0
00007FF7D813F8D5  jmp         c::conv_be_unsigned+2A2h (07FF7D813F8E2h)
00007FF7D813F8D7  mov         rax,qword ptr [y]
00007FF7D813F8DB  inc         rax
00007FF7D813F8DE  mov         qword ptr [y],rax
00007FF7D813F8E2  mov         rax,qword ptr [y_2plus]
00007FF7D813F8E9  cmp         qword ptr [y],rax
00007FF7D813F8ED  jae         c::conv_be_unsigned+361h (07FF7D813F9A1h)
			memcpy(padded_img + y * x_2plus, padded_img + y * x_2plus + plus, plus);
00007FF7D813F8F3  mov         rax,qword ptr [y]
00007FF7D813F8F7  imul        rax,qword ptr [x_2plus]
00007FF7D813F8FF  mov         rcx,qword ptr [padded_img]
00007FF7D813F906  add         rcx,rax
00007FF7D813F909  mov         rax,rcx
00007FF7D813F90C  add         rax,qword ptr [plus]
00007FF7D813F913  mov         rcx,qword ptr [y]
00007FF7D813F917  imul        rcx,qword ptr [x_2plus]
00007FF7D813F91F  mov         rdx,qword ptr [padded_img]
00007FF7D813F926  add         rdx,rcx
00007FF7D813F929  mov         rcx,rdx
00007FF7D813F92C  mov         r8,qword ptr [plus]
00007FF7D813F933  mov         rdx,rax
00007FF7D813F936  call        memcpy (07FF7D8138A09h)
			memcpy(padded_img + (y + 1) * x_2plus - plus - 1,
00007FF7D813F93B  mov         rax,qword ptr [y]
00007FF7D813F93F  inc         rax
00007FF7D813F942  imul        rax,qword ptr [x_2plus]
00007FF7D813F94A  mov         rcx,qword ptr [padded_img]
00007FF7D813F951  add         rcx,rax
00007FF7D813F954  mov         rax,rcx
00007FF7D813F957  mov         rcx,qword ptr [plus]
00007FF7D813F95E  shl         rcx,1
00007FF7D813F961  sub         rax,rcx
00007FF7D813F964  dec         rax
00007FF7D813F967  mov         rcx,qword ptr [y]
00007FF7D813F96B  inc         rcx
00007FF7D813F96E  imul        rcx,qword ptr [x_2plus]
00007FF7D813F976  mov         rdx,qword ptr [padded_img]
00007FF7D813F97D  add         rdx,rcx
00007FF7D813F980  mov         rcx,rdx
00007FF7D813F983  sub         rcx,qword ptr [plus]
00007FF7D813F98A  dec         rcx
00007FF7D813F98D  mov         r8,qword ptr [plus]
00007FF7D813F994  mov         rdx,rax
00007FF7D813F997  call        memcpy (07FF7D8138A09h)
						 padded_img + (y + 1) * x_2plus - 2 * plus - 1, plus);
		}
00007FF7D813F99C  jmp         c::conv_be_unsigned+297h (07FF7D813F8D7h)
		int32_t tmp;
		for (y = 0; y < y_size; y += 1) {
00007FF7D813F9A1  mov         qword ptr [y],0
00007FF7D813F9A9  jmp         c::conv_be_unsigned+376h (07FF7D813F9B6h)
00007FF7D813F9AB  mov         rax,qword ptr [y]
00007FF7D813F9AF  inc         rax
00007FF7D813F9B2  mov         qword ptr [y],rax
00007FF7D813F9B6  mov         rax,qword ptr [y_size]
00007FF7D813F9BD  cmp         qword ptr [y],rax
00007FF7D813F9C1  jae         c::conv_be_unsigned+529h (07FF7D813FB69h)
			for (x = 0; x < x_size; x += 1) {
00007FF7D813F9C7  mov         qword ptr [x],0
00007FF7D813F9CF  jmp         c::conv_be_unsigned+39Ch (07FF7D813F9DCh)
00007FF7D813F9D1  mov         rax,qword ptr [x]
00007FF7D813F9D5  inc         rax
00007FF7D813F9D8  mov         qword ptr [x],rax
00007FF7D813F9DC  mov         rax,qword ptr [x_size]
00007FF7D813F9E3  cmp         qword ptr [x],rax
00007FF7D813F9E7  jae         c::conv_be_unsigned+524h (07FF7D813FB64h)
				size_t pos = y * x_size + x;
00007FF7D813F9ED  mov         rax,qword ptr [y]
00007FF7D813F9F1  imul        rax,qword ptr [x_size]
00007FF7D813F9F9  add         rax,qword ptr [x]
00007FF7D813F9FD  mov         qword ptr [rbp+148h],rax
				uint8_t* padded_pos = padded_img + y * x_2plus + x;
00007FF7D813FA04  mov         rax,qword ptr [y]
00007FF7D813FA08  imul        rax,qword ptr [x_2plus]
00007FF7D813FA10  mov         rcx,qword ptr [padded_img]
00007FF7D813FA17  add         rcx,rax
00007FF7D813FA1A  mov         rax,rcx
00007FF7D813FA1D  add         rax,qword ptr [x]
00007FF7D813FA21  mov         qword ptr [rbp+168h],rax
				tmp = 0;
00007FF7D813FA28  mov         dword ptr [tmp],0
				for (fy = 0; fy < filter->size; fy += 1) {
00007FF7D813FA32  mov         qword ptr [fy],0
00007FF7D813FA3A  jmp         c::conv_be_unsigned+407h (07FF7D813FA47h)
00007FF7D813FA3C  mov         rax,qword ptr [fy]
00007FF7D813FA40  inc         rax
00007FF7D813FA43  mov         qword ptr [fy],rax
00007FF7D813FA47  mov         rax,qword ptr [filter]
00007FF7D813FA4E  mov         rax,qword ptr [rax]
00007FF7D813FA51  cmp         qword ptr [fy],rax
00007FF7D813FA55  jae         c::conv_be_unsigned+4A6h (07FF7D813FAE6h)
					for (fx = 0; fx < filter->size; fx += 1) {
00007FF7D813FA5B  mov         qword ptr [fx],0
00007FF7D813FA63  jmp         c::conv_be_unsigned+430h (07FF7D813FA70h)
00007FF7D813FA65  mov         rax,qword ptr [fx]
00007FF7D813FA69  inc         rax
00007FF7D813FA6C  mov         qword ptr [fx],rax
00007FF7D813FA70  mov         rax,qword ptr [filter]
00007FF7D813FA77  mov         rax,qword ptr [rax]
00007FF7D813FA7A  cmp         qword ptr [fx],rax
00007FF7D813FA7E  jae         c::conv_be_unsigned+4A1h (07FF7D813FAE1h)
						tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
00007FF7D813FA80  mov         rax,qword ptr [filter]
00007FF7D813FA87  mov         rcx,qword ptr [fy]
00007FF7D813FA8B  imul        rcx,qword ptr [rax]
00007FF7D813FA8F  mov         rax,rcx
00007FF7D813FA92  mov         rcx,qword ptr [filter]
00007FF7D813FA99  mov         rcx,qword ptr [rcx+10h]
00007FF7D813FA9D  add         rcx,rax
00007FF7D813FAA0  mov         rax,rcx
00007FF7D813FAA3  mov         rcx,qword ptr [fx]
00007FF7D813FAA7  movsx       eax,byte ptr [rax+rcx]
00007FF7D813FAAB  mov         rcx,qword ptr [fy]
00007FF7D813FAAF  imul        rcx,qword ptr [x_2plus]
00007FF7D813FAB7  mov         rdx,qword ptr [rbp+168h]
00007FF7D813FABE  add         rdx,rcx
00007FF7D813FAC1  mov         rcx,rdx
00007FF7D813FAC4  mov         rdx,qword ptr [fx]
00007FF7D813FAC8  movzx       ecx,byte ptr [rcx+rdx]
00007FF7D813FACC  imul        eax,ecx
00007FF7D813FACF  mov         ecx,dword ptr [tmp]
00007FF7D813FAD5  add         ecx,eax
00007FF7D813FAD7  mov         eax,ecx
00007FF7D813FAD9  mov         dword ptr [tmp],eax
					}
00007FF7D813FADF  jmp         c::conv_be_unsigned+425h (07FF7D813FA65h)
				}
00007FF7D813FAE1  jmp         c::conv_be_unsigned+3FCh (07FF7D813FA3Ch)
				tmp /= filter->kernel_sum;
00007FF7D813FAE6  mov         eax,dword ptr [tmp]
00007FF7D813FAEC  cdq
00007FF7D813FAED  mov         rcx,qword ptr [filter]
00007FF7D813FAF4  idiv        eax,dword ptr [rcx+18h]
00007FF7D813FAF7  mov         dword ptr [tmp],eax
				*(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
00007FF7D813FAFD  cmp         dword ptr [tmp],0
00007FF7D813FB04  jl          c::conv_be_unsigned+4F8h (07FF7D813FB38h)
00007FF7D813FB06  cmp         dword ptr [tmp],0FFh
00007FF7D813FB10  jg          c::conv_be_unsigned+4E0h (07FF7D813FB20h)
00007FF7D813FB12  mov         eax,dword ptr [tmp]
00007FF7D813FB18  mov         dword ptr [rbp+294h],eax
00007FF7D813FB1E  jmp         c::conv_be_unsigned+4EAh (07FF7D813FB2Ah)
00007FF7D813FB20  mov         dword ptr [rbp+294h],0FFh
00007FF7D813FB2A  mov         eax,dword ptr [rbp+294h]
00007FF7D813FB30  mov         dword ptr [rbp+298h],eax
00007FF7D813FB36  jmp         c::conv_be_unsigned+502h (07FF7D813FB42h)
00007FF7D813FB38  mov         dword ptr [rbp+298h],0
00007FF7D813FB42  mov         rax,qword ptr [rbp+148h]
00007FF7D813FB49  mov         rcx,qword ptr [out]
00007FF7D813FB50  add         rcx,rax
00007FF7D813FB53  mov         rax,rcx
00007FF7D813FB56  movzx       ecx,byte ptr [rbp+298h]
00007FF7D813FB5D  mov         byte ptr [rax],cl
			}
00007FF7D813FB5F  jmp         c::conv_be_unsigned+391h (07FF7D813F9D1h)
		}
00007FF7D813FB64  jmp         c::conv_be_unsigned+36Bh (07FF7D813F9ABh)
		delete[] padded_img;
00007FF7D813FB69  mov         rax,qword ptr [padded_img]
00007FF7D813FB70  mov         qword ptr [rbp+288h],rax
00007FF7D813FB77  mov         rcx,qword ptr [rbp+288h]
00007FF7D813FB7E  call        operator delete[] (07FF7D81382EDh)
00007FF7D813FB83  cmp         qword ptr [rbp+288h],0
00007FF7D813FB8B  jne         c::conv_be_unsigned+55Ah (07FF7D813FB9Ah)
00007FF7D813FB8D  mov         qword ptr [rbp+298h],0
00007FF7D813FB98  jmp         c::conv_be_unsigned+573h (07FF7D813FBB3h)
00007FF7D813FB9A  mov         qword ptr [padded_img],8123h
00007FF7D813FBA5  mov         rax,qword ptr [padded_img]
00007FF7D813FBAC  mov         qword ptr [rbp+298h],rax
	};
00007FF7D813FBB3  lea         rsp,[rbp+2B8h]
	};
00007FF7D813FBBA  pop         rdi
00007FF7D813FBBB  pop         rbp
00007FF7D813FBBC  ret
