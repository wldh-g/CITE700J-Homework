
Dump of file .\inspect_unroll_O2_U256.exe

File Type: EXECUTABLE IMAGE

main:
  0000000140001000: 55                 push        rbp
  0000000140001001: 48 83 EC 50        sub         rsp,50h
  0000000140001005: 48 8D 6C 24 20     lea         rbp,[rsp+20h]
  000000014000100A: 33 D2              xor         edx,edx
  000000014000100C: 48 89 5D 08        mov         qword ptr [rbp+8],rbx
  0000000140001010: 89 CB              mov         ebx,ecx
  0000000140001012: 33 C9              xor         ecx,ecx
  0000000140001014: 4C 89 7D 10        mov         qword ptr [rbp+10h],r15
  0000000140001018: 4C 89 75 18        mov         qword ptr [rbp+18h],r14
  000000014000101C: E8 DF 01 00 00     call        __intel_new_feature_proc_init
  0000000140001021: 48 C7 45 00 FE FF  mov         qword ptr [rbp],0FFFFFFFFFFFFFFFEh
                    FF FF
  0000000140001029: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  0000000140001030: B9 A0 0F 00 00     mov         ecx,0FA0h
  0000000140001035: E8 A6 56 00 00     call        ??2@YAPEAX_K@Z
  000000014000103A: 48 89 45 20        mov         qword ptr [rbp+20h],rax
  000000014000103E: 48 85 C0           test        rax,rax
  0000000140001041: 74 27              je          000000014000106A
  0000000140001043: 48 89 C1           mov         rcx,rax
  0000000140001046: 33 D2              xor         edx,edx
  0000000140001048: 41 B8 A0 0F 00 00  mov         r8d,0FA0h
  000000014000104E: C7 45 28 01 00 00  mov         dword ptr [rbp+28h],1
                    00
  0000000140001055: E8 76 06 00 00     call        _intel_fast_memset
  000000014000105A: 4C 8B 7D 20        mov         r15,qword ptr [rbp+20h]
  000000014000105E: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  0000000140001065: 41 89 1F           mov         dword ptr [r15],ebx
  0000000140001068: EB 03              jmp         000000014000106D
  000000014000106A: 45 33 FF           xor         r15d,r15d
  000000014000106D: B9 A0 0F 00 00     mov         ecx,0FA0h
  0000000140001072: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  0000000140001079: E8 62 56 00 00     call        ??2@YAPEAX_K@Z
  000000014000107E: 48 89 45 20        mov         qword ptr [rbp+20h],rax
  0000000140001082: 48 85 C0           test        rax,rax
  0000000140001085: 74 2A              je          00000001400010B1
  0000000140001087: 48 89 C1           mov         rcx,rax
  000000014000108A: 33 D2              xor         edx,edx
  000000014000108C: 41 B8 A0 0F 00 00  mov         r8d,0FA0h
  0000000140001092: C7 45 28 01 00 00  mov         dword ptr [rbp+28h],1
                    00
  0000000140001099: E8 32 06 00 00     call        _intel_fast_memset
  000000014000109E: 4C 8B 75 20        mov         r14,qword ptr [rbp+20h]
  00000001400010A2: 45 33 C0           xor         r8d,r8d
  00000001400010A5: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  00000001400010AC: 41 89 1E           mov         dword ptr [r14],ebx
  00000001400010AF: EB 06              jmp         00000001400010B7
  00000001400010B1: 45 33 F6           xor         r14d,r14d
  00000001400010B4: 45 33 C0           xor         r8d,r8d
  00000001400010B7: 90                 nop
  00000001400010B8: 90                 nop
  00000001400010B9: 48 3B C3           cmp         rax,rbx
  00000001400010BC: 48 3B CA           cmp         rcx,rdx
  00000001400010BF: 90                 nop
  00000001400010C0: 90                 nop
  00000001400010C1: 43 8B 44 C7 04     mov         eax,dword ptr [r15+r8*8+4]
  00000001400010C6: 43 8B 54 C7 08     mov         edx,dword ptr [r15+r8*8+8]
  00000001400010CB: FF C0              inc         eax
  00000001400010CD: FF C2              inc         edx
  00000001400010CF: 43 89 44 C6 04     mov         dword ptr [r14+r8*8+4],eax
  00000001400010D4: 43 89 54 C6 08     mov         dword ptr [r14+r8*8+8],edx
  00000001400010D9: 49 FF C0           inc         r8
  00000001400010DC: 49 81 F8 F3 01 00  cmp         r8,1F3h
                    00
  00000001400010E3: 72 DC              jb          00000001400010C1
  00000001400010E5: 41 8B 87 9C 0F 00  mov         eax,dword ptr [r15+0F9Ch]
                    00
  00000001400010EC: FF C0              inc         eax
  00000001400010EE: 41 89 86 9C 0F 00  mov         dword ptr [r14+0F9Ch],eax
                    00
  00000001400010F5: 90                 nop
  00000001400010F6: 90                 nop
  00000001400010F7: 3B C3              cmp         eax,ebx
  00000001400010F9: 3B CA              cmp         ecx,edx
  00000001400010FB: 90                 nop
  00000001400010FC: 90                 nop
  00000001400010FD: 48 8D 0D BC 81 00  lea         rcx,[1400092C0h]
                    00
  0000000140001104: 41 8B 57 20        mov         edx,dword ptr [r15+20h]
  0000000140001108: 45 8B 46 40        mov         r8d,dword ptr [r14+40h]
  000000014000110C: E8 6F 00 00 00     call        printf
  0000000140001111: 4C 89 F9           mov         rcx,r15
  0000000140001114: E8 03 56 00 00     call        ??3@YAXPEAX@Z
  0000000140001119: 4C 89 F1           mov         rcx,r14
  000000014000111C: E8 FB 55 00 00     call        ??3@YAXPEAX@Z
  0000000140001121: 48 8B 5D 08        mov         rbx,qword ptr [rbp+8]
  0000000140001125: 33 C0              xor         eax,eax
  0000000140001127: 4C 8B 75 18        mov         r14,qword ptr [rbp+18h]
  000000014000112B: 4C 8B 7D 10        mov         r15,qword ptr [rbp+10h]
  000000014000112F: 48 8D 65 30        lea         rsp,[rbp+30h]
  0000000140001133: 5D                 pop         rbp
  0000000140001134: C3                 ret
  0000000140001135: 55                 push        rbp
  0000000140001136: 48 83 EC 50        sub         rsp,50h
  000000014000113A: 48 8D 6A 20        lea         rbp,[rdx+20h]
  000000014000113E: 83 7D 28 00        cmp         dword ptr [rbp+28h],0
  0000000140001142: 74 0E              je          0000000140001152
  0000000140001144: BA A0 0F 00 00     mov         edx,0FA0h
  0000000140001149: 48 8B 4D 20        mov         rcx,qword ptr [rbp+20h]
  000000014000114D: E8 D2 55 00 00     call        ??3@YAXPEAX_K@Z
  0000000140001152: 48 83 C4 50        add         rsp,50h
  0000000140001156: 5D                 pop         rbp
  0000000140001157: C3                 ret
  0000000140001158: 55                 push        rbp
  0000000140001159: 48 83 EC 50        sub         rsp,50h
  000000014000115D: 48 8D 6A 20        lea         rbp,[rdx+20h]
  0000000140001161: 83 7D 28 00        cmp         dword ptr [rbp+28h],0
  0000000140001165: 74 0E              je          0000000140001175
  0000000140001167: BA A0 0F 00 00     mov         edx,0FA0h
  000000014000116C: 48 8B 4D 20        mov         rcx,qword ptr [rbp+20h]
  0000000140001170: E8 AF 55 00 00     call        ??3@YAXPEAX_K@Z
  0000000140001175: 48 83 C4 50        add         rsp,50h
  0000000140001179: 5D                 pop         rbp
  000000014000117A: C3                 ret
  000000014000117B: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
printf:
  0000000140001180: 41 57              push        r15
  0000000140001182: 48 83 EC 40        sub         rsp,40h
  0000000140001186: 48 89 4C 24 50     mov         qword ptr [rsp+50h],rcx
  000000014000118B: 48 8D 44 24 58     lea         rax,[rsp+58h]
  0000000140001190: 48 89 10           mov         qword ptr [rax],rdx
  0000000140001193: 4C 89 40 08        mov         qword ptr [rax+8],r8
  0000000140001197: 4C 89 48 10        mov         qword ptr [rax+10h],r9
  000000014000119B: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000001400011A0: B9 01 00 00 00     mov         ecx,1
  00000001400011A5: FF 15 3D 80 00 00  call        qword ptr [__imp___acrt_iob_func]
  00000001400011AB: 49 89 C7           mov         r15,rax
  00000001400011AE: E8 3D 00 00 00     call        __local_stdio_printf_options
  00000001400011B3: 49 89 C2           mov         r10,rax
  00000001400011B6: 49 89 E1           mov         r9,rsp
  00000001400011B9: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000001400011BE: 4C 89 FA           mov         rdx,r15
  00000001400011C1: 4C 8B 44 24 50     mov         r8,qword ptr [rsp+50h]
  00000001400011C6: 49 89 41 20        mov         qword ptr [r9+20h],rax
  00000001400011CA: 45 33 C9           xor         r9d,r9d
  00000001400011CD: 49 8B 0A           mov         rcx,qword ptr [r10]
  00000001400011D0: FF 15 0A 80 00 00  call        qword ptr [__imp___stdio_common_vfprintf]
  00000001400011D6: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  00000001400011DF: 48 83 C4 40        add         rsp,40h
  00000001400011E3: 41 5F              pop         r15
  00000001400011E5: C3                 ret
  00000001400011E6: 0F 1F 00           nop         dword ptr [rax]
  00000001400011E9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
__local_stdio_printf_options:
  00000001400011F0: 48 8D 05 49 B7 00  lea         rax,[14000C940h]
                    00
  00000001400011F7: C3                 ret
  00000001400011F8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
__intel_new_feature_proc_init:
  0000000140001200: 41 54              push        r12
  0000000140001202: 48 83 EC 20        sub         rsp,20h
  0000000140001206: 41 89 CC           mov         r12d,ecx
  0000000140001209: 33 C9              xor         ecx,ecx
  000000014000120B: E8 70 00 00 00     call        __intel_new_feature_proc_init_n
  0000000140001210: 48 8D 0D A9 BD 00  lea         rcx,[__intel_cpu_feature_indicator]
                    00
  0000000140001217: BA 06 00 00 00     mov         edx,6
  000000014000121C: E8 0F 08 00 00     call        __libirc_get_cpu_feature
  0000000140001221: 83 F8 01           cmp         eax,1
  0000000140001224: 74 45              je          000000014000126B
  0000000140001226: 85 C0              test        eax,eax
  0000000140001228: 7C 07              jl          0000000140001231
  000000014000122A: 48 83 C4 20        add         rsp,20h
  000000014000122E: 41 5C              pop         r12
  0000000140001230: C3                 ret
  0000000140001231: 33 D2              xor         edx,edx
  0000000140001233: B9 01 00 00 00     mov         ecx,1
  0000000140001238: 45 33 C0           xor         r8d,r8d
  000000014000123B: E8 A0 1F 00 00     call        __libirc_print
  0000000140001240: B9 01 00 00 00     mov         ecx,1
  0000000140001245: BA 3A 00 00 00     mov         edx,3Ah
  000000014000124A: 45 33 C0           xor         r8d,r8d
  000000014000124D: E8 8E 1F 00 00     call        __libirc_print
  0000000140001252: 33 D2              xor         edx,edx
  0000000140001254: B9 01 00 00 00     mov         ecx,1
  0000000140001259: 45 33 C0           xor         r8d,r8d
  000000014000125C: E8 7F 1F 00 00     call        __libirc_print
  0000000140001261: B9 01 00 00 00     mov         ecx,1
  0000000140001266: E8 8B 6B 00 00     call        exit
  000000014000126B: 33 C9              xor         ecx,ecx
  000000014000126D: 44 89 E2           mov         edx,r12d
  0000000140001270: 48 83 C4 20        add         rsp,20h
  0000000140001274: 41 5C              pop         r12
  0000000140001276: E9 B5 21 00 00     jmp         __intel_proc_init_ftzdazule
  000000014000127B: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
__intel_new_feature_proc_init_n:
  0000000140001280: 53                 push        rbx
  0000000140001281: 56                 push        rsi
  0000000140001282: 48 81 EC 68 04 00  sub         rsp,468h
                    00
  0000000140001289: 48 89 D6           mov         rsi,rdx
  000000014000128C: 48 8B 05 95 AD 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000140001293: 66 0F EF C0        pxor        xmm0,xmm0
  0000000140001297: 48 33 C4           xor         rax,rsp
  000000014000129A: 48 89 84 24 60 04  mov         qword ptr [rsp+460h],rax
                    00 00
  00000001400012A2: 48 63 D9           movsxd      rbx,ecx
  00000001400012A5: F3 0F 7F 44 24 50  movdqu      xmmword ptr [rsp+50h],xmm0
  00000001400012AB: 48 83 3D 0D BD 00  cmp         qword ptr [__intel_cpu_feature_indicator],0
                    00 00
  00000001400012B3: 0F 84 91 03 00 00  je          000000014000164A
  00000001400012B9: 48 83 FB 02        cmp         rbx,2
  00000001400012BD: 0F 8D 97 02 00 00  jge         000000014000155A
  00000001400012C3: 48 8D 05 36 ED FF  lea         rax,[140000000h]
                    FF
  00000001400012CA: 48 89 F2           mov         rdx,rsi
  00000001400012CD: 48 8B 84 D8 C0 CF  mov         rax,qword ptr [rax+rbx*8+0CFC0h]
                    00 00
  00000001400012D5: 48 23 D0           and         rdx,rax
  00000001400012D8: 48 3B D6           cmp         rdx,rsi
  00000001400012DB: 75 2E              jne         000000014000130B
  00000001400012DD: 48 8B 8C 24 60 04  mov         rcx,qword ptr [rsp+460h]
                    00 00
  00000001400012E5: 48 C7 84 24 60 04  mov         qword ptr [rsp+460h],0
                    00 00 00 00 00 00
  00000001400012F1: 48 33 CC           xor         rcx,rsp
  00000001400012F4: 48 3B 0D 2D AD 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  00000001400012FB: 0F 85 6A 02 00 00  jne         000000014000156B
  0000000140001301: 48 81 C4 68 04 00  add         rsp,468h
                    00
  0000000140001308: 5E                 pop         rsi
  0000000140001309: 5B                 pop         rbx
  000000014000130A: C3                 ret
  000000014000130B: 48 F7 D0           not         rax
  000000014000130E: B9 39 00 00 00     mov         ecx,39h
  0000000140001313: 48 23 C6           and         rax,rsi
  0000000140001316: 33 F6              xor         esi,esi
  0000000140001318: 33 D2              xor         edx,edx
  000000014000131A: 48 89 44 DC 50     mov         qword ptr [rsp+rbx*8+50h],rax
  000000014000131F: E8 8C 1C 00 00     call        __libirc_get_msg
  0000000140001324: 90                 nop
  0000000140001325: BB 01 00 00 00     mov         ebx,1
  000000014000132A: C6 44 24 60 00     mov         byte ptr [rsp+60h],0
  000000014000132F: 48 89 7C 24 48     mov         qword ptr [rsp+48h],rdi
  0000000140001334: 4C 89 64 24 40     mov         qword ptr [rsp+40h],r12
  0000000140001339: 49 89 F4           mov         r12,rsi
  000000014000133C: 4C 89 6C 24 38     mov         qword ptr [rsp+38h],r13
  0000000140001341: 49 89 C5           mov         r13,rax
  0000000140001344: 4C 89 74 24 30     mov         qword ptr [rsp+30h],r14
  0000000140001349: 4C 89 7C 24 28     mov         qword ptr [rsp+28h],r15
  000000014000134E: 49 89 F7           mov         r15,rsi
  0000000140001351: 48 89 6C 24 20     mov         qword ptr [rsp+20h],rbp
  0000000140001356: 89 D8              mov         eax,ebx
  0000000140001358: E8 93 04 00 00     call        __libirc_get_feature_bitpos
  000000014000135D: 85 C0              test        eax,eax
  000000014000135F: 0F 8C 1A 01 00 00  jl          000000014000147F
  0000000140001365: 89 DA              mov         edx,ebx
  0000000140001367: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  000000014000136C: E8 BF 06 00 00     call        __libirc_get_cpu_feature
  0000000140001371: 85 C0              test        eax,eax
  0000000140001373: 0F 84 06 01 00 00  je          000000014000147F
  0000000140001379: 89 DA              mov         edx,ebx
  000000014000137B: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140001380: E8 AB 06 00 00     call        __libirc_get_cpu_feature
  0000000140001385: 85 C0              test        eax,eax
  0000000140001387: 0F 8C 8A 02 00 00  jl          0000000140001617
  000000014000138D: 89 D9              mov         ecx,ebx
  000000014000138F: E8 1C 04 00 00     call        __libirc_get_feature_name
  0000000140001394: 49 89 C6           mov         r14,rax
  0000000140001397: 4D 85 F6           test        r14,r14
  000000014000139A: 0F 84 44 02 00 00  je          00000001400015E4
  00000001400013A0: 41 80 3E 00        cmp         byte ptr [r14],0
  00000001400013A4: 0F 84 3A 02 00 00  je          00000001400015E4
  00000001400013AA: 80 7C 24 60 00     cmp         byte ptr [rsp+60h],0
  00000001400013AF: 0F 84 A3 00 00 00  je          0000000140001458
  00000001400013B5: 4D 85 FF           test        r15,r15
  00000001400013B8: 0F 84 95 00 00 00  je          0000000140001453
  00000001400013BE: 4C 89 F9           mov         rcx,r15
  00000001400013C1: E8 8A 6A 00 00     call        strlen
  00000001400013C6: 48 89 C6           mov         rsi,rax
  00000001400013C9: 48 8D 0D B0 7F 00  lea         rcx,[??_C@_02A@?0?5?$AA@]
                    00
  00000001400013D0: E8 7B 6A 00 00     call        strlen
  00000001400013D5: 48 89 C5           mov         rbp,rax
  00000001400013D8: 4C 89 E9           mov         rcx,r13
  00000001400013DB: E8 70 6A 00 00     call        strlen
  00000001400013E0: 48 89 C7           mov         rdi,rax
  00000001400013E3: 4C 89 F1           mov         rcx,r14
  00000001400013E6: E8 65 6A 00 00     call        strlen
  00000001400013EB: 49 03 F4           add         rsi,r12
  00000001400013EE: 48 03 F5           add         rsi,rbp
  00000001400013F1: 48 03 F7           add         rsi,rdi
  00000001400013F4: 48 03 F0           add         rsi,rax
  00000001400013F7: 48 81 FE 00 04 00  cmp         rsi,400h
                    00
  00000001400013FE: 0F 83 6D 01 00 00  jae         0000000140001571
  0000000140001404: 49 F7 DC           neg         r12
  0000000140001407: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000014000140C: 49 81 C4 FF 03 00  add         r12,3FFh
                    00
  0000000140001413: 48 8D 15 66 7F 00  lea         rdx,[??_C@_02A@?0?5?$AA@]
                    00
  000000014000141A: 4D 89 E0           mov         r8,r12
  000000014000141D: E8 34 6A 00 00     call        strncat
  0000000140001422: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140001427: E8 24 6A 00 00     call        strlen
  000000014000142C: 4C 63 C0           movsxd      r8,eax
  000000014000142F: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140001434: 49 F7 D8           neg         r8
  0000000140001437: 4C 89 FA           mov         rdx,r15
  000000014000143A: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  0000000140001441: E8 10 6A 00 00     call        strncat
  0000000140001446: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000014000144B: E8 00 6A 00 00     call        strlen
  0000000140001450: 4C 63 E0           movsxd      r12,eax
  0000000140001453: 4D 89 F7           mov         r15,r14
  0000000140001456: EB 27              jmp         000000014000147F
  0000000140001458: 49 F7 DC           neg         r12
  000000014000145B: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140001460: 49 81 C4 FF 03 00  add         r12,3FFh
                    00
  0000000140001467: 4C 89 F2           mov         rdx,r14
  000000014000146A: 4D 89 E0           mov         r8,r12
  000000014000146D: E8 E4 69 00 00     call        strncat
  0000000140001472: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140001477: E8 D4 69 00 00     call        strlen
  000000014000147C: 4C 63 E0           movsxd      r12,eax
  000000014000147F: FF C3              inc         ebx
  0000000140001481: 83 FB 40           cmp         ebx,40h
  0000000140001484: 0F 8C CC FE FF FF  jl          0000000140001356
  000000014000148A: 4C 89 FE           mov         rsi,r15
  000000014000148D: 4D 89 E0           mov         r8,r12
  0000000140001490: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  0000000140001495: 4C 89 E8           mov         rax,r13
  0000000140001498: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  000000014000149D: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  00000001400014A2: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  00000001400014A7: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  00000001400014AC: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  00000001400014B1: 48 85 F6           test        rsi,rsi
  00000001400014B4: 74 3B              je          00000001400014F1
  00000001400014B6: 49 F7 D8           neg         r8
  00000001400014B9: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400014BE: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  00000001400014C5: 48 89 C2           mov         rdx,rax
  00000001400014C8: E8 89 69 00 00     call        strncat
  00000001400014CD: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400014D2: E8 79 69 00 00     call        strlen
  00000001400014D7: 4C 63 C0           movsxd      r8,eax
  00000001400014DA: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400014DF: 49 F7 D8           neg         r8
  00000001400014E2: 48 89 F2           mov         rdx,rsi
  00000001400014E5: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  00000001400014EC: E8 65 69 00 00     call        strncat
  00000001400014F1: 80 7C 24 60 00     cmp         byte ptr [rsp+60h],0
  00000001400014F6: 75 3A              jne         0000000140001532
  00000001400014F8: 33 D2              xor         edx,edx
  00000001400014FA: B9 01 00 00 00     mov         ecx,1
  00000001400014FF: 45 33 C0           xor         r8d,r8d
  0000000140001502: E8 D9 1C 00 00     call        __libirc_print
  0000000140001507: B9 01 00 00 00     mov         ecx,1
  000000014000150C: BA 3A 00 00 00     mov         edx,3Ah
  0000000140001511: 45 33 C0           xor         r8d,r8d
  0000000140001514: E8 C7 1C 00 00     call        __libirc_print
  0000000140001519: 33 D2              xor         edx,edx
  000000014000151B: B9 01 00 00 00     mov         ecx,1
  0000000140001520: 45 33 C0           xor         r8d,r8d
  0000000140001523: E8 B8 1C 00 00     call        __libirc_print
  0000000140001528: B9 01 00 00 00     mov         ecx,1
  000000014000152D: E8 C4 68 00 00     call        exit
  0000000140001532: 33 D2              xor         edx,edx
  0000000140001534: B9 01 00 00 00     mov         ecx,1
  0000000140001539: 45 33 C0           xor         r8d,r8d
  000000014000153C: E8 9F 1C 00 00     call        __libirc_print
  0000000140001541: B9 01 00 00 00     mov         ecx,1
  0000000140001546: BA 38 00 00 00     mov         edx,38h
  000000014000154B: 41 89 C8           mov         r8d,ecx
  000000014000154E: 4C 8D 4C 24 60     lea         r9,[rsp+60h]
  0000000140001553: E8 88 1C 00 00     call        __libirc_print
  0000000140001558: EB BF              jmp         0000000140001519
  000000014000155A: 33 D2              xor         edx,edx
  000000014000155C: B9 01 00 00 00     mov         ecx,1
  0000000140001561: 45 33 C0           xor         r8d,r8d
  0000000140001564: E8 77 1C 00 00     call        __libirc_print
  0000000140001569: EB 9C              jmp         0000000140001507
  000000014000156B: E8 20 69 00 00     call        __security_check_cookie
  0000000140001570: 90                 nop
  0000000140001571: 4D 89 E0           mov         r8,r12
  0000000140001574: 4C 89 E8           mov         rax,r13
  0000000140001577: 49 F7 D8           neg         r8
  000000014000157A: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000014000157F: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  0000000140001586: 48 89 C2           mov         rdx,rax
  0000000140001589: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  000000014000158E: 4C 89 FE           mov         rsi,r15
  0000000140001591: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  0000000140001596: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  000000014000159B: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  00000001400015A0: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  00000001400015A5: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  00000001400015AA: E8 A7 68 00 00     call        strncat
  00000001400015AF: 90                 nop
  00000001400015B0: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400015B5: E8 96 68 00 00     call        strlen
  00000001400015BA: 4C 63 C0           movsxd      r8,eax
  00000001400015BD: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400015C2: 49 F7 D8           neg         r8
  00000001400015C5: 48 89 F2           mov         rdx,rsi
  00000001400015C8: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  00000001400015CF: E8 82 68 00 00     call        strncat
  00000001400015D4: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400015D9: E8 72 68 00 00     call        strlen
  00000001400015DE: 90                 nop
  00000001400015DF: E9 0D FF FF FF     jmp         00000001400014F1
  00000001400015E4: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  00000001400015E9: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  00000001400015EE: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  00000001400015F3: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  00000001400015F8: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  00000001400015FD: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  0000000140001602: 33 D2              xor         edx,edx
  0000000140001604: B9 01 00 00 00     mov         ecx,1
  0000000140001609: 45 33 C0           xor         r8d,r8d
  000000014000160C: E8 CF 1B 00 00     call        __libirc_print
  0000000140001611: 90                 nop
  0000000140001612: E9 F0 FE FF FF     jmp         0000000140001507
  0000000140001617: 33 D2              xor         edx,edx
  0000000140001619: B9 01 00 00 00     mov         ecx,1
  000000014000161E: 45 33 C0           xor         r8d,r8d
  0000000140001621: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  0000000140001626: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  000000014000162B: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  0000000140001630: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  0000000140001635: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  000000014000163A: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  000000014000163F: E8 9C 1B 00 00     call        __libirc_print
  0000000140001644: 90                 nop
  0000000140001645: E9 BD FE FF FF     jmp         0000000140001507
  000000014000164A: E8 61 0E 00 00     call        __intel_cpu_features_init
  000000014000164F: 85 C0              test        eax,eax
  0000000140001651: 75 0E              jne         0000000140001661
  0000000140001653: 48 83 3D 65 B9 00  cmp         qword ptr [__intel_cpu_feature_indicator],0
                    00 00
  000000014000165B: 0F 85 58 FC FF FF  jne         00000001400012B9
  0000000140001661: 33 D2              xor         edx,edx
  0000000140001663: B9 01 00 00 00     mov         ecx,1
  0000000140001668: 45 33 C0           xor         r8d,r8d
  000000014000166B: E8 70 1B 00 00     call        __libirc_print
  0000000140001670: B9 01 00 00 00     mov         ecx,1
  0000000140001675: BA 3B 00 00 00     mov         edx,3Bh
  000000014000167A: 45 33 C0           xor         r8d,r8d
  000000014000167D: E8 5E 1B 00 00     call        __libirc_print
  0000000140001682: 90                 nop
  0000000140001683: E9 91 FE FF FF     jmp         0000000140001519
  0000000140001688: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140001690: 48 8D 05 17 67 00  lea         rax,[memset]
                    00
  0000000140001697: C3                 ret
  0000000140001698: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400016A0: 48 8D 05 F9 5C 00  lea         rax,[__intel_memset]
                    00
  00000001400016A7: C3                 ret
  00000001400016A8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400016B0: 48 8D 05 A9 1E 00  lea         rax,[__intel_avx_rep_memset]
                    00
  00000001400016B7: C3                 ret
  00000001400016B8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400016C0: 48 8D 05 79 2F 00  lea         rax,[__intel_mic_avx512f_memset]
                    00
  00000001400016C7: C3                 ret
  00000001400016C8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
_intel_fast_memset:
  00000001400016D0: 48 8B 05 D9 B2 00  mov         rax,qword ptr [14000C9B0h]
                    00
  00000001400016D7: 48 85 C0           test        rax,rax
  00000001400016DA: 74 02              je          00000001400016DE
  00000001400016DC: FF E0              jmp         rax
  00000001400016DE: E9 0D 00 00 00     jmp         00000001400016F0
  00000001400016E3: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  00000001400016E8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400016F0: 41 55              push        r13
  00000001400016F2: 41 56              push        r14
  00000001400016F4: 41 57              push        r15
  00000001400016F6: 48 83 EC 20        sub         rsp,20h
  00000001400016FA: 4D 89 C7           mov         r15,r8
  00000001400016FD: 41 89 D6           mov         r14d,edx
  0000000140001700: 49 89 CD           mov         r13,rcx
  0000000140001703: E8 28 00 00 00     call        0000000140001730
  0000000140001708: 48 89 05 A1 B2 00  mov         qword ptr [14000C9B0h],rax
                    00
  000000014000170F: 4C 89 E9           mov         rcx,r13
  0000000140001712: 44 89 F2           mov         edx,r14d
  0000000140001715: 4D 89 F8           mov         r8,r15
  0000000140001718: 48 83 C4 20        add         rsp,20h
  000000014000171C: 41 5F              pop         r15
  000000014000171E: 41 5E              pop         r14
  0000000140001720: 41 5D              pop         r13
  0000000140001722: FF E0              jmp         rax
  0000000140001724: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140001729: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140001730: 48 83 EC 08        sub         rsp,8
  0000000140001734: 48 B9 FF 97 9D 18  mov         rcx,7189D97FFh
                    07 00 00 00
  000000014000173E: 48 8B 05 7B B8 00  mov         rax,qword ptr [__intel_cpu_feature_indicator]
                    00
  0000000140001745: 48 23 C1           and         rax,rcx
  0000000140001748: 48 3B C1           cmp         rax,rcx
  000000014000174B: 75 09              jne         0000000140001756
  000000014000174D: 48 83 C4 08        add         rsp,8
  0000000140001751: E9 6A FF FF FF     jmp         00000001400016C0
  0000000140001756: 8B 05 64 B8 00 00  mov         eax,dword ptr [__intel_cpu_feature_indicator]
  000000014000175C: 25 FF 97 9D 00     and         eax,9D97FFh
  0000000140001761: 3D FF 97 9D 00     cmp         eax,9D97FFh
  0000000140001766: 75 09              jne         0000000140001771
  0000000140001768: 48 83 C4 08        add         rsp,8
  000000014000176C: E9 3F FF FF FF     jmp         00000001400016B0
  0000000140001771: 8A 15 49 B8 00 00  mov         dl,byte ptr [__intel_cpu_feature_indicator]
  0000000140001777: 88 D0              mov         al,dl
  0000000140001779: 24 7F              and         al,7Fh
  000000014000177B: 3C 7F              cmp         al,7Fh
  000000014000177D: 75 09              jne         0000000140001788
  000000014000177F: 48 83 C4 08        add         rsp,8
  0000000140001783: E9 18 FF FF FF     jmp         00000001400016A0
  0000000140001788: 80 E2 7F           and         dl,7Fh
  000000014000178B: 80 FA 7F           cmp         dl,7Fh
  000000014000178E: 74 EF              je          000000014000177F
  0000000140001790: F6 05 29 B8 00 00  test        byte ptr [__intel_cpu_feature_indicator],1
                    01
  0000000140001797: 74 09              je          00000001400017A2
  0000000140001799: 48 83 C4 08        add         rsp,8
  000000014000179D: E9 EE FE FF FF     jmp         0000000140001690
  00000001400017A2: E8 09 0D 00 00     call        __intel_cpu_features_init
  00000001400017A7: EB 95              jmp         000000014000173E
  00000001400017A9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
__libirc_get_feature_name:
  00000001400017B0: 48 83 EC 28        sub         rsp,28h
  00000001400017B4: 83 3D 25 B8 00 00  cmp         dword ptr [14000CFE0h],0
                    00
  00000001400017BB: 74 1B              je          00000001400017D8
  00000001400017BD: 48 63 C9           movsxd      rcx,ecx
  00000001400017C0: 48 8D 05 39 E8 FF  lea         rax,[140000000h]
                    FF
  00000001400017C7: 48 8D 14 49        lea         rdx,[rcx+rcx*2]
  00000001400017CB: 48 8B 84 D0 C0 C9  mov         rax,qword ptr [rax+rdx*8+0C9C0h]
                    00 00
  00000001400017D3: 48 83 C4 28        add         rsp,28h
  00000001400017D7: C3                 ret
  00000001400017D8: E8 73 03 00 00     call        0000000140001B50
  00000001400017DD: 85 C0              test        eax,eax
  00000001400017DF: 75 DC              jne         00000001400017BD
  00000001400017E1: 33 C0              xor         eax,eax
  00000001400017E3: 48 83 C4 28        add         rsp,28h
  00000001400017E7: C3                 ret
  00000001400017E8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
__libirc_get_feature_bitpos:
  00000001400017F0: 41 52              push        r10
  00000001400017F2: 48 83 EC 20        sub         rsp,20h
  00000001400017F6: 41 89 C2           mov         r10d,eax
  00000001400017F9: 83 3D E0 B7 00 00  cmp         dword ptr [14000CFE0h],0
                    00
  0000000140001800: 74 35              je          0000000140001837
  0000000140001802: 4D 63 D2           movsxd      r10,r10d
  0000000140001805: 48 8D 05 F4 E7 FF  lea         rax,[140000000h]
                    FF
  000000014000180C: 4F 8D 14 52        lea         r10,[r10+r10*2]
  0000000140001810: 42 8B 84 D0 C8 C9  mov         eax,dword ptr [rax+r10*8+0C9C8h]
                    00 00
  0000000140001818: 83 F8 FF           cmp         eax,0FFFFFFFFh
  000000014000181B: 7C 0E              jl          000000014000182B
  000000014000181D: 3D 80 00 00 00     cmp         eax,80h
  0000000140001822: 7D 07              jge         000000014000182B
  0000000140001824: 48 83 C4 20        add         rsp,20h
  0000000140001828: 41 5A              pop         r10
  000000014000182A: C3                 ret
  000000014000182B: B8 FD FF FF FF     mov         eax,0FFFFFFFDh
  0000000140001830: 48 83 C4 20        add         rsp,20h
  0000000140001834: 41 5A              pop         r10
  0000000140001836: C3                 ret
  0000000140001837: E8 14 03 00 00     call        0000000140001B50
  000000014000183C: 85 C0              test        eax,eax
  000000014000183E: 75 C2              jne         0000000140001802
  0000000140001840: B8 FE FF FF FF     mov         eax,0FFFFFFFEh
  0000000140001845: 48 83 C4 20        add         rsp,20h
  0000000140001849: 41 5A              pop         r10
  000000014000184B: C3                 ret
  000000014000184C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140001850: 48 83 EC 58        sub         rsp,58h
  0000000140001854: 48 89 D0           mov         rax,rdx
  0000000140001857: 48 89 CA           mov         rdx,rcx
  000000014000185A: 45 33 D2           xor         r10d,r10d
  000000014000185D: 49 89 D1           mov         r9,rdx
  0000000140001860: 4C 8D 05 99 E7 FF  lea         r8,[140000000h]
                    FF
  0000000140001867: 49 F7 D9           neg         r9
  000000014000186A: 45 33 DB           xor         r11d,r11d
  000000014000186D: 48 85 D2           test        rdx,rdx
  0000000140001870: 0F 84 A9 01 00 00  je          0000000140001A1F
  0000000140001876: 48 85 C0           test        rax,rax
  0000000140001879: 0F 84 A0 01 00 00  je          0000000140001A1F
  000000014000187F: 8A 0A              mov         cl,byte ptr [rdx]
  0000000140001881: 84 C9              test        cl,cl
  0000000140001883: 0F 84 6C 01 00 00  je          00000001400019F5
  0000000140001889: 80 F9 2C           cmp         cl,2Ch
  000000014000188C: 74 28              je          00000001400018B6
  000000014000188E: 48 89 74 24 50     mov         qword ptr [rsp+50h],rsi
  0000000140001893: 48 89 7C 24 40     mov         qword ptr [rsp+40h],rdi
  0000000140001898: 4C 89 64 24 48     mov         qword ptr [rsp+48h],r12
  000000014000189D: 49 89 C4           mov         r12,rax
  00000001400018A0: 4C 89 6C 24 20     mov         qword ptr [rsp+20h],r13
  00000001400018A5: 4C 89 74 24 28     mov         qword ptr [rsp+28h],r14
  00000001400018AA: 4C 89 7C 24 30     mov         qword ptr [rsp+30h],r15
  00000001400018AF: 48 89 6C 24 38     mov         qword ptr [rsp+38h],rbp
  00000001400018B4: EB 5A              jmp         0000000140001910
  00000001400018B6: 48 89 74 24 50     mov         qword ptr [rsp+50h],rsi
  00000001400018BB: 48 89 7C 24 40     mov         qword ptr [rsp+40h],rdi
  00000001400018C0: 4C 89 64 24 48     mov         qword ptr [rsp+48h],r12
  00000001400018C5: 49 89 C4           mov         r12,rax
  00000001400018C8: 4C 89 6C 24 20     mov         qword ptr [rsp+20h],r13
  00000001400018CD: 4C 89 74 24 28     mov         qword ptr [rsp+28h],r14
  00000001400018D2: 4C 89 7C 24 30     mov         qword ptr [rsp+30h],r15
  00000001400018D7: 48 89 6C 24 38     mov         qword ptr [rsp+38h],rbp
  00000001400018DC: 48 FF C2           inc         rdx
  00000001400018DF: 49 FF C9           dec         r9
  00000001400018E2: 8A 0A              mov         cl,byte ptr [rdx]
  00000001400018E4: 80 F9 2C           cmp         cl,2Ch
  00000001400018E7: 75 27              jne         0000000140001910
  00000001400018E9: 48 FF C2           inc         rdx
  00000001400018EC: 49 FF C9           dec         r9
  00000001400018EF: 8A 0A              mov         cl,byte ptr [rdx]
  00000001400018F1: 80 F9 2C           cmp         cl,2Ch
  00000001400018F4: 75 1A              jne         0000000140001910
  00000001400018F6: 48 FF C2           inc         rdx
  00000001400018F9: 49 FF C9           dec         r9
  00000001400018FC: 8A 0A              mov         cl,byte ptr [rdx]
  00000001400018FE: 80 F9 2C           cmp         cl,2Ch
  0000000140001901: 75 0D              jne         0000000140001910
  0000000140001903: 48 FF C2           inc         rdx
  0000000140001906: 49 FF C9           dec         r9
  0000000140001909: 8A 0A              mov         cl,byte ptr [rdx]
  000000014000190B: 80 F9 2C           cmp         cl,2Ch
  000000014000190E: 74 F3              je          0000000140001903
  0000000140001910: 84 C9              test        cl,cl
  0000000140001912: 0F 84 BA 00 00 00  je          00000001400019D2
  0000000140001918: 48 89 D6           mov         rsi,rdx
  000000014000191B: 48 FF C2           inc         rdx
  000000014000191E: 4C 89 C9           mov         rcx,r9
  0000000140001921: 49 FF C9           dec         r9
  0000000140001924: 40 8A 3A           mov         dil,byte ptr [rdx]
  0000000140001927: 40 80 FF 2C        cmp         dil,2Ch
  000000014000192B: 74 1B              je          0000000140001948
  000000014000192D: 40 84 FF           test        dil,dil
  0000000140001930: 0F 84 D5 00 00 00  je          0000000140001A0B
  0000000140001936: 49 89 D2           mov         r10,rdx
  0000000140001939: 48 FF C2           inc         rdx
  000000014000193C: 49 FF C9           dec         r9
  000000014000193F: 40 8A 3A           mov         dil,byte ptr [rdx]
  0000000140001942: 40 80 FF 2C        cmp         dil,2Ch
  0000000140001946: 75 E5              jne         000000014000192D
  0000000140001948: 4A 8D 6C 11 01     lea         rbp,[rcx+r10+1]
  000000014000194D: 48 85 F6           test        rsi,rsi
  0000000140001950: 74 8A              je          00000001400018DC
  0000000140001952: 48 85 ED           test        rbp,rbp
  0000000140001955: 74 85              je          00000001400018DC
  0000000140001957: 83 3D 82 B6 00 00  cmp         dword ptr [14000CFE0h],0
                    00
  000000014000195E: 0F 84 99 00 00 00  je          00000001400019FD
  0000000140001964: B9 01 00 00 00     mov         ecx,1
  0000000140001969: 41 BD 18 00 00 00  mov         r13d,18h
  000000014000196F: 4F 8B BC 28 D0 C9  mov         r15,qword ptr [r8+r13+0C9D0h]
                    00 00
  0000000140001977: 4D 85 FF           test        r15,r15
  000000014000197A: 74 21              je          000000014000199D
  000000014000197C: 45 33 F6           xor         r14d,r14d
  000000014000197F: 48 85 ED           test        rbp,rbp
  0000000140001982: 76 12              jbe         0000000140001996
  0000000140001984: 41 8A 04 36        mov         al,byte ptr [r14+rsi]
  0000000140001988: 43 3A 04 3E        cmp         al,byte ptr [r14+r15]
  000000014000198C: 75 0F              jne         000000014000199D
  000000014000198E: 49 FF C6           inc         r14
  0000000140001991: 4C 3B F5           cmp         r14,rbp
  0000000140001994: 72 EE              jb          0000000140001984
  0000000140001996: 41 80 3C 2F 00     cmp         byte ptr [r15+rbp],0
  000000014000199B: 74 0D              je          00000001400019AA
  000000014000199D: FF C1              inc         ecx
  000000014000199F: 49 83 C5 18        add         r13,18h
  00000001400019A3: 83 F9 40           cmp         ecx,40h
  00000001400019A6: 7C C7              jl          000000014000196F
  00000001400019A8: EB 14              jmp         00000001400019BE
  00000001400019AA: 83 F9 01           cmp         ecx,1
  00000001400019AD: 74 0F              je          00000001400019BE
  00000001400019AF: 4C 89 E0           mov         rax,r12
  00000001400019B2: E8 19 01 00 00     call        0000000140001AD0
  00000001400019B7: 83 F8 01           cmp         eax,1
  00000001400019BA: 49 83 D3 00        adc         r11,0
  00000001400019BE: 40 84 FF           test        dil,dil
  00000001400019C1: 74 0F              je          00000001400019D2
  00000001400019C3: 40 80 FF 2C        cmp         dil,2Ch
  00000001400019C7: 0F 85 4B FF FF FF  jne         0000000140001918
  00000001400019CD: E9 0A FF FF FF     jmp         00000001400018DC
  00000001400019D2: 48 8B 74 24 50     mov         rsi,qword ptr [rsp+50h]
  00000001400019D7: 48 8B 7C 24 40     mov         rdi,qword ptr [rsp+40h]
  00000001400019DC: 4C 8B 64 24 48     mov         r12,qword ptr [rsp+48h]
  00000001400019E1: 4C 8B 6C 24 20     mov         r13,qword ptr [rsp+20h]
  00000001400019E6: 4C 8B 74 24 28     mov         r14,qword ptr [rsp+28h]
  00000001400019EB: 4C 8B 7C 24 30     mov         r15,qword ptr [rsp+30h]
  00000001400019F0: 48 8B 6C 24 38     mov         rbp,qword ptr [rsp+38h]
  00000001400019F5: 44 89 D8           mov         eax,r11d
  00000001400019F8: 48 83 C4 58        add         rsp,58h
  00000001400019FC: C3                 ret
  00000001400019FD: E8 4E 01 00 00     call        0000000140001B50
  0000000140001A02: 85 C0              test        eax,eax
  0000000140001A04: 74 B8              je          00000001400019BE
  0000000140001A06: E9 59 FF FF FF     jmp         0000000140001964
  0000000140001A0B: 4A 8D 6C 11 01     lea         rbp,[rcx+r10+1]
  0000000140001A10: 48 85 F6           test        rsi,rsi
  0000000140001A13: 74 BD              je          00000001400019D2
  0000000140001A15: 48 85 ED           test        rbp,rbp
  0000000140001A18: 74 B8              je          00000001400019D2
  0000000140001A1A: E9 38 FF FF FF     jmp         0000000140001957
  0000000140001A1F: 33 C0              xor         eax,eax
  0000000140001A21: 48 83 C4 58        add         rsp,58h
  0000000140001A25: C3                 ret
  0000000140001A26: 0F 1F 00           nop         dword ptr [rax]
  0000000140001A29: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
__libirc_get_cpu_feature:
  0000000140001A30: 48 83 EC 28        sub         rsp,28h
  0000000140001A34: 83 3D A5 B5 00 00  cmp         dword ptr [14000CFE0h],0
                    00
  0000000140001A3B: 74 54              je          0000000140001A91
  0000000140001A3D: 48 63 D2           movsxd      rdx,edx
  0000000140001A40: 48 8D 05 B9 E5 FF  lea         rax,[140000000h]
                    FF
  0000000140001A47: 4C 8D 04 52        lea         r8,[rdx+rdx*2]
  0000000140001A4B: 46 8B 8C C0 C8 C9  mov         r9d,dword ptr [rax+r8*8+0C9C8h]
                    00 00
  0000000140001A53: 41 83 F9 FF        cmp         r9d,0FFFFFFFFh
  0000000140001A57: 7C 2A              jl          0000000140001A83
  0000000140001A59: 41 81 F9 80 00 00  cmp         r9d,80h
                    00
  0000000140001A60: 7D 21              jge         0000000140001A83
  0000000140001A62: 45 85 C9           test        r9d,r9d
  0000000140001A65: 7C 22              jl          0000000140001A89
  0000000140001A67: 49 63 D1           movsxd      rdx,r9d
  0000000140001A6A: 33 C0              xor         eax,eax
  0000000140001A6C: 48 C1 EA 06        shr         rdx,6
  0000000140001A70: 4C 63 C2           movsxd      r8,edx
  0000000140001A73: 4A 8B 0C C1        mov         rcx,qword ptr [rcx+r8*8]
  0000000140001A77: 4C 0F A3 C9        bt          rcx,r9
  0000000140001A7B: 0F 92 C0           setb        al
  0000000140001A7E: 48 83 C4 28        add         rsp,28h
  0000000140001A82: C3                 ret
  0000000140001A83: 41 B9 FD FF FF FF  mov         r9d,0FFFFFFFDh
  0000000140001A89: 44 89 C8           mov         eax,r9d
  0000000140001A8C: 48 83 C4 28        add         rsp,28h
  0000000140001A90: C3                 ret
  0000000140001A91: E8 BA 00 00 00     call        0000000140001B50
  0000000140001A96: 85 C0              test        eax,eax
  0000000140001A98: 75 A3              jne         0000000140001A3D
  0000000140001A9A: 41 B9 FE FF FF FF  mov         r9d,0FFFFFFFEh
  0000000140001AA0: EB E7              jmp         0000000140001A89
  0000000140001AA2: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140001AA9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140001AB0: 41 57              push        r15
  0000000140001AB2: 4C 8B 79 08        mov         r15,qword ptr [rcx+8]
  0000000140001AB6: 48 8B 09           mov         rcx,qword ptr [rcx]
  0000000140001AB9: 4C 89 78 08        mov         qword ptr [rax+8],r15
  0000000140001ABD: 48 89 08           mov         qword ptr [rax],rcx
  0000000140001AC0: 33 C0              xor         eax,eax
  0000000140001AC2: 41 5F              pop         r15
  0000000140001AC4: C3                 ret
  0000000140001AC5: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140001AC9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140001AD0: 41 52              push        r10
  0000000140001AD2: 55                 push        rbp
  0000000140001AD3: 48 83 EC 28        sub         rsp,28h
  0000000140001AD7: 89 CD              mov         ebp,ecx
  0000000140001AD9: 48 89 C1           mov         rcx,rax
  0000000140001ADC: 83 3D FD B4 00 00  cmp         dword ptr [14000CFE0h],0
                    00
  0000000140001AE3: 74 54              je          0000000140001B39
  0000000140001AE5: 48 63 ED           movsxd      rbp,ebp
  0000000140001AE8: 48 8D 05 11 E5 FF  lea         rax,[140000000h]
                    FF
  0000000140001AEF: 4C 8D 54 6D 00     lea         r10,[rbp+rbp*2]
  0000000140001AF4: 42 8B 84 D0 C8 C9  mov         eax,dword ptr [rax+r10*8+0C9C8h]
                    00 00
  0000000140001AFC: 83 F8 FF           cmp         eax,0FFFFFFFFh
  0000000140001AFF: 7C 2B              jl          0000000140001B2C
  0000000140001B01: 3D 80 00 00 00     cmp         eax,80h
  0000000140001B06: 7D 24              jge         0000000140001B2C
  0000000140001B08: 85 C0              test        eax,eax
  0000000140001B0A: 7C 25              jl          0000000140001B31
  0000000140001B0C: 48 63 E8           movsxd      rbp,eax
  0000000140001B0F: 48 C1 ED 06        shr         rbp,6
  0000000140001B13: 48 63 ED           movsxd      rbp,ebp
  0000000140001B16: 4C 8B 14 E9        mov         r10,qword ptr [rcx+rbp*8]
  0000000140001B1A: 49 0F AB C2        bts         r10,rax
  0000000140001B1E: 33 C0              xor         eax,eax
  0000000140001B20: 4C 89 14 E9        mov         qword ptr [rcx+rbp*8],r10
  0000000140001B24: 48 83 C4 28        add         rsp,28h
  0000000140001B28: 5D                 pop         rbp
  0000000140001B29: 41 5A              pop         r10
  0000000140001B2B: C3                 ret
  0000000140001B2C: B8 FD FF FF FF     mov         eax,0FFFFFFFDh
  0000000140001B31: 48 83 C4 28        add         rsp,28h
  0000000140001B35: 5D                 pop         rbp
  0000000140001B36: 41 5A              pop         r10
  0000000140001B38: C3                 ret
  0000000140001B39: E8 12 00 00 00     call        0000000140001B50
  0000000140001B3E: 85 C0              test        eax,eax
  0000000140001B40: 75 A3              jne         0000000140001AE5
  0000000140001B42: B8 FE FF FF FF     mov         eax,0FFFFFFFEh
  0000000140001B47: 48 83 C4 28        add         rsp,28h
  0000000140001B4B: 5D                 pop         rbp
  0000000140001B4C: 41 5A              pop         r10
  0000000140001B4E: C3                 ret
  0000000140001B4F: 90                 nop
  0000000140001B50: 52                 push        rdx
  0000000140001B51: 48 83 EC 30        sub         rsp,30h
  0000000140001B55: 83 3D 84 B4 00 00  cmp         dword ptr [14000CFE0h],0
                    00
  0000000140001B5C: 74 0B              je          0000000140001B69
  0000000140001B5E: B8 01 00 00 00     mov         eax,1
  0000000140001B63: 48 83 C4 30        add         rsp,30h
  0000000140001B67: 5A                 pop         rdx
  0000000140001B68: C3                 ret
  0000000140001B69: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000140001B6E: 32 D2              xor         dl,dl
  0000000140001B70: 48 89 5C 24 20     mov         qword ptr [rsp+20h],rbx
  0000000140001B75: 33 C0              xor         eax,eax
  0000000140001B77: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  0000000140001B7C: 48 8D 1D 7D E4 FF  lea         rbx,[140000000h]
                    FF
  0000000140001B83: FE C2              inc         dl
  0000000140001B85: 89 8C 03 E0 C9 00  mov         dword ptr [rbx+rax+0C9E0h],ecx
                    00
  0000000140001B8C: 89 8C 03 F8 C9 00  mov         dword ptr [rbx+rax+0C9F8h],ecx
                    00
  0000000140001B93: 48 83 C0 30        add         rax,30h
  0000000140001B97: 80 FA 1F           cmp         dl,1Fh
  0000000140001B9A: 72 E7              jb          0000000140001B83
  0000000140001B9C: 48 8D 15 E1 77 00  lea         rdx,[??_C@_0N@A@GENERIC_IA32?$AA@]
                    00
  0000000140001BA3: 48 8D 05 EA 77 00  lea         rax,[??_C@_03A@X87?$AA@]
                    00
  0000000140001BAA: 48 89 15 27 AE 00  mov         qword ptr [14000C9D8h],rdx
                    00
  0000000140001BB1: 48 8D 15 E0 77 00  lea         rdx,[??_C@_04A@CMOV?$AA@]
                    00
  0000000140001BB8: 48 89 15 49 AE 00  mov         qword ptr [14000CA08h],rdx
                    00
  0000000140001BBF: 48 8D 15 DA 77 00  lea         rdx,[??_C@_03A@mmx?$AA@]
                    00
  0000000140001BC6: 48 89 15 63 AE 00  mov         qword ptr [14000CA30h],rdx
                    00
  0000000140001BCD: 48 8D 15 D0 77 00  lea         rdx,[??_C@_03A@MMX?$AA@]
                    00
  0000000140001BD4: 48 89 15 45 AE 00  mov         qword ptr [14000CA20h],rdx
                    00
  0000000140001BDB: 48 8D 15 C6 77 00  lea         rdx,[??_C@_06A@FXSAVE?$AA@]
                    00
  0000000140001BE2: 48 89 15 4F AE 00  mov         qword ptr [14000CA38h],rdx
                    00
  0000000140001BE9: 48 8D 15 C0 77 00  lea         rdx,[??_C@_03A@sse?$AA@]
                    00
  0000000140001BF0: 48 89 15 69 AE 00  mov         qword ptr [14000CA60h],rdx
                    00
  0000000140001BF7: 48 8D 15 B6 77 00  lea         rdx,[??_C@_03A@SSE?$AA@]
                    00
  0000000140001BFE: 48 89 15 4B AE 00  mov         qword ptr [14000CA50h],rdx
                    00
  0000000140001C05: 48 8D 15 AC 77 00  lea         rdx,[??_C@_04A@sse2?$AA@]
                    00
  0000000140001C0C: 48 89 15 65 AE 00  mov         qword ptr [14000CA78h],rdx
                    00
  0000000140001C13: 48 8D 15 A6 77 00  lea         rdx,[??_C@_04A@SSE2?$AA@]
                    00
  0000000140001C1A: 48 89 15 47 AE 00  mov         qword ptr [14000CA68h],rdx
                    00
  0000000140001C21: 48 8D 15 A0 77 00  lea         rdx,[??_C@_04A@sse3?$AA@]
                    00
  0000000140001C28: 48 89 15 61 AE 00  mov         qword ptr [14000CA90h],rdx
                    00
  0000000140001C2F: 48 8D 15 9A 77 00  lea         rdx,[??_C@_04A@SSE3?$AA@]
                    00
  0000000140001C36: 48 89 15 43 AE 00  mov         qword ptr [14000CA80h],rdx
                    00
  0000000140001C3D: 48 8D 15 94 77 00  lea         rdx,[??_C@_05A@ssse3?$AA@]
                    00
  0000000140001C44: 48 89 15 5D AE 00  mov         qword ptr [14000CAA8h],rdx
                    00
  0000000140001C4B: 48 8D 15 8E 77 00  lea         rdx,[??_C@_05A@SSSE3?$AA@]
                    00
  0000000140001C52: 48 89 15 3F AE 00  mov         qword ptr [14000CA98h],rdx
                    00
  0000000140001C59: 48 8D 15 88 77 00  lea         rdx,[??_C@_06A@sse4?41?$AA@]
                    00
  0000000140001C60: 48 89 15 59 AE 00  mov         qword ptr [14000CAC0h],rdx
                    00
  0000000140001C67: 48 8D 15 82 77 00  lea         rdx,[??_C@_06A@SSE4_1?$AA@]
                    00
  0000000140001C6E: 48 89 15 3B AE 00  mov         qword ptr [14000CAB0h],rdx
                    00
  0000000140001C75: 48 8D 15 7C 77 00  lea         rdx,[??_C@_04A@sse4?$AA@]
                    00
  0000000140001C7C: 48 89 15 55 AE 00  mov         qword ptr [14000CAD8h],rdx
                    00
  0000000140001C83: 48 8D 15 76 77 00  lea         rdx,[??_C@_06A@SSE4_2?$AA@]
                    00
  0000000140001C8A: 48 89 15 37 AE 00  mov         qword ptr [14000CAC8h],rdx
                    00
  0000000140001C91: 48 8D 15 70 77 00  lea         rdx,[??_C@_05A@movbe?$AA@]
                    00
  0000000140001C98: 48 89 15 51 AE 00  mov         qword ptr [14000CAF0h],rdx
                    00
  0000000140001C9F: 48 8D 15 6A 77 00  lea         rdx,[??_C@_05A@MOVBE?$AA@]
                    00
  0000000140001CA6: 48 89 15 33 AE 00  mov         qword ptr [14000CAE0h],rdx
                    00
  0000000140001CAD: 48 8D 15 64 77 00  lea         rdx,[??_C@_06A@popcnt?$AA@]
                    00
  0000000140001CB4: 48 89 15 4D AE 00  mov         qword ptr [14000CB08h],rdx
                    00
  0000000140001CBB: 48 8D 15 5E 77 00  lea         rdx,[??_C@_06A@POPCNT?$AA@]
                    00
  0000000140001CC2: 48 89 15 2F AE 00  mov         qword ptr [14000CAF8h],rdx
                    00
  0000000140001CC9: 48 8D 15 58 77 00  lea         rdx,[??_C@_06A@pclmul?$AA@]
                    00
  0000000140001CD0: 48 89 15 49 AE 00  mov         qword ptr [14000CB20h],rdx
                    00
  0000000140001CD7: 48 8D 15 52 77 00  lea         rdx,[??_C@_09A@PCLMULQDQ?$AA@]
                    00
  0000000140001CDE: 48 89 15 2B AE 00  mov         qword ptr [14000CB10h],rdx
                    00
  0000000140001CE5: 48 8D 15 50 77 00  lea         rdx,[??_C@_03A@aes?$AA@]
                    00
  0000000140001CEC: 48 89 15 45 AE 00  mov         qword ptr [14000CB38h],rdx
                    00
  0000000140001CF3: 48 8D 15 46 77 00  lea         rdx,[??_C@_03A@AES?$AA@]
                    00
  0000000140001CFA: 48 89 15 27 AE 00  mov         qword ptr [14000CB28h],rdx
                    00
  0000000140001D01: 48 8D 15 3C 77 00  lea         rdx,[??_C@_03A@avx?$AA@]
                    00
  0000000140001D08: 48 89 15 41 AE 00  mov         qword ptr [14000CB50h],rdx
                    00
  0000000140001D0F: 48 8D 15 32 77 00  lea         rdx,[??_C@_03A@AVX?$AA@]
                    00
  0000000140001D16: 48 89 15 23 AE 00  mov         qword ptr [14000CB40h],rdx
                    00
  0000000140001D1D: 48 8D 15 28 77 00  lea         rdx,[??_C@_04A@f16c?$AA@]
                    00
  0000000140001D24: 48 89 15 3D AE 00  mov         qword ptr [14000CB68h],rdx
                    00
  0000000140001D2B: 48 8D 15 22 77 00  lea         rdx,[??_C@_04A@F16C?$AA@]
                    00
  0000000140001D32: 48 89 15 1F AE 00  mov         qword ptr [14000CB58h],rdx
                    00
  0000000140001D39: 48 8D 15 1C 77 00  lea         rdx,[??_C@_05A@rdrnd?$AA@]
                    00
  0000000140001D40: 48 89 15 39 AE 00  mov         qword ptr [14000CB80h],rdx
                    00
  0000000140001D47: 48 8D 15 16 77 00  lea         rdx,[??_C@_05A@RDRND?$AA@]
                    00
  0000000140001D4E: 48 89 15 1B AE 00  mov         qword ptr [14000CB70h],rdx
                    00
  0000000140001D55: 48 8D 15 10 77 00  lea         rdx,[??_C@_03A@fma?$AA@]
                    00
  0000000140001D5C: 48 89 15 35 AE 00  mov         qword ptr [14000CB98h],rdx
                    00
  0000000140001D63: 48 8D 15 06 77 00  lea         rdx,[??_C@_03A@FMA?$AA@]
                    00
  0000000140001D6A: 48 89 15 17 AE 00  mov         qword ptr [14000CB88h],rdx
                    00
  0000000140001D71: 48 8D 15 FC 76 00  lea         rdx,[??_C@_03A@bmi?$AA@]
                    00
  0000000140001D78: 48 89 15 31 AE 00  mov         qword ptr [14000CBB0h],rdx
                    00
  0000000140001D7F: 48 8D 15 F2 76 00  lea         rdx,[??_C@_03A@BMI?$AA@]
                    00
  0000000140001D86: 48 89 15 13 AE 00  mov         qword ptr [14000CBA0h],rdx
                    00
  0000000140001D8D: 48 8D 15 E8 76 00  lea         rdx,[??_C@_05A@lzcnt?$AA@]
                    00
  0000000140001D94: 48 89 15 2D AE 00  mov         qword ptr [14000CBC8h],rdx
                    00
  0000000140001D9B: 48 8D 15 E2 76 00  lea         rdx,[??_C@_05A@LZCNT?$AA@]
                    00
  0000000140001DA2: 48 89 15 0F AE 00  mov         qword ptr [14000CBB8h],rdx
                    00
  0000000140001DA9: 48 8D 15 DC 76 00  lea         rdx,[??_C@_03A@hle?$AA@]
                    00
  0000000140001DB0: 48 89 15 29 AE 00  mov         qword ptr [14000CBE0h],rdx
                    00
  0000000140001DB7: 48 8D 15 D2 76 00  lea         rdx,[??_C@_03A@HLE?$AA@]
                    00
  0000000140001DBE: 48 89 15 0B AE 00  mov         qword ptr [14000CBD0h],rdx
                    00
  0000000140001DC5: 48 8D 15 C8 76 00  lea         rdx,[??_C@_03A@rtm?$AA@]
                    00
  0000000140001DCC: 48 89 15 25 AE 00  mov         qword ptr [14000CBF8h],rdx
                    00
  0000000140001DD3: 48 8D 15 BE 76 00  lea         rdx,[??_C@_03A@RTM?$AA@]
                    00
  0000000140001DDA: 48 89 15 07 AE 00  mov         qword ptr [14000CBE8h],rdx
                    00
  0000000140001DE1: 48 8D 15 B4 76 00  lea         rdx,[??_C@_04A@avx2?$AA@]
                    00
  0000000140001DE8: 48 89 15 21 AE 00  mov         qword ptr [14000CC10h],rdx
                    00
  0000000140001DEF: 48 8D 15 AE 76 00  lea         rdx,[??_C@_04A@AVX2?$AA@]
                    00
  0000000140001DF6: 48 89 15 03 AE 00  mov         qword ptr [14000CC00h],rdx
                    00
  0000000140001DFD: 48 8D 15 A8 76 00  lea         rdx,[??_C@_07A@avx512f?$AA@]
                    00
  0000000140001E04: 48 89 15 1D AE 00  mov         qword ptr [14000CC28h],rdx
                    00
  0000000140001E0B: 48 8D 15 A2 76 00  lea         rdx,[??_C@_07A@AVX512F?$AA@]
                    00
  0000000140001E12: 48 89 15 FF AD 00  mov         qword ptr [14000CC18h],rdx
                    00
  0000000140001E19: 48 8D 15 9C 76 00  lea         rdx,[??_C@_08A@avx512dq?$AA@]
                    00
  0000000140001E20: 48 89 15 19 AE 00  mov         qword ptr [14000CC40h],rdx
                    00
  0000000140001E27: 48 8D 15 9A 76 00  lea         rdx,[??_C@_08A@AVX512DQ?$AA@]
                    00
  0000000140001E2E: 48 89 15 FB AD 00  mov         qword ptr [14000CC30h],rdx
                    00
  0000000140001E35: 48 8D 15 98 76 00  lea         rdx,[??_C@_07A@ptwrite?$AA@]
                    00
  0000000140001E3C: 48 89 15 15 AE 00  mov         qword ptr [14000CC58h],rdx
                    00
  0000000140001E43: 48 8D 15 92 76 00  lea         rdx,[??_C@_07A@PTWRITE?$AA@]
                    00
  0000000140001E4A: 48 89 15 F7 AD 00  mov         qword ptr [14000CC48h],rdx
                    00
  0000000140001E51: 48 8D 15 8C 76 00  lea         rdx,[??_C@_05A@KNCNI?$AA@]
                    00
  0000000140001E58: 48 89 15 01 AE 00  mov         qword ptr [14000CC60h],rdx
                    00
  0000000140001E5F: 48 8D 15 86 76 00  lea         rdx,[??_C@_03A@adx?$AA@]
                    00
  0000000140001E66: 48 89 15 1B AE 00  mov         qword ptr [14000CC88h],rdx
                    00
  0000000140001E6D: 48 8D 15 7C 76 00  lea         rdx,[??_C@_03A@ADX?$AA@]
                    00
  0000000140001E74: 48 89 15 FD AD 00  mov         qword ptr [14000CC78h],rdx
                    00
  0000000140001E7B: 48 8D 15 72 76 00  lea         rdx,[??_C@_06A@rdseed?$AA@]
                    00
  0000000140001E82: 48 89 15 17 AE 00  mov         qword ptr [14000CCA0h],rdx
                    00
  0000000140001E89: 48 8D 15 6C 76 00  lea         rdx,[??_C@_06A@RDSEED?$AA@]
                    00
  0000000140001E90: 48 89 15 F9 AD 00  mov         qword ptr [14000CC90h],rdx
                    00
  0000000140001E97: 48 8D 15 66 76 00  lea         rdx,[??_C@_0L@A@avx512ifma?$AA@]
                    00
  0000000140001E9E: 48 89 15 13 AE 00  mov         qword ptr [14000CCB8h],rdx
                    00
  0000000140001EA5: 48 8D 15 64 76 00  lea         rdx,[??_C@_0N@A@AVX512IFMA52?$AA@]
                    00
  0000000140001EAC: 48 89 15 F5 AD 00  mov         qword ptr [14000CCA8h],rdx
                    00
  0000000140001EB3: 48 8D 15 66 76 00  lea         rdx,[??_C@_08A@avx512er?$AA@]
                    00
  0000000140001EBA: 48 89 15 27 AE 00  mov         qword ptr [14000CCE8h],rdx
                    00
  0000000140001EC1: 48 8D 15 64 76 00  lea         rdx,[??_C@_08A@AVX512ER?$AA@]
                    00
  0000000140001EC8: 48 89 15 09 AE 00  mov         qword ptr [14000CCD8h],rdx
                    00
  0000000140001ECF: 48 8D 15 62 76 00  lea         rdx,[??_C@_08A@avx512pf?$AA@]
                    00
  0000000140001ED6: 48 89 15 23 AE 00  mov         qword ptr [14000CD00h],rdx
                    00
  0000000140001EDD: 48 8D 15 60 76 00  lea         rdx,[??_C@_08A@AVX512PF?$AA@]
                    00
  0000000140001EE4: 48 89 15 05 AE 00  mov         qword ptr [14000CCF0h],rdx
                    00
  0000000140001EEB: 48 8D 15 5E 76 00  lea         rdx,[??_C@_08A@avx512cd?$AA@]
                    00
  0000000140001EF2: 48 89 15 1F AE 00  mov         qword ptr [14000CD18h],rdx
                    00
  0000000140001EF9: 48 8D 15 5C 76 00  lea         rdx,[??_C@_08A@AVX512CD?$AA@]
                    00
  0000000140001F00: 48 89 15 01 AE 00  mov         qword ptr [14000CD08h],rdx
                    00
  0000000140001F07: 48 8D 15 5A 76 00  lea         rdx,[??_C@_03A@sha?$AA@]
                    00
  0000000140001F0E: 48 89 15 1B AE 00  mov         qword ptr [14000CD30h],rdx
                    00
  0000000140001F15: 48 8D 15 50 76 00  lea         rdx,[??_C@_03A@SHA?$AA@]
                    00
  0000000140001F1C: 48 89 15 FD AD 00  mov         qword ptr [14000CD20h],rdx
                    00
  0000000140001F23: 48 8D 15 46 76 00  lea         rdx,[??_C@_03A@mpx?$AA@]
                    00
  0000000140001F2A: 48 89 15 17 AE 00  mov         qword ptr [14000CD48h],rdx
                    00
  0000000140001F31: 48 8D 15 3C 76 00  lea         rdx,[??_C@_03A@MPX?$AA@]
                    00
  0000000140001F38: 48 89 15 F9 AD 00  mov         qword ptr [14000CD38h],rdx
                    00
  0000000140001F3F: 48 8D 15 32 76 00  lea         rdx,[??_C@_08A@avx512bw?$AA@]
                    00
  0000000140001F46: 48 89 15 13 AE 00  mov         qword ptr [14000CD60h],rdx
                    00
  0000000140001F4D: 48 8D 15 30 76 00  lea         rdx,[??_C@_08A@AVX512BW?$AA@]
                    00
  0000000140001F54: 48 89 15 F5 AD 00  mov         qword ptr [14000CD50h],rdx
                    00
  0000000140001F5B: 48 8D 15 2E 76 00  lea         rdx,[??_C@_08A@avx512vl?$AA@]
                    00
  0000000140001F62: 48 89 15 0F AE 00  mov         qword ptr [14000CD78h],rdx
                    00
  0000000140001F69: 48 8D 15 2C 76 00  lea         rdx,[??_C@_08A@AVX512VL?$AA@]
                    00
  0000000140001F70: 48 89 15 F1 AD 00  mov         qword ptr [14000CD68h],rdx
                    00
  0000000140001F77: 48 8D 15 2A 76 00  lea         rdx,[??_C@_0L@A@avx512vbmi?$AA@]
                    00
  0000000140001F7E: 48 89 15 0B AE 00  mov         qword ptr [14000CD90h],rdx
                    00
  0000000140001F85: 48 8D 15 28 76 00  lea         rdx,[??_C@_0L@A@AVX512VBMI?$AA@]
                    00
  0000000140001F8C: 48 89 15 ED AD 00  mov         qword ptr [14000CD80h],rdx
                    00
  0000000140001F93: 48 8D 15 26 76 00  lea         rdx,[??_C@_0N@A@avx5124fmaps?$AA@]
                    00
  0000000140001F9A: 48 89 15 07 AE 00  mov         qword ptr [14000CDA8h],rdx
                    00
  0000000140001FA1: 48 8D 15 28 76 00  lea         rdx,[??_C@_0O@A@AVX512_4FMAPS?$AA@]
                    00
  0000000140001FA8: 48 89 15 E9 AD 00  mov         qword ptr [14000CD98h],rdx
                    00
  0000000140001FAF: 48 8D 15 2A 76 00  lea         rdx,[??_C@_0N@A@avx5124vnniw?$AA@]
                    00
  0000000140001FB6: 48 89 15 03 AE 00  mov         qword ptr [14000CDC0h],rdx
                    00
  0000000140001FBD: 48 8D 15 2C 76 00  lea         rdx,[??_C@_0O@A@AVX512_4VNNIW?$AA@]
                    00
  0000000140001FC4: 48 89 15 E5 AD 00  mov         qword ptr [14000CDB0h],rdx
                    00
  0000000140001FCB: 48 8D 15 2E 76 00  lea         rdx,[??_C@_0BA@A@avx512vpopcntdq?$AA@]
                    00
  0000000140001FD2: 48 89 15 FF AD 00  mov         qword ptr [14000CDD8h],rdx
                    00
  0000000140001FD9: 48 8D 15 30 76 00  lea         rdx,[??_C@_0BB@A@AVX512_VPOPCNTDQ?$AA@]
                    00
  0000000140001FE0: 48 89 15 E1 AD 00  mov         qword ptr [14000CDC8h],rdx
                    00
  0000000140001FE7: 48 8D 15 36 76 00  lea         rdx,[??_C@_0N@A@avx512bitalg?$AA@]
                    00
  0000000140001FEE: 48 89 15 FB AD 00  mov         qword ptr [14000CDF0h],rdx
                    00
  0000000140001FF5: 48 8D 15 38 76 00  lea         rdx,[??_C@_0O@A@AVX512_BITALG?$AA@]
                    00
  0000000140001FFC: 48 89 15 DD AD 00  mov         qword ptr [14000CDE0h],rdx
                    00
  0000000140002003: 48 8D 15 3A 76 00  lea         rdx,[??_C@_0M@A@avx512vbmi2?$AA@]
                    00
  000000014000200A: 48 89 15 F7 AD 00  mov         qword ptr [14000CE08h],rdx
                    00
  0000000140002011: 48 8D 15 38 76 00  lea         rdx,[??_C@_0N@A@AVX512_VBMI2?$AA@]
                    00
  0000000140002018: 48 89 15 D9 AD 00  mov         qword ptr [14000CDF8h],rdx
                    00
  000000014000201F: 48 8D 15 3A 76 00  lea         rdx,[??_C@_04A@gfni?$AA@]
                    00
  0000000140002026: 48 89 15 F3 AD 00  mov         qword ptr [14000CE20h],rdx
                    00
  000000014000202D: 48 8D 15 34 76 00  lea         rdx,[??_C@_04A@GFNI?$AA@]
                    00
  0000000140002034: 48 89 15 D5 AD 00  mov         qword ptr [14000CE10h],rdx
                    00
  000000014000203B: 48 8D 15 2E 76 00  lea         rdx,[??_C@_04A@vaes?$AA@]
                    00
  0000000140002042: 48 89 15 EF AD 00  mov         qword ptr [14000CE38h],rdx
                    00
  0000000140002049: 48 8D 15 28 76 00  lea         rdx,[??_C@_04A@VAES?$AA@]
                    00
  0000000140002050: 48 89 15 D1 AD 00  mov         qword ptr [14000CE28h],rdx
                    00
  0000000140002057: 48 8D 15 22 76 00  lea         rdx,[??_C@_0L@A@vpclmulqdq?$AA@]
                    00
  000000014000205E: 48 89 15 EB AD 00  mov         qword ptr [14000CE50h],rdx
                    00
  0000000140002065: 48 8D 15 20 76 00  lea         rdx,[??_C@_0L@A@VPCLMULQDQ?$AA@]
                    00
  000000014000206C: 48 89 15 CD AD 00  mov         qword ptr [14000CE40h],rdx
                    00
  0000000140002073: 48 8D 15 1E 76 00  lea         rdx,[??_C@_0L@A@avx512vnni?$AA@]
                    00
  000000014000207A: 48 89 15 E7 AD 00  mov         qword ptr [14000CE68h],rdx
                    00
  0000000140002081: 48 8D 15 1C 76 00  lea         rdx,[??_C@_0M@A@AVX512_VNNI?$AA@]
                    00
  0000000140002088: 48 89 15 C9 AD 00  mov         qword ptr [14000CE58h],rdx
                    00
  000000014000208F: 48 8D 15 1A 76 00  lea         rdx,[??_C@_04A@clwb?$AA@]
                    00
  0000000140002096: 48 89 15 E3 AD 00  mov         qword ptr [14000CE80h],rdx
                    00
  000000014000209D: 48 8D 15 14 76 00  lea         rdx,[??_C@_04A@CLWB?$AA@]
                    00
  00000001400020A4: 48 89 15 C5 AD 00  mov         qword ptr [14000CE70h],rdx
                    00
  00000001400020AB: 48 8D 15 0E 76 00  lea         rdx,[??_C@_05A@rdpid?$AA@]
                    00
  00000001400020B2: 48 89 15 DF AD 00  mov         qword ptr [14000CE98h],rdx
                    00
  00000001400020B9: 48 8D 15 08 76 00  lea         rdx,[??_C@_05A@RDPID?$AA@]
                    00
  00000001400020C0: 48 89 15 C1 AD 00  mov         qword ptr [14000CE88h],rdx
                    00
  00000001400020C7: 48 8D 15 02 76 00  lea         rdx,[??_C@_03A@ibt?$AA@]
                    00
  00000001400020CE: 48 89 15 DB AD 00  mov         qword ptr [14000CEB0h],rdx
                    00
  00000001400020D5: 48 8D 15 F8 75 00  lea         rdx,[??_C@_03A@IBT?$AA@]
                    00
  00000001400020DC: 48 89 15 BD AD 00  mov         qword ptr [14000CEA0h],rdx
                    00
  00000001400020E3: 48 8D 15 EE 75 00  lea         rdx,[??_C@_05A@shstk?$AA@]
                    00
  00000001400020EA: 48 89 15 D7 AD 00  mov         qword ptr [14000CEC8h],rdx
                    00
  00000001400020F1: 48 8D 15 E8 75 00  lea         rdx,[??_C@_05A@SHSTK?$AA@]
                    00
  00000001400020F8: 48 89 15 B9 AD 00  mov         qword ptr [14000CEB8h],rdx
                    00
  00000001400020FF: 48 8D 15 E2 75 00  lea         rdx,[??_C@_03A@sgx?$AA@]
                    00
  0000000140002106: 48 89 15 D3 AD 00  mov         qword ptr [14000CEE0h],rdx
                    00
  000000014000210D: 48 8D 15 D8 75 00  lea         rdx,[??_C@_03A@SGX?$AA@]
                    00
  0000000140002114: 48 89 15 B5 AD 00  mov         qword ptr [14000CED0h],rdx
                    00
  000000014000211B: 48 8D 15 CE 75 00  lea         rdx,[??_C@_08A@wbnoinvd?$AA@]
                    00
  0000000140002122: 48 89 15 CF AD 00  mov         qword ptr [14000CEF8h],rdx
                    00
  0000000140002129: 48 8D 15 CC 75 00  lea         rdx,[??_C@_08A@WBNOINVD?$AA@]
                    00
  0000000140002130: 48 89 15 B1 AD 00  mov         qword ptr [14000CEE8h],rdx
                    00
  0000000140002137: 48 8D 15 CA 75 00  lea         rdx,[??_C@_07A@pconfig?$AA@]
                    00
  000000014000213E: 48 89 15 CB AD 00  mov         qword ptr [14000CF10h],rdx
                    00
  0000000140002145: 48 8D 15 C4 75 00  lea         rdx,[??_C@_07A@PCONFIG?$AA@]
                    00
  000000014000214C: 48 89 15 AD AD 00  mov         qword ptr [14000CF00h],rdx
                    00
  0000000140002153: 48 8D 15 BE 75 00  lea         rdx,[??_C@_0BD@A@avx512vp2intersect?$AA@]
                    00
  000000014000215A: 48 89 15 C7 AD 00  mov         qword ptr [14000CF28h],rdx
                    00
  0000000140002161: 48 8D 15 C4 75 00  lea         rdx,[??_C@_0BE@A@AVX512_VP2INTERSECT?$AA@]
                    00
  0000000140002168: 48 89 15 A9 AD 00  mov         qword ptr [14000CF18h],rdx
                    00
  000000014000216F: 48 8D 15 CA 75 00  lea         rdx,[??_C@_08A@cldemote?$AA@]
                    00
  0000000140002176: 48 89 15 C3 AD 00  mov         qword ptr [14000CF40h],rdx
                    00
  000000014000217D: 48 8D 15 C8 75 00  lea         rdx,[??_C@_08A@CLDEMOTE?$AA@]
                    00
  0000000140002184: 48 89 15 A5 AD 00  mov         qword ptr [14000CF30h],rdx
                    00
  000000014000218B: 48 8D 15 C6 75 00  lea         rdx,[??_C@_07A@movdiri?$AA@]
                    00
  0000000140002192: 48 89 15 BF AD 00  mov         qword ptr [14000CF58h],rdx
                    00
  0000000140002199: 48 8D 15 C0 75 00  lea         rdx,[??_C@_07A@MOVDIRI?$AA@]
                    00
  00000001400021A0: 48 89 15 A1 AD 00  mov         qword ptr [14000CF48h],rdx
                    00
  00000001400021A7: 48 8D 15 BA 75 00  lea         rdx,[??_C@_09A@movdir64b?$AA@]
                    00
  00000001400021AE: 48 89 15 BB AD 00  mov         qword ptr [14000CF70h],rdx
                    00
  00000001400021B5: 48 8D 15 B8 75 00  lea         rdx,[??_C@_09A@MOVDIR64B?$AA@]
                    00
  00000001400021BC: 48 89 15 9D AD 00  mov         qword ptr [14000CF60h],rdx
                    00
  00000001400021C3: 48 8D 15 B6 75 00  lea         rdx,[??_C@_07A@waitpkg?$AA@]
                    00
  00000001400021CA: 48 89 15 B7 AD 00  mov         qword ptr [14000CF88h],rdx
                    00
  00000001400021D1: 48 8D 15 B0 75 00  lea         rdx,[??_C@_07A@WAITPKG?$AA@]
                    00
  00000001400021D8: 48 89 15 99 AD 00  mov         qword ptr [14000CF78h],rdx
                    00
  00000001400021DF: 48 8D 15 AA 75 00  lea         rdx,[??_C@_0L@A@avx512bf16?$AA@]
                    00
  00000001400021E6: 48 89 15 B3 AD 00  mov         qword ptr [14000CFA0h],rdx
                    00
  00000001400021ED: 48 8D 15 A8 75 00  lea         rdx,[??_C@_0M@A@AVX512_BF16?$AA@]
                    00
  00000001400021F4: 48 89 15 95 AD 00  mov         qword ptr [14000CF90h],rdx
                    00
  00000001400021FB: 48 8D 15 A6 75 00  lea         rdx,[??_C@_06A@enqcmd?$AA@]
                    00
  0000000140002202: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000140002207: 48 8B 5C 24 20     mov         rbx,qword ptr [rsp+20h]
  000000014000220C: 48 89 05 DD A7 00  mov         qword ptr [14000C9F0h],rax
                    00
  0000000140002213: B8 01 00 00 00     mov         eax,1
  0000000140002218: 48 89 15 99 AD 00  mov         qword ptr [14000CFB8h],rdx
                    00
  000000014000221F: 48 8D 15 8A 75 00  lea         rdx,[??_C@_06A@ENQCMD?$AA@]
                    00
  0000000140002226: C7 05 B0 A7 00 00  mov         dword ptr [14000C9E0h],0
                    00 00 00 00
  0000000140002230: 89 05 C2 A7 00 00  mov         dword ptr [14000C9F8h],eax
  0000000140002236: C7 05 D0 A7 00 00  mov         dword ptr [14000CA10h],2
                    02 00 00 00
  0000000140002240: C7 05 DE A7 00 00  mov         dword ptr [14000CA28h],3
                    03 00 00 00
  000000014000224A: C7 05 EC A7 00 00  mov         dword ptr [14000CA40h],4
                    04 00 00 00
  0000000140002254: C7 05 FA A7 00 00  mov         dword ptr [14000CA58h],5
                    05 00 00 00
  000000014000225E: C7 05 08 A8 00 00  mov         dword ptr [14000CA70h],6
                    06 00 00 00
  0000000140002268: C7 05 16 A8 00 00  mov         dword ptr [14000CA88h],7
                    07 00 00 00
  0000000140002272: C7 05 24 A8 00 00  mov         dword ptr [14000CAA0h],8
                    08 00 00 00
  000000014000227C: C7 05 32 A8 00 00  mov         dword ptr [14000CAB8h],9
                    09 00 00 00
  0000000140002286: C7 05 40 A8 00 00  mov         dword ptr [14000CAD0h],0Ah
                    0A 00 00 00
  0000000140002290: C7 05 4E A8 00 00  mov         dword ptr [14000CAE8h],0Bh
                    0B 00 00 00
  000000014000229A: C7 05 5C A8 00 00  mov         dword ptr [14000CB00h],0Ch
                    0C 00 00 00
  00000001400022A4: C7 05 6A A8 00 00  mov         dword ptr [14000CB18h],0Dh
                    0D 00 00 00
  00000001400022AE: C7 05 78 A8 00 00  mov         dword ptr [14000CB30h],0Eh
                    0E 00 00 00
  00000001400022B8: C7 05 86 A8 00 00  mov         dword ptr [14000CB48h],10h
                    10 00 00 00
  00000001400022C2: C7 05 94 A8 00 00  mov         dword ptr [14000CB60h],0Fh
                    0F 00 00 00
  00000001400022CC: C7 05 A2 A8 00 00  mov         dword ptr [14000CB78h],11h
                    11 00 00 00
  00000001400022D6: C7 05 B0 A8 00 00  mov         dword ptr [14000CB90h],12h
                    12 00 00 00
  00000001400022E0: C7 05 BE A8 00 00  mov         dword ptr [14000CBA8h],13h
                    13 00 00 00
  00000001400022EA: C7 05 CC A8 00 00  mov         dword ptr [14000CBC0h],14h
                    14 00 00 00
  00000001400022F4: C7 05 DA A8 00 00  mov         dword ptr [14000CBD8h],15h
                    15 00 00 00
  00000001400022FE: C7 05 E8 A8 00 00  mov         dword ptr [14000CBF0h],16h
                    16 00 00 00
  0000000140002308: C7 05 F6 A8 00 00  mov         dword ptr [14000CC08h],17h
                    17 00 00 00
  0000000140002312: C7 05 04 A9 00 00  mov         dword ptr [14000CC20h],1Bh
                    1B 00 00 00
  000000014000231C: C7 05 12 A9 00 00  mov         dword ptr [14000CC38h],18h
                    18 00 00 00
  0000000140002326: C7 05 20 A9 00 00  mov         dword ptr [14000CC50h],19h
                    19 00 00 00
  0000000140002330: C7 05 2E A9 00 00  mov         dword ptr [14000CC68h],1Ah
                    1A 00 00 00
  000000014000233A: C7 05 3C A9 00 00  mov         dword ptr [14000CC80h],1Ch
                    1C 00 00 00
  0000000140002344: C7 05 4A A9 00 00  mov         dword ptr [14000CC98h],1Dh
                    1D 00 00 00
  000000014000234E: C7 05 58 A9 00 00  mov         dword ptr [14000CCB0h],1Eh
                    1E 00 00 00
  0000000140002358: C7 05 66 A9 00 00  mov         dword ptr [14000CCC8h],0FFFFFFFFh
                    FF FF FF FF
  0000000140002362: C7 05 74 A9 00 00  mov         dword ptr [14000CCE0h],20h
                    20 00 00 00
  000000014000236C: C7 05 82 A9 00 00  mov         dword ptr [14000CCF8h],21h
                    21 00 00 00
  0000000140002376: C7 05 90 A9 00 00  mov         dword ptr [14000CD10h],22h
                    22 00 00 00
  0000000140002380: C7 05 9E A9 00 00  mov         dword ptr [14000CD28h],23h
                    23 00 00 00
  000000014000238A: C7 05 AC A9 00 00  mov         dword ptr [14000CD40h],24h
                    24 00 00 00
  0000000140002394: C7 05 BA A9 00 00  mov         dword ptr [14000CD58h],25h
                    25 00 00 00
  000000014000239E: C7 05 C8 A9 00 00  mov         dword ptr [14000CD70h],26h
                    26 00 00 00
  00000001400023A8: C7 05 D6 A9 00 00  mov         dword ptr [14000CD88h],27h
                    27 00 00 00
  00000001400023B2: C7 05 E4 A9 00 00  mov         dword ptr [14000CDA0h],28h
                    28 00 00 00
  00000001400023BC: C7 05 F2 A9 00 00  mov         dword ptr [14000CDB8h],29h
                    29 00 00 00
  00000001400023C6: C7 05 00 AA 00 00  mov         dword ptr [14000CDD0h],2Ah
                    2A 00 00 00
  00000001400023D0: C7 05 0E AA 00 00  mov         dword ptr [14000CDE8h],2Bh
                    2B 00 00 00
  00000001400023DA: C7 05 1C AA 00 00  mov         dword ptr [14000CE00h],2Ch
                    2C 00 00 00
  00000001400023E4: C7 05 2A AA 00 00  mov         dword ptr [14000CE18h],2Dh
                    2D 00 00 00
  00000001400023EE: C7 05 38 AA 00 00  mov         dword ptr [14000CE30h],2Eh
                    2E 00 00 00
  00000001400023F8: C7 05 46 AA 00 00  mov         dword ptr [14000CE48h],2Fh
                    2F 00 00 00
  0000000140002402: C7 05 54 AA 00 00  mov         dword ptr [14000CE60h],30h
                    30 00 00 00
  000000014000240C: C7 05 62 AA 00 00  mov         dword ptr [14000CE78h],31h
                    31 00 00 00
  0000000140002416: C7 05 70 AA 00 00  mov         dword ptr [14000CE90h],32h
                    32 00 00 00
  0000000140002420: C7 05 7E AA 00 00  mov         dword ptr [14000CEA8h],33h
                    33 00 00 00
  000000014000242A: C7 05 8C AA 00 00  mov         dword ptr [14000CEC0h],34h
                    34 00 00 00
  0000000140002434: C7 05 9A AA 00 00  mov         dword ptr [14000CED8h],35h
                    35 00 00 00
  000000014000243E: C7 05 A8 AA 00 00  mov         dword ptr [14000CEF0h],36h
                    36 00 00 00
  0000000140002448: C7 05 B6 AA 00 00  mov         dword ptr [14000CF08h],37h
                    37 00 00 00
  0000000140002452: C7 05 C4 AA 00 00  mov         dword ptr [14000CF20h],38h
                    38 00 00 00
  000000014000245C: C7 05 D2 AA 00 00  mov         dword ptr [14000CF38h],40h
                    40 00 00 00
  0000000140002466: C7 05 E0 AA 00 00  mov         dword ptr [14000CF50h],41h
                    41 00 00 00
  0000000140002470: C7 05 EE AA 00 00  mov         dword ptr [14000CF68h],42h
                    42 00 00 00
  000000014000247A: C7 05 FC AA 00 00  mov         dword ptr [14000CF80h],43h
                    43 00 00 00
  0000000140002484: C7 05 0A AB 00 00  mov         dword ptr [14000CF98h],44h
                    44 00 00 00
  000000014000248E: C7 05 18 AB 00 00  mov         dword ptr [14000CFB0h],45h
                    45 00 00 00
  0000000140002498: 48 89 15 09 AB 00  mov         qword ptr [14000CFA8h],rdx
                    00
  000000014000249F: 89 05 3B AB 00 00  mov         dword ptr [14000CFE0h],eax
  00000001400024A5: 48 83 C4 30        add         rsp,30h
  00000001400024A9: 5A                 pop         rdx
  00000001400024AA: C3                 ret
  00000001400024AB: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
__intel_cpu_features_init:
  00000001400024B0: B8 01 00 00 00     mov         eax,1
  00000001400024B5: E9 06 00 00 00     jmp         00000001400024C0
  00000001400024BA: 66 0F 1F 44 00 00  nop         word ptr [rax+rax]
  00000001400024C0: 52                 push        rdx
  00000001400024C1: 51                 push        rcx
  00000001400024C2: 53                 push        rbx
  00000001400024C3: 56                 push        rsi
  00000001400024C4: 41 50              push        r8
  00000001400024C6: 41 51              push        r9
  00000001400024C8: 41 52              push        r10
  00000001400024CA: 41 53              push        r11
  00000001400024CC: 41 57              push        r15
  00000001400024CE: 48 81 EC B0 00 00  sub         rsp,0B0h
                    00
  00000001400024D5: 89 C6              mov         esi,eax
  00000001400024D7: 0F 11 44 24 60     movups      xmmword ptr [rsp+60h],xmm0
  00000001400024DC: 45 32 C0           xor         r8b,r8b
  00000001400024DF: 0F 11 6C 24 40     movups      xmmword ptr [rsp+40h],xmm5
  00000001400024E4: 66 0F EF C0        pxor        xmm0,xmm0
  00000001400024E8: 0F 11 A4 24 80 00  movups      xmmword ptr [rsp+80h],xmm4
                    00 00
  00000001400024F0: 0F 11 9C 24 90 00  movups      xmmword ptr [rsp+90h],xmm3
                    00 00
  00000001400024F8: 0F 11 54 24 70     movups      xmmword ptr [rsp+70h],xmm2
  00000001400024FD: 0F 11 4C 24 50     movups      xmmword ptr [rsp+50h],xmm1
  0000000140002502: F3 0F 7F 44 24 20  movdqu      xmmword ptr [rsp+20h],xmm0
  0000000140002508: F3 0F 7F 44 24 30  movdqu      xmmword ptr [rsp+30h],xmm0
  000000014000250E: B9 01 00 00 00     mov         ecx,1
  0000000140002513: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002518: E8 B3 F5 FF FF     call        0000000140001AD0
  000000014000251D: 85 C0              test        eax,eax
  000000014000251F: 0F 85 9D 08 00 00  jne         0000000140002DC2
  0000000140002525: 33 C0              xor         eax,eax
  0000000140002527: 0F A2              cpuid
  0000000140002529: 89 84 24 A0 00 00  mov         dword ptr [rsp+0A0h],eax
                    00
  0000000140002530: 89 9C 24 A4 00 00  mov         dword ptr [rsp+0A4h],ebx
                    00
  0000000140002537: 89 8C 24 A8 00 00  mov         dword ptr [rsp+0A8h],ecx
                    00
  000000014000253E: 89 94 24 AC 00 00  mov         dword ptr [rsp+0ACh],edx
                    00
  0000000140002545: 83 BC 24 A0 00 00  cmp         dword ptr [rsp+0A0h],0
                    00 00
  000000014000254D: 0F 84 41 09 00 00  je          0000000140002E94
  0000000140002553: 83 FE 01           cmp         esi,1
  0000000140002556: 0F 84 9B 09 00 00  je          0000000140002EF7
  000000014000255C: B8 01 00 00 00     mov         eax,1
  0000000140002561: 0F A2              cpuid
  0000000140002563: 41 89 C9           mov         r9d,ecx
  0000000140002566: F6 C2 01           test        dl,1
  0000000140002569: 74 17              je          0000000140002582
  000000014000256B: B9 02 00 00 00     mov         ecx,2
  0000000140002570: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002575: E8 56 F5 FF FF     call        0000000140001AD0
  000000014000257A: 85 C0              test        eax,eax
  000000014000257C: 0F 85 40 08 00 00  jne         0000000140002DC2
  0000000140002582: F7 C2 00 80 00 00  test        edx,8000h
  0000000140002588: 74 17              je          00000001400025A1
  000000014000258A: B9 03 00 00 00     mov         ecx,3
  000000014000258F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002594: E8 37 F5 FF FF     call        0000000140001AD0
  0000000140002599: 85 C0              test        eax,eax
  000000014000259B: 0F 85 21 08 00 00  jne         0000000140002DC2
  00000001400025A1: F7 C2 00 00 80 00  test        edx,800000h
  00000001400025A7: 74 17              je          00000001400025C0
  00000001400025A9: B9 04 00 00 00     mov         ecx,4
  00000001400025AE: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400025B3: E8 18 F5 FF FF     call        0000000140001AD0
  00000001400025B8: 85 C0              test        eax,eax
  00000001400025BA: 0F 85 02 08 00 00  jne         0000000140002DC2
  00000001400025C0: F7 C2 00 00 00 01  test        edx,1000000h
  00000001400025C6: 75 12              jne         00000001400025DA
  00000001400025C8: 41 F7 C1 00 00 00  test        r9d,40000000h
                    40
  00000001400025CF: 0F 85 98 01 00 00  jne         000000014000276D
  00000001400025D5: E9 AF 01 00 00     jmp         0000000140002789
  00000001400025DA: B9 05 00 00 00     mov         ecx,5
  00000001400025DF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400025E4: E8 E7 F4 FF FF     call        0000000140001AD0
  00000001400025E9: 85 C0              test        eax,eax
  00000001400025EB: 0F 85 D1 07 00 00  jne         0000000140002DC2
  00000001400025F1: F7 C2 00 00 00 02  test        edx,2000000h
  00000001400025F7: 74 17              je          0000000140002610
  00000001400025F9: B9 06 00 00 00     mov         ecx,6
  00000001400025FE: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002603: E8 C8 F4 FF FF     call        0000000140001AD0
  0000000140002608: 85 C0              test        eax,eax
  000000014000260A: 0F 85 B2 07 00 00  jne         0000000140002DC2
  0000000140002610: F7 C2 00 00 00 04  test        edx,4000000h
  0000000140002616: 74 17              je          000000014000262F
  0000000140002618: B9 07 00 00 00     mov         ecx,7
  000000014000261D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002622: E8 A9 F4 FF FF     call        0000000140001AD0
  0000000140002627: 85 C0              test        eax,eax
  0000000140002629: 0F 85 93 07 00 00  jne         0000000140002DC2
  000000014000262F: 41 F7 C1 01 00 00  test        r9d,1
                    00
  0000000140002636: 74 17              je          000000014000264F
  0000000140002638: B9 08 00 00 00     mov         ecx,8
  000000014000263D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002642: E8 89 F4 FF FF     call        0000000140001AD0
  0000000140002647: 85 C0              test        eax,eax
  0000000140002649: 0F 85 73 07 00 00  jne         0000000140002DC2
  000000014000264F: 41 F7 C1 00 02 00  test        r9d,200h
                    00
  0000000140002656: 74 17              je          000000014000266F
  0000000140002658: B9 09 00 00 00     mov         ecx,9
  000000014000265D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002662: E8 69 F4 FF FF     call        0000000140001AD0
  0000000140002667: 85 C0              test        eax,eax
  0000000140002669: 0F 85 53 07 00 00  jne         0000000140002DC2
  000000014000266F: 41 F7 C1 00 00 40  test        r9d,400000h
                    00
  0000000140002676: 74 17              je          000000014000268F
  0000000140002678: B9 0C 00 00 00     mov         ecx,0Ch
  000000014000267D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002682: E8 49 F4 FF FF     call        0000000140001AD0
  0000000140002687: 85 C0              test        eax,eax
  0000000140002689: 0F 85 33 07 00 00  jne         0000000140002DC2
  000000014000268F: 41 F7 C1 00 00 08  test        r9d,80000h
                    00
  0000000140002696: 74 17              je          00000001400026AF
  0000000140002698: B9 0A 00 00 00     mov         ecx,0Ah
  000000014000269D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400026A2: E8 29 F4 FF FF     call        0000000140001AD0
  00000001400026A7: 85 C0              test        eax,eax
  00000001400026A9: 0F 85 13 07 00 00  jne         0000000140002DC2
  00000001400026AF: 41 F7 C1 00 00 10  test        r9d,100000h
                    00
  00000001400026B6: 74 17              je          00000001400026CF
  00000001400026B8: B9 0B 00 00 00     mov         ecx,0Bh
  00000001400026BD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400026C2: E8 09 F4 FF FF     call        0000000140001AD0
  00000001400026C7: 85 C0              test        eax,eax
  00000001400026C9: 0F 85 F3 06 00 00  jne         0000000140002DC2
  00000001400026CF: 41 F7 C1 00 00 80  test        r9d,800000h
                    00
  00000001400026D6: 74 17              je          00000001400026EF
  00000001400026D8: B9 0D 00 00 00     mov         ecx,0Dh
  00000001400026DD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400026E2: E8 E9 F3 FF FF     call        0000000140001AD0
  00000001400026E7: 85 C0              test        eax,eax
  00000001400026E9: 0F 85 D3 06 00 00  jne         0000000140002DC2
  00000001400026EF: 41 F7 C1 02 00 00  test        r9d,2
                    00
  00000001400026F6: 74 17              je          000000014000270F
  00000001400026F8: B9 0E 00 00 00     mov         ecx,0Eh
  00000001400026FD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002702: E8 C9 F3 FF FF     call        0000000140001AD0
  0000000140002707: 85 C0              test        eax,eax
  0000000140002709: 0F 85 B3 06 00 00  jne         0000000140002DC2
  000000014000270F: 41 F7 C1 00 00 00  test        r9d,2000000h
                    02
  0000000140002716: 74 17              je          000000014000272F
  0000000140002718: B9 0F 00 00 00     mov         ecx,0Fh
  000000014000271D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002722: E8 A9 F3 FF FF     call        0000000140001AD0
  0000000140002727: 85 C0              test        eax,eax
  0000000140002729: 0F 85 93 06 00 00  jne         0000000140002DC2
  000000014000272F: B8 07 00 00 00     mov         eax,7
  0000000140002734: 33 C9              xor         ecx,ecx
  0000000140002736: 0F A2              cpuid
  0000000140002738: 41 B0 01           mov         r8b,1
  000000014000273B: 41 89 DF           mov         r15d,ebx
  000000014000273E: 41 89 D2           mov         r10d,edx
  0000000140002741: 41 89 CB           mov         r11d,ecx
  0000000140002744: 41 F7 C7 00 00 00  test        r15d,20000000h
                    20
  000000014000274B: 74 17              je          0000000140002764
  000000014000274D: B9 24 00 00 00     mov         ecx,24h
  0000000140002752: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002757: E8 74 F3 FF FF     call        0000000140001AD0
  000000014000275C: 85 C0              test        eax,eax
  000000014000275E: 0F 85 5E 06 00 00  jne         0000000140002DC2
  0000000140002764: 41 F7 C1 00 00 00  test        r9d,40000000h
                    40
  000000014000276B: 74 2E              je          000000014000279B
  000000014000276D: B9 12 00 00 00     mov         ecx,12h
  0000000140002772: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002777: E8 54 F3 FF FF     call        0000000140001AD0
  000000014000277C: 85 C0              test        eax,eax
  000000014000277E: 0F 85 3E 06 00 00  jne         0000000140002DC2
  0000000140002784: 45 84 C0           test        r8b,r8b
  0000000140002787: 75 12              jne         000000014000279B
  0000000140002789: B8 07 00 00 00     mov         eax,7
  000000014000278E: 33 C9              xor         ecx,ecx
  0000000140002790: 0F A2              cpuid
  0000000140002792: 41 89 D2           mov         r10d,edx
  0000000140002795: 41 89 CB           mov         r11d,ecx
  0000000140002798: 41 89 DF           mov         r15d,ebx
  000000014000279B: 44 89 F8           mov         eax,r15d
  000000014000279E: 25 08 01 00 00     and         eax,108h
  00000001400027A3: 3D 08 01 00 00     cmp         eax,108h
  00000001400027A8: 75 17              jne         00000001400027C1
  00000001400027AA: B9 14 00 00 00     mov         ecx,14h
  00000001400027AF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400027B4: E8 17 F3 FF FF     call        0000000140001AD0
  00000001400027B9: 85 C0              test        eax,eax
  00000001400027BB: 0F 85 01 06 00 00  jne         0000000140002DC2
  00000001400027C1: 41 F7 C7 04 00 00  test        r15d,4
                    00
  00000001400027C8: 74 17              je          00000001400027E1
  00000001400027CA: B9 36 00 00 00     mov         ecx,36h
  00000001400027CF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400027D4: E8 F7 F2 FF FF     call        0000000140001AD0
  00000001400027D9: 85 C0              test        eax,eax
  00000001400027DB: 0F 85 E1 05 00 00  jne         0000000140002DC2
  00000001400027E1: 41 F7 C7 10 00 00  test        r15d,10h
                    00
  00000001400027E8: 74 17              je          0000000140002801
  00000001400027EA: B9 16 00 00 00     mov         ecx,16h
  00000001400027EF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400027F4: E8 D7 F2 FF FF     call        0000000140001AD0
  00000001400027F9: 85 C0              test        eax,eax
  00000001400027FB: 0F 85 C1 05 00 00  jne         0000000140002DC2
  0000000140002801: 41 F7 C7 00 08 00  test        r15d,800h
                    00
  0000000140002808: 74 17              je          0000000140002821
  000000014000280A: B9 17 00 00 00     mov         ecx,17h
  000000014000280F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002814: E8 B7 F2 FF FF     call        0000000140001AD0
  0000000140002819: 85 C0              test        eax,eax
  000000014000281B: 0F 85 A1 05 00 00  jne         0000000140002DC2
  0000000140002821: 41 F7 C7 00 00 08  test        r15d,80000h
                    00
  0000000140002828: 74 17              je          0000000140002841
  000000014000282A: B9 1D 00 00 00     mov         ecx,1Dh
  000000014000282F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002834: E8 97 F2 FF FF     call        0000000140001AD0
  0000000140002839: 85 C0              test        eax,eax
  000000014000283B: 0F 85 81 05 00 00  jne         0000000140002DC2
  0000000140002841: 41 F7 C7 00 00 04  test        r15d,40000h
                    00
  0000000140002848: 74 17              je          0000000140002861
  000000014000284A: B9 1E 00 00 00     mov         ecx,1Eh
  000000014000284F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002854: E8 77 F2 FF FF     call        0000000140001AD0
  0000000140002859: 85 C0              test        eax,eax
  000000014000285B: 0F 85 61 05 00 00  jne         0000000140002DC2
  0000000140002861: 41 F7 C7 00 00 00  test        r15d,1000000h
                    01
  0000000140002868: 74 17              je          0000000140002881
  000000014000286A: B9 32 00 00 00     mov         ecx,32h
  000000014000286F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002874: E8 57 F2 FF FF     call        0000000140001AD0
  0000000140002879: 85 C0              test        eax,eax
  000000014000287B: 0F 85 41 05 00 00  jne         0000000140002DC2
  0000000140002881: B8 01 00 00 80     mov         eax,80000001h
  0000000140002886: 0F A2              cpuid
  0000000140002888: F6 C1 20           test        cl,20h
  000000014000288B: 74 17              je          00000001400028A4
  000000014000288D: B9 15 00 00 00     mov         ecx,15h
  0000000140002892: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002897: E8 34 F2 FF FF     call        0000000140001AD0
  000000014000289C: 85 C0              test        eax,eax
  000000014000289E: 0F 85 1E 05 00 00  jne         0000000140002DC2
  00000001400028A4: B8 08 00 00 80     mov         eax,80000008h
  00000001400028A9: 0F A2              cpuid
  00000001400028AB: F7 C3 00 02 00 00  test        ebx,200h
  00000001400028B1: 74 17              je          00000001400028CA
  00000001400028B3: B9 37 00 00 00     mov         ecx,37h
  00000001400028B8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400028BD: E8 0E F2 FF FF     call        0000000140001AD0
  00000001400028C2: 85 C0              test        eax,eax
  00000001400028C4: 0F 85 F8 04 00 00  jne         0000000140002DC2
  00000001400028CA: 41 F7 C3 20 00 00  test        r11d,20h
                    00
  00000001400028D1: 74 17              je          00000001400028EA
  00000001400028D3: B9 3D 00 00 00     mov         ecx,3Dh
  00000001400028D8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400028DD: E8 EE F1 FF FF     call        0000000140001AD0
  00000001400028E2: 85 C0              test        eax,eax
  00000001400028E4: 0F 85 D8 04 00 00  jne         0000000140002DC2
  00000001400028EA: 41 F7 C3 80 00 00  test        r11d,80h
                    00
  00000001400028F1: 74 17              je          000000014000290A
  00000001400028F3: B9 35 00 00 00     mov         ecx,35h
  00000001400028F8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400028FD: E8 CE F1 FF FF     call        0000000140001AD0
  0000000140002902: 85 C0              test        eax,eax
  0000000140002904: 0F 85 B8 04 00 00  jne         0000000140002DC2
  000000014000290A: 41 F7 C3 00 01 00  test        r11d,100h
                    00
  0000000140002911: 74 17              je          000000014000292A
  0000000140002913: B9 2E 00 00 00     mov         ecx,2Eh
  0000000140002918: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000014000291D: E8 AE F1 FF FF     call        0000000140001AD0
  0000000140002922: 85 C0              test        eax,eax
  0000000140002924: 0F 85 98 04 00 00  jne         0000000140002DC2
  000000014000292A: 41 F7 C3 00 00 40  test        r11d,400000h
                    00
  0000000140002931: 74 17              je          000000014000294A
  0000000140002933: B9 33 00 00 00     mov         ecx,33h
  0000000140002938: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000014000293D: E8 8E F1 FF FF     call        0000000140001AD0
  0000000140002942: 85 C0              test        eax,eax
  0000000140002944: 0F 85 78 04 00 00  jne         0000000140002DC2
  000000014000294A: 41 F7 C3 00 00 00  test        r11d,1000000h
                    01
  0000000140002951: 74 17              je          000000014000296A
  0000000140002953: B9 3A 00 00 00     mov         ecx,3Ah
  0000000140002958: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000014000295D: E8 6E F1 FF FF     call        0000000140001AD0
  0000000140002962: 85 C0              test        eax,eax
  0000000140002964: 0F 85 58 04 00 00  jne         0000000140002DC2
  000000014000296A: 41 F7 C3 00 00 00  test        r11d,8000000h
                    08
  0000000140002971: 74 17              je          000000014000298A
  0000000140002973: B9 3B 00 00 00     mov         ecx,3Bh
  0000000140002978: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000014000297D: E8 4E F1 FF FF     call        0000000140001AD0
  0000000140002982: 85 C0              test        eax,eax
  0000000140002984: 0F 85 38 04 00 00  jne         0000000140002DC2
  000000014000298A: 41 F7 C3 00 00 00  test        r11d,10000000h
                    10
  0000000140002991: 74 17              je          00000001400029AA
  0000000140002993: B9 3C 00 00 00     mov         ecx,3Ch
  0000000140002998: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000014000299D: E8 2E F1 FF FF     call        0000000140001AD0
  00000001400029A2: 85 C0              test        eax,eax
  00000001400029A4: 0F 85 18 04 00 00  jne         0000000140002DC2
  00000001400029AA: 41 F7 C3 00 00 00  test        r11d,20000000h
                    20
  00000001400029B1: 74 17              je          00000001400029CA
  00000001400029B3: B9 3F 00 00 00     mov         ecx,3Fh
  00000001400029B8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400029BD: E8 0E F1 FF FF     call        0000000140001AD0
  00000001400029C2: 85 C0              test        eax,eax
  00000001400029C4: 0F 85 F8 03 00 00  jne         0000000140002DC2
  00000001400029CA: 41 F7 C2 00 00 10  test        r10d,100000h
                    00
  00000001400029D1: 74 17              je          00000001400029EA
  00000001400029D3: B9 34 00 00 00     mov         ecx,34h
  00000001400029D8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400029DD: E8 EE F0 FF FF     call        0000000140001AD0
  00000001400029E2: 85 C0              test        eax,eax
  00000001400029E4: 0F 85 D8 03 00 00  jne         0000000140002DC2
  00000001400029EA: 41 F7 C2 00 00 04  test        r10d,40000h
                    00
  00000001400029F1: 74 17              je          0000000140002A0A
  00000001400029F3: B9 38 00 00 00     mov         ecx,38h
  00000001400029F8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400029FD: E8 CE F0 FF FF     call        0000000140001AD0
  0000000140002A02: 85 C0              test        eax,eax
  0000000140002A04: 0F 85 B8 03 00 00  jne         0000000140002DC2
  0000000140002A0A: B8 14 00 00 00     mov         eax,14h
  0000000140002A0F: 33 C9              xor         ecx,ecx
  0000000140002A11: 0F A2              cpuid
  0000000140002A13: F6 C3 10           test        bl,10h
  0000000140002A16: 74 17              je          0000000140002A2F
  0000000140002A18: B9 1B 00 00 00     mov         ecx,1Bh
  0000000140002A1D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002A22: E8 A9 F0 FF FF     call        0000000140001AD0
  0000000140002A27: 85 C0              test        eax,eax
  0000000140002A29: 0F 85 93 03 00 00  jne         0000000140002DC2
  0000000140002A2F: 41 F7 C1 00 00 00  test        r9d,8000000h
                    08
  0000000140002A36: 0F 84 C0 03 00 00  je          0000000140002DFC
  0000000140002A3C: B9 01 00 00 00     mov         ecx,1
  0000000140002A41: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002A46: E8 85 F0 FF FF     call        0000000140001AD0
  0000000140002A4B: 85 C0              test        eax,eax
  0000000140002A4D: 0F 85 6F 03 00 00  jne         0000000140002DC2
  0000000140002A53: 33 C9              xor         ecx,ecx
  0000000140002A55: 0F 01 D0           xgetbv
  0000000140002A58: 89 C2              mov         edx,eax
  0000000140002A5A: 89 D1              mov         ecx,edx
  0000000140002A5C: 83 E1 06           and         ecx,6
  0000000140002A5F: 83 F9 06           cmp         ecx,6
  0000000140002A62: 0F 85 94 03 00 00  jne         0000000140002DFC
  0000000140002A68: B9 01 00 00 00     mov         ecx,1
  0000000140002A6D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002A72: E8 59 F0 FF FF     call        0000000140001AD0
  0000000140002A77: 85 C0              test        eax,eax
  0000000140002A79: 0F 85 43 03 00 00  jne         0000000140002DC2
  0000000140002A7F: 41 F7 C1 00 00 00  test        r9d,10000000h
                    10
  0000000140002A86: 74 57              je          0000000140002ADF
  0000000140002A88: B9 10 00 00 00     mov         ecx,10h
  0000000140002A8D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002A92: E8 39 F0 FF FF     call        0000000140001AD0
  0000000140002A97: 85 C0              test        eax,eax
  0000000140002A99: 0F 85 23 03 00 00  jne         0000000140002DC2
  0000000140002A9F: 41 F7 C3 00 02 00  test        r11d,200h
                    00
  0000000140002AA6: 74 17              je          0000000140002ABF
  0000000140002AA8: B9 2F 00 00 00     mov         ecx,2Fh
  0000000140002AAD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002AB2: E8 19 F0 FF FF     call        0000000140001AD0
  0000000140002AB7: 85 C0              test        eax,eax
  0000000140002AB9: 0F 85 03 03 00 00  jne         0000000140002DC2
  0000000140002ABF: 41 F7 C3 00 04 00  test        r11d,400h
                    00
  0000000140002AC6: 74 17              je          0000000140002ADF
  0000000140002AC8: B9 30 00 00 00     mov         ecx,30h
  0000000140002ACD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002AD2: E8 F9 EF FF FF     call        0000000140001AD0
  0000000140002AD7: 85 C0              test        eax,eax
  0000000140002AD9: 0F 85 E3 02 00 00  jne         0000000140002DC2
  0000000140002ADF: 41 F7 C1 00 00 00  test        r9d,20000000h
                    20
  0000000140002AE6: 74 17              je          0000000140002AFF
  0000000140002AE8: B9 11 00 00 00     mov         ecx,11h
  0000000140002AED: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002AF2: E8 D9 EF FF FF     call        0000000140001AD0
  0000000140002AF7: 85 C0              test        eax,eax
  0000000140002AF9: 0F 85 C3 02 00 00  jne         0000000140002DC2
  0000000140002AFF: 41 F7 C7 20 00 00  test        r15d,20h
                    00
  0000000140002B06: 74 17              je          0000000140002B1F
  0000000140002B08: B9 18 00 00 00     mov         ecx,18h
  0000000140002B0D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002B12: E8 B9 EF FF FF     call        0000000140001AD0
  0000000140002B17: 85 C0              test        eax,eax
  0000000140002B19: 0F 85 A3 02 00 00  jne         0000000140002DC2
  0000000140002B1F: 41 F7 C1 00 10 00  test        r9d,1000h
                    00
  0000000140002B26: 74 17              je          0000000140002B3F
  0000000140002B28: B9 13 00 00 00     mov         ecx,13h
  0000000140002B2D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002B32: E8 99 EF FF FF     call        0000000140001AD0
  0000000140002B37: 85 C0              test        eax,eax
  0000000140002B39: 0F 85 83 02 00 00  jne         0000000140002DC2
  0000000140002B3F: 89 D0              mov         eax,edx
  0000000140002B41: 83 E0 18           and         eax,18h
  0000000140002B44: 83 F8 18           cmp         eax,18h
  0000000140002B47: 75 37              jne         0000000140002B80
  0000000140002B49: B9 01 00 00 00     mov         ecx,1
  0000000140002B4E: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002B53: E8 78 EF FF FF     call        0000000140001AD0
  0000000140002B58: 85 C0              test        eax,eax
  0000000140002B5A: 0F 85 62 02 00 00  jne         0000000140002DC2
  0000000140002B60: 41 F7 C7 00 40 00  test        r15d,4000h
                    00
  0000000140002B67: 74 17              je          0000000140002B80
  0000000140002B69: B9 25 00 00 00     mov         ecx,25h
  0000000140002B6E: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002B73: E8 58 EF FF FF     call        0000000140001AD0
  0000000140002B78: 85 C0              test        eax,eax
  0000000140002B7A: 0F 85 42 02 00 00  jne         0000000140002DC2
  0000000140002B80: 81 E2 E0 00 00 00  and         edx,0E0h
  0000000140002B86: 81 FA E0 00 00 00  cmp         edx,0E0h
  0000000140002B8C: 0F 85 6A 02 00 00  jne         0000000140002DFC
  0000000140002B92: B9 01 00 00 00     mov         ecx,1
  0000000140002B97: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002B9C: E8 2F EF FF FF     call        0000000140001AD0
  0000000140002BA1: 85 C0              test        eax,eax
  0000000140002BA3: 0F 85 19 02 00 00  jne         0000000140002DC2
  0000000140002BA9: 41 F7 C7 00 00 01  test        r15d,10000h
                    00
  0000000140002BB0: 74 17              je          0000000140002BC9
  0000000140002BB2: B9 19 00 00 00     mov         ecx,19h
  0000000140002BB7: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002BBC: E8 0F EF FF FF     call        0000000140001AD0
  0000000140002BC1: 85 C0              test        eax,eax
  0000000140002BC3: 0F 85 F9 01 00 00  jne         0000000140002DC2
  0000000140002BC9: 41 F7 C7 00 00 00  test        r15d,10000000h
                    10
  0000000140002BD0: 74 17              je          0000000140002BE9
  0000000140002BD2: B9 23 00 00 00     mov         ecx,23h
  0000000140002BD7: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002BDC: E8 EF EE FF FF     call        0000000140001AD0
  0000000140002BE1: 85 C0              test        eax,eax
  0000000140002BE3: 0F 85 D9 01 00 00  jne         0000000140002DC2
  0000000140002BE9: 41 F7 C7 00 00 00  test        r15d,8000000h
                    08
  0000000140002BF0: 74 17              je          0000000140002C09
  0000000140002BF2: B9 21 00 00 00     mov         ecx,21h
  0000000140002BF7: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002BFC: E8 CF EE FF FF     call        0000000140001AD0
  0000000140002C01: 85 C0              test        eax,eax
  0000000140002C03: 0F 85 B9 01 00 00  jne         0000000140002DC2
  0000000140002C09: 41 F7 C7 00 00 00  test        r15d,4000000h
                    04
  0000000140002C10: 74 17              je          0000000140002C29
  0000000140002C12: B9 22 00 00 00     mov         ecx,22h
  0000000140002C17: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002C1C: E8 AF EE FF FF     call        0000000140001AD0
  0000000140002C21: 85 C0              test        eax,eax
  0000000140002C23: 0F 85 99 01 00 00  jne         0000000140002DC2
  0000000140002C29: 41 F7 C7 00 00 02  test        r15d,20000h
                    00
  0000000140002C30: 74 17              je          0000000140002C49
  0000000140002C32: B9 1A 00 00 00     mov         ecx,1Ah
  0000000140002C37: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002C3C: E8 8F EE FF FF     call        0000000140001AD0
  0000000140002C41: 85 C0              test        eax,eax
  0000000140002C43: 0F 85 79 01 00 00  jne         0000000140002DC2
  0000000140002C49: 41 F7 C7 00 00 00  test        r15d,40000000h
                    40
  0000000140002C50: 74 17              je          0000000140002C69
  0000000140002C52: B9 26 00 00 00     mov         ecx,26h
  0000000140002C57: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002C5C: E8 6F EE FF FF     call        0000000140001AD0
  0000000140002C61: 85 C0              test        eax,eax
  0000000140002C63: 0F 85 59 01 00 00  jne         0000000140002DC2
  0000000140002C69: 44 89 F8           mov         eax,r15d
  0000000140002C6C: 25 00 00 00 80     and         eax,80000000h
  0000000140002C71: 3D 00 00 00 80     cmp         eax,80000000h
  0000000140002C76: 75 17              jne         0000000140002C8F
  0000000140002C78: B9 27 00 00 00     mov         ecx,27h
  0000000140002C7D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002C82: E8 49 EE FF FF     call        0000000140001AD0
  0000000140002C87: 85 C0              test        eax,eax
  0000000140002C89: 0F 85 33 01 00 00  jne         0000000140002DC2
  0000000140002C8F: 41 F7 C7 00 00 20  test        r15d,200000h
                    00
  0000000140002C96: 74 17              je          0000000140002CAF
  0000000140002C98: B9 1F 00 00 00     mov         ecx,1Fh
  0000000140002C9D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002CA2: E8 29 EE FF FF     call        0000000140001AD0
  0000000140002CA7: 85 C0              test        eax,eax
  0000000140002CA9: 0F 85 13 01 00 00  jne         0000000140002DC2
  0000000140002CAF: 41 F7 C3 02 00 00  test        r11d,2
                    00
  0000000140002CB6: 74 17              je          0000000140002CCF
  0000000140002CB8: B9 28 00 00 00     mov         ecx,28h
  0000000140002CBD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002CC2: E8 09 EE FF FF     call        0000000140001AD0
  0000000140002CC7: 85 C0              test        eax,eax
  0000000140002CC9: 0F 85 F3 00 00 00  jne         0000000140002DC2
  0000000140002CCF: 41 F7 C3 00 40 00  test        r11d,4000h
                    00
  0000000140002CD6: 74 17              je          0000000140002CEF
  0000000140002CD8: B9 2B 00 00 00     mov         ecx,2Bh
  0000000140002CDD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002CE2: E8 E9 ED FF FF     call        0000000140001AD0
  0000000140002CE7: 85 C0              test        eax,eax
  0000000140002CE9: 0F 85 D3 00 00 00  jne         0000000140002DC2
  0000000140002CEF: 41 F7 C2 04 00 00  test        r10d,4
                    00
  0000000140002CF6: 74 17              je          0000000140002D0F
  0000000140002CF8: B9 2A 00 00 00     mov         ecx,2Ah
  0000000140002CFD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002D02: E8 C9 ED FF FF     call        0000000140001AD0
  0000000140002D07: 85 C0              test        eax,eax
  0000000140002D09: 0F 85 B3 00 00 00  jne         0000000140002DC2
  0000000140002D0F: 41 F7 C2 08 00 00  test        r10d,8
                    00
  0000000140002D16: 74 17              je          0000000140002D2F
  0000000140002D18: B9 29 00 00 00     mov         ecx,29h
  0000000140002D1D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002D22: E8 A9 ED FF FF     call        0000000140001AD0
  0000000140002D27: 85 C0              test        eax,eax
  0000000140002D29: 0F 85 93 00 00 00  jne         0000000140002DC2
  0000000140002D2F: 41 F7 C3 00 10 00  test        r11d,1000h
                    00
  0000000140002D36: 74 13              je          0000000140002D4B
  0000000140002D38: B9 2C 00 00 00     mov         ecx,2Ch
  0000000140002D3D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002D42: E8 89 ED FF FF     call        0000000140001AD0
  0000000140002D47: 85 C0              test        eax,eax
  0000000140002D49: 75 77              jne         0000000140002DC2
  0000000140002D4B: 41 F7 C3 40 00 00  test        r11d,40h
                    00
  0000000140002D52: 74 13              je          0000000140002D67
  0000000140002D54: B9 2D 00 00 00     mov         ecx,2Dh
  0000000140002D59: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002D5E: E8 6D ED FF FF     call        0000000140001AD0
  0000000140002D63: 85 C0              test        eax,eax
  0000000140002D65: 75 5B              jne         0000000140002DC2
  0000000140002D67: 41 F7 C3 00 08 00  test        r11d,800h
                    00
  0000000140002D6E: 74 13              je          0000000140002D83
  0000000140002D70: B9 31 00 00 00     mov         ecx,31h
  0000000140002D75: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002D7A: E8 51 ED FF FF     call        0000000140001AD0
  0000000140002D7F: 85 C0              test        eax,eax
  0000000140002D81: 75 3F              jne         0000000140002DC2
  0000000140002D83: B8 07 00 00 00     mov         eax,7
  0000000140002D88: B9 01 00 00 00     mov         ecx,1
  0000000140002D8D: 0F A2              cpuid
  0000000140002D8F: A8 20              test        al,20h
  0000000140002D91: 74 13              je          0000000140002DA6
  0000000140002D93: B9 3E 00 00 00     mov         ecx,3Eh
  0000000140002D98: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002D9D: E8 2E ED FF FF     call        0000000140001AD0
  0000000140002DA2: 85 C0              test        eax,eax
  0000000140002DA4: 75 1C              jne         0000000140002DC2
  0000000140002DA6: 41 F7 C2 00 01 00  test        r10d,100h
                    00
  0000000140002DAD: 74 4D              je          0000000140002DFC
  0000000140002DAF: B9 39 00 00 00     mov         ecx,39h
  0000000140002DB4: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140002DB9: E8 12 ED FF FF     call        0000000140001AD0
  0000000140002DBE: 85 C0              test        eax,eax
  0000000140002DC0: 74 3A              je          0000000140002DFC
  0000000140002DC2: 0F 10 44 24 60     movups      xmm0,xmmword ptr [rsp+60h]
  0000000140002DC7: 0F 10 4C 24 50     movups      xmm1,xmmword ptr [rsp+50h]
  0000000140002DCC: 0F 10 54 24 70     movups      xmm2,xmmword ptr [rsp+70h]
  0000000140002DD1: 0F 10 9C 24 90 00  movups      xmm3,xmmword ptr [rsp+90h]
                    00 00
  0000000140002DD9: 0F 10 A4 24 80 00  movups      xmm4,xmmword ptr [rsp+80h]
                    00 00
  0000000140002DE1: 0F 10 6C 24 40     movups      xmm5,xmmword ptr [rsp+40h]
  0000000140002DE6: 48 81 C4 B0 00 00  add         rsp,0B0h
                    00
  0000000140002DED: 41 5F              pop         r15
  0000000140002DEF: 41 5B              pop         r11
  0000000140002DF1: 41 5A              pop         r10
  0000000140002DF3: 41 59              pop         r9
  0000000140002DF5: 41 58              pop         r8
  0000000140002DF7: 5E                 pop         rsi
  0000000140002DF8: 5B                 pop         rbx
  0000000140002DF9: 59                 pop         rcx
  0000000140002DFA: 5A                 pop         rdx
  0000000140002DFB: C3                 ret
  0000000140002DFC: 48 8D 0D B5 69 00  lea         rcx,[??_C@_0BC@A@INTEL_ISA_DISABLE?$AA@]
                    00
  0000000140002E03: E8 54 50 00 00     call        getenv
  0000000140002E08: 48 89 C3           mov         rbx,rax
  0000000140002E0B: E8 52 50 00 00     call        _errno
  0000000140002E10: C7 00 00 00 00 00  mov         dword ptr [rax],0
  0000000140002E16: 48 85 DB           test        rbx,rbx
  0000000140002E19: 74 23              je          0000000140002E3E
  0000000140002E1B: 48 89 D9           mov         rcx,rbx
  0000000140002E1E: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  0000000140002E23: E8 28 EA FF FF     call        0000000140001850
  0000000140002E28: 85 C0              test        eax,eax
  0000000140002E2A: 7E 12              jle         0000000140002E3E
  0000000140002E2C: F3 0F 6F 44 24 30  movdqu      xmm0,xmmword ptr [rsp+30h]
  0000000140002E32: 66 0F DF 44 24 20  pandn       xmm0,xmmword ptr [rsp+20h]
  0000000140002E38: F3 0F 7F 44 24 20  movdqu      xmmword ptr [rsp+20h],xmm0
  0000000140002E3E: 83 FE 01           cmp         esi,1
  0000000140002E41: 0F 84 9A 00 00 00  je          0000000140002EE1
  0000000140002E47: 48 8D 05 82 A1 00  lea         rax,[__intel_cpu_feature_indicator_x]
                    00
  0000000140002E4E: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140002E53: E8 58 EC FF FF     call        0000000140001AB0
  0000000140002E58: 0F 10 44 24 60     movups      xmm0,xmmword ptr [rsp+60h]
  0000000140002E5D: 33 C0              xor         eax,eax
  0000000140002E5F: 0F 10 4C 24 50     movups      xmm1,xmmword ptr [rsp+50h]
  0000000140002E64: 0F 10 54 24 70     movups      xmm2,xmmword ptr [rsp+70h]
  0000000140002E69: 0F 10 9C 24 90 00  movups      xmm3,xmmword ptr [rsp+90h]
                    00 00
  0000000140002E71: 0F 10 A4 24 80 00  movups      xmm4,xmmword ptr [rsp+80h]
                    00 00
  0000000140002E79: 0F 10 6C 24 40     movups      xmm5,xmmword ptr [rsp+40h]
  0000000140002E7E: 48 81 C4 B0 00 00  add         rsp,0B0h
                    00
  0000000140002E85: 41 5F              pop         r15
  0000000140002E87: 41 5B              pop         r11
  0000000140002E89: 41 5A              pop         r10
  0000000140002E8B: 41 59              pop         r9
  0000000140002E8D: 41 58              pop         r8
  0000000140002E8F: 5E                 pop         rsi
  0000000140002E90: 5B                 pop         rbx
  0000000140002E91: 59                 pop         rcx
  0000000140002E92: 5A                 pop         rdx
  0000000140002E93: C3                 ret
  0000000140002E94: 48 8D 05 25 A1 00  lea         rax,[__intel_cpu_feature_indicator]
                    00
  0000000140002E9B: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140002EA0: E8 0B EC FF FF     call        0000000140001AB0
  0000000140002EA5: 0F 10 44 24 60     movups      xmm0,xmmword ptr [rsp+60h]
  0000000140002EAA: 33 C0              xor         eax,eax
  0000000140002EAC: 0F 10 4C 24 50     movups      xmm1,xmmword ptr [rsp+50h]
  0000000140002EB1: 0F 10 54 24 70     movups      xmm2,xmmword ptr [rsp+70h]
  0000000140002EB6: 0F 10 9C 24 90 00  movups      xmm3,xmmword ptr [rsp+90h]
                    00 00
  0000000140002EBE: 0F 10 A4 24 80 00  movups      xmm4,xmmword ptr [rsp+80h]
                    00 00
  0000000140002EC6: 0F 10 6C 24 40     movups      xmm5,xmmword ptr [rsp+40h]
  0000000140002ECB: 48 81 C4 B0 00 00  add         rsp,0B0h
                    00
  0000000140002ED2: 41 5F              pop         r15
  0000000140002ED4: 41 5B              pop         r11
  0000000140002ED6: 41 5A              pop         r10
  0000000140002ED8: 41 59              pop         r9
  0000000140002EDA: 41 58              pop         r8
  0000000140002EDC: 5E                 pop         rsi
  0000000140002EDD: 5B                 pop         rbx
  0000000140002EDE: 59                 pop         rcx
  0000000140002EDF: 5A                 pop         rdx
  0000000140002EE0: C3                 ret
  0000000140002EE1: 48 8D 05 D8 A0 00  lea         rax,[__intel_cpu_feature_indicator]
                    00
  0000000140002EE8: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140002EED: E8 BE EB FF FF     call        0000000140001AB0
  0000000140002EF2: E9 50 FF FF FF     jmp         0000000140002E47
  0000000140002EF7: 81 BC 24 A4 00 00  cmp         dword ptr [rsp+0A4h],756E6547h
                    00 47 65 6E 75
  0000000140002F02: 75 90              jne         0000000140002E94
  0000000140002F04: 81 BC 24 AC 00 00  cmp         dword ptr [rsp+0ACh],49656E69h
                    00 69 6E 65 49
  0000000140002F0F: 75 83              jne         0000000140002E94
  0000000140002F11: 81 BC 24 A8 00 00  cmp         dword ptr [rsp+0A8h],6C65746Eh
                    00 6E 74 65 6C
  0000000140002F1C: 0F 85 72 FF FF FF  jne         0000000140002E94
  0000000140002F22: E9 35 F6 FF FF     jmp         000000014000255C
  0000000140002F27: 66 0F 1F 84 00 00  nop         word ptr [rax+rax]
                    00 00 00
sprintf:
  0000000140002F30: 56                 push        rsi
  0000000140002F31: 57                 push        rdi
  0000000140002F32: 55                 push        rbp
  0000000140002F33: 48 83 EC 40        sub         rsp,40h
  0000000140002F37: 48 89 CF           mov         rdi,rcx
  0000000140002F3A: 48 89 54 24 68     mov         qword ptr [rsp+68h],rdx
  0000000140002F3F: 48 8D 44 24 70     lea         rax,[rsp+70h]
  0000000140002F44: 4C 89 00           mov         qword ptr [rax],r8
  0000000140002F47: 4C 89 48 08        mov         qword ptr [rax+8],r9
  0000000140002F4B: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000140002F50: 48 8B 74 24 68     mov         rsi,qword ptr [rsp+68h]
  0000000140002F55: 48 8B 6C 24 30     mov         rbp,qword ptr [rsp+30h]
  0000000140002F5A: E8 91 E2 FF FF     call        __local_stdio_printf_options
  0000000140002F5F: 49 89 E2           mov         r10,rsp
  0000000140002F62: 48 89 FA           mov         rdx,rdi
  0000000140002F65: 49 C7 C0 FF FF FF  mov         r8,0FFFFFFFFFFFFFFFFh
                    FF
  0000000140002F6C: 49 89 F1           mov         r9,rsi
  0000000140002F6F: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000140002F72: 48 83 C9 01        or          rcx,1
  0000000140002F76: 49 C7 42 20 00 00  mov         qword ptr [r10+20h],0
                    00 00
  0000000140002F7E: 49 89 6A 28        mov         qword ptr [r10+28h],rbp
  0000000140002F82: E8 E1 4E 00 00     call        __stdio_common_vsprintf
  0000000140002F87: BA FF FF FF FF     mov         edx,0FFFFFFFFh
  0000000140002F8C: 85 C0              test        eax,eax
  0000000140002F8E: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  0000000140002F97: 0F 4C C2           cmovl       eax,edx
  0000000140002F9A: 48 83 C4 40        add         rsp,40h
  0000000140002F9E: 5D                 pop         rbp
  0000000140002F9F: 5F                 pop         rdi
  0000000140002FA0: 5E                 pop         rsi
  0000000140002FA1: C3                 ret
  0000000140002FA2: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140002FA9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
__libirc_get_msg:
  0000000140002FB0: 41 55              push        r13
  0000000140002FB2: 41 56              push        r14
  0000000140002FB4: 48 81 EC D8 00 00  sub         rsp,0D8h
                    00
  0000000140002FBB: 41 89 CE           mov         r14d,ecx
  0000000140002FBE: 89 94 24 F8 00 00  mov         dword ptr [rsp+0F8h],edx
                    00
  0000000140002FC5: 4C 89 84 24 00 01  mov         qword ptr [rsp+100h],r8
                    00 00
  0000000140002FCD: 4C 89 8C 24 08 01  mov         qword ptr [rsp+108h],r9
                    00 00
  0000000140002FD5: 48 8B 05 4C 90 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000140002FDC: 48 33 C4           xor         rax,rsp
  0000000140002FDF: 48 89 84 24 D0 00  mov         qword ptr [rsp+0D0h],rax
                    00 00
  0000000140002FE7: 45 85 F6           test        r14d,r14d
  0000000140002FEA: 0F 84 FB 00 00 00  je          00000001400030EB
  0000000140002FF0: 83 3D 39 90 00 00  cmp         dword ptr [14000C030h],0
                    00
  0000000140002FF7: 74 4E              je          0000000140003047
  0000000140002FF9: C7 05 2D 90 00 00  mov         dword ptr [14000C030h],0
                    00 00 00 00
  0000000140003003: FF 15 4F 60 00 00  call        qword ptr [__imp_GetThreadLocale]
  0000000140003009: 48 8D 15 70 78 00  lea         rdx,[??_C@_06A@?$CFlu?1?$CFs?$AA@]
                    00
  0000000140003010: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140003015: 41 89 C0           mov         r8d,eax
  0000000140003018: 4C 8D 0D 69 78 00  lea         r9,[??_C@_0M@A@irc_msg?4dll?$AA@]
                    00
  000000014000301F: E8 0C FF FF FF     call        sprintf
  0000000140003024: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140003029: FF 15 31 60 00 00  call        qword ptr [__imp_LoadLibraryA]
  000000014000302F: 48 89 05 EA A5 00  mov         qword ptr [14000D620h],rax
                    00
  0000000140003036: 48 85 C0           test        rax,rax
  0000000140003039: 74 0C              je          0000000140003047
  000000014000303B: C7 05 EF 8F 00 00  mov         dword ptr [14000C034h],0
                    00 00 00 00
  0000000140003045: EB 25              jmp         000000014000306C
  0000000140003047: 8B 05 E7 8F 00 00  mov         eax,dword ptr [14000C034h]
  000000014000304D: 85 C0              test        eax,eax
  000000014000304F: 74 1B              je          000000014000306C
  0000000140003051: 4D 63 F6           movsxd      r14,r14d
  0000000140003054: 48 8D 05 A5 CF FF  lea         rax,[140000000h]
                    FF
  000000014000305B: 49 C1 E6 04        shl         r14,4
  000000014000305F: 4E 8B AC 30 E8 97  mov         r13,qword ptr [rax+r14+97E8h]
                    00 00
  0000000140003067: E9 86 00 00 00     jmp         00000001400030F2
  000000014000306C: 49 63 C6           movsxd      rax,r14d
  000000014000306F: 4C 8D 2D 8A CF FF  lea         r13,[140000000h]
                    FF
  0000000140003076: 48 C1 E0 04        shl         rax,4
  000000014000307A: 49 89 E3           mov         r11,rsp
  000000014000307D: 41 81 C6 00 00 00  add         r14d,80000000h
                    80
  0000000140003084: B9 00 09 00 00     mov         ecx,900h
  0000000140003089: 48 8B 15 90 A5 00  mov         rdx,qword ptr [14000D620h]
                    00
  0000000140003090: 45 89 F0           mov         r8d,r14d
  0000000140003093: 41 B9 09 04 00 00  mov         r9d,409h
  0000000140003099: 4C 8D 54 24 40     lea         r10,[rsp+40h]
  000000014000309E: 4D 8B AC 05 E8 97  mov         r13,qword ptr [r13+rax+97E8h]
                    00 00
  00000001400030A6: 4D 89 53 20        mov         qword ptr [r11+20h],r10
  00000001400030AA: 41 C7 43 28 00 02  mov         dword ptr [r11+28h],200h
                    00 00
  00000001400030B2: 49 C7 43 30 00 00  mov         qword ptr [r11+30h],0
                    00 00
  00000001400030BA: FF 15 A8 5F 00 00  call        qword ptr [__imp_FormatMessageA]
  00000001400030C0: 85 C0              test        eax,eax
  00000001400030C2: 74 2E              je          00000001400030F2
  00000001400030C4: 4C 8B 6C 24 40     mov         r13,qword ptr [rsp+40h]
  00000001400030C9: 4C 89 E9           mov         rcx,r13
  00000001400030CC: E8 7F 4D 00 00     call        strlen
  00000001400030D1: 49 89 C6           mov         r14,rax
  00000001400030D4: 49 83 FE 01        cmp         r14,1
  00000001400030D8: 76 18              jbe         00000001400030F2
  00000001400030DA: 4D 8D 46 FE        lea         r8,[r14-2]
  00000001400030DE: 43 80 3C 28 0D     cmp         byte ptr [r8+r13],0Dh
  00000001400030E3: 0F 84 BA 00 00 00  je          00000001400031A3
  00000001400030E9: EB 07              jmp         00000001400030F2
  00000001400030EB: 4C 8D 2D A2 77 00  lea         r13,[??_C@_00A@?$AA@]
                    00
  00000001400030F2: 83 BC 24 F8 00 00  cmp         dword ptr [rsp+0F8h],0
                    00 00
  00000001400030FA: 7E 78              jle         0000000140003174
  00000001400030FC: 4C 8D 84 24 00 01  lea         r8,[rsp+100h]
                    00 00
  0000000140003104: 4C 89 44 24 48     mov         qword ptr [rsp+48h],r8
  0000000140003109: 4C 8B 74 24 48     mov         r14,qword ptr [rsp+48h]
  000000014000310E: E8 DD E0 FF FF     call        __local_stdio_printf_options
  0000000140003113: 49 89 E2           mov         r10,rsp
  0000000140003116: 48 8D 15 03 9F 00  lea         rdx,[14000D020h]
                    00
  000000014000311D: 41 B8 00 02 00 00  mov         r8d,200h
  0000000140003123: 4D 89 E9           mov         r9,r13
  0000000140003126: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000140003129: 48 83 C9 02        or          rcx,2
  000000014000312D: 49 C7 42 20 00 00  mov         qword ptr [r10+20h],0
                    00 00
  0000000140003135: 4D 89 72 28        mov         qword ptr [r10+28h],r14
  0000000140003139: E8 2A 4D 00 00     call        __stdio_common_vsprintf
  000000014000313E: 33 C0              xor         eax,eax
  0000000140003140: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000140003145: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+0D0h]
                    00 00
  000000014000314D: 48 89 84 24 D0 00  mov         qword ptr [rsp+0D0h],rax
                    00 00
  0000000140003155: 48 33 CC           xor         rcx,rsp
  0000000140003158: 48 3B 0D C9 8E 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  000000014000315F: 75 79              jne         00000001400031DA
  0000000140003161: 48 8D 05 B8 9E 00  lea         rax,[14000D020h]
                    00
  0000000140003168: 48 81 C4 D8 00 00  add         rsp,0D8h
                    00
  000000014000316F: 41 5E              pop         r14
  0000000140003171: 41 5D              pop         r13
  0000000140003173: C3                 ret
  0000000140003174: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+0D0h]
                    00 00
  000000014000317C: 48 C7 84 24 D0 00  mov         qword ptr [rsp+0D0h],0
                    00 00 00 00 00 00
  0000000140003188: 48 33 CC           xor         rcx,rsp
  000000014000318B: 48 3B 0D 96 8E 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  0000000140003192: 75 46              jne         00000001400031DA
  0000000140003194: 4C 89 E8           mov         rax,r13
  0000000140003197: 48 81 C4 D8 00 00  add         rsp,0D8h
                    00
  000000014000319E: 41 5E              pop         r14
  00000001400031A0: 41 5D              pop         r13
  00000001400031A2: C3                 ret
  00000001400031A3: 43 80 7C 35 FF 0A  cmp         byte ptr [r13+r14-1],0Ah
  00000001400031A9: 0F 85 43 FF FF FF  jne         00000001400030F2
  00000001400031AF: 48 8D 0D 6A A0 00  lea         rcx,[14000D220h]
                    00
  00000001400031B6: 4C 89 EA           mov         rdx,r13
  00000001400031B9: E8 B0 4C 00 00     call        strncpy
  00000001400031BE: 48 8D 05 3B CE FF  lea         rax,[140000000h]
                    FF
  00000001400031C5: 4C 8D 2D 54 A0 00  lea         r13,[14000D220h]
                    00
  00000001400031CC: 42 C6 84 30 1E D2  mov         byte ptr [rax+r14+0D21Eh],0
                    00 00 00
  00000001400031D5: E9 18 FF FF FF     jmp         00000001400030F2
  00000001400031DA: E8 B1 4C 00 00     call        __security_check_cookie
  00000001400031DF: 90                 nop
__libirc_print:
  00000001400031E0: 41 56              push        r14
  00000001400031E2: 41 57              push        r15
  00000001400031E4: 55                 push        rbp
  00000001400031E5: 48 81 EC E0 00 00  sub         rsp,0E0h
                    00
  00000001400031EC: 41 89 D7           mov         r15d,edx
  00000001400031EF: 44 89 84 24 10 01  mov         dword ptr [rsp+110h],r8d
                    00 00
  00000001400031F7: 41 89 CE           mov         r14d,ecx
  00000001400031FA: 4C 89 8C 24 18 01  mov         qword ptr [rsp+118h],r9
                    00 00
  0000000140003202: 48 8B 05 1F 8E 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000140003209: 48 33 C4           xor         rax,rsp
  000000014000320C: 48 89 84 24 D0 00  mov         qword ptr [rsp+0D0h],rax
                    00 00
  0000000140003214: 45 85 FF           test        r15d,r15d
  0000000140003217: 75 41              jne         000000014000325A
  0000000140003219: 41 83 FE 01        cmp         r14d,1
  000000014000321D: 48 8D 0D 9C 69 00  lea         rcx,[??_C@_01A@?6?$AA@]
                    00
  0000000140003224: E8 57 DF FF FF     call        printf
  0000000140003229: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+0D0h]
                    00 00
  0000000140003231: 48 C7 84 24 D0 00  mov         qword ptr [rsp+0D0h],0
                    00 00 00 00 00 00
  000000014000323D: 48 33 CC           xor         rcx,rsp
  0000000140003240: 48 3B 0D E1 8D 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  0000000140003247: 0F 85 9F 01 00 00  jne         00000001400033EC
  000000014000324D: 48 81 C4 E0 00 00  add         rsp,0E0h
                    00
  0000000140003254: 5D                 pop         rbp
  0000000140003255: 41 5F              pop         r15
  0000000140003257: 41 5E              pop         r14
  0000000140003259: C3                 ret
  000000014000325A: 83 3D CF 8D 00 00  cmp         dword ptr [14000C030h],0
                    00
  0000000140003261: 74 4E              je          00000001400032B1
  0000000140003263: C7 05 C3 8D 00 00  mov         dword ptr [14000C030h],0
                    00 00 00 00
  000000014000326D: FF 15 E5 5D 00 00  call        qword ptr [__imp_GetThreadLocale]
  0000000140003273: 48 8D 15 06 76 00  lea         rdx,[??_C@_06A@?$CFlu?1?$CFs?$AA@]
                    00
  000000014000327A: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  000000014000327F: 41 89 C0           mov         r8d,eax
  0000000140003282: 4C 8D 0D FF 75 00  lea         r9,[??_C@_0M@A@irc_msg?4dll?$AA@]
                    00
  0000000140003289: E8 A2 FC FF FF     call        sprintf
  000000014000328E: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140003293: FF 15 C7 5D 00 00  call        qword ptr [__imp_LoadLibraryA]
  0000000140003299: 48 89 05 80 A3 00  mov         qword ptr [14000D620h],rax
                    00
  00000001400032A0: 48 85 C0           test        rax,rax
  00000001400032A3: 74 0C              je          00000001400032B1
  00000001400032A5: C7 05 85 8D 00 00  mov         dword ptr [14000C034h],0
                    00 00 00 00
  00000001400032AF: EB 22              jmp         00000001400032D3
  00000001400032B1: 8B 05 7D 8D 00 00  mov         eax,dword ptr [14000C034h]
  00000001400032B7: 85 C0              test        eax,eax
  00000001400032B9: 74 18              je          00000001400032D3
  00000001400032BB: 4D 63 FF           movsxd      r15,r15d
  00000001400032BE: 48 8D 05 3B CD FF  lea         rax,[140000000h]
                    FF
  00000001400032C5: 49 C1 E7 04        shl         r15,4
  00000001400032C9: 4A 8B AC 38 E8 97  mov         rbp,qword ptr [rax+r15+97E8h]
                    00 00
  00000001400032D1: EB 7D              jmp         0000000140003350
  00000001400032D3: 49 63 C7           movsxd      rax,r15d
  00000001400032D6: 48 8D 2D 23 CD FF  lea         rbp,[140000000h]
                    FF
  00000001400032DD: 48 C1 E0 04        shl         rax,4
  00000001400032E1: 49 89 E3           mov         r11,rsp
  00000001400032E4: 41 81 C7 00 00 00  add         r15d,80000000h
                    80
  00000001400032EB: B9 00 09 00 00     mov         ecx,900h
  00000001400032F0: 48 8B 15 29 A3 00  mov         rdx,qword ptr [14000D620h]
                    00
  00000001400032F7: 45 89 F8           mov         r8d,r15d
  00000001400032FA: 41 B9 09 04 00 00  mov         r9d,409h
  0000000140003300: 4C 8D 54 24 40     lea         r10,[rsp+40h]
  0000000140003305: 48 8B AC 05 E8 97  mov         rbp,qword ptr [rbp+rax+97E8h]
                    00 00
  000000014000330D: 4D 89 53 20        mov         qword ptr [r11+20h],r10
  0000000140003311: 41 C7 43 28 00 02  mov         dword ptr [r11+28h],200h
                    00 00
  0000000140003319: 49 C7 43 30 00 00  mov         qword ptr [r11+30h],0
                    00 00
  0000000140003321: FF 15 41 5D 00 00  call        qword ptr [__imp_FormatMessageA]
  0000000140003327: 85 C0              test        eax,eax
  0000000140003329: 74 25              je          0000000140003350
  000000014000332B: 48 8B 6C 24 40     mov         rbp,qword ptr [rsp+40h]
  0000000140003330: 48 89 E9           mov         rcx,rbp
  0000000140003333: E8 18 4B 00 00     call        strlen
  0000000140003338: 49 89 C7           mov         r15,rax
  000000014000333B: 49 83 FF 01        cmp         r15,1
  000000014000333F: 76 0F              jbe         0000000140003350
  0000000140003341: 4D 8D 47 FE        lea         r8,[r15-2]
  0000000140003345: 41 80 3C 28 0D     cmp         byte ptr [r8+rbp],0Dh
  000000014000334A: 0F 84 A1 00 00 00  je          00000001400033F1
  0000000140003350: 83 BC 24 10 01 00  cmp         dword ptr [rsp+110h],0
                    00 00
  0000000140003358: 7E 52              jle         00000001400033AC
  000000014000335A: 48 8D 84 24 18 01  lea         rax,[rsp+118h]
                    00 00
  0000000140003362: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000140003367: 4C 8B 7C 24 48     mov         r15,qword ptr [rsp+48h]
  000000014000336C: E8 7F DE FF FF     call        __local_stdio_printf_options
  0000000140003371: 49 89 E2           mov         r10,rsp
  0000000140003374: 48 8D 15 A5 A0 00  lea         rdx,[14000D420h]
                    00
  000000014000337B: 41 B8 00 02 00 00  mov         r8d,200h
  0000000140003381: 49 89 E9           mov         r9,rbp
  0000000140003384: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000140003387: 48 83 C9 02        or          rcx,2
  000000014000338B: 49 C7 42 20 00 00  mov         qword ptr [r10+20h],0
                    00 00
  0000000140003393: 4D 89 7A 28        mov         qword ptr [r10+28h],r15
  0000000140003397: E8 CC 4A 00 00     call        __stdio_common_vsprintf
  000000014000339C: 48 C7 44 24 48 00  mov         qword ptr [rsp+48h],0
                    00 00 00
  00000001400033A5: 48 8D 2D 74 A0 00  lea         rbp,[14000D420h]
                    00
  00000001400033AC: 41 83 FE 01        cmp         r14d,1
  00000001400033B0: 48 8D 0D E1 74 00  lea         rcx,[??_C@_03A@?$CFs?6?$AA@]
                    00
  00000001400033B7: 48 89 EA           mov         rdx,rbp
  00000001400033BA: E8 C1 DD FF FF     call        printf
  00000001400033BF: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+0D0h]
                    00 00
  00000001400033C7: 48 C7 84 24 D0 00  mov         qword ptr [rsp+0D0h],0
                    00 00 00 00 00 00
  00000001400033D3: 48 33 CC           xor         rcx,rsp
  00000001400033D6: 48 3B 0D 4B 8C 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  00000001400033DD: 75 0D              jne         00000001400033EC
  00000001400033DF: 48 81 C4 E0 00 00  add         rsp,0E0h
                    00
  00000001400033E6: 5D                 pop         rbp
  00000001400033E7: 41 5F              pop         r15
  00000001400033E9: 41 5E              pop         r14
  00000001400033EB: C3                 ret
  00000001400033EC: E8 9F 4A 00 00     call        __security_check_cookie
  00000001400033F1: 42 80 7C 3D FF 0A  cmp         byte ptr [rbp+r15-1],0Ah
  00000001400033F7: 0F 85 53 FF FF FF  jne         0000000140003350
  00000001400033FD: 48 8D 0D 1C 9E 00  lea         rcx,[14000D220h]
                    00
  0000000140003404: 48 89 EA           mov         rdx,rbp
  0000000140003407: E8 62 4A 00 00     call        strncpy
  000000014000340C: 48 8D 05 ED CB FF  lea         rax,[140000000h]
                    FF
  0000000140003413: 48 8D 2D 06 9E 00  lea         rbp,[14000D220h]
                    00
  000000014000341A: 42 C6 84 38 1E D2  mov         byte ptr [rax+r15+0D21Eh],0
                    00 00 00
  0000000140003423: E9 28 FF FF FF     jmp         0000000140003350
  0000000140003428: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
__intel_proc_init_ftzdazule:
  0000000140003430: 41 56              push        r14
  0000000140003432: 41 57              push        r15
  0000000140003434: 55                 push        rbp
  0000000140003435: 48 81 EC 40 02 00  sub         rsp,240h
                    00
  000000014000343C: 41 89 D7           mov         r15d,edx
  000000014000343F: 44 89 FD           mov         ebp,r15d
  0000000140003442: 45 89 FE           mov         r14d,r15d
  0000000140003445: 48 8B 05 DC 8B 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000014000344C: 83 E5 04           and         ebp,4
  000000014000344F: 48 33 C4           xor         rax,rsp
  0000000140003452: 48 89 84 24 30 02  mov         qword ptr [rsp+230h],rax
                    00 00
  000000014000345A: 41 83 E6 02        and         r14d,2
  000000014000345E: 74 1D              je          000000014000347D
  0000000140003460: F6 C1 02           test        cl,2
  0000000140003463: 74 34              je          0000000140003499
  0000000140003465: 85 ED              test        ebp,ebp
  0000000140003467: 74 05              je          000000014000346E
  0000000140003469: F6 C1 04           test        cl,4
  000000014000346C: 74 2B              je          0000000140003499
  000000014000346E: 41 F7 C7 01 00 00  test        r15d,1
                    00
  0000000140003475: 0F 85 C0 00 00 00  jne         000000014000353B
  000000014000347B: EB 56              jmp         00000001400034D3
  000000014000347D: 85 ED              test        ebp,ebp
  000000014000347F: 0F 84 80 00 00 00  je          0000000140003505
  0000000140003485: F6 C1 04           test        cl,4
  0000000140003488: 74 0F              je          0000000140003499
  000000014000348A: 41 F7 C7 01 00 00  test        r15d,1
                    00
  0000000140003491: 0F 85 A4 00 00 00  jne         000000014000353B
  0000000140003497: EB 53              jmp         00000001400034EC
  0000000140003499: 33 D2              xor         edx,edx
  000000014000349B: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  00000001400034A0: 41 B8 00 02 00 00  mov         r8d,200h
  00000001400034A6: E8 03 49 00 00     call        memset
  00000001400034AB: 90                 nop
  00000001400034AC: 0F AE 44 24 30     fxsave      [rsp+30h]
  00000001400034B1: 33 D2              xor         edx,edx
  00000001400034B3: 8B 44 24 4C        mov         eax,dword ptr [rsp+4Ch]
  00000001400034B7: A8 40              test        al,40h
  00000001400034B9: 44 0F 44 F2        cmove       r14d,edx
  00000001400034BD: A9 00 00 02 00     test        eax,20000h
  00000001400034C2: 0F 44 EA           cmove       ebp,edx
  00000001400034C5: 41 F7 C7 01 00 00  test        r15d,1
                    00
  00000001400034CC: 75 6D              jne         000000014000353B
  00000001400034CE: 45 85 F6           test        r14d,r14d
  00000001400034D1: 74 15              je          00000001400034E8
  00000001400034D3: 0F AE 5C 24 20     stmxcsr     dword ptr [rsp+20h]
  00000001400034D8: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000001400034DC: 83 C8 40           or          eax,40h
  00000001400034DF: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000001400034E3: 0F AE 54 24 20     ldmxcsr     dword ptr [rsp+20h]
  00000001400034E8: 85 ED              test        ebp,ebp
  00000001400034EA: 74 22              je          000000014000350E
  00000001400034EC: 0F AE 5C 24 20     stmxcsr     dword ptr [rsp+20h]
  00000001400034F1: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000001400034F5: 0D 00 00 02 00     or          eax,20000h
  00000001400034FA: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000001400034FE: 0F AE 54 24 20     ldmxcsr     dword ptr [rsp+20h]
  0000000140003503: EB 09              jmp         000000014000350E
  0000000140003505: 41 F7 C7 01 00 00  test        r15d,1
                    00
  000000014000350C: 75 2D              jne         000000014000353B
  000000014000350E: 48 8B 8C 24 30 02  mov         rcx,qword ptr [rsp+230h]
                    00 00
  0000000140003516: 48 C7 84 24 30 02  mov         qword ptr [rsp+230h],0
                    00 00 00 00 00 00
  0000000140003522: 48 33 CC           xor         rcx,rsp
  0000000140003525: 48 3B 0D FC 8A 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  000000014000352C: 75 29              jne         0000000140003557
  000000014000352E: 48 81 C4 40 02 00  add         rsp,240h
                    00
  0000000140003535: 5D                 pop         rbp
  0000000140003536: 41 5F              pop         r15
  0000000140003538: 41 5E              pop         r14
  000000014000353A: C3                 ret
  000000014000353B: 0F AE 5C 24 20     stmxcsr     dword ptr [rsp+20h]
  0000000140003540: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000140003544: 0D 00 80 00 00     or          eax,8000h
  0000000140003549: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000014000354D: 0F AE 54 24 20     ldmxcsr     dword ptr [rsp+20h]
  0000000140003552: E9 77 FF FF FF     jmp         00000001400034CE
  0000000140003557: E8 34 49 00 00     call        __security_check_cookie
  000000014000355C: 90                 nop
  000000014000355D: 0F 1F 00           nop         dword ptr [rax]
__intel_avx_rep_memset:
  0000000140003560: 57                 push        rdi
  0000000140003561: 41 57              push        r15
  0000000140003563: 49 89 CB           mov         r11,rcx
  0000000140003566: 4D 89 DA           mov         r10,r11
  0000000140003569: 48 B8 01 01 01 01  mov         rax,101010101010101h
                    01 01 01 01
  0000000140003573: 4C 0F B6 CA        movzx       r9,dl
  0000000140003577: 4C 0F AF C8        imul        r9,rax
  000000014000357B: 48 8D 15 7E 0C 00  lea         rdx,[140004200h]
                    00
  0000000140003582: C4 C1 F9 6E C1     vmovq       xmm0,r9
  0000000140003587: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  000000014000358E: 77 10              ja          00000001400035A0
  0000000140003590: 4C 89 D7           mov         rdi,r10
  0000000140003593: 49 03 F8           add         rdi,r8
  0000000140003596: 4A 2B 14 C2        sub         rdx,qword ptr [rdx+r8*8]
  000000014000359A: 3E FF E2           jmp         rdx
  000000014000359D: 0F 1F 00           nop         dword ptr [rax]
  00000001400035A0: 48 8D 15 59 03 00  lea         rdx,[140003900h]
                    00
  00000001400035A7: 4C 89 D1           mov         rcx,r10
  00000001400035AA: 48 83 E1 1F        and         rcx,1Fh
  00000001400035AE: 74 23              je          00000001400035D3
  00000001400035B0: 48 F7 D9           neg         rcx
  00000001400035B3: 48 83 C1 20        add         rcx,20h
  00000001400035B7: 4C 2B C1           sub         r8,rcx
  00000001400035BA: 4C 89 D7           mov         rdi,r10
  00000001400035BD: 48 03 F9           add         rdi,rcx
  00000001400035C0: 48 2B 14 CA        sub         rdx,qword ptr [rdx+rcx*8]
  00000001400035C4: 3E FF E2           jmp         rdx
  00000001400035C7: 66 0F 1F 84 00 00  nop         word ptr [rax+rax]
                    00 00 00
  00000001400035D0: 4C 03 D1           add         r10,rcx
  00000001400035D3: 49 81 F8 00 01 00  cmp         r8,100h
                    00
  00000001400035DA: 0F 8C 30 01 00 00  jl          0000000140003710
  00000001400035E0: 48 8B 0D 69 92 00  mov         rcx,qword ptr [__libirc_data_cache_size]
                    00
  00000001400035E7: 48 89 CF           mov         rdi,rcx
  00000001400035EA: 48 C1 E9 04        shr         rcx,4
  00000001400035EE: 48 2B F9           sub         rdi,rcx
  00000001400035F1: 4C 3B C7           cmp         r8,rdi
  00000001400035F4: 73 5A              jae         0000000140003650
  00000001400035F6: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  00000001400035FB: C4 C1 7D 7F 02     vmovdqa     ymmword ptr [r10],ymm0
  0000000140003600: C4 C1 7D 7F 42 20  vmovdqa     ymmword ptr [r10+20h],ymm0
  0000000140003606: C4 C1 7D 7F 42 40  vmovdqa     ymmword ptr [r10+40h],ymm0
  000000014000360C: C4 C1 7D 7F 42 60  vmovdqa     ymmword ptr [r10+60h],ymm0
  0000000140003612: 49 81 C2 00 01 00  add         r10,100h
                    00
  0000000140003619: 49 81 E8 00 01 00  sub         r8,100h
                    00
  0000000140003620: C4 C1 7D 7F 42 80  vmovdqa     ymmword ptr [r10-80h],ymm0
  0000000140003626: C4 C1 7D 7F 42 A0  vmovdqa     ymmword ptr [r10-60h],ymm0
  000000014000362C: C4 C1 7D 7F 42 C0  vmovdqa     ymmword ptr [r10-40h],ymm0
  0000000140003632: C4 C1 7D 7F 42 E0  vmovdqa     ymmword ptr [r10-20h],ymm0
  0000000140003638: 49 81 F8 00 01 00  cmp         r8,100h
                    00
  000000014000363F: 7D BA              jge         00000001400035FB
  0000000140003641: E9 DA 00 00 00     jmp         0000000140003720
  0000000140003646: 0F 1F 00           nop         dword ptr [rax]
  0000000140003649: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003650: 4C 89 D7           mov         rdi,r10
  0000000140003653: 4C 89 C8           mov         rax,r9
  0000000140003656: 4C 89 C1           mov         rcx,r8
  0000000140003659: FC                 cld
  000000014000365A: F3 AA              rep stos    byte ptr [rdi]
  000000014000365C: E9 AF 0F 00 00     jmp         0000000140004610
  0000000140003661: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140003669: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003670: 45 88 0A           mov         byte ptr [r10],r9b
  0000000140003673: E9 58 FF FF FF     jmp         00000001400035D0
  0000000140003678: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140003680: 66 45 89 0A        mov         word ptr [r10],r9w
  0000000140003684: E9 47 FF FF FF     jmp         00000001400035D0
  0000000140003689: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003690: 66 45 89 0A        mov         word ptr [r10],r9w
  0000000140003694: 45 88 4A 02        mov         byte ptr [r10+2],r9b
  0000000140003698: E9 33 FF FF FF     jmp         00000001400035D0
  000000014000369D: 0F 1F 00           nop         dword ptr [rax]
  00000001400036A0: 45 89 0A           mov         dword ptr [r10],r9d
  00000001400036A3: E9 28 FF FF FF     jmp         00000001400035D0
  00000001400036A8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400036B0: 45 89 0A           mov         dword ptr [r10],r9d
  00000001400036B3: 44 89 4F FC        mov         dword ptr [rdi-4],r9d
  00000001400036B7: E9 14 FF FF FF     jmp         00000001400035D0
  00000001400036BC: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400036C0: 4D 89 0A           mov         qword ptr [r10],r9
  00000001400036C3: E9 08 FF FF FF     jmp         00000001400035D0
  00000001400036C8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400036D0: 4D 89 0A           mov         qword ptr [r10],r9
  00000001400036D3: 4C 89 4F F8        mov         qword ptr [rdi-8],r9
  00000001400036D7: E9 F4 FE FF FF     jmp         00000001400035D0
  00000001400036DC: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400036E0: 4D 89 0A           mov         qword ptr [r10],r9
  00000001400036E3: 4D 89 4A 08        mov         qword ptr [r10+8],r9
  00000001400036E7: E9 E4 FE FF FF     jmp         00000001400035D0
  00000001400036EC: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400036F0: 4D 89 0A           mov         qword ptr [r10],r9
  00000001400036F3: 4D 89 4A 08        mov         qword ptr [r10+8],r9
  00000001400036F7: 4C 89 4F F0        mov         qword ptr [rdi-10h],r9
  00000001400036FB: 4C 89 4F F8        mov         qword ptr [rdi-8],r9
  00000001400036FF: E9 CC FE FF FF     jmp         00000001400035D0
  0000000140003704: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140003709: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003710: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140003715: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140003719: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003720: 4D 03 D0           add         r10,r8
  0000000140003723: 4C 89 D7           mov         rdi,r10
  0000000140003726: 49 83 E2 E0        and         r10,0FFFFFFFFFFFFFFE0h
  000000014000372A: 48 8D 15 CF 02 00  lea         rdx,[140003A00h]
                    00
  0000000140003731: 4A 2B 14 C2        sub         rdx,qword ptr [rdx+r8*8]
  0000000140003735: 3E FF E2           jmp         rdx
  0000000140003738: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140003740: C4 C1 7C 29 82 20  vmovaps     ymmword ptr [r10-0E0h],ymm0
                    FF FF FF
  0000000140003749: C4 C1 7C 29 82 40  vmovaps     ymmword ptr [r10-0C0h],ymm0
                    FF FF FF
  0000000140003752: C4 C1 7C 29 82 60  vmovaps     ymmword ptr [r10-0A0h],ymm0
                    FF FF FF
  000000014000375B: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140003760: C4 C1 7C 29 42 80  vmovaps     ymmword ptr [r10-80h],ymm0
  0000000140003766: C4 C1 7C 29 42 A0  vmovaps     ymmword ptr [r10-60h],ymm0
  000000014000376C: C4 C1 7C 29 42 C0  vmovaps     ymmword ptr [r10-40h],ymm0
  0000000140003772: C4 C1 7C 29 42 E0  vmovaps     ymmword ptr [r10-20h],ymm0
  0000000140003778: 49 89 F8           mov         r8,rdi
  000000014000377B: 49 83 E0 1F        and         r8,1Fh
  000000014000377F: 48 8D 15 7A 02 00  lea         rdx,[140003A00h]
                    00
  0000000140003786: 4A 2B 14 C2        sub         rdx,qword ptr [rdx+r8*8]
  000000014000378A: 3E FF E2           jmp         rdx
  000000014000378D: 0F 1F 00           nop         dword ptr [rax]
  0000000140003790: 45 88 0A           mov         byte ptr [r10],r9b
  0000000140003793: E9 78 0E 00 00     jmp         0000000140004610
  0000000140003798: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400037A0: E9 6B 0E 00 00     jmp         0000000140004610
  00000001400037A5: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400037A9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  00000001400037B0: 66 45 89 0A        mov         word ptr [r10],r9w
  00000001400037B4: E9 57 0E 00 00     jmp         0000000140004610
  00000001400037B9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  00000001400037C0: 66 45 89 0A        mov         word ptr [r10],r9w
  00000001400037C4: 45 88 4A 02        mov         byte ptr [r10+2],r9b
  00000001400037C8: E9 43 0E 00 00     jmp         0000000140004610
  00000001400037CD: 0F 1F 00           nop         dword ptr [rax]
  00000001400037D0: 45 89 0A           mov         dword ptr [r10],r9d
  00000001400037D3: E9 38 0E 00 00     jmp         0000000140004610
  00000001400037D8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400037E0: 45 89 0A           mov         dword ptr [r10],r9d
  00000001400037E3: 44 89 4F FC        mov         dword ptr [rdi-4],r9d
  00000001400037E7: E9 24 0E 00 00     jmp         0000000140004610
  00000001400037EC: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400037F0: 4D 89 0A           mov         qword ptr [r10],r9
  00000001400037F3: E9 18 0E 00 00     jmp         0000000140004610
  00000001400037F8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140003800: 4D 89 0A           mov         qword ptr [r10],r9
  0000000140003803: 4C 89 4F F8        mov         qword ptr [rdi-8],r9
  0000000140003807: E9 04 0E 00 00     jmp         0000000140004610
  000000014000380C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140003810: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  0000000140003815: E9 F6 0D 00 00     jmp         0000000140004610
  000000014000381A: 66 0F 1F 44 00 00  nop         word ptr [rax+rax]
  0000000140003820: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  0000000140003825: C5 F8 11 47 F0     vmovups     xmmword ptr [rdi-10h],xmm0
  000000014000382A: E9 E1 0D 00 00     jmp         0000000140004610
  000000014000382F: 90                 nop
  0000000140003830: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140003835: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000383A: E9 D1 0D 00 00     jmp         0000000140004610
  000000014000383F: 90                 nop
  0000000140003840: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140003845: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000384A: C5 FC 11 47 E0     vmovups     ymmword ptr [rdi-20h],ymm0
  000000014000384F: E9 BC 0D 00 00     jmp         0000000140004610
  0000000140003854: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140003859: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003860: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140003865: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000386A: C4 C1 7C 11 42 20  vmovups     ymmword ptr [r10+20h],ymm0
  0000000140003870: E9 9B 0D 00 00     jmp         0000000140004610
  0000000140003875: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140003879: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140003880: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140003885: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000388A: C4 C1 7C 11 42 20  vmovups     ymmword ptr [r10+20h],ymm0
  0000000140003890: C5 FC 11 47 E0     vmovups     ymmword ptr [rdi-20h],ymm0
  0000000140003895: C5 FC 11 47 C0     vmovups     ymmword ptr [rdi-40h],ymm0
  000000014000389A: E9 71 0D 00 00     jmp         0000000140004610
  000000014000389F: 90                 nop
  00000001400038A0: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  00000001400038A5: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  00000001400038AA: C4 C1 7C 11 42 20  vmovups     ymmword ptr [r10+20h],ymm0
  00000001400038B0: C4 C1 7C 11 42 40  vmovups     ymmword ptr [r10+40h],ymm0
  00000001400038B6: C4 C1 7C 11 42 60  vmovups     ymmword ptr [r10+60h],ymm0
  00000001400038BC: E9 4F 0D 00 00     jmp         0000000140004610
  00000001400038C1: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400038C9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  00000001400038D0: 66 0F 6C C0        punpcklqdq  xmm0,xmm0
  00000001400038D4: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  00000001400038D9: E9 32 0D 00 00     jmp         0000000140004610
  00000001400038DE: 66 90              xchg        ax,ax
  00000001400038E0: 66 0F 6C C0        punpcklqdq  xmm0,xmm0
  00000001400038E4: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  00000001400038E9: C5 F8 11 47 F0     vmovups     xmmword ptr [rdi-10h],xmm0
  00000001400038EE: E9 1D 0D 00 00     jmp         0000000140004610
  00000001400038F3: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  00000001400038F8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140003900: 8D 02              lea         eax,[rdx]
  0000000140003902: 00 00              add         byte ptr [rax],al
  0000000140003904: 00 00              add         byte ptr [rax],al
  0000000140003906: 00 00              add         byte ptr [rax],al
  0000000140003908: 90                 nop
  0000000140003909: 02 00              add         al,byte ptr [rax]
  000000014000390B: 00 00              add         byte ptr [rax],al
  000000014000390D: 00 00              add         byte ptr [rax],al
  000000014000390F: 00 80 02 00 00 00  add         byte ptr [rax+2],al
  0000000140003915: 00 00              add         byte ptr [rax],al
  0000000140003917: 00 70 02           add         byte ptr [rax+2],dh
  000000014000391A: 00 00              add         byte ptr [rax],al
  000000014000391C: 00 00              add         byte ptr [rax],al
  000000014000391E: 00 00              add         byte ptr [rax],al
  0000000140003920: 60
  0000000140003921: 02 00              add         al,byte ptr [rax]
  0000000140003923: 00 00              add         byte ptr [rax],al
  0000000140003925: 00 00              add         byte ptr [rax],al
  0000000140003927: 00 50 02           add         byte ptr [rax+2],dl
  000000014000392A: 00 00              add         byte ptr [rax],al
  000000014000392C: 00 00              add         byte ptr [rax],al
  000000014000392E: 00 00              add         byte ptr [rax],al
  0000000140003930: 50                 push        rax
  0000000140003931: 02 00              add         al,byte ptr [rax]
  0000000140003933: 00 00              add         byte ptr [rax],al
  0000000140003935: 00 00              add         byte ptr [rax],al
  0000000140003937: 00 50 02           add         byte ptr [rax+2],dl
  000000014000393A: 00 00              add         byte ptr [rax],al
  000000014000393C: 00 00              add         byte ptr [rax],al
  000000014000393E: 00 00              add         byte ptr [rax],al
  0000000140003940: 40 02 00           add         al,byte ptr [rax]
  0000000140003943: 00 00              add         byte ptr [rax],al
  0000000140003945: 00 00              add         byte ptr [rax],al
  0000000140003947: 00 30              add         byte ptr [rax],dh
  0000000140003949: 02 00              add         al,byte ptr [rax]
  000000014000394B: 00 00              add         byte ptr [rax],al
  000000014000394D: 00 00              add         byte ptr [rax],al
  000000014000394F: 00 30              add         byte ptr [rax],dh
  0000000140003951: 02 00              add         al,byte ptr [rax]
  0000000140003953: 00 00              add         byte ptr [rax],al
  0000000140003955: 00 00              add         byte ptr [rax],al
  0000000140003957: 00 30              add         byte ptr [rax],dh
  0000000140003959: 02 00              add         al,byte ptr [rax]
  000000014000395B: 00 00              add         byte ptr [rax],al
  000000014000395D: 00 00              add         byte ptr [rax],al
  000000014000395F: 00 30              add         byte ptr [rax],dh
  0000000140003961: 02 00              add         al,byte ptr [rax]
  0000000140003963: 00 00              add         byte ptr [rax],al
  0000000140003965: 00 00              add         byte ptr [rax],al
  0000000140003967: 00 30              add         byte ptr [rax],dh
  0000000140003969: 02 00              add         al,byte ptr [rax]
  000000014000396B: 00 00              add         byte ptr [rax],al
  000000014000396D: 00 00              add         byte ptr [rax],al
  000000014000396F: 00 30              add         byte ptr [rax],dh
  0000000140003971: 02 00              add         al,byte ptr [rax]
  0000000140003973: 00 00              add         byte ptr [rax],al
  0000000140003975: 00 00              add         byte ptr [rax],al
  0000000140003977: 00 30              add         byte ptr [rax],dh
  0000000140003979: 02 00              add         al,byte ptr [rax]
  000000014000397B: 00 00              add         byte ptr [rax],al
  000000014000397D: 00 00              add         byte ptr [rax],al
  000000014000397F: 00 20              add         byte ptr [rax],ah
  0000000140003981: 02 00              add         al,byte ptr [rax]
  0000000140003983: 00 00              add         byte ptr [rax],al
  0000000140003985: 00 00              add         byte ptr [rax],al
  0000000140003987: 00 10              add         byte ptr [rax],dl
  0000000140003989: 02 00              add         al,byte ptr [rax]
  000000014000398B: 00 00              add         byte ptr [rax],al
  000000014000398D: 00 00              add         byte ptr [rax],al
  000000014000398F: 00 10              add         byte ptr [rax],dl
  0000000140003991: 02 00              add         al,byte ptr [rax]
  0000000140003993: 00 00              add         byte ptr [rax],al
  0000000140003995: 00 00              add         byte ptr [rax],al
  0000000140003997: 00 10              add         byte ptr [rax],dl
  0000000140003999: 02 00              add         al,byte ptr [rax]
  000000014000399B: 00 00              add         byte ptr [rax],al
  000000014000399D: 00 00              add         byte ptr [rax],al
  000000014000399F: 00 10              add         byte ptr [rax],dl
  00000001400039A1: 02 00              add         al,byte ptr [rax]
  00000001400039A3: 00 00              add         byte ptr [rax],al
  00000001400039A5: 00 00              add         byte ptr [rax],al
  00000001400039A7: 00 10              add         byte ptr [rax],dl
  00000001400039A9: 02 00              add         al,byte ptr [rax]
  00000001400039AB: 00 00              add         byte ptr [rax],al
  00000001400039AD: 00 00              add         byte ptr [rax],al
  00000001400039AF: 00 10              add         byte ptr [rax],dl
  00000001400039B1: 02 00              add         al,byte ptr [rax]
  00000001400039B3: 00 00              add         byte ptr [rax],al
  00000001400039B5: 00 00              add         byte ptr [rax],al
  00000001400039B7: 00 10              add         byte ptr [rax],dl
  00000001400039B9: 02 00              add         al,byte ptr [rax]
  00000001400039BB: 00 00              add         byte ptr [rax],al
  00000001400039BD: 00 00              add         byte ptr [rax],al
  00000001400039BF: 00 10              add         byte ptr [rax],dl
  00000001400039C1: 02 00              add         al,byte ptr [rax]
  00000001400039C3: 00 00              add         byte ptr [rax],al
  00000001400039C5: 00 00              add         byte ptr [rax],al
  00000001400039C7: 00 10              add         byte ptr [rax],dl
  00000001400039C9: 02 00              add         al,byte ptr [rax]
  00000001400039CB: 00 00              add         byte ptr [rax],al
  00000001400039CD: 00 00              add         byte ptr [rax],al
  00000001400039CF: 00 10              add         byte ptr [rax],dl
  00000001400039D1: 02 00              add         al,byte ptr [rax]
  00000001400039D3: 00 00              add         byte ptr [rax],al
  00000001400039D5: 00 00              add         byte ptr [rax],al
  00000001400039D7: 00 10              add         byte ptr [rax],dl
  00000001400039D9: 02 00              add         al,byte ptr [rax]
  00000001400039DB: 00 00              add         byte ptr [rax],al
  00000001400039DD: 00 00              add         byte ptr [rax],al
  00000001400039DF: 00 10              add         byte ptr [rax],dl
  00000001400039E1: 02 00              add         al,byte ptr [rax]
  00000001400039E3: 00 00              add         byte ptr [rax],al
  00000001400039E5: 00 00              add         byte ptr [rax],al
  00000001400039E7: 00 10              add         byte ptr [rax],dl
  00000001400039E9: 02 00              add         al,byte ptr [rax]
  00000001400039EB: 00 00              add         byte ptr [rax],al
  00000001400039ED: 00 00              add         byte ptr [rax],al
  00000001400039EF: 00 10              add         byte ptr [rax],dl
  00000001400039F1: 02 00              add         al,byte ptr [rax]
  00000001400039F3: 00 00              add         byte ptr [rax],al
  00000001400039F5: 00 00              add         byte ptr [rax],al
  00000001400039F7: 00 10              add         byte ptr [rax],dl
  00000001400039F9: 02 00              add         al,byte ptr [rax]
  00000001400039FB: 00 00              add         byte ptr [rax],al
  00000001400039FD: 00 00              add         byte ptr [rax],al
  00000001400039FF: 00 60 02           add         byte ptr [rax+2],ah
  0000000140003A02: 00 00              add         byte ptr [rax],al
  0000000140003A04: 00 00              add         byte ptr [rax],al
  0000000140003A06: 00 00              add         byte ptr [rax],al
  0000000140003A08: 70 02              jo          0000000140003A0C
  0000000140003A0A: 00 00              add         byte ptr [rax],al
  0000000140003A0C: 00 00              add         byte ptr [rax],al
  0000000140003A0E: 00 00              add         byte ptr [rax],al
  0000000140003A10: 50                 push        rax
  0000000140003A11: 02 00              add         al,byte ptr [rax]
  0000000140003A13: 00 00              add         byte ptr [rax],al
  0000000140003A15: 00 00              add         byte ptr [rax],al
  0000000140003A17: 00 40 02           add         byte ptr [rax+2],al
  0000000140003A1A: 00 00              add         byte ptr [rax],al
  0000000140003A1C: 00 00              add         byte ptr [rax],al
  0000000140003A1E: 00 00              add         byte ptr [rax],al
  0000000140003A20: 30 02              xor         byte ptr [rdx],al
  0000000140003A22: 00 00              add         byte ptr [rax],al
  0000000140003A24: 00 00              add         byte ptr [rax],al
  0000000140003A26: 00 00              add         byte ptr [rax],al
  0000000140003A28: 20 02              and         byte ptr [rdx],al
  0000000140003A2A: 00 00              add         byte ptr [rax],al
  0000000140003A2C: 00 00              add         byte ptr [rax],al
  0000000140003A2E: 00 00              add         byte ptr [rax],al
  0000000140003A30: 20 02              and         byte ptr [rdx],al
  0000000140003A32: 00 00              add         byte ptr [rax],al
  0000000140003A34: 00 00              add         byte ptr [rax],al
  0000000140003A36: 00 00              add         byte ptr [rax],al
  0000000140003A38: 20 02              and         byte ptr [rdx],al
  0000000140003A3A: 00 00              add         byte ptr [rax],al
  0000000140003A3C: 00 00              add         byte ptr [rax],al
  0000000140003A3E: 00 00              add         byte ptr [rax],al
  0000000140003A40: 10 02              adc         byte ptr [rdx],al
  0000000140003A42: 00 00              add         byte ptr [rax],al
  0000000140003A44: 00 00              add         byte ptr [rax],al
  0000000140003A46: 00 00              add         byte ptr [rax],al
  0000000140003A48: 00 02              add         byte ptr [rdx],al
  0000000140003A4A: 00 00              add         byte ptr [rax],al
  0000000140003A4C: 00 00              add         byte ptr [rax],al
  0000000140003A4E: 00 00              add         byte ptr [rax],al
  0000000140003A50: 00 02              add         byte ptr [rdx],al
  0000000140003A52: 00 00              add         byte ptr [rax],al
  0000000140003A54: 00 00              add         byte ptr [rax],al
  0000000140003A56: 00 00              add         byte ptr [rax],al
  0000000140003A58: 00 02              add         byte ptr [rdx],al
  0000000140003A5A: 00 00              add         byte ptr [rax],al
  0000000140003A5C: 00 00              add         byte ptr [rax],al
  0000000140003A5E: 00 00              add         byte ptr [rax],al
  0000000140003A60: 00 02              add         byte ptr [rdx],al
  0000000140003A62: 00 00              add         byte ptr [rax],al
  0000000140003A64: 00 00              add         byte ptr [rax],al
  0000000140003A66: 00 00              add         byte ptr [rax],al
  0000000140003A68: 00 02              add         byte ptr [rdx],al
  0000000140003A6A: 00 00              add         byte ptr [rax],al
  0000000140003A6C: 00 00              add         byte ptr [rax],al
  0000000140003A6E: 00 00              add         byte ptr [rax],al
  0000000140003A70: 00 02              add         byte ptr [rdx],al
  0000000140003A72: 00 00              add         byte ptr [rax],al
  0000000140003A74: 00 00              add         byte ptr [rax],al
  0000000140003A76: 00 00              add         byte ptr [rax],al
  0000000140003A78: 00 02              add         byte ptr [rdx],al
  0000000140003A7A: 00 00              add         byte ptr [rax],al
  0000000140003A7C: 00 00              add         byte ptr [rax],al
  0000000140003A7E: 00 00              add         byte ptr [rax],al
  0000000140003A80: F0 01 00           lock add    dword ptr [rax],eax
  0000000140003A83: 00 00              add         byte ptr [rax],al
  0000000140003A85: 00 00              add         byte ptr [rax],al
  0000000140003A87: 00 E0              add         al,ah
  0000000140003A89: 01 00              add         dword ptr [rax],eax
  0000000140003A8B: 00 00              add         byte ptr [rax],al
  0000000140003A8D: 00 00              add         byte ptr [rax],al
  0000000140003A8F: 00 E0              add         al,ah
  0000000140003A91: 01 00              add         dword ptr [rax],eax
  0000000140003A93: 00 00              add         byte ptr [rax],al
  0000000140003A95: 00 00              add         byte ptr [rax],al
  0000000140003A97: 00 E0              add         al,ah
  0000000140003A99: 01 00              add         dword ptr [rax],eax
  0000000140003A9B: 00 00              add         byte ptr [rax],al
  0000000140003A9D: 00 00              add         byte ptr [rax],al
  0000000140003A9F: 00 E0              add         al,ah
  0000000140003AA1: 01 00              add         dword ptr [rax],eax
  0000000140003AA3: 00 00              add         byte ptr [rax],al
  0000000140003AA5: 00 00              add         byte ptr [rax],al
  0000000140003AA7: 00 E0              add         al,ah
  0000000140003AA9: 01 00              add         dword ptr [rax],eax
  0000000140003AAB: 00 00              add         byte ptr [rax],al
  0000000140003AAD: 00 00              add         byte ptr [rax],al
  0000000140003AAF: 00 E0              add         al,ah
  0000000140003AB1: 01 00              add         dword ptr [rax],eax
  0000000140003AB3: 00 00              add         byte ptr [rax],al
  0000000140003AB5: 00 00              add         byte ptr [rax],al
  0000000140003AB7: 00 E0              add         al,ah
  0000000140003AB9: 01 00              add         dword ptr [rax],eax
  0000000140003ABB: 00 00              add         byte ptr [rax],al
  0000000140003ABD: 00 00              add         byte ptr [rax],al
  0000000140003ABF: 00 E0              add         al,ah
  0000000140003AC1: 01 00              add         dword ptr [rax],eax
  0000000140003AC3: 00 00              add         byte ptr [rax],al
  0000000140003AC5: 00 00              add         byte ptr [rax],al
  0000000140003AC7: 00 E0              add         al,ah
  0000000140003AC9: 01 00              add         dword ptr [rax],eax
  0000000140003ACB: 00 00              add         byte ptr [rax],al
  0000000140003ACD: 00 00              add         byte ptr [rax],al
  0000000140003ACF: 00 E0              add         al,ah
  0000000140003AD1: 01 00              add         dword ptr [rax],eax
  0000000140003AD3: 00 00              add         byte ptr [rax],al
  0000000140003AD5: 00 00              add         byte ptr [rax],al
  0000000140003AD7: 00 E0              add         al,ah
  0000000140003AD9: 01 00              add         dword ptr [rax],eax
  0000000140003ADB: 00 00              add         byte ptr [rax],al
  0000000140003ADD: 00 00              add         byte ptr [rax],al
  0000000140003ADF: 00 E0              add         al,ah
  0000000140003AE1: 01 00              add         dword ptr [rax],eax
  0000000140003AE3: 00 00              add         byte ptr [rax],al
  0000000140003AE5: 00 00              add         byte ptr [rax],al
  0000000140003AE7: 00 E0              add         al,ah
  0000000140003AE9: 01 00              add         dword ptr [rax],eax
  0000000140003AEB: 00 00              add         byte ptr [rax],al
  0000000140003AED: 00 00              add         byte ptr [rax],al
  0000000140003AEF: 00 E0              add         al,ah
  0000000140003AF1: 01 00              add         dword ptr [rax],eax
  0000000140003AF3: 00 00              add         byte ptr [rax],al
  0000000140003AF5: 00 00              add         byte ptr [rax],al
  0000000140003AF7: 00 E0              add         al,ah
  0000000140003AF9: 01 00              add         dword ptr [rax],eax
  0000000140003AFB: 00 00              add         byte ptr [rax],al
  0000000140003AFD: 00 00              add         byte ptr [rax],al
  0000000140003AFF: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B05: 00 00              add         byte ptr [rax],al
  0000000140003B07: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B0D: 00 00              add         byte ptr [rax],al
  0000000140003B0F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B15: 00 00              add         byte ptr [rax],al
  0000000140003B17: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B1D: 00 00              add         byte ptr [rax],al
  0000000140003B1F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B25: 00 00              add         byte ptr [rax],al
  0000000140003B27: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B2D: 00 00              add         byte ptr [rax],al
  0000000140003B2F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B35: 00 00              add         byte ptr [rax],al
  0000000140003B37: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B3D: 00 00              add         byte ptr [rax],al
  0000000140003B3F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B45: 00 00              add         byte ptr [rax],al
  0000000140003B47: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B4D: 00 00              add         byte ptr [rax],al
  0000000140003B4F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B55: 00 00              add         byte ptr [rax],al
  0000000140003B57: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B5D: 00 00              add         byte ptr [rax],al
  0000000140003B5F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B65: 00 00              add         byte ptr [rax],al
  0000000140003B67: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B6D: 00 00              add         byte ptr [rax],al
  0000000140003B6F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B75: 00 00              add         byte ptr [rax],al
  0000000140003B77: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B7D: 00 00              add         byte ptr [rax],al
  0000000140003B7F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B85: 00 00              add         byte ptr [rax],al
  0000000140003B87: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B8D: 00 00              add         byte ptr [rax],al
  0000000140003B8F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B95: 00 00              add         byte ptr [rax],al
  0000000140003B97: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003B9D: 00 00              add         byte ptr [rax],al
  0000000140003B9F: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BA5: 00 00              add         byte ptr [rax],al
  0000000140003BA7: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BAD: 00 00              add         byte ptr [rax],al
  0000000140003BAF: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BB5: 00 00              add         byte ptr [rax],al
  0000000140003BB7: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BBD: 00 00              add         byte ptr [rax],al
  0000000140003BBF: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BC5: 00 00              add         byte ptr [rax],al
  0000000140003BC7: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BCD: 00 00              add         byte ptr [rax],al
  0000000140003BCF: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BD5: 00 00              add         byte ptr [rax],al
  0000000140003BD7: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BDD: 00 00              add         byte ptr [rax],al
  0000000140003BDF: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BE5: 00 00              add         byte ptr [rax],al
  0000000140003BE7: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BED: 00 00              add         byte ptr [rax],al
  0000000140003BEF: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BF5: 00 00              add         byte ptr [rax],al
  0000000140003BF7: 00 8E 02 00 00 00  add         byte ptr [rsi+2],cl
  0000000140003BFD: 00 00              add         byte ptr [rax],al
  0000000140003BFF: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C06: 00 00              add         byte ptr [rax],al
  0000000140003C08: 94                 xchg        eax,esp
  0000000140003C09: 02 00              add         al,byte ptr [rax]
  0000000140003C0B: 00 00              add         byte ptr [rax],al
  0000000140003C0D: 00 00              add         byte ptr [rax],al
  0000000140003C0F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C16: 00 00              add         byte ptr [rax],al
  0000000140003C18: 94                 xchg        eax,esp
  0000000140003C19: 02 00              add         al,byte ptr [rax]
  0000000140003C1B: 00 00              add         byte ptr [rax],al
  0000000140003C1D: 00 00              add         byte ptr [rax],al
  0000000140003C1F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C26: 00 00              add         byte ptr [rax],al
  0000000140003C28: 94                 xchg        eax,esp
  0000000140003C29: 02 00              add         al,byte ptr [rax]
  0000000140003C2B: 00 00              add         byte ptr [rax],al
  0000000140003C2D: 00 00              add         byte ptr [rax],al
  0000000140003C2F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C36: 00 00              add         byte ptr [rax],al
  0000000140003C38: 94                 xchg        eax,esp
  0000000140003C39: 02 00              add         al,byte ptr [rax]
  0000000140003C3B: 00 00              add         byte ptr [rax],al
  0000000140003C3D: 00 00              add         byte ptr [rax],al
  0000000140003C3F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C46: 00 00              add         byte ptr [rax],al
  0000000140003C48: 94                 xchg        eax,esp
  0000000140003C49: 02 00              add         al,byte ptr [rax]
  0000000140003C4B: 00 00              add         byte ptr [rax],al
  0000000140003C4D: 00 00              add         byte ptr [rax],al
  0000000140003C4F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C56: 00 00              add         byte ptr [rax],al
  0000000140003C58: 94                 xchg        eax,esp
  0000000140003C59: 02 00              add         al,byte ptr [rax]
  0000000140003C5B: 00 00              add         byte ptr [rax],al
  0000000140003C5D: 00 00              add         byte ptr [rax],al
  0000000140003C5F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C66: 00 00              add         byte ptr [rax],al
  0000000140003C68: 94                 xchg        eax,esp
  0000000140003C69: 02 00              add         al,byte ptr [rax]
  0000000140003C6B: 00 00              add         byte ptr [rax],al
  0000000140003C6D: 00 00              add         byte ptr [rax],al
  0000000140003C6F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C76: 00 00              add         byte ptr [rax],al
  0000000140003C78: 94                 xchg        eax,esp
  0000000140003C79: 02 00              add         al,byte ptr [rax]
  0000000140003C7B: 00 00              add         byte ptr [rax],al
  0000000140003C7D: 00 00              add         byte ptr [rax],al
  0000000140003C7F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C86: 00 00              add         byte ptr [rax],al
  0000000140003C88: 94                 xchg        eax,esp
  0000000140003C89: 02 00              add         al,byte ptr [rax]
  0000000140003C8B: 00 00              add         byte ptr [rax],al
  0000000140003C8D: 00 00              add         byte ptr [rax],al
  0000000140003C8F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003C96: 00 00              add         byte ptr [rax],al
  0000000140003C98: 94                 xchg        eax,esp
  0000000140003C99: 02 00              add         al,byte ptr [rax]
  0000000140003C9B: 00 00              add         byte ptr [rax],al
  0000000140003C9D: 00 00              add         byte ptr [rax],al
  0000000140003C9F: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003CA6: 00 00              add         byte ptr [rax],al
  0000000140003CA8: 94                 xchg        eax,esp
  0000000140003CA9: 02 00              add         al,byte ptr [rax]
  0000000140003CAB: 00 00              add         byte ptr [rax],al
  0000000140003CAD: 00 00              add         byte ptr [rax],al
  0000000140003CAF: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003CB6: 00 00              add         byte ptr [rax],al
  0000000140003CB8: 94                 xchg        eax,esp
  0000000140003CB9: 02 00              add         al,byte ptr [rax]
  0000000140003CBB: 00 00              add         byte ptr [rax],al
  0000000140003CBD: 00 00              add         byte ptr [rax],al
  0000000140003CBF: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003CC6: 00 00              add         byte ptr [rax],al
  0000000140003CC8: 94                 xchg        eax,esp
  0000000140003CC9: 02 00              add         al,byte ptr [rax]
  0000000140003CCB: 00 00              add         byte ptr [rax],al
  0000000140003CCD: 00 00              add         byte ptr [rax],al
  0000000140003CCF: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003CD6: 00 00              add         byte ptr [rax],al
  0000000140003CD8: 94                 xchg        eax,esp
  0000000140003CD9: 02 00              add         al,byte ptr [rax]
  0000000140003CDB: 00 00              add         byte ptr [rax],al
  0000000140003CDD: 00 00              add         byte ptr [rax],al
  0000000140003CDF: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003CE6: 00 00              add         byte ptr [rax],al
  0000000140003CE8: 94                 xchg        eax,esp
  0000000140003CE9: 02 00              add         al,byte ptr [rax]
  0000000140003CEB: 00 00              add         byte ptr [rax],al
  0000000140003CED: 00 00              add         byte ptr [rax],al
  0000000140003CEF: 00 94 02 00 00 00  add         byte ptr [rdx+rax],dl
                    00
  0000000140003CF6: 00 00              add         byte ptr [rax],al
  0000000140003CF8: 94                 xchg        eax,esp
  0000000140003CF9: 02 00              add         al,byte ptr [rax]
  0000000140003CFB: 00 00              add         byte ptr [rax],al
  0000000140003CFD: 00 00              add         byte ptr [rax],al
  0000000140003CFF: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D05: 00 00              add         byte ptr [rax],al
  0000000140003D07: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D0D: 00 00              add         byte ptr [rax],al
  0000000140003D0F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D15: 00 00              add         byte ptr [rax],al
  0000000140003D17: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D1D: 00 00              add         byte ptr [rax],al
  0000000140003D1F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D25: 00 00              add         byte ptr [rax],al
  0000000140003D27: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D2D: 00 00              add         byte ptr [rax],al
  0000000140003D2F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D35: 00 00              add         byte ptr [rax],al
  0000000140003D37: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D3D: 00 00              add         byte ptr [rax],al
  0000000140003D3F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D45: 00 00              add         byte ptr [rax],al
  0000000140003D47: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D4D: 00 00              add         byte ptr [rax],al
  0000000140003D4F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D55: 00 00              add         byte ptr [rax],al
  0000000140003D57: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D5D: 00 00              add         byte ptr [rax],al
  0000000140003D5F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D65: 00 00              add         byte ptr [rax],al
  0000000140003D67: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D6D: 00 00              add         byte ptr [rax],al
  0000000140003D6F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D75: 00 00              add         byte ptr [rax],al
  0000000140003D77: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D7D: 00 00              add         byte ptr [rax],al
  0000000140003D7F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D85: 00 00              add         byte ptr [rax],al
  0000000140003D87: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D8D: 00 00              add         byte ptr [rax],al
  0000000140003D8F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D95: 00 00              add         byte ptr [rax],al
  0000000140003D97: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003D9D: 00 00              add         byte ptr [rax],al
  0000000140003D9F: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DA5: 00 00              add         byte ptr [rax],al
  0000000140003DA7: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DAD: 00 00              add         byte ptr [rax],al
  0000000140003DAF: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DB5: 00 00              add         byte ptr [rax],al
  0000000140003DB7: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DBD: 00 00              add         byte ptr [rax],al
  0000000140003DBF: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DC5: 00 00              add         byte ptr [rax],al
  0000000140003DC7: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DCD: 00 00              add         byte ptr [rax],al
  0000000140003DCF: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DD5: 00 00              add         byte ptr [rax],al
  0000000140003DD7: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DDD: 00 00              add         byte ptr [rax],al
  0000000140003DDF: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DE5: 00 00              add         byte ptr [rax],al
  0000000140003DE7: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DED: 00 00              add         byte ptr [rax],al
  0000000140003DEF: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DF5: 00 00              add         byte ptr [rax],al
  0000000140003DF7: 00 9A 02 00 00 00  add         byte ptr [rdx+2],bl
  0000000140003DFD: 00 00              add         byte ptr [rax],al
  0000000140003DFF: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E05: 00 00              add         byte ptr [rax],al
  0000000140003E07: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E0D: 00 00              add         byte ptr [rax],al
  0000000140003E0F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E15: 00 00              add         byte ptr [rax],al
  0000000140003E17: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E1D: 00 00              add         byte ptr [rax],al
  0000000140003E1F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E25: 00 00              add         byte ptr [rax],al
  0000000140003E27: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E2D: 00 00              add         byte ptr [rax],al
  0000000140003E2F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E35: 00 00              add         byte ptr [rax],al
  0000000140003E37: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E3D: 00 00              add         byte ptr [rax],al
  0000000140003E3F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E45: 00 00              add         byte ptr [rax],al
  0000000140003E47: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E4D: 00 00              add         byte ptr [rax],al
  0000000140003E4F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E55: 00 00              add         byte ptr [rax],al
  0000000140003E57: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E5D: 00 00              add         byte ptr [rax],al
  0000000140003E5F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E65: 00 00              add         byte ptr [rax],al
  0000000140003E67: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E6D: 00 00              add         byte ptr [rax],al
  0000000140003E6F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E75: 00 00              add         byte ptr [rax],al
  0000000140003E77: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E7D: 00 00              add         byte ptr [rax],al
  0000000140003E7F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E85: 00 00              add         byte ptr [rax],al
  0000000140003E87: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E8D: 00 00              add         byte ptr [rax],al
  0000000140003E8F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E95: 00 00              add         byte ptr [rax],al
  0000000140003E97: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003E9D: 00 00              add         byte ptr [rax],al
  0000000140003E9F: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EA5: 00 00              add         byte ptr [rax],al
  0000000140003EA7: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EAD: 00 00              add         byte ptr [rax],al
  0000000140003EAF: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EB5: 00 00              add         byte ptr [rax],al
  0000000140003EB7: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EBD: 00 00              add         byte ptr [rax],al
  0000000140003EBF: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EC5: 00 00              add         byte ptr [rax],al
  0000000140003EC7: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003ECD: 00 00              add         byte ptr [rax],al
  0000000140003ECF: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003ED5: 00 00              add         byte ptr [rax],al
  0000000140003ED7: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EDD: 00 00              add         byte ptr [rax],al
  0000000140003EDF: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EE5: 00 00              add         byte ptr [rax],al
  0000000140003EE7: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EED: 00 00              add         byte ptr [rax],al
  0000000140003EEF: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EF5: 00 00              add         byte ptr [rax],al
  0000000140003EF7: 00 A0 02 00 00 00  add         byte ptr [rax+2],ah
  0000000140003EFD: 00 00              add         byte ptr [rax],al
  0000000140003EFF: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F05: 00 00              add         byte ptr [rax],al
  0000000140003F07: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F0D: 00 00              add         byte ptr [rax],al
  0000000140003F0F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F15: 00 00              add         byte ptr [rax],al
  0000000140003F17: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F1D: 00 00              add         byte ptr [rax],al
  0000000140003F1F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F25: 00 00              add         byte ptr [rax],al
  0000000140003F27: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F2D: 00 00              add         byte ptr [rax],al
  0000000140003F2F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F35: 00 00              add         byte ptr [rax],al
  0000000140003F37: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F3D: 00 00              add         byte ptr [rax],al
  0000000140003F3F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F45: 00 00              add         byte ptr [rax],al
  0000000140003F47: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F4D: 00 00              add         byte ptr [rax],al
  0000000140003F4F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F55: 00 00              add         byte ptr [rax],al
  0000000140003F57: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F5D: 00 00              add         byte ptr [rax],al
  0000000140003F5F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F65: 00 00              add         byte ptr [rax],al
  0000000140003F67: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F6D: 00 00              add         byte ptr [rax],al
  0000000140003F6F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F75: 00 00              add         byte ptr [rax],al
  0000000140003F77: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F7D: 00 00              add         byte ptr [rax],al
  0000000140003F7F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F85: 00 00              add         byte ptr [rax],al
  0000000140003F87: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F8D: 00 00              add         byte ptr [rax],al
  0000000140003F8F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F95: 00 00              add         byte ptr [rax],al
  0000000140003F97: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003F9D: 00 00              add         byte ptr [rax],al
  0000000140003F9F: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FA5: 00 00              add         byte ptr [rax],al
  0000000140003FA7: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FAD: 00 00              add         byte ptr [rax],al
  0000000140003FAF: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FB5: 00 00              add         byte ptr [rax],al
  0000000140003FB7: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FBD: 00 00              add         byte ptr [rax],al
  0000000140003FBF: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FC5: 00 00              add         byte ptr [rax],al
  0000000140003FC7: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FCD: 00 00              add         byte ptr [rax],al
  0000000140003FCF: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FD5: 00 00              add         byte ptr [rax],al
  0000000140003FD7: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FDD: 00 00              add         byte ptr [rax],al
  0000000140003FDF: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FE5: 00 00              add         byte ptr [rax],al
  0000000140003FE7: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FED: 00 00              add         byte ptr [rax],al
  0000000140003FEF: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FF5: 00 00              add         byte ptr [rax],al
  0000000140003FF7: 00 AE 02 00 00 00  add         byte ptr [rsi+2],ch
  0000000140003FFD: 00 00              add         byte ptr [rax],al
  0000000140003FFF: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004005: 00 00              add         byte ptr [rax],al
  0000000140004007: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000400D: 00 00              add         byte ptr [rax],al
  000000014000400F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004015: 00 00              add         byte ptr [rax],al
  0000000140004017: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000401D: 00 00              add         byte ptr [rax],al
  000000014000401F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004025: 00 00              add         byte ptr [rax],al
  0000000140004027: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000402D: 00 00              add         byte ptr [rax],al
  000000014000402F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004035: 00 00              add         byte ptr [rax],al
  0000000140004037: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000403D: 00 00              add         byte ptr [rax],al
  000000014000403F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004045: 00 00              add         byte ptr [rax],al
  0000000140004047: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000404D: 00 00              add         byte ptr [rax],al
  000000014000404F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004055: 00 00              add         byte ptr [rax],al
  0000000140004057: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000405D: 00 00              add         byte ptr [rax],al
  000000014000405F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004065: 00 00              add         byte ptr [rax],al
  0000000140004067: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000406D: 00 00              add         byte ptr [rax],al
  000000014000406F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004075: 00 00              add         byte ptr [rax],al
  0000000140004077: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000407D: 00 00              add         byte ptr [rax],al
  000000014000407F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004085: 00 00              add         byte ptr [rax],al
  0000000140004087: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000408D: 00 00              add         byte ptr [rax],al
  000000014000408F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  0000000140004095: 00 00              add         byte ptr [rax],al
  0000000140004097: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  000000014000409D: 00 00              add         byte ptr [rax],al
  000000014000409F: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040A5: 00 00              add         byte ptr [rax],al
  00000001400040A7: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040AD: 00 00              add         byte ptr [rax],al
  00000001400040AF: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040B5: 00 00              add         byte ptr [rax],al
  00000001400040B7: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040BD: 00 00              add         byte ptr [rax],al
  00000001400040BF: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040C5: 00 00              add         byte ptr [rax],al
  00000001400040C7: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040CD: 00 00              add         byte ptr [rax],al
  00000001400040CF: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040D5: 00 00              add         byte ptr [rax],al
  00000001400040D7: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040DD: 00 00              add         byte ptr [rax],al
  00000001400040DF: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040E5: 00 00              add         byte ptr [rax],al
  00000001400040E7: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040ED: 00 00              add         byte ptr [rax],al
  00000001400040EF: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040F5: 00 00              add         byte ptr [rax],al
  00000001400040F7: 00 B7 02 00 00 00  add         byte ptr [rdi+2],dh
  00000001400040FD: 00 00              add         byte ptr [rax],al
  00000001400040FF: 00 C0              add         al,al
  0000000140004101: 02 00              add         al,byte ptr [rax]
  0000000140004103: 00 00              add         byte ptr [rax],al
  0000000140004105: 00 00              add         byte ptr [rax],al
  0000000140004107: 00 C0              add         al,al
  0000000140004109: 02 00              add         al,byte ptr [rax]
  000000014000410B: 00 00              add         byte ptr [rax],al
  000000014000410D: 00 00              add         byte ptr [rax],al
  000000014000410F: 00 C0              add         al,al
  0000000140004111: 02 00              add         al,byte ptr [rax]
  0000000140004113: 00 00              add         byte ptr [rax],al
  0000000140004115: 00 00              add         byte ptr [rax],al
  0000000140004117: 00 C0              add         al,al
  0000000140004119: 02 00              add         al,byte ptr [rax]
  000000014000411B: 00 00              add         byte ptr [rax],al
  000000014000411D: 00 00              add         byte ptr [rax],al
  000000014000411F: 00 C0              add         al,al
  0000000140004121: 02 00              add         al,byte ptr [rax]
  0000000140004123: 00 00              add         byte ptr [rax],al
  0000000140004125: 00 00              add         byte ptr [rax],al
  0000000140004127: 00 C0              add         al,al
  0000000140004129: 02 00              add         al,byte ptr [rax]
  000000014000412B: 00 00              add         byte ptr [rax],al
  000000014000412D: 00 00              add         byte ptr [rax],al
  000000014000412F: 00 C0              add         al,al
  0000000140004131: 02 00              add         al,byte ptr [rax]
  0000000140004133: 00 00              add         byte ptr [rax],al
  0000000140004135: 00 00              add         byte ptr [rax],al
  0000000140004137: 00 C0              add         al,al
  0000000140004139: 02 00              add         al,byte ptr [rax]
  000000014000413B: 00 00              add         byte ptr [rax],al
  000000014000413D: 00 00              add         byte ptr [rax],al
  000000014000413F: 00 C0              add         al,al
  0000000140004141: 02 00              add         al,byte ptr [rax]
  0000000140004143: 00 00              add         byte ptr [rax],al
  0000000140004145: 00 00              add         byte ptr [rax],al
  0000000140004147: 00 C0              add         al,al
  0000000140004149: 02 00              add         al,byte ptr [rax]
  000000014000414B: 00 00              add         byte ptr [rax],al
  000000014000414D: 00 00              add         byte ptr [rax],al
  000000014000414F: 00 C0              add         al,al
  0000000140004151: 02 00              add         al,byte ptr [rax]
  0000000140004153: 00 00              add         byte ptr [rax],al
  0000000140004155: 00 00              add         byte ptr [rax],al
  0000000140004157: 00 C0              add         al,al
  0000000140004159: 02 00              add         al,byte ptr [rax]
  000000014000415B: 00 00              add         byte ptr [rax],al
  000000014000415D: 00 00              add         byte ptr [rax],al
  000000014000415F: 00 C0              add         al,al
  0000000140004161: 02 00              add         al,byte ptr [rax]
  0000000140004163: 00 00              add         byte ptr [rax],al
  0000000140004165: 00 00              add         byte ptr [rax],al
  0000000140004167: 00 C0              add         al,al
  0000000140004169: 02 00              add         al,byte ptr [rax]
  000000014000416B: 00 00              add         byte ptr [rax],al
  000000014000416D: 00 00              add         byte ptr [rax],al
  000000014000416F: 00 C0              add         al,al
  0000000140004171: 02 00              add         al,byte ptr [rax]
  0000000140004173: 00 00              add         byte ptr [rax],al
  0000000140004175: 00 00              add         byte ptr [rax],al
  0000000140004177: 00 C0              add         al,al
  0000000140004179: 02 00              add         al,byte ptr [rax]
  000000014000417B: 00 00              add         byte ptr [rax],al
  000000014000417D: 00 00              add         byte ptr [rax],al
  000000014000417F: 00 C0              add         al,al
  0000000140004181: 02 00              add         al,byte ptr [rax]
  0000000140004183: 00 00              add         byte ptr [rax],al
  0000000140004185: 00 00              add         byte ptr [rax],al
  0000000140004187: 00 C0              add         al,al
  0000000140004189: 02 00              add         al,byte ptr [rax]
  000000014000418B: 00 00              add         byte ptr [rax],al
  000000014000418D: 00 00              add         byte ptr [rax],al
  000000014000418F: 00 C0              add         al,al
  0000000140004191: 02 00              add         al,byte ptr [rax]
  0000000140004193: 00 00              add         byte ptr [rax],al
  0000000140004195: 00 00              add         byte ptr [rax],al
  0000000140004197: 00 C0              add         al,al
  0000000140004199: 02 00              add         al,byte ptr [rax]
  000000014000419B: 00 00              add         byte ptr [rax],al
  000000014000419D: 00 00              add         byte ptr [rax],al
  000000014000419F: 00 C0              add         al,al
  00000001400041A1: 02 00              add         al,byte ptr [rax]
  00000001400041A3: 00 00              add         byte ptr [rax],al
  00000001400041A5: 00 00              add         byte ptr [rax],al
  00000001400041A7: 00 C0              add         al,al
  00000001400041A9: 02 00              add         al,byte ptr [rax]
  00000001400041AB: 00 00              add         byte ptr [rax],al
  00000001400041AD: 00 00              add         byte ptr [rax],al
  00000001400041AF: 00 C0              add         al,al
  00000001400041B1: 02 00              add         al,byte ptr [rax]
  00000001400041B3: 00 00              add         byte ptr [rax],al
  00000001400041B5: 00 00              add         byte ptr [rax],al
  00000001400041B7: 00 C0              add         al,al
  00000001400041B9: 02 00              add         al,byte ptr [rax]
  00000001400041BB: 00 00              add         byte ptr [rax],al
  00000001400041BD: 00 00              add         byte ptr [rax],al
  00000001400041BF: 00 C0              add         al,al
  00000001400041C1: 02 00              add         al,byte ptr [rax]
  00000001400041C3: 00 00              add         byte ptr [rax],al
  00000001400041C5: 00 00              add         byte ptr [rax],al
  00000001400041C7: 00 C0              add         al,al
  00000001400041C9: 02 00              add         al,byte ptr [rax]
  00000001400041CB: 00 00              add         byte ptr [rax],al
  00000001400041CD: 00 00              add         byte ptr [rax],al
  00000001400041CF: 00 C0              add         al,al
  00000001400041D1: 02 00              add         al,byte ptr [rax]
  00000001400041D3: 00 00              add         byte ptr [rax],al
  00000001400041D5: 00 00              add         byte ptr [rax],al
  00000001400041D7: 00 C0              add         al,al
  00000001400041D9: 02 00              add         al,byte ptr [rax]
  00000001400041DB: 00 00              add         byte ptr [rax],al
  00000001400041DD: 00 00              add         byte ptr [rax],al
  00000001400041DF: 00 C0              add         al,al
  00000001400041E1: 02 00              add         al,byte ptr [rax]
  00000001400041E3: 00 00              add         byte ptr [rax],al
  00000001400041E5: 00 00              add         byte ptr [rax],al
  00000001400041E7: 00 C0              add         al,al
  00000001400041E9: 02 00              add         al,byte ptr [rax]
  00000001400041EB: 00 00              add         byte ptr [rax],al
  00000001400041ED: 00 00              add         byte ptr [rax],al
  00000001400041EF: 00 C0              add         al,al
  00000001400041F1: 02 00              add         al,byte ptr [rax]
  00000001400041F3: 00 00              add         byte ptr [rax],al
  00000001400041F5: 00 00              add         byte ptr [rax],al
  00000001400041F7: 00 C0              add         al,al
  00000001400041F9: 02 00              add         al,byte ptr [rax]
  00000001400041FB: 00 00              add         byte ptr [rax],al
  00000001400041FD: 00 00              add         byte ptr [rax],al
  00000001400041FF: 00 60 0A           add         byte ptr [rax+0Ah],ah
  0000000140004202: 00 00              add         byte ptr [rax],al
  0000000140004204: 00 00              add         byte ptr [rax],al
  0000000140004206: 00 00              add         byte ptr [rax],al
  0000000140004208: 70 0A              jo          0000000140004214
  000000014000420A: 00 00              add         byte ptr [rax],al
  000000014000420C: 00 00              add         byte ptr [rax],al
  000000014000420E: 00 00              add         byte ptr [rax],al
  0000000140004210: 50                 push        rax
  0000000140004211: 0A 00              or          al,byte ptr [rax]
  0000000140004213: 00 00              add         byte ptr [rax],al
  0000000140004215: 00 00              add         byte ptr [rax],al
  0000000140004217: 00 40 0A           add         byte ptr [rax+0Ah],al
  000000014000421A: 00 00              add         byte ptr [rax],al
  000000014000421C: 00 00              add         byte ptr [rax],al
  000000014000421E: 00 00              add         byte ptr [rax],al
  0000000140004220: 30 0A              xor         byte ptr [rdx],cl
  0000000140004222: 00 00              add         byte ptr [rax],al
  0000000140004224: 00 00              add         byte ptr [rax],al
  0000000140004226: 00 00              add         byte ptr [rax],al
  0000000140004228: 20 0A              and         byte ptr [rdx],cl
  000000014000422A: 00 00              add         byte ptr [rax],al
  000000014000422C: 00 00              add         byte ptr [rax],al
  000000014000422E: 00 00              add         byte ptr [rax],al
  0000000140004230: 20 0A              and         byte ptr [rdx],cl
  0000000140004232: 00 00              add         byte ptr [rax],al
  0000000140004234: 00 00              add         byte ptr [rax],al
  0000000140004236: 00 00              add         byte ptr [rax],al
  0000000140004238: 20 0A              and         byte ptr [rdx],cl
  000000014000423A: 00 00              add         byte ptr [rax],al
  000000014000423C: 00 00              add         byte ptr [rax],al
  000000014000423E: 00 00              add         byte ptr [rax],al
  0000000140004240: 10 0A              adc         byte ptr [rdx],cl
  0000000140004242: 00 00              add         byte ptr [rax],al
  0000000140004244: 00 00              add         byte ptr [rax],al
  0000000140004246: 00 00              add         byte ptr [rax],al
  0000000140004248: 00 0A              add         byte ptr [rdx],cl
  000000014000424A: 00 00              add         byte ptr [rax],al
  000000014000424C: 00 00              add         byte ptr [rax],al
  000000014000424E: 00 00              add         byte ptr [rax],al
  0000000140004250: 00 0A              add         byte ptr [rdx],cl
  0000000140004252: 00 00              add         byte ptr [rax],al
  0000000140004254: 00 00              add         byte ptr [rax],al
  0000000140004256: 00 00              add         byte ptr [rax],al
  0000000140004258: 00 0A              add         byte ptr [rdx],cl
  000000014000425A: 00 00              add         byte ptr [rax],al
  000000014000425C: 00 00              add         byte ptr [rax],al
  000000014000425E: 00 00              add         byte ptr [rax],al
  0000000140004260: 00 0A              add         byte ptr [rdx],cl
  0000000140004262: 00 00              add         byte ptr [rax],al
  0000000140004264: 00 00              add         byte ptr [rax],al
  0000000140004266: 00 00              add         byte ptr [rax],al
  0000000140004268: 00 0A              add         byte ptr [rdx],cl
  000000014000426A: 00 00              add         byte ptr [rax],al
  000000014000426C: 00 00              add         byte ptr [rax],al
  000000014000426E: 00 00              add         byte ptr [rax],al
  0000000140004270: 00 0A              add         byte ptr [rdx],cl
  0000000140004272: 00 00              add         byte ptr [rax],al
  0000000140004274: 00 00              add         byte ptr [rax],al
  0000000140004276: 00 00              add         byte ptr [rax],al
  0000000140004278: 00 0A              add         byte ptr [rdx],cl
  000000014000427A: 00 00              add         byte ptr [rax],al
  000000014000427C: 00 00              add         byte ptr [rax],al
  000000014000427E: 00 00              add         byte ptr [rax],al
  0000000140004280: 30 09              xor         byte ptr [rcx],cl
  0000000140004282: 00 00              add         byte ptr [rax],al
  0000000140004284: 00 00              add         byte ptr [rax],al
  0000000140004286: 00 00              add         byte ptr [rax],al
  0000000140004288: 20 09              and         byte ptr [rcx],cl
  000000014000428A: 00 00              add         byte ptr [rax],al
  000000014000428C: 00 00              add         byte ptr [rax],al
  000000014000428E: 00 00              add         byte ptr [rax],al
  0000000140004290: 20 09              and         byte ptr [rcx],cl
  0000000140004292: 00 00              add         byte ptr [rax],al
  0000000140004294: 00 00              add         byte ptr [rax],al
  0000000140004296: 00 00              add         byte ptr [rax],al
  0000000140004298: 20 09              and         byte ptr [rcx],cl
  000000014000429A: 00 00              add         byte ptr [rax],al
  000000014000429C: 00 00              add         byte ptr [rax],al
  000000014000429E: 00 00              add         byte ptr [rax],al
  00000001400042A0: 20 09              and         byte ptr [rcx],cl
  00000001400042A2: 00 00              add         byte ptr [rax],al
  00000001400042A4: 00 00              add         byte ptr [rax],al
  00000001400042A6: 00 00              add         byte ptr [rax],al
  00000001400042A8: 20 09              and         byte ptr [rcx],cl
  00000001400042AA: 00 00              add         byte ptr [rax],al
  00000001400042AC: 00 00              add         byte ptr [rax],al
  00000001400042AE: 00 00              add         byte ptr [rax],al
  00000001400042B0: 20 09              and         byte ptr [rcx],cl
  00000001400042B2: 00 00              add         byte ptr [rax],al
  00000001400042B4: 00 00              add         byte ptr [rax],al
  00000001400042B6: 00 00              add         byte ptr [rax],al
  00000001400042B8: 20 09              and         byte ptr [rcx],cl
  00000001400042BA: 00 00              add         byte ptr [rax],al
  00000001400042BC: 00 00              add         byte ptr [rax],al
  00000001400042BE: 00 00              add         byte ptr [rax],al
  00000001400042C0: 20 09              and         byte ptr [rcx],cl
  00000001400042C2: 00 00              add         byte ptr [rax],al
  00000001400042C4: 00 00              add         byte ptr [rax],al
  00000001400042C6: 00 00              add         byte ptr [rax],al
  00000001400042C8: 20 09              and         byte ptr [rcx],cl
  00000001400042CA: 00 00              add         byte ptr [rax],al
  00000001400042CC: 00 00              add         byte ptr [rax],al
  00000001400042CE: 00 00              add         byte ptr [rax],al
  00000001400042D0: 20 09              and         byte ptr [rcx],cl
  00000001400042D2: 00 00              add         byte ptr [rax],al
  00000001400042D4: 00 00              add         byte ptr [rax],al
  00000001400042D6: 00 00              add         byte ptr [rax],al
  00000001400042D8: 20 09              and         byte ptr [rcx],cl
  00000001400042DA: 00 00              add         byte ptr [rax],al
  00000001400042DC: 00 00              add         byte ptr [rax],al
  00000001400042DE: 00 00              add         byte ptr [rax],al
  00000001400042E0: 20 09              and         byte ptr [rcx],cl
  00000001400042E2: 00 00              add         byte ptr [rax],al
  00000001400042E4: 00 00              add         byte ptr [rax],al
  00000001400042E6: 00 00              add         byte ptr [rax],al
  00000001400042E8: 20 09              and         byte ptr [rcx],cl
  00000001400042EA: 00 00              add         byte ptr [rax],al
  00000001400042EC: 00 00              add         byte ptr [rax],al
  00000001400042EE: 00 00              add         byte ptr [rax],al
  00000001400042F0: 20 09              and         byte ptr [rcx],cl
  00000001400042F2: 00 00              add         byte ptr [rax],al
  00000001400042F4: 00 00              add         byte ptr [rax],al
  00000001400042F6: 00 00              add         byte ptr [rax],al
  00000001400042F8: 20 09              and         byte ptr [rcx],cl
  00000001400042FA: 00 00              add         byte ptr [rax],al
  00000001400042FC: 00 00              add         byte ptr [rax],al
  00000001400042FE: 00 00              add         byte ptr [rax],al
  0000000140004300: D0 09              ror         byte ptr [rcx],1
  0000000140004302: 00 00              add         byte ptr [rax],al
  0000000140004304: 00 00              add         byte ptr [rax],al
  0000000140004306: 00 00              add         byte ptr [rax],al
  0000000140004308: C0 09 00           ror         byte ptr [rcx],0
  000000014000430B: 00 00              add         byte ptr [rax],al
  000000014000430D: 00 00              add         byte ptr [rax],al
  000000014000430F: 00 C0              add         al,al
  0000000140004311: 09 00              or          dword ptr [rax],eax
  0000000140004313: 00 00              add         byte ptr [rax],al
  0000000140004315: 00 00              add         byte ptr [rax],al
  0000000140004317: 00 C0              add         al,al
  0000000140004319: 09 00              or          dword ptr [rax],eax
  000000014000431B: 00 00              add         byte ptr [rax],al
  000000014000431D: 00 00              add         byte ptr [rax],al
  000000014000431F: 00 C0              add         al,al
  0000000140004321: 09 00              or          dword ptr [rax],eax
  0000000140004323: 00 00              add         byte ptr [rax],al
  0000000140004325: 00 00              add         byte ptr [rax],al
  0000000140004327: 00 C0              add         al,al
  0000000140004329: 09 00              or          dword ptr [rax],eax
  000000014000432B: 00 00              add         byte ptr [rax],al
  000000014000432D: 00 00              add         byte ptr [rax],al
  000000014000432F: 00 C0              add         al,al
  0000000140004331: 09 00              or          dword ptr [rax],eax
  0000000140004333: 00 00              add         byte ptr [rax],al
  0000000140004335: 00 00              add         byte ptr [rax],al
  0000000140004337: 00 C0              add         al,al
  0000000140004339: 09 00              or          dword ptr [rax],eax
  000000014000433B: 00 00              add         byte ptr [rax],al
  000000014000433D: 00 00              add         byte ptr [rax],al
  000000014000433F: 00 C0              add         al,al
  0000000140004341: 09 00              or          dword ptr [rax],eax
  0000000140004343: 00 00              add         byte ptr [rax],al
  0000000140004345: 00 00              add         byte ptr [rax],al
  0000000140004347: 00 C0              add         al,al
  0000000140004349: 09 00              or          dword ptr [rax],eax
  000000014000434B: 00 00              add         byte ptr [rax],al
  000000014000434D: 00 00              add         byte ptr [rax],al
  000000014000434F: 00 C0              add         al,al
  0000000140004351: 09 00              or          dword ptr [rax],eax
  0000000140004353: 00 00              add         byte ptr [rax],al
  0000000140004355: 00 00              add         byte ptr [rax],al
  0000000140004357: 00 C0              add         al,al
  0000000140004359: 09 00              or          dword ptr [rax],eax
  000000014000435B: 00 00              add         byte ptr [rax],al
  000000014000435D: 00 00              add         byte ptr [rax],al
  000000014000435F: 00 C0              add         al,al
  0000000140004361: 09 00              or          dword ptr [rax],eax
  0000000140004363: 00 00              add         byte ptr [rax],al
  0000000140004365: 00 00              add         byte ptr [rax],al
  0000000140004367: 00 C0              add         al,al
  0000000140004369: 09 00              or          dword ptr [rax],eax
  000000014000436B: 00 00              add         byte ptr [rax],al
  000000014000436D: 00 00              add         byte ptr [rax],al
  000000014000436F: 00 C0              add         al,al
  0000000140004371: 09 00              or          dword ptr [rax],eax
  0000000140004373: 00 00              add         byte ptr [rax],al
  0000000140004375: 00 00              add         byte ptr [rax],al
  0000000140004377: 00 C0              add         al,al
  0000000140004379: 09 00              or          dword ptr [rax],eax
  000000014000437B: 00 00              add         byte ptr [rax],al
  000000014000437D: 00 00              add         byte ptr [rax],al
  000000014000437F: 00 C0              add         al,al
  0000000140004381: 09 00              or          dword ptr [rax],eax
  0000000140004383: 00 00              add         byte ptr [rax],al
  0000000140004385: 00 00              add         byte ptr [rax],al
  0000000140004387: 00 C0              add         al,al
  0000000140004389: 09 00              or          dword ptr [rax],eax
  000000014000438B: 00 00              add         byte ptr [rax],al
  000000014000438D: 00 00              add         byte ptr [rax],al
  000000014000438F: 00 C0              add         al,al
  0000000140004391: 09 00              or          dword ptr [rax],eax
  0000000140004393: 00 00              add         byte ptr [rax],al
  0000000140004395: 00 00              add         byte ptr [rax],al
  0000000140004397: 00 C0              add         al,al
  0000000140004399: 09 00              or          dword ptr [rax],eax
  000000014000439B: 00 00              add         byte ptr [rax],al
  000000014000439D: 00 00              add         byte ptr [rax],al
  000000014000439F: 00 C0              add         al,al
  00000001400043A1: 09 00              or          dword ptr [rax],eax
  00000001400043A3: 00 00              add         byte ptr [rax],al
  00000001400043A5: 00 00              add         byte ptr [rax],al
  00000001400043A7: 00 C0              add         al,al
  00000001400043A9: 09 00              or          dword ptr [rax],eax
  00000001400043AB: 00 00              add         byte ptr [rax],al
  00000001400043AD: 00 00              add         byte ptr [rax],al
  00000001400043AF: 00 C0              add         al,al
  00000001400043B1: 09 00              or          dword ptr [rax],eax
  00000001400043B3: 00 00              add         byte ptr [rax],al
  00000001400043B5: 00 00              add         byte ptr [rax],al
  00000001400043B7: 00 C0              add         al,al
  00000001400043B9: 09 00              or          dword ptr [rax],eax
  00000001400043BB: 00 00              add         byte ptr [rax],al
  00000001400043BD: 00 00              add         byte ptr [rax],al
  00000001400043BF: 00 C0              add         al,al
  00000001400043C1: 09 00              or          dword ptr [rax],eax
  00000001400043C3: 00 00              add         byte ptr [rax],al
  00000001400043C5: 00 00              add         byte ptr [rax],al
  00000001400043C7: 00 C0              add         al,al
  00000001400043C9: 09 00              or          dword ptr [rax],eax
  00000001400043CB: 00 00              add         byte ptr [rax],al
  00000001400043CD: 00 00              add         byte ptr [rax],al
  00000001400043CF: 00 C0              add         al,al
  00000001400043D1: 09 00              or          dword ptr [rax],eax
  00000001400043D3: 00 00              add         byte ptr [rax],al
  00000001400043D5: 00 00              add         byte ptr [rax],al
  00000001400043D7: 00 C0              add         al,al
  00000001400043D9: 09 00              or          dword ptr [rax],eax
  00000001400043DB: 00 00              add         byte ptr [rax],al
  00000001400043DD: 00 00              add         byte ptr [rax],al
  00000001400043DF: 00 C0              add         al,al
  00000001400043E1: 09 00              or          dword ptr [rax],eax
  00000001400043E3: 00 00              add         byte ptr [rax],al
  00000001400043E5: 00 00              add         byte ptr [rax],al
  00000001400043E7: 00 C0              add         al,al
  00000001400043E9: 09 00              or          dword ptr [rax],eax
  00000001400043EB: 00 00              add         byte ptr [rax],al
  00000001400043ED: 00 00              add         byte ptr [rax],al
  00000001400043EF: 00 C0              add         al,al
  00000001400043F1: 09 00              or          dword ptr [rax],eax
  00000001400043F3: 00 00              add         byte ptr [rax],al
  00000001400043F5: 00 00              add         byte ptr [rax],al
  00000001400043F7: 00 C0              add         al,al
  00000001400043F9: 09 00              or          dword ptr [rax],eax
  00000001400043FB: 00 00              add         byte ptr [rax],al
  00000001400043FD: 00 00              add         byte ptr [rax],al
  00000001400043FF: 00 A0 09 00 00 00  add         byte ptr [rax+9],ah
  0000000140004405: 00 00              add         byte ptr [rax],al
  0000000140004407: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000440D: 00 00              add         byte ptr [rax],al
  000000014000440F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004415: 00 00              add         byte ptr [rax],al
  0000000140004417: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000441D: 00 00              add         byte ptr [rax],al
  000000014000441F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004425: 00 00              add         byte ptr [rax],al
  0000000140004427: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000442D: 00 00              add         byte ptr [rax],al
  000000014000442F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004435: 00 00              add         byte ptr [rax],al
  0000000140004437: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000443D: 00 00              add         byte ptr [rax],al
  000000014000443F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004445: 00 00              add         byte ptr [rax],al
  0000000140004447: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000444D: 00 00              add         byte ptr [rax],al
  000000014000444F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004455: 00 00              add         byte ptr [rax],al
  0000000140004457: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000445D: 00 00              add         byte ptr [rax],al
  000000014000445F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004465: 00 00              add         byte ptr [rax],al
  0000000140004467: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000446D: 00 00              add         byte ptr [rax],al
  000000014000446F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004475: 00 00              add         byte ptr [rax],al
  0000000140004477: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000447D: 00 00              add         byte ptr [rax],al
  000000014000447F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004485: 00 00              add         byte ptr [rax],al
  0000000140004487: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000448D: 00 00              add         byte ptr [rax],al
  000000014000448F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004495: 00 00              add         byte ptr [rax],al
  0000000140004497: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000449D: 00 00              add         byte ptr [rax],al
  000000014000449F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044A5: 00 00              add         byte ptr [rax],al
  00000001400044A7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044AD: 00 00              add         byte ptr [rax],al
  00000001400044AF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044B5: 00 00              add         byte ptr [rax],al
  00000001400044B7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044BD: 00 00              add         byte ptr [rax],al
  00000001400044BF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044C5: 00 00              add         byte ptr [rax],al
  00000001400044C7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044CD: 00 00              add         byte ptr [rax],al
  00000001400044CF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044D5: 00 00              add         byte ptr [rax],al
  00000001400044D7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044DD: 00 00              add         byte ptr [rax],al
  00000001400044DF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044E5: 00 00              add         byte ptr [rax],al
  00000001400044E7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044ED: 00 00              add         byte ptr [rax],al
  00000001400044EF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044F5: 00 00              add         byte ptr [rax],al
  00000001400044F7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400044FD: 00 00              add         byte ptr [rax],al
  00000001400044FF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004505: 00 00              add         byte ptr [rax],al
  0000000140004507: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000450D: 00 00              add         byte ptr [rax],al
  000000014000450F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004515: 00 00              add         byte ptr [rax],al
  0000000140004517: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000451D: 00 00              add         byte ptr [rax],al
  000000014000451F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004525: 00 00              add         byte ptr [rax],al
  0000000140004527: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000452D: 00 00              add         byte ptr [rax],al
  000000014000452F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004535: 00 00              add         byte ptr [rax],al
  0000000140004537: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000453D: 00 00              add         byte ptr [rax],al
  000000014000453F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004545: 00 00              add         byte ptr [rax],al
  0000000140004547: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000454D: 00 00              add         byte ptr [rax],al
  000000014000454F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004555: 00 00              add         byte ptr [rax],al
  0000000140004557: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000455D: 00 00              add         byte ptr [rax],al
  000000014000455F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004565: 00 00              add         byte ptr [rax],al
  0000000140004567: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000456D: 00 00              add         byte ptr [rax],al
  000000014000456F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004575: 00 00              add         byte ptr [rax],al
  0000000140004577: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000457D: 00 00              add         byte ptr [rax],al
  000000014000457F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004585: 00 00              add         byte ptr [rax],al
  0000000140004587: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000458D: 00 00              add         byte ptr [rax],al
  000000014000458F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  0000000140004595: 00 00              add         byte ptr [rax],al
  0000000140004597: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  000000014000459D: 00 00              add         byte ptr [rax],al
  000000014000459F: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045A5: 00 00              add         byte ptr [rax],al
  00000001400045A7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045AD: 00 00              add         byte ptr [rax],al
  00000001400045AF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045B5: 00 00              add         byte ptr [rax],al
  00000001400045B7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045BD: 00 00              add         byte ptr [rax],al
  00000001400045BF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045C5: 00 00              add         byte ptr [rax],al
  00000001400045C7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045CD: 00 00              add         byte ptr [rax],al
  00000001400045CF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045D5: 00 00              add         byte ptr [rax],al
  00000001400045D7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045DD: 00 00              add         byte ptr [rax],al
  00000001400045DF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045E5: 00 00              add         byte ptr [rax],al
  00000001400045E7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045ED: 00 00              add         byte ptr [rax],al
  00000001400045EF: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045F5: 00 00              add         byte ptr [rax],al
  00000001400045F7: 00 80 09 00 00 00  add         byte ptr [rax+9],al
  00000001400045FD: 00 00              add         byte ptr [rax],al
  00000001400045FF: 00 60 09           add         byte ptr [rax+9],ah
  0000000140004602: 00 00              add         byte ptr [rax],al
  0000000140004604: 00 00              add         byte ptr [rax],al
  0000000140004606: 00 00              add         byte ptr [rax],al
  0000000140004608: 60
  0000000140004609: 09 00              or          dword ptr [rax],eax
  000000014000460B: 00 00              add         byte ptr [rax],al
  000000014000460D: 00 00              add         byte ptr [rax],al
  000000014000460F: 00 C5              add         ch,al
  0000000140004611: F8                 clc
  0000000140004612: 77 4C              ja          0000000140004660
  0000000140004614: 89 D8              mov         eax,ebx
  0000000140004616: 41 5F              pop         r15
  0000000140004618: 5F                 pop         rdi
  0000000140004619: C3                 ret
  000000014000461A: 66 0F 1F 44 00 00  nop         word ptr [rax+rax]
  0000000140004620: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  0000000140004630: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
__intel_mic_avx512f_memset:
  0000000140004640: 4D 89 C2           mov         r10,r8
  0000000140004643: 49 89 C8           mov         r8,rcx
  0000000140004646: 48 B8 01 01 01 01  mov         rax,101010101010101h
                    01 01 01 01
  0000000140004650: 4C 0F B6 CA        movzx       r9,dl
  0000000140004654: 4C 0F AF C8        imul        r9,rax
  0000000140004658: 48 8D 15 A1 14 00  lea         rdx,[140005B00h]
                    00
  000000014000465F: 62 D2 7D 48 7C C1  vpbroadcastd zmm0,r9d
  0000000140004665: 49 81 FA 80 00 00  cmp         r10,80h
                    00
  000000014000466C: 7D 0C              jge         000000014000467A
  000000014000466E: 4C 89 C0           mov         rax,r8
  0000000140004671: 49 03 C2           add         rax,r10
  0000000140004674: 4A 2B 14 D2        sub         rdx,qword ptr [rdx+r10*8]
  0000000140004678: FF E2              jmp         rdx
  000000014000467A: 48 8D 15 7F 02 00  lea         rdx,[140004900h]
                    00
  0000000140004681: 4D 89 C3           mov         r11,r8
  0000000140004684: 49 F7 DB           neg         r11
  0000000140004687: 49 83 C3 40        add         r11,40h
  000000014000468B: 49 83 E3 3F        and         r11,3Fh
  000000014000468F: 74 12              je          00000001400046A3
  0000000140004691: 4D 2B D3           sub         r10,r11
  0000000140004694: 4C 89 C0           mov         rax,r8
  0000000140004697: 49 03 C3           add         rax,r11
  000000014000469A: 4A 2B 14 DA        sub         rdx,qword ptr [rdx+r11*8]
  000000014000469E: FF E2              jmp         rdx
  00000001400046A0: 4D 03 C3           add         r8,r11
  00000001400046A3: 49 81 FA 00 02 00  cmp         r10,200h
                    00
  00000001400046AA: 0F 8C 27 01 00 00  jl          00000001400047D7
  00000001400046B0: 4C 3B 15 A9 81 00  cmp         r10,qword ptr [__libirc_largest_cache_size_quoter]
                    00
  00000001400046B7: 73 53              jae         000000014000470C
  00000001400046B9: 62 D1 7C 48 29 00  vmovaps     zmmword ptr [r8],zmm0
  00000001400046BF: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8+40h],zmm0
                    01
  00000001400046C6: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8+80h],zmm0
                    02
  00000001400046CD: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8+0C0h],zmm0
                    03
  00000001400046D4: 4D 8D 80 00 02 00  lea         r8,[r8+200h]
                    00
  00000001400046DB: 49 81 EA 00 02 00  sub         r10,200h
                    00
  00000001400046E2: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-100h],zmm0
                    FC
  00000001400046E9: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-0C0h],zmm0
                    FD
  00000001400046F0: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-80h],zmm0
                    FE
  00000001400046F7: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-40h],zmm0
                    FF
  00000001400046FE: 49 81 FA 00 02 00  cmp         r10,200h
                    00
  0000000140004705: 7D B2              jge         00000001400046B9
  0000000140004707: E9 CB 00 00 00     jmp         00000001400047D7
  000000014000470C: 62 D1 7D 48 E7 00  vmovntdq    zmmword ptr [r8],zmm0
  0000000140004712: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8+40h],zmm0
                    01
  0000000140004719: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8+80h],zmm0
                    02
  0000000140004720: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8+0C0h],zmm0
                    03
  0000000140004727: 4D 8D 80 00 02 00  lea         r8,[r8+200h]
                    00
  000000014000472E: 49 81 EA 00 02 00  sub         r10,200h
                    00
  0000000140004735: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-100h],zmm0
                    FC
  000000014000473C: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-0C0h],zmm0
                    FD
  0000000140004743: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-80h],zmm0
                    FE
  000000014000474A: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-40h],zmm0
                    FF
  0000000140004751: 49 81 FA 00 02 00  cmp         r10,200h
                    00
  0000000140004758: 7D B2              jge         000000014000470C
  000000014000475A: 0F AE F8           sfence
  000000014000475D: EB 78              jmp         00000001400047D7
  000000014000475F: 45 88 08           mov         byte ptr [r8],r9b
  0000000140004762: E9 39 FF FF FF     jmp         00000001400046A0
  0000000140004767: 66 45 89 08        mov         word ptr [r8],r9w
  000000014000476B: E9 30 FF FF FF     jmp         00000001400046A0
  0000000140004770: 66 45 89 08        mov         word ptr [r8],r9w
  0000000140004774: 45 88 48 02        mov         byte ptr [r8+2],r9b
  0000000140004778: E9 23 FF FF FF     jmp         00000001400046A0
  000000014000477D: 45 89 08           mov         dword ptr [r8],r9d
  0000000140004780: E9 1B FF FF FF     jmp         00000001400046A0
  0000000140004785: 45 89 08           mov         dword ptr [r8],r9d
  0000000140004788: 44 89 48 FC        mov         dword ptr [rax-4],r9d
  000000014000478C: E9 0F FF FF FF     jmp         00000001400046A0
  0000000140004791: 4D 89 08           mov         qword ptr [r8],r9
  0000000140004794: E9 07 FF FF FF     jmp         00000001400046A0
  0000000140004799: 4D 89 08           mov         qword ptr [r8],r9
  000000014000479C: 4C 89 48 F8        mov         qword ptr [rax-8],r9
  00000001400047A0: E9 FB FE FF FF     jmp         00000001400046A0
  00000001400047A5: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  00000001400047AA: E9 F1 FE FF FF     jmp         00000001400046A0
  00000001400047AF: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  00000001400047B4: C5 F8 11 40 F0     vmovups     xmmword ptr [rax-10h],xmm0
  00000001400047B9: E9 E2 FE FF FF     jmp         00000001400046A0
  00000001400047BE: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  00000001400047C3: E9 D8 FE FF FF     jmp         00000001400046A0
  00000001400047C8: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  00000001400047CD: C5 FC 11 40 E0     vmovups     ymmword ptr [rax-20h],ymm0
  00000001400047D2: E9 C9 FE FF FF     jmp         00000001400046A0
  00000001400047D7: 4C 89 C0           mov         rax,r8
  00000001400047DA: 49 03 C2           add         rax,r10
  00000001400047DD: 4D 03 C2           add         r8,r10
  00000001400047E0: 49 83 E0 C0        and         r8,0FFFFFFFFFFFFFFC0h
  00000001400047E4: 48 8D 15 15 03 00  lea         rdx,[140004B00h]
                    00
  00000001400047EB: 4A 2B 14 D2        sub         rdx,qword ptr [rdx+r10*8]
  00000001400047EF: FF E2              jmp         rdx
  00000001400047F1: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-1C0h],zmm0
                    F9
  00000001400047F8: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-180h],zmm0
                    FA
  00000001400047FF: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-140h],zmm0
                    FB
  0000000140004806: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-100h],zmm0
                    FC
  000000014000480D: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-0C0h],zmm0
                    FD
  0000000140004814: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-80h],zmm0
                    FE
  000000014000481B: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-40h],zmm0
                    FF
  0000000140004822: 49 89 C2           mov         r10,rax
  0000000140004825: 49 83 E2 3F        and         r10,3Fh
  0000000140004829: 48 8D 15 D0 02 00  lea         rdx,[140004B00h]
                    00
  0000000140004830: 4A 2B 14 D2        sub         rdx,qword ptr [rdx+r10*8]
  0000000140004834: FF E2              jmp         rdx
  0000000140004836: 45 88 08           mov         byte ptr [r8],r9b
  0000000140004839: E9 C2 16 00 00     jmp         0000000140005F00
  000000014000483E: E9 BD 16 00 00     jmp         0000000140005F00
  0000000140004843: 66 45 89 08        mov         word ptr [r8],r9w
  0000000140004847: E9 B4 16 00 00     jmp         0000000140005F00
  000000014000484C: 66 45 89 08        mov         word ptr [r8],r9w
  0000000140004850: 45 88 48 02        mov         byte ptr [r8+2],r9b
  0000000140004854: E9 A7 16 00 00     jmp         0000000140005F00
  0000000140004859: 45 89 08           mov         dword ptr [r8],r9d
  000000014000485C: E9 9F 16 00 00     jmp         0000000140005F00
  0000000140004861: 45 89 08           mov         dword ptr [r8],r9d
  0000000140004864: 44 89 48 FC        mov         dword ptr [rax-4],r9d
  0000000140004868: E9 93 16 00 00     jmp         0000000140005F00
  000000014000486D: 4D 89 08           mov         qword ptr [r8],r9
  0000000140004870: E9 8B 16 00 00     jmp         0000000140005F00
  0000000140004875: 4D 89 08           mov         qword ptr [r8],r9
  0000000140004878: 4C 89 48 F8        mov         qword ptr [rax-8],r9
  000000014000487C: E9 7F 16 00 00     jmp         0000000140005F00
  0000000140004881: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  0000000140004886: E9 75 16 00 00     jmp         0000000140005F00
  000000014000488B: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  0000000140004890: C5 F8 11 40 F0     vmovups     xmmword ptr [rax-10h],xmm0
  0000000140004895: E9 66 16 00 00     jmp         0000000140005F00
  000000014000489A: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  000000014000489F: E9 5C 16 00 00     jmp         0000000140005F00
  00000001400048A4: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  00000001400048A9: C5 FC 11 40 E0     vmovups     ymmword ptr [rax-20h],ymm0
  00000001400048AE: E9 4D 16 00 00     jmp         0000000140005F00
  00000001400048B3: 62 D1 7C 48 11 00  vmovups     zmmword ptr [r8],zmm0
  00000001400048B9: E9 42 16 00 00     jmp         0000000140005F00
  00000001400048BE: 62 D1 7C 48 11 00  vmovups     zmmword ptr [r8],zmm0
  00000001400048C4: 62 F1 7C 48 11 40  vmovups     zmmword ptr [rax-40h],zmm0
                    FF
  00000001400048CB: E9 30 16 00 00     jmp         0000000140005F00
  00000001400048D0: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400048D8: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  00000001400048DF: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400048E7: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  00000001400048EE: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400048F6: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  00000001400048FD: 0F 1F 00           nop         dword ptr [rax]
  0000000140004900: 9E                 sahf
  0000000140004901: 01 00              add         dword ptr [rax],eax
  0000000140004903: 00 00              add         byte ptr [rax],al
  0000000140004905: 00 00              add         byte ptr [rax],al
  0000000140004907: 00 A1 01 00 00 00  add         byte ptr [rcx+1],ah
  000000014000490D: 00 00              add         byte ptr [rax],al
  000000014000490F: 00 99 01 00 00 00  add         byte ptr [rcx+1],bl
  0000000140004915: 00 00              add         byte ptr [rax],al
  0000000140004917: 00 90 01 00 00 00  add         byte ptr [rax+1],dl
  000000014000491D: 00 00              add         byte ptr [rax],al
  000000014000491F: 00 83 01 00 00 00  add         byte ptr [rbx+1],al
  0000000140004925: 00 00              add         byte ptr [rax],al
  0000000140004927: 00 7B 01           add         byte ptr [rbx+1],bh
  000000014000492A: 00 00              add         byte ptr [rax],al
  000000014000492C: 00 00              add         byte ptr [rax],al
  000000014000492E: 00 00              add         byte ptr [rax],al
  0000000140004930: 7B 01              jnp         0000000140004933
  0000000140004932: 00 00              add         byte ptr [rax],al
  0000000140004934: 00 00              add         byte ptr [rax],al
  0000000140004936: 00 00              add         byte ptr [rax],al
  0000000140004938: 7B 01              jnp         000000014000493B
  000000014000493A: 00 00              add         byte ptr [rax],al
  000000014000493C: 00 00              add         byte ptr [rax],al
  000000014000493E: 00 00              add         byte ptr [rax],al
  0000000140004940: 6F                 outs        dx,dword ptr [rsi]
  0000000140004941: 01 00              add         dword ptr [rax],eax
  0000000140004943: 00 00              add         byte ptr [rax],al
  0000000140004945: 00 00              add         byte ptr [rax],al
  0000000140004947: 00 67 01           add         byte ptr [rdi+1],ah
  000000014000494A: 00 00              add         byte ptr [rax],al
  000000014000494C: 00 00              add         byte ptr [rax],al
  000000014000494E: 00 00              add         byte ptr [rax],al
  0000000140004950: 67 01 00           add         dword ptr [eax],eax
  0000000140004953: 00 00              add         byte ptr [rax],al
  0000000140004955: 00 00              add         byte ptr [rax],al
  0000000140004957: 00 67 01           add         byte ptr [rdi+1],ah
  000000014000495A: 00 00              add         byte ptr [rax],al
  000000014000495C: 00 00              add         byte ptr [rax],al
  000000014000495E: 00 00              add         byte ptr [rax],al
  0000000140004960: 67 01 00           add         dword ptr [eax],eax
  0000000140004963: 00 00              add         byte ptr [rax],al
  0000000140004965: 00 00              add         byte ptr [rax],al
  0000000140004967: 00 67 01           add         byte ptr [rdi+1],ah
  000000014000496A: 00 00              add         byte ptr [rax],al
  000000014000496C: 00 00              add         byte ptr [rax],al
  000000014000496E: 00 00              add         byte ptr [rax],al
  0000000140004970: 67 01 00           add         dword ptr [eax],eax
  0000000140004973: 00 00              add         byte ptr [rax],al
  0000000140004975: 00 00              add         byte ptr [rax],al
  0000000140004977: 00 67 01           add         byte ptr [rdi+1],ah
  000000014000497A: 00 00              add         byte ptr [rax],al
  000000014000497C: 00 00              add         byte ptr [rax],al
  000000014000497E: 00 00              add         byte ptr [rax],al
  0000000140004980: 5B                 pop         rbx
  0000000140004981: 01 00              add         dword ptr [rax],eax
  0000000140004983: 00 00              add         byte ptr [rax],al
  0000000140004985: 00 00              add         byte ptr [rax],al
  0000000140004987: 00 51 01           add         byte ptr [rcx+1],dl
  000000014000498A: 00 00              add         byte ptr [rax],al
  000000014000498C: 00 00              add         byte ptr [rax],al
  000000014000498E: 00 00              add         byte ptr [rax],al
  0000000140004990: 51                 push        rcx
  0000000140004991: 01 00              add         dword ptr [rax],eax
  0000000140004993: 00 00              add         byte ptr [rax],al
  0000000140004995: 00 00              add         byte ptr [rax],al
  0000000140004997: 00 51 01           add         byte ptr [rcx+1],dl
  000000014000499A: 00 00              add         byte ptr [rax],al
  000000014000499C: 00 00              add         byte ptr [rax],al
  000000014000499E: 00 00              add         byte ptr [rax],al
  00000001400049A0: 51                 push        rcx
  00000001400049A1: 01 00              add         dword ptr [rax],eax
  00000001400049A3: 00 00              add         byte ptr [rax],al
  00000001400049A5: 00 00              add         byte ptr [rax],al
  00000001400049A7: 00 51 01           add         byte ptr [rcx+1],dl
  00000001400049AA: 00 00              add         byte ptr [rax],al
  00000001400049AC: 00 00              add         byte ptr [rax],al
  00000001400049AE: 00 00              add         byte ptr [rax],al
  00000001400049B0: 51                 push        rcx
  00000001400049B1: 01 00              add         dword ptr [rax],eax
  00000001400049B3: 00 00              add         byte ptr [rax],al
  00000001400049B5: 00 00              add         byte ptr [rax],al
  00000001400049B7: 00 51 01           add         byte ptr [rcx+1],dl
  00000001400049BA: 00 00              add         byte ptr [rax],al
  00000001400049BC: 00 00              add         byte ptr [rax],al
  00000001400049BE: 00 00              add         byte ptr [rax],al
  00000001400049C0: 51                 push        rcx
  00000001400049C1: 01 00              add         dword ptr [rax],eax
  00000001400049C3: 00 00              add         byte ptr [rax],al
  00000001400049C5: 00 00              add         byte ptr [rax],al
  00000001400049C7: 00 51 01           add         byte ptr [rcx+1],dl
  00000001400049CA: 00 00              add         byte ptr [rax],al
  00000001400049CC: 00 00              add         byte ptr [rax],al
  00000001400049CE: 00 00              add         byte ptr [rax],al
  00000001400049D0: 51                 push        rcx
  00000001400049D1: 01 00              add         dword ptr [rax],eax
  00000001400049D3: 00 00              add         byte ptr [rax],al
  00000001400049D5: 00 00              add         byte ptr [rax],al
  00000001400049D7: 00 51 01           add         byte ptr [rcx+1],dl
  00000001400049DA: 00 00              add         byte ptr [rax],al
  00000001400049DC: 00 00              add         byte ptr [rax],al
  00000001400049DE: 00 00              add         byte ptr [rax],al
  00000001400049E0: 51                 push        rcx
  00000001400049E1: 01 00              add         dword ptr [rax],eax
  00000001400049E3: 00 00              add         byte ptr [rax],al
  00000001400049E5: 00 00              add         byte ptr [rax],al
  00000001400049E7: 00 51 01           add         byte ptr [rcx+1],dl
  00000001400049EA: 00 00              add         byte ptr [rax],al
  00000001400049EC: 00 00              add         byte ptr [rax],al
  00000001400049EE: 00 00              add         byte ptr [rax],al
  00000001400049F0: 51                 push        rcx
  00000001400049F1: 01 00              add         dword ptr [rax],eax
  00000001400049F3: 00 00              add         byte ptr [rax],al
  00000001400049F5: 00 00              add         byte ptr [rax],al
  00000001400049F7: 00 51 01           add         byte ptr [rcx+1],dl
  00000001400049FA: 00 00              add         byte ptr [rax],al
  00000001400049FC: 00 00              add         byte ptr [rax],al
  00000001400049FE: 00 00              add         byte ptr [rax],al
  0000000140004A00: 42 01 00           add         dword ptr [rax],eax
  0000000140004A03: 00 00              add         byte ptr [rax],al
  0000000140004A05: 00 00              add         byte ptr [rax],al
  0000000140004A07: 00 38              add         byte ptr [rax],bh
  0000000140004A09: 01 00              add         dword ptr [rax],eax
  0000000140004A0B: 00 00              add         byte ptr [rax],al
  0000000140004A0D: 00 00              add         byte ptr [rax],al
  0000000140004A0F: 00 38              add         byte ptr [rax],bh
  0000000140004A11: 01 00              add         dword ptr [rax],eax
  0000000140004A13: 00 00              add         byte ptr [rax],al
  0000000140004A15: 00 00              add         byte ptr [rax],al
  0000000140004A17: 00 38              add         byte ptr [rax],bh
  0000000140004A19: 01 00              add         dword ptr [rax],eax
  0000000140004A1B: 00 00              add         byte ptr [rax],al
  0000000140004A1D: 00 00              add         byte ptr [rax],al
  0000000140004A1F: 00 38              add         byte ptr [rax],bh
  0000000140004A21: 01 00              add         dword ptr [rax],eax
  0000000140004A23: 00 00              add         byte ptr [rax],al
  0000000140004A25: 00 00              add         byte ptr [rax],al
  0000000140004A27: 00 38              add         byte ptr [rax],bh
  0000000140004A29: 01 00              add         dword ptr [rax],eax
  0000000140004A2B: 00 00              add         byte ptr [rax],al
  0000000140004A2D: 00 00              add         byte ptr [rax],al
  0000000140004A2F: 00 38              add         byte ptr [rax],bh
  0000000140004A31: 01 00              add         dword ptr [rax],eax
  0000000140004A33: 00 00              add         byte ptr [rax],al
  0000000140004A35: 00 00              add         byte ptr [rax],al
  0000000140004A37: 00 38              add         byte ptr [rax],bh
  0000000140004A39: 01 00              add         dword ptr [rax],eax
  0000000140004A3B: 00 00              add         byte ptr [rax],al
  0000000140004A3D: 00 00              add         byte ptr [rax],al
  0000000140004A3F: 00 38              add         byte ptr [rax],bh
  0000000140004A41: 01 00              add         dword ptr [rax],eax
  0000000140004A43: 00 00              add         byte ptr [rax],al
  0000000140004A45: 00 00              add         byte ptr [rax],al
  0000000140004A47: 00 38              add         byte ptr [rax],bh
  0000000140004A49: 01 00              add         dword ptr [rax],eax
  0000000140004A4B: 00 00              add         byte ptr [rax],al
  0000000140004A4D: 00 00              add         byte ptr [rax],al
  0000000140004A4F: 00 38              add         byte ptr [rax],bh
  0000000140004A51: 01 00              add         dword ptr [rax],eax
  0000000140004A53: 00 00              add         byte ptr [rax],al
  0000000140004A55: 00 00              add         byte ptr [rax],al
  0000000140004A57: 00 38              add         byte ptr [rax],bh
  0000000140004A59: 01 00              add         dword ptr [rax],eax
  0000000140004A5B: 00 00              add         byte ptr [rax],al
  0000000140004A5D: 00 00              add         byte ptr [rax],al
  0000000140004A5F: 00 38              add         byte ptr [rax],bh
  0000000140004A61: 01 00              add         dword ptr [rax],eax
  0000000140004A63: 00 00              add         byte ptr [rax],al
  0000000140004A65: 00 00              add         byte ptr [rax],al
  0000000140004A67: 00 38              add         byte ptr [rax],bh
  0000000140004A69: 01 00              add         dword ptr [rax],eax
  0000000140004A6B: 00 00              add         byte ptr [rax],al
  0000000140004A6D: 00 00              add         byte ptr [rax],al
  0000000140004A6F: 00 38              add         byte ptr [rax],bh
  0000000140004A71: 01 00              add         dword ptr [rax],eax
  0000000140004A73: 00 00              add         byte ptr [rax],al
  0000000140004A75: 00 00              add         byte ptr [rax],al
  0000000140004A77: 00 38              add         byte ptr [rax],bh
  0000000140004A79: 01 00              add         dword ptr [rax],eax
  0000000140004A7B: 00 00              add         byte ptr [rax],al
  0000000140004A7D: 00 00              add         byte ptr [rax],al
  0000000140004A7F: 00 38              add         byte ptr [rax],bh
  0000000140004A81: 01 00              add         dword ptr [rax],eax
  0000000140004A83: 00 00              add         byte ptr [rax],al
  0000000140004A85: 00 00              add         byte ptr [rax],al
  0000000140004A87: 00 38              add         byte ptr [rax],bh
  0000000140004A89: 01 00              add         dword ptr [rax],eax
  0000000140004A8B: 00 00              add         byte ptr [rax],al
  0000000140004A8D: 00 00              add         byte ptr [rax],al
  0000000140004A8F: 00 38              add         byte ptr [rax],bh
  0000000140004A91: 01 00              add         dword ptr [rax],eax
  0000000140004A93: 00 00              add         byte ptr [rax],al
  0000000140004A95: 00 00              add         byte ptr [rax],al
  0000000140004A97: 00 38              add         byte ptr [rax],bh
  0000000140004A99: 01 00              add         dword ptr [rax],eax
  0000000140004A9B: 00 00              add         byte ptr [rax],al
  0000000140004A9D: 00 00              add         byte ptr [rax],al
  0000000140004A9F: 00 38              add         byte ptr [rax],bh
  0000000140004AA1: 01 00              add         dword ptr [rax],eax
  0000000140004AA3: 00 00              add         byte ptr [rax],al
  0000000140004AA5: 00 00              add         byte ptr [rax],al
  0000000140004AA7: 00 38              add         byte ptr [rax],bh
  0000000140004AA9: 01 00              add         dword ptr [rax],eax
  0000000140004AAB: 00 00              add         byte ptr [rax],al
  0000000140004AAD: 00 00              add         byte ptr [rax],al
  0000000140004AAF: 00 38              add         byte ptr [rax],bh
  0000000140004AB1: 01 00              add         dword ptr [rax],eax
  0000000140004AB3: 00 00              add         byte ptr [rax],al
  0000000140004AB5: 00 00              add         byte ptr [rax],al
  0000000140004AB7: 00 38              add         byte ptr [rax],bh
  0000000140004AB9: 01 00              add         dword ptr [rax],eax
  0000000140004ABB: 00 00              add         byte ptr [rax],al
  0000000140004ABD: 00 00              add         byte ptr [rax],al
  0000000140004ABF: 00 38              add         byte ptr [rax],bh
  0000000140004AC1: 01 00              add         dword ptr [rax],eax
  0000000140004AC3: 00 00              add         byte ptr [rax],al
  0000000140004AC5: 00 00              add         byte ptr [rax],al
  0000000140004AC7: 00 38              add         byte ptr [rax],bh
  0000000140004AC9: 01 00              add         dword ptr [rax],eax
  0000000140004ACB: 00 00              add         byte ptr [rax],al
  0000000140004ACD: 00 00              add         byte ptr [rax],al
  0000000140004ACF: 00 38              add         byte ptr [rax],bh
  0000000140004AD1: 01 00              add         dword ptr [rax],eax
  0000000140004AD3: 00 00              add         byte ptr [rax],al
  0000000140004AD5: 00 00              add         byte ptr [rax],al
  0000000140004AD7: 00 38              add         byte ptr [rax],bh
  0000000140004AD9: 01 00              add         dword ptr [rax],eax
  0000000140004ADB: 00 00              add         byte ptr [rax],al
  0000000140004ADD: 00 00              add         byte ptr [rax],al
  0000000140004ADF: 00 38              add         byte ptr [rax],bh
  0000000140004AE1: 01 00              add         dword ptr [rax],eax
  0000000140004AE3: 00 00              add         byte ptr [rax],al
  0000000140004AE5: 00 00              add         byte ptr [rax],al
  0000000140004AE7: 00 38              add         byte ptr [rax],bh
  0000000140004AE9: 01 00              add         dword ptr [rax],eax
  0000000140004AEB: 00 00              add         byte ptr [rax],al
  0000000140004AED: 00 00              add         byte ptr [rax],al
  0000000140004AEF: 00 38              add         byte ptr [rax],bh
  0000000140004AF1: 01 00              add         dword ptr [rax],eax
  0000000140004AF3: 00 00              add         byte ptr [rax],al
  0000000140004AF5: 00 00              add         byte ptr [rax],al
  0000000140004AF7: 00 38              add         byte ptr [rax],bh
  0000000140004AF9: 01 00              add         dword ptr [rax],eax
  0000000140004AFB: 00 00              add         byte ptr [rax],al
  0000000140004AFD: 00 00              add         byte ptr [rax],al
  0000000140004AFF: 00 C2              add         dl,al
  0000000140004B01: 02 00              add         al,byte ptr [rax]
  0000000140004B03: 00 00              add         byte ptr [rax],al
  0000000140004B05: 00 00              add         byte ptr [rax],al
  0000000140004B07: 00 CA              add         dl,cl
  0000000140004B09: 02 00              add         al,byte ptr [rax]
  0000000140004B0B: 00 00              add         byte ptr [rax],al
  0000000140004B0D: 00 00              add         byte ptr [rax],al
  0000000140004B0F: 00 BD 02 00 00 00  add         byte ptr [rbp+2],bh
  0000000140004B15: 00 00              add         byte ptr [rax],al
  0000000140004B17: 00 B4 02 00 00 00  add         byte ptr [rdx+rax],dh
                    00
  0000000140004B1E: 00 00              add         byte ptr [rax],al
  0000000140004B20: A7                 cmps        dword ptr [rsi],dword ptr [rdi]
  0000000140004B21: 02 00              add         al,byte ptr [rax]
  0000000140004B23: 00 00              add         byte ptr [rax],al
  0000000140004B25: 00 00              add         byte ptr [rax],al
  0000000140004B27: 00 9F 02 00 00 00  add         byte ptr [rdi+2],bl
  0000000140004B2D: 00 00              add         byte ptr [rax],al
  0000000140004B2F: 00 9F 02 00 00 00  add         byte ptr [rdi+2],bl
  0000000140004B35: 00 00              add         byte ptr [rax],al
  0000000140004B37: 00 9F 02 00 00 00  add         byte ptr [rdi+2],bl
  0000000140004B3D: 00 00              add         byte ptr [rax],al
  0000000140004B3F: 00 93 02 00 00 00  add         byte ptr [rbx+2],dl
  0000000140004B45: 00 00              add         byte ptr [rax],al
  0000000140004B47: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B4D: 00 00              add         byte ptr [rax],al
  0000000140004B4F: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B55: 00 00              add         byte ptr [rax],al
  0000000140004B57: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B5D: 00 00              add         byte ptr [rax],al
  0000000140004B5F: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B65: 00 00              add         byte ptr [rax],al
  0000000140004B67: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B6D: 00 00              add         byte ptr [rax],al
  0000000140004B6F: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B75: 00 00              add         byte ptr [rax],al
  0000000140004B77: 00 8B 02 00 00 00  add         byte ptr [rbx+2],cl
  0000000140004B7D: 00 00              add         byte ptr [rax],al
  0000000140004B7F: 00 7F 02           add         byte ptr [rdi+2],bh
  0000000140004B82: 00 00              add         byte ptr [rax],al
  0000000140004B84: 00 00              add         byte ptr [rax],al
  0000000140004B86: 00 00              add         byte ptr [rax],al
  0000000140004B88: 75 02              jne         0000000140004B8C
  0000000140004B8A: 00 00              add         byte ptr [rax],al
  0000000140004B8C: 00 00              add         byte ptr [rax],al
  0000000140004B8E: 00 00              add         byte ptr [rax],al
  0000000140004B90: 75 02              jne         0000000140004B94
  0000000140004B92: 00 00              add         byte ptr [rax],al
  0000000140004B94: 00 00              add         byte ptr [rax],al
  0000000140004B96: 00 00              add         byte ptr [rax],al
  0000000140004B98: 75 02              jne         0000000140004B9C
  0000000140004B9A: 00 00              add         byte ptr [rax],al
  0000000140004B9C: 00 00              add         byte ptr [rax],al
  0000000140004B9E: 00 00              add         byte ptr [rax],al
  0000000140004BA0: 75 02              jne         0000000140004BA4
  0000000140004BA2: 00 00              add         byte ptr [rax],al
  0000000140004BA4: 00 00              add         byte ptr [rax],al
  0000000140004BA6: 00 00              add         byte ptr [rax],al
  0000000140004BA8: 75 02              jne         0000000140004BAC
  0000000140004BAA: 00 00              add         byte ptr [rax],al
  0000000140004BAC: 00 00              add         byte ptr [rax],al
  0000000140004BAE: 00 00              add         byte ptr [rax],al
  0000000140004BB0: 75 02              jne         0000000140004BB4
  0000000140004BB2: 00 00              add         byte ptr [rax],al
  0000000140004BB4: 00 00              add         byte ptr [rax],al
  0000000140004BB6: 00 00              add         byte ptr [rax],al
  0000000140004BB8: 75 02              jne         0000000140004BBC
  0000000140004BBA: 00 00              add         byte ptr [rax],al
  0000000140004BBC: 00 00              add         byte ptr [rax],al
  0000000140004BBE: 00 00              add         byte ptr [rax],al
  0000000140004BC0: 75 02              jne         0000000140004BC4
  0000000140004BC2: 00 00              add         byte ptr [rax],al
  0000000140004BC4: 00 00              add         byte ptr [rax],al
  0000000140004BC6: 00 00              add         byte ptr [rax],al
  0000000140004BC8: 75 02              jne         0000000140004BCC
  0000000140004BCA: 00 00              add         byte ptr [rax],al
  0000000140004BCC: 00 00              add         byte ptr [rax],al
  0000000140004BCE: 00 00              add         byte ptr [rax],al
  0000000140004BD0: 75 02              jne         0000000140004BD4
  0000000140004BD2: 00 00              add         byte ptr [rax],al
  0000000140004BD4: 00 00              add         byte ptr [rax],al
  0000000140004BD6: 00 00              add         byte ptr [rax],al
  0000000140004BD8: 75 02              jne         0000000140004BDC
  0000000140004BDA: 00 00              add         byte ptr [rax],al
  0000000140004BDC: 00 00              add         byte ptr [rax],al
  0000000140004BDE: 00 00              add         byte ptr [rax],al
  0000000140004BE0: 75 02              jne         0000000140004BE4
  0000000140004BE2: 00 00              add         byte ptr [rax],al
  0000000140004BE4: 00 00              add         byte ptr [rax],al
  0000000140004BE6: 00 00              add         byte ptr [rax],al
  0000000140004BE8: 75 02              jne         0000000140004BEC
  0000000140004BEA: 00 00              add         byte ptr [rax],al
  0000000140004BEC: 00 00              add         byte ptr [rax],al
  0000000140004BEE: 00 00              add         byte ptr [rax],al
  0000000140004BF0: 75 02              jne         0000000140004BF4
  0000000140004BF2: 00 00              add         byte ptr [rax],al
  0000000140004BF4: 00 00              add         byte ptr [rax],al
  0000000140004BF6: 00 00              add         byte ptr [rax],al
  0000000140004BF8: 75 02              jne         0000000140004BFC
  0000000140004BFA: 00 00              add         byte ptr [rax],al
  0000000140004BFC: 00 00              add         byte ptr [rax],al
  0000000140004BFE: 00 00              add         byte ptr [rax],al
  0000000140004C00: 66 02 00           add         al,byte ptr [rax]
  0000000140004C03: 00 00              add         byte ptr [rax],al
  0000000140004C05: 00 00              add         byte ptr [rax],al
  0000000140004C07: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C0B: 00 00              add         byte ptr [rax],al
  0000000140004C0D: 00 00              add         byte ptr [rax],al
  0000000140004C0F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C13: 00 00              add         byte ptr [rax],al
  0000000140004C15: 00 00              add         byte ptr [rax],al
  0000000140004C17: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C1B: 00 00              add         byte ptr [rax],al
  0000000140004C1D: 00 00              add         byte ptr [rax],al
  0000000140004C1F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C23: 00 00              add         byte ptr [rax],al
  0000000140004C25: 00 00              add         byte ptr [rax],al
  0000000140004C27: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C2B: 00 00              add         byte ptr [rax],al
  0000000140004C2D: 00 00              add         byte ptr [rax],al
  0000000140004C2F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C33: 00 00              add         byte ptr [rax],al
  0000000140004C35: 00 00              add         byte ptr [rax],al
  0000000140004C37: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C3B: 00 00              add         byte ptr [rax],al
  0000000140004C3D: 00 00              add         byte ptr [rax],al
  0000000140004C3F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C43: 00 00              add         byte ptr [rax],al
  0000000140004C45: 00 00              add         byte ptr [rax],al
  0000000140004C47: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C4B: 00 00              add         byte ptr [rax],al
  0000000140004C4D: 00 00              add         byte ptr [rax],al
  0000000140004C4F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C53: 00 00              add         byte ptr [rax],al
  0000000140004C55: 00 00              add         byte ptr [rax],al
  0000000140004C57: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C5B: 00 00              add         byte ptr [rax],al
  0000000140004C5D: 00 00              add         byte ptr [rax],al
  0000000140004C5F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C63: 00 00              add         byte ptr [rax],al
  0000000140004C65: 00 00              add         byte ptr [rax],al
  0000000140004C67: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C6B: 00 00              add         byte ptr [rax],al
  0000000140004C6D: 00 00              add         byte ptr [rax],al
  0000000140004C6F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C73: 00 00              add         byte ptr [rax],al
  0000000140004C75: 00 00              add         byte ptr [rax],al
  0000000140004C77: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C7B: 00 00              add         byte ptr [rax],al
  0000000140004C7D: 00 00              add         byte ptr [rax],al
  0000000140004C7F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C83: 00 00              add         byte ptr [rax],al
  0000000140004C85: 00 00              add         byte ptr [rax],al
  0000000140004C87: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C8B: 00 00              add         byte ptr [rax],al
  0000000140004C8D: 00 00              add         byte ptr [rax],al
  0000000140004C8F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C93: 00 00              add         byte ptr [rax],al
  0000000140004C95: 00 00              add         byte ptr [rax],al
  0000000140004C97: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004C9B: 00 00              add         byte ptr [rax],al
  0000000140004C9D: 00 00              add         byte ptr [rax],al
  0000000140004C9F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CA3: 00 00              add         byte ptr [rax],al
  0000000140004CA5: 00 00              add         byte ptr [rax],al
  0000000140004CA7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CAB: 00 00              add         byte ptr [rax],al
  0000000140004CAD: 00 00              add         byte ptr [rax],al
  0000000140004CAF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CB3: 00 00              add         byte ptr [rax],al
  0000000140004CB5: 00 00              add         byte ptr [rax],al
  0000000140004CB7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CBB: 00 00              add         byte ptr [rax],al
  0000000140004CBD: 00 00              add         byte ptr [rax],al
  0000000140004CBF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CC3: 00 00              add         byte ptr [rax],al
  0000000140004CC5: 00 00              add         byte ptr [rax],al
  0000000140004CC7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CCB: 00 00              add         byte ptr [rax],al
  0000000140004CCD: 00 00              add         byte ptr [rax],al
  0000000140004CCF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CD3: 00 00              add         byte ptr [rax],al
  0000000140004CD5: 00 00              add         byte ptr [rax],al
  0000000140004CD7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CDB: 00 00              add         byte ptr [rax],al
  0000000140004CDD: 00 00              add         byte ptr [rax],al
  0000000140004CDF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CE3: 00 00              add         byte ptr [rax],al
  0000000140004CE5: 00 00              add         byte ptr [rax],al
  0000000140004CE7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CEB: 00 00              add         byte ptr [rax],al
  0000000140004CED: 00 00              add         byte ptr [rax],al
  0000000140004CEF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CF3: 00 00              add         byte ptr [rax],al
  0000000140004CF5: 00 00              add         byte ptr [rax],al
  0000000140004CF7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140004CFB: 00 00              add         byte ptr [rax],al
  0000000140004CFD: 00 00              add         byte ptr [rax],al
  0000000140004CFF: 00 E5              add         ch,ah
  0000000140004D01: 02 00              add         al,byte ptr [rax]
  0000000140004D03: 00 00              add         byte ptr [rax],al
  0000000140004D05: 00 00              add         byte ptr [rax],al
  0000000140004D07: 00 E5              add         ch,ah
  0000000140004D09: 02 00              add         al,byte ptr [rax]
  0000000140004D0B: 00 00              add         byte ptr [rax],al
  0000000140004D0D: 00 00              add         byte ptr [rax],al
  0000000140004D0F: 00 E5              add         ch,ah
  0000000140004D11: 02 00              add         al,byte ptr [rax]
  0000000140004D13: 00 00              add         byte ptr [rax],al
  0000000140004D15: 00 00              add         byte ptr [rax],al
  0000000140004D17: 00 E5              add         ch,ah
  0000000140004D19: 02 00              add         al,byte ptr [rax]
  0000000140004D1B: 00 00              add         byte ptr [rax],al
  0000000140004D1D: 00 00              add         byte ptr [rax],al
  0000000140004D1F: 00 E5              add         ch,ah
  0000000140004D21: 02 00              add         al,byte ptr [rax]
  0000000140004D23: 00 00              add         byte ptr [rax],al
  0000000140004D25: 00 00              add         byte ptr [rax],al
  0000000140004D27: 00 E5              add         ch,ah
  0000000140004D29: 02 00              add         al,byte ptr [rax]
  0000000140004D2B: 00 00              add         byte ptr [rax],al
  0000000140004D2D: 00 00              add         byte ptr [rax],al
  0000000140004D2F: 00 E5              add         ch,ah
  0000000140004D31: 02 00              add         al,byte ptr [rax]
  0000000140004D33: 00 00              add         byte ptr [rax],al
  0000000140004D35: 00 00              add         byte ptr [rax],al
  0000000140004D37: 00 E5              add         ch,ah
  0000000140004D39: 02 00              add         al,byte ptr [rax]
  0000000140004D3B: 00 00              add         byte ptr [rax],al
  0000000140004D3D: 00 00              add         byte ptr [rax],al
  0000000140004D3F: 00 E5              add         ch,ah
  0000000140004D41: 02 00              add         al,byte ptr [rax]
  0000000140004D43: 00 00              add         byte ptr [rax],al
  0000000140004D45: 00 00              add         byte ptr [rax],al
  0000000140004D47: 00 E5              add         ch,ah
  0000000140004D49: 02 00              add         al,byte ptr [rax]
  0000000140004D4B: 00 00              add         byte ptr [rax],al
  0000000140004D4D: 00 00              add         byte ptr [rax],al
  0000000140004D4F: 00 E5              add         ch,ah
  0000000140004D51: 02 00              add         al,byte ptr [rax]
  0000000140004D53: 00 00              add         byte ptr [rax],al
  0000000140004D55: 00 00              add         byte ptr [rax],al
  0000000140004D57: 00 E5              add         ch,ah
  0000000140004D59: 02 00              add         al,byte ptr [rax]
  0000000140004D5B: 00 00              add         byte ptr [rax],al
  0000000140004D5D: 00 00              add         byte ptr [rax],al
  0000000140004D5F: 00 E5              add         ch,ah
  0000000140004D61: 02 00              add         al,byte ptr [rax]
  0000000140004D63: 00 00              add         byte ptr [rax],al
  0000000140004D65: 00 00              add         byte ptr [rax],al
  0000000140004D67: 00 E5              add         ch,ah
  0000000140004D69: 02 00              add         al,byte ptr [rax]
  0000000140004D6B: 00 00              add         byte ptr [rax],al
  0000000140004D6D: 00 00              add         byte ptr [rax],al
  0000000140004D6F: 00 E5              add         ch,ah
  0000000140004D71: 02 00              add         al,byte ptr [rax]
  0000000140004D73: 00 00              add         byte ptr [rax],al
  0000000140004D75: 00 00              add         byte ptr [rax],al
  0000000140004D77: 00 E5              add         ch,ah
  0000000140004D79: 02 00              add         al,byte ptr [rax]
  0000000140004D7B: 00 00              add         byte ptr [rax],al
  0000000140004D7D: 00 00              add         byte ptr [rax],al
  0000000140004D7F: 00 E5              add         ch,ah
  0000000140004D81: 02 00              add         al,byte ptr [rax]
  0000000140004D83: 00 00              add         byte ptr [rax],al
  0000000140004D85: 00 00              add         byte ptr [rax],al
  0000000140004D87: 00 E5              add         ch,ah
  0000000140004D89: 02 00              add         al,byte ptr [rax]
  0000000140004D8B: 00 00              add         byte ptr [rax],al
  0000000140004D8D: 00 00              add         byte ptr [rax],al
  0000000140004D8F: 00 E5              add         ch,ah
  0000000140004D91: 02 00              add         al,byte ptr [rax]
  0000000140004D93: 00 00              add         byte ptr [rax],al
  0000000140004D95: 00 00              add         byte ptr [rax],al
  0000000140004D97: 00 E5              add         ch,ah
  0000000140004D99: 02 00              add         al,byte ptr [rax]
  0000000140004D9B: 00 00              add         byte ptr [rax],al
  0000000140004D9D: 00 00              add         byte ptr [rax],al
  0000000140004D9F: 00 E5              add         ch,ah
  0000000140004DA1: 02 00              add         al,byte ptr [rax]
  0000000140004DA3: 00 00              add         byte ptr [rax],al
  0000000140004DA5: 00 00              add         byte ptr [rax],al
  0000000140004DA7: 00 E5              add         ch,ah
  0000000140004DA9: 02 00              add         al,byte ptr [rax]
  0000000140004DAB: 00 00              add         byte ptr [rax],al
  0000000140004DAD: 00 00              add         byte ptr [rax],al
  0000000140004DAF: 00 E5              add         ch,ah
  0000000140004DB1: 02 00              add         al,byte ptr [rax]
  0000000140004DB3: 00 00              add         byte ptr [rax],al
  0000000140004DB5: 00 00              add         byte ptr [rax],al
  0000000140004DB7: 00 E5              add         ch,ah
  0000000140004DB9: 02 00              add         al,byte ptr [rax]
  0000000140004DBB: 00 00              add         byte ptr [rax],al
  0000000140004DBD: 00 00              add         byte ptr [rax],al
  0000000140004DBF: 00 E5              add         ch,ah
  0000000140004DC1: 02 00              add         al,byte ptr [rax]
  0000000140004DC3: 00 00              add         byte ptr [rax],al
  0000000140004DC5: 00 00              add         byte ptr [rax],al
  0000000140004DC7: 00 E5              add         ch,ah
  0000000140004DC9: 02 00              add         al,byte ptr [rax]
  0000000140004DCB: 00 00              add         byte ptr [rax],al
  0000000140004DCD: 00 00              add         byte ptr [rax],al
  0000000140004DCF: 00 E5              add         ch,ah
  0000000140004DD1: 02 00              add         al,byte ptr [rax]
  0000000140004DD3: 00 00              add         byte ptr [rax],al
  0000000140004DD5: 00 00              add         byte ptr [rax],al
  0000000140004DD7: 00 E5              add         ch,ah
  0000000140004DD9: 02 00              add         al,byte ptr [rax]
  0000000140004DDB: 00 00              add         byte ptr [rax],al
  0000000140004DDD: 00 00              add         byte ptr [rax],al
  0000000140004DDF: 00 E5              add         ch,ah
  0000000140004DE1: 02 00              add         al,byte ptr [rax]
  0000000140004DE3: 00 00              add         byte ptr [rax],al
  0000000140004DE5: 00 00              add         byte ptr [rax],al
  0000000140004DE7: 00 E5              add         ch,ah
  0000000140004DE9: 02 00              add         al,byte ptr [rax]
  0000000140004DEB: 00 00              add         byte ptr [rax],al
  0000000140004DED: 00 00              add         byte ptr [rax],al
  0000000140004DEF: 00 E5              add         ch,ah
  0000000140004DF1: 02 00              add         al,byte ptr [rax]
  0000000140004DF3: 00 00              add         byte ptr [rax],al
  0000000140004DF5: 00 00              add         byte ptr [rax],al
  0000000140004DF7: 00 E5              add         ch,ah
  0000000140004DF9: 02 00              add         al,byte ptr [rax]
  0000000140004DFB: 00 00              add         byte ptr [rax],al
  0000000140004DFD: 00 00              add         byte ptr [rax],al
  0000000140004DFF: 00 E5              add         ch,ah
  0000000140004E01: 02 00              add         al,byte ptr [rax]
  0000000140004E03: 00 00              add         byte ptr [rax],al
  0000000140004E05: 00 00              add         byte ptr [rax],al
  0000000140004E07: 00 E5              add         ch,ah
  0000000140004E09: 02 00              add         al,byte ptr [rax]
  0000000140004E0B: 00 00              add         byte ptr [rax],al
  0000000140004E0D: 00 00              add         byte ptr [rax],al
  0000000140004E0F: 00 E5              add         ch,ah
  0000000140004E11: 02 00              add         al,byte ptr [rax]
  0000000140004E13: 00 00              add         byte ptr [rax],al
  0000000140004E15: 00 00              add         byte ptr [rax],al
  0000000140004E17: 00 E5              add         ch,ah
  0000000140004E19: 02 00              add         al,byte ptr [rax]
  0000000140004E1B: 00 00              add         byte ptr [rax],al
  0000000140004E1D: 00 00              add         byte ptr [rax],al
  0000000140004E1F: 00 E5              add         ch,ah
  0000000140004E21: 02 00              add         al,byte ptr [rax]
  0000000140004E23: 00 00              add         byte ptr [rax],al
  0000000140004E25: 00 00              add         byte ptr [rax],al
  0000000140004E27: 00 E5              add         ch,ah
  0000000140004E29: 02 00              add         al,byte ptr [rax]
  0000000140004E2B: 00 00              add         byte ptr [rax],al
  0000000140004E2D: 00 00              add         byte ptr [rax],al
  0000000140004E2F: 00 E5              add         ch,ah
  0000000140004E31: 02 00              add         al,byte ptr [rax]
  0000000140004E33: 00 00              add         byte ptr [rax],al
  0000000140004E35: 00 00              add         byte ptr [rax],al
  0000000140004E37: 00 E5              add         ch,ah
  0000000140004E39: 02 00              add         al,byte ptr [rax]
  0000000140004E3B: 00 00              add         byte ptr [rax],al
  0000000140004E3D: 00 00              add         byte ptr [rax],al
  0000000140004E3F: 00 E5              add         ch,ah
  0000000140004E41: 02 00              add         al,byte ptr [rax]
  0000000140004E43: 00 00              add         byte ptr [rax],al
  0000000140004E45: 00 00              add         byte ptr [rax],al
  0000000140004E47: 00 E5              add         ch,ah
  0000000140004E49: 02 00              add         al,byte ptr [rax]
  0000000140004E4B: 00 00              add         byte ptr [rax],al
  0000000140004E4D: 00 00              add         byte ptr [rax],al
  0000000140004E4F: 00 E5              add         ch,ah
  0000000140004E51: 02 00              add         al,byte ptr [rax]
  0000000140004E53: 00 00              add         byte ptr [rax],al
  0000000140004E55: 00 00              add         byte ptr [rax],al
  0000000140004E57: 00 E5              add         ch,ah
  0000000140004E59: 02 00              add         al,byte ptr [rax]
  0000000140004E5B: 00 00              add         byte ptr [rax],al
  0000000140004E5D: 00 00              add         byte ptr [rax],al
  0000000140004E5F: 00 E5              add         ch,ah
  0000000140004E61: 02 00              add         al,byte ptr [rax]
  0000000140004E63: 00 00              add         byte ptr [rax],al
  0000000140004E65: 00 00              add         byte ptr [rax],al
  0000000140004E67: 00 E5              add         ch,ah
  0000000140004E69: 02 00              add         al,byte ptr [rax]
  0000000140004E6B: 00 00              add         byte ptr [rax],al
  0000000140004E6D: 00 00              add         byte ptr [rax],al
  0000000140004E6F: 00 E5              add         ch,ah
  0000000140004E71: 02 00              add         al,byte ptr [rax]
  0000000140004E73: 00 00              add         byte ptr [rax],al
  0000000140004E75: 00 00              add         byte ptr [rax],al
  0000000140004E77: 00 E5              add         ch,ah
  0000000140004E79: 02 00              add         al,byte ptr [rax]
  0000000140004E7B: 00 00              add         byte ptr [rax],al
  0000000140004E7D: 00 00              add         byte ptr [rax],al
  0000000140004E7F: 00 E5              add         ch,ah
  0000000140004E81: 02 00              add         al,byte ptr [rax]
  0000000140004E83: 00 00              add         byte ptr [rax],al
  0000000140004E85: 00 00              add         byte ptr [rax],al
  0000000140004E87: 00 E5              add         ch,ah
  0000000140004E89: 02 00              add         al,byte ptr [rax]
  0000000140004E8B: 00 00              add         byte ptr [rax],al
  0000000140004E8D: 00 00              add         byte ptr [rax],al
  0000000140004E8F: 00 E5              add         ch,ah
  0000000140004E91: 02 00              add         al,byte ptr [rax]
  0000000140004E93: 00 00              add         byte ptr [rax],al
  0000000140004E95: 00 00              add         byte ptr [rax],al
  0000000140004E97: 00 E5              add         ch,ah
  0000000140004E99: 02 00              add         al,byte ptr [rax]
  0000000140004E9B: 00 00              add         byte ptr [rax],al
  0000000140004E9D: 00 00              add         byte ptr [rax],al
  0000000140004E9F: 00 E5              add         ch,ah
  0000000140004EA1: 02 00              add         al,byte ptr [rax]
  0000000140004EA3: 00 00              add         byte ptr [rax],al
  0000000140004EA5: 00 00              add         byte ptr [rax],al
  0000000140004EA7: 00 E5              add         ch,ah
  0000000140004EA9: 02 00              add         al,byte ptr [rax]
  0000000140004EAB: 00 00              add         byte ptr [rax],al
  0000000140004EAD: 00 00              add         byte ptr [rax],al
  0000000140004EAF: 00 E5              add         ch,ah
  0000000140004EB1: 02 00              add         al,byte ptr [rax]
  0000000140004EB3: 00 00              add         byte ptr [rax],al
  0000000140004EB5: 00 00              add         byte ptr [rax],al
  0000000140004EB7: 00 E5              add         ch,ah
  0000000140004EB9: 02 00              add         al,byte ptr [rax]
  0000000140004EBB: 00 00              add         byte ptr [rax],al
  0000000140004EBD: 00 00              add         byte ptr [rax],al
  0000000140004EBF: 00 E5              add         ch,ah
  0000000140004EC1: 02 00              add         al,byte ptr [rax]
  0000000140004EC3: 00 00              add         byte ptr [rax],al
  0000000140004EC5: 00 00              add         byte ptr [rax],al
  0000000140004EC7: 00 E5              add         ch,ah
  0000000140004EC9: 02 00              add         al,byte ptr [rax]
  0000000140004ECB: 00 00              add         byte ptr [rax],al
  0000000140004ECD: 00 00              add         byte ptr [rax],al
  0000000140004ECF: 00 E5              add         ch,ah
  0000000140004ED1: 02 00              add         al,byte ptr [rax]
  0000000140004ED3: 00 00              add         byte ptr [rax],al
  0000000140004ED5: 00 00              add         byte ptr [rax],al
  0000000140004ED7: 00 E5              add         ch,ah
  0000000140004ED9: 02 00              add         al,byte ptr [rax]
  0000000140004EDB: 00 00              add         byte ptr [rax],al
  0000000140004EDD: 00 00              add         byte ptr [rax],al
  0000000140004EDF: 00 E5              add         ch,ah
  0000000140004EE1: 02 00              add         al,byte ptr [rax]
  0000000140004EE3: 00 00              add         byte ptr [rax],al
  0000000140004EE5: 00 00              add         byte ptr [rax],al
  0000000140004EE7: 00 E5              add         ch,ah
  0000000140004EE9: 02 00              add         al,byte ptr [rax]
  0000000140004EEB: 00 00              add         byte ptr [rax],al
  0000000140004EED: 00 00              add         byte ptr [rax],al
  0000000140004EEF: 00 E5              add         ch,ah
  0000000140004EF1: 02 00              add         al,byte ptr [rax]
  0000000140004EF3: 00 00              add         byte ptr [rax],al
  0000000140004EF5: 00 00              add         byte ptr [rax],al
  0000000140004EF7: 00 E5              add         ch,ah
  0000000140004EF9: 02 00              add         al,byte ptr [rax]
  0000000140004EFB: 00 00              add         byte ptr [rax],al
  0000000140004EFD: 00 00              add         byte ptr [rax],al
  0000000140004EFF: 00 EC              add         ah,ch
  0000000140004F01: 02 00              add         al,byte ptr [rax]
  0000000140004F03: 00 00              add         byte ptr [rax],al
  0000000140004F05: 00 00              add         byte ptr [rax],al
  0000000140004F07: 00 EC              add         ah,ch
  0000000140004F09: 02 00              add         al,byte ptr [rax]
  0000000140004F0B: 00 00              add         byte ptr [rax],al
  0000000140004F0D: 00 00              add         byte ptr [rax],al
  0000000140004F0F: 00 EC              add         ah,ch
  0000000140004F11: 02 00              add         al,byte ptr [rax]
  0000000140004F13: 00 00              add         byte ptr [rax],al
  0000000140004F15: 00 00              add         byte ptr [rax],al
  0000000140004F17: 00 EC              add         ah,ch
  0000000140004F19: 02 00              add         al,byte ptr [rax]
  0000000140004F1B: 00 00              add         byte ptr [rax],al
  0000000140004F1D: 00 00              add         byte ptr [rax],al
  0000000140004F1F: 00 EC              add         ah,ch
  0000000140004F21: 02 00              add         al,byte ptr [rax]
  0000000140004F23: 00 00              add         byte ptr [rax],al
  0000000140004F25: 00 00              add         byte ptr [rax],al
  0000000140004F27: 00 EC              add         ah,ch
  0000000140004F29: 02 00              add         al,byte ptr [rax]
  0000000140004F2B: 00 00              add         byte ptr [rax],al
  0000000140004F2D: 00 00              add         byte ptr [rax],al
  0000000140004F2F: 00 EC              add         ah,ch
  0000000140004F31: 02 00              add         al,byte ptr [rax]
  0000000140004F33: 00 00              add         byte ptr [rax],al
  0000000140004F35: 00 00              add         byte ptr [rax],al
  0000000140004F37: 00 EC              add         ah,ch
  0000000140004F39: 02 00              add         al,byte ptr [rax]
  0000000140004F3B: 00 00              add         byte ptr [rax],al
  0000000140004F3D: 00 00              add         byte ptr [rax],al
  0000000140004F3F: 00 EC              add         ah,ch
  0000000140004F41: 02 00              add         al,byte ptr [rax]
  0000000140004F43: 00 00              add         byte ptr [rax],al
  0000000140004F45: 00 00              add         byte ptr [rax],al
  0000000140004F47: 00 EC              add         ah,ch
  0000000140004F49: 02 00              add         al,byte ptr [rax]
  0000000140004F4B: 00 00              add         byte ptr [rax],al
  0000000140004F4D: 00 00              add         byte ptr [rax],al
  0000000140004F4F: 00 EC              add         ah,ch
  0000000140004F51: 02 00              add         al,byte ptr [rax]
  0000000140004F53: 00 00              add         byte ptr [rax],al
  0000000140004F55: 00 00              add         byte ptr [rax],al
  0000000140004F57: 00 EC              add         ah,ch
  0000000140004F59: 02 00              add         al,byte ptr [rax]
  0000000140004F5B: 00 00              add         byte ptr [rax],al
  0000000140004F5D: 00 00              add         byte ptr [rax],al
  0000000140004F5F: 00 EC              add         ah,ch
  0000000140004F61: 02 00              add         al,byte ptr [rax]
  0000000140004F63: 00 00              add         byte ptr [rax],al
  0000000140004F65: 00 00              add         byte ptr [rax],al
  0000000140004F67: 00 EC              add         ah,ch
  0000000140004F69: 02 00              add         al,byte ptr [rax]
  0000000140004F6B: 00 00              add         byte ptr [rax],al
  0000000140004F6D: 00 00              add         byte ptr [rax],al
  0000000140004F6F: 00 EC              add         ah,ch
  0000000140004F71: 02 00              add         al,byte ptr [rax]
  0000000140004F73: 00 00              add         byte ptr [rax],al
  0000000140004F75: 00 00              add         byte ptr [rax],al
  0000000140004F77: 00 EC              add         ah,ch
  0000000140004F79: 02 00              add         al,byte ptr [rax]
  0000000140004F7B: 00 00              add         byte ptr [rax],al
  0000000140004F7D: 00 00              add         byte ptr [rax],al
  0000000140004F7F: 00 EC              add         ah,ch
  0000000140004F81: 02 00              add         al,byte ptr [rax]
  0000000140004F83: 00 00              add         byte ptr [rax],al
  0000000140004F85: 00 00              add         byte ptr [rax],al
  0000000140004F87: 00 EC              add         ah,ch
  0000000140004F89: 02 00              add         al,byte ptr [rax]
  0000000140004F8B: 00 00              add         byte ptr [rax],al
  0000000140004F8D: 00 00              add         byte ptr [rax],al
  0000000140004F8F: 00 EC              add         ah,ch
  0000000140004F91: 02 00              add         al,byte ptr [rax]
  0000000140004F93: 00 00              add         byte ptr [rax],al
  0000000140004F95: 00 00              add         byte ptr [rax],al
  0000000140004F97: 00 EC              add         ah,ch
  0000000140004F99: 02 00              add         al,byte ptr [rax]
  0000000140004F9B: 00 00              add         byte ptr [rax],al
  0000000140004F9D: 00 00              add         byte ptr [rax],al
  0000000140004F9F: 00 EC              add         ah,ch
  0000000140004FA1: 02 00              add         al,byte ptr [rax]
  0000000140004FA3: 00 00              add         byte ptr [rax],al
  0000000140004FA5: 00 00              add         byte ptr [rax],al
  0000000140004FA7: 00 EC              add         ah,ch
  0000000140004FA9: 02 00              add         al,byte ptr [rax]
  0000000140004FAB: 00 00              add         byte ptr [rax],al
  0000000140004FAD: 00 00              add         byte ptr [rax],al
  0000000140004FAF: 00 EC              add         ah,ch
  0000000140004FB1: 02 00              add         al,byte ptr [rax]
  0000000140004FB3: 00 00              add         byte ptr [rax],al
  0000000140004FB5: 00 00              add         byte ptr [rax],al
  0000000140004FB7: 00 EC              add         ah,ch
  0000000140004FB9: 02 00              add         al,byte ptr [rax]
  0000000140004FBB: 00 00              add         byte ptr [rax],al
  0000000140004FBD: 00 00              add         byte ptr [rax],al
  0000000140004FBF: 00 EC              add         ah,ch
  0000000140004FC1: 02 00              add         al,byte ptr [rax]
  0000000140004FC3: 00 00              add         byte ptr [rax],al
  0000000140004FC5: 00 00              add         byte ptr [rax],al
  0000000140004FC7: 00 EC              add         ah,ch
  0000000140004FC9: 02 00              add         al,byte ptr [rax]
  0000000140004FCB: 00 00              add         byte ptr [rax],al
  0000000140004FCD: 00 00              add         byte ptr [rax],al
  0000000140004FCF: 00 EC              add         ah,ch
  0000000140004FD1: 02 00              add         al,byte ptr [rax]
  0000000140004FD3: 00 00              add         byte ptr [rax],al
  0000000140004FD5: 00 00              add         byte ptr [rax],al
  0000000140004FD7: 00 EC              add         ah,ch
  0000000140004FD9: 02 00              add         al,byte ptr [rax]
  0000000140004FDB: 00 00              add         byte ptr [rax],al
  0000000140004FDD: 00 00              add         byte ptr [rax],al
  0000000140004FDF: 00 EC              add         ah,ch
  0000000140004FE1: 02 00              add         al,byte ptr [rax]
  0000000140004FE3: 00 00              add         byte ptr [rax],al
  0000000140004FE5: 00 00              add         byte ptr [rax],al
  0000000140004FE7: 00 EC              add         ah,ch
  0000000140004FE9: 02 00              add         al,byte ptr [rax]
  0000000140004FEB: 00 00              add         byte ptr [rax],al
  0000000140004FED: 00 00              add         byte ptr [rax],al
  0000000140004FEF: 00 EC              add         ah,ch
  0000000140004FF1: 02 00              add         al,byte ptr [rax]
  0000000140004FF3: 00 00              add         byte ptr [rax],al
  0000000140004FF5: 00 00              add         byte ptr [rax],al
  0000000140004FF7: 00 EC              add         ah,ch
  0000000140004FF9: 02 00              add         al,byte ptr [rax]
  0000000140004FFB: 00 00              add         byte ptr [rax],al
  0000000140004FFD: 00 00              add         byte ptr [rax],al
  0000000140004FFF: 00 EC              add         ah,ch
  0000000140005001: 02 00              add         al,byte ptr [rax]
  0000000140005003: 00 00              add         byte ptr [rax],al
  0000000140005005: 00 00              add         byte ptr [rax],al
  0000000140005007: 00 EC              add         ah,ch
  0000000140005009: 02 00              add         al,byte ptr [rax]
  000000014000500B: 00 00              add         byte ptr [rax],al
  000000014000500D: 00 00              add         byte ptr [rax],al
  000000014000500F: 00 EC              add         ah,ch
  0000000140005011: 02 00              add         al,byte ptr [rax]
  0000000140005013: 00 00              add         byte ptr [rax],al
  0000000140005015: 00 00              add         byte ptr [rax],al
  0000000140005017: 00 EC              add         ah,ch
  0000000140005019: 02 00              add         al,byte ptr [rax]
  000000014000501B: 00 00              add         byte ptr [rax],al
  000000014000501D: 00 00              add         byte ptr [rax],al
  000000014000501F: 00 EC              add         ah,ch
  0000000140005021: 02 00              add         al,byte ptr [rax]
  0000000140005023: 00 00              add         byte ptr [rax],al
  0000000140005025: 00 00              add         byte ptr [rax],al
  0000000140005027: 00 EC              add         ah,ch
  0000000140005029: 02 00              add         al,byte ptr [rax]
  000000014000502B: 00 00              add         byte ptr [rax],al
  000000014000502D: 00 00              add         byte ptr [rax],al
  000000014000502F: 00 EC              add         ah,ch
  0000000140005031: 02 00              add         al,byte ptr [rax]
  0000000140005033: 00 00              add         byte ptr [rax],al
  0000000140005035: 00 00              add         byte ptr [rax],al
  0000000140005037: 00 EC              add         ah,ch
  0000000140005039: 02 00              add         al,byte ptr [rax]
  000000014000503B: 00 00              add         byte ptr [rax],al
  000000014000503D: 00 00              add         byte ptr [rax],al
  000000014000503F: 00 EC              add         ah,ch
  0000000140005041: 02 00              add         al,byte ptr [rax]
  0000000140005043: 00 00              add         byte ptr [rax],al
  0000000140005045: 00 00              add         byte ptr [rax],al
  0000000140005047: 00 EC              add         ah,ch
  0000000140005049: 02 00              add         al,byte ptr [rax]
  000000014000504B: 00 00              add         byte ptr [rax],al
  000000014000504D: 00 00              add         byte ptr [rax],al
  000000014000504F: 00 EC              add         ah,ch
  0000000140005051: 02 00              add         al,byte ptr [rax]
  0000000140005053: 00 00              add         byte ptr [rax],al
  0000000140005055: 00 00              add         byte ptr [rax],al
  0000000140005057: 00 EC              add         ah,ch
  0000000140005059: 02 00              add         al,byte ptr [rax]
  000000014000505B: 00 00              add         byte ptr [rax],al
  000000014000505D: 00 00              add         byte ptr [rax],al
  000000014000505F: 00 EC              add         ah,ch
  0000000140005061: 02 00              add         al,byte ptr [rax]
  0000000140005063: 00 00              add         byte ptr [rax],al
  0000000140005065: 00 00              add         byte ptr [rax],al
  0000000140005067: 00 EC              add         ah,ch
  0000000140005069: 02 00              add         al,byte ptr [rax]
  000000014000506B: 00 00              add         byte ptr [rax],al
  000000014000506D: 00 00              add         byte ptr [rax],al
  000000014000506F: 00 EC              add         ah,ch
  0000000140005071: 02 00              add         al,byte ptr [rax]
  0000000140005073: 00 00              add         byte ptr [rax],al
  0000000140005075: 00 00              add         byte ptr [rax],al
  0000000140005077: 00 EC              add         ah,ch
  0000000140005079: 02 00              add         al,byte ptr [rax]
  000000014000507B: 00 00              add         byte ptr [rax],al
  000000014000507D: 00 00              add         byte ptr [rax],al
  000000014000507F: 00 EC              add         ah,ch
  0000000140005081: 02 00              add         al,byte ptr [rax]
  0000000140005083: 00 00              add         byte ptr [rax],al
  0000000140005085: 00 00              add         byte ptr [rax],al
  0000000140005087: 00 EC              add         ah,ch
  0000000140005089: 02 00              add         al,byte ptr [rax]
  000000014000508B: 00 00              add         byte ptr [rax],al
  000000014000508D: 00 00              add         byte ptr [rax],al
  000000014000508F: 00 EC              add         ah,ch
  0000000140005091: 02 00              add         al,byte ptr [rax]
  0000000140005093: 00 00              add         byte ptr [rax],al
  0000000140005095: 00 00              add         byte ptr [rax],al
  0000000140005097: 00 EC              add         ah,ch
  0000000140005099: 02 00              add         al,byte ptr [rax]
  000000014000509B: 00 00              add         byte ptr [rax],al
  000000014000509D: 00 00              add         byte ptr [rax],al
  000000014000509F: 00 EC              add         ah,ch
  00000001400050A1: 02 00              add         al,byte ptr [rax]
  00000001400050A3: 00 00              add         byte ptr [rax],al
  00000001400050A5: 00 00              add         byte ptr [rax],al
  00000001400050A7: 00 EC              add         ah,ch
  00000001400050A9: 02 00              add         al,byte ptr [rax]
  00000001400050AB: 00 00              add         byte ptr [rax],al
  00000001400050AD: 00 00              add         byte ptr [rax],al
  00000001400050AF: 00 EC              add         ah,ch
  00000001400050B1: 02 00              add         al,byte ptr [rax]
  00000001400050B3: 00 00              add         byte ptr [rax],al
  00000001400050B5: 00 00              add         byte ptr [rax],al
  00000001400050B7: 00 EC              add         ah,ch
  00000001400050B9: 02 00              add         al,byte ptr [rax]
  00000001400050BB: 00 00              add         byte ptr [rax],al
  00000001400050BD: 00 00              add         byte ptr [rax],al
  00000001400050BF: 00 EC              add         ah,ch
  00000001400050C1: 02 00              add         al,byte ptr [rax]
  00000001400050C3: 00 00              add         byte ptr [rax],al
  00000001400050C5: 00 00              add         byte ptr [rax],al
  00000001400050C7: 00 EC              add         ah,ch
  00000001400050C9: 02 00              add         al,byte ptr [rax]
  00000001400050CB: 00 00              add         byte ptr [rax],al
  00000001400050CD: 00 00              add         byte ptr [rax],al
  00000001400050CF: 00 EC              add         ah,ch
  00000001400050D1: 02 00              add         al,byte ptr [rax]
  00000001400050D3: 00 00              add         byte ptr [rax],al
  00000001400050D5: 00 00              add         byte ptr [rax],al
  00000001400050D7: 00 EC              add         ah,ch
  00000001400050D9: 02 00              add         al,byte ptr [rax]
  00000001400050DB: 00 00              add         byte ptr [rax],al
  00000001400050DD: 00 00              add         byte ptr [rax],al
  00000001400050DF: 00 EC              add         ah,ch
  00000001400050E1: 02 00              add         al,byte ptr [rax]
  00000001400050E3: 00 00              add         byte ptr [rax],al
  00000001400050E5: 00 00              add         byte ptr [rax],al
  00000001400050E7: 00 EC              add         ah,ch
  00000001400050E9: 02 00              add         al,byte ptr [rax]
  00000001400050EB: 00 00              add         byte ptr [rax],al
  00000001400050ED: 00 00              add         byte ptr [rax],al
  00000001400050EF: 00 EC              add         ah,ch
  00000001400050F1: 02 00              add         al,byte ptr [rax]
  00000001400050F3: 00 00              add         byte ptr [rax],al
  00000001400050F5: 00 00              add         byte ptr [rax],al
  00000001400050F7: 00 EC              add         ah,ch
  00000001400050F9: 02 00              add         al,byte ptr [rax]
  00000001400050FB: 00 00              add         byte ptr [rax],al
  00000001400050FD: 00 00              add         byte ptr [rax],al
  00000001400050FF: 00 F3              add         bl,dh
  0000000140005101: 02 00              add         al,byte ptr [rax]
  0000000140005103: 00 00              add         byte ptr [rax],al
  0000000140005105: 00 00              add         byte ptr [rax],al
  0000000140005107: 00 F3              add         bl,dh
  0000000140005109: 02 00              add         al,byte ptr [rax]
  000000014000510B: 00 00              add         byte ptr [rax],al
  000000014000510D: 00 00              add         byte ptr [rax],al
  000000014000510F: 00 F3              add         bl,dh
  0000000140005111: 02 00              add         al,byte ptr [rax]
  0000000140005113: 00 00              add         byte ptr [rax],al
  0000000140005115: 00 00              add         byte ptr [rax],al
  0000000140005117: 00 F3              add         bl,dh
  0000000140005119: 02 00              add         al,byte ptr [rax]
  000000014000511B: 00 00              add         byte ptr [rax],al
  000000014000511D: 00 00              add         byte ptr [rax],al
  000000014000511F: 00 F3              add         bl,dh
  0000000140005121: 02 00              add         al,byte ptr [rax]
  0000000140005123: 00 00              add         byte ptr [rax],al
  0000000140005125: 00 00              add         byte ptr [rax],al
  0000000140005127: 00 F3              add         bl,dh
  0000000140005129: 02 00              add         al,byte ptr [rax]
  000000014000512B: 00 00              add         byte ptr [rax],al
  000000014000512D: 00 00              add         byte ptr [rax],al
  000000014000512F: 00 F3              add         bl,dh
  0000000140005131: 02 00              add         al,byte ptr [rax]
  0000000140005133: 00 00              add         byte ptr [rax],al
  0000000140005135: 00 00              add         byte ptr [rax],al
  0000000140005137: 00 F3              add         bl,dh
  0000000140005139: 02 00              add         al,byte ptr [rax]
  000000014000513B: 00 00              add         byte ptr [rax],al
  000000014000513D: 00 00              add         byte ptr [rax],al
  000000014000513F: 00 F3              add         bl,dh
  0000000140005141: 02 00              add         al,byte ptr [rax]
  0000000140005143: 00 00              add         byte ptr [rax],al
  0000000140005145: 00 00              add         byte ptr [rax],al
  0000000140005147: 00 F3              add         bl,dh
  0000000140005149: 02 00              add         al,byte ptr [rax]
  000000014000514B: 00 00              add         byte ptr [rax],al
  000000014000514D: 00 00              add         byte ptr [rax],al
  000000014000514F: 00 F3              add         bl,dh
  0000000140005151: 02 00              add         al,byte ptr [rax]
  0000000140005153: 00 00              add         byte ptr [rax],al
  0000000140005155: 00 00              add         byte ptr [rax],al
  0000000140005157: 00 F3              add         bl,dh
  0000000140005159: 02 00              add         al,byte ptr [rax]
  000000014000515B: 00 00              add         byte ptr [rax],al
  000000014000515D: 00 00              add         byte ptr [rax],al
  000000014000515F: 00 F3              add         bl,dh
  0000000140005161: 02 00              add         al,byte ptr [rax]
  0000000140005163: 00 00              add         byte ptr [rax],al
  0000000140005165: 00 00              add         byte ptr [rax],al
  0000000140005167: 00 F3              add         bl,dh
  0000000140005169: 02 00              add         al,byte ptr [rax]
  000000014000516B: 00 00              add         byte ptr [rax],al
  000000014000516D: 00 00              add         byte ptr [rax],al
  000000014000516F: 00 F3              add         bl,dh
  0000000140005171: 02 00              add         al,byte ptr [rax]
  0000000140005173: 00 00              add         byte ptr [rax],al
  0000000140005175: 00 00              add         byte ptr [rax],al
  0000000140005177: 00 F3              add         bl,dh
  0000000140005179: 02 00              add         al,byte ptr [rax]
  000000014000517B: 00 00              add         byte ptr [rax],al
  000000014000517D: 00 00              add         byte ptr [rax],al
  000000014000517F: 00 F3              add         bl,dh
  0000000140005181: 02 00              add         al,byte ptr [rax]
  0000000140005183: 00 00              add         byte ptr [rax],al
  0000000140005185: 00 00              add         byte ptr [rax],al
  0000000140005187: 00 F3              add         bl,dh
  0000000140005189: 02 00              add         al,byte ptr [rax]
  000000014000518B: 00 00              add         byte ptr [rax],al
  000000014000518D: 00 00              add         byte ptr [rax],al
  000000014000518F: 00 F3              add         bl,dh
  0000000140005191: 02 00              add         al,byte ptr [rax]
  0000000140005193: 00 00              add         byte ptr [rax],al
  0000000140005195: 00 00              add         byte ptr [rax],al
  0000000140005197: 00 F3              add         bl,dh
  0000000140005199: 02 00              add         al,byte ptr [rax]
  000000014000519B: 00 00              add         byte ptr [rax],al
  000000014000519D: 00 00              add         byte ptr [rax],al
  000000014000519F: 00 F3              add         bl,dh
  00000001400051A1: 02 00              add         al,byte ptr [rax]
  00000001400051A3: 00 00              add         byte ptr [rax],al
  00000001400051A5: 00 00              add         byte ptr [rax],al
  00000001400051A7: 00 F3              add         bl,dh
  00000001400051A9: 02 00              add         al,byte ptr [rax]
  00000001400051AB: 00 00              add         byte ptr [rax],al
  00000001400051AD: 00 00              add         byte ptr [rax],al
  00000001400051AF: 00 F3              add         bl,dh
  00000001400051B1: 02 00              add         al,byte ptr [rax]
  00000001400051B3: 00 00              add         byte ptr [rax],al
  00000001400051B5: 00 00              add         byte ptr [rax],al
  00000001400051B7: 00 F3              add         bl,dh
  00000001400051B9: 02 00              add         al,byte ptr [rax]
  00000001400051BB: 00 00              add         byte ptr [rax],al
  00000001400051BD: 00 00              add         byte ptr [rax],al
  00000001400051BF: 00 F3              add         bl,dh
  00000001400051C1: 02 00              add         al,byte ptr [rax]
  00000001400051C3: 00 00              add         byte ptr [rax],al
  00000001400051C5: 00 00              add         byte ptr [rax],al
  00000001400051C7: 00 F3              add         bl,dh
  00000001400051C9: 02 00              add         al,byte ptr [rax]
  00000001400051CB: 00 00              add         byte ptr [rax],al
  00000001400051CD: 00 00              add         byte ptr [rax],al
  00000001400051CF: 00 F3              add         bl,dh
  00000001400051D1: 02 00              add         al,byte ptr [rax]
  00000001400051D3: 00 00              add         byte ptr [rax],al
  00000001400051D5: 00 00              add         byte ptr [rax],al
  00000001400051D7: 00 F3              add         bl,dh
  00000001400051D9: 02 00              add         al,byte ptr [rax]
  00000001400051DB: 00 00              add         byte ptr [rax],al
  00000001400051DD: 00 00              add         byte ptr [rax],al
  00000001400051DF: 00 F3              add         bl,dh
  00000001400051E1: 02 00              add         al,byte ptr [rax]
  00000001400051E3: 00 00              add         byte ptr [rax],al
  00000001400051E5: 00 00              add         byte ptr [rax],al
  00000001400051E7: 00 F3              add         bl,dh
  00000001400051E9: 02 00              add         al,byte ptr [rax]
  00000001400051EB: 00 00              add         byte ptr [rax],al
  00000001400051ED: 00 00              add         byte ptr [rax],al
  00000001400051EF: 00 F3              add         bl,dh
  00000001400051F1: 02 00              add         al,byte ptr [rax]
  00000001400051F3: 00 00              add         byte ptr [rax],al
  00000001400051F5: 00 00              add         byte ptr [rax],al
  00000001400051F7: 00 F3              add         bl,dh
  00000001400051F9: 02 00              add         al,byte ptr [rax]
  00000001400051FB: 00 00              add         byte ptr [rax],al
  00000001400051FD: 00 00              add         byte ptr [rax],al
  00000001400051FF: 00 F3              add         bl,dh
  0000000140005201: 02 00              add         al,byte ptr [rax]
  0000000140005203: 00 00              add         byte ptr [rax],al
  0000000140005205: 00 00              add         byte ptr [rax],al
  0000000140005207: 00 F3              add         bl,dh
  0000000140005209: 02 00              add         al,byte ptr [rax]
  000000014000520B: 00 00              add         byte ptr [rax],al
  000000014000520D: 00 00              add         byte ptr [rax],al
  000000014000520F: 00 F3              add         bl,dh
  0000000140005211: 02 00              add         al,byte ptr [rax]
  0000000140005213: 00 00              add         byte ptr [rax],al
  0000000140005215: 00 00              add         byte ptr [rax],al
  0000000140005217: 00 F3              add         bl,dh
  0000000140005219: 02 00              add         al,byte ptr [rax]
  000000014000521B: 00 00              add         byte ptr [rax],al
  000000014000521D: 00 00              add         byte ptr [rax],al
  000000014000521F: 00 F3              add         bl,dh
  0000000140005221: 02 00              add         al,byte ptr [rax]
  0000000140005223: 00 00              add         byte ptr [rax],al
  0000000140005225: 00 00              add         byte ptr [rax],al
  0000000140005227: 00 F3              add         bl,dh
  0000000140005229: 02 00              add         al,byte ptr [rax]
  000000014000522B: 00 00              add         byte ptr [rax],al
  000000014000522D: 00 00              add         byte ptr [rax],al
  000000014000522F: 00 F3              add         bl,dh
  0000000140005231: 02 00              add         al,byte ptr [rax]
  0000000140005233: 00 00              add         byte ptr [rax],al
  0000000140005235: 00 00              add         byte ptr [rax],al
  0000000140005237: 00 F3              add         bl,dh
  0000000140005239: 02 00              add         al,byte ptr [rax]
  000000014000523B: 00 00              add         byte ptr [rax],al
  000000014000523D: 00 00              add         byte ptr [rax],al
  000000014000523F: 00 F3              add         bl,dh
  0000000140005241: 02 00              add         al,byte ptr [rax]
  0000000140005243: 00 00              add         byte ptr [rax],al
  0000000140005245: 00 00              add         byte ptr [rax],al
  0000000140005247: 00 F3              add         bl,dh
  0000000140005249: 02 00              add         al,byte ptr [rax]
  000000014000524B: 00 00              add         byte ptr [rax],al
  000000014000524D: 00 00              add         byte ptr [rax],al
  000000014000524F: 00 F3              add         bl,dh
  0000000140005251: 02 00              add         al,byte ptr [rax]
  0000000140005253: 00 00              add         byte ptr [rax],al
  0000000140005255: 00 00              add         byte ptr [rax],al
  0000000140005257: 00 F3              add         bl,dh
  0000000140005259: 02 00              add         al,byte ptr [rax]
  000000014000525B: 00 00              add         byte ptr [rax],al
  000000014000525D: 00 00              add         byte ptr [rax],al
  000000014000525F: 00 F3              add         bl,dh
  0000000140005261: 02 00              add         al,byte ptr [rax]
  0000000140005263: 00 00              add         byte ptr [rax],al
  0000000140005265: 00 00              add         byte ptr [rax],al
  0000000140005267: 00 F3              add         bl,dh
  0000000140005269: 02 00              add         al,byte ptr [rax]
  000000014000526B: 00 00              add         byte ptr [rax],al
  000000014000526D: 00 00              add         byte ptr [rax],al
  000000014000526F: 00 F3              add         bl,dh
  0000000140005271: 02 00              add         al,byte ptr [rax]
  0000000140005273: 00 00              add         byte ptr [rax],al
  0000000140005275: 00 00              add         byte ptr [rax],al
  0000000140005277: 00 F3              add         bl,dh
  0000000140005279: 02 00              add         al,byte ptr [rax]
  000000014000527B: 00 00              add         byte ptr [rax],al
  000000014000527D: 00 00              add         byte ptr [rax],al
  000000014000527F: 00 F3              add         bl,dh
  0000000140005281: 02 00              add         al,byte ptr [rax]
  0000000140005283: 00 00              add         byte ptr [rax],al
  0000000140005285: 00 00              add         byte ptr [rax],al
  0000000140005287: 00 F3              add         bl,dh
  0000000140005289: 02 00              add         al,byte ptr [rax]
  000000014000528B: 00 00              add         byte ptr [rax],al
  000000014000528D: 00 00              add         byte ptr [rax],al
  000000014000528F: 00 F3              add         bl,dh
  0000000140005291: 02 00              add         al,byte ptr [rax]
  0000000140005293: 00 00              add         byte ptr [rax],al
  0000000140005295: 00 00              add         byte ptr [rax],al
  0000000140005297: 00 F3              add         bl,dh
  0000000140005299: 02 00              add         al,byte ptr [rax]
  000000014000529B: 00 00              add         byte ptr [rax],al
  000000014000529D: 00 00              add         byte ptr [rax],al
  000000014000529F: 00 F3              add         bl,dh
  00000001400052A1: 02 00              add         al,byte ptr [rax]
  00000001400052A3: 00 00              add         byte ptr [rax],al
  00000001400052A5: 00 00              add         byte ptr [rax],al
  00000001400052A7: 00 F3              add         bl,dh
  00000001400052A9: 02 00              add         al,byte ptr [rax]
  00000001400052AB: 00 00              add         byte ptr [rax],al
  00000001400052AD: 00 00              add         byte ptr [rax],al
  00000001400052AF: 00 F3              add         bl,dh
  00000001400052B1: 02 00              add         al,byte ptr [rax]
  00000001400052B3: 00 00              add         byte ptr [rax],al
  00000001400052B5: 00 00              add         byte ptr [rax],al
  00000001400052B7: 00 F3              add         bl,dh
  00000001400052B9: 02 00              add         al,byte ptr [rax]
  00000001400052BB: 00 00              add         byte ptr [rax],al
  00000001400052BD: 00 00              add         byte ptr [rax],al
  00000001400052BF: 00 F3              add         bl,dh
  00000001400052C1: 02 00              add         al,byte ptr [rax]
  00000001400052C3: 00 00              add         byte ptr [rax],al
  00000001400052C5: 00 00              add         byte ptr [rax],al
  00000001400052C7: 00 F3              add         bl,dh
  00000001400052C9: 02 00              add         al,byte ptr [rax]
  00000001400052CB: 00 00              add         byte ptr [rax],al
  00000001400052CD: 00 00              add         byte ptr [rax],al
  00000001400052CF: 00 F3              add         bl,dh
  00000001400052D1: 02 00              add         al,byte ptr [rax]
  00000001400052D3: 00 00              add         byte ptr [rax],al
  00000001400052D5: 00 00              add         byte ptr [rax],al
  00000001400052D7: 00 F3              add         bl,dh
  00000001400052D9: 02 00              add         al,byte ptr [rax]
  00000001400052DB: 00 00              add         byte ptr [rax],al
  00000001400052DD: 00 00              add         byte ptr [rax],al
  00000001400052DF: 00 F3              add         bl,dh
  00000001400052E1: 02 00              add         al,byte ptr [rax]
  00000001400052E3: 00 00              add         byte ptr [rax],al
  00000001400052E5: 00 00              add         byte ptr [rax],al
  00000001400052E7: 00 F3              add         bl,dh
  00000001400052E9: 02 00              add         al,byte ptr [rax]
  00000001400052EB: 00 00              add         byte ptr [rax],al
  00000001400052ED: 00 00              add         byte ptr [rax],al
  00000001400052EF: 00 F3              add         bl,dh
  00000001400052F1: 02 00              add         al,byte ptr [rax]
  00000001400052F3: 00 00              add         byte ptr [rax],al
  00000001400052F5: 00 00              add         byte ptr [rax],al
  00000001400052F7: 00 F3              add         bl,dh
  00000001400052F9: 02 00              add         al,byte ptr [rax]
  00000001400052FB: 00 00              add         byte ptr [rax],al
  00000001400052FD: 00 00              add         byte ptr [rax],al
  00000001400052FF: 00 FA              add         dl,bh
  0000000140005301: 02 00              add         al,byte ptr [rax]
  0000000140005303: 00 00              add         byte ptr [rax],al
  0000000140005305: 00 00              add         byte ptr [rax],al
  0000000140005307: 00 FA              add         dl,bh
  0000000140005309: 02 00              add         al,byte ptr [rax]
  000000014000530B: 00 00              add         byte ptr [rax],al
  000000014000530D: 00 00              add         byte ptr [rax],al
  000000014000530F: 00 FA              add         dl,bh
  0000000140005311: 02 00              add         al,byte ptr [rax]
  0000000140005313: 00 00              add         byte ptr [rax],al
  0000000140005315: 00 00              add         byte ptr [rax],al
  0000000140005317: 00 FA              add         dl,bh
  0000000140005319: 02 00              add         al,byte ptr [rax]
  000000014000531B: 00 00              add         byte ptr [rax],al
  000000014000531D: 00 00              add         byte ptr [rax],al
  000000014000531F: 00 FA              add         dl,bh
  0000000140005321: 02 00              add         al,byte ptr [rax]
  0000000140005323: 00 00              add         byte ptr [rax],al
  0000000140005325: 00 00              add         byte ptr [rax],al
  0000000140005327: 00 FA              add         dl,bh
  0000000140005329: 02 00              add         al,byte ptr [rax]
  000000014000532B: 00 00              add         byte ptr [rax],al
  000000014000532D: 00 00              add         byte ptr [rax],al
  000000014000532F: 00 FA              add         dl,bh
  0000000140005331: 02 00              add         al,byte ptr [rax]
  0000000140005333: 00 00              add         byte ptr [rax],al
  0000000140005335: 00 00              add         byte ptr [rax],al
  0000000140005337: 00 FA              add         dl,bh
  0000000140005339: 02 00              add         al,byte ptr [rax]
  000000014000533B: 00 00              add         byte ptr [rax],al
  000000014000533D: 00 00              add         byte ptr [rax],al
  000000014000533F: 00 FA              add         dl,bh
  0000000140005341: 02 00              add         al,byte ptr [rax]
  0000000140005343: 00 00              add         byte ptr [rax],al
  0000000140005345: 00 00              add         byte ptr [rax],al
  0000000140005347: 00 FA              add         dl,bh
  0000000140005349: 02 00              add         al,byte ptr [rax]
  000000014000534B: 00 00              add         byte ptr [rax],al
  000000014000534D: 00 00              add         byte ptr [rax],al
  000000014000534F: 00 FA              add         dl,bh
  0000000140005351: 02 00              add         al,byte ptr [rax]
  0000000140005353: 00 00              add         byte ptr [rax],al
  0000000140005355: 00 00              add         byte ptr [rax],al
  0000000140005357: 00 FA              add         dl,bh
  0000000140005359: 02 00              add         al,byte ptr [rax]
  000000014000535B: 00 00              add         byte ptr [rax],al
  000000014000535D: 00 00              add         byte ptr [rax],al
  000000014000535F: 00 FA              add         dl,bh
  0000000140005361: 02 00              add         al,byte ptr [rax]
  0000000140005363: 00 00              add         byte ptr [rax],al
  0000000140005365: 00 00              add         byte ptr [rax],al
  0000000140005367: 00 FA              add         dl,bh
  0000000140005369: 02 00              add         al,byte ptr [rax]
  000000014000536B: 00 00              add         byte ptr [rax],al
  000000014000536D: 00 00              add         byte ptr [rax],al
  000000014000536F: 00 FA              add         dl,bh
  0000000140005371: 02 00              add         al,byte ptr [rax]
  0000000140005373: 00 00              add         byte ptr [rax],al
  0000000140005375: 00 00              add         byte ptr [rax],al
  0000000140005377: 00 FA              add         dl,bh
  0000000140005379: 02 00              add         al,byte ptr [rax]
  000000014000537B: 00 00              add         byte ptr [rax],al
  000000014000537D: 00 00              add         byte ptr [rax],al
  000000014000537F: 00 FA              add         dl,bh
  0000000140005381: 02 00              add         al,byte ptr [rax]
  0000000140005383: 00 00              add         byte ptr [rax],al
  0000000140005385: 00 00              add         byte ptr [rax],al
  0000000140005387: 00 FA              add         dl,bh
  0000000140005389: 02 00              add         al,byte ptr [rax]
  000000014000538B: 00 00              add         byte ptr [rax],al
  000000014000538D: 00 00              add         byte ptr [rax],al
  000000014000538F: 00 FA              add         dl,bh
  0000000140005391: 02 00              add         al,byte ptr [rax]
  0000000140005393: 00 00              add         byte ptr [rax],al
  0000000140005395: 00 00              add         byte ptr [rax],al
  0000000140005397: 00 FA              add         dl,bh
  0000000140005399: 02 00              add         al,byte ptr [rax]
  000000014000539B: 00 00              add         byte ptr [rax],al
  000000014000539D: 00 00              add         byte ptr [rax],al
  000000014000539F: 00 FA              add         dl,bh
  00000001400053A1: 02 00              add         al,byte ptr [rax]
  00000001400053A3: 00 00              add         byte ptr [rax],al
  00000001400053A5: 00 00              add         byte ptr [rax],al
  00000001400053A7: 00 FA              add         dl,bh
  00000001400053A9: 02 00              add         al,byte ptr [rax]
  00000001400053AB: 00 00              add         byte ptr [rax],al
  00000001400053AD: 00 00              add         byte ptr [rax],al
  00000001400053AF: 00 FA              add         dl,bh
  00000001400053B1: 02 00              add         al,byte ptr [rax]
  00000001400053B3: 00 00              add         byte ptr [rax],al
  00000001400053B5: 00 00              add         byte ptr [rax],al
  00000001400053B7: 00 FA              add         dl,bh
  00000001400053B9: 02 00              add         al,byte ptr [rax]
  00000001400053BB: 00 00              add         byte ptr [rax],al
  00000001400053BD: 00 00              add         byte ptr [rax],al
  00000001400053BF: 00 FA              add         dl,bh
  00000001400053C1: 02 00              add         al,byte ptr [rax]
  00000001400053C3: 00 00              add         byte ptr [rax],al
  00000001400053C5: 00 00              add         byte ptr [rax],al
  00000001400053C7: 00 FA              add         dl,bh
  00000001400053C9: 02 00              add         al,byte ptr [rax]
  00000001400053CB: 00 00              add         byte ptr [rax],al
  00000001400053CD: 00 00              add         byte ptr [rax],al
  00000001400053CF: 00 FA              add         dl,bh
  00000001400053D1: 02 00              add         al,byte ptr [rax]
  00000001400053D3: 00 00              add         byte ptr [rax],al
  00000001400053D5: 00 00              add         byte ptr [rax],al
  00000001400053D7: 00 FA              add         dl,bh
  00000001400053D9: 02 00              add         al,byte ptr [rax]
  00000001400053DB: 00 00              add         byte ptr [rax],al
  00000001400053DD: 00 00              add         byte ptr [rax],al
  00000001400053DF: 00 FA              add         dl,bh
  00000001400053E1: 02 00              add         al,byte ptr [rax]
  00000001400053E3: 00 00              add         byte ptr [rax],al
  00000001400053E5: 00 00              add         byte ptr [rax],al
  00000001400053E7: 00 FA              add         dl,bh
  00000001400053E9: 02 00              add         al,byte ptr [rax]
  00000001400053EB: 00 00              add         byte ptr [rax],al
  00000001400053ED: 00 00              add         byte ptr [rax],al
  00000001400053EF: 00 FA              add         dl,bh
  00000001400053F1: 02 00              add         al,byte ptr [rax]
  00000001400053F3: 00 00              add         byte ptr [rax],al
  00000001400053F5: 00 00              add         byte ptr [rax],al
  00000001400053F7: 00 FA              add         dl,bh
  00000001400053F9: 02 00              add         al,byte ptr [rax]
  00000001400053FB: 00 00              add         byte ptr [rax],al
  00000001400053FD: 00 00              add         byte ptr [rax],al
  00000001400053FF: 00 FA              add         dl,bh
  0000000140005401: 02 00              add         al,byte ptr [rax]
  0000000140005403: 00 00              add         byte ptr [rax],al
  0000000140005405: 00 00              add         byte ptr [rax],al
  0000000140005407: 00 FA              add         dl,bh
  0000000140005409: 02 00              add         al,byte ptr [rax]
  000000014000540B: 00 00              add         byte ptr [rax],al
  000000014000540D: 00 00              add         byte ptr [rax],al
  000000014000540F: 00 FA              add         dl,bh
  0000000140005411: 02 00              add         al,byte ptr [rax]
  0000000140005413: 00 00              add         byte ptr [rax],al
  0000000140005415: 00 00              add         byte ptr [rax],al
  0000000140005417: 00 FA              add         dl,bh
  0000000140005419: 02 00              add         al,byte ptr [rax]
  000000014000541B: 00 00              add         byte ptr [rax],al
  000000014000541D: 00 00              add         byte ptr [rax],al
  000000014000541F: 00 FA              add         dl,bh
  0000000140005421: 02 00              add         al,byte ptr [rax]
  0000000140005423: 00 00              add         byte ptr [rax],al
  0000000140005425: 00 00              add         byte ptr [rax],al
  0000000140005427: 00 FA              add         dl,bh
  0000000140005429: 02 00              add         al,byte ptr [rax]
  000000014000542B: 00 00              add         byte ptr [rax],al
  000000014000542D: 00 00              add         byte ptr [rax],al
  000000014000542F: 00 FA              add         dl,bh
  0000000140005431: 02 00              add         al,byte ptr [rax]
  0000000140005433: 00 00              add         byte ptr [rax],al
  0000000140005435: 00 00              add         byte ptr [rax],al
  0000000140005437: 00 FA              add         dl,bh
  0000000140005439: 02 00              add         al,byte ptr [rax]
  000000014000543B: 00 00              add         byte ptr [rax],al
  000000014000543D: 00 00              add         byte ptr [rax],al
  000000014000543F: 00 FA              add         dl,bh
  0000000140005441: 02 00              add         al,byte ptr [rax]
  0000000140005443: 00 00              add         byte ptr [rax],al
  0000000140005445: 00 00              add         byte ptr [rax],al
  0000000140005447: 00 FA              add         dl,bh
  0000000140005449: 02 00              add         al,byte ptr [rax]
  000000014000544B: 00 00              add         byte ptr [rax],al
  000000014000544D: 00 00              add         byte ptr [rax],al
  000000014000544F: 00 FA              add         dl,bh
  0000000140005451: 02 00              add         al,byte ptr [rax]
  0000000140005453: 00 00              add         byte ptr [rax],al
  0000000140005455: 00 00              add         byte ptr [rax],al
  0000000140005457: 00 FA              add         dl,bh
  0000000140005459: 02 00              add         al,byte ptr [rax]
  000000014000545B: 00 00              add         byte ptr [rax],al
  000000014000545D: 00 00              add         byte ptr [rax],al
  000000014000545F: 00 FA              add         dl,bh
  0000000140005461: 02 00              add         al,byte ptr [rax]
  0000000140005463: 00 00              add         byte ptr [rax],al
  0000000140005465: 00 00              add         byte ptr [rax],al
  0000000140005467: 00 FA              add         dl,bh
  0000000140005469: 02 00              add         al,byte ptr [rax]
  000000014000546B: 00 00              add         byte ptr [rax],al
  000000014000546D: 00 00              add         byte ptr [rax],al
  000000014000546F: 00 FA              add         dl,bh
  0000000140005471: 02 00              add         al,byte ptr [rax]
  0000000140005473: 00 00              add         byte ptr [rax],al
  0000000140005475: 00 00              add         byte ptr [rax],al
  0000000140005477: 00 FA              add         dl,bh
  0000000140005479: 02 00              add         al,byte ptr [rax]
  000000014000547B: 00 00              add         byte ptr [rax],al
  000000014000547D: 00 00              add         byte ptr [rax],al
  000000014000547F: 00 FA              add         dl,bh
  0000000140005481: 02 00              add         al,byte ptr [rax]
  0000000140005483: 00 00              add         byte ptr [rax],al
  0000000140005485: 00 00              add         byte ptr [rax],al
  0000000140005487: 00 FA              add         dl,bh
  0000000140005489: 02 00              add         al,byte ptr [rax]
  000000014000548B: 00 00              add         byte ptr [rax],al
  000000014000548D: 00 00              add         byte ptr [rax],al
  000000014000548F: 00 FA              add         dl,bh
  0000000140005491: 02 00              add         al,byte ptr [rax]
  0000000140005493: 00 00              add         byte ptr [rax],al
  0000000140005495: 00 00              add         byte ptr [rax],al
  0000000140005497: 00 FA              add         dl,bh
  0000000140005499: 02 00              add         al,byte ptr [rax]
  000000014000549B: 00 00              add         byte ptr [rax],al
  000000014000549D: 00 00              add         byte ptr [rax],al
  000000014000549F: 00 FA              add         dl,bh
  00000001400054A1: 02 00              add         al,byte ptr [rax]
  00000001400054A3: 00 00              add         byte ptr [rax],al
  00000001400054A5: 00 00              add         byte ptr [rax],al
  00000001400054A7: 00 FA              add         dl,bh
  00000001400054A9: 02 00              add         al,byte ptr [rax]
  00000001400054AB: 00 00              add         byte ptr [rax],al
  00000001400054AD: 00 00              add         byte ptr [rax],al
  00000001400054AF: 00 FA              add         dl,bh
  00000001400054B1: 02 00              add         al,byte ptr [rax]
  00000001400054B3: 00 00              add         byte ptr [rax],al
  00000001400054B5: 00 00              add         byte ptr [rax],al
  00000001400054B7: 00 FA              add         dl,bh
  00000001400054B9: 02 00              add         al,byte ptr [rax]
  00000001400054BB: 00 00              add         byte ptr [rax],al
  00000001400054BD: 00 00              add         byte ptr [rax],al
  00000001400054BF: 00 FA              add         dl,bh
  00000001400054C1: 02 00              add         al,byte ptr [rax]
  00000001400054C3: 00 00              add         byte ptr [rax],al
  00000001400054C5: 00 00              add         byte ptr [rax],al
  00000001400054C7: 00 FA              add         dl,bh
  00000001400054C9: 02 00              add         al,byte ptr [rax]
  00000001400054CB: 00 00              add         byte ptr [rax],al
  00000001400054CD: 00 00              add         byte ptr [rax],al
  00000001400054CF: 00 FA              add         dl,bh
  00000001400054D1: 02 00              add         al,byte ptr [rax]
  00000001400054D3: 00 00              add         byte ptr [rax],al
  00000001400054D5: 00 00              add         byte ptr [rax],al
  00000001400054D7: 00 FA              add         dl,bh
  00000001400054D9: 02 00              add         al,byte ptr [rax]
  00000001400054DB: 00 00              add         byte ptr [rax],al
  00000001400054DD: 00 00              add         byte ptr [rax],al
  00000001400054DF: 00 FA              add         dl,bh
  00000001400054E1: 02 00              add         al,byte ptr [rax]
  00000001400054E3: 00 00              add         byte ptr [rax],al
  00000001400054E5: 00 00              add         byte ptr [rax],al
  00000001400054E7: 00 FA              add         dl,bh
  00000001400054E9: 02 00              add         al,byte ptr [rax]
  00000001400054EB: 00 00              add         byte ptr [rax],al
  00000001400054ED: 00 00              add         byte ptr [rax],al
  00000001400054EF: 00 FA              add         dl,bh
  00000001400054F1: 02 00              add         al,byte ptr [rax]
  00000001400054F3: 00 00              add         byte ptr [rax],al
  00000001400054F5: 00 00              add         byte ptr [rax],al
  00000001400054F7: 00 FA              add         dl,bh
  00000001400054F9: 02 00              add         al,byte ptr [rax]
  00000001400054FB: 00 00              add         byte ptr [rax],al
  00000001400054FD: 00 00              add         byte ptr [rax],al
  00000001400054FF: 00 01              add         byte ptr [rcx],al
  0000000140005501: 03 00              add         eax,dword ptr [rax]
  0000000140005503: 00 00              add         byte ptr [rax],al
  0000000140005505: 00 00              add         byte ptr [rax],al
  0000000140005507: 00 01              add         byte ptr [rcx],al
  0000000140005509: 03 00              add         eax,dword ptr [rax]
  000000014000550B: 00 00              add         byte ptr [rax],al
  000000014000550D: 00 00              add         byte ptr [rax],al
  000000014000550F: 00 01              add         byte ptr [rcx],al
  0000000140005511: 03 00              add         eax,dword ptr [rax]
  0000000140005513: 00 00              add         byte ptr [rax],al
  0000000140005515: 00 00              add         byte ptr [rax],al
  0000000140005517: 00 01              add         byte ptr [rcx],al
  0000000140005519: 03 00              add         eax,dword ptr [rax]
  000000014000551B: 00 00              add         byte ptr [rax],al
  000000014000551D: 00 00              add         byte ptr [rax],al
  000000014000551F: 00 01              add         byte ptr [rcx],al
  0000000140005521: 03 00              add         eax,dword ptr [rax]
  0000000140005523: 00 00              add         byte ptr [rax],al
  0000000140005525: 00 00              add         byte ptr [rax],al
  0000000140005527: 00 01              add         byte ptr [rcx],al
  0000000140005529: 03 00              add         eax,dword ptr [rax]
  000000014000552B: 00 00              add         byte ptr [rax],al
  000000014000552D: 00 00              add         byte ptr [rax],al
  000000014000552F: 00 01              add         byte ptr [rcx],al
  0000000140005531: 03 00              add         eax,dword ptr [rax]
  0000000140005533: 00 00              add         byte ptr [rax],al
  0000000140005535: 00 00              add         byte ptr [rax],al
  0000000140005537: 00 01              add         byte ptr [rcx],al
  0000000140005539: 03 00              add         eax,dword ptr [rax]
  000000014000553B: 00 00              add         byte ptr [rax],al
  000000014000553D: 00 00              add         byte ptr [rax],al
  000000014000553F: 00 01              add         byte ptr [rcx],al
  0000000140005541: 03 00              add         eax,dword ptr [rax]
  0000000140005543: 00 00              add         byte ptr [rax],al
  0000000140005545: 00 00              add         byte ptr [rax],al
  0000000140005547: 00 01              add         byte ptr [rcx],al
  0000000140005549: 03 00              add         eax,dword ptr [rax]
  000000014000554B: 00 00              add         byte ptr [rax],al
  000000014000554D: 00 00              add         byte ptr [rax],al
  000000014000554F: 00 01              add         byte ptr [rcx],al
  0000000140005551: 03 00              add         eax,dword ptr [rax]
  0000000140005553: 00 00              add         byte ptr [rax],al
  0000000140005555: 00 00              add         byte ptr [rax],al
  0000000140005557: 00 01              add         byte ptr [rcx],al
  0000000140005559: 03 00              add         eax,dword ptr [rax]
  000000014000555B: 00 00              add         byte ptr [rax],al
  000000014000555D: 00 00              add         byte ptr [rax],al
  000000014000555F: 00 01              add         byte ptr [rcx],al
  0000000140005561: 03 00              add         eax,dword ptr [rax]
  0000000140005563: 00 00              add         byte ptr [rax],al
  0000000140005565: 00 00              add         byte ptr [rax],al
  0000000140005567: 00 01              add         byte ptr [rcx],al
  0000000140005569: 03 00              add         eax,dword ptr [rax]
  000000014000556B: 00 00              add         byte ptr [rax],al
  000000014000556D: 00 00              add         byte ptr [rax],al
  000000014000556F: 00 01              add         byte ptr [rcx],al
  0000000140005571: 03 00              add         eax,dword ptr [rax]
  0000000140005573: 00 00              add         byte ptr [rax],al
  0000000140005575: 00 00              add         byte ptr [rax],al
  0000000140005577: 00 01              add         byte ptr [rcx],al
  0000000140005579: 03 00              add         eax,dword ptr [rax]
  000000014000557B: 00 00              add         byte ptr [rax],al
  000000014000557D: 00 00              add         byte ptr [rax],al
  000000014000557F: 00 01              add         byte ptr [rcx],al
  0000000140005581: 03 00              add         eax,dword ptr [rax]
  0000000140005583: 00 00              add         byte ptr [rax],al
  0000000140005585: 00 00              add         byte ptr [rax],al
  0000000140005587: 00 01              add         byte ptr [rcx],al
  0000000140005589: 03 00              add         eax,dword ptr [rax]
  000000014000558B: 00 00              add         byte ptr [rax],al
  000000014000558D: 00 00              add         byte ptr [rax],al
  000000014000558F: 00 01              add         byte ptr [rcx],al
  0000000140005591: 03 00              add         eax,dword ptr [rax]
  0000000140005593: 00 00              add         byte ptr [rax],al
  0000000140005595: 00 00              add         byte ptr [rax],al
  0000000140005597: 00 01              add         byte ptr [rcx],al
  0000000140005599: 03 00              add         eax,dword ptr [rax]
  000000014000559B: 00 00              add         byte ptr [rax],al
  000000014000559D: 00 00              add         byte ptr [rax],al
  000000014000559F: 00 01              add         byte ptr [rcx],al
  00000001400055A1: 03 00              add         eax,dword ptr [rax]
  00000001400055A3: 00 00              add         byte ptr [rax],al
  00000001400055A5: 00 00              add         byte ptr [rax],al
  00000001400055A7: 00 01              add         byte ptr [rcx],al
  00000001400055A9: 03 00              add         eax,dword ptr [rax]
  00000001400055AB: 00 00              add         byte ptr [rax],al
  00000001400055AD: 00 00              add         byte ptr [rax],al
  00000001400055AF: 00 01              add         byte ptr [rcx],al
  00000001400055B1: 03 00              add         eax,dword ptr [rax]
  00000001400055B3: 00 00              add         byte ptr [rax],al
  00000001400055B5: 00 00              add         byte ptr [rax],al
  00000001400055B7: 00 01              add         byte ptr [rcx],al
  00000001400055B9: 03 00              add         eax,dword ptr [rax]
  00000001400055BB: 00 00              add         byte ptr [rax],al
  00000001400055BD: 00 00              add         byte ptr [rax],al
  00000001400055BF: 00 01              add         byte ptr [rcx],al
  00000001400055C1: 03 00              add         eax,dword ptr [rax]
  00000001400055C3: 00 00              add         byte ptr [rax],al
  00000001400055C5: 00 00              add         byte ptr [rax],al
  00000001400055C7: 00 01              add         byte ptr [rcx],al
  00000001400055C9: 03 00              add         eax,dword ptr [rax]
  00000001400055CB: 00 00              add         byte ptr [rax],al
  00000001400055CD: 00 00              add         byte ptr [rax],al
  00000001400055CF: 00 01              add         byte ptr [rcx],al
  00000001400055D1: 03 00              add         eax,dword ptr [rax]
  00000001400055D3: 00 00              add         byte ptr [rax],al
  00000001400055D5: 00 00              add         byte ptr [rax],al
  00000001400055D7: 00 01              add         byte ptr [rcx],al
  00000001400055D9: 03 00              add         eax,dword ptr [rax]
  00000001400055DB: 00 00              add         byte ptr [rax],al
  00000001400055DD: 00 00              add         byte ptr [rax],al
  00000001400055DF: 00 01              add         byte ptr [rcx],al
  00000001400055E1: 03 00              add         eax,dword ptr [rax]
  00000001400055E3: 00 00              add         byte ptr [rax],al
  00000001400055E5: 00 00              add         byte ptr [rax],al
  00000001400055E7: 00 01              add         byte ptr [rcx],al
  00000001400055E9: 03 00              add         eax,dword ptr [rax]
  00000001400055EB: 00 00              add         byte ptr [rax],al
  00000001400055ED: 00 00              add         byte ptr [rax],al
  00000001400055EF: 00 01              add         byte ptr [rcx],al
  00000001400055F1: 03 00              add         eax,dword ptr [rax]
  00000001400055F3: 00 00              add         byte ptr [rax],al
  00000001400055F5: 00 00              add         byte ptr [rax],al
  00000001400055F7: 00 01              add         byte ptr [rcx],al
  00000001400055F9: 03 00              add         eax,dword ptr [rax]
  00000001400055FB: 00 00              add         byte ptr [rax],al
  00000001400055FD: 00 00              add         byte ptr [rax],al
  00000001400055FF: 00 01              add         byte ptr [rcx],al
  0000000140005601: 03 00              add         eax,dword ptr [rax]
  0000000140005603: 00 00              add         byte ptr [rax],al
  0000000140005605: 00 00              add         byte ptr [rax],al
  0000000140005607: 00 01              add         byte ptr [rcx],al
  0000000140005609: 03 00              add         eax,dword ptr [rax]
  000000014000560B: 00 00              add         byte ptr [rax],al
  000000014000560D: 00 00              add         byte ptr [rax],al
  000000014000560F: 00 01              add         byte ptr [rcx],al
  0000000140005611: 03 00              add         eax,dword ptr [rax]
  0000000140005613: 00 00              add         byte ptr [rax],al
  0000000140005615: 00 00              add         byte ptr [rax],al
  0000000140005617: 00 01              add         byte ptr [rcx],al
  0000000140005619: 03 00              add         eax,dword ptr [rax]
  000000014000561B: 00 00              add         byte ptr [rax],al
  000000014000561D: 00 00              add         byte ptr [rax],al
  000000014000561F: 00 01              add         byte ptr [rcx],al
  0000000140005621: 03 00              add         eax,dword ptr [rax]
  0000000140005623: 00 00              add         byte ptr [rax],al
  0000000140005625: 00 00              add         byte ptr [rax],al
  0000000140005627: 00 01              add         byte ptr [rcx],al
  0000000140005629: 03 00              add         eax,dword ptr [rax]
  000000014000562B: 00 00              add         byte ptr [rax],al
  000000014000562D: 00 00              add         byte ptr [rax],al
  000000014000562F: 00 01              add         byte ptr [rcx],al
  0000000140005631: 03 00              add         eax,dword ptr [rax]
  0000000140005633: 00 00              add         byte ptr [rax],al
  0000000140005635: 00 00              add         byte ptr [rax],al
  0000000140005637: 00 01              add         byte ptr [rcx],al
  0000000140005639: 03 00              add         eax,dword ptr [rax]
  000000014000563B: 00 00              add         byte ptr [rax],al
  000000014000563D: 00 00              add         byte ptr [rax],al
  000000014000563F: 00 01              add         byte ptr [rcx],al
  0000000140005641: 03 00              add         eax,dword ptr [rax]
  0000000140005643: 00 00              add         byte ptr [rax],al
  0000000140005645: 00 00              add         byte ptr [rax],al
  0000000140005647: 00 01              add         byte ptr [rcx],al
  0000000140005649: 03 00              add         eax,dword ptr [rax]
  000000014000564B: 00 00              add         byte ptr [rax],al
  000000014000564D: 00 00              add         byte ptr [rax],al
  000000014000564F: 00 01              add         byte ptr [rcx],al
  0000000140005651: 03 00              add         eax,dword ptr [rax]
  0000000140005653: 00 00              add         byte ptr [rax],al
  0000000140005655: 00 00              add         byte ptr [rax],al
  0000000140005657: 00 01              add         byte ptr [rcx],al
  0000000140005659: 03 00              add         eax,dword ptr [rax]
  000000014000565B: 00 00              add         byte ptr [rax],al
  000000014000565D: 00 00              add         byte ptr [rax],al
  000000014000565F: 00 01              add         byte ptr [rcx],al
  0000000140005661: 03 00              add         eax,dword ptr [rax]
  0000000140005663: 00 00              add         byte ptr [rax],al
  0000000140005665: 00 00              add         byte ptr [rax],al
  0000000140005667: 00 01              add         byte ptr [rcx],al
  0000000140005669: 03 00              add         eax,dword ptr [rax]
  000000014000566B: 00 00              add         byte ptr [rax],al
  000000014000566D: 00 00              add         byte ptr [rax],al
  000000014000566F: 00 01              add         byte ptr [rcx],al
  0000000140005671: 03 00              add         eax,dword ptr [rax]
  0000000140005673: 00 00              add         byte ptr [rax],al
  0000000140005675: 00 00              add         byte ptr [rax],al
  0000000140005677: 00 01              add         byte ptr [rcx],al
  0000000140005679: 03 00              add         eax,dword ptr [rax]
  000000014000567B: 00 00              add         byte ptr [rax],al
  000000014000567D: 00 00              add         byte ptr [rax],al
  000000014000567F: 00 01              add         byte ptr [rcx],al
  0000000140005681: 03 00              add         eax,dword ptr [rax]
  0000000140005683: 00 00              add         byte ptr [rax],al
  0000000140005685: 00 00              add         byte ptr [rax],al
  0000000140005687: 00 01              add         byte ptr [rcx],al
  0000000140005689: 03 00              add         eax,dword ptr [rax]
  000000014000568B: 00 00              add         byte ptr [rax],al
  000000014000568D: 00 00              add         byte ptr [rax],al
  000000014000568F: 00 01              add         byte ptr [rcx],al
  0000000140005691: 03 00              add         eax,dword ptr [rax]
  0000000140005693: 00 00              add         byte ptr [rax],al
  0000000140005695: 00 00              add         byte ptr [rax],al
  0000000140005697: 00 01              add         byte ptr [rcx],al
  0000000140005699: 03 00              add         eax,dword ptr [rax]
  000000014000569B: 00 00              add         byte ptr [rax],al
  000000014000569D: 00 00              add         byte ptr [rax],al
  000000014000569F: 00 01              add         byte ptr [rcx],al
  00000001400056A1: 03 00              add         eax,dword ptr [rax]
  00000001400056A3: 00 00              add         byte ptr [rax],al
  00000001400056A5: 00 00              add         byte ptr [rax],al
  00000001400056A7: 00 01              add         byte ptr [rcx],al
  00000001400056A9: 03 00              add         eax,dword ptr [rax]
  00000001400056AB: 00 00              add         byte ptr [rax],al
  00000001400056AD: 00 00              add         byte ptr [rax],al
  00000001400056AF: 00 01              add         byte ptr [rcx],al
  00000001400056B1: 03 00              add         eax,dword ptr [rax]
  00000001400056B3: 00 00              add         byte ptr [rax],al
  00000001400056B5: 00 00              add         byte ptr [rax],al
  00000001400056B7: 00 01              add         byte ptr [rcx],al
  00000001400056B9: 03 00              add         eax,dword ptr [rax]
  00000001400056BB: 00 00              add         byte ptr [rax],al
  00000001400056BD: 00 00              add         byte ptr [rax],al
  00000001400056BF: 00 01              add         byte ptr [rcx],al
  00000001400056C1: 03 00              add         eax,dword ptr [rax]
  00000001400056C3: 00 00              add         byte ptr [rax],al
  00000001400056C5: 00 00              add         byte ptr [rax],al
  00000001400056C7: 00 01              add         byte ptr [rcx],al
  00000001400056C9: 03 00              add         eax,dword ptr [rax]
  00000001400056CB: 00 00              add         byte ptr [rax],al
  00000001400056CD: 00 00              add         byte ptr [rax],al
  00000001400056CF: 00 01              add         byte ptr [rcx],al
  00000001400056D1: 03 00              add         eax,dword ptr [rax]
  00000001400056D3: 00 00              add         byte ptr [rax],al
  00000001400056D5: 00 00              add         byte ptr [rax],al
  00000001400056D7: 00 01              add         byte ptr [rcx],al
  00000001400056D9: 03 00              add         eax,dword ptr [rax]
  00000001400056DB: 00 00              add         byte ptr [rax],al
  00000001400056DD: 00 00              add         byte ptr [rax],al
  00000001400056DF: 00 01              add         byte ptr [rcx],al
  00000001400056E1: 03 00              add         eax,dword ptr [rax]
  00000001400056E3: 00 00              add         byte ptr [rax],al
  00000001400056E5: 00 00              add         byte ptr [rax],al
  00000001400056E7: 00 01              add         byte ptr [rcx],al
  00000001400056E9: 03 00              add         eax,dword ptr [rax]
  00000001400056EB: 00 00              add         byte ptr [rax],al
  00000001400056ED: 00 00              add         byte ptr [rax],al
  00000001400056EF: 00 01              add         byte ptr [rcx],al
  00000001400056F1: 03 00              add         eax,dword ptr [rax]
  00000001400056F3: 00 00              add         byte ptr [rax],al
  00000001400056F5: 00 00              add         byte ptr [rax],al
  00000001400056F7: 00 01              add         byte ptr [rcx],al
  00000001400056F9: 03 00              add         eax,dword ptr [rax]
  00000001400056FB: 00 00              add         byte ptr [rax],al
  00000001400056FD: 00 00              add         byte ptr [rax],al
  00000001400056FF: 00 08              add         byte ptr [rax],cl
  0000000140005701: 03 00              add         eax,dword ptr [rax]
  0000000140005703: 00 00              add         byte ptr [rax],al
  0000000140005705: 00 00              add         byte ptr [rax],al
  0000000140005707: 00 08              add         byte ptr [rax],cl
  0000000140005709: 03 00              add         eax,dword ptr [rax]
  000000014000570B: 00 00              add         byte ptr [rax],al
  000000014000570D: 00 00              add         byte ptr [rax],al
  000000014000570F: 00 08              add         byte ptr [rax],cl
  0000000140005711: 03 00              add         eax,dword ptr [rax]
  0000000140005713: 00 00              add         byte ptr [rax],al
  0000000140005715: 00 00              add         byte ptr [rax],al
  0000000140005717: 00 08              add         byte ptr [rax],cl
  0000000140005719: 03 00              add         eax,dword ptr [rax]
  000000014000571B: 00 00              add         byte ptr [rax],al
  000000014000571D: 00 00              add         byte ptr [rax],al
  000000014000571F: 00 08              add         byte ptr [rax],cl
  0000000140005721: 03 00              add         eax,dword ptr [rax]
  0000000140005723: 00 00              add         byte ptr [rax],al
  0000000140005725: 00 00              add         byte ptr [rax],al
  0000000140005727: 00 08              add         byte ptr [rax],cl
  0000000140005729: 03 00              add         eax,dword ptr [rax]
  000000014000572B: 00 00              add         byte ptr [rax],al
  000000014000572D: 00 00              add         byte ptr [rax],al
  000000014000572F: 00 08              add         byte ptr [rax],cl
  0000000140005731: 03 00              add         eax,dword ptr [rax]
  0000000140005733: 00 00              add         byte ptr [rax],al
  0000000140005735: 00 00              add         byte ptr [rax],al
  0000000140005737: 00 08              add         byte ptr [rax],cl
  0000000140005739: 03 00              add         eax,dword ptr [rax]
  000000014000573B: 00 00              add         byte ptr [rax],al
  000000014000573D: 00 00              add         byte ptr [rax],al
  000000014000573F: 00 08              add         byte ptr [rax],cl
  0000000140005741: 03 00              add         eax,dword ptr [rax]
  0000000140005743: 00 00              add         byte ptr [rax],al
  0000000140005745: 00 00              add         byte ptr [rax],al
  0000000140005747: 00 08              add         byte ptr [rax],cl
  0000000140005749: 03 00              add         eax,dword ptr [rax]
  000000014000574B: 00 00              add         byte ptr [rax],al
  000000014000574D: 00 00              add         byte ptr [rax],al
  000000014000574F: 00 08              add         byte ptr [rax],cl
  0000000140005751: 03 00              add         eax,dword ptr [rax]
  0000000140005753: 00 00              add         byte ptr [rax],al
  0000000140005755: 00 00              add         byte ptr [rax],al
  0000000140005757: 00 08              add         byte ptr [rax],cl
  0000000140005759: 03 00              add         eax,dword ptr [rax]
  000000014000575B: 00 00              add         byte ptr [rax],al
  000000014000575D: 00 00              add         byte ptr [rax],al
  000000014000575F: 00 08              add         byte ptr [rax],cl
  0000000140005761: 03 00              add         eax,dword ptr [rax]
  0000000140005763: 00 00              add         byte ptr [rax],al
  0000000140005765: 00 00              add         byte ptr [rax],al
  0000000140005767: 00 08              add         byte ptr [rax],cl
  0000000140005769: 03 00              add         eax,dword ptr [rax]
  000000014000576B: 00 00              add         byte ptr [rax],al
  000000014000576D: 00 00              add         byte ptr [rax],al
  000000014000576F: 00 08              add         byte ptr [rax],cl
  0000000140005771: 03 00              add         eax,dword ptr [rax]
  0000000140005773: 00 00              add         byte ptr [rax],al
  0000000140005775: 00 00              add         byte ptr [rax],al
  0000000140005777: 00 08              add         byte ptr [rax],cl
  0000000140005779: 03 00              add         eax,dword ptr [rax]
  000000014000577B: 00 00              add         byte ptr [rax],al
  000000014000577D: 00 00              add         byte ptr [rax],al
  000000014000577F: 00 08              add         byte ptr [rax],cl
  0000000140005781: 03 00              add         eax,dword ptr [rax]
  0000000140005783: 00 00              add         byte ptr [rax],al
  0000000140005785: 00 00              add         byte ptr [rax],al
  0000000140005787: 00 08              add         byte ptr [rax],cl
  0000000140005789: 03 00              add         eax,dword ptr [rax]
  000000014000578B: 00 00              add         byte ptr [rax],al
  000000014000578D: 00 00              add         byte ptr [rax],al
  000000014000578F: 00 08              add         byte ptr [rax],cl
  0000000140005791: 03 00              add         eax,dword ptr [rax]
  0000000140005793: 00 00              add         byte ptr [rax],al
  0000000140005795: 00 00              add         byte ptr [rax],al
  0000000140005797: 00 08              add         byte ptr [rax],cl
  0000000140005799: 03 00              add         eax,dword ptr [rax]
  000000014000579B: 00 00              add         byte ptr [rax],al
  000000014000579D: 00 00              add         byte ptr [rax],al
  000000014000579F: 00 08              add         byte ptr [rax],cl
  00000001400057A1: 03 00              add         eax,dword ptr [rax]
  00000001400057A3: 00 00              add         byte ptr [rax],al
  00000001400057A5: 00 00              add         byte ptr [rax],al
  00000001400057A7: 00 08              add         byte ptr [rax],cl
  00000001400057A9: 03 00              add         eax,dword ptr [rax]
  00000001400057AB: 00 00              add         byte ptr [rax],al
  00000001400057AD: 00 00              add         byte ptr [rax],al
  00000001400057AF: 00 08              add         byte ptr [rax],cl
  00000001400057B1: 03 00              add         eax,dword ptr [rax]
  00000001400057B3: 00 00              add         byte ptr [rax],al
  00000001400057B5: 00 00              add         byte ptr [rax],al
  00000001400057B7: 00 08              add         byte ptr [rax],cl
  00000001400057B9: 03 00              add         eax,dword ptr [rax]
  00000001400057BB: 00 00              add         byte ptr [rax],al
  00000001400057BD: 00 00              add         byte ptr [rax],al
  00000001400057BF: 00 08              add         byte ptr [rax],cl
  00000001400057C1: 03 00              add         eax,dword ptr [rax]
  00000001400057C3: 00 00              add         byte ptr [rax],al
  00000001400057C5: 00 00              add         byte ptr [rax],al
  00000001400057C7: 00 08              add         byte ptr [rax],cl
  00000001400057C9: 03 00              add         eax,dword ptr [rax]
  00000001400057CB: 00 00              add         byte ptr [rax],al
  00000001400057CD: 00 00              add         byte ptr [rax],al
  00000001400057CF: 00 08              add         byte ptr [rax],cl
  00000001400057D1: 03 00              add         eax,dword ptr [rax]
  00000001400057D3: 00 00              add         byte ptr [rax],al
  00000001400057D5: 00 00              add         byte ptr [rax],al
  00000001400057D7: 00 08              add         byte ptr [rax],cl
  00000001400057D9: 03 00              add         eax,dword ptr [rax]
  00000001400057DB: 00 00              add         byte ptr [rax],al
  00000001400057DD: 00 00              add         byte ptr [rax],al
  00000001400057DF: 00 08              add         byte ptr [rax],cl
  00000001400057E1: 03 00              add         eax,dword ptr [rax]
  00000001400057E3: 00 00              add         byte ptr [rax],al
  00000001400057E5: 00 00              add         byte ptr [rax],al
  00000001400057E7: 00 08              add         byte ptr [rax],cl
  00000001400057E9: 03 00              add         eax,dword ptr [rax]
  00000001400057EB: 00 00              add         byte ptr [rax],al
  00000001400057ED: 00 00              add         byte ptr [rax],al
  00000001400057EF: 00 08              add         byte ptr [rax],cl
  00000001400057F1: 03 00              add         eax,dword ptr [rax]
  00000001400057F3: 00 00              add         byte ptr [rax],al
  00000001400057F5: 00 00              add         byte ptr [rax],al
  00000001400057F7: 00 08              add         byte ptr [rax],cl
  00000001400057F9: 03 00              add         eax,dword ptr [rax]
  00000001400057FB: 00 00              add         byte ptr [rax],al
  00000001400057FD: 00 00              add         byte ptr [rax],al
  00000001400057FF: 00 08              add         byte ptr [rax],cl
  0000000140005801: 03 00              add         eax,dword ptr [rax]
  0000000140005803: 00 00              add         byte ptr [rax],al
  0000000140005805: 00 00              add         byte ptr [rax],al
  0000000140005807: 00 08              add         byte ptr [rax],cl
  0000000140005809: 03 00              add         eax,dword ptr [rax]
  000000014000580B: 00 00              add         byte ptr [rax],al
  000000014000580D: 00 00              add         byte ptr [rax],al
  000000014000580F: 00 08              add         byte ptr [rax],cl
  0000000140005811: 03 00              add         eax,dword ptr [rax]
  0000000140005813: 00 00              add         byte ptr [rax],al
  0000000140005815: 00 00              add         byte ptr [rax],al
  0000000140005817: 00 08              add         byte ptr [rax],cl
  0000000140005819: 03 00              add         eax,dword ptr [rax]
  000000014000581B: 00 00              add         byte ptr [rax],al
  000000014000581D: 00 00              add         byte ptr [rax],al
  000000014000581F: 00 08              add         byte ptr [rax],cl
  0000000140005821: 03 00              add         eax,dword ptr [rax]
  0000000140005823: 00 00              add         byte ptr [rax],al
  0000000140005825: 00 00              add         byte ptr [rax],al
  0000000140005827: 00 08              add         byte ptr [rax],cl
  0000000140005829: 03 00              add         eax,dword ptr [rax]
  000000014000582B: 00 00              add         byte ptr [rax],al
  000000014000582D: 00 00              add         byte ptr [rax],al
  000000014000582F: 00 08              add         byte ptr [rax],cl
  0000000140005831: 03 00              add         eax,dword ptr [rax]
  0000000140005833: 00 00              add         byte ptr [rax],al
  0000000140005835: 00 00              add         byte ptr [rax],al
  0000000140005837: 00 08              add         byte ptr [rax],cl
  0000000140005839: 03 00              add         eax,dword ptr [rax]
  000000014000583B: 00 00              add         byte ptr [rax],al
  000000014000583D: 00 00              add         byte ptr [rax],al
  000000014000583F: 00 08              add         byte ptr [rax],cl
  0000000140005841: 03 00              add         eax,dword ptr [rax]
  0000000140005843: 00 00              add         byte ptr [rax],al
  0000000140005845: 00 00              add         byte ptr [rax],al
  0000000140005847: 00 08              add         byte ptr [rax],cl
  0000000140005849: 03 00              add         eax,dword ptr [rax]
  000000014000584B: 00 00              add         byte ptr [rax],al
  000000014000584D: 00 00              add         byte ptr [rax],al
  000000014000584F: 00 08              add         byte ptr [rax],cl
  0000000140005851: 03 00              add         eax,dword ptr [rax]
  0000000140005853: 00 00              add         byte ptr [rax],al
  0000000140005855: 00 00              add         byte ptr [rax],al
  0000000140005857: 00 08              add         byte ptr [rax],cl
  0000000140005859: 03 00              add         eax,dword ptr [rax]
  000000014000585B: 00 00              add         byte ptr [rax],al
  000000014000585D: 00 00              add         byte ptr [rax],al
  000000014000585F: 00 08              add         byte ptr [rax],cl
  0000000140005861: 03 00              add         eax,dword ptr [rax]
  0000000140005863: 00 00              add         byte ptr [rax],al
  0000000140005865: 00 00              add         byte ptr [rax],al
  0000000140005867: 00 08              add         byte ptr [rax],cl
  0000000140005869: 03 00              add         eax,dword ptr [rax]
  000000014000586B: 00 00              add         byte ptr [rax],al
  000000014000586D: 00 00              add         byte ptr [rax],al
  000000014000586F: 00 08              add         byte ptr [rax],cl
  0000000140005871: 03 00              add         eax,dword ptr [rax]
  0000000140005873: 00 00              add         byte ptr [rax],al
  0000000140005875: 00 00              add         byte ptr [rax],al
  0000000140005877: 00 08              add         byte ptr [rax],cl
  0000000140005879: 03 00              add         eax,dword ptr [rax]
  000000014000587B: 00 00              add         byte ptr [rax],al
  000000014000587D: 00 00              add         byte ptr [rax],al
  000000014000587F: 00 08              add         byte ptr [rax],cl
  0000000140005881: 03 00              add         eax,dword ptr [rax]
  0000000140005883: 00 00              add         byte ptr [rax],al
  0000000140005885: 00 00              add         byte ptr [rax],al
  0000000140005887: 00 08              add         byte ptr [rax],cl
  0000000140005889: 03 00              add         eax,dword ptr [rax]
  000000014000588B: 00 00              add         byte ptr [rax],al
  000000014000588D: 00 00              add         byte ptr [rax],al
  000000014000588F: 00 08              add         byte ptr [rax],cl
  0000000140005891: 03 00              add         eax,dword ptr [rax]
  0000000140005893: 00 00              add         byte ptr [rax],al
  0000000140005895: 00 00              add         byte ptr [rax],al
  0000000140005897: 00 08              add         byte ptr [rax],cl
  0000000140005899: 03 00              add         eax,dword ptr [rax]
  000000014000589B: 00 00              add         byte ptr [rax],al
  000000014000589D: 00 00              add         byte ptr [rax],al
  000000014000589F: 00 08              add         byte ptr [rax],cl
  00000001400058A1: 03 00              add         eax,dword ptr [rax]
  00000001400058A3: 00 00              add         byte ptr [rax],al
  00000001400058A5: 00 00              add         byte ptr [rax],al
  00000001400058A7: 00 08              add         byte ptr [rax],cl
  00000001400058A9: 03 00              add         eax,dword ptr [rax]
  00000001400058AB: 00 00              add         byte ptr [rax],al
  00000001400058AD: 00 00              add         byte ptr [rax],al
  00000001400058AF: 00 08              add         byte ptr [rax],cl
  00000001400058B1: 03 00              add         eax,dword ptr [rax]
  00000001400058B3: 00 00              add         byte ptr [rax],al
  00000001400058B5: 00 00              add         byte ptr [rax],al
  00000001400058B7: 00 08              add         byte ptr [rax],cl
  00000001400058B9: 03 00              add         eax,dword ptr [rax]
  00000001400058BB: 00 00              add         byte ptr [rax],al
  00000001400058BD: 00 00              add         byte ptr [rax],al
  00000001400058BF: 00 08              add         byte ptr [rax],cl
  00000001400058C1: 03 00              add         eax,dword ptr [rax]
  00000001400058C3: 00 00              add         byte ptr [rax],al
  00000001400058C5: 00 00              add         byte ptr [rax],al
  00000001400058C7: 00 08              add         byte ptr [rax],cl
  00000001400058C9: 03 00              add         eax,dword ptr [rax]
  00000001400058CB: 00 00              add         byte ptr [rax],al
  00000001400058CD: 00 00              add         byte ptr [rax],al
  00000001400058CF: 00 08              add         byte ptr [rax],cl
  00000001400058D1: 03 00              add         eax,dword ptr [rax]
  00000001400058D3: 00 00              add         byte ptr [rax],al
  00000001400058D5: 00 00              add         byte ptr [rax],al
  00000001400058D7: 00 08              add         byte ptr [rax],cl
  00000001400058D9: 03 00              add         eax,dword ptr [rax]
  00000001400058DB: 00 00              add         byte ptr [rax],al
  00000001400058DD: 00 00              add         byte ptr [rax],al
  00000001400058DF: 00 08              add         byte ptr [rax],cl
  00000001400058E1: 03 00              add         eax,dword ptr [rax]
  00000001400058E3: 00 00              add         byte ptr [rax],al
  00000001400058E5: 00 00              add         byte ptr [rax],al
  00000001400058E7: 00 08              add         byte ptr [rax],cl
  00000001400058E9: 03 00              add         eax,dword ptr [rax]
  00000001400058EB: 00 00              add         byte ptr [rax],al
  00000001400058ED: 00 00              add         byte ptr [rax],al
  00000001400058EF: 00 08              add         byte ptr [rax],cl
  00000001400058F1: 03 00              add         eax,dword ptr [rax]
  00000001400058F3: 00 00              add         byte ptr [rax],al
  00000001400058F5: 00 00              add         byte ptr [rax],al
  00000001400058F7: 00 08              add         byte ptr [rax],cl
  00000001400058F9: 03 00              add         eax,dword ptr [rax]
  00000001400058FB: 00 00              add         byte ptr [rax],al
  00000001400058FD: 00 00              add         byte ptr [rax],al
  00000001400058FF: 00 0F              add         byte ptr [rdi],cl
  0000000140005901: 03 00              add         eax,dword ptr [rax]
  0000000140005903: 00 00              add         byte ptr [rax],al
  0000000140005905: 00 00              add         byte ptr [rax],al
  0000000140005907: 00 0F              add         byte ptr [rdi],cl
  0000000140005909: 03 00              add         eax,dword ptr [rax]
  000000014000590B: 00 00              add         byte ptr [rax],al
  000000014000590D: 00 00              add         byte ptr [rax],al
  000000014000590F: 00 0F              add         byte ptr [rdi],cl
  0000000140005911: 03 00              add         eax,dword ptr [rax]
  0000000140005913: 00 00              add         byte ptr [rax],al
  0000000140005915: 00 00              add         byte ptr [rax],al
  0000000140005917: 00 0F              add         byte ptr [rdi],cl
  0000000140005919: 03 00              add         eax,dword ptr [rax]
  000000014000591B: 00 00              add         byte ptr [rax],al
  000000014000591D: 00 00              add         byte ptr [rax],al
  000000014000591F: 00 0F              add         byte ptr [rdi],cl
  0000000140005921: 03 00              add         eax,dword ptr [rax]
  0000000140005923: 00 00              add         byte ptr [rax],al
  0000000140005925: 00 00              add         byte ptr [rax],al
  0000000140005927: 00 0F              add         byte ptr [rdi],cl
  0000000140005929: 03 00              add         eax,dword ptr [rax]
  000000014000592B: 00 00              add         byte ptr [rax],al
  000000014000592D: 00 00              add         byte ptr [rax],al
  000000014000592F: 00 0F              add         byte ptr [rdi],cl
  0000000140005931: 03 00              add         eax,dword ptr [rax]
  0000000140005933: 00 00              add         byte ptr [rax],al
  0000000140005935: 00 00              add         byte ptr [rax],al
  0000000140005937: 00 0F              add         byte ptr [rdi],cl
  0000000140005939: 03 00              add         eax,dword ptr [rax]
  000000014000593B: 00 00              add         byte ptr [rax],al
  000000014000593D: 00 00              add         byte ptr [rax],al
  000000014000593F: 00 0F              add         byte ptr [rdi],cl
  0000000140005941: 03 00              add         eax,dword ptr [rax]
  0000000140005943: 00 00              add         byte ptr [rax],al
  0000000140005945: 00 00              add         byte ptr [rax],al
  0000000140005947: 00 0F              add         byte ptr [rdi],cl
  0000000140005949: 03 00              add         eax,dword ptr [rax]
  000000014000594B: 00 00              add         byte ptr [rax],al
  000000014000594D: 00 00              add         byte ptr [rax],al
  000000014000594F: 00 0F              add         byte ptr [rdi],cl
  0000000140005951: 03 00              add         eax,dword ptr [rax]
  0000000140005953: 00 00              add         byte ptr [rax],al
  0000000140005955: 00 00              add         byte ptr [rax],al
  0000000140005957: 00 0F              add         byte ptr [rdi],cl
  0000000140005959: 03 00              add         eax,dword ptr [rax]
  000000014000595B: 00 00              add         byte ptr [rax],al
  000000014000595D: 00 00              add         byte ptr [rax],al
  000000014000595F: 00 0F              add         byte ptr [rdi],cl
  0000000140005961: 03 00              add         eax,dword ptr [rax]
  0000000140005963: 00 00              add         byte ptr [rax],al
  0000000140005965: 00 00              add         byte ptr [rax],al
  0000000140005967: 00 0F              add         byte ptr [rdi],cl
  0000000140005969: 03 00              add         eax,dword ptr [rax]
  000000014000596B: 00 00              add         byte ptr [rax],al
  000000014000596D: 00 00              add         byte ptr [rax],al
  000000014000596F: 00 0F              add         byte ptr [rdi],cl
  0000000140005971: 03 00              add         eax,dword ptr [rax]
  0000000140005973: 00 00              add         byte ptr [rax],al
  0000000140005975: 00 00              add         byte ptr [rax],al
  0000000140005977: 00 0F              add         byte ptr [rdi],cl
  0000000140005979: 03 00              add         eax,dword ptr [rax]
  000000014000597B: 00 00              add         byte ptr [rax],al
  000000014000597D: 00 00              add         byte ptr [rax],al
  000000014000597F: 00 0F              add         byte ptr [rdi],cl
  0000000140005981: 03 00              add         eax,dword ptr [rax]
  0000000140005983: 00 00              add         byte ptr [rax],al
  0000000140005985: 00 00              add         byte ptr [rax],al
  0000000140005987: 00 0F              add         byte ptr [rdi],cl
  0000000140005989: 03 00              add         eax,dword ptr [rax]
  000000014000598B: 00 00              add         byte ptr [rax],al
  000000014000598D: 00 00              add         byte ptr [rax],al
  000000014000598F: 00 0F              add         byte ptr [rdi],cl
  0000000140005991: 03 00              add         eax,dword ptr [rax]
  0000000140005993: 00 00              add         byte ptr [rax],al
  0000000140005995: 00 00              add         byte ptr [rax],al
  0000000140005997: 00 0F              add         byte ptr [rdi],cl
  0000000140005999: 03 00              add         eax,dword ptr [rax]
  000000014000599B: 00 00              add         byte ptr [rax],al
  000000014000599D: 00 00              add         byte ptr [rax],al
  000000014000599F: 00 0F              add         byte ptr [rdi],cl
  00000001400059A1: 03 00              add         eax,dword ptr [rax]
  00000001400059A3: 00 00              add         byte ptr [rax],al
  00000001400059A5: 00 00              add         byte ptr [rax],al
  00000001400059A7: 00 0F              add         byte ptr [rdi],cl
  00000001400059A9: 03 00              add         eax,dword ptr [rax]
  00000001400059AB: 00 00              add         byte ptr [rax],al
  00000001400059AD: 00 00              add         byte ptr [rax],al
  00000001400059AF: 00 0F              add         byte ptr [rdi],cl
  00000001400059B1: 03 00              add         eax,dword ptr [rax]
  00000001400059B3: 00 00              add         byte ptr [rax],al
  00000001400059B5: 00 00              add         byte ptr [rax],al
  00000001400059B7: 00 0F              add         byte ptr [rdi],cl
  00000001400059B9: 03 00              add         eax,dword ptr [rax]
  00000001400059BB: 00 00              add         byte ptr [rax],al
  00000001400059BD: 00 00              add         byte ptr [rax],al
  00000001400059BF: 00 0F              add         byte ptr [rdi],cl
  00000001400059C1: 03 00              add         eax,dword ptr [rax]
  00000001400059C3: 00 00              add         byte ptr [rax],al
  00000001400059C5: 00 00              add         byte ptr [rax],al
  00000001400059C7: 00 0F              add         byte ptr [rdi],cl
  00000001400059C9: 03 00              add         eax,dword ptr [rax]
  00000001400059CB: 00 00              add         byte ptr [rax],al
  00000001400059CD: 00 00              add         byte ptr [rax],al
  00000001400059CF: 00 0F              add         byte ptr [rdi],cl
  00000001400059D1: 03 00              add         eax,dword ptr [rax]
  00000001400059D3: 00 00              add         byte ptr [rax],al
  00000001400059D5: 00 00              add         byte ptr [rax],al
  00000001400059D7: 00 0F              add         byte ptr [rdi],cl
  00000001400059D9: 03 00              add         eax,dword ptr [rax]
  00000001400059DB: 00 00              add         byte ptr [rax],al
  00000001400059DD: 00 00              add         byte ptr [rax],al
  00000001400059DF: 00 0F              add         byte ptr [rdi],cl
  00000001400059E1: 03 00              add         eax,dword ptr [rax]
  00000001400059E3: 00 00              add         byte ptr [rax],al
  00000001400059E5: 00 00              add         byte ptr [rax],al
  00000001400059E7: 00 0F              add         byte ptr [rdi],cl
  00000001400059E9: 03 00              add         eax,dword ptr [rax]
  00000001400059EB: 00 00              add         byte ptr [rax],al
  00000001400059ED: 00 00              add         byte ptr [rax],al
  00000001400059EF: 00 0F              add         byte ptr [rdi],cl
  00000001400059F1: 03 00              add         eax,dword ptr [rax]
  00000001400059F3: 00 00              add         byte ptr [rax],al
  00000001400059F5: 00 00              add         byte ptr [rax],al
  00000001400059F7: 00 0F              add         byte ptr [rdi],cl
  00000001400059F9: 03 00              add         eax,dword ptr [rax]
  00000001400059FB: 00 00              add         byte ptr [rax],al
  00000001400059FD: 00 00              add         byte ptr [rax],al
  00000001400059FF: 00 0F              add         byte ptr [rdi],cl
  0000000140005A01: 03 00              add         eax,dword ptr [rax]
  0000000140005A03: 00 00              add         byte ptr [rax],al
  0000000140005A05: 00 00              add         byte ptr [rax],al
  0000000140005A07: 00 0F              add         byte ptr [rdi],cl
  0000000140005A09: 03 00              add         eax,dword ptr [rax]
  0000000140005A0B: 00 00              add         byte ptr [rax],al
  0000000140005A0D: 00 00              add         byte ptr [rax],al
  0000000140005A0F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A11: 03 00              add         eax,dword ptr [rax]
  0000000140005A13: 00 00              add         byte ptr [rax],al
  0000000140005A15: 00 00              add         byte ptr [rax],al
  0000000140005A17: 00 0F              add         byte ptr [rdi],cl
  0000000140005A19: 03 00              add         eax,dword ptr [rax]
  0000000140005A1B: 00 00              add         byte ptr [rax],al
  0000000140005A1D: 00 00              add         byte ptr [rax],al
  0000000140005A1F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A21: 03 00              add         eax,dword ptr [rax]
  0000000140005A23: 00 00              add         byte ptr [rax],al
  0000000140005A25: 00 00              add         byte ptr [rax],al
  0000000140005A27: 00 0F              add         byte ptr [rdi],cl
  0000000140005A29: 03 00              add         eax,dword ptr [rax]
  0000000140005A2B: 00 00              add         byte ptr [rax],al
  0000000140005A2D: 00 00              add         byte ptr [rax],al
  0000000140005A2F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A31: 03 00              add         eax,dword ptr [rax]
  0000000140005A33: 00 00              add         byte ptr [rax],al
  0000000140005A35: 00 00              add         byte ptr [rax],al
  0000000140005A37: 00 0F              add         byte ptr [rdi],cl
  0000000140005A39: 03 00              add         eax,dword ptr [rax]
  0000000140005A3B: 00 00              add         byte ptr [rax],al
  0000000140005A3D: 00 00              add         byte ptr [rax],al
  0000000140005A3F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A41: 03 00              add         eax,dword ptr [rax]
  0000000140005A43: 00 00              add         byte ptr [rax],al
  0000000140005A45: 00 00              add         byte ptr [rax],al
  0000000140005A47: 00 0F              add         byte ptr [rdi],cl
  0000000140005A49: 03 00              add         eax,dword ptr [rax]
  0000000140005A4B: 00 00              add         byte ptr [rax],al
  0000000140005A4D: 00 00              add         byte ptr [rax],al
  0000000140005A4F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A51: 03 00              add         eax,dword ptr [rax]
  0000000140005A53: 00 00              add         byte ptr [rax],al
  0000000140005A55: 00 00              add         byte ptr [rax],al
  0000000140005A57: 00 0F              add         byte ptr [rdi],cl
  0000000140005A59: 03 00              add         eax,dword ptr [rax]
  0000000140005A5B: 00 00              add         byte ptr [rax],al
  0000000140005A5D: 00 00              add         byte ptr [rax],al
  0000000140005A5F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A61: 03 00              add         eax,dword ptr [rax]
  0000000140005A63: 00 00              add         byte ptr [rax],al
  0000000140005A65: 00 00              add         byte ptr [rax],al
  0000000140005A67: 00 0F              add         byte ptr [rdi],cl
  0000000140005A69: 03 00              add         eax,dword ptr [rax]
  0000000140005A6B: 00 00              add         byte ptr [rax],al
  0000000140005A6D: 00 00              add         byte ptr [rax],al
  0000000140005A6F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A71: 03 00              add         eax,dword ptr [rax]
  0000000140005A73: 00 00              add         byte ptr [rax],al
  0000000140005A75: 00 00              add         byte ptr [rax],al
  0000000140005A77: 00 0F              add         byte ptr [rdi],cl
  0000000140005A79: 03 00              add         eax,dword ptr [rax]
  0000000140005A7B: 00 00              add         byte ptr [rax],al
  0000000140005A7D: 00 00              add         byte ptr [rax],al
  0000000140005A7F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A81: 03 00              add         eax,dword ptr [rax]
  0000000140005A83: 00 00              add         byte ptr [rax],al
  0000000140005A85: 00 00              add         byte ptr [rax],al
  0000000140005A87: 00 0F              add         byte ptr [rdi],cl
  0000000140005A89: 03 00              add         eax,dword ptr [rax]
  0000000140005A8B: 00 00              add         byte ptr [rax],al
  0000000140005A8D: 00 00              add         byte ptr [rax],al
  0000000140005A8F: 00 0F              add         byte ptr [rdi],cl
  0000000140005A91: 03 00              add         eax,dword ptr [rax]
  0000000140005A93: 00 00              add         byte ptr [rax],al
  0000000140005A95: 00 00              add         byte ptr [rax],al
  0000000140005A97: 00 0F              add         byte ptr [rdi],cl
  0000000140005A99: 03 00              add         eax,dword ptr [rax]
  0000000140005A9B: 00 00              add         byte ptr [rax],al
  0000000140005A9D: 00 00              add         byte ptr [rax],al
  0000000140005A9F: 00 0F              add         byte ptr [rdi],cl
  0000000140005AA1: 03 00              add         eax,dword ptr [rax]
  0000000140005AA3: 00 00              add         byte ptr [rax],al
  0000000140005AA5: 00 00              add         byte ptr [rax],al
  0000000140005AA7: 00 0F              add         byte ptr [rdi],cl
  0000000140005AA9: 03 00              add         eax,dword ptr [rax]
  0000000140005AAB: 00 00              add         byte ptr [rax],al
  0000000140005AAD: 00 00              add         byte ptr [rax],al
  0000000140005AAF: 00 0F              add         byte ptr [rdi],cl
  0000000140005AB1: 03 00              add         eax,dword ptr [rax]
  0000000140005AB3: 00 00              add         byte ptr [rax],al
  0000000140005AB5: 00 00              add         byte ptr [rax],al
  0000000140005AB7: 00 0F              add         byte ptr [rdi],cl
  0000000140005AB9: 03 00              add         eax,dword ptr [rax]
  0000000140005ABB: 00 00              add         byte ptr [rax],al
  0000000140005ABD: 00 00              add         byte ptr [rax],al
  0000000140005ABF: 00 0F              add         byte ptr [rdi],cl
  0000000140005AC1: 03 00              add         eax,dword ptr [rax]
  0000000140005AC3: 00 00              add         byte ptr [rax],al
  0000000140005AC5: 00 00              add         byte ptr [rax],al
  0000000140005AC7: 00 0F              add         byte ptr [rdi],cl
  0000000140005AC9: 03 00              add         eax,dword ptr [rax]
  0000000140005ACB: 00 00              add         byte ptr [rax],al
  0000000140005ACD: 00 00              add         byte ptr [rax],al
  0000000140005ACF: 00 0F              add         byte ptr [rdi],cl
  0000000140005AD1: 03 00              add         eax,dword ptr [rax]
  0000000140005AD3: 00 00              add         byte ptr [rax],al
  0000000140005AD5: 00 00              add         byte ptr [rax],al
  0000000140005AD7: 00 0F              add         byte ptr [rdi],cl
  0000000140005AD9: 03 00              add         eax,dword ptr [rax]
  0000000140005ADB: 00 00              add         byte ptr [rax],al
  0000000140005ADD: 00 00              add         byte ptr [rax],al
  0000000140005ADF: 00 0F              add         byte ptr [rdi],cl
  0000000140005AE1: 03 00              add         eax,dword ptr [rax]
  0000000140005AE3: 00 00              add         byte ptr [rax],al
  0000000140005AE5: 00 00              add         byte ptr [rax],al
  0000000140005AE7: 00 0F              add         byte ptr [rdi],cl
  0000000140005AE9: 03 00              add         eax,dword ptr [rax]
  0000000140005AEB: 00 00              add         byte ptr [rax],al
  0000000140005AED: 00 00              add         byte ptr [rax],al
  0000000140005AEF: 00 0F              add         byte ptr [rdi],cl
  0000000140005AF1: 03 00              add         eax,dword ptr [rax]
  0000000140005AF3: 00 00              add         byte ptr [rax],al
  0000000140005AF5: 00 00              add         byte ptr [rax],al
  0000000140005AF7: 00 0F              add         byte ptr [rdi],cl
  0000000140005AF9: 03 00              add         eax,dword ptr [rax]
  0000000140005AFB: 00 00              add         byte ptr [rax],al
  0000000140005AFD: 00 00              add         byte ptr [rax],al
  0000000140005AFF: 00 C2              add         dl,al
  0000000140005B01: 12 00              adc         al,byte ptr [rax]
  0000000140005B03: 00 00              add         byte ptr [rax],al
  0000000140005B05: 00 00              add         byte ptr [rax],al
  0000000140005B07: 00 CA              add         dl,cl
  0000000140005B09: 12 00              adc         al,byte ptr [rax]
  0000000140005B0B: 00 00              add         byte ptr [rax],al
  0000000140005B0D: 00 00              add         byte ptr [rax],al
  0000000140005B0F: 00 BD 12 00 00 00  add         byte ptr [rbp+12h],bh
  0000000140005B15: 00 00              add         byte ptr [rax],al
  0000000140005B17: 00 B4 12 00 00 00  add         byte ptr [rdx+rdx],dh
                    00
  0000000140005B1E: 00 00              add         byte ptr [rax],al
  0000000140005B20: A7                 cmps        dword ptr [rsi],dword ptr [rdi]
  0000000140005B21: 12 00              adc         al,byte ptr [rax]
  0000000140005B23: 00 00              add         byte ptr [rax],al
  0000000140005B25: 00 00              add         byte ptr [rax],al
  0000000140005B27: 00 9F 12 00 00 00  add         byte ptr [rdi+12h],bl
  0000000140005B2D: 00 00              add         byte ptr [rax],al
  0000000140005B2F: 00 9F 12 00 00 00  add         byte ptr [rdi+12h],bl
  0000000140005B35: 00 00              add         byte ptr [rax],al
  0000000140005B37: 00 9F 12 00 00 00  add         byte ptr [rdi+12h],bl
  0000000140005B3D: 00 00              add         byte ptr [rax],al
  0000000140005B3F: 00 93 12 00 00 00  add         byte ptr [rbx+12h],dl
  0000000140005B45: 00 00              add         byte ptr [rax],al
  0000000140005B47: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B4D: 00 00              add         byte ptr [rax],al
  0000000140005B4F: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B55: 00 00              add         byte ptr [rax],al
  0000000140005B57: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B5D: 00 00              add         byte ptr [rax],al
  0000000140005B5F: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B65: 00 00              add         byte ptr [rax],al
  0000000140005B67: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B6D: 00 00              add         byte ptr [rax],al
  0000000140005B6F: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B75: 00 00              add         byte ptr [rax],al
  0000000140005B77: 00 8B 12 00 00 00  add         byte ptr [rbx+12h],cl
  0000000140005B7D: 00 00              add         byte ptr [rax],al
  0000000140005B7F: 00 7F 12           add         byte ptr [rdi+12h],bh
  0000000140005B82: 00 00              add         byte ptr [rax],al
  0000000140005B84: 00 00              add         byte ptr [rax],al
  0000000140005B86: 00 00              add         byte ptr [rax],al
  0000000140005B88: 75 12              jne         0000000140005B9C
  0000000140005B8A: 00 00              add         byte ptr [rax],al
  0000000140005B8C: 00 00              add         byte ptr [rax],al
  0000000140005B8E: 00 00              add         byte ptr [rax],al
  0000000140005B90: 75 12              jne         0000000140005BA4
  0000000140005B92: 00 00              add         byte ptr [rax],al
  0000000140005B94: 00 00              add         byte ptr [rax],al
  0000000140005B96: 00 00              add         byte ptr [rax],al
  0000000140005B98: 75 12              jne         0000000140005BAC
  0000000140005B9A: 00 00              add         byte ptr [rax],al
  0000000140005B9C: 00 00              add         byte ptr [rax],al
  0000000140005B9E: 00 00              add         byte ptr [rax],al
  0000000140005BA0: 75 12              jne         0000000140005BB4
  0000000140005BA2: 00 00              add         byte ptr [rax],al
  0000000140005BA4: 00 00              add         byte ptr [rax],al
  0000000140005BA6: 00 00              add         byte ptr [rax],al
  0000000140005BA8: 75 12              jne         0000000140005BBC
  0000000140005BAA: 00 00              add         byte ptr [rax],al
  0000000140005BAC: 00 00              add         byte ptr [rax],al
  0000000140005BAE: 00 00              add         byte ptr [rax],al
  0000000140005BB0: 75 12              jne         0000000140005BC4
  0000000140005BB2: 00 00              add         byte ptr [rax],al
  0000000140005BB4: 00 00              add         byte ptr [rax],al
  0000000140005BB6: 00 00              add         byte ptr [rax],al
  0000000140005BB8: 75 12              jne         0000000140005BCC
  0000000140005BBA: 00 00              add         byte ptr [rax],al
  0000000140005BBC: 00 00              add         byte ptr [rax],al
  0000000140005BBE: 00 00              add         byte ptr [rax],al
  0000000140005BC0: 75 12              jne         0000000140005BD4
  0000000140005BC2: 00 00              add         byte ptr [rax],al
  0000000140005BC4: 00 00              add         byte ptr [rax],al
  0000000140005BC6: 00 00              add         byte ptr [rax],al
  0000000140005BC8: 75 12              jne         0000000140005BDC
  0000000140005BCA: 00 00              add         byte ptr [rax],al
  0000000140005BCC: 00 00              add         byte ptr [rax],al
  0000000140005BCE: 00 00              add         byte ptr [rax],al
  0000000140005BD0: 75 12              jne         0000000140005BE4
  0000000140005BD2: 00 00              add         byte ptr [rax],al
  0000000140005BD4: 00 00              add         byte ptr [rax],al
  0000000140005BD6: 00 00              add         byte ptr [rax],al
  0000000140005BD8: 75 12              jne         0000000140005BEC
  0000000140005BDA: 00 00              add         byte ptr [rax],al
  0000000140005BDC: 00 00              add         byte ptr [rax],al
  0000000140005BDE: 00 00              add         byte ptr [rax],al
  0000000140005BE0: 75 12              jne         0000000140005BF4
  0000000140005BE2: 00 00              add         byte ptr [rax],al
  0000000140005BE4: 00 00              add         byte ptr [rax],al
  0000000140005BE6: 00 00              add         byte ptr [rax],al
  0000000140005BE8: 75 12              jne         0000000140005BFC
  0000000140005BEA: 00 00              add         byte ptr [rax],al
  0000000140005BEC: 00 00              add         byte ptr [rax],al
  0000000140005BEE: 00 00              add         byte ptr [rax],al
  0000000140005BF0: 75 12              jne         0000000140005C04
  0000000140005BF2: 00 00              add         byte ptr [rax],al
  0000000140005BF4: 00 00              add         byte ptr [rax],al
  0000000140005BF6: 00 00              add         byte ptr [rax],al
  0000000140005BF8: 75 12              jne         0000000140005C0C
  0000000140005BFA: 00 00              add         byte ptr [rax],al
  0000000140005BFC: 00 00              add         byte ptr [rax],al
  0000000140005BFE: 00 00              add         byte ptr [rax],al
  0000000140005C00: 66 12 00           adc         al,byte ptr [rax]
  0000000140005C03: 00 00              add         byte ptr [rax],al
  0000000140005C05: 00 00              add         byte ptr [rax],al
  0000000140005C07: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C0B: 00 00              add         byte ptr [rax],al
  0000000140005C0D: 00 00              add         byte ptr [rax],al
  0000000140005C0F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C13: 00 00              add         byte ptr [rax],al
  0000000140005C15: 00 00              add         byte ptr [rax],al
  0000000140005C17: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C1B: 00 00              add         byte ptr [rax],al
  0000000140005C1D: 00 00              add         byte ptr [rax],al
  0000000140005C1F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C23: 00 00              add         byte ptr [rax],al
  0000000140005C25: 00 00              add         byte ptr [rax],al
  0000000140005C27: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C2B: 00 00              add         byte ptr [rax],al
  0000000140005C2D: 00 00              add         byte ptr [rax],al
  0000000140005C2F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C33: 00 00              add         byte ptr [rax],al
  0000000140005C35: 00 00              add         byte ptr [rax],al
  0000000140005C37: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C3B: 00 00              add         byte ptr [rax],al
  0000000140005C3D: 00 00              add         byte ptr [rax],al
  0000000140005C3F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C43: 00 00              add         byte ptr [rax],al
  0000000140005C45: 00 00              add         byte ptr [rax],al
  0000000140005C47: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C4B: 00 00              add         byte ptr [rax],al
  0000000140005C4D: 00 00              add         byte ptr [rax],al
  0000000140005C4F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C53: 00 00              add         byte ptr [rax],al
  0000000140005C55: 00 00              add         byte ptr [rax],al
  0000000140005C57: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C5B: 00 00              add         byte ptr [rax],al
  0000000140005C5D: 00 00              add         byte ptr [rax],al
  0000000140005C5F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C63: 00 00              add         byte ptr [rax],al
  0000000140005C65: 00 00              add         byte ptr [rax],al
  0000000140005C67: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C6B: 00 00              add         byte ptr [rax],al
  0000000140005C6D: 00 00              add         byte ptr [rax],al
  0000000140005C6F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C73: 00 00              add         byte ptr [rax],al
  0000000140005C75: 00 00              add         byte ptr [rax],al
  0000000140005C77: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C7B: 00 00              add         byte ptr [rax],al
  0000000140005C7D: 00 00              add         byte ptr [rax],al
  0000000140005C7F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C83: 00 00              add         byte ptr [rax],al
  0000000140005C85: 00 00              add         byte ptr [rax],al
  0000000140005C87: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C8B: 00 00              add         byte ptr [rax],al
  0000000140005C8D: 00 00              add         byte ptr [rax],al
  0000000140005C8F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C93: 00 00              add         byte ptr [rax],al
  0000000140005C95: 00 00              add         byte ptr [rax],al
  0000000140005C97: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005C9B: 00 00              add         byte ptr [rax],al
  0000000140005C9D: 00 00              add         byte ptr [rax],al
  0000000140005C9F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CA3: 00 00              add         byte ptr [rax],al
  0000000140005CA5: 00 00              add         byte ptr [rax],al
  0000000140005CA7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CAB: 00 00              add         byte ptr [rax],al
  0000000140005CAD: 00 00              add         byte ptr [rax],al
  0000000140005CAF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CB3: 00 00              add         byte ptr [rax],al
  0000000140005CB5: 00 00              add         byte ptr [rax],al
  0000000140005CB7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CBB: 00 00              add         byte ptr [rax],al
  0000000140005CBD: 00 00              add         byte ptr [rax],al
  0000000140005CBF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CC3: 00 00              add         byte ptr [rax],al
  0000000140005CC5: 00 00              add         byte ptr [rax],al
  0000000140005CC7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CCB: 00 00              add         byte ptr [rax],al
  0000000140005CCD: 00 00              add         byte ptr [rax],al
  0000000140005CCF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CD3: 00 00              add         byte ptr [rax],al
  0000000140005CD5: 00 00              add         byte ptr [rax],al
  0000000140005CD7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CDB: 00 00              add         byte ptr [rax],al
  0000000140005CDD: 00 00              add         byte ptr [rax],al
  0000000140005CDF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CE3: 00 00              add         byte ptr [rax],al
  0000000140005CE5: 00 00              add         byte ptr [rax],al
  0000000140005CE7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CEB: 00 00              add         byte ptr [rax],al
  0000000140005CED: 00 00              add         byte ptr [rax],al
  0000000140005CEF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CF3: 00 00              add         byte ptr [rax],al
  0000000140005CF5: 00 00              add         byte ptr [rax],al
  0000000140005CF7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140005CFB: 00 00              add         byte ptr [rax],al
  0000000140005CFD: 00 00              add         byte ptr [rax],al
  0000000140005CFF: 00 4D 12           add         byte ptr [rbp+12h],cl
  0000000140005D02: 00 00              add         byte ptr [rax],al
  0000000140005D04: 00 00              add         byte ptr [rax],al
  0000000140005D06: 00 00              add         byte ptr [rax],al
  0000000140005D08: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D0B: 00 00              add         byte ptr [rax],al
  0000000140005D0D: 00 00              add         byte ptr [rax],al
  0000000140005D0F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D12: 00 00              add         byte ptr [rax],al
  0000000140005D14: 00 00              add         byte ptr [rax],al
  0000000140005D16: 00 00              add         byte ptr [rax],al
  0000000140005D18: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D1B: 00 00              add         byte ptr [rax],al
  0000000140005D1D: 00 00              add         byte ptr [rax],al
  0000000140005D1F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D22: 00 00              add         byte ptr [rax],al
  0000000140005D24: 00 00              add         byte ptr [rax],al
  0000000140005D26: 00 00              add         byte ptr [rax],al
  0000000140005D28: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D2B: 00 00              add         byte ptr [rax],al
  0000000140005D2D: 00 00              add         byte ptr [rax],al
  0000000140005D2F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D32: 00 00              add         byte ptr [rax],al
  0000000140005D34: 00 00              add         byte ptr [rax],al
  0000000140005D36: 00 00              add         byte ptr [rax],al
  0000000140005D38: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D3B: 00 00              add         byte ptr [rax],al
  0000000140005D3D: 00 00              add         byte ptr [rax],al
  0000000140005D3F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D42: 00 00              add         byte ptr [rax],al
  0000000140005D44: 00 00              add         byte ptr [rax],al
  0000000140005D46: 00 00              add         byte ptr [rax],al
  0000000140005D48: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D4B: 00 00              add         byte ptr [rax],al
  0000000140005D4D: 00 00              add         byte ptr [rax],al
  0000000140005D4F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D52: 00 00              add         byte ptr [rax],al
  0000000140005D54: 00 00              add         byte ptr [rax],al
  0000000140005D56: 00 00              add         byte ptr [rax],al
  0000000140005D58: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D5B: 00 00              add         byte ptr [rax],al
  0000000140005D5D: 00 00              add         byte ptr [rax],al
  0000000140005D5F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D62: 00 00              add         byte ptr [rax],al
  0000000140005D64: 00 00              add         byte ptr [rax],al
  0000000140005D66: 00 00              add         byte ptr [rax],al
  0000000140005D68: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D6B: 00 00              add         byte ptr [rax],al
  0000000140005D6D: 00 00              add         byte ptr [rax],al
  0000000140005D6F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D72: 00 00              add         byte ptr [rax],al
  0000000140005D74: 00 00              add         byte ptr [rax],al
  0000000140005D76: 00 00              add         byte ptr [rax],al
  0000000140005D78: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D7B: 00 00              add         byte ptr [rax],al
  0000000140005D7D: 00 00              add         byte ptr [rax],al
  0000000140005D7F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D82: 00 00              add         byte ptr [rax],al
  0000000140005D84: 00 00              add         byte ptr [rax],al
  0000000140005D86: 00 00              add         byte ptr [rax],al
  0000000140005D88: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D8B: 00 00              add         byte ptr [rax],al
  0000000140005D8D: 00 00              add         byte ptr [rax],al
  0000000140005D8F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005D92: 00 00              add         byte ptr [rax],al
  0000000140005D94: 00 00              add         byte ptr [rax],al
  0000000140005D96: 00 00              add         byte ptr [rax],al
  0000000140005D98: 42 12 00           adc         al,byte ptr [rax]
  0000000140005D9B: 00 00              add         byte ptr [rax],al
  0000000140005D9D: 00 00              add         byte ptr [rax],al
  0000000140005D9F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005DA2: 00 00              add         byte ptr [rax],al
  0000000140005DA4: 00 00              add         byte ptr [rax],al
  0000000140005DA6: 00 00              add         byte ptr [rax],al
  0000000140005DA8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005DAB: 00 00              add         byte ptr [rax],al
  0000000140005DAD: 00 00              add         byte ptr [rax],al
  0000000140005DAF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005DB2: 00 00              add         byte ptr [rax],al
  0000000140005DB4: 00 00              add         byte ptr [rax],al
  0000000140005DB6: 00 00              add         byte ptr [rax],al
  0000000140005DB8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005DBB: 00 00              add         byte ptr [rax],al
  0000000140005DBD: 00 00              add         byte ptr [rax],al
  0000000140005DBF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005DC2: 00 00              add         byte ptr [rax],al
  0000000140005DC4: 00 00              add         byte ptr [rax],al
  0000000140005DC6: 00 00              add         byte ptr [rax],al
  0000000140005DC8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005DCB: 00 00              add         byte ptr [rax],al
  0000000140005DCD: 00 00              add         byte ptr [rax],al
  0000000140005DCF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005DD2: 00 00              add         byte ptr [rax],al
  0000000140005DD4: 00 00              add         byte ptr [rax],al
  0000000140005DD6: 00 00              add         byte ptr [rax],al
  0000000140005DD8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005DDB: 00 00              add         byte ptr [rax],al
  0000000140005DDD: 00 00              add         byte ptr [rax],al
  0000000140005DDF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005DE2: 00 00              add         byte ptr [rax],al
  0000000140005DE4: 00 00              add         byte ptr [rax],al
  0000000140005DE6: 00 00              add         byte ptr [rax],al
  0000000140005DE8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005DEB: 00 00              add         byte ptr [rax],al
  0000000140005DED: 00 00              add         byte ptr [rax],al
  0000000140005DEF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005DF2: 00 00              add         byte ptr [rax],al
  0000000140005DF4: 00 00              add         byte ptr [rax],al
  0000000140005DF6: 00 00              add         byte ptr [rax],al
  0000000140005DF8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005DFB: 00 00              add         byte ptr [rax],al
  0000000140005DFD: 00 00              add         byte ptr [rax],al
  0000000140005DFF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E02: 00 00              add         byte ptr [rax],al
  0000000140005E04: 00 00              add         byte ptr [rax],al
  0000000140005E06: 00 00              add         byte ptr [rax],al
  0000000140005E08: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E0B: 00 00              add         byte ptr [rax],al
  0000000140005E0D: 00 00              add         byte ptr [rax],al
  0000000140005E0F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E12: 00 00              add         byte ptr [rax],al
  0000000140005E14: 00 00              add         byte ptr [rax],al
  0000000140005E16: 00 00              add         byte ptr [rax],al
  0000000140005E18: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E1B: 00 00              add         byte ptr [rax],al
  0000000140005E1D: 00 00              add         byte ptr [rax],al
  0000000140005E1F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E22: 00 00              add         byte ptr [rax],al
  0000000140005E24: 00 00              add         byte ptr [rax],al
  0000000140005E26: 00 00              add         byte ptr [rax],al
  0000000140005E28: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E2B: 00 00              add         byte ptr [rax],al
  0000000140005E2D: 00 00              add         byte ptr [rax],al
  0000000140005E2F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E32: 00 00              add         byte ptr [rax],al
  0000000140005E34: 00 00              add         byte ptr [rax],al
  0000000140005E36: 00 00              add         byte ptr [rax],al
  0000000140005E38: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E3B: 00 00              add         byte ptr [rax],al
  0000000140005E3D: 00 00              add         byte ptr [rax],al
  0000000140005E3F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E42: 00 00              add         byte ptr [rax],al
  0000000140005E44: 00 00              add         byte ptr [rax],al
  0000000140005E46: 00 00              add         byte ptr [rax],al
  0000000140005E48: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E4B: 00 00              add         byte ptr [rax],al
  0000000140005E4D: 00 00              add         byte ptr [rax],al
  0000000140005E4F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E52: 00 00              add         byte ptr [rax],al
  0000000140005E54: 00 00              add         byte ptr [rax],al
  0000000140005E56: 00 00              add         byte ptr [rax],al
  0000000140005E58: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E5B: 00 00              add         byte ptr [rax],al
  0000000140005E5D: 00 00              add         byte ptr [rax],al
  0000000140005E5F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E62: 00 00              add         byte ptr [rax],al
  0000000140005E64: 00 00              add         byte ptr [rax],al
  0000000140005E66: 00 00              add         byte ptr [rax],al
  0000000140005E68: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E6B: 00 00              add         byte ptr [rax],al
  0000000140005E6D: 00 00              add         byte ptr [rax],al
  0000000140005E6F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E72: 00 00              add         byte ptr [rax],al
  0000000140005E74: 00 00              add         byte ptr [rax],al
  0000000140005E76: 00 00              add         byte ptr [rax],al
  0000000140005E78: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E7B: 00 00              add         byte ptr [rax],al
  0000000140005E7D: 00 00              add         byte ptr [rax],al
  0000000140005E7F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E82: 00 00              add         byte ptr [rax],al
  0000000140005E84: 00 00              add         byte ptr [rax],al
  0000000140005E86: 00 00              add         byte ptr [rax],al
  0000000140005E88: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E8B: 00 00              add         byte ptr [rax],al
  0000000140005E8D: 00 00              add         byte ptr [rax],al
  0000000140005E8F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005E92: 00 00              add         byte ptr [rax],al
  0000000140005E94: 00 00              add         byte ptr [rax],al
  0000000140005E96: 00 00              add         byte ptr [rax],al
  0000000140005E98: 42 12 00           adc         al,byte ptr [rax]
  0000000140005E9B: 00 00              add         byte ptr [rax],al
  0000000140005E9D: 00 00              add         byte ptr [rax],al
  0000000140005E9F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005EA2: 00 00              add         byte ptr [rax],al
  0000000140005EA4: 00 00              add         byte ptr [rax],al
  0000000140005EA6: 00 00              add         byte ptr [rax],al
  0000000140005EA8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005EAB: 00 00              add         byte ptr [rax],al
  0000000140005EAD: 00 00              add         byte ptr [rax],al
  0000000140005EAF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005EB2: 00 00              add         byte ptr [rax],al
  0000000140005EB4: 00 00              add         byte ptr [rax],al
  0000000140005EB6: 00 00              add         byte ptr [rax],al
  0000000140005EB8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005EBB: 00 00              add         byte ptr [rax],al
  0000000140005EBD: 00 00              add         byte ptr [rax],al
  0000000140005EBF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005EC2: 00 00              add         byte ptr [rax],al
  0000000140005EC4: 00 00              add         byte ptr [rax],al
  0000000140005EC6: 00 00              add         byte ptr [rax],al
  0000000140005EC8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005ECB: 00 00              add         byte ptr [rax],al
  0000000140005ECD: 00 00              add         byte ptr [rax],al
  0000000140005ECF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005ED2: 00 00              add         byte ptr [rax],al
  0000000140005ED4: 00 00              add         byte ptr [rax],al
  0000000140005ED6: 00 00              add         byte ptr [rax],al
  0000000140005ED8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005EDB: 00 00              add         byte ptr [rax],al
  0000000140005EDD: 00 00              add         byte ptr [rax],al
  0000000140005EDF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005EE2: 00 00              add         byte ptr [rax],al
  0000000140005EE4: 00 00              add         byte ptr [rax],al
  0000000140005EE6: 00 00              add         byte ptr [rax],al
  0000000140005EE8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005EEB: 00 00              add         byte ptr [rax],al
  0000000140005EED: 00 00              add         byte ptr [rax],al
  0000000140005EEF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140005EF2: 00 00              add         byte ptr [rax],al
  0000000140005EF4: 00 00              add         byte ptr [rax],al
  0000000140005EF6: 00 00              add         byte ptr [rax],al
  0000000140005EF8: 42 12 00           adc         al,byte ptr [rax]
  0000000140005EFB: 00 00              add         byte ptr [rax],al
  0000000140005EFD: 00 00              add         byte ptr [rax],al
  0000000140005EFF: 00 48 89           add         byte ptr [rax-77h],cl
  0000000140005F02: C8 C3 0F 1F        enter       0FC3h,1Fh
  0000000140005F06: 44 00 00           add         byte ptr [rax],r8b
  0000000140005F09: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
  0000000140005F10: 90                 nop
  0000000140005F11: 90                 nop
  0000000140005F12: 90                 nop
  0000000140005F13: 90                 nop
  0000000140005F14: 90                 nop
  0000000140005F15: 90                 nop
  0000000140005F16: 90                 nop
  0000000140005F17: 90                 nop
  0000000140005F18: 90                 nop
  0000000140005F19: 90                 nop
  0000000140005F1A: 90                 nop
  0000000140005F1B: 90                 nop
  0000000140005F1C: 90                 nop
  0000000140005F1D: 90                 nop
  0000000140005F1E: 90                 nop
  0000000140005F1F: 90                 nop
  0000000140005F20: 90                 nop
  0000000140005F21: 90                 nop
  0000000140005F22: 90                 nop
  0000000140005F23: 90                 nop
  0000000140005F24: 90                 nop
  0000000140005F25: 90                 nop
  0000000140005F26: 90                 nop
  0000000140005F27: 90                 nop
  0000000140005F28: 90                 nop
  0000000140005F29: 90                 nop
  0000000140005F2A: 90                 nop
  0000000140005F2B: 90                 nop
  0000000140005F2C: 90                 nop
  0000000140005F2D: 90                 nop
  0000000140005F2E: 90                 nop
  0000000140005F2F: 90                 nop
  0000000140005F30: 90                 nop
  0000000140005F31: 90                 nop
  0000000140005F32: 90                 nop
  0000000140005F33: 90                 nop
  0000000140005F34: 90                 nop
  0000000140005F35: 90                 nop
  0000000140005F36: 90                 nop
  0000000140005F37: 90                 nop
  0000000140005F38: 90                 nop
  0000000140005F39: 90                 nop
  0000000140005F3A: 90                 nop
  0000000140005F3B: 90                 nop
  0000000140005F3C: 90                 nop
  0000000140005F3D: 90                 nop
  0000000140005F3E: 90                 nop
  0000000140005F3F: 90                 nop
  0000000140005F40: 55                 push        rbp
  0000000140005F41: 53                 push        rbx
  0000000140005F42: 41 57              push        r15
  0000000140005F44: 48 81 EC A0 01 00  sub         rsp,1A0h
                    00
  0000000140005F4B: 48 8D 6C 24 20     lea         rbp,[rsp+20h]
  0000000140005F50: 45 33 DB           xor         r11d,r11d
  0000000140005F53: 48 8B 05 CE 60 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000140005F5A: 45 33 FF           xor         r15d,r15d
  0000000140005F5D: 48 33 C5           xor         rax,rbp
  0000000140005F60: 45 33 C9           xor         r9d,r9d
  0000000140005F63: 48 89 85 78 01 00  mov         qword ptr [rbp+178h],rax
                    00
  0000000140005F6A: 83 3D DB 76 00 00  cmp         dword ptr [14000D64Ch],0
                    00
  0000000140005F71: 0F 84 E2 02 00 00  je          0000000140006259
  0000000140005F77: 83 3D C2 76 00 00  cmp         dword ptr [14000D640h],0
                    00
  0000000140005F7E: 0F 84 0E 01 00 00  je          0000000140006092
  0000000140005F84: 83 3D B9 76 00 00  cmp         dword ptr [14000D644h],0
                    00
  0000000140005F8B: 76 3A              jbe         0000000140005FC7
  0000000140005F8D: 53                 push        rbx
  0000000140005F8E: B8 01 00 00 00     mov         eax,1
  0000000140005F93: 0F A2              cpuid
  0000000140005F95: 89 5D 7C           mov         dword ptr [rbp+7Ch],ebx
  0000000140005F98: 89 95 84 00 00 00  mov         dword ptr [rbp+84h],edx
  0000000140005F9E: 89 85 94 00 00 00  mov         dword ptr [rbp+94h],eax
  0000000140005FA4: 5B                 pop         rbx
  0000000140005FA5: 8B 85 84 00 00 00  mov         eax,dword ptr [rbp+84h]
  0000000140005FAB: A9 00 00 00 04     test        eax,4000000h
  0000000140005FB0: 74 08              je          0000000140005FBA
  0000000140005FB2: 41 BF 02 00 00 00  mov         r15d,2
  0000000140005FB8: EB 0D              jmp         0000000140005FC7
  0000000140005FBA: A9 00 00 80 00     test        eax,800000h
  0000000140005FBF: 74 06              je          0000000140005FC7
  0000000140005FC1: 41 BF 01 00 00 00  mov         r15d,1
  0000000140005FC7: 8B 05 83 76 00 00  mov         eax,dword ptr [14000D650h]
  0000000140005FCD: 89 C2              mov         edx,eax
  0000000140005FCF: 48 85 D2           test        rdx,rdx
  0000000140005FD2: 76 12              jbe         0000000140005FE6
  0000000140005FD4: 44 8B 0D 79 76 00  mov         r9d,dword ptr [14000D654h]
                    00
  0000000140005FDB: 49 89 D3           mov         r11,rdx
  0000000140005FDE: 44 0F AF 0D 72 76  imul        r9d,dword ptr [14000D658h]
                    00 00
  0000000140005FE6: 8B 15 74 76 00 00  mov         edx,dword ptr [14000D660h]
  0000000140005FEC: 49 3B D3           cmp         rdx,r11
  0000000140005FEF: 76 12              jbe         0000000140006003
  0000000140005FF1: 44 8B 0D 6C 76 00  mov         r9d,dword ptr [14000D664h]
                    00
  0000000140005FF8: 49 89 D3           mov         r11,rdx
  0000000140005FFB: 44 0F AF 0D 65 76  imul        r9d,dword ptr [14000D668h]
                    00 00
  0000000140006003: 8B 15 67 76 00 00  mov         edx,dword ptr [14000D670h]
  0000000140006009: 49 3B D3           cmp         rdx,r11
  000000014000600C: 76 12              jbe         0000000140006020
  000000014000600E: 44 8B 0D 5F 76 00  mov         r9d,dword ptr [14000D674h]
                    00
  0000000140006015: 49 89 D3           mov         r11,rdx
  0000000140006018: 44 0F AF 0D 58 76  imul        r9d,dword ptr [14000D678h]
                    00 00
  0000000140006020: 85 C0              test        eax,eax
  0000000140006022: 0F 84 DC 01 00 00  je          0000000140006204
  0000000140006028: C1 E0 0A           shl         eax,0Ah
  000000014000602B: 49 C1 E3 0A        shl         r11,0Ah
  000000014000602F: 48 89 C2           mov         rdx,rax
  0000000140006032: 48 89 C1           mov         rcx,rax
  0000000140006035: 48 8D 1C 40        lea         rbx,[rax+rax*2]
  0000000140006039: 4C 89 1D 00 68 00  mov         qword ptr [__libirc_largest_cache_size],r11
                    00
  0000000140006040: 48 03 DB           add         rbx,rbx
  0000000140006043: 49 D1 EB           shr         r11,1
  0000000140006046: 48 D1 EA           shr         rdx,1
  0000000140006049: 48 C1 E9 02        shr         rcx,2
  000000014000604D: 4C 89 1D F4 67 00  mov         qword ptr [__libirc_largest_cache_size_half],r11
                    00
  0000000140006054: 48 89 05 F5 67 00  mov         qword ptr [__libirc_data_cache_size],rax
                    00
  000000014000605B: 48 89 15 F6 67 00  mov         qword ptr [__libirc_data_cache_size_half],rdx
                    00
  0000000140006062: 48 89 0D F7 67 00  mov         qword ptr [__libirc_largest_cache_size_quoter],rcx
                    00
  0000000140006069: 4C 89 0D 10 76 00  mov         qword ptr [__libirc_largest_cachelinesize],r9
                    00
  0000000140006070: 48 C7 05 ED 67 00  mov         qword ptr [__libirc_copy_loop_threshold],2000h
                    00 00 20 00 00
  000000014000607B: 48 89 1D EE 67 00  mov         qword ptr [__libirc_rep_move_threshold],rbx
                    00
  0000000140006082: 48 C7 05 EB 67 00  mov         qword ptr [__libirc_set_loop_threshold],800h
                    00 00 08 00 00
  000000014000608D: E9 3A 01 00 00     jmp         00000001400061CC
  0000000140006092: 33 D2              xor         edx,edx
  0000000140006094: 48 B8 41 75 74 68  mov         rax,69746E6568747541h
                    65 6E 74 69
  000000014000609E: 4C 8D 4D 28        lea         r9,[rbp+28h]
  00000001400060A2: 48 89 45 38        mov         qword ptr [rbp+38h],rax
  00000001400060A6: C7 45 40 63 41 4D  mov         dword ptr [rbp+40h],444D4163h
                    44
  00000001400060AD: 88 55 44           mov         byte ptr [rbp+44h],dl
  00000001400060B0: 41 89 51 68        mov         dword ptr [r9+68h],edx
  00000001400060B4: 4D 89 49 60        mov         qword ptr [r9+60h],r9
  00000001400060B8: 50                 push        rax
  00000001400060B9: 53                 push        rbx
  00000001400060BA: 51                 push        rcx
  00000001400060BB: 52                 push        rdx
  00000001400060BC: 4C 8B 85 88 00 00  mov         r8,qword ptr [rbp+88h]
                    00
  00000001400060C3: 8B 85 90 00 00 00  mov         eax,dword ptr [rbp+90h]
  00000001400060C9: 0F A2              cpuid
  00000001400060CB: 41 89 00           mov         dword ptr [r8],eax
  00000001400060CE: 41 89 58 04        mov         dword ptr [r8+4],ebx
  00000001400060D2: 41 89 48 08        mov         dword ptr [r8+8],ecx
  00000001400060D6: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  00000001400060DA: 5A                 pop         rdx
  00000001400060DB: 59                 pop         rcx
  00000001400060DC: 5B                 pop         rbx
  00000001400060DD: 58                 pop         rax
  00000001400060DE: 8B 45 38           mov         eax,dword ptr [rbp+38h]
  00000001400060E1: 3B 45 2C           cmp         eax,dword ptr [rbp+2Ch]
  00000001400060E4: 0F 85 E2 00 00 00  jne         00000001400061CC
  00000001400060EA: 8B 45 3C           mov         eax,dword ptr [rbp+3Ch]
  00000001400060ED: 3B 45 34           cmp         eax,dword ptr [rbp+34h]
  00000001400060F0: 0F 85 D6 00 00 00  jne         00000001400061CC
  00000001400060F6: 8B 45 40           mov         eax,dword ptr [rbp+40h]
  00000001400060F9: 3B 45 30           cmp         eax,dword ptr [rbp+30h]
  00000001400060FC: 0F 85 CA 00 00 00  jne         00000001400061CC
  0000000140006102: C7 45 78 01 00 00  mov         dword ptr [rbp+78h],1
                    00
  0000000140006109: 4C 89 4D 60        mov         qword ptr [rbp+60h],r9
  000000014000610D: 50                 push        rax
  000000014000610E: 53                 push        rbx
  000000014000610F: 51                 push        rcx
  0000000140006110: 52                 push        rdx
  0000000140006111: 4C 8B 45 60        mov         r8,qword ptr [rbp+60h]
  0000000140006115: 8B 45 78           mov         eax,dword ptr [rbp+78h]
  0000000140006118: 0F A2              cpuid
  000000014000611A: 41 89 00           mov         dword ptr [r8],eax
  000000014000611D: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140006121: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140006125: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  0000000140006129: 5A                 pop         rdx
  000000014000612A: 59                 pop         rcx
  000000014000612B: 5B                 pop         rbx
  000000014000612C: 58                 pop         rax
  000000014000612D: F7 45 34 00 00 80  test        dword ptr [rbp+34h],800000h
                    00
  0000000140006134: 74 06              je          000000014000613C
  0000000140006136: 41 BF 01 00 00 00  mov         r15d,1
  000000014000613C: C7 85 80 00 00 00  mov         dword ptr [rbp+80h],80000000h
                    00 00 00 80
  0000000140006146: 4C 89 4D 68        mov         qword ptr [rbp+68h],r9
  000000014000614A: 50                 push        rax
  000000014000614B: 53                 push        rbx
  000000014000614C: 51                 push        rcx
  000000014000614D: 52                 push        rdx
  000000014000614E: 4C 8B 45 68        mov         r8,qword ptr [rbp+68h]
  0000000140006152: 8B 85 80 00 00 00  mov         eax,dword ptr [rbp+80h]
  0000000140006158: 0F A2              cpuid
  000000014000615A: 41 89 00           mov         dword ptr [r8],eax
  000000014000615D: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140006161: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140006165: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  0000000140006169: 5A                 pop         rdx
  000000014000616A: 59                 pop         rcx
  000000014000616B: 5B                 pop         rbx
  000000014000616C: 58                 pop         rax
  000000014000616D: 81 7D 28 06 00 00  cmp         dword ptr [rbp+28h],80000006h
                    80
  0000000140006174: 72 56              jb          00000001400061CC
  0000000140006176: C7 45 50 06 00 00  mov         dword ptr [rbp+50h],80000006h
                    80
  000000014000617D: 4C 89 4D 48        mov         qword ptr [rbp+48h],r9
  0000000140006181: 50                 push        rax
  0000000140006182: 53                 push        rbx
  0000000140006183: 51                 push        rcx
  0000000140006184: 52                 push        rdx
  0000000140006185: 4C 8B 45 48        mov         r8,qword ptr [rbp+48h]
  0000000140006189: 8B 45 50           mov         eax,dword ptr [rbp+50h]
  000000014000618C: 0F A2              cpuid
  000000014000618E: 41 89 00           mov         dword ptr [r8],eax
  0000000140006191: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140006195: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140006199: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  000000014000619D: 5A                 pop         rdx
  000000014000619E: 59                 pop         rcx
  000000014000619F: 5B                 pop         rbx
  00000001400061A0: 58                 pop         rax
  00000001400061A1: 0F B7 45 32        movzx       eax,word ptr [rbp+32h]
  00000001400061A5: 48 C1 E0 0A        shl         rax,0Ah
  00000001400061A9: 48 8B 15 A0 66 00  mov         rdx,qword ptr [__libirc_data_cache_size]
                    00
  00000001400061B0: 48 89 05 89 66 00  mov         qword ptr [__libirc_largest_cache_size],rax
                    00
  00000001400061B7: 48 D1 E8           shr         rax,1
  00000001400061BA: 48 C1 EA 02        shr         rdx,2
  00000001400061BE: 48 89 05 83 66 00  mov         qword ptr [__libirc_largest_cache_size_half],rax
                    00
  00000001400061C5: 48 89 15 94 66 00  mov         qword ptr [__libirc_largest_cache_size_quoter],rdx
                    00
  00000001400061CC: 44 89 3D B9 74 00  mov         dword ptr [__libirc_mem_ops_method],r15d
                    00
  00000001400061D3: 44 89 3D AE 74 00  mov         dword ptr [14000D688h],r15d
                    00
  00000001400061DA: 48 8B 8D 78 01 00  mov         rcx,qword ptr [rbp+178h]
                    00
  00000001400061E1: 48 C7 85 78 01 00  mov         qword ptr [rbp+178h],0
                    00 00 00 00 00
  00000001400061EC: 48 33 CD           xor         rcx,rbp
  00000001400061EF: 48 3B 0D 32 5E 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  00000001400061F6: 75 5C              jne         0000000140006254
  00000001400061F8: 48 8D A5 80 01 00  lea         rsp,[rbp+180h]
                    00
  00000001400061FF: 41 5F              pop         r15
  0000000140006201: 5B                 pop         rbx
  0000000140006202: 5D                 pop         rbp
  0000000140006203: C3                 ret
  0000000140006204: 48 8D 0D 91 46 00  lea         rcx,[??_C@_0BF@A@__INTEL_LIBIRC_DEBUG?$AA@]
                    00
  000000014000620B: E8 4C 1C 00 00     call        getenv
  0000000140006210: 48 85 C0           test        rax,rax
  0000000140006213: 74 B7              je          00000001400061CC
  0000000140006215: 80 38 00           cmp         byte ptr [rax],0
  0000000140006218: 74 B2              je          00000001400061CC
  000000014000621A: 33 D2              xor         edx,edx
  000000014000621C: B9 01 00 00 00     mov         ecx,1
  0000000140006221: 45 33 C0           xor         r8d,r8d
  0000000140006224: E8 B7 CF FF FF     call        __libirc_print
  0000000140006229: B9 01 00 00 00     mov         ecx,1
  000000014000622E: BA 3D 00 00 00     mov         edx,3Dh
  0000000140006233: 45 33 C0           xor         r8d,r8d
  0000000140006236: E8 A5 CF FF FF     call        __libirc_print
  000000014000623B: 33 D2              xor         edx,edx
  000000014000623D: B9 01 00 00 00     mov         ecx,1
  0000000140006242: 45 33 C0           xor         r8d,r8d
  0000000140006245: E8 96 CF FF FF     call        __libirc_print
  000000014000624A: B9 01 00 00 00     mov         ecx,1
  000000014000624F: E8 A2 1B 00 00     call        exit
  0000000140006254: E8 37 1C 00 00     call        __security_check_cookie
  0000000140006259: C7 45 74 00 00 00  mov         dword ptr [rbp+74h],0
                    00
  0000000140006260: 50                 push        rax
  0000000140006261: 51                 push        rcx
  0000000140006262: 9C                 pushfq
  0000000140006263: 58                 pop         rax
  0000000140006264: 89 C1              mov         ecx,eax
  0000000140006266: 35 00 00 20 00     xor         eax,200000h
  000000014000626B: 50                 push        rax
  000000014000626C: 9D                 popfq
  000000014000626D: 9C                 pushfq
  000000014000626E: 58                 pop         rax
  000000014000626F: 3B C1              cmp         eax,ecx
  0000000140006271: 74 08              je          000000014000627B
  0000000140006273: C7 45 74 01 00 00  mov         dword ptr [rbp+74h],1
                    00
  000000014000627A: 51                 push        rcx
  000000014000627B: 9D                 popfq
  000000014000627C: 59                 pop         rcx
  000000014000627D: 58                 pop         rax
  000000014000627E: 83 7D 74 00        cmp         dword ptr [rbp+74h],0
  0000000140006282: 0F 84 7D 03 00 00  je          0000000140006605
  0000000140006288: 33 C9              xor         ecx,ecx
  000000014000628A: 48 8D 45 54        lea         rax,[rbp+54h]
  000000014000628E: 48 BA 47 65 6E 75  mov         rdx,49656E69756E6547h
                    69 6E 65 49
  0000000140006298: 48 89 45 58        mov         qword ptr [rbp+58h],rax
  000000014000629C: 48 89 95 68 01 00  mov         qword ptr [rbp+168h],rdx
                    00
  00000001400062A3: 48 C7 85 70 01 00  mov         qword ptr [rbp+170h],6C65746Eh
                    00 6E 74 65 6C
  00000001400062AE: 89 4D 70           mov         dword ptr [rbp+70h],ecx
  00000001400062B1: 89 08              mov         dword ptr [rax],ecx
  00000001400062B3: 50                 push        rax
  00000001400062B4: 53                 push        rbx
  00000001400062B5: 51                 push        rcx
  00000001400062B6: 52                 push        rdx
  00000001400062B7: B8 00 00 00 00     mov         eax,0
  00000001400062BC: 0F A2              cpuid
  00000001400062BE: 39 9D 68 01 00 00  cmp         dword ptr [rbp+168h],ebx
  00000001400062C4: 75 1D              jne         00000001400062E3
  00000001400062C6: 39 95 6C 01 00 00  cmp         dword ptr [rbp+16Ch],edx
  00000001400062CC: 75 15              jne         00000001400062E3
  00000001400062CE: 39 8D 70 01 00 00  cmp         dword ptr [rbp+170h],ecx
  00000001400062D4: 75 0D              jne         00000001400062E3
  00000001400062D6: C7 45 70 01 00 00  mov         dword ptr [rbp+70h],1
                    00
  00000001400062DD: 48 8B 55 58        mov         rdx,qword ptr [rbp+58h]
  00000001400062E1: 89 02              mov         dword ptr [rdx],eax
  00000001400062E3: 5A                 pop         rdx
  00000001400062E4: 59                 pop         rcx
  00000001400062E5: 5B                 pop         rbx
  00000001400062E6: 58                 pop         rax
  00000001400062E7: 8B 45 70           mov         eax,dword ptr [rbp+70h]
  00000001400062EA: 8B 55 54           mov         edx,dword ptr [rbp+54h]
  00000001400062ED: 89 05 4D 73 00 00  mov         dword ptr [14000D640h],eax
  00000001400062F3: 89 15 4B 73 00 00  mov         dword ptr [14000D644h],edx
  00000001400062F9: 83 FA 04           cmp         edx,4
  00000001400062FC: 0F 8C 3A 01 00 00  jl          000000014000643C
  0000000140006302: C7 45 0C 00 00 00  mov         dword ptr [rbp+0Ch],0
                    00
  0000000140006309: 48 8D 85 A8 00 00  lea         rax,[rbp+0A8h]
                    00
  0000000140006310: 48 89 45 20        mov         qword ptr [rbp+20h],rax
  0000000140006314: 48 89 7D 40        mov         qword ptr [rbp+40h],rdi
  0000000140006318: 50                 push        rax
  0000000140006319: 53                 push        rbx
  000000014000631A: 51                 push        rcx
  000000014000631B: 52                 push        rdx
  000000014000631C: 57                 push        rdi
  000000014000631D: 4C 8B 45 20        mov         r8,qword ptr [rbp+20h]
  0000000140006321: BF 00 00 00 00     mov         edi,0
  0000000140006326: 89 F9              mov         ecx,edi
  0000000140006328: B8 04 00 00 00     mov         eax,4
  000000014000632D: 0F A2              cpuid
  000000014000632F: A9 1F 00 00 00     test        eax,1Fh
  0000000140006334: 74 1D              je          0000000140006353
  0000000140006336: 41 89 00           mov         dword ptr [r8],eax
  0000000140006339: 41 89 58 04        mov         dword ptr [r8+4],ebx
  000000014000633D: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140006341: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  0000000140006345: 83 C7 01           add         edi,1
  0000000140006348: 83 FF 08           cmp         edi,8
  000000014000634B: 7D 06              jge         0000000140006353
  000000014000634D: 49 83 C0 10        add         r8,10h
  0000000140006351: EB D3              jmp         0000000140006326
  0000000140006353: 89 7D 0C           mov         dword ptr [rbp+0Ch],edi
  0000000140006356: 5F                 pop         rdi
  0000000140006357: 5A                 pop         rdx
  0000000140006358: 59                 pop         rcx
  0000000140006359: 5B                 pop         rbx
  000000014000635A: 58                 pop         rax
  000000014000635B: 45 33 D2           xor         r10d,r10d
  000000014000635E: 4C 63 45 0C        movsxd      r8,dword ptr [rbp+0Ch]
  0000000140006362: 33 DB              xor         ebx,ebx
  0000000140006364: 48 8B 7D 40        mov         rdi,qword ptr [rbp+40h]
  0000000140006368: 4D 85 C0           test        r8,r8
  000000014000636B: 0F 8E CB 00 00 00  jle         000000014000643C
  0000000140006371: 4C 89 65 28        mov         qword ptr [rbp+28h],r12
  0000000140006375: 4C 89 6D 30        mov         qword ptr [rbp+30h],r13
  0000000140006379: 4C 89 75 38        mov         qword ptr [rbp+38h],r14
  000000014000637D: 8A 94 1D A8 00 00  mov         dl,byte ptr [rbp+rbx+0A8h]
                    00
  0000000140006384: 88 D0              mov         al,dl
  0000000140006386: 24 1D              and         al,1Dh
  0000000140006388: 3C 01              cmp         al,1
  000000014000638A: 0F 85 90 00 00 00  jne         0000000140006420
  0000000140006390: 80 E2 E0           and         dl,0E0h
  0000000140006393: 4C 8D 25 66 9C FF  lea         r12,[140000000h]
                    FF
  000000014000639A: C0 EA 05           shr         dl,5
  000000014000639D: 4D 89 E5           mov         r13,r12
  00000001400063A0: 0F B6 D2           movzx       edx,dl
  00000001400063A3: 4D 89 EE           mov         r14,r13
  00000001400063A6: 48 C1 E2 04        shl         rdx,4
  00000001400063AA: 0F B7 8C 1D AC 00  movzx       ecx,word ptr [rbp+rbx+0ACh]
                    00 00
  00000001400063B2: 81 E1 FF 0F 00 00  and         ecx,0FFFh
  00000001400063B8: 8B 84 1D AC 00 00  mov         eax,dword ptr [rbp+rbx+0ACh]
                    00
  00000001400063BF: FF C1              inc         ecx
  00000001400063C1: 25 00 F0 3F 00     and         eax,3FF000h
  00000001400063C6: 41 89 8C 14 44 D6  mov         dword ptr [r12+rdx+0D644h],ecx
                    00 00
  00000001400063CE: 44 0F B7 A4 1D AE  movzx       r12d,word ptr [rbp+rbx+0AEh]
                    00 00 00
  00000001400063D7: 41 81 E4 C0 FF 00  and         r12d,0FFC0h
                    00
  00000001400063DE: C1 E8 0C           shr         eax,0Ch
  00000001400063E1: 41 C1 EC 06        shr         r12d,6
  00000001400063E5: FF C0              inc         eax
  00000001400063E7: 41 89 84 15 48 D6  mov         dword ptr [r13+rdx+0D648h],eax
                    00 00
  00000001400063EF: 41 FF C4           inc         r12d
  00000001400063F2: 44 8B AC 1D B0 00  mov         r13d,dword ptr [rbp+rbx+0B0h]
                    00 00
  00000001400063FA: 41 FF C5           inc         r13d
  00000001400063FD: 41 0F AF C4        imul        eax,r12d
  0000000140006401: 44 0F AF E9        imul        r13d,ecx
  0000000140006405: 44 0F AF E8        imul        r13d,eax
  0000000140006409: 4C 89 F0           mov         rax,r14
  000000014000640C: 41 C1 ED 0A        shr         r13d,0Ah
  0000000140006410: 45 89 A4 16 4C D6  mov         dword ptr [r14+rdx+0D64Ch],r12d
                    00 00
  0000000140006418: 44 89 AC 10 40 D6  mov         dword ptr [rax+rdx+0D640h],r13d
                    00 00
  0000000140006420: 49 FF C2           inc         r10
  0000000140006423: 48 83 C3 10        add         rbx,10h
  0000000140006427: 4D 3B D0           cmp         r10,r8
  000000014000642A: 0F 8C 4D FF FF FF  jl          000000014000637D
  0000000140006430: 4C 8B 65 28        mov         r12,qword ptr [rbp+28h]
  0000000140006434: 4C 8B 6D 30        mov         r13,qword ptr [rbp+30h]
  0000000140006438: 4C 8B 75 38        mov         r14,qword ptr [rbp+38h]
  000000014000643C: 83 3D 0D 72 00 00  cmp         dword ptr [14000D650h],0
                    00
  0000000140006443: 0F 85 BC 01 00 00  jne         0000000140006605
  0000000140006449: 83 7D 54 02        cmp         dword ptr [rbp+54h],2
  000000014000644D: 0F 8C B2 01 00 00  jl          0000000140006605
  0000000140006453: 48 8D 85 28 01 00  lea         rax,[rbp+128h]
                    00
  000000014000645A: 48 89 45 10        mov         qword ptr [rbp+10h],rax
  000000014000645E: 50                 push        rax
  000000014000645F: 53                 push        rbx
  0000000140006460: 51                 push        rcx
  0000000140006461: 52                 push        rdx
  0000000140006462: 4C 8B 45 10        mov         r8,qword ptr [rbp+10h]
  0000000140006466: B8 02 00 00 00     mov         eax,2
  000000014000646B: 0F A2              cpuid
  000000014000646D: 41 89 00           mov         dword ptr [r8],eax
  0000000140006470: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140006474: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140006478: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  000000014000647C: 3C 01              cmp         al,1
  000000014000647E: 7E 4D              jle         00000001400064CD
  0000000140006480: 3C 02              cmp         al,2
  0000000140006482: 7E 32              jle         00000001400064B6
  0000000140006484: 3C 03              cmp         al,3
  0000000140006486: 7E 17              jle         000000014000649F
  0000000140006488: B8 02 00 00 00     mov         eax,2
  000000014000648D: 0F A2              cpuid
  000000014000648F: 41 89 40 30        mov         dword ptr [r8+30h],eax
  0000000140006493: 41 89 58 34        mov         dword ptr [r8+34h],ebx
  0000000140006497: 41 89 48 38        mov         dword ptr [r8+38h],ecx
  000000014000649B: 41 89 50 3C        mov         dword ptr [r8+3Ch],edx
  000000014000649F: B8 02 00 00 00     mov         eax,2
  00000001400064A4: 0F A2              cpuid
  00000001400064A6: 41 89 40 20        mov         dword ptr [r8+20h],eax
  00000001400064AA: 41 89 58 24        mov         dword ptr [r8+24h],ebx
  00000001400064AE: 41 89 48 28        mov         dword ptr [r8+28h],ecx
  00000001400064B2: 41 89 50 2C        mov         dword ptr [r8+2Ch],edx
  00000001400064B6: B8 02 00 00 00     mov         eax,2
  00000001400064BB: 0F A2              cpuid
  00000001400064BD: 41 89 40 10        mov         dword ptr [r8+10h],eax
  00000001400064C1: 41 89 58 14        mov         dword ptr [r8+14h],ebx
  00000001400064C5: 41 89 48 18        mov         dword ptr [r8+18h],ecx
  00000001400064C9: 41 89 50 1C        mov         dword ptr [r8+1Ch],edx
  00000001400064CD: 5A                 pop         rdx
  00000001400064CE: 59                 pop         rcx
  00000001400064CF: 5B                 pop         rbx
  00000001400064D0: 58                 pop         rax
  00000001400064D1: 0F B6 85 28 01 00  movzx       eax,byte ptr [rbp+128h]
                    00
  00000001400064D8: 83 F8 04           cmp         eax,4
  00000001400064DB: 7E 07              jle         00000001400064E4
  00000001400064DD: B8 10 00 00 00     mov         eax,10h
  00000001400064E2: EB 0D              jmp         00000001400064F1
  00000001400064E4: 48 C1 E0 02        shl         rax,2
  00000001400064E8: 48 85 C0           test        rax,rax
  00000001400064EB: 0F 8E 14 01 00 00  jle         0000000140006605
  00000001400064F1: 48 89 75 18        mov         qword ptr [rbp+18h],rsi
  00000001400064F5: 45 33 D2           xor         r10d,r10d
  00000001400064F8: 48 89 7D 40        mov         qword ptr [rbp+40h],rdi
  00000001400064FC: 48 89 C7           mov         rdi,rax
  00000001400064FF: 4C 89 65 28        mov         qword ptr [rbp+28h],r12
  0000000140006503: 4C 89 6D 30        mov         qword ptr [rbp+30h],r13
  0000000140006507: 4C 89 75 38        mov         qword ptr [rbp+38h],r14
  000000014000650B: 42 F6 84 95 2B 01  test        byte ptr [rbp+r10*4+12Bh],80h
                    00 00 80
  0000000140006514: 0F 85 C3 00 00 00  jne         00000001400065DD
  000000014000651A: 45 33 ED           xor         r13d,r13d
  000000014000651D: 4E 8D A4 95 28 01  lea         r12,[rbp+r10*4+128h]
                    00 00
  0000000140006525: 47 0F B6 74 25 00  movzx       r14d,byte ptr [r13+r12]
  000000014000652B: 49 81 FE FF 00 00  cmp         r14,0FFh
                    00
  0000000140006532: 0F 84 64 01 00 00  je          000000014000669C
  0000000140006538: 48 8D 15 C1 9A FF  lea         rdx,[140000000h]
                    FF
  000000014000653F: 42 8A 8C F2 40 C0  mov         cl,byte ptr [rdx+r14*8+0C040h]
                    00 00
  0000000140006547: 80 E1 07           and         cl,7
  000000014000654A: 0F B6 F1           movzx       esi,cl
  000000014000654D: 48 85 F6           test        rsi,rsi
  0000000140006550: 74 7E              je          00000001400065D0
  0000000140006552: 48 83 FE 02        cmp         rsi,2
  0000000140006556: 0F 84 B8 00 00 00  je          0000000140006614
  000000014000655C: 48 8D 15 9D 9A FF  lea         rdx,[140000000h]
                    FF
  0000000140006563: 48 C1 E6 04        shl         rsi,4
  0000000140006567: 48 89 D3           mov         rbx,rdx
  000000014000656A: 49 89 D0           mov         r8,rdx
  000000014000656D: 42 0F B7 8C F2 40  movzx       ecx,word ptr [rdx+r14*8+0C040h]
                    C0 00 00
  0000000140006576: 81 E1 F8 7F 00 00  and         ecx,7FF8h
  000000014000657C: C1 E9 03           shr         ecx,3
  000000014000657F: 89 8C 33 44 D6 00  mov         dword ptr [rbx+rsi+0D644h],ecx
                    00
  0000000140006586: 48 89 D9           mov         rcx,rbx
  0000000140006589: 43 8B 94 F0 40 C0  mov         edx,dword ptr [r8+r14*8+0C040h]
                    00 00
  0000000140006591: 81 E2 00 80 3F 00  and         edx,3F8000h
  0000000140006597: C1 EA 0F           shr         edx,0Fh
  000000014000659A: 89 94 31 48 D6 00  mov         dword ptr [rcx+rsi+0D648h],edx
                    00
  00000001400065A1: 48 89 DA           mov         rdx,rbx
  00000001400065A4: 42 0F B7 94 F2 42  movzx       edx,word ptr [rdx+r14*8+0C042h]
                    C0 00 00
  00000001400065AD: 81 E2 C0 FF 00 00  and         edx,0FFC0h
  00000001400065B3: C1 EA 06           shr         edx,6
  00000001400065B6: 89 94 31 4C D6 00  mov         dword ptr [rcx+rsi+0D64Ch],edx
                    00
  00000001400065BD: 48 89 DA           mov         rdx,rbx
  00000001400065C0: 46 8B B4 F2 44 C0  mov         r14d,dword ptr [rdx+r14*8+0C044h]
                    00 00
  00000001400065C8: 44 89 B4 32 40 D6  mov         dword ptr [rdx+rsi+0D640h],r14d
                    00 00
  00000001400065D0: 49 FF C5           inc         r13
  00000001400065D3: 49 83 FD 04        cmp         r13,4
  00000001400065D7: 0F 8C 48 FF FF FF  jl          0000000140006525
  00000001400065DD: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400065E5: 49 FF C2           inc         r10
  00000001400065E8: 4C 3B D7           cmp         r10,rdi
  00000001400065EB: 0F 8C 1A FF FF FF  jl          000000014000650B
  00000001400065F1: 48 8B 75 18        mov         rsi,qword ptr [rbp+18h]
  00000001400065F5: 48 8B 7D 40        mov         rdi,qword ptr [rbp+40h]
  00000001400065F9: 4C 8B 65 28        mov         r12,qword ptr [rbp+28h]
  00000001400065FD: 4C 8B 6D 30        mov         r13,qword ptr [rbp+30h]
  0000000140006601: 4C 8B 75 38        mov         r14,qword ptr [rbp+38h]
  0000000140006605: C7 05 3D 70 00 00  mov         dword ptr [14000D64Ch],1
                    01 00 00 00
  000000014000660F: E9 63 F9 FF FF     jmp         0000000140005F77
  0000000140006614: 49 83 FE 49        cmp         r14,49h
  0000000140006618: 0F 85 3E FF FF FF  jne         000000014000655C
  000000014000661E: C7 45 08 01 00 00  mov         dword ptr [rbp+8],1
                    00
  0000000140006625: 48 8D 95 98 00 00  lea         rdx,[rbp+98h]
                    00
  000000014000662C: 48 89 55 00        mov         qword ptr [rbp],rdx
  0000000140006630: 50                 push        rax
  0000000140006631: 53                 push        rbx
  0000000140006632: 51                 push        rcx
  0000000140006633: 52                 push        rdx
  0000000140006634: 4C 8B 45 00        mov         r8,qword ptr [rbp]
  0000000140006638: 8B 45 08           mov         eax,dword ptr [rbp+8]
  000000014000663B: 0F A2              cpuid
  000000014000663D: 41 89 00           mov         dword ptr [r8],eax
  0000000140006640: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140006644: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140006648: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  000000014000664C: 5A                 pop         rdx
  000000014000664D: 59                 pop         rcx
  000000014000664E: 5B                 pop         rbx
  000000014000664F: 58                 pop         rax
  0000000140006650: 8B 8D 98 00 00 00  mov         ecx,dword ptr [rbp+98h]
  0000000140006656: 89 CA              mov         edx,ecx
  0000000140006658: 81 E2 00 0F 00 00  and         edx,0F00h
  000000014000665E: 81 FA 00 0F 00 00  cmp         edx,0F00h
  0000000140006664: 0F 85 F2 FE FF FF  jne         000000014000655C
  000000014000666A: F7 C1 00 00 00 0F  test        ecx,0F000000h
  0000000140006670: 0F 85 E6 FE FF FF  jne         000000014000655C
  0000000140006676: 89 CA              mov         edx,ecx
  0000000140006678: C1 EA 0C           shr         edx,0Ch
  000000014000667B: C1 E9 04           shr         ecx,4
  000000014000667E: 81 E2 F0 00 00 00  and         edx,0F0h
  0000000140006684: 83 E1 0F           and         ecx,0Fh
  0000000140006687: 0B D1              or          edx,ecx
  0000000140006689: 83 FA 06           cmp         edx,6
  000000014000668C: 0F 85 CA FE FF FF  jne         000000014000655C
  0000000140006692: BE 03 00 00 00     mov         esi,3
  0000000140006697: E9 C0 FE FF FF     jmp         000000014000655C
  000000014000669C: 48 8B 75 18        mov         rsi,qword ptr [rbp+18h]
  00000001400066A0: 66 0F EF C0        pxor        xmm0,xmm0
  00000001400066A4: 48 8B 7D 40        mov         rdi,qword ptr [rbp+40h]
  00000001400066A8: 4C 8B 65 28        mov         r12,qword ptr [rbp+28h]
  00000001400066AC: 4C 8B 6D 30        mov         r13,qword ptr [rbp+30h]
  00000001400066B0: 4C 8B 75 38        mov         r14,qword ptr [rbp+38h]
  00000001400066B4: F3 0F 7F 05 94 6F  movdqu      xmmword ptr [14000D650h],xmm0
                    00 00
  00000001400066BC: F3 0F 7F 05 9C 6F  movdqu      xmmword ptr [14000D660h],xmm0
                    00 00
  00000001400066C4: F3 0F 7F 05 A4 6F  movdqu      xmmword ptr [14000D670h],xmm0
                    00 00
  00000001400066CC: E9 34 FF FF FF     jmp         0000000140006605
  00000001400066D1: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400066D9: 0F 1F 80 00 00 00  nop         dword ptr [rax]
                    00
??2@YAPEAX_K@Z:
  00000001400066E0: 40 53              push        rbx
  00000001400066E2: 48 83 EC 20        sub         rsp,20h
  00000001400066E6: 48 8B D9           mov         rbx,rcx
  00000001400066E9: EB 0F              jmp         00000001400066FA
  00000001400066EB: 48 8B CB           mov         rcx,rbx
  00000001400066EE: E8 C1 16 00 00     call        _callnewh
  00000001400066F3: 85 C0              test        eax,eax
  00000001400066F5: 74 13              je          000000014000670A
  00000001400066F7: 48 8B CB           mov         rcx,rbx
  00000001400066FA: E8 BB 16 00 00     call        malloc
  00000001400066FF: 48 85 C0           test        rax,rax
  0000000140006702: 74 E7              je          00000001400066EB
  0000000140006704: 48 83 C4 20        add         rsp,20h
  0000000140006708: 5B                 pop         rbx
  0000000140006709: C3                 ret
  000000014000670A: 48 83 FB FF        cmp         rbx,0FFFFFFFFFFFFFFFFh
  000000014000670E: 74 06              je          0000000140006716
  0000000140006710: E8 57 04 00 00     call        ?__scrt_throw_std_bad_alloc@@YAXXZ
  0000000140006715: CC                 int         3
  0000000140006716: E8 71 04 00 00     call        ?__scrt_throw_std_bad_array_new_length@@YAXXZ
  000000014000671B: CC                 int         3
??3@YAXPEAX@Z:
  000000014000671C: E9 9F 16 00 00     jmp         free
  0000000140006721: CC CC CC                                         ...
??3@YAXPEAX_K@Z:
  0000000140006724: E9 F3 FF FF FF     jmp         ??3@YAXPEAX@Z
  0000000140006729: CC CC CC                                         ...
pre_c_initialization:
  000000014000672C: 40 53              push        rbx
  000000014000672E: 48 83 EC 20        sub         rsp,20h
  0000000140006732: B9 01 00 00 00     mov         ecx,1
  0000000140006737: E8 90 16 00 00     call        _set_app_type
  000000014000673C: E8 87 07 00 00     call        _get_startup_file_mode
  0000000140006741: 8B C8              mov         ecx,eax
  0000000140006743: E8 BA 16 00 00     call        _set_fmode
  0000000140006748: E8 6F 07 00 00     call        __scrt_exe_initialize_mta
  000000014000674D: 8B D8              mov         ebx,eax
  000000014000674F: E8 DE 16 00 00     call        __p__commode
  0000000140006754: B9 01 00 00 00     mov         ecx,1
  0000000140006759: 89 18              mov         dword ptr [rax],ebx
  000000014000675B: E8 E8 04 00 00     call        __scrt_initialize_onexit_tables
  0000000140006760: 84 C0              test        al,al
  0000000140006762: 74 73              je          00000001400067D7
  0000000140006764: E8 DB 09 00 00     call        _RTC_Initialize
  0000000140006769: 48 8D 0D 10 0A 00  lea         rcx,[_RTC_Terminate]
                    00
  0000000140006770: E8 83 06 00 00     call        atexit
  0000000140006775: E8 46 07 00 00     call        _get_startup_argv_mode
  000000014000677A: 8B C8              mov         ecx,eax
  000000014000677C: E8 57 16 00 00     call        _configure_narrow_argv
  0000000140006781: 85 C0              test        eax,eax
  0000000140006783: 75 52              jne         00000001400067D7
  0000000140006785: E8 46 07 00 00     call        ?__scrt_initialize_type_info@@YAXXZ
  000000014000678A: E8 7D 07 00 00     call        __scrt_is_user_matherr_present
  000000014000678F: 85 C0              test        eax,eax
  0000000140006791: 74 0C              je          000000014000679F
  0000000140006793: 48 8D 0D 22 07 00  lea         rcx,[__scrt_exe_initialize_mta]
                    00
  000000014000679A: E8 33 16 00 00     call        __setusermatherr
  000000014000679F: E8 40 07 00 00     call        _guard_check_icall_nop
  00000001400067A4: E8 3B 07 00 00     call        _guard_check_icall_nop
  00000001400067A9: E8 0E 07 00 00     call        __scrt_exe_initialize_mta
  00000001400067AE: 8B C8              mov         ecx,eax
  00000001400067B0: E8 71 16 00 00     call        _configthreadlocale
  00000001400067B5: E8 26 07 00 00     call        __acrt_initialize
  00000001400067BA: 84 C0              test        al,al
  00000001400067BC: 74 05              je          00000001400067C3
  00000001400067BE: E8 1B 16 00 00     call        _initialize_narrow_environment
  00000001400067C3: E8 F4 06 00 00     call        __scrt_exe_initialize_mta
  00000001400067C8: E8 AF 08 00 00     call        __scrt_initialize_mta
  00000001400067CD: 85 C0              test        eax,eax
  00000001400067CF: 75 06              jne         00000001400067D7
  00000001400067D1: 48 83 C4 20        add         rsp,20h
  00000001400067D5: 5B                 pop         rbx
  00000001400067D6: C3                 ret
  00000001400067D7: B9 07 00 00 00     mov         ecx,7
  00000001400067DC: E8 4F 07 00 00     call        __scrt_fastfail
  00000001400067E1: CC                 int         3
  00000001400067E2: CC CC                                            ..
post_pgo_initialization:
  00000001400067E4: 48 83 EC 28        sub         rsp,28h
  00000001400067E8: E8 03 07 00 00     call        __scrt_initialize_default_local_stdio_options
  00000001400067ED: 33 C0              xor         eax,eax
  00000001400067EF: 48 83 C4 28        add         rsp,28h
  00000001400067F3: C3                 ret
pre_cpp_initialization:
  00000001400067F4: 48 83 EC 28        sub         rsp,28h
  00000001400067F8: E8 DB 08 00 00     call        __scrt_set_unhandled_exception_filter
  00000001400067FD: E8 BA 06 00 00     call        __scrt_exe_initialize_mta
  0000000140006802: 8B C8              mov         ecx,eax
  0000000140006804: 48 83 C4 28        add         rsp,28h
  0000000140006808: E9 1F 16 00 00     jmp         _set_new_mode
  000000014000680D: CC CC CC                                         ...
__scrt_common_main_seh:
  0000000140006810: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140006815: 48 89 74 24 10     mov         qword ptr [rsp+10h],rsi
  000000014000681A: 57                 push        rdi
  000000014000681B: 48 83 EC 30        sub         rsp,30h
  000000014000681F: B9 01 00 00 00     mov         ecx,1
  0000000140006824: E8 D3 03 00 00     call        __scrt_initialize_crt
  0000000140006829: 84 C0              test        al,al
  000000014000682B: 0F 84 36 01 00 00  je          0000000140006967
  0000000140006831: 40 32 F6           xor         sil,sil
  0000000140006834: 40 88 74 24 20     mov         byte ptr [rsp+20h],sil
  0000000140006839: E8 82 03 00 00     call        __scrt_acquire_startup_lock
  000000014000683E: 8A D8              mov         bl,al
  0000000140006840: 8B 0D 02 61 00 00  mov         ecx,dword ptr [__scrt_current_native_startup_state]
  0000000140006846: 83 F9 01           cmp         ecx,1
  0000000140006849: 0F 84 23 01 00 00  je          0000000140006972
  000000014000684F: 85 C9              test        ecx,ecx
  0000000140006851: 75 4A              jne         000000014000689D
  0000000140006853: C7 05 EB 60 00 00  mov         dword ptr [__scrt_current_native_startup_state],1
                    01 00 00 00
  000000014000685D: 48 8D 15 24 2A 00  lea         rdx,[__xi_z]
                    00
  0000000140006864: 48 8D 0D 05 2A 00  lea         rcx,[__xi_a]
                    00
  000000014000686B: E8 80 15 00 00     call        _initterm_e
  0000000140006870: 85 C0              test        eax,eax
  0000000140006872: 74 0A              je          000000014000687E
  0000000140006874: B8 FF 00 00 00     mov         eax,0FFh
  0000000140006879: E9 D9 00 00 00     jmp         0000000140006957
  000000014000687E: 48 8D 15 E3 29 00  lea         rdx,[__xc_z]
                    00
  0000000140006885: 48 8D 0D C4 29 00  lea         rcx,[__xc_a]
                    00
  000000014000688C: E8 59 15 00 00     call        _initterm
  0000000140006891: C7 05 AD 60 00 00  mov         dword ptr [__scrt_current_native_startup_state],2
                    02 00 00 00
  000000014000689B: EB 08              jmp         00000001400068A5
  000000014000689D: 40 B6 01           mov         sil,1
  00000001400068A0: 40 88 74 24 20     mov         byte ptr [rsp+20h],sil
  00000001400068A5: 8A CB              mov         cl,bl
  00000001400068A7: E8 C0 04 00 00     call        __scrt_release_startup_lock
  00000001400068AC: E8 67 06 00 00     call        __scrt_get_dyn_tls_init_callback
  00000001400068B1: 48 8B D8           mov         rbx,rax
  00000001400068B4: 48 83 38 00        cmp         qword ptr [rax],0
  00000001400068B8: 74 1E              je          00000001400068D8
  00000001400068BA: 48 8B C8           mov         rcx,rax
  00000001400068BD: E8 12 04 00 00     call        __scrt_is_nonwritable_in_current_image
  00000001400068C2: 84 C0              test        al,al
  00000001400068C4: 74 12              je          00000001400068D8
  00000001400068C6: 45 33 C0           xor         r8d,r8d
  00000001400068C9: 41 8D 50 02        lea         edx,[r8+2]
  00000001400068CD: 33 C9              xor         ecx,ecx
  00000001400068CF: 48 8B 03           mov         rax,qword ptr [rbx]
  00000001400068D2: FF 15 60 29 00 00  call        qword ptr [__guard_dispatch_icall_fptr]
  00000001400068D8: E8 43 06 00 00     call        __scrt_get_dyn_tls_dtor_callback
  00000001400068DD: 48 8B D8           mov         rbx,rax
  00000001400068E0: 48 83 38 00        cmp         qword ptr [rax],0
  00000001400068E4: 74 14              je          00000001400068FA
  00000001400068E6: 48 8B C8           mov         rcx,rax
  00000001400068E9: E8 E6 03 00 00     call        __scrt_is_nonwritable_in_current_image
  00000001400068EE: 84 C0              test        al,al
  00000001400068F0: 74 08              je          00000001400068FA
  00000001400068F2: 48 8B 0B           mov         rcx,qword ptr [rbx]
  00000001400068F5: E8 26 15 00 00     call        _register_thread_local_exe_atexit_callback
  00000001400068FA: E8 E5 14 00 00     call        _get_initial_narrow_environment
  00000001400068FF: 48 8B F8           mov         rdi,rax
  0000000140006902: E8 07 15 00 00     call        __p___argv
  0000000140006907: 48 8B 18           mov         rbx,qword ptr [rax]
  000000014000690A: E8 F9 14 00 00     call        __p___argc
  000000014000690F: 4C 8B C7           mov         r8,rdi
  0000000140006912: 48 8B D3           mov         rdx,rbx
  0000000140006915: 8B 08              mov         ecx,dword ptr [rax]
  0000000140006917: E8 E4 A6 FF FF     call        main
  000000014000691C: 8B D8              mov         ebx,eax
  000000014000691E: E8 61 07 00 00     call        __scrt_is_managed_app
  0000000140006923: 84 C0              test        al,al
  0000000140006925: 74 55              je          000000014000697C
  0000000140006927: 40 84 F6           test        sil,sil
  000000014000692A: 75 05              jne         0000000140006931
  000000014000692C: E8 E3 14 00 00     call        _cexit
  0000000140006931: 33 D2              xor         edx,edx
  0000000140006933: B1 01              mov         cl,1
  0000000140006935: E8 56 04 00 00     call        __scrt_uninitialize_crt
  000000014000693A: 8B C3              mov         eax,ebx
  000000014000693C: EB 19              jmp         0000000140006957
  000000014000693E: 8B D8              mov         ebx,eax
  0000000140006940: E8 3F 07 00 00     call        __scrt_is_managed_app
  0000000140006945: 84 C0              test        al,al
  0000000140006947: 74 3B              je          0000000140006984
  0000000140006949: 80 7C 24 20 00     cmp         byte ptr [rsp+20h],0
  000000014000694E: 75 05              jne         0000000140006955
  0000000140006950: E8 C5 14 00 00     call        _c_exit
  0000000140006955: 8B C3              mov         eax,ebx
  0000000140006957: 48 8B 5C 24 40     mov         rbx,qword ptr [rsp+40h]
  000000014000695C: 48 8B 74 24 48     mov         rsi,qword ptr [rsp+48h]
  0000000140006961: 48 83 C4 30        add         rsp,30h
  0000000140006965: 5F                 pop         rdi
  0000000140006966: C3                 ret
  0000000140006967: B9 07 00 00 00     mov         ecx,7
  000000014000696C: E8 BF 05 00 00     call        __scrt_fastfail
  0000000140006971: 90                 nop
  0000000140006972: B9 07 00 00 00     mov         ecx,7
  0000000140006977: E8 B4 05 00 00     call        __scrt_fastfail
  000000014000697C: 8B CB              mov         ecx,ebx
  000000014000697E: E8 73 14 00 00     call        exit
  0000000140006983: 90                 nop
  0000000140006984: 8B CB              mov         ecx,ebx
  0000000140006986: E8 71 14 00 00     call        _exit
  000000014000698B: 90                 nop
mainCRTStartup:
  000000014000698C: 48 83 EC 28        sub         rsp,28h
  0000000140006990: E8 7B 04 00 00     call        __security_init_cookie
  0000000140006995: 48 83 C4 28        add         rsp,28h
  0000000140006999: E9 72 FE FF FF     jmp         0000000140006810
  000000014000699E: CC CC                                            ..
??0bad_alloc@std@@QEAA@AEBV01@@Z:
  00000001400069A0: 40 53              push        rbx
  00000001400069A2: 48 83 EC 20        sub         rsp,20h
  00000001400069A6: 48 8B D9           mov         rbx,rcx
  00000001400069A9: 48 8B C2           mov         rax,rdx
  00000001400069AC: 48 8D 0D 25 29 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  00000001400069B3: 0F 57 C0           xorps       xmm0,xmm0
  00000001400069B6: 48 89 0B           mov         qword ptr [rbx],rcx
  00000001400069B9: 48 8D 53 08        lea         rdx,[rbx+8]
  00000001400069BD: 48 8D 48 08        lea         rcx,[rax+8]
  00000001400069C1: 0F 11 02           movups      xmmword ptr [rdx],xmm0
  00000001400069C4: E8 C7 13 00 00     call        __std_exception_copy
  00000001400069C9: 48 8D 05 38 29 00  lea         rax,[??_7bad_alloc@std@@6B@]
                    00
  00000001400069D0: 48 89 03           mov         qword ptr [rbx],rax
  00000001400069D3: 48 8B C3           mov         rax,rbx
  00000001400069D6: 48 83 C4 20        add         rsp,20h
  00000001400069DA: 5B                 pop         rbx
  00000001400069DB: C3                 ret
??0bad_alloc@std@@QEAA@XZ:
  00000001400069DC: 48 83 61 10 00     and         qword ptr [rcx+10h],0
  00000001400069E1: 48 8D 05 30 29 00  lea         rax,[??_C@_0P@GHFPNOJB@bad?5allocation@]
                    00
  00000001400069E8: 48 89 41 08        mov         qword ptr [rcx+8],rax
  00000001400069EC: 48 8D 05 15 29 00  lea         rax,[??_7bad_alloc@std@@6B@]
                    00
  00000001400069F3: 48 89 01           mov         qword ptr [rcx],rax
  00000001400069F6: 48 8B C1           mov         rax,rcx
  00000001400069F9: C3                 ret
  00000001400069FA: CC CC                                            ..
??0bad_array_new_length@std@@QEAA@AEBV01@@Z:
  00000001400069FC: 40 53              push        rbx
  00000001400069FE: 48 83 EC 20        sub         rsp,20h
  0000000140006A02: 48 8B D9           mov         rbx,rcx
  0000000140006A05: 48 8B C2           mov         rax,rdx
  0000000140006A08: 48 8D 0D C9 28 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  0000000140006A0F: 0F 57 C0           xorps       xmm0,xmm0
  0000000140006A12: 48 89 0B           mov         qword ptr [rbx],rcx
  0000000140006A15: 48 8D 53 08        lea         rdx,[rbx+8]
  0000000140006A19: 48 8D 48 08        lea         rcx,[rax+8]
  0000000140006A1D: 0F 11 02           movups      xmmword ptr [rdx],xmm0
  0000000140006A20: E8 6B 13 00 00     call        __std_exception_copy
  0000000140006A25: 48 8D 05 04 29 00  lea         rax,[??_7bad_array_new_length@std@@6B@]
                    00
  0000000140006A2C: 48 89 03           mov         qword ptr [rbx],rax
  0000000140006A2F: 48 8B C3           mov         rax,rbx
  0000000140006A32: 48 83 C4 20        add         rsp,20h
  0000000140006A36: 5B                 pop         rbx
  0000000140006A37: C3                 ret
??0bad_array_new_length@std@@QEAA@XZ:
  0000000140006A38: 48 83 61 10 00     and         qword ptr [rcx+10h],0
  0000000140006A3D: 48 8D 05 FC 28 00  lea         rax,[??_C@_0BF@KINCDENJ@bad?5array?5new?5length@]
                    00
  0000000140006A44: 48 89 41 08        mov         qword ptr [rcx+8],rax
  0000000140006A48: 48 8D 05 E1 28 00  lea         rax,[??_7bad_array_new_length@std@@6B@]
                    00
  0000000140006A4F: 48 89 01           mov         qword ptr [rcx],rax
  0000000140006A52: 48 8B C1           mov         rax,rcx
  0000000140006A55: C3                 ret
  0000000140006A56: CC CC                                            ..
??0exception@std@@QEAA@AEBV01@@Z:
  0000000140006A58: 40 53              push        rbx
  0000000140006A5A: 48 83 EC 20        sub         rsp,20h
  0000000140006A5E: 48 8B D9           mov         rbx,rcx
  0000000140006A61: 48 8B C2           mov         rax,rdx
  0000000140006A64: 48 8D 0D 6D 28 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  0000000140006A6B: 0F 57 C0           xorps       xmm0,xmm0
  0000000140006A6E: 48 89 0B           mov         qword ptr [rbx],rcx
  0000000140006A71: 48 8D 53 08        lea         rdx,[rbx+8]
  0000000140006A75: 48 8D 48 08        lea         rcx,[rax+8]
  0000000140006A79: 0F 11 02           movups      xmmword ptr [rdx],xmm0
  0000000140006A7C: E8 0F 13 00 00     call        __std_exception_copy
  0000000140006A81: 48 8B C3           mov         rax,rbx
  0000000140006A84: 48 83 C4 20        add         rsp,20h
  0000000140006A88: 5B                 pop         rbx
  0000000140006A89: C3                 ret
  0000000140006A8A: CC CC                                            ..
??1bad_alloc@std@@UEAA@XZ:
  0000000140006A8C: 48 8D 05 45 28 00  lea         rax,[??_7exception@std@@6B@]
                    00
  0000000140006A93: 48 89 01           mov         qword ptr [rcx],rax
  0000000140006A96: 48 83 C1 08        add         rcx,8
  0000000140006A9A: E9 F7 12 00 00     jmp         __std_exception_destroy
  0000000140006A9F: CC                                               .
??_Ebad_alloc@std@@UEAAPEAXI@Z:
  0000000140006AA0: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140006AA5: 57                 push        rdi
  0000000140006AA6: 48 83 EC 20        sub         rsp,20h
  0000000140006AAA: 48 8D 05 27 28 00  lea         rax,[??_7exception@std@@6B@]
                    00
  0000000140006AB1: 48 8B F9           mov         rdi,rcx
  0000000140006AB4: 48 89 01           mov         qword ptr [rcx],rax
  0000000140006AB7: 8B DA              mov         ebx,edx
  0000000140006AB9: 48 83 C1 08        add         rcx,8
  0000000140006ABD: E8 D4 12 00 00     call        __std_exception_destroy
  0000000140006AC2: F6 C3 01           test        bl,1
  0000000140006AC5: 74 0D              je          0000000140006AD4
  0000000140006AC7: BA 18 00 00 00     mov         edx,18h
  0000000140006ACC: 48 8B CF           mov         rcx,rdi
  0000000140006ACF: E8 50 FC FF FF     call        ??3@YAXPEAX_K@Z
  0000000140006AD4: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140006AD9: 48 8B C7           mov         rax,rdi
  0000000140006ADC: 48 83 C4 20        add         rsp,20h
  0000000140006AE0: 5F                 pop         rdi
  0000000140006AE1: C3                 ret
  0000000140006AE2: CC CC                                            ..
??_Ebad_array_new_length@std@@UEAAPEAXI@Z:
  0000000140006AE4: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140006AE9: 57                 push        rdi
  0000000140006AEA: 48 83 EC 20        sub         rsp,20h
  0000000140006AEE: 48 8D 05 E3 27 00  lea         rax,[??_7exception@std@@6B@]
                    00
  0000000140006AF5: 48 8B F9           mov         rdi,rcx
  0000000140006AF8: 48 89 01           mov         qword ptr [rcx],rax
  0000000140006AFB: 8B DA              mov         ebx,edx
  0000000140006AFD: 48 83 C1 08        add         rcx,8
  0000000140006B01: E8 90 12 00 00     call        __std_exception_destroy
  0000000140006B06: F6 C3 01           test        bl,1
  0000000140006B09: 74 0D              je          0000000140006B18
  0000000140006B0B: BA 18 00 00 00     mov         edx,18h
  0000000140006B10: 48 8B CF           mov         rcx,rdi
  0000000140006B13: E8 0C FC FF FF     call        ??3@YAXPEAX_K@Z
  0000000140006B18: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140006B1D: 48 8B C7           mov         rax,rdi
  0000000140006B20: 48 83 C4 20        add         rsp,20h
  0000000140006B24: 5F                 pop         rdi
  0000000140006B25: C3                 ret
  0000000140006B26: CC CC                                            ..
??_Eexception@std@@UEAAPEAXI@Z:
  0000000140006B28: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140006B2D: 57                 push        rdi
  0000000140006B2E: 48 83 EC 20        sub         rsp,20h
  0000000140006B32: 48 8D 05 9F 27 00  lea         rax,[??_7exception@std@@6B@]
                    00
  0000000140006B39: 48 8B F9           mov         rdi,rcx
  0000000140006B3C: 48 89 01           mov         qword ptr [rcx],rax
  0000000140006B3F: 8B DA              mov         ebx,edx
  0000000140006B41: 48 83 C1 08        add         rcx,8
  0000000140006B45: E8 4C 12 00 00     call        __std_exception_destroy
  0000000140006B4A: F6 C3 01           test        bl,1
  0000000140006B4D: 74 0D              je          0000000140006B5C
  0000000140006B4F: BA 18 00 00 00     mov         edx,18h
  0000000140006B54: 48 8B CF           mov         rcx,rdi
  0000000140006B57: E8 C8 FB FF FF     call        ??3@YAXPEAX_K@Z
  0000000140006B5C: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140006B61: 48 8B C7           mov         rax,rdi
  0000000140006B64: 48 83 C4 20        add         rsp,20h
  0000000140006B68: 5F                 pop         rdi
  0000000140006B69: C3                 ret
  0000000140006B6A: CC CC                                            ..
?__scrt_throw_std_bad_alloc@@YAXXZ:
  0000000140006B6C: 48 83 EC 48        sub         rsp,48h
  0000000140006B70: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140006B75: E8 62 FE FF FF     call        ??0bad_alloc@std@@QEAA@XZ
  0000000140006B7A: 48 8D 15 A7 4A 00  lea         rdx,[_TI2?AVbad_alloc@std@@]
                    00
  0000000140006B81: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140006B86: E8 11 12 00 00     call        _CxxThrowException
  0000000140006B8B: CC                 int         3
?__scrt_throw_std_bad_array_new_length@@YAXXZ:
  0000000140006B8C: 48 83 EC 48        sub         rsp,48h
  0000000140006B90: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140006B95: E8 9E FE FF FF     call        ??0bad_array_new_length@std@@QEAA@XZ
  0000000140006B9A: 48 8D 15 0F 4B 00  lea         rdx,[_TI3?AVbad_array_new_length@std@@]
                    00
  0000000140006BA1: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140006BA6: E8 F1 11 00 00     call        _CxxThrowException
  0000000140006BAB: CC                 int         3
?what@exception@std@@UEBAPEBDXZ:
  0000000140006BAC: 48 83 79 08 00     cmp         qword ptr [rcx+8],0
  0000000140006BB1: 48 8D 05 30 27 00  lea         rax,[??_C@_0BC@EOODALEL@Unknown?5exception@]
                    00
  0000000140006BB8: 48 0F 45 41 08     cmovne      rax,qword ptr [rcx+8]
  0000000140006BBD: C3                 ret
  0000000140006BBE: CC CC                                            ..
__scrt_acquire_startup_lock:
  0000000140006BC0: 48 83 EC 28        sub         rsp,28h
  0000000140006BC4: E8 C3 07 00 00     call        __scrt_is_ucrt_dll_in_use
  0000000140006BC9: 85 C0              test        eax,eax
  0000000140006BCB: 74 21              je          0000000140006BEE
  0000000140006BCD: 65 48 8B 04 25 30  mov         rax,qword ptr gs:[30h]
                    00 00 00
  0000000140006BD6: 48 8B 48 08        mov         rcx,qword ptr [rax+8]
  0000000140006BDA: EB 05              jmp         0000000140006BE1
  0000000140006BDC: 48 3B C8           cmp         rcx,rax
  0000000140006BDF: 74 14              je          0000000140006BF5
  0000000140006BE1: 33 C0              xor         eax,eax
  0000000140006BE3: F0 48 0F B1 0D 64  lock cmpxchg qword ptr [__scrt_native_startup_lock],rcx
                    5D 00 00
  0000000140006BEC: 75 EE              jne         0000000140006BDC
  0000000140006BEE: 32 C0              xor         al,al
  0000000140006BF0: 48 83 C4 28        add         rsp,28h
  0000000140006BF4: C3                 ret
  0000000140006BF5: B0 01              mov         al,1
  0000000140006BF7: EB F7              jmp         0000000140006BF0
  0000000140006BF9: CC CC CC                                         ...
__scrt_initialize_crt:
  0000000140006BFC: 40 53              push        rbx
  0000000140006BFE: 48 83 EC 20        sub         rsp,20h
  0000000140006C02: 0F B6 05 4F 5D 00  movzx       eax,byte ptr [14000C958h]
                    00
  0000000140006C09: 85 C9              test        ecx,ecx
  0000000140006C0B: BB 01 00 00 00     mov         ebx,1
  0000000140006C10: 0F 44 C3           cmove       eax,ebx
  0000000140006C13: 88 05 3F 5D 00 00  mov         byte ptr [14000C958h],al
  0000000140006C19: E8 CA 05 00 00     call        __isa_available_init
  0000000140006C1E: E8 BD 02 00 00     call        __acrt_initialize
  0000000140006C23: 84 C0              test        al,al
  0000000140006C25: 75 04              jne         0000000140006C2B
  0000000140006C27: 32 C0              xor         al,al
  0000000140006C29: EB 14              jmp         0000000140006C3F
  0000000140006C2B: E8 B0 02 00 00     call        __acrt_initialize
  0000000140006C30: 84 C0              test        al,al
  0000000140006C32: 75 09              jne         0000000140006C3D
  0000000140006C34: 33 C9              xor         ecx,ecx
  0000000140006C36: E8 A5 02 00 00     call        __acrt_initialize
  0000000140006C3B: EB EA              jmp         0000000140006C27
  0000000140006C3D: 8A C3              mov         al,bl
  0000000140006C3F: 48 83 C4 20        add         rsp,20h
  0000000140006C43: 5B                 pop         rbx
  0000000140006C44: C3                 ret
  0000000140006C45: CC CC CC                                         ...
__scrt_initialize_onexit_tables:
  0000000140006C48: 40 53              push        rbx
  0000000140006C4A: 48 83 EC 20        sub         rsp,20h
  0000000140006C4E: 80 3D 04 5D 00 00  cmp         byte ptr [14000C959h],0
                    00
  0000000140006C55: 8B D9              mov         ebx,ecx
  0000000140006C57: 75 67              jne         0000000140006CC0
  0000000140006C59: 83 F9 01           cmp         ecx,1
  0000000140006C5C: 77 6A              ja          0000000140006CC8
  0000000140006C5E: E8 29 07 00 00     call        __scrt_is_ucrt_dll_in_use
  0000000140006C63: 85 C0              test        eax,eax
  0000000140006C65: 74 28              je          0000000140006C8F
  0000000140006C67: 85 DB              test        ebx,ebx
  0000000140006C69: 75 24              jne         0000000140006C8F
  0000000140006C6B: 48 8D 0D EE 5C 00  lea         rcx,[14000C960h]
                    00
  0000000140006C72: E8 C1 11 00 00     call        _initialize_onexit_table
  0000000140006C77: 85 C0              test        eax,eax
  0000000140006C79: 75 10              jne         0000000140006C8B
  0000000140006C7B: 48 8D 0D F6 5C 00  lea         rcx,[14000C978h]
                    00
  0000000140006C82: E8 B1 11 00 00     call        _initialize_onexit_table
  0000000140006C87: 85 C0              test        eax,eax
  0000000140006C89: 74 2E              je          0000000140006CB9
  0000000140006C8B: 32 C0              xor         al,al
  0000000140006C8D: EB 33              jmp         0000000140006CC2
  0000000140006C8F: 66 0F 6F 05 C9 26  movdqa      xmm0,xmmword ptr [__xmm@ffffffffffffffffffffffffffffffff]
                    00 00
  0000000140006C97: 48 83 C8 FF        or          rax,0FFFFFFFFFFFFFFFFh
  0000000140006C9B: F3 0F 7F 05 BD 5C  movdqu      xmmword ptr [14000C960h],xmm0
                    00 00
  0000000140006CA3: 48 89 05 C6 5C 00  mov         qword ptr [14000C970h],rax
                    00
  0000000140006CAA: F3 0F 7F 05 C6 5C  movdqu      xmmword ptr [14000C978h],xmm0
                    00 00
  0000000140006CB2: 48 89 05 CF 5C 00  mov         qword ptr [14000C988h],rax
                    00
  0000000140006CB9: C6 05 99 5C 00 00  mov         byte ptr [14000C959h],1
                    01
  0000000140006CC0: B0 01              mov         al,1
  0000000140006CC2: 48 83 C4 20        add         rsp,20h
  0000000140006CC6: 5B                 pop         rbx
  0000000140006CC7: C3                 ret
  0000000140006CC8: B9 05 00 00 00     mov         ecx,5
  0000000140006CCD: E8 5E 02 00 00     call        __scrt_fastfail
  0000000140006CD2: CC                 int         3
  0000000140006CD3: CC                                               .
__scrt_is_nonwritable_in_current_image:
  0000000140006CD4: 48 83 EC 18        sub         rsp,18h
  0000000140006CD8: 4C 8B C1           mov         r8,rcx
  0000000140006CDB: B8 4D 5A 00 00     mov         eax,5A4Dh
  0000000140006CE0: 66 39 05 19 93 FF  cmp         word ptr [140000000h],ax
                    FF
  0000000140006CE7: 75 78              jne         0000000140006D61
  0000000140006CE9: 48 63 0D 4C 93 FF  movsxd      rcx,dword ptr [14000003Ch]
                    FF
  0000000140006CF0: 48 8D 15 09 93 FF  lea         rdx,[140000000h]
                    FF
  0000000140006CF7: 48 03 CA           add         rcx,rdx
  0000000140006CFA: 81 39 50 45 00 00  cmp         dword ptr [rcx],4550h
  0000000140006D00: 75 5F              jne         0000000140006D61
  0000000140006D02: B8 0B 02 00 00     mov         eax,20Bh
  0000000140006D07: 66 39 41 18        cmp         word ptr [rcx+18h],ax
  0000000140006D0B: 75 54              jne         0000000140006D61
  0000000140006D0D: 4C 2B C2           sub         r8,rdx
  0000000140006D10: 0F B7 41 14        movzx       eax,word ptr [rcx+14h]
  0000000140006D14: 48 8D 51 18        lea         rdx,[rcx+18h]
  0000000140006D18: 48 03 D0           add         rdx,rax
  0000000140006D1B: 0F B7 41 06        movzx       eax,word ptr [rcx+6]
  0000000140006D1F: 48 8D 0C 80        lea         rcx,[rax+rax*4]
  0000000140006D23: 4C 8D 0C CA        lea         r9,[rdx+rcx*8]
  0000000140006D27: 48 89 14 24        mov         qword ptr [rsp],rdx
  0000000140006D2B: 49 3B D1           cmp         rdx,r9
  0000000140006D2E: 74 18              je          0000000140006D48
  0000000140006D30: 8B 4A 0C           mov         ecx,dword ptr [rdx+0Ch]
  0000000140006D33: 4C 3B C1           cmp         r8,rcx
  0000000140006D36: 72 0A              jb          0000000140006D42
  0000000140006D38: 8B 42 08           mov         eax,dword ptr [rdx+8]
  0000000140006D3B: 03 C1              add         eax,ecx
  0000000140006D3D: 4C 3B C0           cmp         r8,rax
  0000000140006D40: 72 08              jb          0000000140006D4A
  0000000140006D42: 48 83 C2 28        add         rdx,28h
  0000000140006D46: EB DF              jmp         0000000140006D27
  0000000140006D48: 33 D2              xor         edx,edx
  0000000140006D4A: 48 85 D2           test        rdx,rdx
  0000000140006D4D: 75 04              jne         0000000140006D53
  0000000140006D4F: 32 C0              xor         al,al
  0000000140006D51: EB 14              jmp         0000000140006D67
  0000000140006D53: 83 7A 24 00        cmp         dword ptr [rdx+24h],0
  0000000140006D57: 7D 04              jge         0000000140006D5D
  0000000140006D59: 32 C0              xor         al,al
  0000000140006D5B: EB 0A              jmp         0000000140006D67
  0000000140006D5D: B0 01              mov         al,1
  0000000140006D5F: EB 06              jmp         0000000140006D67
  0000000140006D61: 32 C0              xor         al,al
  0000000140006D63: EB 02              jmp         0000000140006D67
  0000000140006D65: 32 C0              xor         al,al
  0000000140006D67: 48 83 C4 18        add         rsp,18h
  0000000140006D6B: C3                 ret
__scrt_release_startup_lock:
  0000000140006D6C: 40 53              push        rbx
  0000000140006D6E: 48 83 EC 20        sub         rsp,20h
  0000000140006D72: 8A D9              mov         bl,cl
  0000000140006D74: E8 13 06 00 00     call        __scrt_is_ucrt_dll_in_use
  0000000140006D79: 33 D2              xor         edx,edx
  0000000140006D7B: 85 C0              test        eax,eax
  0000000140006D7D: 74 0B              je          0000000140006D8A
  0000000140006D7F: 84 DB              test        bl,bl
  0000000140006D81: 75 07              jne         0000000140006D8A
  0000000140006D83: 48 87 15 C6 5B 00  xchg        rdx,qword ptr [__scrt_native_startup_lock]
                    00
  0000000140006D8A: 48 83 C4 20        add         rsp,20h
  0000000140006D8E: 5B                 pop         rbx
  0000000140006D8F: C3                 ret
__scrt_uninitialize_crt:
  0000000140006D90: 40 53              push        rbx
  0000000140006D92: 48 83 EC 20        sub         rsp,20h
  0000000140006D96: 80 3D BB 5B 00 00  cmp         byte ptr [14000C958h],0
                    00
  0000000140006D9D: 8A D9              mov         bl,cl
  0000000140006D9F: 74 04              je          0000000140006DA5
  0000000140006DA1: 84 D2              test        dl,dl
  0000000140006DA3: 75 0C              jne         0000000140006DB1
  0000000140006DA5: E8 36 01 00 00     call        __acrt_initialize
  0000000140006DAA: 8A CB              mov         cl,bl
  0000000140006DAC: E8 2F 01 00 00     call        __acrt_initialize
  0000000140006DB1: B0 01              mov         al,1
  0000000140006DB3: 48 83 C4 20        add         rsp,20h
  0000000140006DB7: 5B                 pop         rbx
  0000000140006DB8: C3                 ret
  0000000140006DB9: CC CC CC                                         ...
_onexit:
  0000000140006DBC: 40 53              push        rbx
  0000000140006DBE: 48 83 EC 20        sub         rsp,20h
  0000000140006DC2: 48 83 3D 96 5B 00  cmp         qword ptr [14000C960h],0FFFFFFFFFFFFFFFFh
                    00 FF
  0000000140006DCA: 48 8B D9           mov         rbx,rcx
  0000000140006DCD: 75 07              jne         0000000140006DD6
  0000000140006DCF: E8 70 10 00 00     call        _crt_atexit
  0000000140006DD4: EB 0F              jmp         0000000140006DE5
  0000000140006DD6: 48 8B D3           mov         rdx,rbx
  0000000140006DD9: 48 8D 0D 80 5B 00  lea         rcx,[14000C960h]
                    00
  0000000140006DE0: E8 59 10 00 00     call        _register_onexit_function
  0000000140006DE5: 33 D2              xor         edx,edx
  0000000140006DE7: 85 C0              test        eax,eax
  0000000140006DE9: 48 0F 44 D3        cmove       rdx,rbx
  0000000140006DED: 48 8B C2           mov         rax,rdx
  0000000140006DF0: 48 83 C4 20        add         rsp,20h
  0000000140006DF4: 5B                 pop         rbx
  0000000140006DF5: C3                 ret
  0000000140006DF6: CC CC                                            ..
atexit:
  0000000140006DF8: 48 83 EC 28        sub         rsp,28h
  0000000140006DFC: E8 BB FF FF FF     call        _onexit
  0000000140006E01: 48 F7 D8           neg         rax
  0000000140006E04: 1B C0              sbb         eax,eax
  0000000140006E06: F7 D8              neg         eax
  0000000140006E08: FF C8              dec         eax
  0000000140006E0A: 48 83 C4 28        add         rsp,28h
  0000000140006E0E: C3                 ret
  0000000140006E0F: CC                                               .
__security_init_cookie:
  0000000140006E10: 48 89 5C 24 20     mov         qword ptr [rsp+20h],rbx
  0000000140006E15: 55                 push        rbp
  0000000140006E16: 48 8B EC           mov         rbp,rsp
  0000000140006E19: 48 83 EC 20        sub         rsp,20h
  0000000140006E1D: 48 8B 05 04 52 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000140006E24: 48 BB 32 A2 DF 2D  mov         rbx,2B992DDFA232h
                    99 2B 00 00
  0000000140006E2E: 48 3B C3           cmp         rax,rbx
  0000000140006E31: 75 74              jne         0000000140006EA7
  0000000140006E33: 48 83 65 18 00     and         qword ptr [rbp+18h],0
  0000000140006E38: 48 8D 4D 18        lea         rcx,[rbp+18h]
  0000000140006E3C: FF 15 D6 21 00 00  call        qword ptr [__imp_GetSystemTimeAsFileTime]
  0000000140006E42: 48 8B 45 18        mov         rax,qword ptr [rbp+18h]
  0000000140006E46: 48 89 45 10        mov         qword ptr [rbp+10h],rax
  0000000140006E4A: FF 15 C0 21 00 00  call        qword ptr [__imp_GetCurrentThreadId]
  0000000140006E50: 8B C0              mov         eax,eax
  0000000140006E52: 48 31 45 10        xor         qword ptr [rbp+10h],rax
  0000000140006E56: FF 15 AC 21 00 00  call        qword ptr [__imp_GetCurrentProcessId]
  0000000140006E5C: 8B C0              mov         eax,eax
  0000000140006E5E: 48 8D 4D 20        lea         rcx,[rbp+20h]
  0000000140006E62: 48 31 45 10        xor         qword ptr [rbp+10h],rax
  0000000140006E66: FF 15 1C 22 00 00  call        qword ptr [__imp_QueryPerformanceCounter]
  0000000140006E6C: 8B 45 20           mov         eax,dword ptr [rbp+20h]
  0000000140006E6F: 48 8D 4D 10        lea         rcx,[rbp+10h]
  0000000140006E73: 48 C1 E0 20        shl         rax,20h
  0000000140006E77: 48 33 45 20        xor         rax,qword ptr [rbp+20h]
  0000000140006E7B: 48 33 45 10        xor         rax,qword ptr [rbp+10h]
  0000000140006E7F: 48 33 C1           xor         rax,rcx
  0000000140006E82: 48 B9 FF FF FF FF  mov         rcx,0FFFFFFFFFFFFh
                    FF FF 00 00
  0000000140006E8C: 48 23 C1           and         rax,rcx
  0000000140006E8F: 48 B9 33 A2 DF 2D  mov         rcx,2B992DDFA233h
                    99 2B 00 00
  0000000140006E99: 48 3B C3           cmp         rax,rbx
  0000000140006E9C: 48 0F 44 C1        cmove       rax,rcx
  0000000140006EA0: 48 89 05 81 51 00  mov         qword ptr [__security_cookie],rax
                    00
  0000000140006EA7: 48 8B 5C 24 48     mov         rbx,qword ptr [rsp+48h]
  0000000140006EAC: 48 F7 D0           not         rax
  0000000140006EAF: 48 89 05 6A 51 00  mov         qword ptr [__security_cookie_complement],rax
                    00
  0000000140006EB6: 48 83 C4 20        add         rsp,20h
  0000000140006EBA: 5D                 pop         rbp
  0000000140006EBB: C3                 ret
__scrt_exe_initialize_mta:
  0000000140006EBC: 33 C0              xor         eax,eax
  0000000140006EBE: C3                 ret
  0000000140006EBF: CC                                               .
_get_startup_argv_mode:
  0000000140006EC0: B8 01 00 00 00     mov         eax,1
  0000000140006EC5: C3                 ret
  0000000140006EC6: CC CC                                            ..
_get_startup_file_mode:
  0000000140006EC8: B8 00 40 00 00     mov         eax,4000h
  0000000140006ECD: C3                 ret
  0000000140006ECE: CC CC                                            ..
?__scrt_initialize_type_info@@YAXXZ:
  0000000140006ED0: 48 8D 0D B9 5A 00  lea         rcx,[?__type_info_root_node@@3U__type_info_node@@A]
                    00
  0000000140006ED7: 48 FF 25 42 21 00  jmp         qword ptr [__imp_InitializeSListHead]
                    00
  0000000140006EDE: CC CC                                            ..
__acrt_initialize:
  0000000140006EE0: B0 01              mov         al,1
  0000000140006EE2: C3                 ret
  0000000140006EE3: CC                                               .
_guard_check_icall_nop:
  0000000140006EE4: C2 00 00           ret         0
  0000000140006EE7: CC                                               .
__local_stdio_scanf_options:
  0000000140006EE8: 48 8D 05 B1 5A 00  lea         rax,[?_OptionsStorage@?1??__local_stdio_scanf_options@@9@4_KA]
                    00
  0000000140006EEF: C3                 ret
__scrt_initialize_default_local_stdio_options:
  0000000140006EF0: 48 83 EC 28        sub         rsp,28h
  0000000140006EF4: E8 F7 A2 FF FF     call        __local_stdio_printf_options
  0000000140006EF9: 48 83 08 24        or          qword ptr [rax],24h
  0000000140006EFD: E8 E6 FF FF FF     call        __local_stdio_scanf_options
  0000000140006F02: 48 83 08 02        or          qword ptr [rax],2
  0000000140006F06: 48 83 C4 28        add         rsp,28h
  0000000140006F0A: C3                 ret
  0000000140006F0B: CC                                               .
__scrt_is_user_matherr_present:
  0000000140006F0C: 33 C0              xor         eax,eax
  0000000140006F0E: 39 05 F0 50 00 00  cmp         dword ptr [__scrt_default_matherr],eax
  0000000140006F14: 0F 94 C0           sete        al
  0000000140006F17: C3                 ret
__scrt_get_dyn_tls_init_callback:
  0000000140006F18: 48 8D 05 F9 6C 00  lea         rax,[__dyn_tls_init_callback]
                    00
  0000000140006F1F: C3                 ret
__scrt_get_dyn_tls_dtor_callback:
  0000000140006F20: 48 8D 05 E9 6C 00  lea         rax,[__dyn_tls_dtor_callback]
                    00
  0000000140006F27: C3                 ret
__crt_debugger_hook:
  0000000140006F28: 83 25 79 5A 00 00  and         dword ptr [__scrt_debugger_hook_flag],0
                    00
  0000000140006F2F: C3                 ret
__scrt_fastfail:
  0000000140006F30: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140006F35: 55                 push        rbp
  0000000140006F36: 48 8D AC 24 40 FB  lea         rbp,[rsp-4C0h]
                    FF FF
  0000000140006F3E: 48 81 EC C0 05 00  sub         rsp,5C0h
                    00
  0000000140006F45: 8B D9              mov         ebx,ecx
  0000000140006F47: B9 17 00 00 00     mov         ecx,17h
  0000000140006F4C: E8 23 0F 00 00     call        IsProcessorFeaturePresent
  0000000140006F51: 85 C0              test        eax,eax
  0000000140006F53: 74 04              je          0000000140006F59
  0000000140006F55: 8B CB              mov         ecx,ebx
  0000000140006F57: CD 29              int         29h
  0000000140006F59: B9 03 00 00 00     mov         ecx,3
  0000000140006F5E: E8 C5 FF FF FF     call        __crt_debugger_hook
  0000000140006F63: 33 D2              xor         edx,edx
  0000000140006F65: 48 8D 4D F0        lea         rcx,[rbp-10h]
  0000000140006F69: 41 B8 D0 04 00 00  mov         r8d,4D0h
  0000000140006F6F: E8 3A 0E 00 00     call        memset
  0000000140006F74: 48 8D 4D F0        lea         rcx,[rbp-10h]
  0000000140006F78: FF 15 AA 20 00 00  call        qword ptr [__imp_RtlCaptureContext]
  0000000140006F7E: 48 8B 9D E8 00 00  mov         rbx,qword ptr [rbp+0E8h]
                    00
  0000000140006F85: 48 8D 95 D8 04 00  lea         rdx,[rbp+4D8h]
                    00
  0000000140006F8C: 48 8B CB           mov         rcx,rbx
  0000000140006F8F: 45 33 C0           xor         r8d,r8d
  0000000140006F92: FF 15 98 20 00 00  call        qword ptr [__imp_RtlLookupFunctionEntry]
  0000000140006F98: 48 85 C0           test        rax,rax
  0000000140006F9B: 74 3C              je          0000000140006FD9
  0000000140006F9D: 48 83 64 24 38 00  and         qword ptr [rsp+38h],0
  0000000140006FA3: 48 8D 8D E0 04 00  lea         rcx,[rbp+4E0h]
                    00
  0000000140006FAA: 48 8B 95 D8 04 00  mov         rdx,qword ptr [rbp+4D8h]
                    00
  0000000140006FB1: 4C 8B C8           mov         r9,rax
  0000000140006FB4: 48 89 4C 24 30     mov         qword ptr [rsp+30h],rcx
  0000000140006FB9: 4C 8B C3           mov         r8,rbx
  0000000140006FBC: 48 8D 8D E8 04 00  lea         rcx,[rbp+4E8h]
                    00
  0000000140006FC3: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000140006FC8: 48 8D 4D F0        lea         rcx,[rbp-10h]
  0000000140006FCC: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000140006FD1: 33 C9              xor         ecx,ecx
  0000000140006FD3: FF 15 5F 20 00 00  call        qword ptr [__imp_RtlVirtualUnwind]
  0000000140006FD9: 48 8B 85 C8 04 00  mov         rax,qword ptr [rbp+4C8h]
                    00
  0000000140006FE0: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140006FE5: 48 89 85 E8 00 00  mov         qword ptr [rbp+0E8h],rax
                    00
  0000000140006FEC: 33 D2              xor         edx,edx
  0000000140006FEE: 48 8D 85 C8 04 00  lea         rax,[rbp+4C8h]
                    00
  0000000140006FF5: 41 B8 98 00 00 00  mov         r8d,98h
  0000000140006FFB: 48 83 C0 08        add         rax,8
  0000000140006FFF: 48 89 85 88 00 00  mov         qword ptr [rbp+88h],rax
                    00
  0000000140007006: E8 A3 0D 00 00     call        memset
  000000014000700B: 48 8B 85 C8 04 00  mov         rax,qword ptr [rbp+4C8h]
                    00
  0000000140007012: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  0000000140007017: C7 44 24 50 15 00  mov         dword ptr [rsp+50h],40000015h
                    00 40
  000000014000701F: C7 44 24 54 01 00  mov         dword ptr [rsp+54h],1
                    00 00
  0000000140007027: FF 15 13 20 00 00  call        qword ptr [__imp_IsDebuggerPresent]
  000000014000702D: 83 F8 01           cmp         eax,1
  0000000140007030: 48 8D 44 24 50     lea         rax,[rsp+50h]
  0000000140007035: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  000000014000703A: 48 8D 45 F0        lea         rax,[rbp-10h]
  000000014000703E: 0F 94 C3           sete        bl
  0000000140007041: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000140007046: 33 C9              xor         ecx,ecx
  0000000140007048: FF 15 32 20 00 00  call        qword ptr [__imp_SetUnhandledExceptionFilter]
  000000014000704E: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000140007053: FF 15 F7 1F 00 00  call        qword ptr [__imp_UnhandledExceptionFilter]
  0000000140007059: 85 C0              test        eax,eax
  000000014000705B: 75 0C              jne         0000000140007069
  000000014000705D: 84 DB              test        bl,bl
  000000014000705F: 75 08              jne         0000000140007069
  0000000140007061: 8D 48 03           lea         ecx,[rax+3]
  0000000140007064: E8 BF FE FF FF     call        __crt_debugger_hook
  0000000140007069: 48 8B 9C 24 D0 05  mov         rbx,qword ptr [rsp+5D0h]
                    00 00
  0000000140007071: 48 81 C4 C0 05 00  add         rsp,5C0h
                    00
  0000000140007078: 5D                 pop         rbp
  0000000140007079: C3                 ret
  000000014000707A: CC CC                                            ..
__scrt_initialize_mta:
  000000014000707C: E9 3B FE FF FF     jmp         __scrt_exe_initialize_mta
  0000000140007081: CC CC CC                                         ...
__scrt_is_managed_app:
  0000000140007084: 48 83 EC 28        sub         rsp,28h
  0000000140007088: 33 C9              xor         ecx,ecx
  000000014000708A: FF 15 E0 1F 00 00  call        qword ptr [__imp_GetModuleHandleW]
  0000000140007090: 48 85 C0           test        rax,rax
  0000000140007093: 74 3A              je          00000001400070CF
  0000000140007095: B9 4D 5A 00 00     mov         ecx,5A4Dh
  000000014000709A: 66 39 08           cmp         word ptr [rax],cx
  000000014000709D: 75 30              jne         00000001400070CF
  000000014000709F: 48 63 48 3C        movsxd      rcx,dword ptr [rax+3Ch]
  00000001400070A3: 48 03 C8           add         rcx,rax
  00000001400070A6: 81 39 50 45 00 00  cmp         dword ptr [rcx],4550h
  00000001400070AC: 75 21              jne         00000001400070CF
  00000001400070AE: B8 0B 02 00 00     mov         eax,20Bh
  00000001400070B3: 66 39 41 18        cmp         word ptr [rcx+18h],ax
  00000001400070B7: 75 16              jne         00000001400070CF
  00000001400070B9: 83 B9 84 00 00 00  cmp         dword ptr [rcx+84h],0Eh
                    0E
  00000001400070C0: 76 0D              jbe         00000001400070CF
  00000001400070C2: 83 B9 F8 00 00 00  cmp         dword ptr [rcx+0F8h],0
                    00
  00000001400070C9: 74 04              je          00000001400070CF
  00000001400070CB: B0 01              mov         al,1
  00000001400070CD: EB 02              jmp         00000001400070D1
  00000001400070CF: 32 C0              xor         al,al
  00000001400070D1: 48 83 C4 28        add         rsp,28h
  00000001400070D5: C3                 ret
  00000001400070D6: CC CC                                            ..
__scrt_set_unhandled_exception_filter:
  00000001400070D8: 48 8D 0D 09 00 00  lea         rcx,[__scrt_unhandled_exception_filter]
                    00
  00000001400070DF: 48 FF 25 9A 1F 00  jmp         qword ptr [__imp_SetUnhandledExceptionFilter]
                    00
  00000001400070E6: CC CC                                            ..
__scrt_unhandled_exception_filter:
  00000001400070E8: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  00000001400070ED: 57                 push        rdi
  00000001400070EE: 48 83 EC 20        sub         rsp,20h
  00000001400070F2: 48 8B 19           mov         rbx,qword ptr [rcx]
  00000001400070F5: 48 8B F9           mov         rdi,rcx
  00000001400070F8: 81 3B 63 73 6D E0  cmp         dword ptr [rbx],0E06D7363h
  00000001400070FE: 75 1C              jne         000000014000711C
  0000000140007100: 83 7B 18 04        cmp         dword ptr [rbx+18h],4
  0000000140007104: 75 16              jne         000000014000711C
  0000000140007106: 8B 53 20           mov         edx,dword ptr [rbx+20h]
  0000000140007109: 8D 82 E0 FA 6C E6  lea         eax,[rdx-19930520h]
  000000014000710F: 83 F8 02           cmp         eax,2
  0000000140007112: 76 15              jbe         0000000140007129
  0000000140007114: 81 FA 00 40 99 01  cmp         edx,1994000h
  000000014000711A: 74 0D              je          0000000140007129
  000000014000711C: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140007121: 33 C0              xor         eax,eax
  0000000140007123: 48 83 C4 20        add         rsp,20h
  0000000140007127: 5F                 pop         rdi
  0000000140007128: C3                 ret
  0000000140007129: E8 74 0C 00 00     call        __current_exception
  000000014000712E: 48 89 18           mov         qword ptr [rax],rbx
  0000000140007131: 48 8B 5F 08        mov         rbx,qword ptr [rdi+8]
  0000000140007135: E8 6E 0C 00 00     call        __current_exception_context
  000000014000713A: 48 89 18           mov         qword ptr [rax],rbx
  000000014000713D: E8 08 0D 00 00     call        terminate
  0000000140007142: CC                 int         3
  0000000140007143: CC                                               .
_RTC_Initialize:
  0000000140007144: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140007149: 57                 push        rdi
  000000014000714A: 48 83 EC 20        sub         rsp,20h
  000000014000714E: 48 8D 1D 8B 3E 00  lea         rbx,[__rtc_izz]
                    00
  0000000140007155: 48 8D 3D 84 3E 00  lea         rdi,[__rtc_izz]
                    00
  000000014000715C: EB 12              jmp         0000000140007170
  000000014000715E: 48 8B 03           mov         rax,qword ptr [rbx]
  0000000140007161: 48 85 C0           test        rax,rax
  0000000140007164: 74 06              je          000000014000716C
  0000000140007166: FF 15 CC 20 00 00  call        qword ptr [__guard_dispatch_icall_fptr]
  000000014000716C: 48 83 C3 08        add         rbx,8
  0000000140007170: 48 3B DF           cmp         rbx,rdi
  0000000140007173: 72 E9              jb          000000014000715E
  0000000140007175: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  000000014000717A: 48 83 C4 20        add         rsp,20h
  000000014000717E: 5F                 pop         rdi
  000000014000717F: C3                 ret
_RTC_Terminate:
  0000000140007180: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140007185: 57                 push        rdi
  0000000140007186: 48 83 EC 20        sub         rsp,20h
  000000014000718A: 48 8D 1D 5F 3E 00  lea         rbx,[__rtc_tzz]
                    00
  0000000140007191: 48 8D 3D 58 3E 00  lea         rdi,[__rtc_tzz]
                    00
  0000000140007198: EB 12              jmp         00000001400071AC
  000000014000719A: 48 8B 03           mov         rax,qword ptr [rbx]
  000000014000719D: 48 85 C0           test        rax,rax
  00000001400071A0: 74 06              je          00000001400071A8
  00000001400071A2: FF 15 90 20 00 00  call        qword ptr [__guard_dispatch_icall_fptr]
  00000001400071A8: 48 83 C3 08        add         rbx,8
  00000001400071AC: 48 3B DF           cmp         rbx,rdi
  00000001400071AF: 72 E9              jb          000000014000719A
  00000001400071B1: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  00000001400071B6: 48 83 C4 20        add         rsp,20h
  00000001400071BA: 5F                 pop         rdi
  00000001400071BB: C3                 ret
??_Etype_info@@UEAAPEAXI@Z:
  00000001400071BC: 40 53              push        rbx
  00000001400071BE: 48 83 EC 20        sub         rsp,20h
  00000001400071C2: 48 8D 05 AF 21 00  lea         rax,[??_7type_info@@6B@]
                    00
  00000001400071C9: 48 8B D9           mov         rbx,rcx
  00000001400071CC: 48 89 01           mov         qword ptr [rcx],rax
  00000001400071CF: F6 C2 01           test        dl,1
  00000001400071D2: 74 0A              je          00000001400071DE
  00000001400071D4: BA 18 00 00 00     mov         edx,18h
  00000001400071D9: E8 46 F5 FF FF     call        ??3@YAXPEAX_K@Z
  00000001400071DE: 48 8B C3           mov         rax,rbx
  00000001400071E1: 48 83 C4 20        add         rsp,20h
  00000001400071E5: 5B                 pop         rbx
  00000001400071E6: C3                 ret
  00000001400071E7: CC                                               .
__isa_available_init:
  00000001400071E8: 48 89 5C 24 10     mov         qword ptr [rsp+10h],rbx
  00000001400071ED: 48 89 74 24 18     mov         qword ptr [rsp+18h],rsi
  00000001400071F2: 57                 push        rdi
  00000001400071F3: 48 83 EC 10        sub         rsp,10h
  00000001400071F7: 33 C0              xor         eax,eax
  00000001400071F9: 33 C9              xor         ecx,ecx
  00000001400071FB: 0F A2              cpuid
  00000001400071FD: 44 8B C1           mov         r8d,ecx
  0000000140007200: 45 33 DB           xor         r11d,r11d
  0000000140007203: 44 8B CB           mov         r9d,ebx
  0000000140007206: 41 81 F0 6E 74 65  xor         r8d,6C65746Eh
                    6C
  000000014000720D: 41 81 F1 47 65 6E  xor         r9d,756E6547h
                    75
  0000000140007214: 44 8B D2           mov         r10d,edx
  0000000140007217: 8B F0              mov         esi,eax
  0000000140007219: 33 C9              xor         ecx,ecx
  000000014000721B: 41 8D 43 01        lea         eax,[r11+1]
  000000014000721F: 45 0B C8           or          r9d,r8d
  0000000140007222: 0F A2              cpuid
  0000000140007224: 41 81 F2 69 6E 65  xor         r10d,49656E69h
                    49
  000000014000722B: 89 04 24           mov         dword ptr [rsp],eax
  000000014000722E: 45 0B CA           or          r9d,r10d
  0000000140007231: 89 5C 24 04        mov         dword ptr [rsp+4],ebx
  0000000140007235: 8B F9              mov         edi,ecx
  0000000140007237: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  000000014000723B: 89 54 24 0C        mov         dword ptr [rsp+0Ch],edx
  000000014000723F: 75 50              jne         0000000140007291
  0000000140007241: 48 83 0D C7 4D 00  or          qword ptr [__memcpy_nt_iters],0FFFFFFFFFFFFFFFFh
                    00 FF
  0000000140007249: 25 F0 3F FF 0F     and         eax,0FFF3FF0h
  000000014000724E: 3D C0 06 01 00     cmp         eax,106C0h
  0000000140007253: 74 28              je          000000014000727D
  0000000140007255: 3D 60 06 02 00     cmp         eax,20660h
  000000014000725A: 74 21              je          000000014000727D
  000000014000725C: 3D 70 06 02 00     cmp         eax,20670h
  0000000140007261: 74 1A              je          000000014000727D
  0000000140007263: 05 B0 F9 FC FF     add         eax,0FFFCF9B0h
  0000000140007268: 83 F8 20           cmp         eax,20h
  000000014000726B: 77 24              ja          0000000140007291
  000000014000726D: 48 B9 01 00 01 00  mov         rcx,100010001h
                    01 00 00 00
  0000000140007277: 48 0F A3 C1        bt          rcx,rax
  000000014000727B: 73 14              jae         0000000140007291
  000000014000727D: 44 8B 05 28 57 00  mov         r8d,dword ptr [__favor]
                    00
  0000000140007284: 41 83 C8 01        or          r8d,1
  0000000140007288: 44 89 05 1D 57 00  mov         dword ptr [__favor],r8d
                    00
  000000014000728F: EB 07              jmp         0000000140007298
  0000000140007291: 44 8B 05 14 57 00  mov         r8d,dword ptr [__favor]
                    00
  0000000140007298: B8 07 00 00 00     mov         eax,7
  000000014000729D: 44 8D 48 FB        lea         r9d,[rax-5]
  00000001400072A1: 3B F0              cmp         esi,eax
  00000001400072A3: 7C 26              jl          00000001400072CB
  00000001400072A5: 33 C9              xor         ecx,ecx
  00000001400072A7: 0F A2              cpuid
  00000001400072A9: 89 04 24           mov         dword ptr [rsp],eax
  00000001400072AC: 44 8B DB           mov         r11d,ebx
  00000001400072AF: 89 5C 24 04        mov         dword ptr [rsp+4],ebx
  00000001400072B3: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  00000001400072B7: 89 54 24 0C        mov         dword ptr [rsp+0Ch],edx
  00000001400072BB: 0F BA E3 09        bt          ebx,9
  00000001400072BF: 73 0A              jae         00000001400072CB
  00000001400072C1: 45 0B C1           or          r8d,r9d
  00000001400072C4: 44 89 05 E1 56 00  mov         dword ptr [__favor],r8d
                    00
  00000001400072CB: C7 05 33 4D 00 00  mov         dword ptr [__isa_available],1
                    01 00 00 00
  00000001400072D5: 44 89 0D 30 4D 00  mov         dword ptr [__isa_enabled],r9d
                    00
  00000001400072DC: 0F BA E7 14        bt          edi,14h
  00000001400072E0: 0F 83 91 00 00 00  jae         0000000140007377
  00000001400072E6: 44 89 0D 1B 4D 00  mov         dword ptr [__isa_available],r9d
                    00
  00000001400072ED: BB 06 00 00 00     mov         ebx,6
  00000001400072F2: 89 1D 14 4D 00 00  mov         dword ptr [__isa_enabled],ebx
  00000001400072F8: 0F BA E7 1B        bt          edi,1Bh
  00000001400072FC: 73 79              jae         0000000140007377
  00000001400072FE: 0F BA E7 1C        bt          edi,1Ch
  0000000140007302: 73 73              jae         0000000140007377
  0000000140007304: 33 C9              xor         ecx,ecx
  0000000140007306: 0F 01 D0           xgetbv
  0000000140007309: 48 C1 E2 20        shl         rdx,20h
  000000014000730D: 48 0B D0           or          rdx,rax
  0000000140007310: 48 89 54 24 20     mov         qword ptr [rsp+20h],rdx
  0000000140007315: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000014000731A: 22 C3              and         al,bl
  000000014000731C: 3A C3              cmp         al,bl
  000000014000731E: 75 57              jne         0000000140007377
  0000000140007320: 8B 05 E6 4C 00 00  mov         eax,dword ptr [__isa_enabled]
  0000000140007326: 83 C8 08           or          eax,8
  0000000140007329: C7 05 D5 4C 00 00  mov         dword ptr [__isa_available],3
                    03 00 00 00
  0000000140007333: 89 05 D3 4C 00 00  mov         dword ptr [__isa_enabled],eax
  0000000140007339: 41 F6 C3 20        test        r11b,20h
  000000014000733D: 74 38              je          0000000140007377
  000000014000733F: 83 C8 20           or          eax,20h
  0000000140007342: C7 05 BC 4C 00 00  mov         dword ptr [__isa_available],5
                    05 00 00 00
  000000014000734C: 89 05 BA 4C 00 00  mov         dword ptr [__isa_enabled],eax
  0000000140007352: B8 00 00 03 D0     mov         eax,0D0030000h
  0000000140007357: 44 23 D8           and         r11d,eax
  000000014000735A: 44 3B D8           cmp         r11d,eax
  000000014000735D: 75 18              jne         0000000140007377
  000000014000735F: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000140007364: 24 E0              and         al,0E0h
  0000000140007366: 3C E0              cmp         al,0E0h
  0000000140007368: 75 0D              jne         0000000140007377
  000000014000736A: 83 0D 9B 4C 00 00  or          dword ptr [__isa_enabled],40h
                    40
  0000000140007371: 89 1D 91 4C 00 00  mov         dword ptr [__isa_available],ebx
  0000000140007377: 48 8B 5C 24 28     mov         rbx,qword ptr [rsp+28h]
  000000014000737C: 33 C0              xor         eax,eax
  000000014000737E: 48 8B 74 24 30     mov         rsi,qword ptr [rsp+30h]
  0000000140007383: 48 83 C4 10        add         rsp,10h
  0000000140007387: 5F                 pop         rdi
  0000000140007388: C3                 ret
  0000000140007389: CC CC CC                                         ...
__scrt_is_ucrt_dll_in_use:
  000000014000738C: 33 C0              xor         eax,eax
  000000014000738E: 39 05 EC 54 00 00  cmp         dword ptr [__scrt_ucrt_dll_is_in_use],eax
  0000000140007394: 0F 95 C0           setne       al
  0000000140007397: C3                 ret
  0000000140007398: CC CC CC CC CC CC CC CC                          ........
__intel_memset:
  00000001400073A0: 49 83 F8 01        cmp         r8,1
  00000001400073A4: 48 8B C1           mov         rax,rcx
  00000001400073A7: 75 03              jne         00000001400073AC
  00000001400073A9: 88 11              mov         byte ptr [rcx],dl
  00000001400073AB: C3                 ret
  00000001400073AC: 49 B9 01 01 01 01  mov         r9,101010101010101h
                    01 01 01 01
  00000001400073B6: 7C 2F              jl          00000001400073E7
  00000001400073B8: 48 81 E2 FF 00 00  and         rdx,0FFh
                    00
  00000001400073BF: 49 0F AF D1        imul        rdx,r9
  00000001400073C3: 48 F7 C1 07 00 00  test        rcx,7
                    00
  00000001400073CA: 75 24              jne         00000001400073F0
  00000001400073CC: 4C 8D 1D 6D 8C 00  lea         r11,[140010040h]
                    00
  00000001400073D3: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  00000001400073DA: 0F 8D A7 02 00 00  jge         0000000140007687
  00000001400073E0: 49 03 C8           add         rcx,r8
  00000001400073E3: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  00000001400073E7: C3                 ret
  00000001400073E8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  00000001400073F0: 49 83 F8 08        cmp         r8,8
  00000001400073F4: 7E D6              jle         00000001400073CC
  00000001400073F6: 4C 8D 1D 03 8C 00  lea         r11,[140010000h]
                    00
  00000001400073FD: 4C 8B C9           mov         r9,rcx
  0000000140007400: 49 83 E1 07        and         r9,7
  0000000140007404: 49 F7 D9           neg         r9
  0000000140007407: 49 83 C1 08        add         r9,8
  000000014000740B: 49 03 C9           add         rcx,r9
  000000014000740E: 4D 2B C1           sub         r8,r9
  0000000140007411: 43 FF 24 CB        jmp         qword ptr [r11+r9*8]
  0000000140007415: 66 66 66 0F 1F 84  nop         word ptr [rax+rax]
                    00 00 00 00 00
  0000000140007420: 89 51 FC           mov         dword ptr [rcx-4],edx
  0000000140007423: EB A7              jmp         00000001400073CC
  0000000140007425: 89 51 FB           mov         dword ptr [rcx-5],edx
  0000000140007428: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000742B: EB 9F              jmp         00000001400073CC
  000000014000742D: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140007430: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140007434: EB 96              jmp         00000001400073CC
  0000000140007436: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140007439: 66 89 51 FD        mov         word ptr [rcx-3],dx
  000000014000743D: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007440: EB 8A              jmp         00000001400073CC
  0000000140007442: 48 89 91 7F FF FF  mov         qword ptr [rcx-81h],rdx
                    FF
  0000000140007449: 48 89 51 87        mov         qword ptr [rcx-79h],rdx
  000000014000744D: 48 89 51 8F        mov         qword ptr [rcx-71h],rdx
  0000000140007451: 48 89 51 97        mov         qword ptr [rcx-69h],rdx
  0000000140007455: 48 89 51 9F        mov         qword ptr [rcx-61h],rdx
  0000000140007459: 48 89 51 A7        mov         qword ptr [rcx-59h],rdx
  000000014000745D: 48 89 51 AF        mov         qword ptr [rcx-51h],rdx
  0000000140007461: 48 89 51 B7        mov         qword ptr [rcx-49h],rdx
  0000000140007465: 48 89 51 BF        mov         qword ptr [rcx-41h],rdx
  0000000140007469: 48 89 51 C7        mov         qword ptr [rcx-39h],rdx
  000000014000746D: 48 89 51 CF        mov         qword ptr [rcx-31h],rdx
  0000000140007471: 48 89 51 D7        mov         qword ptr [rcx-29h],rdx
  0000000140007475: 48 89 51 DF        mov         qword ptr [rcx-21h],rdx
  0000000140007479: 48 89 51 E7        mov         qword ptr [rcx-19h],rdx
  000000014000747D: 48 89 51 EF        mov         qword ptr [rcx-11h],rdx
  0000000140007481: 48 89 51 F7        mov         qword ptr [rcx-9],rdx
  0000000140007485: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007488: C3                 ret
  0000000140007489: 48 89 51 80        mov         qword ptr [rcx-80h],rdx
  000000014000748D: 48 89 51 88        mov         qword ptr [rcx-78h],rdx
  0000000140007491: 48 89 51 90        mov         qword ptr [rcx-70h],rdx
  0000000140007495: 48 89 51 98        mov         qword ptr [rcx-68h],rdx
  0000000140007499: 48 89 51 A0        mov         qword ptr [rcx-60h],rdx
  000000014000749D: 48 89 51 A8        mov         qword ptr [rcx-58h],rdx
  00000001400074A1: 48 89 51 B0        mov         qword ptr [rcx-50h],rdx
  00000001400074A5: 48 89 51 B8        mov         qword ptr [rcx-48h],rdx
  00000001400074A9: 48 89 51 C0        mov         qword ptr [rcx-40h],rdx
  00000001400074AD: 48 89 51 C8        mov         qword ptr [rcx-38h],rdx
  00000001400074B1: 48 89 51 D0        mov         qword ptr [rcx-30h],rdx
  00000001400074B5: 48 89 51 D8        mov         qword ptr [rcx-28h],rdx
  00000001400074B9: 48 89 51 E0        mov         qword ptr [rcx-20h],rdx
  00000001400074BD: 48 89 51 E8        mov         qword ptr [rcx-18h],rdx
  00000001400074C1: 48 89 51 F0        mov         qword ptr [rcx-10h],rdx
  00000001400074C5: 48 89 51 F8        mov         qword ptr [rcx-8],rdx
  00000001400074C9: C3                 ret
  00000001400074CA: 48 89 91 7E FF FF  mov         qword ptr [rcx-82h],rdx
                    FF
  00000001400074D1: 48 89 51 86        mov         qword ptr [rcx-7Ah],rdx
  00000001400074D5: 48 89 51 8E        mov         qword ptr [rcx-72h],rdx
  00000001400074D9: 48 89 51 96        mov         qword ptr [rcx-6Ah],rdx
  00000001400074DD: 48 89 51 9E        mov         qword ptr [rcx-62h],rdx
  00000001400074E1: 48 89 51 A6        mov         qword ptr [rcx-5Ah],rdx
  00000001400074E5: 48 89 51 AE        mov         qword ptr [rcx-52h],rdx
  00000001400074E9: 48 89 51 B6        mov         qword ptr [rcx-4Ah],rdx
  00000001400074ED: 48 89 51 BE        mov         qword ptr [rcx-42h],rdx
  00000001400074F1: 48 89 51 C6        mov         qword ptr [rcx-3Ah],rdx
  00000001400074F5: 48 89 51 CE        mov         qword ptr [rcx-32h],rdx
  00000001400074F9: 48 89 51 D6        mov         qword ptr [rcx-2Ah],rdx
  00000001400074FD: 48 89 51 DE        mov         qword ptr [rcx-22h],rdx
  0000000140007501: 48 89 51 E6        mov         qword ptr [rcx-1Ah],rdx
  0000000140007505: 48 89 51 EE        mov         qword ptr [rcx-12h],rdx
  0000000140007509: 48 89 51 F6        mov         qword ptr [rcx-0Ah],rdx
  000000014000750D: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140007511: C3                 ret
  0000000140007512: 48 89 91 7D FF FF  mov         qword ptr [rcx-83h],rdx
                    FF
  0000000140007519: 48 89 51 85        mov         qword ptr [rcx-7Bh],rdx
  000000014000751D: 48 89 51 8D        mov         qword ptr [rcx-73h],rdx
  0000000140007521: 48 89 51 95        mov         qword ptr [rcx-6Bh],rdx
  0000000140007525: 48 89 51 9D        mov         qword ptr [rcx-63h],rdx
  0000000140007529: 48 89 51 A5        mov         qword ptr [rcx-5Bh],rdx
  000000014000752D: 48 89 51 AD        mov         qword ptr [rcx-53h],rdx
  0000000140007531: 48 89 51 B5        mov         qword ptr [rcx-4Bh],rdx
  0000000140007535: 48 89 51 BD        mov         qword ptr [rcx-43h],rdx
  0000000140007539: 48 89 51 C5        mov         qword ptr [rcx-3Bh],rdx
  000000014000753D: 48 89 51 CD        mov         qword ptr [rcx-33h],rdx
  0000000140007541: 48 89 51 D5        mov         qword ptr [rcx-2Bh],rdx
  0000000140007545: 48 89 51 DD        mov         qword ptr [rcx-23h],rdx
  0000000140007549: 48 89 51 E5        mov         qword ptr [rcx-1Bh],rdx
  000000014000754D: 48 89 51 ED        mov         qword ptr [rcx-13h],rdx
  0000000140007551: 48 89 51 F5        mov         qword ptr [rcx-0Bh],rdx
  0000000140007555: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140007559: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000755C: C3                 ret
  000000014000755D: 48 89 91 7C FF FF  mov         qword ptr [rcx-84h],rdx
                    FF
  0000000140007564: 48 89 51 84        mov         qword ptr [rcx-7Ch],rdx
  0000000140007568: 48 89 51 8C        mov         qword ptr [rcx-74h],rdx
  000000014000756C: 48 89 51 94        mov         qword ptr [rcx-6Ch],rdx
  0000000140007570: 48 89 51 9C        mov         qword ptr [rcx-64h],rdx
  0000000140007574: 48 89 51 A4        mov         qword ptr [rcx-5Ch],rdx
  0000000140007578: 48 89 51 AC        mov         qword ptr [rcx-54h],rdx
  000000014000757C: 48 89 51 B4        mov         qword ptr [rcx-4Ch],rdx
  0000000140007580: 48 89 51 BC        mov         qword ptr [rcx-44h],rdx
  0000000140007584: 48 89 51 C4        mov         qword ptr [rcx-3Ch],rdx
  0000000140007588: 48 89 51 CC        mov         qword ptr [rcx-34h],rdx
  000000014000758C: 48 89 51 D4        mov         qword ptr [rcx-2Ch],rdx
  0000000140007590: 48 89 51 DC        mov         qword ptr [rcx-24h],rdx
  0000000140007594: 48 89 51 E4        mov         qword ptr [rcx-1Ch],rdx
  0000000140007598: 48 89 51 EC        mov         qword ptr [rcx-14h],rdx
  000000014000759C: 48 89 51 F4        mov         qword ptr [rcx-0Ch],rdx
  00000001400075A0: 89 51 FC           mov         dword ptr [rcx-4],edx
  00000001400075A3: C3                 ret
  00000001400075A4: 48 89 91 7C FF FF  mov         qword ptr [rcx-84h],rdx
                    FF
  00000001400075AB: 48 89 51 83        mov         qword ptr [rcx-7Dh],rdx
  00000001400075AF: 48 89 51 8B        mov         qword ptr [rcx-75h],rdx
  00000001400075B3: 48 89 51 93        mov         qword ptr [rcx-6Dh],rdx
  00000001400075B7: 48 89 51 9B        mov         qword ptr [rcx-65h],rdx
  00000001400075BB: 48 89 51 A3        mov         qword ptr [rcx-5Dh],rdx
  00000001400075BF: 48 89 51 AB        mov         qword ptr [rcx-55h],rdx
  00000001400075C3: 48 89 51 B3        mov         qword ptr [rcx-4Dh],rdx
  00000001400075C7: 48 89 51 BB        mov         qword ptr [rcx-45h],rdx
  00000001400075CB: 48 89 51 C3        mov         qword ptr [rcx-3Dh],rdx
  00000001400075CF: 48 89 51 CB        mov         qword ptr [rcx-35h],rdx
  00000001400075D3: 48 89 51 D3        mov         qword ptr [rcx-2Dh],rdx
  00000001400075D7: 48 89 51 DB        mov         qword ptr [rcx-25h],rdx
  00000001400075DB: 48 89 51 E3        mov         qword ptr [rcx-1Dh],rdx
  00000001400075DF: 48 89 51 EB        mov         qword ptr [rcx-15h],rdx
  00000001400075E3: 48 89 51 F3        mov         qword ptr [rcx-0Dh],rdx
  00000001400075E7: 89 51 FB           mov         dword ptr [rcx-5],edx
  00000001400075EA: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400075ED: C3                 ret
  00000001400075EE: 48 89 91 7A FF FF  mov         qword ptr [rcx-86h],rdx
                    FF
  00000001400075F5: 48 89 51 82        mov         qword ptr [rcx-7Eh],rdx
  00000001400075F9: 48 89 51 8A        mov         qword ptr [rcx-76h],rdx
  00000001400075FD: 48 89 51 92        mov         qword ptr [rcx-6Eh],rdx
  0000000140007601: 48 89 51 9A        mov         qword ptr [rcx-66h],rdx
  0000000140007605: 48 89 51 A2        mov         qword ptr [rcx-5Eh],rdx
  0000000140007609: 48 89 51 AA        mov         qword ptr [rcx-56h],rdx
  000000014000760D: 48 89 51 B2        mov         qword ptr [rcx-4Eh],rdx
  0000000140007611: 48 89 51 BA        mov         qword ptr [rcx-46h],rdx
  0000000140007615: 48 89 51 C2        mov         qword ptr [rcx-3Eh],rdx
  0000000140007619: 48 89 51 CA        mov         qword ptr [rcx-36h],rdx
  000000014000761D: 48 89 51 D2        mov         qword ptr [rcx-2Eh],rdx
  0000000140007621: 48 89 51 DA        mov         qword ptr [rcx-26h],rdx
  0000000140007625: 48 89 51 E2        mov         qword ptr [rcx-1Eh],rdx
  0000000140007629: 48 89 51 EA        mov         qword ptr [rcx-16h],rdx
  000000014000762D: 48 89 51 F2        mov         qword ptr [rcx-0Eh],rdx
  0000000140007631: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140007634: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140007638: C3                 ret
  0000000140007639: 48 89 91 79 FF FF  mov         qword ptr [rcx-87h],rdx
                    FF
  0000000140007640: 48 89 51 81        mov         qword ptr [rcx-7Fh],rdx
  0000000140007644: 48 89 51 89        mov         qword ptr [rcx-77h],rdx
  0000000140007648: 48 89 51 91        mov         qword ptr [rcx-6Fh],rdx
  000000014000764C: 48 89 51 99        mov         qword ptr [rcx-67h],rdx
  0000000140007650: 48 89 51 A1        mov         qword ptr [rcx-5Fh],rdx
  0000000140007654: 48 89 51 A9        mov         qword ptr [rcx-57h],rdx
  0000000140007658: 48 89 51 B1        mov         qword ptr [rcx-4Fh],rdx
  000000014000765C: 48 89 51 B9        mov         qword ptr [rcx-47h],rdx
  0000000140007660: 48 89 51 C1        mov         qword ptr [rcx-3Fh],rdx
  0000000140007664: 48 89 51 C9        mov         qword ptr [rcx-37h],rdx
  0000000140007668: 48 89 51 D1        mov         qword ptr [rcx-2Fh],rdx
  000000014000766C: 48 89 51 D9        mov         qword ptr [rcx-27h],rdx
  0000000140007670: 48 89 51 E1        mov         qword ptr [rcx-1Fh],rdx
  0000000140007674: 48 89 51 E9        mov         qword ptr [rcx-17h],rdx
  0000000140007678: 48 89 51 F1        mov         qword ptr [rcx-0Fh],rdx
  000000014000767C: 89 51 F9           mov         dword ptr [rcx-7],edx
  000000014000767F: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140007683: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007686: C3                 ret
  0000000140007687: 83 3D FE 5F 00 00  cmp         dword ptr [__libirc_mem_ops_method],2
                    02
  000000014000768E: 0F 8C 4C 06 00 00  jl          0000000140007CE0
  0000000140007694: 66 48 0F 6E C2     movq        xmm0,rdx
  0000000140007699: 66 0F 6C C0        punpcklqdq  xmm0,xmm0
  000000014000769D: 4C 8D 1D DC 8D 00  lea         r11,[140010480h]
                    00
  00000001400076A4: 49 C7 C2 10 00 00  mov         r10,10h
                    00
  00000001400076AB: 4C 8B C9           mov         r9,rcx
  00000001400076AE: 49 83 E1 0F        and         r9,0Fh
  00000001400076B2: 4D 2B D1           sub         r10,r9
  00000001400076B5: 49 83 E2 0F        and         r10,0Fh
  00000001400076B9: 49 03 CA           add         rcx,r10
  00000001400076BC: 4D 2B C2           sub         r8,r10
  00000001400076BF: 43 FF 24 D3        jmp         qword ptr [r11+r10*8]
  00000001400076C3: EB 56              jmp         000000014000771B
  00000001400076C5: 48 89 51 F8        mov         qword ptr [rcx-8],rdx
  00000001400076C9: EB 50              jmp         000000014000771B
  00000001400076CB: 48 89 51 F7        mov         qword ptr [rcx-9],rdx
  00000001400076CF: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400076D2: EB 47              jmp         000000014000771B
  00000001400076D4: 48 89 51 F6        mov         qword ptr [rcx-0Ah],rdx
  00000001400076D8: 66 89 51 FE        mov         word ptr [rcx-2],dx
  00000001400076DC: EB 3D              jmp         000000014000771B
  00000001400076DE: 48 89 51 F5        mov         qword ptr [rcx-0Bh],rdx
  00000001400076E2: 66 89 51 FD        mov         word ptr [rcx-3],dx
  00000001400076E6: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400076E9: EB 30              jmp         000000014000771B
  00000001400076EB: 48 89 51 F4        mov         qword ptr [rcx-0Ch],rdx
  00000001400076EF: 89 51 FC           mov         dword ptr [rcx-4],edx
  00000001400076F2: EB 27              jmp         000000014000771B
  00000001400076F4: 48 89 51 F3        mov         qword ptr [rcx-0Dh],rdx
  00000001400076F8: 89 51 FB           mov         dword ptr [rcx-5],edx
  00000001400076FB: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400076FE: EB 1B              jmp         000000014000771B
  0000000140007700: 48 89 51 F2        mov         qword ptr [rcx-0Eh],rdx
  0000000140007704: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140007707: 66 89 51 FE        mov         word ptr [rcx-2],dx
  000000014000770B: EB 0E              jmp         000000014000771B
  000000014000770D: 48 89 51 F1        mov         qword ptr [rcx-0Fh],rdx
  0000000140007711: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140007714: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140007718: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000771B: 4C 8D 1D EE 8D 00  lea         r11,[140010510h]
                    00
  0000000140007722: 49 81 F8 B0 00 00  cmp         r8,0B0h
                    00
  0000000140007729: 0F 8D F4 04 00 00  jge         0000000140007C23
  000000014000772F: 49 03 C8           add         rcx,r8
  0000000140007732: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140007736: 89 11              mov         dword ptr [rcx],edx
  0000000140007738: 48 83 C1 04        add         rcx,4
  000000014000773C: 49 83 E8 04        sub         r8,4
  0000000140007740: 48 F7 C1 0F 00 00  test        rcx,0Fh
                    00
  0000000140007747: 74 D2              je          000000014000771B
  0000000140007749: 89 11              mov         dword ptr [rcx],edx
  000000014000774B: 48 83 C1 04        add         rcx,4
  000000014000774F: 49 83 E8 04        sub         r8,4
  0000000140007753: 48 F7 C1 0F 00 00  test        rcx,0Fh
                    00
  000000014000775A: 74 BF              je          000000014000771B
  000000014000775C: 89 11              mov         dword ptr [rcx],edx
  000000014000775E: 48 83 C1 04        add         rcx,4
  0000000140007762: 49 83 E8 04        sub         r8,4
  0000000140007766: EB B3              jmp         000000014000771B
  0000000140007768: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140007770: 66 0F 7F 81 50 FF  movdqa      xmmword ptr [rcx-0B0h],xmm0
                    FF FF
  0000000140007778: 66 0F 7F 81 60 FF  movdqa      xmmword ptr [rcx-0A0h],xmm0
                    FF FF
  0000000140007780: 66 0F 7F 81 70 FF  movdqa      xmmword ptr [rcx-90h],xmm0
                    FF FF
  0000000140007788: 66 0F 7F 41 80     movdqa      xmmword ptr [rcx-80h],xmm0
  000000014000778D: 66 0F 7F 41 90     movdqa      xmmword ptr [rcx-70h],xmm0
  0000000140007792: 66 0F 7F 41 A0     movdqa      xmmword ptr [rcx-60h],xmm0
  0000000140007797: 66 0F 7F 41 B0     movdqa      xmmword ptr [rcx-50h],xmm0
  000000014000779C: 66 0F 7F 41 C0     movdqa      xmmword ptr [rcx-40h],xmm0
  00000001400077A1: 66 0F 7F 41 D0     movdqa      xmmword ptr [rcx-30h],xmm0
  00000001400077A6: 66 0F 7F 41 E0     movdqa      xmmword ptr [rcx-20h],xmm0
  00000001400077AB: 66 0F 7F 41 F0     movdqa      xmmword ptr [rcx-10h],xmm0
  00000001400077B0: C3                 ret
  00000001400077B1: 66 0F 7F 81 4F FF  movdqa      xmmword ptr [rcx-0B1h],xmm0
                    FF FF
  00000001400077B9: 66 0F 7F 81 5F FF  movdqa      xmmword ptr [rcx-0A1h],xmm0
                    FF FF
  00000001400077C1: 66 0F 7F 81 6F FF  movdqa      xmmword ptr [rcx-91h],xmm0
                    FF FF
  00000001400077C9: 66 0F 7F 81 7F FF  movdqa      xmmword ptr [rcx-81h],xmm0
                    FF FF
  00000001400077D1: 66 0F 7F 41 8F     movdqa      xmmword ptr [rcx-71h],xmm0
  00000001400077D6: 66 0F 7F 41 9F     movdqa      xmmword ptr [rcx-61h],xmm0
  00000001400077DB: 66 0F 7F 41 AF     movdqa      xmmword ptr [rcx-51h],xmm0
  00000001400077E0: 66 0F 7F 41 BF     movdqa      xmmword ptr [rcx-41h],xmm0
  00000001400077E5: 66 0F 7F 41 CF     movdqa      xmmword ptr [rcx-31h],xmm0
  00000001400077EA: 66 0F 7F 41 DF     movdqa      xmmword ptr [rcx-21h],xmm0
  00000001400077EF: 66 0F 7F 41 EF     movdqa      xmmword ptr [rcx-11h],xmm0
  00000001400077F4: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400077F7: C3                 ret
  00000001400077F8: 66 0F 7F 81 4E FF  movdqa      xmmword ptr [rcx-0B2h],xmm0
                    FF FF
  0000000140007800: 66 0F 7F 81 5E FF  movdqa      xmmword ptr [rcx-0A2h],xmm0
                    FF FF
  0000000140007808: 66 0F 7F 81 6E FF  movdqa      xmmword ptr [rcx-92h],xmm0
                    FF FF
  0000000140007810: 66 0F 7F 81 7E FF  movdqa      xmmword ptr [rcx-82h],xmm0
                    FF FF
  0000000140007818: 66 0F 7F 41 8E     movdqa      xmmword ptr [rcx-72h],xmm0
  000000014000781D: 66 0F 7F 41 9E     movdqa      xmmword ptr [rcx-62h],xmm0
  0000000140007822: 66 0F 7F 41 AE     movdqa      xmmword ptr [rcx-52h],xmm0
  0000000140007827: 66 0F 7F 41 BE     movdqa      xmmword ptr [rcx-42h],xmm0
  000000014000782C: 66 0F 7F 41 CE     movdqa      xmmword ptr [rcx-32h],xmm0
  0000000140007831: 66 0F 7F 41 DE     movdqa      xmmword ptr [rcx-22h],xmm0
  0000000140007836: 66 0F 7F 41 EE     movdqa      xmmword ptr [rcx-12h],xmm0
  000000014000783B: 66 89 51 FE        mov         word ptr [rcx-2],dx
  000000014000783F: C3                 ret
  0000000140007840: 66 0F 7F 81 4D FF  movdqa      xmmword ptr [rcx-0B3h],xmm0
                    FF FF
  0000000140007848: 66 0F 7F 81 5D FF  movdqa      xmmword ptr [rcx-0A3h],xmm0
                    FF FF
  0000000140007850: 66 0F 7F 81 6D FF  movdqa      xmmword ptr [rcx-93h],xmm0
                    FF FF
  0000000140007858: 66 0F 7F 81 7D FF  movdqa      xmmword ptr [rcx-83h],xmm0
                    FF FF
  0000000140007860: 66 0F 7F 41 8D     movdqa      xmmword ptr [rcx-73h],xmm0
  0000000140007865: 66 0F 7F 41 9D     movdqa      xmmword ptr [rcx-63h],xmm0
  000000014000786A: 66 0F 7F 41 AD     movdqa      xmmword ptr [rcx-53h],xmm0
  000000014000786F: 66 0F 7F 41 BD     movdqa      xmmword ptr [rcx-43h],xmm0
  0000000140007874: 66 0F 7F 41 CD     movdqa      xmmword ptr [rcx-33h],xmm0
  0000000140007879: 66 0F 7F 41 DD     movdqa      xmmword ptr [rcx-23h],xmm0
  000000014000787E: 66 0F 7F 41 ED     movdqa      xmmword ptr [rcx-13h],xmm0
  0000000140007883: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140007887: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000788A: C3                 ret
  000000014000788B: 66 0F 7F 81 4C FF  movdqa      xmmword ptr [rcx-0B4h],xmm0
                    FF FF
  0000000140007893: 66 0F 7F 81 5C FF  movdqa      xmmword ptr [rcx-0A4h],xmm0
                    FF FF
  000000014000789B: 66 0F 7F 81 6C FF  movdqa      xmmword ptr [rcx-94h],xmm0
                    FF FF
  00000001400078A3: 66 0F 7F 81 7C FF  movdqa      xmmword ptr [rcx-84h],xmm0
                    FF FF
  00000001400078AB: 66 0F 7F 41 8C     movdqa      xmmword ptr [rcx-74h],xmm0
  00000001400078B0: 66 0F 7F 41 9C     movdqa      xmmword ptr [rcx-64h],xmm0
  00000001400078B5: 66 0F 7F 41 AC     movdqa      xmmword ptr [rcx-54h],xmm0
  00000001400078BA: 66 0F 7F 41 BC     movdqa      xmmword ptr [rcx-44h],xmm0
  00000001400078BF: 66 0F 7F 41 CC     movdqa      xmmword ptr [rcx-34h],xmm0
  00000001400078C4: 66 0F 7F 41 DC     movdqa      xmmword ptr [rcx-24h],xmm0
  00000001400078C9: 66 0F 7F 41 EC     movdqa      xmmword ptr [rcx-14h],xmm0
  00000001400078CE: 89 51 FC           mov         dword ptr [rcx-4],edx
  00000001400078D1: C3                 ret
  00000001400078D2: 66 0F 7F 81 4B FF  movdqa      xmmword ptr [rcx-0B5h],xmm0
                    FF FF
  00000001400078DA: 66 0F 7F 81 5B FF  movdqa      xmmword ptr [rcx-0A5h],xmm0
                    FF FF
  00000001400078E2: 66 0F 7F 81 6B FF  movdqa      xmmword ptr [rcx-95h],xmm0
                    FF FF
  00000001400078EA: 66 0F 7F 81 7B FF  movdqa      xmmword ptr [rcx-85h],xmm0
                    FF FF
  00000001400078F2: 66 0F 7F 41 8B     movdqa      xmmword ptr [rcx-75h],xmm0
  00000001400078F7: 66 0F 7F 41 9B     movdqa      xmmword ptr [rcx-65h],xmm0
  00000001400078FC: 66 0F 7F 41 AB     movdqa      xmmword ptr [rcx-55h],xmm0
  0000000140007901: 66 0F 7F 41 BB     movdqa      xmmword ptr [rcx-45h],xmm0
  0000000140007906: 66 0F 7F 41 CB     movdqa      xmmword ptr [rcx-35h],xmm0
  000000014000790B: 66 0F 7F 41 DB     movdqa      xmmword ptr [rcx-25h],xmm0
  0000000140007910: 66 0F 7F 41 EB     movdqa      xmmword ptr [rcx-15h],xmm0
  0000000140007915: 89 51 FB           mov         dword ptr [rcx-5],edx
  0000000140007918: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000791B: C3                 ret
  000000014000791C: 66 0F 7F 81 4A FF  movdqa      xmmword ptr [rcx-0B6h],xmm0
                    FF FF
  0000000140007924: 66 0F 7F 81 5A FF  movdqa      xmmword ptr [rcx-0A6h],xmm0
                    FF FF
  000000014000792C: 66 0F 7F 81 6A FF  movdqa      xmmword ptr [rcx-96h],xmm0
                    FF FF
  0000000140007934: 66 0F 7F 81 7A FF  movdqa      xmmword ptr [rcx-86h],xmm0
                    FF FF
  000000014000793C: 66 0F 7F 41 8A     movdqa      xmmword ptr [rcx-76h],xmm0
  0000000140007941: 66 0F 7F 41 9A     movdqa      xmmword ptr [rcx-66h],xmm0
  0000000140007946: 66 0F 7F 41 AA     movdqa      xmmword ptr [rcx-56h],xmm0
  000000014000794B: 66 0F 7F 41 BA     movdqa      xmmword ptr [rcx-46h],xmm0
  0000000140007950: 66 0F 7F 41 CA     movdqa      xmmword ptr [rcx-36h],xmm0
  0000000140007955: 66 0F 7F 41 DA     movdqa      xmmword ptr [rcx-26h],xmm0
  000000014000795A: 66 0F 7F 41 EA     movdqa      xmmword ptr [rcx-16h],xmm0
  000000014000795F: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140007962: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140007966: C3                 ret
  0000000140007967: 66 0F 7F 81 49 FF  movdqa      xmmword ptr [rcx-0B7h],xmm0
                    FF FF
  000000014000796F: 66 0F 7F 81 59 FF  movdqa      xmmword ptr [rcx-0A7h],xmm0
                    FF FF
  0000000140007977: 66 0F 7F 81 69 FF  movdqa      xmmword ptr [rcx-97h],xmm0
                    FF FF
  000000014000797F: 66 0F 7F 81 79 FF  movdqa      xmmword ptr [rcx-87h],xmm0
                    FF FF
  0000000140007987: 66 0F 7F 41 89     movdqa      xmmword ptr [rcx-77h],xmm0
  000000014000798C: 66 0F 7F 41 99     movdqa      xmmword ptr [rcx-67h],xmm0
  0000000140007991: 66 0F 7F 41 A9     movdqa      xmmword ptr [rcx-57h],xmm0
  0000000140007996: 66 0F 7F 41 B9     movdqa      xmmword ptr [rcx-47h],xmm0
  000000014000799B: 66 0F 7F 41 C9     movdqa      xmmword ptr [rcx-37h],xmm0
  00000001400079A0: 66 0F 7F 41 D9     movdqa      xmmword ptr [rcx-27h],xmm0
  00000001400079A5: 66 0F 7F 41 E9     movdqa      xmmword ptr [rcx-17h],xmm0
  00000001400079AA: 89 51 F9           mov         dword ptr [rcx-7],edx
  00000001400079AD: 66 89 51 FD        mov         word ptr [rcx-3],dx
  00000001400079B1: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400079B4: C3                 ret
  00000001400079B5: 66 0F 7F 81 48 FF  movdqa      xmmword ptr [rcx-0B8h],xmm0
                    FF FF
  00000001400079BD: 66 0F 7F 81 58 FF  movdqa      xmmword ptr [rcx-0A8h],xmm0
                    FF FF
  00000001400079C5: 66 0F 7F 81 68 FF  movdqa      xmmword ptr [rcx-98h],xmm0
                    FF FF
  00000001400079CD: 66 0F 7F 81 78 FF  movdqa      xmmword ptr [rcx-88h],xmm0
                    FF FF
  00000001400079D5: 66 0F 7F 41 88     movdqa      xmmword ptr [rcx-78h],xmm0
  00000001400079DA: 66 0F 7F 41 98     movdqa      xmmword ptr [rcx-68h],xmm0
  00000001400079DF: 66 0F 7F 41 A8     movdqa      xmmword ptr [rcx-58h],xmm0
  00000001400079E4: 66 0F 7F 41 B8     movdqa      xmmword ptr [rcx-48h],xmm0
  00000001400079E9: 66 0F 7F 41 C8     movdqa      xmmword ptr [rcx-38h],xmm0
  00000001400079EE: 66 0F 7F 41 D8     movdqa      xmmword ptr [rcx-28h],xmm0
  00000001400079F3: 66 0F 7F 41 E8     movdqa      xmmword ptr [rcx-18h],xmm0
  00000001400079F8: 66 0F D6 41 F8     movq        mmword ptr [rcx-8],xmm0
  00000001400079FD: C3                 ret
  00000001400079FE: 66 0F 7F 81 47 FF  movdqa      xmmword ptr [rcx-0B9h],xmm0
                    FF FF
  0000000140007A06: 66 0F 7F 81 57 FF  movdqa      xmmword ptr [rcx-0A9h],xmm0
                    FF FF
  0000000140007A0E: 66 0F 7F 81 67 FF  movdqa      xmmword ptr [rcx-99h],xmm0
                    FF FF
  0000000140007A16: 66 0F 7F 81 77 FF  movdqa      xmmword ptr [rcx-89h],xmm0
                    FF FF
  0000000140007A1E: 66 0F 7F 41 87     movdqa      xmmword ptr [rcx-79h],xmm0
  0000000140007A23: 66 0F 7F 41 97     movdqa      xmmword ptr [rcx-69h],xmm0
  0000000140007A28: 66 0F 7F 41 A7     movdqa      xmmword ptr [rcx-59h],xmm0
  0000000140007A2D: 66 0F 7F 41 B7     movdqa      xmmword ptr [rcx-49h],xmm0
  0000000140007A32: 66 0F 7F 41 C7     movdqa      xmmword ptr [rcx-39h],xmm0
  0000000140007A37: 66 0F 7F 41 D7     movdqa      xmmword ptr [rcx-29h],xmm0
  0000000140007A3C: 66 0F 7F 41 E7     movdqa      xmmword ptr [rcx-19h],xmm0
  0000000140007A41: 66 0F D6 41 F7     movq        mmword ptr [rcx-9],xmm0
  0000000140007A46: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007A49: C3                 ret
  0000000140007A4A: 66 0F 7F 81 46 FF  movdqa      xmmword ptr [rcx-0BAh],xmm0
                    FF FF
  0000000140007A52: 66 0F 7F 81 56 FF  movdqa      xmmword ptr [rcx-0AAh],xmm0
                    FF FF
  0000000140007A5A: 66 0F 7F 81 66 FF  movdqa      xmmword ptr [rcx-9Ah],xmm0
                    FF FF
  0000000140007A62: 66 0F 7F 81 76 FF  movdqa      xmmword ptr [rcx-8Ah],xmm0
                    FF FF
  0000000140007A6A: 66 0F 7F 41 86     movdqa      xmmword ptr [rcx-7Ah],xmm0
  0000000140007A6F: 66 0F 7F 41 96     movdqa      xmmword ptr [rcx-6Ah],xmm0
  0000000140007A74: 66 0F 7F 41 A6     movdqa      xmmword ptr [rcx-5Ah],xmm0
  0000000140007A79: 66 0F 7F 41 B6     movdqa      xmmword ptr [rcx-4Ah],xmm0
  0000000140007A7E: 66 0F 7F 41 C6     movdqa      xmmword ptr [rcx-3Ah],xmm0
  0000000140007A83: 66 0F 7F 41 D6     movdqa      xmmword ptr [rcx-2Ah],xmm0
  0000000140007A88: 66 0F 7F 41 E6     movdqa      xmmword ptr [rcx-1Ah],xmm0
  0000000140007A8D: 66 0F D6 41 F6     movq        mmword ptr [rcx-0Ah],xmm0
  0000000140007A92: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140007A96: C3                 ret
  0000000140007A97: 66 0F 7F 81 45 FF  movdqa      xmmword ptr [rcx-0BBh],xmm0
                    FF FF
  0000000140007A9F: 66 0F 7F 81 55 FF  movdqa      xmmword ptr [rcx-0ABh],xmm0
                    FF FF
  0000000140007AA7: 66 0F 7F 81 65 FF  movdqa      xmmword ptr [rcx-9Bh],xmm0
                    FF FF
  0000000140007AAF: 66 0F 7F 81 75 FF  movdqa      xmmword ptr [rcx-8Bh],xmm0
                    FF FF
  0000000140007AB7: 66 0F 7F 41 85     movdqa      xmmword ptr [rcx-7Bh],xmm0
  0000000140007ABC: 66 0F 7F 41 95     movdqa      xmmword ptr [rcx-6Bh],xmm0
  0000000140007AC1: 66 0F 7F 41 A5     movdqa      xmmword ptr [rcx-5Bh],xmm0
  0000000140007AC6: 66 0F 7F 41 B5     movdqa      xmmword ptr [rcx-4Bh],xmm0
  0000000140007ACB: 66 0F 7F 41 C5     movdqa      xmmword ptr [rcx-3Bh],xmm0
  0000000140007AD0: 66 0F 7F 41 D5     movdqa      xmmword ptr [rcx-2Bh],xmm0
  0000000140007AD5: 66 0F 7F 41 E5     movdqa      xmmword ptr [rcx-1Bh],xmm0
  0000000140007ADA: 66 0F D6 41 F5     movq        mmword ptr [rcx-0Bh],xmm0
  0000000140007ADF: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140007AE3: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007AE6: C3                 ret
  0000000140007AE7: 66 0F 7F 81 44 FF  movdqa      xmmword ptr [rcx-0BCh],xmm0
                    FF FF
  0000000140007AEF: 66 0F 7F 81 54 FF  movdqa      xmmword ptr [rcx-0ACh],xmm0
                    FF FF
  0000000140007AF7: 66 0F 7F 81 64 FF  movdqa      xmmword ptr [rcx-9Ch],xmm0
                    FF FF
  0000000140007AFF: 66 0F 7F 81 74 FF  movdqa      xmmword ptr [rcx-8Ch],xmm0
                    FF FF
  0000000140007B07: 66 0F 7F 41 84     movdqa      xmmword ptr [rcx-7Ch],xmm0
  0000000140007B0C: 66 0F 7F 41 94     movdqa      xmmword ptr [rcx-6Ch],xmm0
  0000000140007B11: 66 0F 7F 41 A4     movdqa      xmmword ptr [rcx-5Ch],xmm0
  0000000140007B16: 66 0F 7F 41 B4     movdqa      xmmword ptr [rcx-4Ch],xmm0
  0000000140007B1B: 66 0F 7F 41 C4     movdqa      xmmword ptr [rcx-3Ch],xmm0
  0000000140007B20: 66 0F 7F 41 D4     movdqa      xmmword ptr [rcx-2Ch],xmm0
  0000000140007B25: 66 0F 7F 41 E4     movdqa      xmmword ptr [rcx-1Ch],xmm0
  0000000140007B2A: 66 0F D6 41 F4     movq        mmword ptr [rcx-0Ch],xmm0
  0000000140007B2F: 89 51 FC           mov         dword ptr [rcx-4],edx
  0000000140007B32: C3                 ret
  0000000140007B33: 66 0F 7F 81 43 FF  movdqa      xmmword ptr [rcx-0BDh],xmm0
                    FF FF
  0000000140007B3B: 66 0F 7F 81 53 FF  movdqa      xmmword ptr [rcx-0ADh],xmm0
                    FF FF
  0000000140007B43: 66 0F 7F 81 63 FF  movdqa      xmmword ptr [rcx-9Dh],xmm0
                    FF FF
  0000000140007B4B: 66 0F 7F 81 73 FF  movdqa      xmmword ptr [rcx-8Dh],xmm0
                    FF FF
  0000000140007B53: 66 0F 7F 41 83     movdqa      xmmword ptr [rcx-7Dh],xmm0
  0000000140007B58: 66 0F 7F 41 93     movdqa      xmmword ptr [rcx-6Dh],xmm0
  0000000140007B5D: 66 0F 7F 41 A3     movdqa      xmmword ptr [rcx-5Dh],xmm0
  0000000140007B62: 66 0F 7F 41 B3     movdqa      xmmword ptr [rcx-4Dh],xmm0
  0000000140007B67: 66 0F 7F 41 C3     movdqa      xmmword ptr [rcx-3Dh],xmm0
  0000000140007B6C: 66 0F 7F 41 D3     movdqa      xmmword ptr [rcx-2Dh],xmm0
  0000000140007B71: 66 0F 7F 41 E3     movdqa      xmmword ptr [rcx-1Dh],xmm0
  0000000140007B76: 66 0F D6 41 F3     movq        mmword ptr [rcx-0Dh],xmm0
  0000000140007B7B: 89 51 FB           mov         dword ptr [rcx-5],edx
  0000000140007B7E: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007B81: C3                 ret
  0000000140007B82: 66 0F 7F 81 42 FF  movdqa      xmmword ptr [rcx-0BEh],xmm0
                    FF FF
  0000000140007B8A: 66 0F 7F 81 52 FF  movdqa      xmmword ptr [rcx-0AEh],xmm0
                    FF FF
  0000000140007B92: 66 0F 7F 81 62 FF  movdqa      xmmword ptr [rcx-9Eh],xmm0
                    FF FF
  0000000140007B9A: 66 0F 7F 81 72 FF  movdqa      xmmword ptr [rcx-8Eh],xmm0
                    FF FF
  0000000140007BA2: 66 0F 7F 41 82     movdqa      xmmword ptr [rcx-7Eh],xmm0
  0000000140007BA7: 66 0F 7F 41 92     movdqa      xmmword ptr [rcx-6Eh],xmm0
  0000000140007BAC: 66 0F 7F 41 A2     movdqa      xmmword ptr [rcx-5Eh],xmm0
  0000000140007BB1: 66 0F 7F 41 B2     movdqa      xmmword ptr [rcx-4Eh],xmm0
  0000000140007BB6: 66 0F 7F 41 C2     movdqa      xmmword ptr [rcx-3Eh],xmm0
  0000000140007BBB: 66 0F 7F 41 D2     movdqa      xmmword ptr [rcx-2Eh],xmm0
  0000000140007BC0: 66 0F 7F 41 E2     movdqa      xmmword ptr [rcx-1Eh],xmm0
  0000000140007BC5: 48 89 51 F2        mov         qword ptr [rcx-0Eh],rdx
  0000000140007BC9: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140007BCC: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140007BD0: C3                 ret
  0000000140007BD1: 66 0F 7F 81 41 FF  movdqa      xmmword ptr [rcx-0BFh],xmm0
                    FF FF
  0000000140007BD9: 66 0F 7F 81 51 FF  movdqa      xmmword ptr [rcx-0AFh],xmm0
                    FF FF
  0000000140007BE1: 66 0F 7F 81 61 FF  movdqa      xmmword ptr [rcx-9Fh],xmm0
                    FF FF
  0000000140007BE9: 66 0F 7F 81 71 FF  movdqa      xmmword ptr [rcx-8Fh],xmm0
                    FF FF
  0000000140007BF1: 66 0F 7F 41 81     movdqa      xmmword ptr [rcx-7Fh],xmm0
  0000000140007BF6: 66 0F 7F 41 91     movdqa      xmmword ptr [rcx-6Fh],xmm0
  0000000140007BFB: 66 0F 7F 41 A1     movdqa      xmmword ptr [rcx-5Fh],xmm0
  0000000140007C00: 66 0F 7F 41 B1     movdqa      xmmword ptr [rcx-4Fh],xmm0
  0000000140007C05: 66 0F 7F 41 C1     movdqa      xmmword ptr [rcx-3Fh],xmm0
  0000000140007C0A: 66 0F 7F 41 D1     movdqa      xmmword ptr [rcx-2Fh],xmm0
  0000000140007C0F: 66 0F 7F 41 E1     movdqa      xmmword ptr [rcx-1Fh],xmm0
  0000000140007C14: 48 89 51 F1        mov         qword ptr [rcx-0Fh],rdx
  0000000140007C18: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140007C1B: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140007C1F: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140007C22: C3                 ret
  0000000140007C23: 4C 3B 05 16 4C 00  cmp         r8,qword ptr [__libirc_largest_cache_size]
                    00
  0000000140007C2A: 7F 4D              jg          0000000140007C79
  0000000140007C2C: EB 02              jmp         0000000140007C30
  0000000140007C2E: 66 90              xchg        ax,ax
  0000000140007C30: 4D 8D 40 80        lea         r8,[r8-80h]
  0000000140007C34: 66 0F 7F 01        movdqa      xmmword ptr [rcx],xmm0
  0000000140007C38: 66 0F 7F 41 10     movdqa      xmmword ptr [rcx+10h],xmm0
  0000000140007C3D: 66 0F 7F 41 20     movdqa      xmmword ptr [rcx+20h],xmm0
  0000000140007C42: 66 0F 7F 41 30     movdqa      xmmword ptr [rcx+30h],xmm0
  0000000140007C47: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  0000000140007C4E: 66 0F 7F 41 40     movdqa      xmmword ptr [rcx+40h],xmm0
  0000000140007C53: 66 0F 7F 41 50     movdqa      xmmword ptr [rcx+50h],xmm0
  0000000140007C58: 66 0F 7F 41 60     movdqa      xmmword ptr [rcx+60h],xmm0
  0000000140007C5D: 66 0F 7F 41 70     movdqa      xmmword ptr [rcx+70h],xmm0
  0000000140007C62: 48 8D 89 80 00 00  lea         rcx,[rcx+80h]
                    00
  0000000140007C69: 7D C5              jge         0000000140007C30
  0000000140007C6B: 4C 8D 1D 9E 88 00  lea         r11,[140010510h]
                    00
  0000000140007C72: 49 03 C8           add         rcx,r8
  0000000140007C75: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140007C79: 49 83 F9 00        cmp         r9,0
  0000000140007C7D: 74 B1              je          0000000140007C30
  0000000140007C7F: EB 0F              jmp         0000000140007C90
  0000000140007C81: 66 66 66 66 66 66  nop         word ptr [rax+rax]
                    66 0F 1F 84 00 00
                    00 00 00
  0000000140007C90: 49 81 E8 80 00 00  sub         r8,80h
                    00
  0000000140007C97: 66 0F E7 01        movntdq     xmmword ptr [rcx],xmm0
  0000000140007C9B: 66 0F E7 41 10     movntdq     xmmword ptr [rcx+10h],xmm0
  0000000140007CA0: 66 0F E7 41 20     movntdq     xmmword ptr [rcx+20h],xmm0
  0000000140007CA5: 66 0F E7 41 30     movntdq     xmmword ptr [rcx+30h],xmm0
  0000000140007CAA: 66 0F E7 41 40     movntdq     xmmword ptr [rcx+40h],xmm0
  0000000140007CAF: 66 0F E7 41 50     movntdq     xmmword ptr [rcx+50h],xmm0
  0000000140007CB4: 66 0F E7 41 60     movntdq     xmmword ptr [rcx+60h],xmm0
  0000000140007CB9: 66 0F E7 41 70     movntdq     xmmword ptr [rcx+70h],xmm0
  0000000140007CBE: 48 81 C1 80 00 00  add         rcx,80h
                    00
  0000000140007CC5: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  0000000140007CCC: 7D C2              jge         0000000140007C90
  0000000140007CCE: 0F AE F8           sfence
  0000000140007CD1: 4C 8D 1D 38 88 00  lea         r11,[140010510h]
                    00
  0000000140007CD8: 49 03 C8           add         rcx,r8
  0000000140007CDB: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140007CDF: 90                 nop
  0000000140007CE0: 4C 3B 05 59 4B 00  cmp         r8,qword ptr [__libirc_largest_cache_size]
                    00
  0000000140007CE7: 7F 47              jg          0000000140007D30
  0000000140007CE9: EB 05              jmp         0000000140007CF0
  0000000140007CEB: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140007CF0: 48 89 11           mov         qword ptr [rcx],rdx
  0000000140007CF3: 48 89 51 08        mov         qword ptr [rcx+8],rdx
  0000000140007CF7: 4D 8D 40 C0        lea         r8,[r8-40h]
  0000000140007CFB: 48 89 51 10        mov         qword ptr [rcx+10h],rdx
  0000000140007CFF: 48 89 51 18        mov         qword ptr [rcx+18h],rdx
  0000000140007D03: 49 83 F8 40        cmp         r8,40h
  0000000140007D07: 48 89 51 20        mov         qword ptr [rcx+20h],rdx
  0000000140007D0B: 48 89 51 28        mov         qword ptr [rcx+28h],rdx
  0000000140007D0F: 48 89 51 30        mov         qword ptr [rcx+30h],rdx
  0000000140007D13: 48 89 51 38        mov         qword ptr [rcx+38h],rdx
  0000000140007D17: 48 8D 49 40        lea         rcx,[rcx+40h]
  0000000140007D1B: 7F D3              jg          0000000140007CF0
  0000000140007D1D: 4C 8D 1D 1C 83 00  lea         r11,[140010040h]
                    00
  0000000140007D24: 4A 8D 0C 01        lea         rcx,[rcx+r8]
  0000000140007D28: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140007D2C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140007D30: 49 83 F9 00        cmp         r9,0
  0000000140007D34: 74 BA              je          0000000140007CF0
  0000000140007D36: EB 08              jmp         0000000140007D40
  0000000140007D38: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax]
                    00 00
  0000000140007D40: 48 0F C3 11        movnti      qword ptr [rcx],rdx
  0000000140007D44: 48 0F C3 51 08     movnti      qword ptr [rcx+8],rdx
  0000000140007D49: 4D 8D 40 C0        lea         r8,[r8-40h]
  0000000140007D4D: 48 0F C3 51 10     movnti      qword ptr [rcx+10h],rdx
  0000000140007D52: 48 0F C3 51 18     movnti      qword ptr [rcx+18h],rdx
  0000000140007D57: 48 0F C3 51 20     movnti      qword ptr [rcx+20h],rdx
  0000000140007D5C: 49 83 F8 40        cmp         r8,40h
  0000000140007D60: 48 0F C3 51 28     movnti      qword ptr [rcx+28h],rdx
  0000000140007D65: 48 0F C3 51 30     movnti      qword ptr [rcx+30h],rdx
  0000000140007D6A: 48 0F C3 51 38     movnti      qword ptr [rcx+38h],rdx
  0000000140007D6F: 48 8D 49 40        lea         rcx,[rcx+40h]
  0000000140007D73: 7D CB              jge         0000000140007D40
  0000000140007D75: 4C 8D 1D C4 82 00  lea         r11,[140010040h]
                    00
  0000000140007D7C: 4A 8D 0C 01        lea         rcx,[rcx+r8]
  0000000140007D80: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
__CxxFrameHandler3:
  0000000140007D84: FF 25 46 13 00 00  jmp         qword ptr [__imp___CxxFrameHandler3]
__C_specific_handler:
  0000000140007D8A: FF 25 28 13 00 00  jmp         qword ptr [__imp___C_specific_handler]
__std_exception_copy:
  0000000140007D90: FF 25 1A 13 00 00  jmp         qword ptr [__imp___std_exception_copy]
__std_exception_destroy:
  0000000140007D96: FF 25 0C 13 00 00  jmp         qword ptr [__imp___std_exception_destroy]
_CxxThrowException:
  0000000140007D9C: FF 25 1E 13 00 00  jmp         qword ptr [__imp__CxxThrowException]
__current_exception:
  0000000140007DA2: FF 25 F0 12 00 00  jmp         qword ptr [__imp___current_exception]
__current_exception_context:
  0000000140007DA8: FF 25 1A 13 00 00  jmp         qword ptr [__imp___current_exception_context]
memset:
  0000000140007DAE: FF 25 EC 12 00 00  jmp         qword ptr [__imp_memset]
_callnewh:
  0000000140007DB4: FF 25 4E 13 00 00  jmp         qword ptr [__imp__callnewh]
malloc:
  0000000140007DBA: FF 25 40 13 00 00  jmp         qword ptr [__imp_malloc]
free:
  0000000140007DC0: FF 25 32 13 00 00  jmp         qword ptr [__imp_free]
_seh_filter_exe:
  0000000140007DC6: FF 25 8C 13 00 00  jmp         qword ptr [__imp__seh_filter_exe]
_set_app_type:
  0000000140007DCC: FF 25 8E 13 00 00  jmp         qword ptr [__imp__set_app_type]
__setusermatherr:
  0000000140007DD2: FF 25 50 13 00 00  jmp         qword ptr [__imp___setusermatherr]
_configure_narrow_argv:
  0000000140007DD8: FF 25 A2 13 00 00  jmp         qword ptr [__imp__configure_narrow_argv]
_initialize_narrow_environment:
  0000000140007DDE: FF 25 BC 13 00 00  jmp         qword ptr [__imp__initialize_narrow_environment]
_get_initial_narrow_environment:
  0000000140007DE4: FF 25 DE 13 00 00  jmp         qword ptr [__imp__get_initial_narrow_environment]
_initterm:
  0000000140007DEA: FF 25 D0 13 00 00  jmp         qword ptr [__imp__initterm]
_initterm_e:
  0000000140007DF0: FF 25 C2 13 00 00  jmp         qword ptr [__imp__initterm_e]
exit:
  0000000140007DF6: FF 25 B4 13 00 00  jmp         qword ptr [__imp_exit]
_exit:
  0000000140007DFC: FF 25 A6 13 00 00  jmp         qword ptr [__imp__exit]
_set_fmode:
  0000000140007E02: FF 25 F0 13 00 00  jmp         qword ptr [__imp__set_fmode]
__p___argc:
  0000000140007E08: FF 25 8A 13 00 00  jmp         qword ptr [__imp___p___argc]
__p___argv:
  0000000140007E0E: FF 25 7C 13 00 00  jmp         qword ptr [__imp___p___argv]
_cexit:
  0000000140007E14: FF 25 4E 13 00 00  jmp         qword ptr [__imp__cexit]
_c_exit:
  0000000140007E1A: FF 25 58 13 00 00  jmp         qword ptr [__imp__c_exit]
_register_thread_local_exe_atexit_callback:
  0000000140007E20: FF 25 2A 13 00 00  jmp         qword ptr [__imp__register_thread_local_exe_atexit_callback]
_configthreadlocale:
  0000000140007E26: FF 25 EC 12 00 00  jmp         qword ptr [__imp__configthreadlocale]
_set_new_mode:
  0000000140007E2C: FF 25 BE 12 00 00  jmp         qword ptr [__imp__set_new_mode]
__p__commode:
  0000000140007E32: FF 25 A0 13 00 00  jmp         qword ptr [__imp___p__commode]
_initialize_onexit_table:
  0000000140007E38: FF 25 FA 12 00 00  jmp         qword ptr [__imp__initialize_onexit_table]
_register_onexit_function:
  0000000140007E3E: FF 25 44 13 00 00  jmp         qword ptr [__imp__register_onexit_function]
_crt_atexit:
  0000000140007E44: FF 25 F6 12 00 00  jmp         qword ptr [__imp__crt_atexit]
terminate:
  0000000140007E4A: FF 25 F8 12 00 00  jmp         qword ptr [__imp_terminate]
strlen:
  0000000140007E50: FF 25 C2 13 00 00  jmp         qword ptr [__imp_strlen]
strncat:
  0000000140007E56: FF 25 B4 13 00 00  jmp         qword ptr [__imp_strncat]
getenv:
  0000000140007E5C: FF 25 7E 12 00 00  jmp         qword ptr [__imp_getenv]
_errno:
  0000000140007E62: FF 25 08 13 00 00  jmp         qword ptr [__imp__errno]
__stdio_common_vsprintf:
  0000000140007E68: FF 25 82 13 00 00  jmp         qword ptr [__imp___stdio_common_vsprintf]
strncpy:
  0000000140007E6E: FF 25 94 13 00 00  jmp         qword ptr [__imp_strncpy]
IsProcessorFeaturePresent:
  0000000140007E74: FF 25 FE 11 00 00  jmp         qword ptr [__imp_IsProcessorFeaturePresent]
  0000000140007E7A: CC CC CC CC CC CC                                ......
  0000000140007E80: CC                 int         3
  0000000140007E81: CC                 int         3
  0000000140007E82: CC                 int         3
  0000000140007E83: CC                 int         3
  0000000140007E84: CC                 int         3
  0000000140007E85: CC                 int         3
  0000000140007E86: 66 66 0F 1F 84 00  nop         word ptr [rax+rax]
                    00 00 00 00
__security_check_cookie:
  0000000140007E90: 48 3B 0D 91 41 00  cmp         rcx,qword ptr [__security_cookie]
                    00
  0000000140007E97: F2 75 12           bnd jne     0000000140007EAC
  0000000140007E9A: 48 C1 C1 10        rol         rcx,10h
  0000000140007E9E: 66 F7 C1 FF FF     test        cx,0FFFFh
  0000000140007EA3: F2 75 02           bnd jne     0000000140007EA8
  0000000140007EA6: F2 C3              bnd ret
  0000000140007EA8: 48 C1 C9 10        ror         rcx,10h
  0000000140007EAC: E9 B3 00 00 00     jmp         __report_gsfailure
  0000000140007EB1: CC CC CC                                         ...
__GSHandlerCheck:
  0000000140007EB4: 48 83 EC 28        sub         rsp,28h
  0000000140007EB8: 4D 8B 41 38        mov         r8,qword ptr [r9+38h]
  0000000140007EBC: 48 8B CA           mov         rcx,rdx
  0000000140007EBF: 49 8B D1           mov         rdx,r9
  0000000140007EC2: E8 0D 00 00 00     call        __GSHandlerCheckCommon
  0000000140007EC7: B8 01 00 00 00     mov         eax,1
  0000000140007ECC: 48 83 C4 28        add         rsp,28h
  0000000140007ED0: C3                 ret
  0000000140007ED1: CC CC CC                                         ...
__GSHandlerCheckCommon:
  0000000140007ED4: 40 53              push        rbx
  0000000140007ED6: 45 8B 18           mov         r11d,dword ptr [r8]
  0000000140007ED9: 48 8B DA           mov         rbx,rdx
  0000000140007EDC: 41 83 E3 F8        and         r11d,0FFFFFFF8h
  0000000140007EE0: 4C 8B C9           mov         r9,rcx
  0000000140007EE3: 41 F6 00 04        test        byte ptr [r8],4
  0000000140007EE7: 4C 8B D1           mov         r10,rcx
  0000000140007EEA: 74 13              je          0000000140007EFF
  0000000140007EEC: 41 8B 40 08        mov         eax,dword ptr [r8+8]
  0000000140007EF0: 4D 63 50 04        movsxd      r10,dword ptr [r8+4]
  0000000140007EF4: F7 D8              neg         eax
  0000000140007EF6: 4C 03 D1           add         r10,rcx
  0000000140007EF9: 48 63 C8           movsxd      rcx,eax
  0000000140007EFC: 4C 23 D1           and         r10,rcx
  0000000140007EFF: 49 63 C3           movsxd      rax,r11d
  0000000140007F02: 4A 8B 14 10        mov         rdx,qword ptr [rax+r10]
  0000000140007F06: 48 8B 43 10        mov         rax,qword ptr [rbx+10h]
  0000000140007F0A: 8B 48 08           mov         ecx,dword ptr [rax+8]
  0000000140007F0D: 48 8B 43 08        mov         rax,qword ptr [rbx+8]
  0000000140007F11: F6 44 01 03 0F     test        byte ptr [rcx+rax+3],0Fh
  0000000140007F16: 74 0B              je          0000000140007F23
  0000000140007F18: 0F B6 44 01 03     movzx       eax,byte ptr [rcx+rax+3]
  0000000140007F1D: 83 E0 F0           and         eax,0FFFFFFF0h
  0000000140007F20: 4C 03 C8           add         r9,rax
  0000000140007F23: 4C 33 CA           xor         r9,rdx
  0000000140007F26: 49 8B C9           mov         rcx,r9
  0000000140007F29: 5B                 pop         rbx
  0000000140007F2A: E9 61 FF FF FF     jmp         __security_check_cookie
  0000000140007F2F: CC                                               .
__raise_securityfailure:
  0000000140007F30: 40 53              push        rbx
  0000000140007F32: 48 83 EC 20        sub         rsp,20h
  0000000140007F36: 48 8B D9           mov         rbx,rcx
  0000000140007F39: 33 C9              xor         ecx,ecx
  0000000140007F3B: FF 15 3F 11 00 00  call        qword ptr [__imp_SetUnhandledExceptionFilter]
  0000000140007F41: 48 8B CB           mov         rcx,rbx
  0000000140007F44: FF 15 06 11 00 00  call        qword ptr [__imp_UnhandledExceptionFilter]
  0000000140007F4A: FF 15 F8 10 00 00  call        qword ptr [__imp_GetCurrentProcess]
  0000000140007F50: 48 8B C8           mov         rcx,rax
  0000000140007F53: BA 09 04 00 C0     mov         edx,0C0000409h
  0000000140007F58: 48 83 C4 20        add         rsp,20h
  0000000140007F5C: 5B                 pop         rbx
  0000000140007F5D: 48 FF 25 9C 10 00  jmp         qword ptr [__imp_TerminateProcess]
                    00
__report_gsfailure:
  0000000140007F64: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000140007F69: 48 83 EC 38        sub         rsp,38h
  0000000140007F6D: B9 17 00 00 00     mov         ecx,17h
  0000000140007F72: E8 FD FE FF FF     call        IsProcessorFeaturePresent
  0000000140007F77: 85 C0              test        eax,eax
  0000000140007F79: 74 07              je          0000000140007F82
  0000000140007F7B: B9 02 00 00 00     mov         ecx,2
  0000000140007F80: CD 29              int         29h
  0000000140007F82: 48 8D 0D B7 57 00  lea         rcx,[14000D740h]
                    00
  0000000140007F89: E8 AA 00 00 00     call        0000000140008038
  0000000140007F8E: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000140007F93: 48 89 05 9E 58 00  mov         qword ptr [14000D838h],rax
                    00
  0000000140007F9A: 48 8D 44 24 38     lea         rax,[rsp+38h]
  0000000140007F9F: 48 83 C0 08        add         rax,8
  0000000140007FA3: 48 89 05 2E 58 00  mov         qword ptr [14000D7D8h],rax
                    00
  0000000140007FAA: 48 8B 05 87 58 00  mov         rax,qword ptr [14000D838h]
                    00
  0000000140007FB1: 48 89 05 F8 56 00  mov         qword ptr [14000D6B0h],rax
                    00
  0000000140007FB8: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000140007FBD: 48 89 05 FC 57 00  mov         qword ptr [14000D7C0h],rax
                    00
  0000000140007FC4: C7 05 D2 56 00 00  mov         dword ptr [14000D6A0h],0C0000409h
                    09 04 00 C0
  0000000140007FCE: C7 05 CC 56 00 00  mov         dword ptr [14000D6A4h],1
                    01 00 00 00
  0000000140007FD8: C7 05 D6 56 00 00  mov         dword ptr [14000D6B8h],1
                    01 00 00 00
  0000000140007FE2: B8 08 00 00 00     mov         eax,8
  0000000140007FE7: 48 6B C0 00        imul        rax,rax,0
  0000000140007FEB: 48 8D 0D CE 56 00  lea         rcx,[14000D6C0h]
                    00
  0000000140007FF2: 48 C7 04 01 02 00  mov         qword ptr [rcx+rax],2
                    00 00
  0000000140007FFA: B8 08 00 00 00     mov         eax,8
  0000000140007FFF: 48 6B C0 00        imul        rax,rax,0
  0000000140008003: 48 8B 0D 1E 40 00  mov         rcx,qword ptr [__security_cookie]
                    00
  000000014000800A: 48 89 4C 04 20     mov         qword ptr [rsp+rax+20h],rcx
  000000014000800F: B8 08 00 00 00     mov         eax,8
  0000000140008014: 48 6B C0 01        imul        rax,rax,1
  0000000140008018: 48 8B 0D 01 40 00  mov         rcx,qword ptr [__security_cookie_complement]
                    00
  000000014000801F: 48 89 4C 04 20     mov         qword ptr [rsp+rax+20h],rcx
  0000000140008024: 48 8D 0D 8D 28 00  lea         rcx,[14000A8B8h]
                    00
  000000014000802B: E8 00 FF FF FF     call        __raise_securityfailure
  0000000140008030: 48 83 C4 38        add         rsp,38h
  0000000140008034: C3                 ret
  0000000140008035: CC CC CC                                         ...
capture_previous_context:
  0000000140008038: 40 53              push        rbx
  000000014000803A: 56                 push        rsi
  000000014000803B: 57                 push        rdi
  000000014000803C: 48 83 EC 40        sub         rsp,40h
  0000000140008040: 48 8B D9           mov         rbx,rcx
  0000000140008043: FF 15 DF 0F 00 00  call        qword ptr [__imp_RtlCaptureContext]
  0000000140008049: 48 8B B3 F8 00 00  mov         rsi,qword ptr [rbx+0F8h]
                    00
  0000000140008050: 33 FF              xor         edi,edi
  0000000140008052: 45 33 C0           xor         r8d,r8d
  0000000140008055: 48 8D 54 24 60     lea         rdx,[rsp+60h]
  000000014000805A: 48 8B CE           mov         rcx,rsi
  000000014000805D: FF 15 CD 0F 00 00  call        qword ptr [__imp_RtlLookupFunctionEntry]
  0000000140008063: 48 85 C0           test        rax,rax
  0000000140008066: 74 39              je          00000001400080A1
  0000000140008068: 48 83 64 24 38 00  and         qword ptr [rsp+38h],0
  000000014000806E: 48 8D 4C 24 68     lea         rcx,[rsp+68h]
  0000000140008073: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  0000000140008078: 4C 8B C8           mov         r9,rax
  000000014000807B: 48 89 4C 24 30     mov         qword ptr [rsp+30h],rcx
  0000000140008080: 4C 8B C6           mov         r8,rsi
  0000000140008083: 48 8D 4C 24 70     lea         rcx,[rsp+70h]
  0000000140008088: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  000000014000808D: 33 C9              xor         ecx,ecx
  000000014000808F: 48 89 5C 24 20     mov         qword ptr [rsp+20h],rbx
  0000000140008094: FF 15 9E 0F 00 00  call        qword ptr [__imp_RtlVirtualUnwind]
  000000014000809A: FF C7              inc         edi
  000000014000809C: 83 FF 02           cmp         edi,2
  000000014000809F: 7C B1              jl          0000000140008052
  00000001400080A1: 48 83 C4 40        add         rsp,40h
  00000001400080A5: 5F                 pop         rdi
  00000001400080A6: 5E                 pop         rsi
  00000001400080A7: 5B                 pop         rbx
  00000001400080A8: C3                 ret
  00000001400080A9: CC CC CC CC CC CC CC                             .......
  00000001400080B0: CC                 int         3
  00000001400080B1: CC                 int         3
  00000001400080B2: CC                 int         3
  00000001400080B3: CC                 int         3
  00000001400080B4: CC                 int         3
  00000001400080B5: CC                 int         3
  00000001400080B6: 66 66 0F 1F 84 00  nop         word ptr [rax+rax]
                    00 00 00 00
_guard_dispatch_icall_nop:
  00000001400080C0: FF E0              jmp         rax
  00000001400080C2: CC CC CC CC CC CC CC CC CC CC CC CC CC CC        ..............
  00000001400080D0: CC                 int         3
  00000001400080D1: CC                 int         3
  00000001400080D2: CC                 int         3
  00000001400080D3: CC                 int         3
  00000001400080D4: CC                 int         3
  00000001400080D5: CC                 int         3
  00000001400080D6: 66 66 0F 1F 84 00  nop         word ptr [rax+rax]
                    00 00 00 00
_guard_xfg_dispatch_icall_nop:
  00000001400080E0: FF 25 52 11 00 00  jmp         qword ptr [__guard_dispatch_icall_fptr]
`__scrt_common_main_seh'::`1'::filt$0:
  00000001400080E6: 40 55              push        rbp
  00000001400080E8: 48 83 EC 20        sub         rsp,20h
  00000001400080EC: 48 8B EA           mov         rbp,rdx
  00000001400080EF: 48 8B 01           mov         rax,qword ptr [rcx]
  00000001400080F2: 48 8B D1           mov         rdx,rcx
  00000001400080F5: 8B 08              mov         ecx,dword ptr [rax]
  00000001400080F7: E8 CA FC FF FF     call        _seh_filter_exe
  00000001400080FC: 90                 nop
  00000001400080FD: 48 83 C4 20        add         rsp,20h
  0000000140008101: 5D                 pop         rbp
  0000000140008102: C3                 ret
  0000000140008103: CC                 int         3
__scrt_is_nonwritable_in_current_image$filt$0:
  0000000140008104: 40 55              push        rbp
  0000000140008106: 48 8B EA           mov         rbp,rdx
  0000000140008109: 48 8B 01           mov         rax,qword ptr [rcx]
  000000014000810C: 33 C9              xor         ecx,ecx
  000000014000810E: 81 38 05 00 00 C0  cmp         dword ptr [rax],0C0000005h
  0000000140008114: 0F 94 C1           sete        cl
  0000000140008117: 8B C1              mov         eax,ecx
  0000000140008119: 5D                 pop         rbp
  000000014000811A: C3                 ret
  000000014000811B: CC                 int         3

  Summary

        2000 .data
        1000 .data1
        1000 .debug_o
        1000 .pdata
        3000 .rdata
        1000 .reloc
        1000 .rsrc
        8000 .text
        1000 _RDATA
