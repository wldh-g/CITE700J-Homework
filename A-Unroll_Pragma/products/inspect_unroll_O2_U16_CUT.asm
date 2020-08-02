; FLAG_UNROLL_OP
xor         dl,dl
xor         eax,eax
mov         ebx,dword ptr [rax+r14+4]   ; 0
inc         dl
inc         ebx
mov         dword ptr [rax+r13+4],ebx   ; 1
mov         ebx,dword ptr [rax+r14+18h]
inc         ebx
mov         dword ptr [rax+r13+18h],ebx ; 2
mov         ebx,dword ptr [rax+r14+1Ch]
inc         ebx
mov         dword ptr [rax+r13+1Ch],ebx ; 3
mov         ebx,dword ptr [rax+r14+20h]
inc         ebx
mov         dword ptr [rax+r13+20h],ebx ; 4
mov         ebx,dword ptr [rax+r14+24h]
inc         ebx
mov         dword ptr [rax+r13+24h],ebx ; 5
mov         ebx,dword ptr [rax+r14+28h]
inc         ebx
mov         dword ptr [rax+r13+28h],ebx ; 6
mov         ebx,dword ptr [rax+r14+2Ch]
inc         ebx
mov         dword ptr [rax+r13+2Ch],ebx ; 7
mov         ebx,dword ptr [rax+r14+30h]
inc         ebx
mov         dword ptr [rax+r13+30h],ebx ; 8
mov         ebx,dword ptr [rax+r14+34h]
inc         ebx
mov         dword ptr [rax+r13+34h],ebx ; 9
mov         ebx,dword ptr [rax+r14+38h]
inc         ebx
mov         dword ptr [rax+r13+38h],ebx ; 10
mov         ebx,dword ptr [rax+r14+3Ch]
inc         ebx
mov         dword ptr [rax+r13+3Ch],ebx ; 11
mov         r8d,dword ptr [rax+r14+8]
mov         r9d,dword ptr [rax+r14+0Ch]
inc         r8d
mov         r10d,dword ptr [rax+r14+10h]; 12
inc         r9d
mov         r11d,dword ptr [rax+r14+14h]; 13
inc         r10d
mov         ebx,dword ptr [rax+r14+40h] ; 14
inc         r11d
inc         ebx
mov         dword ptr [rax+r13+8],r8d   ; 15
mov         dword ptr [rax+r13+0Ch],r9d
mov         dword ptr [rax+r13+10h],r10d
mov         dword ptr [rax+r13+14h],r11d
mov         dword ptr [rax+r13+40h],ebx
add         rax,40h
cmp         dl,3Eh
jb          00000001400010C0
mov         eax,3E0h
mov         edx,dword ptr [r14+rax*4+4]
inc         edx
mov         dword ptr [r13+rax*4+4],edx
inc         rax
cmp         rax,3E7h
jb          0000000140001198
; FLAG_UNROLL_ED
