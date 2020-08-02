; FLAG_UNROLL_OP
mov         eax,dword ptr [r15+r8*8+4]
mov         edx,dword ptr [r15+r8*8+8]
inc         eax
inc         edx
mov         dword ptr [r14+r8*8+4],eax
mov         dword ptr [r14+r8*8+8],edx
inc         r8
cmp         r8,1F3h
jb          00000001400010C1
mov         eax,dword ptr [r15+0F9Ch]
inc         eax
mov         dword ptr [r14+0F9Ch],eax
; FLAG_UNROLL_ED
