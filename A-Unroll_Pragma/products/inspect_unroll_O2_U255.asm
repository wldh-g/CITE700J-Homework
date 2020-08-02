
Dump of file .\inspect_unroll_O2_U255.exe

File Type: EXECUTABLE IMAGE

  0000000140001000: 55                 push        rbp
  0000000140001001: 48 83 EC 50        sub         rsp,50h
  0000000140001005: 48 8D 6C 24 20     lea         rbp,[rsp+20h]
  000000014000100A: 33 D2              xor         edx,edx
  000000014000100C: 48 89 5D 08        mov         qword ptr [rbp+8],rbx
  0000000140001010: 89 CB              mov         ebx,ecx
  0000000140001012: 33 C9              xor         ecx,ecx
  0000000140001014: 4C 89 75 10        mov         qword ptr [rbp+10h],r14
  0000000140001018: 4C 89 6D 18        mov         qword ptr [rbp+18h],r13
  000000014000101C: E8 0F 13 00 00     call        0000000140002330
  0000000140001021: 48 C7 45 00 FE FF  mov         qword ptr [rbp],0FFFFFFFFFFFFFFFEh
                    FF FF
  0000000140001029: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  0000000140001030: B9 A0 0F 00 00     mov         ecx,0FA0h
  0000000140001035: E8 E6 67 00 00     call        0000000140007820
  000000014000103A: 48 89 45 20        mov         qword ptr [rbp+20h],rax
  000000014000103E: 48 85 C0           test        rax,rax
  0000000140001041: 74 27              je          000000014000106A
  0000000140001043: 48 89 C1           mov         rcx,rax
  0000000140001046: 33 D2              xor         edx,edx
  0000000140001048: 41 B8 A0 0F 00 00  mov         r8d,0FA0h
  000000014000104E: C7 45 28 01 00 00  mov         dword ptr [rbp+28h],1
                    00
  0000000140001055: E8 A6 17 00 00     call        0000000140002800
  000000014000105A: 4C 8B 75 20        mov         r14,qword ptr [rbp+20h]
  000000014000105E: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  0000000140001065: 41 89 1E           mov         dword ptr [r14],ebx
  0000000140001068: EB 03              jmp         000000014000106D
  000000014000106A: 45 33 F6           xor         r14d,r14d
  000000014000106D: B9 A0 0F 00 00     mov         ecx,0FA0h
  0000000140001072: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  0000000140001079: E8 A2 67 00 00     call        0000000140007820
  000000014000107E: 48 89 45 20        mov         qword ptr [rbp+20h],rax
  0000000140001082: 48 85 C0           test        rax,rax
  0000000140001085: 74 28              je          00000001400010AF
  0000000140001087: 48 89 C1           mov         rcx,rax
  000000014000108A: 33 D2              xor         edx,edx
  000000014000108C: 41 B8 A0 0F 00 00  mov         r8d,0FA0h
  0000000140001092: C7 45 28 01 00 00  mov         dword ptr [rbp+28h],1
                    00
  0000000140001099: E8 62 17 00 00     call        0000000140002800
  000000014000109E: 4C 8B 6D 20        mov         r13,qword ptr [rbp+20h]
  00000001400010A2: C7 45 28 00 00 00  mov         dword ptr [rbp+28h],0
                    00
  00000001400010A9: 41 89 5D 00        mov         dword ptr [r13],ebx
  00000001400010AD: EB 03              jmp         00000001400010B2
  00000001400010AF: 45 33 ED           xor         r13d,r13d
  00000001400010B2: 90                 nop
  00000001400010B3: 90                 nop
  00000001400010B4: 48 3B C3           cmp         rax,rbx
  00000001400010B7: 48 3B CA           cmp         rcx,rdx
  00000001400010BA: 90                 nop
  00000001400010BB: 90                 nop
  00000001400010BC: 32 D2              xor         dl,dl
  00000001400010BE: 33 C0              xor         eax,eax
  00000001400010C0: 42 8B 5C 30 04     mov         ebx,dword ptr [rax+r14+4]
  00000001400010C5: FF C3              inc         ebx
  00000001400010C7: 42 89 5C 28 04     mov         dword ptr [rax+r13+4],ebx
  00000001400010CC: 42 8B 5C 30 18     mov         ebx,dword ptr [rax+r14+18h]
  00000001400010D1: FF C3              inc         ebx
  00000001400010D3: 42 89 5C 28 18     mov         dword ptr [rax+r13+18h],ebx
  00000001400010D8: 42 8B 5C 30 1C     mov         ebx,dword ptr [rax+r14+1Ch]
  00000001400010DD: FF C3              inc         ebx
  00000001400010DF: 42 89 5C 28 1C     mov         dword ptr [rax+r13+1Ch],ebx
  00000001400010E4: 42 8B 5C 30 20     mov         ebx,dword ptr [rax+r14+20h]
  00000001400010E9: FF C3              inc         ebx
  00000001400010EB: 42 89 5C 28 20     mov         dword ptr [rax+r13+20h],ebx
  00000001400010F0: 42 8B 5C 30 24     mov         ebx,dword ptr [rax+r14+24h]
  00000001400010F5: FF C3              inc         ebx
  00000001400010F7: 42 89 5C 28 24     mov         dword ptr [rax+r13+24h],ebx
  00000001400010FC: 42 8B 5C 30 28     mov         ebx,dword ptr [rax+r14+28h]
  0000000140001101: FF C3              inc         ebx
  0000000140001103: 42 89 5C 28 28     mov         dword ptr [rax+r13+28h],ebx
  0000000140001108: 42 8B 5C 30 2C     mov         ebx,dword ptr [rax+r14+2Ch]
  000000014000110D: FF C3              inc         ebx
  000000014000110F: 42 89 5C 28 2C     mov         dword ptr [rax+r13+2Ch],ebx
  0000000140001114: 42 8B 5C 30 30     mov         ebx,dword ptr [rax+r14+30h]
  0000000140001119: FF C3              inc         ebx
  000000014000111B: 42 89 5C 28 30     mov         dword ptr [rax+r13+30h],ebx
  0000000140001120: 42 8B 5C 30 34     mov         ebx,dword ptr [rax+r14+34h]
  0000000140001125: FF C3              inc         ebx
  0000000140001127: 42 89 5C 28 34     mov         dword ptr [rax+r13+34h],ebx
  000000014000112C: 42 8B 5C 30 38     mov         ebx,dword ptr [rax+r14+38h]
  0000000140001131: FF C3              inc         ebx
  0000000140001133: 42 89 5C 28 38     mov         dword ptr [rax+r13+38h],ebx
  0000000140001138: 42 8B 5C 30 3C     mov         ebx,dword ptr [rax+r14+3Ch]
  000000014000113D: FF C3              inc         ebx
  000000014000113F: 42 89 5C 28 3C     mov         dword ptr [rax+r13+3Ch],ebx
  0000000140001144: 42 8B 5C 30 40     mov         ebx,dword ptr [rax+r14+40h]
  0000000140001149: FF C3              inc         ebx
  000000014000114B: 42 89 5C 28 40     mov         dword ptr [rax+r13+40h],ebx
  0000000140001150: 42 8B 5C 30 44     mov         ebx,dword ptr [rax+r14+44h]
  0000000140001155: FF C3              inc         ebx
  0000000140001157: 42 89 5C 28 44     mov         dword ptr [rax+r13+44h],ebx
  000000014000115C: 42 8B 5C 30 48     mov         ebx,dword ptr [rax+r14+48h]
  0000000140001161: FF C3              inc         ebx
  0000000140001163: 42 89 5C 28 48     mov         dword ptr [rax+r13+48h],ebx
  0000000140001168: 42 8B 5C 30 4C     mov         ebx,dword ptr [rax+r14+4Ch]
  000000014000116D: FF C3              inc         ebx
  000000014000116F: 42 89 5C 28 4C     mov         dword ptr [rax+r13+4Ch],ebx
  0000000140001174: 42 8B 5C 30 50     mov         ebx,dword ptr [rax+r14+50h]
  0000000140001179: FF C3              inc         ebx
  000000014000117B: 42 89 5C 28 50     mov         dword ptr [rax+r13+50h],ebx
  0000000140001180: 42 8B 5C 30 54     mov         ebx,dword ptr [rax+r14+54h]
  0000000140001185: FF C3              inc         ebx
  0000000140001187: 42 89 5C 28 54     mov         dword ptr [rax+r13+54h],ebx
  000000014000118C: 42 8B 5C 30 58     mov         ebx,dword ptr [rax+r14+58h]
  0000000140001191: FF C3              inc         ebx
  0000000140001193: 42 89 5C 28 58     mov         dword ptr [rax+r13+58h],ebx
  0000000140001198: 42 8B 5C 30 5C     mov         ebx,dword ptr [rax+r14+5Ch]
  000000014000119D: FF C3              inc         ebx
  000000014000119F: 42 89 5C 28 5C     mov         dword ptr [rax+r13+5Ch],ebx
  00000001400011A4: 42 8B 5C 30 60     mov         ebx,dword ptr [rax+r14+60h]
  00000001400011A9: FF C3              inc         ebx
  00000001400011AB: 42 89 5C 28 60     mov         dword ptr [rax+r13+60h],ebx
  00000001400011B0: 42 8B 5C 30 64     mov         ebx,dword ptr [rax+r14+64h]
  00000001400011B5: FF C3              inc         ebx
  00000001400011B7: 42 89 5C 28 64     mov         dword ptr [rax+r13+64h],ebx
  00000001400011BC: 42 8B 5C 30 68     mov         ebx,dword ptr [rax+r14+68h]
  00000001400011C1: FF C3              inc         ebx
  00000001400011C3: 42 89 5C 28 68     mov         dword ptr [rax+r13+68h],ebx
  00000001400011C8: 42 8B 5C 30 6C     mov         ebx,dword ptr [rax+r14+6Ch]
  00000001400011CD: FF C3              inc         ebx
  00000001400011CF: 42 89 5C 28 6C     mov         dword ptr [rax+r13+6Ch],ebx
  00000001400011D4: 42 8B 5C 30 70     mov         ebx,dword ptr [rax+r14+70h]
  00000001400011D9: FF C3              inc         ebx
  00000001400011DB: 42 89 5C 28 70     mov         dword ptr [rax+r13+70h],ebx
  00000001400011E0: 42 8B 5C 30 74     mov         ebx,dword ptr [rax+r14+74h]
  00000001400011E5: FF C3              inc         ebx
  00000001400011E7: 42 89 5C 28 74     mov         dword ptr [rax+r13+74h],ebx
  00000001400011EC: 42 8B 5C 30 78     mov         ebx,dword ptr [rax+r14+78h]
  00000001400011F1: FF C3              inc         ebx
  00000001400011F3: 42 89 5C 28 78     mov         dword ptr [rax+r13+78h],ebx
  00000001400011F8: 42 8B 5C 30 7C     mov         ebx,dword ptr [rax+r14+7Ch]
  00000001400011FD: FF C3              inc         ebx
  00000001400011FF: 42 89 5C 28 7C     mov         dword ptr [rax+r13+7Ch],ebx
  0000000140001204: 42 8B 9C 30 80 00  mov         ebx,dword ptr [rax+r14+0000000000000080h]
                    00 00
  000000014000120C: FF C3              inc         ebx
  000000014000120E: 42 89 9C 28 80 00  mov         dword ptr [rax+r13+0000000000000080h],ebx
                    00 00
  0000000140001216: 42 8B 9C 30 84 00  mov         ebx,dword ptr [rax+r14+0000000000000084h]
                    00 00
  000000014000121E: FF C3              inc         ebx
  0000000140001220: 42 89 9C 28 84 00  mov         dword ptr [rax+r13+0000000000000084h],ebx
                    00 00
  0000000140001228: 42 8B 9C 30 88 00  mov         ebx,dword ptr [rax+r14+0000000000000088h]
                    00 00
  0000000140001230: FF C3              inc         ebx
  0000000140001232: 42 89 9C 28 88 00  mov         dword ptr [rax+r13+0000000000000088h],ebx
                    00 00
  000000014000123A: 42 8B 9C 30 8C 00  mov         ebx,dword ptr [rax+r14+000000000000008Ch]
                    00 00
  0000000140001242: FF C3              inc         ebx
  0000000140001244: 42 89 9C 28 8C 00  mov         dword ptr [rax+r13+000000000000008Ch],ebx
                    00 00
  000000014000124C: 42 8B 9C 30 90 00  mov         ebx,dword ptr [rax+r14+0000000000000090h]
                    00 00
  0000000140001254: FF C3              inc         ebx
  0000000140001256: 42 89 9C 28 90 00  mov         dword ptr [rax+r13+0000000000000090h],ebx
                    00 00
  000000014000125E: 42 8B 9C 30 94 00  mov         ebx,dword ptr [rax+r14+0000000000000094h]
                    00 00
  0000000140001266: FF C3              inc         ebx
  0000000140001268: 42 89 9C 28 94 00  mov         dword ptr [rax+r13+0000000000000094h],ebx
                    00 00
  0000000140001270: 42 8B 9C 30 98 00  mov         ebx,dword ptr [rax+r14+0000000000000098h]
                    00 00
  0000000140001278: FF C3              inc         ebx
  000000014000127A: 42 89 9C 28 98 00  mov         dword ptr [rax+r13+0000000000000098h],ebx
                    00 00
  0000000140001282: 42 8B 9C 30 9C 00  mov         ebx,dword ptr [rax+r14+000000000000009Ch]
                    00 00
  000000014000128A: FF C3              inc         ebx
  000000014000128C: 42 89 9C 28 9C 00  mov         dword ptr [rax+r13+000000000000009Ch],ebx
                    00 00
  0000000140001294: 42 8B 9C 30 A0 00  mov         ebx,dword ptr [rax+r14+00000000000000A0h]
                    00 00
  000000014000129C: FF C3              inc         ebx
  000000014000129E: 42 89 9C 28 A0 00  mov         dword ptr [rax+r13+00000000000000A0h],ebx
                    00 00
  00000001400012A6: 42 8B 9C 30 A4 00  mov         ebx,dword ptr [rax+r14+00000000000000A4h]
                    00 00
  00000001400012AE: FF C3              inc         ebx
  00000001400012B0: 42 89 9C 28 A4 00  mov         dword ptr [rax+r13+00000000000000A4h],ebx
                    00 00
  00000001400012B8: 42 8B 9C 30 A8 00  mov         ebx,dword ptr [rax+r14+00000000000000A8h]
                    00 00
  00000001400012C0: FF C3              inc         ebx
  00000001400012C2: 42 89 9C 28 A8 00  mov         dword ptr [rax+r13+00000000000000A8h],ebx
                    00 00
  00000001400012CA: 42 8B 9C 30 AC 00  mov         ebx,dword ptr [rax+r14+00000000000000ACh]
                    00 00
  00000001400012D2: FF C3              inc         ebx
  00000001400012D4: 42 89 9C 28 AC 00  mov         dword ptr [rax+r13+00000000000000ACh],ebx
                    00 00
  00000001400012DC: 42 8B 9C 30 B0 00  mov         ebx,dword ptr [rax+r14+00000000000000B0h]
                    00 00
  00000001400012E4: FF C3              inc         ebx
  00000001400012E6: 42 89 9C 28 B0 00  mov         dword ptr [rax+r13+00000000000000B0h],ebx
                    00 00
  00000001400012EE: 42 8B 9C 30 B4 00  mov         ebx,dword ptr [rax+r14+00000000000000B4h]
                    00 00
  00000001400012F6: FF C3              inc         ebx
  00000001400012F8: 42 89 9C 28 B4 00  mov         dword ptr [rax+r13+00000000000000B4h],ebx
                    00 00
  0000000140001300: 42 8B 9C 30 B8 00  mov         ebx,dword ptr [rax+r14+00000000000000B8h]
                    00 00
  0000000140001308: FF C3              inc         ebx
  000000014000130A: 42 89 9C 28 B8 00  mov         dword ptr [rax+r13+00000000000000B8h],ebx
                    00 00
  0000000140001312: 42 8B 9C 30 BC 00  mov         ebx,dword ptr [rax+r14+00000000000000BCh]
                    00 00
  000000014000131A: FF C3              inc         ebx
  000000014000131C: 42 89 9C 28 BC 00  mov         dword ptr [rax+r13+00000000000000BCh],ebx
                    00 00
  0000000140001324: 42 8B 9C 30 C0 00  mov         ebx,dword ptr [rax+r14+00000000000000C0h]
                    00 00
  000000014000132C: FF C3              inc         ebx
  000000014000132E: 42 89 9C 28 C0 00  mov         dword ptr [rax+r13+00000000000000C0h],ebx
                    00 00
  0000000140001336: 42 8B 9C 30 C4 00  mov         ebx,dword ptr [rax+r14+00000000000000C4h]
                    00 00
  000000014000133E: FF C3              inc         ebx
  0000000140001340: 42 89 9C 28 C4 00  mov         dword ptr [rax+r13+00000000000000C4h],ebx
                    00 00
  0000000140001348: 42 8B 9C 30 C8 00  mov         ebx,dword ptr [rax+r14+00000000000000C8h]
                    00 00
  0000000140001350: FF C3              inc         ebx
  0000000140001352: 42 89 9C 28 C8 00  mov         dword ptr [rax+r13+00000000000000C8h],ebx
                    00 00
  000000014000135A: 42 8B 9C 30 CC 00  mov         ebx,dword ptr [rax+r14+00000000000000CCh]
                    00 00
  0000000140001362: FF C3              inc         ebx
  0000000140001364: 42 89 9C 28 CC 00  mov         dword ptr [rax+r13+00000000000000CCh],ebx
                    00 00
  000000014000136C: 42 8B 9C 30 D0 00  mov         ebx,dword ptr [rax+r14+00000000000000D0h]
                    00 00
  0000000140001374: FF C3              inc         ebx
  0000000140001376: 42 89 9C 28 D0 00  mov         dword ptr [rax+r13+00000000000000D0h],ebx
                    00 00
  000000014000137E: 42 8B 9C 30 D4 00  mov         ebx,dword ptr [rax+r14+00000000000000D4h]
                    00 00
  0000000140001386: FF C3              inc         ebx
  0000000140001388: 42 89 9C 28 D4 00  mov         dword ptr [rax+r13+00000000000000D4h],ebx
                    00 00
  0000000140001390: 42 8B 9C 30 D8 00  mov         ebx,dword ptr [rax+r14+00000000000000D8h]
                    00 00
  0000000140001398: FF C3              inc         ebx
  000000014000139A: 42 89 9C 28 D8 00  mov         dword ptr [rax+r13+00000000000000D8h],ebx
                    00 00
  00000001400013A2: 42 8B 9C 30 DC 00  mov         ebx,dword ptr [rax+r14+00000000000000DCh]
                    00 00
  00000001400013AA: FF C3              inc         ebx
  00000001400013AC: 42 89 9C 28 DC 00  mov         dword ptr [rax+r13+00000000000000DCh],ebx
                    00 00
  00000001400013B4: 42 8B 9C 30 E0 00  mov         ebx,dword ptr [rax+r14+00000000000000E0h]
                    00 00
  00000001400013BC: FF C3              inc         ebx
  00000001400013BE: 42 89 9C 28 E0 00  mov         dword ptr [rax+r13+00000000000000E0h],ebx
                    00 00
  00000001400013C6: 42 8B 9C 30 E4 00  mov         ebx,dword ptr [rax+r14+00000000000000E4h]
                    00 00
  00000001400013CE: FF C3              inc         ebx
  00000001400013D0: 42 89 9C 28 E4 00  mov         dword ptr [rax+r13+00000000000000E4h],ebx
                    00 00
  00000001400013D8: 42 8B 9C 30 E8 00  mov         ebx,dword ptr [rax+r14+00000000000000E8h]
                    00 00
  00000001400013E0: FF C3              inc         ebx
  00000001400013E2: 42 89 9C 28 E8 00  mov         dword ptr [rax+r13+00000000000000E8h],ebx
                    00 00
  00000001400013EA: 42 8B 9C 30 EC 00  mov         ebx,dword ptr [rax+r14+00000000000000ECh]
                    00 00
  00000001400013F2: FF C3              inc         ebx
  00000001400013F4: 42 89 9C 28 EC 00  mov         dword ptr [rax+r13+00000000000000ECh],ebx
                    00 00
  00000001400013FC: 42 8B 9C 30 F0 00  mov         ebx,dword ptr [rax+r14+00000000000000F0h]
                    00 00
  0000000140001404: FF C3              inc         ebx
  0000000140001406: 42 89 9C 28 F0 00  mov         dword ptr [rax+r13+00000000000000F0h],ebx
                    00 00
  000000014000140E: 42 8B 9C 30 F4 00  mov         ebx,dword ptr [rax+r14+00000000000000F4h]
                    00 00
  0000000140001416: FF C3              inc         ebx
  0000000140001418: 42 89 9C 28 F4 00  mov         dword ptr [rax+r13+00000000000000F4h],ebx
                    00 00
  0000000140001420: 42 8B 9C 30 F8 00  mov         ebx,dword ptr [rax+r14+00000000000000F8h]
                    00 00
  0000000140001428: FF C3              inc         ebx
  000000014000142A: 42 89 9C 28 F8 00  mov         dword ptr [rax+r13+00000000000000F8h],ebx
                    00 00
  0000000140001432: 42 8B 9C 30 FC 00  mov         ebx,dword ptr [rax+r14+00000000000000FCh]
                    00 00
  000000014000143A: FF C3              inc         ebx
  000000014000143C: 42 89 9C 28 FC 00  mov         dword ptr [rax+r13+00000000000000FCh],ebx
                    00 00
  0000000140001444: 42 8B 9C 30 00 01  mov         ebx,dword ptr [rax+r14+0000000000000100h]
                    00 00
  000000014000144C: FF C3              inc         ebx
  000000014000144E: 42 89 9C 28 00 01  mov         dword ptr [rax+r13+0000000000000100h],ebx
                    00 00
  0000000140001456: 42 8B 9C 30 04 01  mov         ebx,dword ptr [rax+r14+0000000000000104h]
                    00 00
  000000014000145E: FF C3              inc         ebx
  0000000140001460: 42 89 9C 28 04 01  mov         dword ptr [rax+r13+0000000000000104h],ebx
                    00 00
  0000000140001468: 42 8B 9C 30 08 01  mov         ebx,dword ptr [rax+r14+0000000000000108h]
                    00 00
  0000000140001470: FF C3              inc         ebx
  0000000140001472: 42 89 9C 28 08 01  mov         dword ptr [rax+r13+0000000000000108h],ebx
                    00 00
  000000014000147A: 42 8B 9C 30 0C 01  mov         ebx,dword ptr [rax+r14+000000000000010Ch]
                    00 00
  0000000140001482: FF C3              inc         ebx
  0000000140001484: 42 89 9C 28 0C 01  mov         dword ptr [rax+r13+000000000000010Ch],ebx
                    00 00
  000000014000148C: 42 8B 9C 30 10 01  mov         ebx,dword ptr [rax+r14+0000000000000110h]
                    00 00
  0000000140001494: FF C3              inc         ebx
  0000000140001496: 42 89 9C 28 10 01  mov         dword ptr [rax+r13+0000000000000110h],ebx
                    00 00
  000000014000149E: 42 8B 9C 30 14 01  mov         ebx,dword ptr [rax+r14+0000000000000114h]
                    00 00
  00000001400014A6: FF C3              inc         ebx
  00000001400014A8: 42 89 9C 28 14 01  mov         dword ptr [rax+r13+0000000000000114h],ebx
                    00 00
  00000001400014B0: 42 8B 9C 30 18 01  mov         ebx,dword ptr [rax+r14+0000000000000118h]
                    00 00
  00000001400014B8: FF C3              inc         ebx
  00000001400014BA: 42 89 9C 28 18 01  mov         dword ptr [rax+r13+0000000000000118h],ebx
                    00 00
  00000001400014C2: 42 8B 9C 30 1C 01  mov         ebx,dword ptr [rax+r14+000000000000011Ch]
                    00 00
  00000001400014CA: FF C3              inc         ebx
  00000001400014CC: 42 89 9C 28 1C 01  mov         dword ptr [rax+r13+000000000000011Ch],ebx
                    00 00
  00000001400014D4: 42 8B 9C 30 20 01  mov         ebx,dword ptr [rax+r14+0000000000000120h]
                    00 00
  00000001400014DC: FF C3              inc         ebx
  00000001400014DE: 42 89 9C 28 20 01  mov         dword ptr [rax+r13+0000000000000120h],ebx
                    00 00
  00000001400014E6: 42 8B 9C 30 24 01  mov         ebx,dword ptr [rax+r14+0000000000000124h]
                    00 00
  00000001400014EE: FF C3              inc         ebx
  00000001400014F0: 42 89 9C 28 24 01  mov         dword ptr [rax+r13+0000000000000124h],ebx
                    00 00
  00000001400014F8: 42 8B 9C 30 28 01  mov         ebx,dword ptr [rax+r14+0000000000000128h]
                    00 00
  0000000140001500: FF C3              inc         ebx
  0000000140001502: 42 89 9C 28 28 01  mov         dword ptr [rax+r13+0000000000000128h],ebx
                    00 00
  000000014000150A: 42 8B 9C 30 2C 01  mov         ebx,dword ptr [rax+r14+000000000000012Ch]
                    00 00
  0000000140001512: FF C3              inc         ebx
  0000000140001514: 42 89 9C 28 2C 01  mov         dword ptr [rax+r13+000000000000012Ch],ebx
                    00 00
  000000014000151C: 42 8B 9C 30 30 01  mov         ebx,dword ptr [rax+r14+0000000000000130h]
                    00 00
  0000000140001524: FF C3              inc         ebx
  0000000140001526: 42 89 9C 28 30 01  mov         dword ptr [rax+r13+0000000000000130h],ebx
                    00 00
  000000014000152E: 42 8B 9C 30 34 01  mov         ebx,dword ptr [rax+r14+0000000000000134h]
                    00 00
  0000000140001536: FF C3              inc         ebx
  0000000140001538: 42 89 9C 28 34 01  mov         dword ptr [rax+r13+0000000000000134h],ebx
                    00 00
  0000000140001540: 42 8B 9C 30 38 01  mov         ebx,dword ptr [rax+r14+0000000000000138h]
                    00 00
  0000000140001548: FF C3              inc         ebx
  000000014000154A: 42 89 9C 28 38 01  mov         dword ptr [rax+r13+0000000000000138h],ebx
                    00 00
  0000000140001552: 42 8B 9C 30 3C 01  mov         ebx,dword ptr [rax+r14+000000000000013Ch]
                    00 00
  000000014000155A: FF C3              inc         ebx
  000000014000155C: 42 89 9C 28 3C 01  mov         dword ptr [rax+r13+000000000000013Ch],ebx
                    00 00
  0000000140001564: 42 8B 9C 30 40 01  mov         ebx,dword ptr [rax+r14+0000000000000140h]
                    00 00
  000000014000156C: FF C3              inc         ebx
  000000014000156E: 42 89 9C 28 40 01  mov         dword ptr [rax+r13+0000000000000140h],ebx
                    00 00
  0000000140001576: 42 8B 9C 30 44 01  mov         ebx,dword ptr [rax+r14+0000000000000144h]
                    00 00
  000000014000157E: FF C3              inc         ebx
  0000000140001580: 42 89 9C 28 44 01  mov         dword ptr [rax+r13+0000000000000144h],ebx
                    00 00
  0000000140001588: 42 8B 9C 30 48 01  mov         ebx,dword ptr [rax+r14+0000000000000148h]
                    00 00
  0000000140001590: FF C3              inc         ebx
  0000000140001592: 42 89 9C 28 48 01  mov         dword ptr [rax+r13+0000000000000148h],ebx
                    00 00
  000000014000159A: 42 8B 9C 30 4C 01  mov         ebx,dword ptr [rax+r14+000000000000014Ch]
                    00 00
  00000001400015A2: FF C3              inc         ebx
  00000001400015A4: 42 89 9C 28 4C 01  mov         dword ptr [rax+r13+000000000000014Ch],ebx
                    00 00
  00000001400015AC: 42 8B 9C 30 50 01  mov         ebx,dword ptr [rax+r14+0000000000000150h]
                    00 00
  00000001400015B4: FF C3              inc         ebx
  00000001400015B6: 42 89 9C 28 50 01  mov         dword ptr [rax+r13+0000000000000150h],ebx
                    00 00
  00000001400015BE: 42 8B 9C 30 54 01  mov         ebx,dword ptr [rax+r14+0000000000000154h]
                    00 00
  00000001400015C6: FF C3              inc         ebx
  00000001400015C8: 42 89 9C 28 54 01  mov         dword ptr [rax+r13+0000000000000154h],ebx
                    00 00
  00000001400015D0: 42 8B 9C 30 58 01  mov         ebx,dword ptr [rax+r14+0000000000000158h]
                    00 00
  00000001400015D8: FF C3              inc         ebx
  00000001400015DA: 42 89 9C 28 58 01  mov         dword ptr [rax+r13+0000000000000158h],ebx
                    00 00
  00000001400015E2: 42 8B 9C 30 5C 01  mov         ebx,dword ptr [rax+r14+000000000000015Ch]
                    00 00
  00000001400015EA: FF C3              inc         ebx
  00000001400015EC: 42 89 9C 28 5C 01  mov         dword ptr [rax+r13+000000000000015Ch],ebx
                    00 00
  00000001400015F4: 42 8B 9C 30 60 01  mov         ebx,dword ptr [rax+r14+0000000000000160h]
                    00 00
  00000001400015FC: FF C3              inc         ebx
  00000001400015FE: 42 89 9C 28 60 01  mov         dword ptr [rax+r13+0000000000000160h],ebx
                    00 00
  0000000140001606: 42 8B 9C 30 64 01  mov         ebx,dword ptr [rax+r14+0000000000000164h]
                    00 00
  000000014000160E: FF C3              inc         ebx
  0000000140001610: 42 89 9C 28 64 01  mov         dword ptr [rax+r13+0000000000000164h],ebx
                    00 00
  0000000140001618: 42 8B 9C 30 68 01  mov         ebx,dword ptr [rax+r14+0000000000000168h]
                    00 00
  0000000140001620: FF C3              inc         ebx
  0000000140001622: 42 89 9C 28 68 01  mov         dword ptr [rax+r13+0000000000000168h],ebx
                    00 00
  000000014000162A: 42 8B 9C 30 6C 01  mov         ebx,dword ptr [rax+r14+000000000000016Ch]
                    00 00
  0000000140001632: FF C3              inc         ebx
  0000000140001634: 42 89 9C 28 6C 01  mov         dword ptr [rax+r13+000000000000016Ch],ebx
                    00 00
  000000014000163C: 42 8B 9C 30 70 01  mov         ebx,dword ptr [rax+r14+0000000000000170h]
                    00 00
  0000000140001644: FF C3              inc         ebx
  0000000140001646: 42 89 9C 28 70 01  mov         dword ptr [rax+r13+0000000000000170h],ebx
                    00 00
  000000014000164E: 42 8B 9C 30 74 01  mov         ebx,dword ptr [rax+r14+0000000000000174h]
                    00 00
  0000000140001656: FF C3              inc         ebx
  0000000140001658: 42 89 9C 28 74 01  mov         dword ptr [rax+r13+0000000000000174h],ebx
                    00 00
  0000000140001660: 42 8B 9C 30 78 01  mov         ebx,dword ptr [rax+r14+0000000000000178h]
                    00 00
  0000000140001668: FF C3              inc         ebx
  000000014000166A: 42 89 9C 28 78 01  mov         dword ptr [rax+r13+0000000000000178h],ebx
                    00 00
  0000000140001672: 42 8B 9C 30 7C 01  mov         ebx,dword ptr [rax+r14+000000000000017Ch]
                    00 00
  000000014000167A: FF C3              inc         ebx
  000000014000167C: 42 89 9C 28 7C 01  mov         dword ptr [rax+r13+000000000000017Ch],ebx
                    00 00
  0000000140001684: 42 8B 9C 30 80 01  mov         ebx,dword ptr [rax+r14+0000000000000180h]
                    00 00
  000000014000168C: FF C3              inc         ebx
  000000014000168E: 42 89 9C 28 80 01  mov         dword ptr [rax+r13+0000000000000180h],ebx
                    00 00
  0000000140001696: 42 8B 9C 30 84 01  mov         ebx,dword ptr [rax+r14+0000000000000184h]
                    00 00
  000000014000169E: FF C3              inc         ebx
  00000001400016A0: 42 89 9C 28 84 01  mov         dword ptr [rax+r13+0000000000000184h],ebx
                    00 00
  00000001400016A8: 42 8B 9C 30 88 01  mov         ebx,dword ptr [rax+r14+0000000000000188h]
                    00 00
  00000001400016B0: FF C3              inc         ebx
  00000001400016B2: 42 89 9C 28 88 01  mov         dword ptr [rax+r13+0000000000000188h],ebx
                    00 00
  00000001400016BA: 42 8B 9C 30 8C 01  mov         ebx,dword ptr [rax+r14+000000000000018Ch]
                    00 00
  00000001400016C2: FF C3              inc         ebx
  00000001400016C4: 42 89 9C 28 8C 01  mov         dword ptr [rax+r13+000000000000018Ch],ebx
                    00 00
  00000001400016CC: 42 8B 9C 30 90 01  mov         ebx,dword ptr [rax+r14+0000000000000190h]
                    00 00
  00000001400016D4: FF C3              inc         ebx
  00000001400016D6: 42 89 9C 28 90 01  mov         dword ptr [rax+r13+0000000000000190h],ebx
                    00 00
  00000001400016DE: 42 8B 9C 30 94 01  mov         ebx,dword ptr [rax+r14+0000000000000194h]
                    00 00
  00000001400016E6: FF C3              inc         ebx
  00000001400016E8: 42 89 9C 28 94 01  mov         dword ptr [rax+r13+0000000000000194h],ebx
                    00 00
  00000001400016F0: 42 8B 9C 30 98 01  mov         ebx,dword ptr [rax+r14+0000000000000198h]
                    00 00
  00000001400016F8: FF C3              inc         ebx
  00000001400016FA: 42 89 9C 28 98 01  mov         dword ptr [rax+r13+0000000000000198h],ebx
                    00 00
  0000000140001702: 42 8B 9C 30 9C 01  mov         ebx,dword ptr [rax+r14+000000000000019Ch]
                    00 00
  000000014000170A: FF C3              inc         ebx
  000000014000170C: 42 89 9C 28 9C 01  mov         dword ptr [rax+r13+000000000000019Ch],ebx
                    00 00
  0000000140001714: 42 8B 9C 30 A0 01  mov         ebx,dword ptr [rax+r14+00000000000001A0h]
                    00 00
  000000014000171C: FF C3              inc         ebx
  000000014000171E: 42 89 9C 28 A0 01  mov         dword ptr [rax+r13+00000000000001A0h],ebx
                    00 00
  0000000140001726: 42 8B 9C 30 A4 01  mov         ebx,dword ptr [rax+r14+00000000000001A4h]
                    00 00
  000000014000172E: FF C3              inc         ebx
  0000000140001730: 42 89 9C 28 A4 01  mov         dword ptr [rax+r13+00000000000001A4h],ebx
                    00 00
  0000000140001738: 42 8B 9C 30 A8 01  mov         ebx,dword ptr [rax+r14+00000000000001A8h]
                    00 00
  0000000140001740: FF C3              inc         ebx
  0000000140001742: 42 89 9C 28 A8 01  mov         dword ptr [rax+r13+00000000000001A8h],ebx
                    00 00
  000000014000174A: 42 8B 9C 30 AC 01  mov         ebx,dword ptr [rax+r14+00000000000001ACh]
                    00 00
  0000000140001752: FF C3              inc         ebx
  0000000140001754: 42 89 9C 28 AC 01  mov         dword ptr [rax+r13+00000000000001ACh],ebx
                    00 00
  000000014000175C: 42 8B 9C 30 B0 01  mov         ebx,dword ptr [rax+r14+00000000000001B0h]
                    00 00
  0000000140001764: FF C3              inc         ebx
  0000000140001766: 42 89 9C 28 B0 01  mov         dword ptr [rax+r13+00000000000001B0h],ebx
                    00 00
  000000014000176E: 42 8B 9C 30 B4 01  mov         ebx,dword ptr [rax+r14+00000000000001B4h]
                    00 00
  0000000140001776: FF C3              inc         ebx
  0000000140001778: 42 89 9C 28 B4 01  mov         dword ptr [rax+r13+00000000000001B4h],ebx
                    00 00
  0000000140001780: 42 8B 9C 30 B8 01  mov         ebx,dword ptr [rax+r14+00000000000001B8h]
                    00 00
  0000000140001788: FF C3              inc         ebx
  000000014000178A: 42 89 9C 28 B8 01  mov         dword ptr [rax+r13+00000000000001B8h],ebx
                    00 00
  0000000140001792: 42 8B 9C 30 BC 01  mov         ebx,dword ptr [rax+r14+00000000000001BCh]
                    00 00
  000000014000179A: FF C3              inc         ebx
  000000014000179C: 42 89 9C 28 BC 01  mov         dword ptr [rax+r13+00000000000001BCh],ebx
                    00 00
  00000001400017A4: 42 8B 9C 30 C0 01  mov         ebx,dword ptr [rax+r14+00000000000001C0h]
                    00 00
  00000001400017AC: FF C3              inc         ebx
  00000001400017AE: 42 89 9C 28 C0 01  mov         dword ptr [rax+r13+00000000000001C0h],ebx
                    00 00
  00000001400017B6: 42 8B 9C 30 C4 01  mov         ebx,dword ptr [rax+r14+00000000000001C4h]
                    00 00
  00000001400017BE: FF C3              inc         ebx
  00000001400017C0: 42 89 9C 28 C4 01  mov         dword ptr [rax+r13+00000000000001C4h],ebx
                    00 00
  00000001400017C8: 42 8B 9C 30 C8 01  mov         ebx,dword ptr [rax+r14+00000000000001C8h]
                    00 00
  00000001400017D0: FF C3              inc         ebx
  00000001400017D2: 42 89 9C 28 C8 01  mov         dword ptr [rax+r13+00000000000001C8h],ebx
                    00 00
  00000001400017DA: 42 8B 9C 30 CC 01  mov         ebx,dword ptr [rax+r14+00000000000001CCh]
                    00 00
  00000001400017E2: FF C3              inc         ebx
  00000001400017E4: 42 89 9C 28 CC 01  mov         dword ptr [rax+r13+00000000000001CCh],ebx
                    00 00
  00000001400017EC: 42 8B 9C 30 D0 01  mov         ebx,dword ptr [rax+r14+00000000000001D0h]
                    00 00
  00000001400017F4: FF C3              inc         ebx
  00000001400017F6: 42 89 9C 28 D0 01  mov         dword ptr [rax+r13+00000000000001D0h],ebx
                    00 00
  00000001400017FE: 42 8B 9C 30 D4 01  mov         ebx,dword ptr [rax+r14+00000000000001D4h]
                    00 00
  0000000140001806: FF C3              inc         ebx
  0000000140001808: 42 89 9C 28 D4 01  mov         dword ptr [rax+r13+00000000000001D4h],ebx
                    00 00
  0000000140001810: 42 8B 9C 30 D8 01  mov         ebx,dword ptr [rax+r14+00000000000001D8h]
                    00 00
  0000000140001818: FF C3              inc         ebx
  000000014000181A: 42 89 9C 28 D8 01  mov         dword ptr [rax+r13+00000000000001D8h],ebx
                    00 00
  0000000140001822: 42 8B 9C 30 DC 01  mov         ebx,dword ptr [rax+r14+00000000000001DCh]
                    00 00
  000000014000182A: FF C3              inc         ebx
  000000014000182C: 42 89 9C 28 DC 01  mov         dword ptr [rax+r13+00000000000001DCh],ebx
                    00 00
  0000000140001834: 42 8B 9C 30 E0 01  mov         ebx,dword ptr [rax+r14+00000000000001E0h]
                    00 00
  000000014000183C: FF C3              inc         ebx
  000000014000183E: 42 89 9C 28 E0 01  mov         dword ptr [rax+r13+00000000000001E0h],ebx
                    00 00
  0000000140001846: 42 8B 9C 30 E4 01  mov         ebx,dword ptr [rax+r14+00000000000001E4h]
                    00 00
  000000014000184E: FF C3              inc         ebx
  0000000140001850: 42 89 9C 28 E4 01  mov         dword ptr [rax+r13+00000000000001E4h],ebx
                    00 00
  0000000140001858: 42 8B 9C 30 E8 01  mov         ebx,dword ptr [rax+r14+00000000000001E8h]
                    00 00
  0000000140001860: FF C3              inc         ebx
  0000000140001862: 42 89 9C 28 E8 01  mov         dword ptr [rax+r13+00000000000001E8h],ebx
                    00 00
  000000014000186A: 42 8B 9C 30 EC 01  mov         ebx,dword ptr [rax+r14+00000000000001ECh]
                    00 00
  0000000140001872: FF C3              inc         ebx
  0000000140001874: 42 89 9C 28 EC 01  mov         dword ptr [rax+r13+00000000000001ECh],ebx
                    00 00
  000000014000187C: 42 8B 9C 30 F0 01  mov         ebx,dword ptr [rax+r14+00000000000001F0h]
                    00 00
  0000000140001884: FF C3              inc         ebx
  0000000140001886: 42 89 9C 28 F0 01  mov         dword ptr [rax+r13+00000000000001F0h],ebx
                    00 00
  000000014000188E: 42 8B 9C 30 F4 01  mov         ebx,dword ptr [rax+r14+00000000000001F4h]
                    00 00
  0000000140001896: FF C3              inc         ebx
  0000000140001898: 42 89 9C 28 F4 01  mov         dword ptr [rax+r13+00000000000001F4h],ebx
                    00 00
  00000001400018A0: 42 8B 9C 30 F8 01  mov         ebx,dword ptr [rax+r14+00000000000001F8h]
                    00 00
  00000001400018A8: FF C3              inc         ebx
  00000001400018AA: 42 89 9C 28 F8 01  mov         dword ptr [rax+r13+00000000000001F8h],ebx
                    00 00
  00000001400018B2: 42 8B 9C 30 FC 01  mov         ebx,dword ptr [rax+r14+00000000000001FCh]
                    00 00
  00000001400018BA: FF C3              inc         ebx
  00000001400018BC: 42 89 9C 28 FC 01  mov         dword ptr [rax+r13+00000000000001FCh],ebx
                    00 00
  00000001400018C4: 42 8B 9C 30 00 02  mov         ebx,dword ptr [rax+r14+0000000000000200h]
                    00 00
  00000001400018CC: FF C3              inc         ebx
  00000001400018CE: 42 89 9C 28 00 02  mov         dword ptr [rax+r13+0000000000000200h],ebx
                    00 00
  00000001400018D6: 42 8B 9C 30 04 02  mov         ebx,dword ptr [rax+r14+0000000000000204h]
                    00 00
  00000001400018DE: FF C3              inc         ebx
  00000001400018E0: 42 89 9C 28 04 02  mov         dword ptr [rax+r13+0000000000000204h],ebx
                    00 00
  00000001400018E8: 42 8B 9C 30 08 02  mov         ebx,dword ptr [rax+r14+0000000000000208h]
                    00 00
  00000001400018F0: FF C3              inc         ebx
  00000001400018F2: 42 89 9C 28 08 02  mov         dword ptr [rax+r13+0000000000000208h],ebx
                    00 00
  00000001400018FA: 42 8B 9C 30 0C 02  mov         ebx,dword ptr [rax+r14+000000000000020Ch]
                    00 00
  0000000140001902: FF C3              inc         ebx
  0000000140001904: 46 8B 44 30 08     mov         r8d,dword ptr [rax+r14+8]
  0000000140001909: 46 8B 4C 30 0C     mov         r9d,dword ptr [rax+r14+0Ch]
  000000014000190E: 41 FF C0           inc         r8d
  0000000140001911: 46 8B 54 30 10     mov         r10d,dword ptr [rax+r14+10h]
  0000000140001916: 41 FF C1           inc         r9d
  0000000140001919: 46 8B 5C 30 14     mov         r11d,dword ptr [rax+r14+14h]
  000000014000191E: 41 FF C2           inc         r10d
  0000000140001921: 42 89 9C 28 0C 02  mov         dword ptr [rax+r13+000000000000020Ch],ebx
                    00 00
  0000000140001929: 41 FF C3           inc         r11d
  000000014000192C: 42 8B 9C 30 10 02  mov         ebx,dword ptr [rax+r14+0000000000000210h]
                    00 00
  0000000140001934: 46 89 44 28 08     mov         dword ptr [rax+r13+8],r8d
  0000000140001939: FF C3              inc         ebx
  000000014000193B: 46 89 4C 28 0C     mov         dword ptr [rax+r13+0Ch],r9d
  0000000140001940: 46 89 54 28 10     mov         dword ptr [rax+r13+10h],r10d
  0000000140001945: 46 89 5C 28 14     mov         dword ptr [rax+r13+14h],r11d
  000000014000194A: 42 89 9C 28 10 02  mov         dword ptr [rax+r13+0000000000000210h],ebx
                    00 00
  0000000140001952: FE C2              inc         dl
  0000000140001954: 42 8B 9C 30 14 02  mov         ebx,dword ptr [rax+r14+0000000000000214h]
                    00 00
  000000014000195C: FF C3              inc         ebx
  000000014000195E: 42 89 9C 28 14 02  mov         dword ptr [rax+r13+0000000000000214h],ebx
                    00 00
  0000000140001966: 42 8B 9C 30 28 02  mov         ebx,dword ptr [rax+r14+0000000000000228h]
                    00 00
  000000014000196E: FF C3              inc         ebx
  0000000140001970: 42 89 9C 28 28 02  mov         dword ptr [rax+r13+0000000000000228h],ebx
                    00 00
  0000000140001978: 42 8B 9C 30 2C 02  mov         ebx,dword ptr [rax+r14+000000000000022Ch]
                    00 00
  0000000140001980: FF C3              inc         ebx
  0000000140001982: 42 89 9C 28 2C 02  mov         dword ptr [rax+r13+000000000000022Ch],ebx
                    00 00
  000000014000198A: 42 8B 9C 30 30 02  mov         ebx,dword ptr [rax+r14+0000000000000230h]
                    00 00
  0000000140001992: FF C3              inc         ebx
  0000000140001994: 42 89 9C 28 30 02  mov         dword ptr [rax+r13+0000000000000230h],ebx
                    00 00
  000000014000199C: 42 8B 9C 30 34 02  mov         ebx,dword ptr [rax+r14+0000000000000234h]
                    00 00
  00000001400019A4: FF C3              inc         ebx
  00000001400019A6: 42 89 9C 28 34 02  mov         dword ptr [rax+r13+0000000000000234h],ebx
                    00 00
  00000001400019AE: 42 8B 9C 30 38 02  mov         ebx,dword ptr [rax+r14+0000000000000238h]
                    00 00
  00000001400019B6: FF C3              inc         ebx
  00000001400019B8: 42 89 9C 28 38 02  mov         dword ptr [rax+r13+0000000000000238h],ebx
                    00 00
  00000001400019C0: 42 8B 9C 30 3C 02  mov         ebx,dword ptr [rax+r14+000000000000023Ch]
                    00 00
  00000001400019C8: FF C3              inc         ebx
  00000001400019CA: 42 89 9C 28 3C 02  mov         dword ptr [rax+r13+000000000000023Ch],ebx
                    00 00
  00000001400019D2: 42 8B 9C 30 40 02  mov         ebx,dword ptr [rax+r14+0000000000000240h]
                    00 00
  00000001400019DA: FF C3              inc         ebx
  00000001400019DC: 42 89 9C 28 40 02  mov         dword ptr [rax+r13+0000000000000240h],ebx
                    00 00
  00000001400019E4: 42 8B 9C 30 44 02  mov         ebx,dword ptr [rax+r14+0000000000000244h]
                    00 00
  00000001400019EC: FF C3              inc         ebx
  00000001400019EE: 42 89 9C 28 44 02  mov         dword ptr [rax+r13+0000000000000244h],ebx
                    00 00
  00000001400019F6: 42 8B 9C 30 48 02  mov         ebx,dword ptr [rax+r14+0000000000000248h]
                    00 00
  00000001400019FE: FF C3              inc         ebx
  0000000140001A00: 42 89 9C 28 48 02  mov         dword ptr [rax+r13+0000000000000248h],ebx
                    00 00
  0000000140001A08: 42 8B 9C 30 4C 02  mov         ebx,dword ptr [rax+r14+000000000000024Ch]
                    00 00
  0000000140001A10: FF C3              inc         ebx
  0000000140001A12: 42 89 9C 28 4C 02  mov         dword ptr [rax+r13+000000000000024Ch],ebx
                    00 00
  0000000140001A1A: 42 8B 9C 30 50 02  mov         ebx,dword ptr [rax+r14+0000000000000250h]
                    00 00
  0000000140001A22: FF C3              inc         ebx
  0000000140001A24: 42 89 9C 28 50 02  mov         dword ptr [rax+r13+0000000000000250h],ebx
                    00 00
  0000000140001A2C: 42 8B 9C 30 54 02  mov         ebx,dword ptr [rax+r14+0000000000000254h]
                    00 00
  0000000140001A34: FF C3              inc         ebx
  0000000140001A36: 42 89 9C 28 54 02  mov         dword ptr [rax+r13+0000000000000254h],ebx
                    00 00
  0000000140001A3E: 42 8B 9C 30 58 02  mov         ebx,dword ptr [rax+r14+0000000000000258h]
                    00 00
  0000000140001A46: FF C3              inc         ebx
  0000000140001A48: 42 89 9C 28 58 02  mov         dword ptr [rax+r13+0000000000000258h],ebx
                    00 00
  0000000140001A50: 42 8B 9C 30 5C 02  mov         ebx,dword ptr [rax+r14+000000000000025Ch]
                    00 00
  0000000140001A58: FF C3              inc         ebx
  0000000140001A5A: 42 89 9C 28 5C 02  mov         dword ptr [rax+r13+000000000000025Ch],ebx
                    00 00
  0000000140001A62: 42 8B 9C 30 60 02  mov         ebx,dword ptr [rax+r14+0000000000000260h]
                    00 00
  0000000140001A6A: FF C3              inc         ebx
  0000000140001A6C: 42 89 9C 28 60 02  mov         dword ptr [rax+r13+0000000000000260h],ebx
                    00 00
  0000000140001A74: 42 8B 9C 30 64 02  mov         ebx,dword ptr [rax+r14+0000000000000264h]
                    00 00
  0000000140001A7C: FF C3              inc         ebx
  0000000140001A7E: 42 89 9C 28 64 02  mov         dword ptr [rax+r13+0000000000000264h],ebx
                    00 00
  0000000140001A86: 42 8B 9C 30 68 02  mov         ebx,dword ptr [rax+r14+0000000000000268h]
                    00 00
  0000000140001A8E: FF C3              inc         ebx
  0000000140001A90: 42 89 9C 28 68 02  mov         dword ptr [rax+r13+0000000000000268h],ebx
                    00 00
  0000000140001A98: 42 8B 9C 30 6C 02  mov         ebx,dword ptr [rax+r14+000000000000026Ch]
                    00 00
  0000000140001AA0: FF C3              inc         ebx
  0000000140001AA2: 42 89 9C 28 6C 02  mov         dword ptr [rax+r13+000000000000026Ch],ebx
                    00 00
  0000000140001AAA: 42 8B 9C 30 70 02  mov         ebx,dword ptr [rax+r14+0000000000000270h]
                    00 00
  0000000140001AB2: FF C3              inc         ebx
  0000000140001AB4: 42 89 9C 28 70 02  mov         dword ptr [rax+r13+0000000000000270h],ebx
                    00 00
  0000000140001ABC: 42 8B 9C 30 74 02  mov         ebx,dword ptr [rax+r14+0000000000000274h]
                    00 00
  0000000140001AC4: FF C3              inc         ebx
  0000000140001AC6: 42 89 9C 28 74 02  mov         dword ptr [rax+r13+0000000000000274h],ebx
                    00 00
  0000000140001ACE: 42 8B 9C 30 78 02  mov         ebx,dword ptr [rax+r14+0000000000000278h]
                    00 00
  0000000140001AD6: FF C3              inc         ebx
  0000000140001AD8: 42 89 9C 28 78 02  mov         dword ptr [rax+r13+0000000000000278h],ebx
                    00 00
  0000000140001AE0: 42 8B 9C 30 7C 02  mov         ebx,dword ptr [rax+r14+000000000000027Ch]
                    00 00
  0000000140001AE8: FF C3              inc         ebx
  0000000140001AEA: 42 89 9C 28 7C 02  mov         dword ptr [rax+r13+000000000000027Ch],ebx
                    00 00
  0000000140001AF2: 42 8B 9C 30 80 02  mov         ebx,dword ptr [rax+r14+0000000000000280h]
                    00 00
  0000000140001AFA: FF C3              inc         ebx
  0000000140001AFC: 42 89 9C 28 80 02  mov         dword ptr [rax+r13+0000000000000280h],ebx
                    00 00
  0000000140001B04: 42 8B 9C 30 84 02  mov         ebx,dword ptr [rax+r14+0000000000000284h]
                    00 00
  0000000140001B0C: FF C3              inc         ebx
  0000000140001B0E: 42 89 9C 28 84 02  mov         dword ptr [rax+r13+0000000000000284h],ebx
                    00 00
  0000000140001B16: 42 8B 9C 30 88 02  mov         ebx,dword ptr [rax+r14+0000000000000288h]
                    00 00
  0000000140001B1E: FF C3              inc         ebx
  0000000140001B20: 42 89 9C 28 88 02  mov         dword ptr [rax+r13+0000000000000288h],ebx
                    00 00
  0000000140001B28: 42 8B 9C 30 8C 02  mov         ebx,dword ptr [rax+r14+000000000000028Ch]
                    00 00
  0000000140001B30: FF C3              inc         ebx
  0000000140001B32: 42 89 9C 28 8C 02  mov         dword ptr [rax+r13+000000000000028Ch],ebx
                    00 00
  0000000140001B3A: 42 8B 9C 30 90 02  mov         ebx,dword ptr [rax+r14+0000000000000290h]
                    00 00
  0000000140001B42: FF C3              inc         ebx
  0000000140001B44: 42 89 9C 28 90 02  mov         dword ptr [rax+r13+0000000000000290h],ebx
                    00 00
  0000000140001B4C: 42 8B 9C 30 94 02  mov         ebx,dword ptr [rax+r14+0000000000000294h]
                    00 00
  0000000140001B54: FF C3              inc         ebx
  0000000140001B56: 42 89 9C 28 94 02  mov         dword ptr [rax+r13+0000000000000294h],ebx
                    00 00
  0000000140001B5E: 42 8B 9C 30 98 02  mov         ebx,dword ptr [rax+r14+0000000000000298h]
                    00 00
  0000000140001B66: FF C3              inc         ebx
  0000000140001B68: 42 89 9C 28 98 02  mov         dword ptr [rax+r13+0000000000000298h],ebx
                    00 00
  0000000140001B70: 42 8B 9C 30 9C 02  mov         ebx,dword ptr [rax+r14+000000000000029Ch]
                    00 00
  0000000140001B78: FF C3              inc         ebx
  0000000140001B7A: 42 89 9C 28 9C 02  mov         dword ptr [rax+r13+000000000000029Ch],ebx
                    00 00
  0000000140001B82: 42 8B 9C 30 A0 02  mov         ebx,dword ptr [rax+r14+00000000000002A0h]
                    00 00
  0000000140001B8A: FF C3              inc         ebx
  0000000140001B8C: 42 89 9C 28 A0 02  mov         dword ptr [rax+r13+00000000000002A0h],ebx
                    00 00
  0000000140001B94: 42 8B 9C 30 A4 02  mov         ebx,dword ptr [rax+r14+00000000000002A4h]
                    00 00
  0000000140001B9C: FF C3              inc         ebx
  0000000140001B9E: 42 89 9C 28 A4 02  mov         dword ptr [rax+r13+00000000000002A4h],ebx
                    00 00
  0000000140001BA6: 42 8B 9C 30 A8 02  mov         ebx,dword ptr [rax+r14+00000000000002A8h]
                    00 00
  0000000140001BAE: FF C3              inc         ebx
  0000000140001BB0: 42 89 9C 28 A8 02  mov         dword ptr [rax+r13+00000000000002A8h],ebx
                    00 00
  0000000140001BB8: 42 8B 9C 30 AC 02  mov         ebx,dword ptr [rax+r14+00000000000002ACh]
                    00 00
  0000000140001BC0: FF C3              inc         ebx
  0000000140001BC2: 42 89 9C 28 AC 02  mov         dword ptr [rax+r13+00000000000002ACh],ebx
                    00 00
  0000000140001BCA: 42 8B 9C 30 B0 02  mov         ebx,dword ptr [rax+r14+00000000000002B0h]
                    00 00
  0000000140001BD2: FF C3              inc         ebx
  0000000140001BD4: 42 89 9C 28 B0 02  mov         dword ptr [rax+r13+00000000000002B0h],ebx
                    00 00
  0000000140001BDC: 42 8B 9C 30 B4 02  mov         ebx,dword ptr [rax+r14+00000000000002B4h]
                    00 00
  0000000140001BE4: FF C3              inc         ebx
  0000000140001BE6: 42 89 9C 28 B4 02  mov         dword ptr [rax+r13+00000000000002B4h],ebx
                    00 00
  0000000140001BEE: 42 8B 9C 30 B8 02  mov         ebx,dword ptr [rax+r14+00000000000002B8h]
                    00 00
  0000000140001BF6: FF C3              inc         ebx
  0000000140001BF8: 42 89 9C 28 B8 02  mov         dword ptr [rax+r13+00000000000002B8h],ebx
                    00 00
  0000000140001C00: 42 8B 9C 30 BC 02  mov         ebx,dword ptr [rax+r14+00000000000002BCh]
                    00 00
  0000000140001C08: FF C3              inc         ebx
  0000000140001C0A: 42 89 9C 28 BC 02  mov         dword ptr [rax+r13+00000000000002BCh],ebx
                    00 00
  0000000140001C12: 42 8B 9C 30 C0 02  mov         ebx,dword ptr [rax+r14+00000000000002C0h]
                    00 00
  0000000140001C1A: FF C3              inc         ebx
  0000000140001C1C: 42 89 9C 28 C0 02  mov         dword ptr [rax+r13+00000000000002C0h],ebx
                    00 00
  0000000140001C24: 42 8B 9C 30 C4 02  mov         ebx,dword ptr [rax+r14+00000000000002C4h]
                    00 00
  0000000140001C2C: FF C3              inc         ebx
  0000000140001C2E: 42 89 9C 28 C4 02  mov         dword ptr [rax+r13+00000000000002C4h],ebx
                    00 00
  0000000140001C36: 42 8B 9C 30 C8 02  mov         ebx,dword ptr [rax+r14+00000000000002C8h]
                    00 00
  0000000140001C3E: FF C3              inc         ebx
  0000000140001C40: 42 89 9C 28 C8 02  mov         dword ptr [rax+r13+00000000000002C8h],ebx
                    00 00
  0000000140001C48: 42 8B 9C 30 CC 02  mov         ebx,dword ptr [rax+r14+00000000000002CCh]
                    00 00
  0000000140001C50: FF C3              inc         ebx
  0000000140001C52: 42 89 9C 28 CC 02  mov         dword ptr [rax+r13+00000000000002CCh],ebx
                    00 00
  0000000140001C5A: 42 8B 9C 30 D0 02  mov         ebx,dword ptr [rax+r14+00000000000002D0h]
                    00 00
  0000000140001C62: FF C3              inc         ebx
  0000000140001C64: 42 89 9C 28 D0 02  mov         dword ptr [rax+r13+00000000000002D0h],ebx
                    00 00
  0000000140001C6C: 42 8B 9C 30 D4 02  mov         ebx,dword ptr [rax+r14+00000000000002D4h]
                    00 00
  0000000140001C74: FF C3              inc         ebx
  0000000140001C76: 42 89 9C 28 D4 02  mov         dword ptr [rax+r13+00000000000002D4h],ebx
                    00 00
  0000000140001C7E: 42 8B 9C 30 D8 02  mov         ebx,dword ptr [rax+r14+00000000000002D8h]
                    00 00
  0000000140001C86: FF C3              inc         ebx
  0000000140001C88: 42 89 9C 28 D8 02  mov         dword ptr [rax+r13+00000000000002D8h],ebx
                    00 00
  0000000140001C90: 42 8B 9C 30 DC 02  mov         ebx,dword ptr [rax+r14+00000000000002DCh]
                    00 00
  0000000140001C98: FF C3              inc         ebx
  0000000140001C9A: 42 89 9C 28 DC 02  mov         dword ptr [rax+r13+00000000000002DCh],ebx
                    00 00
  0000000140001CA2: 42 8B 9C 30 E0 02  mov         ebx,dword ptr [rax+r14+00000000000002E0h]
                    00 00
  0000000140001CAA: FF C3              inc         ebx
  0000000140001CAC: 42 89 9C 28 E0 02  mov         dword ptr [rax+r13+00000000000002E0h],ebx
                    00 00
  0000000140001CB4: 42 8B 9C 30 E4 02  mov         ebx,dword ptr [rax+r14+00000000000002E4h]
                    00 00
  0000000140001CBC: FF C3              inc         ebx
  0000000140001CBE: 42 89 9C 28 E4 02  mov         dword ptr [rax+r13+00000000000002E4h],ebx
                    00 00
  0000000140001CC6: 42 8B 9C 30 E8 02  mov         ebx,dword ptr [rax+r14+00000000000002E8h]
                    00 00
  0000000140001CCE: FF C3              inc         ebx
  0000000140001CD0: 42 89 9C 28 E8 02  mov         dword ptr [rax+r13+00000000000002E8h],ebx
                    00 00
  0000000140001CD8: 42 8B 9C 30 EC 02  mov         ebx,dword ptr [rax+r14+00000000000002ECh]
                    00 00
  0000000140001CE0: FF C3              inc         ebx
  0000000140001CE2: 42 89 9C 28 EC 02  mov         dword ptr [rax+r13+00000000000002ECh],ebx
                    00 00
  0000000140001CEA: 42 8B 9C 30 F0 02  mov         ebx,dword ptr [rax+r14+00000000000002F0h]
                    00 00
  0000000140001CF2: FF C3              inc         ebx
  0000000140001CF4: 42 89 9C 28 F0 02  mov         dword ptr [rax+r13+00000000000002F0h],ebx
                    00 00
  0000000140001CFC: 42 8B 9C 30 F4 02  mov         ebx,dword ptr [rax+r14+00000000000002F4h]
                    00 00
  0000000140001D04: FF C3              inc         ebx
  0000000140001D06: 42 89 9C 28 F4 02  mov         dword ptr [rax+r13+00000000000002F4h],ebx
                    00 00
  0000000140001D0E: 42 8B 9C 30 F8 02  mov         ebx,dword ptr [rax+r14+00000000000002F8h]
                    00 00
  0000000140001D16: FF C3              inc         ebx
  0000000140001D18: 42 89 9C 28 F8 02  mov         dword ptr [rax+r13+00000000000002F8h],ebx
                    00 00
  0000000140001D20: 42 8B 9C 30 FC 02  mov         ebx,dword ptr [rax+r14+00000000000002FCh]
                    00 00
  0000000140001D28: FF C3              inc         ebx
  0000000140001D2A: 42 89 9C 28 FC 02  mov         dword ptr [rax+r13+00000000000002FCh],ebx
                    00 00
  0000000140001D32: 42 8B 9C 30 00 03  mov         ebx,dword ptr [rax+r14+0000000000000300h]
                    00 00
  0000000140001D3A: FF C3              inc         ebx
  0000000140001D3C: 42 89 9C 28 00 03  mov         dword ptr [rax+r13+0000000000000300h],ebx
                    00 00
  0000000140001D44: 42 8B 9C 30 04 03  mov         ebx,dword ptr [rax+r14+0000000000000304h]
                    00 00
  0000000140001D4C: FF C3              inc         ebx
  0000000140001D4E: 42 89 9C 28 04 03  mov         dword ptr [rax+r13+0000000000000304h],ebx
                    00 00
  0000000140001D56: 42 8B 9C 30 08 03  mov         ebx,dword ptr [rax+r14+0000000000000308h]
                    00 00
  0000000140001D5E: FF C3              inc         ebx
  0000000140001D60: 42 89 9C 28 08 03  mov         dword ptr [rax+r13+0000000000000308h],ebx
                    00 00
  0000000140001D68: 42 8B 9C 30 0C 03  mov         ebx,dword ptr [rax+r14+000000000000030Ch]
                    00 00
  0000000140001D70: FF C3              inc         ebx
  0000000140001D72: 42 89 9C 28 0C 03  mov         dword ptr [rax+r13+000000000000030Ch],ebx
                    00 00
  0000000140001D7A: 42 8B 9C 30 10 03  mov         ebx,dword ptr [rax+r14+0000000000000310h]
                    00 00
  0000000140001D82: FF C3              inc         ebx
  0000000140001D84: 42 89 9C 28 10 03  mov         dword ptr [rax+r13+0000000000000310h],ebx
                    00 00
  0000000140001D8C: 42 8B 9C 30 14 03  mov         ebx,dword ptr [rax+r14+0000000000000314h]
                    00 00
  0000000140001D94: FF C3              inc         ebx
  0000000140001D96: 42 89 9C 28 14 03  mov         dword ptr [rax+r13+0000000000000314h],ebx
                    00 00
  0000000140001D9E: 42 8B 9C 30 18 03  mov         ebx,dword ptr [rax+r14+0000000000000318h]
                    00 00
  0000000140001DA6: FF C3              inc         ebx
  0000000140001DA8: 42 89 9C 28 18 03  mov         dword ptr [rax+r13+0000000000000318h],ebx
                    00 00
  0000000140001DB0: 42 8B 9C 30 1C 03  mov         ebx,dword ptr [rax+r14+000000000000031Ch]
                    00 00
  0000000140001DB8: FF C3              inc         ebx
  0000000140001DBA: 42 89 9C 28 1C 03  mov         dword ptr [rax+r13+000000000000031Ch],ebx
                    00 00
  0000000140001DC2: 42 8B 9C 30 20 03  mov         ebx,dword ptr [rax+r14+0000000000000320h]
                    00 00
  0000000140001DCA: FF C3              inc         ebx
  0000000140001DCC: 42 89 9C 28 20 03  mov         dword ptr [rax+r13+0000000000000320h],ebx
                    00 00
  0000000140001DD4: 42 8B 9C 30 24 03  mov         ebx,dword ptr [rax+r14+0000000000000324h]
                    00 00
  0000000140001DDC: FF C3              inc         ebx
  0000000140001DDE: 42 89 9C 28 24 03  mov         dword ptr [rax+r13+0000000000000324h],ebx
                    00 00
  0000000140001DE6: 42 8B 9C 30 28 03  mov         ebx,dword ptr [rax+r14+0000000000000328h]
                    00 00
  0000000140001DEE: FF C3              inc         ebx
  0000000140001DF0: 42 89 9C 28 28 03  mov         dword ptr [rax+r13+0000000000000328h],ebx
                    00 00
  0000000140001DF8: 42 8B 9C 30 2C 03  mov         ebx,dword ptr [rax+r14+000000000000032Ch]
                    00 00
  0000000140001E00: FF C3              inc         ebx
  0000000140001E02: 42 89 9C 28 2C 03  mov         dword ptr [rax+r13+000000000000032Ch],ebx
                    00 00
  0000000140001E0A: 42 8B 9C 30 30 03  mov         ebx,dword ptr [rax+r14+0000000000000330h]
                    00 00
  0000000140001E12: FF C3              inc         ebx
  0000000140001E14: 42 89 9C 28 30 03  mov         dword ptr [rax+r13+0000000000000330h],ebx
                    00 00
  0000000140001E1C: 42 8B 9C 30 34 03  mov         ebx,dword ptr [rax+r14+0000000000000334h]
                    00 00
  0000000140001E24: FF C3              inc         ebx
  0000000140001E26: 42 89 9C 28 34 03  mov         dword ptr [rax+r13+0000000000000334h],ebx
                    00 00
  0000000140001E2E: 42 8B 9C 30 38 03  mov         ebx,dword ptr [rax+r14+0000000000000338h]
                    00 00
  0000000140001E36: FF C3              inc         ebx
  0000000140001E38: 42 89 9C 28 38 03  mov         dword ptr [rax+r13+0000000000000338h],ebx
                    00 00
  0000000140001E40: 42 8B 9C 30 3C 03  mov         ebx,dword ptr [rax+r14+000000000000033Ch]
                    00 00
  0000000140001E48: FF C3              inc         ebx
  0000000140001E4A: 42 89 9C 28 3C 03  mov         dword ptr [rax+r13+000000000000033Ch],ebx
                    00 00
  0000000140001E52: 42 8B 9C 30 40 03  mov         ebx,dword ptr [rax+r14+0000000000000340h]
                    00 00
  0000000140001E5A: FF C3              inc         ebx
  0000000140001E5C: 42 89 9C 28 40 03  mov         dword ptr [rax+r13+0000000000000340h],ebx
                    00 00
  0000000140001E64: 42 8B 9C 30 44 03  mov         ebx,dword ptr [rax+r14+0000000000000344h]
                    00 00
  0000000140001E6C: FF C3              inc         ebx
  0000000140001E6E: 42 89 9C 28 44 03  mov         dword ptr [rax+r13+0000000000000344h],ebx
                    00 00
  0000000140001E76: 42 8B 9C 30 48 03  mov         ebx,dword ptr [rax+r14+0000000000000348h]
                    00 00
  0000000140001E7E: FF C3              inc         ebx
  0000000140001E80: 42 89 9C 28 48 03  mov         dword ptr [rax+r13+0000000000000348h],ebx
                    00 00
  0000000140001E88: 42 8B 9C 30 4C 03  mov         ebx,dword ptr [rax+r14+000000000000034Ch]
                    00 00
  0000000140001E90: FF C3              inc         ebx
  0000000140001E92: 42 89 9C 28 4C 03  mov         dword ptr [rax+r13+000000000000034Ch],ebx
                    00 00
  0000000140001E9A: 42 8B 9C 30 50 03  mov         ebx,dword ptr [rax+r14+0000000000000350h]
                    00 00
  0000000140001EA2: FF C3              inc         ebx
  0000000140001EA4: 42 89 9C 28 50 03  mov         dword ptr [rax+r13+0000000000000350h],ebx
                    00 00
  0000000140001EAC: 42 8B 9C 30 54 03  mov         ebx,dword ptr [rax+r14+0000000000000354h]
                    00 00
  0000000140001EB4: FF C3              inc         ebx
  0000000140001EB6: 42 89 9C 28 54 03  mov         dword ptr [rax+r13+0000000000000354h],ebx
                    00 00
  0000000140001EBE: 42 8B 9C 30 58 03  mov         ebx,dword ptr [rax+r14+0000000000000358h]
                    00 00
  0000000140001EC6: FF C3              inc         ebx
  0000000140001EC8: 42 89 9C 28 58 03  mov         dword ptr [rax+r13+0000000000000358h],ebx
                    00 00
  0000000140001ED0: 42 8B 9C 30 5C 03  mov         ebx,dword ptr [rax+r14+000000000000035Ch]
                    00 00
  0000000140001ED8: FF C3              inc         ebx
  0000000140001EDA: 42 89 9C 28 5C 03  mov         dword ptr [rax+r13+000000000000035Ch],ebx
                    00 00
  0000000140001EE2: 42 8B 9C 30 60 03  mov         ebx,dword ptr [rax+r14+0000000000000360h]
                    00 00
  0000000140001EEA: FF C3              inc         ebx
  0000000140001EEC: 42 89 9C 28 60 03  mov         dword ptr [rax+r13+0000000000000360h],ebx
                    00 00
  0000000140001EF4: 42 8B 9C 30 64 03  mov         ebx,dword ptr [rax+r14+0000000000000364h]
                    00 00
  0000000140001EFC: FF C3              inc         ebx
  0000000140001EFE: 42 89 9C 28 64 03  mov         dword ptr [rax+r13+0000000000000364h],ebx
                    00 00
  0000000140001F06: 42 8B 9C 30 68 03  mov         ebx,dword ptr [rax+r14+0000000000000368h]
                    00 00
  0000000140001F0E: FF C3              inc         ebx
  0000000140001F10: 42 89 9C 28 68 03  mov         dword ptr [rax+r13+0000000000000368h],ebx
                    00 00
  0000000140001F18: 42 8B 9C 30 6C 03  mov         ebx,dword ptr [rax+r14+000000000000036Ch]
                    00 00
  0000000140001F20: FF C3              inc         ebx
  0000000140001F22: 42 89 9C 28 6C 03  mov         dword ptr [rax+r13+000000000000036Ch],ebx
                    00 00
  0000000140001F2A: 42 8B 9C 30 70 03  mov         ebx,dword ptr [rax+r14+0000000000000370h]
                    00 00
  0000000140001F32: FF C3              inc         ebx
  0000000140001F34: 42 89 9C 28 70 03  mov         dword ptr [rax+r13+0000000000000370h],ebx
                    00 00
  0000000140001F3C: 42 8B 9C 30 74 03  mov         ebx,dword ptr [rax+r14+0000000000000374h]
                    00 00
  0000000140001F44: FF C3              inc         ebx
  0000000140001F46: 42 89 9C 28 74 03  mov         dword ptr [rax+r13+0000000000000374h],ebx
                    00 00
  0000000140001F4E: 42 8B 9C 30 78 03  mov         ebx,dword ptr [rax+r14+0000000000000378h]
                    00 00
  0000000140001F56: FF C3              inc         ebx
  0000000140001F58: 42 89 9C 28 78 03  mov         dword ptr [rax+r13+0000000000000378h],ebx
                    00 00
  0000000140001F60: 42 8B 9C 30 7C 03  mov         ebx,dword ptr [rax+r14+000000000000037Ch]
                    00 00
  0000000140001F68: FF C3              inc         ebx
  0000000140001F6A: 42 89 9C 28 7C 03  mov         dword ptr [rax+r13+000000000000037Ch],ebx
                    00 00
  0000000140001F72: 42 8B 9C 30 80 03  mov         ebx,dword ptr [rax+r14+0000000000000380h]
                    00 00
  0000000140001F7A: FF C3              inc         ebx
  0000000140001F7C: 42 89 9C 28 80 03  mov         dword ptr [rax+r13+0000000000000380h],ebx
                    00 00
  0000000140001F84: 42 8B 9C 30 84 03  mov         ebx,dword ptr [rax+r14+0000000000000384h]
                    00 00
  0000000140001F8C: FF C3              inc         ebx
  0000000140001F8E: 42 89 9C 28 84 03  mov         dword ptr [rax+r13+0000000000000384h],ebx
                    00 00
  0000000140001F96: 42 8B 9C 30 88 03  mov         ebx,dword ptr [rax+r14+0000000000000388h]
                    00 00
  0000000140001F9E: FF C3              inc         ebx
  0000000140001FA0: 42 89 9C 28 88 03  mov         dword ptr [rax+r13+0000000000000388h],ebx
                    00 00
  0000000140001FA8: 42 8B 9C 30 8C 03  mov         ebx,dword ptr [rax+r14+000000000000038Ch]
                    00 00
  0000000140001FB0: FF C3              inc         ebx
  0000000140001FB2: 42 89 9C 28 8C 03  mov         dword ptr [rax+r13+000000000000038Ch],ebx
                    00 00
  0000000140001FBA: 42 8B 9C 30 90 03  mov         ebx,dword ptr [rax+r14+0000000000000390h]
                    00 00
  0000000140001FC2: FF C3              inc         ebx
  0000000140001FC4: 42 89 9C 28 90 03  mov         dword ptr [rax+r13+0000000000000390h],ebx
                    00 00
  0000000140001FCC: 42 8B 9C 30 94 03  mov         ebx,dword ptr [rax+r14+0000000000000394h]
                    00 00
  0000000140001FD4: FF C3              inc         ebx
  0000000140001FD6: 42 89 9C 28 94 03  mov         dword ptr [rax+r13+0000000000000394h],ebx
                    00 00
  0000000140001FDE: 42 8B 9C 30 98 03  mov         ebx,dword ptr [rax+r14+0000000000000398h]
                    00 00
  0000000140001FE6: FF C3              inc         ebx
  0000000140001FE8: 42 89 9C 28 98 03  mov         dword ptr [rax+r13+0000000000000398h],ebx
                    00 00
  0000000140001FF0: 42 8B 9C 30 9C 03  mov         ebx,dword ptr [rax+r14+000000000000039Ch]
                    00 00
  0000000140001FF8: FF C3              inc         ebx
  0000000140001FFA: 42 89 9C 28 9C 03  mov         dword ptr [rax+r13+000000000000039Ch],ebx
                    00 00
  0000000140002002: 42 8B 9C 30 A0 03  mov         ebx,dword ptr [rax+r14+00000000000003A0h]
                    00 00
  000000014000200A: FF C3              inc         ebx
  000000014000200C: 42 89 9C 28 A0 03  mov         dword ptr [rax+r13+00000000000003A0h],ebx
                    00 00
  0000000140002014: 42 8B 9C 30 A4 03  mov         ebx,dword ptr [rax+r14+00000000000003A4h]
                    00 00
  000000014000201C: FF C3              inc         ebx
  000000014000201E: 42 89 9C 28 A4 03  mov         dword ptr [rax+r13+00000000000003A4h],ebx
                    00 00
  0000000140002026: 42 8B 9C 30 A8 03  mov         ebx,dword ptr [rax+r14+00000000000003A8h]
                    00 00
  000000014000202E: FF C3              inc         ebx
  0000000140002030: 42 89 9C 28 A8 03  mov         dword ptr [rax+r13+00000000000003A8h],ebx
                    00 00
  0000000140002038: 42 8B 9C 30 AC 03  mov         ebx,dword ptr [rax+r14+00000000000003ACh]
                    00 00
  0000000140002040: FF C3              inc         ebx
  0000000140002042: 42 89 9C 28 AC 03  mov         dword ptr [rax+r13+00000000000003ACh],ebx
                    00 00
  000000014000204A: 42 8B 9C 30 B0 03  mov         ebx,dword ptr [rax+r14+00000000000003B0h]
                    00 00
  0000000140002052: FF C3              inc         ebx
  0000000140002054: 42 89 9C 28 B0 03  mov         dword ptr [rax+r13+00000000000003B0h],ebx
                    00 00
  000000014000205C: 42 8B 9C 30 B4 03  mov         ebx,dword ptr [rax+r14+00000000000003B4h]
                    00 00
  0000000140002064: FF C3              inc         ebx
  0000000140002066: 42 89 9C 28 B4 03  mov         dword ptr [rax+r13+00000000000003B4h],ebx
                    00 00
  000000014000206E: 42 8B 9C 30 B8 03  mov         ebx,dword ptr [rax+r14+00000000000003B8h]
                    00 00
  0000000140002076: FF C3              inc         ebx
  0000000140002078: 42 89 9C 28 B8 03  mov         dword ptr [rax+r13+00000000000003B8h],ebx
                    00 00
  0000000140002080: 42 8B 9C 30 BC 03  mov         ebx,dword ptr [rax+r14+00000000000003BCh]
                    00 00
  0000000140002088: FF C3              inc         ebx
  000000014000208A: 42 89 9C 28 BC 03  mov         dword ptr [rax+r13+00000000000003BCh],ebx
                    00 00
  0000000140002092: 42 8B 9C 30 C0 03  mov         ebx,dword ptr [rax+r14+00000000000003C0h]
                    00 00
  000000014000209A: FF C3              inc         ebx
  000000014000209C: 42 89 9C 28 C0 03  mov         dword ptr [rax+r13+00000000000003C0h],ebx
                    00 00
  00000001400020A4: 42 8B 9C 30 C4 03  mov         ebx,dword ptr [rax+r14+00000000000003C4h]
                    00 00
  00000001400020AC: FF C3              inc         ebx
  00000001400020AE: 42 89 9C 28 C4 03  mov         dword ptr [rax+r13+00000000000003C4h],ebx
                    00 00
  00000001400020B6: 42 8B 9C 30 C8 03  mov         ebx,dword ptr [rax+r14+00000000000003C8h]
                    00 00
  00000001400020BE: FF C3              inc         ebx
  00000001400020C0: 42 89 9C 28 C8 03  mov         dword ptr [rax+r13+00000000000003C8h],ebx
                    00 00
  00000001400020C8: 42 8B 9C 30 CC 03  mov         ebx,dword ptr [rax+r14+00000000000003CCh]
                    00 00
  00000001400020D0: FF C3              inc         ebx
  00000001400020D2: 42 89 9C 28 CC 03  mov         dword ptr [rax+r13+00000000000003CCh],ebx
                    00 00
  00000001400020DA: 42 8B 9C 30 D0 03  mov         ebx,dword ptr [rax+r14+00000000000003D0h]
                    00 00
  00000001400020E2: FF C3              inc         ebx
  00000001400020E4: 42 89 9C 28 D0 03  mov         dword ptr [rax+r13+00000000000003D0h],ebx
                    00 00
  00000001400020EC: 42 8B 9C 30 D4 03  mov         ebx,dword ptr [rax+r14+00000000000003D4h]
                    00 00
  00000001400020F4: FF C3              inc         ebx
  00000001400020F6: 42 89 9C 28 D4 03  mov         dword ptr [rax+r13+00000000000003D4h],ebx
                    00 00
  00000001400020FE: 42 8B 9C 30 D8 03  mov         ebx,dword ptr [rax+r14+00000000000003D8h]
                    00 00
  0000000140002106: FF C3              inc         ebx
  0000000140002108: 42 89 9C 28 D8 03  mov         dword ptr [rax+r13+00000000000003D8h],ebx
                    00 00
  0000000140002110: 42 8B 9C 30 DC 03  mov         ebx,dword ptr [rax+r14+00000000000003DCh]
                    00 00
  0000000140002118: FF C3              inc         ebx
  000000014000211A: 42 89 9C 28 DC 03  mov         dword ptr [rax+r13+00000000000003DCh],ebx
                    00 00
  0000000140002122: 42 8B 9C 30 E0 03  mov         ebx,dword ptr [rax+r14+00000000000003E0h]
                    00 00
  000000014000212A: FF C3              inc         ebx
  000000014000212C: 42 89 9C 28 E0 03  mov         dword ptr [rax+r13+00000000000003E0h],ebx
                    00 00
  0000000140002134: 42 8B 9C 30 E4 03  mov         ebx,dword ptr [rax+r14+00000000000003E4h]
                    00 00
  000000014000213C: FF C3              inc         ebx
  000000014000213E: 42 89 9C 28 E4 03  mov         dword ptr [rax+r13+00000000000003E4h],ebx
                    00 00
  0000000140002146: 42 8B 9C 30 E8 03  mov         ebx,dword ptr [rax+r14+00000000000003E8h]
                    00 00
  000000014000214E: FF C3              inc         ebx
  0000000140002150: 42 89 9C 28 E8 03  mov         dword ptr [rax+r13+00000000000003E8h],ebx
                    00 00
  0000000140002158: 42 8B 9C 30 EC 03  mov         ebx,dword ptr [rax+r14+00000000000003ECh]
                    00 00
  0000000140002160: FF C3              inc         ebx
  0000000140002162: 42 89 9C 28 EC 03  mov         dword ptr [rax+r13+00000000000003ECh],ebx
                    00 00
  000000014000216A: 42 8B 9C 30 F0 03  mov         ebx,dword ptr [rax+r14+00000000000003F0h]
                    00 00
  0000000140002172: FF C3              inc         ebx
  0000000140002174: 42 89 9C 28 F0 03  mov         dword ptr [rax+r13+00000000000003F0h],ebx
                    00 00
  000000014000217C: 42 8B 9C 30 F4 03  mov         ebx,dword ptr [rax+r14+00000000000003F4h]
                    00 00
  0000000140002184: FF C3              inc         ebx
  0000000140002186: 42 89 9C 28 F4 03  mov         dword ptr [rax+r13+00000000000003F4h],ebx
                    00 00
  000000014000218E: 42 8B 9C 30 F8 03  mov         ebx,dword ptr [rax+r14+00000000000003F8h]
                    00 00
  0000000140002196: FF C3              inc         ebx
  0000000140002198: 42 89 9C 28 F8 03  mov         dword ptr [rax+r13+00000000000003F8h],ebx
                    00 00
  00000001400021A0: 46 8B 84 30 18 02  mov         r8d,dword ptr [rax+r14+0000000000000218h]
                    00 00
  00000001400021A8: 46 8B 8C 30 1C 02  mov         r9d,dword ptr [rax+r14+000000000000021Ch]
                    00 00
  00000001400021B0: 41 FF C0           inc         r8d
  00000001400021B3: 46 8B 94 30 20 02  mov         r10d,dword ptr [rax+r14+0000000000000220h]
                    00 00
  00000001400021BB: 41 FF C1           inc         r9d
  00000001400021BE: 46 8B 9C 30 24 02  mov         r11d,dword ptr [rax+r14+0000000000000224h]
                    00 00
  00000001400021C6: 41 FF C2           inc         r10d
  00000001400021C9: 42 8B 9C 30 FC 03  mov         ebx,dword ptr [rax+r14+00000000000003FCh]
                    00 00
  00000001400021D1: 41 FF C3           inc         r11d
  00000001400021D4: FF C3              inc         ebx
  00000001400021D6: 46 89 84 28 18 02  mov         dword ptr [rax+r13+0000000000000218h],r8d
                    00 00
  00000001400021DE: 46 89 8C 28 1C 02  mov         dword ptr [rax+r13+000000000000021Ch],r9d
                    00 00
  00000001400021E6: 46 89 94 28 20 02  mov         dword ptr [rax+r13+0000000000000220h],r10d
                    00 00
  00000001400021EE: 46 89 9C 28 24 02  mov         dword ptr [rax+r13+0000000000000224h],r11d
                    00 00
  00000001400021F6: 42 89 9C 28 FC 03  mov         dword ptr [rax+r13+00000000000003FCh],ebx
                    00 00
  00000001400021FE: 48 05 FC 03 00 00  add         rax,3FCh
  0000000140002204: 80 FA 03           cmp         dl,3
  0000000140002207: 0F 82 B3 EE FF FF  jb          00000001400010C0
  000000014000220D: B8 FD 02 00 00     mov         eax,2FDh
  0000000140002212: 41 8B 54 86 04     mov         edx,dword ptr [r14+rax*4+4]
  0000000140002217: FF C2              inc         edx
  0000000140002219: 41 89 54 85 04     mov         dword ptr [r13+rax*4+4],edx
  000000014000221E: 48 FF C0           inc         rax
  0000000140002221: 48 3D E7 03 00 00  cmp         rax,3E7h
  0000000140002227: 72 E9              jb          0000000140002212
  0000000140002229: 90                 nop
  000000014000222A: 90                 nop
  000000014000222B: 3B C3              cmp         eax,ebx
  000000014000222D: 3B CA              cmp         ecx,edx
  000000014000222F: 90                 nop
  0000000140002230: 90                 nop
  0000000140002231: 48 8D 0D 88 80 00  lea         rcx,[000000014000A2C0h]
                    00
  0000000140002238: 41 8B 56 20        mov         edx,dword ptr [r14+20h]
  000000014000223C: 45 8B 45 40        mov         r8d,dword ptr [r13+40h]
  0000000140002240: E8 6B 00 00 00     call        00000001400022B0
  0000000140002245: 4C 89 F1           mov         rcx,r14
  0000000140002248: E8 0F 56 00 00     call        000000014000785C
  000000014000224D: 4C 89 E9           mov         rcx,r13
  0000000140002250: E8 07 56 00 00     call        000000014000785C
  0000000140002255: 48 8B 5D 08        mov         rbx,qword ptr [rbp+8]
  0000000140002259: 33 C0              xor         eax,eax
  000000014000225B: 4C 8B 6D 18        mov         r13,qword ptr [rbp+18h]
  000000014000225F: 4C 8B 75 10        mov         r14,qword ptr [rbp+10h]
  0000000140002263: 48 8D 65 30        lea         rsp,[rbp+30h]
  0000000140002267: 5D                 pop         rbp
  0000000140002268: C3                 ret
  0000000140002269: 55                 push        rbp
  000000014000226A: 48 83 EC 50        sub         rsp,50h
  000000014000226E: 48 8D 6A 20        lea         rbp,[rdx+20h]
  0000000140002272: 83 7D 28 00        cmp         dword ptr [rbp+28h],0
  0000000140002276: 74 0E              je          0000000140002286
  0000000140002278: BA A0 0F 00 00     mov         edx,0FA0h
  000000014000227D: 48 8B 4D 20        mov         rcx,qword ptr [rbp+20h]
  0000000140002281: E8 DE 55 00 00     call        0000000140007864
  0000000140002286: 48 83 C4 50        add         rsp,50h
  000000014000228A: 5D                 pop         rbp
  000000014000228B: C3                 ret
  000000014000228C: 55                 push        rbp
  000000014000228D: 48 83 EC 50        sub         rsp,50h
  0000000140002291: 48 8D 6A 20        lea         rbp,[rdx+20h]
  0000000140002295: 83 7D 28 00        cmp         dword ptr [rbp+28h],0
  0000000140002299: 74 0E              je          00000001400022A9
  000000014000229B: BA A0 0F 00 00     mov         edx,0FA0h
  00000001400022A0: 48 8B 4D 20        mov         rcx,qword ptr [rbp+20h]
  00000001400022A4: E8 BB 55 00 00     call        0000000140007864
  00000001400022A9: 48 83 C4 50        add         rsp,50h
  00000001400022AD: 5D                 pop         rbp
  00000001400022AE: C3                 ret
  00000001400022AF: 90                 nop
  00000001400022B0: 41 57              push        r15
  00000001400022B2: 48 83 EC 40        sub         rsp,40h
  00000001400022B6: 48 89 4C 24 50     mov         qword ptr [rsp+50h],rcx
  00000001400022BB: 48 8D 44 24 58     lea         rax,[rsp+58h]
  00000001400022C0: 48 89 10           mov         qword ptr [rax],rdx
  00000001400022C3: 4C 89 40 08        mov         qword ptr [rax+8],r8
  00000001400022C7: 4C 89 48 10        mov         qword ptr [rax+10h],r9
  00000001400022CB: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000001400022D0: B9 01 00 00 00     mov         ecx,1
  00000001400022D5: FF 15 0D 7F 00 00  call        qword ptr [000000014000A1E8h]
  00000001400022DB: 49 89 C7           mov         r15,rax
  00000001400022DE: E8 3D 00 00 00     call        0000000140002320
  00000001400022E3: 49 89 C2           mov         r10,rax
  00000001400022E6: 49 89 E1           mov         r9,rsp
  00000001400022E9: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000001400022EE: 4C 89 FA           mov         rdx,r15
  00000001400022F1: 4C 8B 44 24 50     mov         r8,qword ptr [rsp+50h]
  00000001400022F6: 49 89 41 20        mov         qword ptr [r9+20h],rax
  00000001400022FA: 45 33 C9           xor         r9d,r9d
  00000001400022FD: 49 8B 0A           mov         rcx,qword ptr [r10]
  0000000140002300: FF 15 DA 7E 00 00  call        qword ptr [000000014000A1E0h]
  0000000140002306: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  000000014000230F: 48 83 C4 40        add         rsp,40h
  0000000140002313: 41 5F              pop         r15
  0000000140002315: C3                 ret
  0000000140002316: 0F 1F 00           nop         dword ptr [rax]
  0000000140002319: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140002320: 48 8D 05 19 B6 00  lea         rax,[000000014000D940h]
                    00
  0000000140002327: C3                 ret
  0000000140002328: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140002330: 41 54              push        r12
  0000000140002332: 48 83 EC 20        sub         rsp,20h
  0000000140002336: 41 89 CC           mov         r12d,ecx
  0000000140002339: 33 C9              xor         ecx,ecx
  000000014000233B: E8 70 00 00 00     call        00000001400023B0
  0000000140002340: 48 8D 0D 79 BC 00  lea         rcx,[000000014000DFC0h]
                    00
  0000000140002347: BA 06 00 00 00     mov         edx,6
  000000014000234C: E8 0F 08 00 00     call        0000000140002B60
  0000000140002351: 83 F8 01           cmp         eax,1
  0000000140002354: 74 45              je          000000014000239B
  0000000140002356: 85 C0              test        eax,eax
  0000000140002358: 7C 07              jl          0000000140002361
  000000014000235A: 48 83 C4 20        add         rsp,20h
  000000014000235E: 41 5C              pop         r12
  0000000140002360: C3                 ret
  0000000140002361: 33 D2              xor         edx,edx
  0000000140002363: B9 01 00 00 00     mov         ecx,1
  0000000140002368: 45 33 C0           xor         r8d,r8d
  000000014000236B: E8 A0 1F 00 00     call        0000000140004310
  0000000140002370: B9 01 00 00 00     mov         ecx,1
  0000000140002375: BA 3A 00 00 00     mov         edx,3Ah
  000000014000237A: 45 33 C0           xor         r8d,r8d
  000000014000237D: E8 8E 1F 00 00     call        0000000140004310
  0000000140002382: 33 D2              xor         edx,edx
  0000000140002384: B9 01 00 00 00     mov         ecx,1
  0000000140002389: 45 33 C0           xor         r8d,r8d
  000000014000238C: E8 7F 1F 00 00     call        0000000140004310
  0000000140002391: B9 01 00 00 00     mov         ecx,1
  0000000140002396: E8 9B 6B 00 00     call        0000000140008F36
  000000014000239B: 33 C9              xor         ecx,ecx
  000000014000239D: 44 89 E2           mov         edx,r12d
  00000001400023A0: 48 83 C4 20        add         rsp,20h
  00000001400023A4: 41 5C              pop         r12
  00000001400023A6: E9 B5 21 00 00     jmp         0000000140004560
  00000001400023AB: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  00000001400023B0: 53                 push        rbx
  00000001400023B1: 56                 push        rsi
  00000001400023B2: 48 81 EC 68 04 00  sub         rsp,468h
                    00
  00000001400023B9: 48 89 D6           mov         rsi,rdx
  00000001400023BC: 48 8B 05 65 AC 00  mov         rax,qword ptr [000000014000D028h]
                    00
  00000001400023C3: 66 0F EF C0        pxor        xmm0,xmm0
  00000001400023C7: 48 33 C4           xor         rax,rsp
  00000001400023CA: 48 89 84 24 60 04  mov         qword ptr [rsp+0000000000000460h],rax
                    00 00
  00000001400023D2: 48 63 D9           movsxd      rbx,ecx
  00000001400023D5: F3 0F 7F 44 24 50  movdqu      xmmword ptr [rsp+50h],xmm0
  00000001400023DB: 48 83 3D DD BB 00  cmp         qword ptr [000000014000DFC0h],0
                    00 00
  00000001400023E3: 0F 84 91 03 00 00  je          000000014000277A
  00000001400023E9: 48 83 FB 02        cmp         rbx,2
  00000001400023ED: 0F 8D 97 02 00 00  jge         000000014000268A
  00000001400023F3: 48 8D 05 06 DC FF  lea         rax,[0000000140000000h]
                    FF
  00000001400023FA: 48 89 F2           mov         rdx,rsi
  00000001400023FD: 48 8B 84 D8 C0 DF  mov         rax,qword ptr [rax+rbx*8+000000000000DFC0h]
                    00 00
  0000000140002405: 48 23 D0           and         rdx,rax
  0000000140002408: 48 3B D6           cmp         rdx,rsi
  000000014000240B: 75 2E              jne         000000014000243B
  000000014000240D: 48 8B 8C 24 60 04  mov         rcx,qword ptr [rsp+0000000000000460h]
                    00 00
  0000000140002415: 48 C7 84 24 60 04  mov         qword ptr [rsp+0000000000000460h],0
                    00 00 00 00 00 00
  0000000140002421: 48 33 CC           xor         rcx,rsp
  0000000140002424: 48 3B 0D FD AB 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  000000014000242B: 0F 85 6A 02 00 00  jne         000000014000269B
  0000000140002431: 48 81 C4 68 04 00  add         rsp,468h
                    00
  0000000140002438: 5E                 pop         rsi
  0000000140002439: 5B                 pop         rbx
  000000014000243A: C3                 ret
  000000014000243B: 48 F7 D0           not         rax
  000000014000243E: B9 39 00 00 00     mov         ecx,39h
  0000000140002443: 48 23 C6           and         rax,rsi
  0000000140002446: 33 F6              xor         esi,esi
  0000000140002448: 33 D2              xor         edx,edx
  000000014000244A: 48 89 44 DC 50     mov         qword ptr [rsp+rbx*8+50h],rax
  000000014000244F: E8 8C 1C 00 00     call        00000001400040E0
  0000000140002454: 90                 nop
  0000000140002455: BB 01 00 00 00     mov         ebx,1
  000000014000245A: C6 44 24 60 00     mov         byte ptr [rsp+60h],0
  000000014000245F: 48 89 7C 24 48     mov         qword ptr [rsp+48h],rdi
  0000000140002464: 4C 89 64 24 40     mov         qword ptr [rsp+40h],r12
  0000000140002469: 49 89 F4           mov         r12,rsi
  000000014000246C: 4C 89 6C 24 38     mov         qword ptr [rsp+38h],r13
  0000000140002471: 49 89 C5           mov         r13,rax
  0000000140002474: 4C 89 74 24 30     mov         qword ptr [rsp+30h],r14
  0000000140002479: 4C 89 7C 24 28     mov         qword ptr [rsp+28h],r15
  000000014000247E: 49 89 F7           mov         r15,rsi
  0000000140002481: 48 89 6C 24 20     mov         qword ptr [rsp+20h],rbp
  0000000140002486: 89 D8              mov         eax,ebx
  0000000140002488: E8 93 04 00 00     call        0000000140002920
  000000014000248D: 85 C0              test        eax,eax
  000000014000248F: 0F 8C 1A 01 00 00  jl          00000001400025AF
  0000000140002495: 89 DA              mov         edx,ebx
  0000000140002497: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  000000014000249C: E8 BF 06 00 00     call        0000000140002B60
  00000001400024A1: 85 C0              test        eax,eax
  00000001400024A3: 0F 84 06 01 00 00  je          00000001400025AF
  00000001400024A9: 89 DA              mov         edx,ebx
  00000001400024AB: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000001400024B0: E8 AB 06 00 00     call        0000000140002B60
  00000001400024B5: 85 C0              test        eax,eax
  00000001400024B7: 0F 8C 8A 02 00 00  jl          0000000140002747
  00000001400024BD: 89 D9              mov         ecx,ebx
  00000001400024BF: E8 1C 04 00 00     call        00000001400028E0
  00000001400024C4: 49 89 C6           mov         r14,rax
  00000001400024C7: 4D 85 F6           test        r14,r14
  00000001400024CA: 0F 84 44 02 00 00  je          0000000140002714
  00000001400024D0: 41 80 3E 00        cmp         byte ptr [r14],0
  00000001400024D4: 0F 84 3A 02 00 00  je          0000000140002714
  00000001400024DA: 80 7C 24 60 00     cmp         byte ptr [rsp+60h],0
  00000001400024DF: 0F 84 A3 00 00 00  je          0000000140002588
  00000001400024E5: 4D 85 FF           test        r15,r15
  00000001400024E8: 0F 84 95 00 00 00  je          0000000140002583
  00000001400024EE: 4C 89 F9           mov         rcx,r15
  00000001400024F1: E8 9A 6A 00 00     call        0000000140008F90
  00000001400024F6: 48 89 C6           mov         rsi,rax
  00000001400024F9: 48 8D 0D 80 7E 00  lea         rcx,[000000014000A380h]
                    00
  0000000140002500: E8 8B 6A 00 00     call        0000000140008F90
  0000000140002505: 48 89 C5           mov         rbp,rax
  0000000140002508: 4C 89 E9           mov         rcx,r13
  000000014000250B: E8 80 6A 00 00     call        0000000140008F90
  0000000140002510: 48 89 C7           mov         rdi,rax
  0000000140002513: 4C 89 F1           mov         rcx,r14
  0000000140002516: E8 75 6A 00 00     call        0000000140008F90
  000000014000251B: 49 03 F4           add         rsi,r12
  000000014000251E: 48 03 F5           add         rsi,rbp
  0000000140002521: 48 03 F7           add         rsi,rdi
  0000000140002524: 48 03 F0           add         rsi,rax
  0000000140002527: 48 81 FE 00 04 00  cmp         rsi,400h
                    00
  000000014000252E: 0F 83 6D 01 00 00  jae         00000001400026A1
  0000000140002534: 49 F7 DC           neg         r12
  0000000140002537: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000014000253C: 49 81 C4 FF 03 00  add         r12,3FFh
                    00
  0000000140002543: 48 8D 15 36 7E 00  lea         rdx,[000000014000A380h]
                    00
  000000014000254A: 4D 89 E0           mov         r8,r12
  000000014000254D: E8 44 6A 00 00     call        0000000140008F96
  0000000140002552: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140002557: E8 34 6A 00 00     call        0000000140008F90
  000000014000255C: 4C 63 C0           movsxd      r8,eax
  000000014000255F: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140002564: 49 F7 D8           neg         r8
  0000000140002567: 4C 89 FA           mov         rdx,r15
  000000014000256A: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  0000000140002571: E8 20 6A 00 00     call        0000000140008F96
  0000000140002576: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000014000257B: E8 10 6A 00 00     call        0000000140008F90
  0000000140002580: 4C 63 E0           movsxd      r12,eax
  0000000140002583: 4D 89 F7           mov         r15,r14
  0000000140002586: EB 27              jmp         00000001400025AF
  0000000140002588: 49 F7 DC           neg         r12
  000000014000258B: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140002590: 49 81 C4 FF 03 00  add         r12,3FFh
                    00
  0000000140002597: 4C 89 F2           mov         rdx,r14
  000000014000259A: 4D 89 E0           mov         r8,r12
  000000014000259D: E8 F4 69 00 00     call        0000000140008F96
  00000001400025A2: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400025A7: E8 E4 69 00 00     call        0000000140008F90
  00000001400025AC: 4C 63 E0           movsxd      r12,eax
  00000001400025AF: FF C3              inc         ebx
  00000001400025B1: 83 FB 40           cmp         ebx,40h
  00000001400025B4: 0F 8C CC FE FF FF  jl          0000000140002486
  00000001400025BA: 4C 89 FE           mov         rsi,r15
  00000001400025BD: 4D 89 E0           mov         r8,r12
  00000001400025C0: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  00000001400025C5: 4C 89 E8           mov         rax,r13
  00000001400025C8: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  00000001400025CD: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  00000001400025D2: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  00000001400025D7: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  00000001400025DC: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  00000001400025E1: 48 85 F6           test        rsi,rsi
  00000001400025E4: 74 3B              je          0000000140002621
  00000001400025E6: 49 F7 D8           neg         r8
  00000001400025E9: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400025EE: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  00000001400025F5: 48 89 C2           mov         rdx,rax
  00000001400025F8: E8 99 69 00 00     call        0000000140008F96
  00000001400025FD: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140002602: E8 89 69 00 00     call        0000000140008F90
  0000000140002607: 4C 63 C0           movsxd      r8,eax
  000000014000260A: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000014000260F: 49 F7 D8           neg         r8
  0000000140002612: 48 89 F2           mov         rdx,rsi
  0000000140002615: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  000000014000261C: E8 75 69 00 00     call        0000000140008F96
  0000000140002621: 80 7C 24 60 00     cmp         byte ptr [rsp+60h],0
  0000000140002626: 75 3A              jne         0000000140002662
  0000000140002628: 33 D2              xor         edx,edx
  000000014000262A: B9 01 00 00 00     mov         ecx,1
  000000014000262F: 45 33 C0           xor         r8d,r8d
  0000000140002632: E8 D9 1C 00 00     call        0000000140004310
  0000000140002637: B9 01 00 00 00     mov         ecx,1
  000000014000263C: BA 3A 00 00 00     mov         edx,3Ah
  0000000140002641: 45 33 C0           xor         r8d,r8d
  0000000140002644: E8 C7 1C 00 00     call        0000000140004310
  0000000140002649: 33 D2              xor         edx,edx
  000000014000264B: B9 01 00 00 00     mov         ecx,1
  0000000140002650: 45 33 C0           xor         r8d,r8d
  0000000140002653: E8 B8 1C 00 00     call        0000000140004310
  0000000140002658: B9 01 00 00 00     mov         ecx,1
  000000014000265D: E8 D4 68 00 00     call        0000000140008F36
  0000000140002662: 33 D2              xor         edx,edx
  0000000140002664: B9 01 00 00 00     mov         ecx,1
  0000000140002669: 45 33 C0           xor         r8d,r8d
  000000014000266C: E8 9F 1C 00 00     call        0000000140004310
  0000000140002671: B9 01 00 00 00     mov         ecx,1
  0000000140002676: BA 38 00 00 00     mov         edx,38h
  000000014000267B: 41 89 C8           mov         r8d,ecx
  000000014000267E: 4C 8D 4C 24 60     lea         r9,[rsp+60h]
  0000000140002683: E8 88 1C 00 00     call        0000000140004310
  0000000140002688: EB BF              jmp         0000000140002649
  000000014000268A: 33 D2              xor         edx,edx
  000000014000268C: B9 01 00 00 00     mov         ecx,1
  0000000140002691: 45 33 C0           xor         r8d,r8d
  0000000140002694: E8 77 1C 00 00     call        0000000140004310
  0000000140002699: EB 9C              jmp         0000000140002637
  000000014000269B: E8 30 69 00 00     call        0000000140008FD0
  00000001400026A0: 90                 nop
  00000001400026A1: 4D 89 E0           mov         r8,r12
  00000001400026A4: 4C 89 E8           mov         rax,r13
  00000001400026A7: 49 F7 D8           neg         r8
  00000001400026AA: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400026AF: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  00000001400026B6: 48 89 C2           mov         rdx,rax
  00000001400026B9: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  00000001400026BE: 4C 89 FE           mov         rsi,r15
  00000001400026C1: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  00000001400026C6: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  00000001400026CB: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  00000001400026D0: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  00000001400026D5: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  00000001400026DA: E8 B7 68 00 00     call        0000000140008F96
  00000001400026DF: 90                 nop
  00000001400026E0: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400026E5: E8 A6 68 00 00     call        0000000140008F90
  00000001400026EA: 4C 63 C0           movsxd      r8,eax
  00000001400026ED: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  00000001400026F2: 49 F7 D8           neg         r8
  00000001400026F5: 48 89 F2           mov         rdx,rsi
  00000001400026F8: 49 81 C0 FF 03 00  add         r8,3FFh
                    00
  00000001400026FF: E8 92 68 00 00     call        0000000140008F96
  0000000140002704: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000140002709: E8 82 68 00 00     call        0000000140008F90
  000000014000270E: 90                 nop
  000000014000270F: E9 0D FF FF FF     jmp         0000000140002621
  0000000140002714: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  0000000140002719: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  000000014000271E: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  0000000140002723: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  0000000140002728: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  000000014000272D: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  0000000140002732: 33 D2              xor         edx,edx
  0000000140002734: B9 01 00 00 00     mov         ecx,1
  0000000140002739: 45 33 C0           xor         r8d,r8d
  000000014000273C: E8 CF 1B 00 00     call        0000000140004310
  0000000140002741: 90                 nop
  0000000140002742: E9 F0 FE FF FF     jmp         0000000140002637
  0000000140002747: 33 D2              xor         edx,edx
  0000000140002749: B9 01 00 00 00     mov         ecx,1
  000000014000274E: 45 33 C0           xor         r8d,r8d
  0000000140002751: 48 8B 7C 24 48     mov         rdi,qword ptr [rsp+48h]
  0000000140002756: 4C 8B 64 24 40     mov         r12,qword ptr [rsp+40h]
  000000014000275B: 4C 8B 6C 24 38     mov         r13,qword ptr [rsp+38h]
  0000000140002760: 4C 8B 74 24 30     mov         r14,qword ptr [rsp+30h]
  0000000140002765: 4C 8B 7C 24 28     mov         r15,qword ptr [rsp+28h]
  000000014000276A: 48 8B 6C 24 20     mov         rbp,qword ptr [rsp+20h]
  000000014000276F: E8 9C 1B 00 00     call        0000000140004310
  0000000140002774: 90                 nop
  0000000140002775: E9 BD FE FF FF     jmp         0000000140002637
  000000014000277A: E8 61 0E 00 00     call        00000001400035E0
  000000014000277F: 85 C0              test        eax,eax
  0000000140002781: 75 0E              jne         0000000140002791
  0000000140002783: 48 83 3D 35 B8 00  cmp         qword ptr [000000014000DFC0h],0
                    00 00
  000000014000278B: 0F 85 58 FC FF FF  jne         00000001400023E9
  0000000140002791: 33 D2              xor         edx,edx
  0000000140002793: B9 01 00 00 00     mov         ecx,1
  0000000140002798: 45 33 C0           xor         r8d,r8d
  000000014000279B: E8 70 1B 00 00     call        0000000140004310
  00000001400027A0: B9 01 00 00 00     mov         ecx,1
  00000001400027A5: BA 3B 00 00 00     mov         edx,3Bh
  00000001400027AA: 45 33 C0           xor         r8d,r8d
  00000001400027AD: E8 5E 1B 00 00     call        0000000140004310
  00000001400027B2: 90                 nop
  00000001400027B3: E9 91 FE FF FF     jmp         0000000140002649
  00000001400027B8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400027C0: 48 8D 05 27 67 00  lea         rax,[0000000140008EEEh]
                    00
  00000001400027C7: C3                 ret
  00000001400027C8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400027D0: 48 8D 05 09 5D 00  lea         rax,[00000001400084E0h]
                    00
  00000001400027D7: C3                 ret
  00000001400027D8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400027E0: 48 8D 05 A9 1E 00  lea         rax,[0000000140004690h]
                    00
  00000001400027E7: C3                 ret
  00000001400027E8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400027F0: 48 8D 05 89 2F 00  lea         rax,[0000000140005780h]
                    00
  00000001400027F7: C3                 ret
  00000001400027F8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140002800: 48 8B 05 A9 B1 00  mov         rax,qword ptr [000000014000D9B0h]
                    00
  0000000140002807: 48 85 C0           test        rax,rax
  000000014000280A: 74 02              je          000000014000280E
  000000014000280C: FF E0              jmp         rax
  000000014000280E: E9 0D 00 00 00     jmp         0000000140002820
  0000000140002813: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140002818: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140002820: 41 55              push        r13
  0000000140002822: 41 56              push        r14
  0000000140002824: 41 57              push        r15
  0000000140002826: 48 83 EC 20        sub         rsp,20h
  000000014000282A: 4D 89 C7           mov         r15,r8
  000000014000282D: 41 89 D6           mov         r14d,edx
  0000000140002830: 49 89 CD           mov         r13,rcx
  0000000140002833: E8 28 00 00 00     call        0000000140002860
  0000000140002838: 48 89 05 71 B1 00  mov         qword ptr [000000014000D9B0h],rax
                    00
  000000014000283F: 4C 89 E9           mov         rcx,r13
  0000000140002842: 44 89 F2           mov         edx,r14d
  0000000140002845: 4D 89 F8           mov         r8,r15
  0000000140002848: 48 83 C4 20        add         rsp,20h
  000000014000284C: 41 5F              pop         r15
  000000014000284E: 41 5E              pop         r14
  0000000140002850: 41 5D              pop         r13
  0000000140002852: FF E0              jmp         rax
  0000000140002854: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140002859: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140002860: 48 83 EC 08        sub         rsp,8
  0000000140002864: 48 B9 FF 97 9D 18  mov         rcx,7189D97FFh
                    07 00 00 00
  000000014000286E: 48 8B 05 4B B7 00  mov         rax,qword ptr [000000014000DFC0h]
                    00
  0000000140002875: 48 23 C1           and         rax,rcx
  0000000140002878: 48 3B C1           cmp         rax,rcx
  000000014000287B: 75 09              jne         0000000140002886
  000000014000287D: 48 83 C4 08        add         rsp,8
  0000000140002881: E9 6A FF FF FF     jmp         00000001400027F0
  0000000140002886: 8B 05 34 B7 00 00  mov         eax,dword ptr [000000014000DFC0h]
  000000014000288C: 25 FF 97 9D 00     and         eax,9D97FFh
  0000000140002891: 3D FF 97 9D 00     cmp         eax,9D97FFh
  0000000140002896: 75 09              jne         00000001400028A1
  0000000140002898: 48 83 C4 08        add         rsp,8
  000000014000289C: E9 3F FF FF FF     jmp         00000001400027E0
  00000001400028A1: 8A 15 19 B7 00 00  mov         dl,byte ptr [000000014000DFC0h]
  00000001400028A7: 88 D0              mov         al,dl
  00000001400028A9: 24 7F              and         al,7Fh
  00000001400028AB: 3C 7F              cmp         al,7Fh
  00000001400028AD: 75 09              jne         00000001400028B8
  00000001400028AF: 48 83 C4 08        add         rsp,8
  00000001400028B3: E9 18 FF FF FF     jmp         00000001400027D0
  00000001400028B8: 80 E2 7F           and         dl,7Fh
  00000001400028BB: 80 FA 7F           cmp         dl,7Fh
  00000001400028BE: 74 EF              je          00000001400028AF
  00000001400028C0: F6 05 F9 B6 00 00  test        byte ptr [000000014000DFC0h],1
                    01
  00000001400028C7: 74 09              je          00000001400028D2
  00000001400028C9: 48 83 C4 08        add         rsp,8
  00000001400028CD: E9 EE FE FF FF     jmp         00000001400027C0
  00000001400028D2: E8 09 0D 00 00     call        00000001400035E0
  00000001400028D7: EB 95              jmp         000000014000286E
  00000001400028D9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400028E0: 48 83 EC 28        sub         rsp,28h
  00000001400028E4: 83 3D F5 B6 00 00  cmp         dword ptr [000000014000DFE0h],0
                    00
  00000001400028EB: 74 1B              je          0000000140002908
  00000001400028ED: 48 63 C9           movsxd      rcx,ecx
  00000001400028F0: 48 8D 05 09 D7 FF  lea         rax,[0000000140000000h]
                    FF
  00000001400028F7: 48 8D 14 49        lea         rdx,[rcx+rcx*2]
  00000001400028FB: 48 8B 84 D0 C0 D9  mov         rax,qword ptr [rax+rdx*8+000000000000D9C0h]
                    00 00
  0000000140002903: 48 83 C4 28        add         rsp,28h
  0000000140002907: C3                 ret
  0000000140002908: E8 73 03 00 00     call        0000000140002C80
  000000014000290D: 85 C0              test        eax,eax
  000000014000290F: 75 DC              jne         00000001400028ED
  0000000140002911: 33 C0              xor         eax,eax
  0000000140002913: 48 83 C4 28        add         rsp,28h
  0000000140002917: C3                 ret
  0000000140002918: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140002920: 41 52              push        r10
  0000000140002922: 48 83 EC 20        sub         rsp,20h
  0000000140002926: 41 89 C2           mov         r10d,eax
  0000000140002929: 83 3D B0 B6 00 00  cmp         dword ptr [000000014000DFE0h],0
                    00
  0000000140002930: 74 35              je          0000000140002967
  0000000140002932: 4D 63 D2           movsxd      r10,r10d
  0000000140002935: 48 8D 05 C4 D6 FF  lea         rax,[0000000140000000h]
                    FF
  000000014000293C: 4F 8D 14 52        lea         r10,[r10+r10*2]
  0000000140002940: 42 8B 84 D0 C8 D9  mov         eax,dword ptr [rax+r10*8+000000000000D9C8h]
                    00 00
  0000000140002948: 83 F8 FF           cmp         eax,0FFFFFFFFh
  000000014000294B: 7C 0E              jl          000000014000295B
  000000014000294D: 3D 80 00 00 00     cmp         eax,80h
  0000000140002952: 7D 07              jge         000000014000295B
  0000000140002954: 48 83 C4 20        add         rsp,20h
  0000000140002958: 41 5A              pop         r10
  000000014000295A: C3                 ret
  000000014000295B: B8 FD FF FF FF     mov         eax,0FFFFFFFDh
  0000000140002960: 48 83 C4 20        add         rsp,20h
  0000000140002964: 41 5A              pop         r10
  0000000140002966: C3                 ret
  0000000140002967: E8 14 03 00 00     call        0000000140002C80
  000000014000296C: 85 C0              test        eax,eax
  000000014000296E: 75 C2              jne         0000000140002932
  0000000140002970: B8 FE FF FF FF     mov         eax,0FFFFFFFEh
  0000000140002975: 48 83 C4 20        add         rsp,20h
  0000000140002979: 41 5A              pop         r10
  000000014000297B: C3                 ret
  000000014000297C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140002980: 48 83 EC 58        sub         rsp,58h
  0000000140002984: 48 89 D0           mov         rax,rdx
  0000000140002987: 48 89 CA           mov         rdx,rcx
  000000014000298A: 45 33 D2           xor         r10d,r10d
  000000014000298D: 49 89 D1           mov         r9,rdx
  0000000140002990: 4C 8D 05 69 D6 FF  lea         r8,[0000000140000000h]
                    FF
  0000000140002997: 49 F7 D9           neg         r9
  000000014000299A: 45 33 DB           xor         r11d,r11d
  000000014000299D: 48 85 D2           test        rdx,rdx
  00000001400029A0: 0F 84 A9 01 00 00  je          0000000140002B4F
  00000001400029A6: 48 85 C0           test        rax,rax
  00000001400029A9: 0F 84 A0 01 00 00  je          0000000140002B4F
  00000001400029AF: 8A 0A              mov         cl,byte ptr [rdx]
  00000001400029B1: 84 C9              test        cl,cl
  00000001400029B3: 0F 84 6C 01 00 00  je          0000000140002B25
  00000001400029B9: 80 F9 2C           cmp         cl,2Ch
  00000001400029BC: 74 28              je          00000001400029E6
  00000001400029BE: 48 89 74 24 50     mov         qword ptr [rsp+50h],rsi
  00000001400029C3: 48 89 7C 24 40     mov         qword ptr [rsp+40h],rdi
  00000001400029C8: 4C 89 64 24 48     mov         qword ptr [rsp+48h],r12
  00000001400029CD: 49 89 C4           mov         r12,rax
  00000001400029D0: 4C 89 6C 24 20     mov         qword ptr [rsp+20h],r13
  00000001400029D5: 4C 89 74 24 28     mov         qword ptr [rsp+28h],r14
  00000001400029DA: 4C 89 7C 24 30     mov         qword ptr [rsp+30h],r15
  00000001400029DF: 48 89 6C 24 38     mov         qword ptr [rsp+38h],rbp
  00000001400029E4: EB 5A              jmp         0000000140002A40
  00000001400029E6: 48 89 74 24 50     mov         qword ptr [rsp+50h],rsi
  00000001400029EB: 48 89 7C 24 40     mov         qword ptr [rsp+40h],rdi
  00000001400029F0: 4C 89 64 24 48     mov         qword ptr [rsp+48h],r12
  00000001400029F5: 49 89 C4           mov         r12,rax
  00000001400029F8: 4C 89 6C 24 20     mov         qword ptr [rsp+20h],r13
  00000001400029FD: 4C 89 74 24 28     mov         qword ptr [rsp+28h],r14
  0000000140002A02: 4C 89 7C 24 30     mov         qword ptr [rsp+30h],r15
  0000000140002A07: 48 89 6C 24 38     mov         qword ptr [rsp+38h],rbp
  0000000140002A0C: 48 FF C2           inc         rdx
  0000000140002A0F: 49 FF C9           dec         r9
  0000000140002A12: 8A 0A              mov         cl,byte ptr [rdx]
  0000000140002A14: 80 F9 2C           cmp         cl,2Ch
  0000000140002A17: 75 27              jne         0000000140002A40
  0000000140002A19: 48 FF C2           inc         rdx
  0000000140002A1C: 49 FF C9           dec         r9
  0000000140002A1F: 8A 0A              mov         cl,byte ptr [rdx]
  0000000140002A21: 80 F9 2C           cmp         cl,2Ch
  0000000140002A24: 75 1A              jne         0000000140002A40
  0000000140002A26: 48 FF C2           inc         rdx
  0000000140002A29: 49 FF C9           dec         r9
  0000000140002A2C: 8A 0A              mov         cl,byte ptr [rdx]
  0000000140002A2E: 80 F9 2C           cmp         cl,2Ch
  0000000140002A31: 75 0D              jne         0000000140002A40
  0000000140002A33: 48 FF C2           inc         rdx
  0000000140002A36: 49 FF C9           dec         r9
  0000000140002A39: 8A 0A              mov         cl,byte ptr [rdx]
  0000000140002A3B: 80 F9 2C           cmp         cl,2Ch
  0000000140002A3E: 74 F3              je          0000000140002A33
  0000000140002A40: 84 C9              test        cl,cl
  0000000140002A42: 0F 84 BA 00 00 00  je          0000000140002B02
  0000000140002A48: 48 89 D6           mov         rsi,rdx
  0000000140002A4B: 48 FF C2           inc         rdx
  0000000140002A4E: 4C 89 C9           mov         rcx,r9
  0000000140002A51: 49 FF C9           dec         r9
  0000000140002A54: 40 8A 3A           mov         dil,byte ptr [rdx]
  0000000140002A57: 40 80 FF 2C        cmp         dil,2Ch
  0000000140002A5B: 74 1B              je          0000000140002A78
  0000000140002A5D: 40 84 FF           test        dil,dil
  0000000140002A60: 0F 84 D5 00 00 00  je          0000000140002B3B
  0000000140002A66: 49 89 D2           mov         r10,rdx
  0000000140002A69: 48 FF C2           inc         rdx
  0000000140002A6C: 49 FF C9           dec         r9
  0000000140002A6F: 40 8A 3A           mov         dil,byte ptr [rdx]
  0000000140002A72: 40 80 FF 2C        cmp         dil,2Ch
  0000000140002A76: 75 E5              jne         0000000140002A5D
  0000000140002A78: 4A 8D 6C 11 01     lea         rbp,[rcx+r10+1]
  0000000140002A7D: 48 85 F6           test        rsi,rsi
  0000000140002A80: 74 8A              je          0000000140002A0C
  0000000140002A82: 48 85 ED           test        rbp,rbp
  0000000140002A85: 74 85              je          0000000140002A0C
  0000000140002A87: 83 3D 52 B5 00 00  cmp         dword ptr [000000014000DFE0h],0
                    00
  0000000140002A8E: 0F 84 99 00 00 00  je          0000000140002B2D
  0000000140002A94: B9 01 00 00 00     mov         ecx,1
  0000000140002A99: 41 BD 18 00 00 00  mov         r13d,18h
  0000000140002A9F: 4F 8B BC 28 D0 D9  mov         r15,qword ptr [r8+r13+000000000000D9D0h]
                    00 00
  0000000140002AA7: 4D 85 FF           test        r15,r15
  0000000140002AAA: 74 21              je          0000000140002ACD
  0000000140002AAC: 45 33 F6           xor         r14d,r14d
  0000000140002AAF: 48 85 ED           test        rbp,rbp
  0000000140002AB2: 76 12              jbe         0000000140002AC6
  0000000140002AB4: 41 8A 04 36        mov         al,byte ptr [r14+rsi]
  0000000140002AB8: 43 3A 04 3E        cmp         al,byte ptr [r14+r15]
  0000000140002ABC: 75 0F              jne         0000000140002ACD
  0000000140002ABE: 49 FF C6           inc         r14
  0000000140002AC1: 4C 3B F5           cmp         r14,rbp
  0000000140002AC4: 72 EE              jb          0000000140002AB4
  0000000140002AC6: 41 80 3C 2F 00     cmp         byte ptr [r15+rbp],0
  0000000140002ACB: 74 0D              je          0000000140002ADA
  0000000140002ACD: FF C1              inc         ecx
  0000000140002ACF: 49 83 C5 18        add         r13,18h
  0000000140002AD3: 83 F9 40           cmp         ecx,40h
  0000000140002AD6: 7C C7              jl          0000000140002A9F
  0000000140002AD8: EB 14              jmp         0000000140002AEE
  0000000140002ADA: 83 F9 01           cmp         ecx,1
  0000000140002ADD: 74 0F              je          0000000140002AEE
  0000000140002ADF: 4C 89 E0           mov         rax,r12
  0000000140002AE2: E8 19 01 00 00     call        0000000140002C00
  0000000140002AE7: 83 F8 01           cmp         eax,1
  0000000140002AEA: 49 83 D3 00        adc         r11,0
  0000000140002AEE: 40 84 FF           test        dil,dil
  0000000140002AF1: 74 0F              je          0000000140002B02
  0000000140002AF3: 40 80 FF 2C        cmp         dil,2Ch
  0000000140002AF7: 0F 85 4B FF FF FF  jne         0000000140002A48
  0000000140002AFD: E9 0A FF FF FF     jmp         0000000140002A0C
  0000000140002B02: 48 8B 74 24 50     mov         rsi,qword ptr [rsp+50h]
  0000000140002B07: 48 8B 7C 24 40     mov         rdi,qword ptr [rsp+40h]
  0000000140002B0C: 4C 8B 64 24 48     mov         r12,qword ptr [rsp+48h]
  0000000140002B11: 4C 8B 6C 24 20     mov         r13,qword ptr [rsp+20h]
  0000000140002B16: 4C 8B 74 24 28     mov         r14,qword ptr [rsp+28h]
  0000000140002B1B: 4C 8B 7C 24 30     mov         r15,qword ptr [rsp+30h]
  0000000140002B20: 48 8B 6C 24 38     mov         rbp,qword ptr [rsp+38h]
  0000000140002B25: 44 89 D8           mov         eax,r11d
  0000000140002B28: 48 83 C4 58        add         rsp,58h
  0000000140002B2C: C3                 ret
  0000000140002B2D: E8 4E 01 00 00     call        0000000140002C80
  0000000140002B32: 85 C0              test        eax,eax
  0000000140002B34: 74 B8              je          0000000140002AEE
  0000000140002B36: E9 59 FF FF FF     jmp         0000000140002A94
  0000000140002B3B: 4A 8D 6C 11 01     lea         rbp,[rcx+r10+1]
  0000000140002B40: 48 85 F6           test        rsi,rsi
  0000000140002B43: 74 BD              je          0000000140002B02
  0000000140002B45: 48 85 ED           test        rbp,rbp
  0000000140002B48: 74 B8              je          0000000140002B02
  0000000140002B4A: E9 38 FF FF FF     jmp         0000000140002A87
  0000000140002B4F: 33 C0              xor         eax,eax
  0000000140002B51: 48 83 C4 58        add         rsp,58h
  0000000140002B55: C3                 ret
  0000000140002B56: 0F 1F 00           nop         dword ptr [rax]
  0000000140002B59: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140002B60: 48 83 EC 28        sub         rsp,28h
  0000000140002B64: 83 3D 75 B4 00 00  cmp         dword ptr [000000014000DFE0h],0
                    00
  0000000140002B6B: 74 54              je          0000000140002BC1
  0000000140002B6D: 48 63 D2           movsxd      rdx,edx
  0000000140002B70: 48 8D 05 89 D4 FF  lea         rax,[0000000140000000h]
                    FF
  0000000140002B77: 4C 8D 04 52        lea         r8,[rdx+rdx*2]
  0000000140002B7B: 46 8B 8C C0 C8 D9  mov         r9d,dword ptr [rax+r8*8+000000000000D9C8h]
                    00 00
  0000000140002B83: 41 83 F9 FF        cmp         r9d,0FFFFFFFFh
  0000000140002B87: 7C 2A              jl          0000000140002BB3
  0000000140002B89: 41 81 F9 80 00 00  cmp         r9d,80h
                    00
  0000000140002B90: 7D 21              jge         0000000140002BB3
  0000000140002B92: 45 85 C9           test        r9d,r9d
  0000000140002B95: 7C 22              jl          0000000140002BB9
  0000000140002B97: 49 63 D1           movsxd      rdx,r9d
  0000000140002B9A: 33 C0              xor         eax,eax
  0000000140002B9C: 48 C1 EA 06        shr         rdx,6
  0000000140002BA0: 4C 63 C2           movsxd      r8,edx
  0000000140002BA3: 4A 8B 0C C1        mov         rcx,qword ptr [rcx+r8*8]
  0000000140002BA7: 4C 0F A3 C9        bt          rcx,r9
  0000000140002BAB: 0F 92 C0           setb        al
  0000000140002BAE: 48 83 C4 28        add         rsp,28h
  0000000140002BB2: C3                 ret
  0000000140002BB3: 41 B9 FD FF FF FF  mov         r9d,0FFFFFFFDh
  0000000140002BB9: 44 89 C8           mov         eax,r9d
  0000000140002BBC: 48 83 C4 28        add         rsp,28h
  0000000140002BC0: C3                 ret
  0000000140002BC1: E8 BA 00 00 00     call        0000000140002C80
  0000000140002BC6: 85 C0              test        eax,eax
  0000000140002BC8: 75 A3              jne         0000000140002B6D
  0000000140002BCA: 41 B9 FE FF FF FF  mov         r9d,0FFFFFFFEh
  0000000140002BD0: EB E7              jmp         0000000140002BB9
  0000000140002BD2: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140002BD9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140002BE0: 41 57              push        r15
  0000000140002BE2: 4C 8B 79 08        mov         r15,qword ptr [rcx+8]
  0000000140002BE6: 48 8B 09           mov         rcx,qword ptr [rcx]
  0000000140002BE9: 4C 89 78 08        mov         qword ptr [rax+8],r15
  0000000140002BED: 48 89 08           mov         qword ptr [rax],rcx
  0000000140002BF0: 33 C0              xor         eax,eax
  0000000140002BF2: 41 5F              pop         r15
  0000000140002BF4: C3                 ret
  0000000140002BF5: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140002BF9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140002C00: 41 52              push        r10
  0000000140002C02: 55                 push        rbp
  0000000140002C03: 48 83 EC 28        sub         rsp,28h
  0000000140002C07: 89 CD              mov         ebp,ecx
  0000000140002C09: 48 89 C1           mov         rcx,rax
  0000000140002C0C: 83 3D CD B3 00 00  cmp         dword ptr [000000014000DFE0h],0
                    00
  0000000140002C13: 74 54              je          0000000140002C69
  0000000140002C15: 48 63 ED           movsxd      rbp,ebp
  0000000140002C18: 48 8D 05 E1 D3 FF  lea         rax,[0000000140000000h]
                    FF
  0000000140002C1F: 4C 8D 54 6D 00     lea         r10,[rbp+rbp*2]
  0000000140002C24: 42 8B 84 D0 C8 D9  mov         eax,dword ptr [rax+r10*8+000000000000D9C8h]
                    00 00
  0000000140002C2C: 83 F8 FF           cmp         eax,0FFFFFFFFh
  0000000140002C2F: 7C 2B              jl          0000000140002C5C
  0000000140002C31: 3D 80 00 00 00     cmp         eax,80h
  0000000140002C36: 7D 24              jge         0000000140002C5C
  0000000140002C38: 85 C0              test        eax,eax
  0000000140002C3A: 7C 25              jl          0000000140002C61
  0000000140002C3C: 48 63 E8           movsxd      rbp,eax
  0000000140002C3F: 48 C1 ED 06        shr         rbp,6
  0000000140002C43: 48 63 ED           movsxd      rbp,ebp
  0000000140002C46: 4C 8B 14 E9        mov         r10,qword ptr [rcx+rbp*8]
  0000000140002C4A: 49 0F AB C2        bts         r10,rax
  0000000140002C4E: 33 C0              xor         eax,eax
  0000000140002C50: 4C 89 14 E9        mov         qword ptr [rcx+rbp*8],r10
  0000000140002C54: 48 83 C4 28        add         rsp,28h
  0000000140002C58: 5D                 pop         rbp
  0000000140002C59: 41 5A              pop         r10
  0000000140002C5B: C3                 ret
  0000000140002C5C: B8 FD FF FF FF     mov         eax,0FFFFFFFDh
  0000000140002C61: 48 83 C4 28        add         rsp,28h
  0000000140002C65: 5D                 pop         rbp
  0000000140002C66: 41 5A              pop         r10
  0000000140002C68: C3                 ret
  0000000140002C69: E8 12 00 00 00     call        0000000140002C80
  0000000140002C6E: 85 C0              test        eax,eax
  0000000140002C70: 75 A3              jne         0000000140002C15
  0000000140002C72: B8 FE FF FF FF     mov         eax,0FFFFFFFEh
  0000000140002C77: 48 83 C4 28        add         rsp,28h
  0000000140002C7B: 5D                 pop         rbp
  0000000140002C7C: 41 5A              pop         r10
  0000000140002C7E: C3                 ret
  0000000140002C7F: 90                 nop
  0000000140002C80: 52                 push        rdx
  0000000140002C81: 48 83 EC 30        sub         rsp,30h
  0000000140002C85: 83 3D 54 B3 00 00  cmp         dword ptr [000000014000DFE0h],0
                    00
  0000000140002C8C: 74 0B              je          0000000140002C99
  0000000140002C8E: B8 01 00 00 00     mov         eax,1
  0000000140002C93: 48 83 C4 30        add         rsp,30h
  0000000140002C97: 5A                 pop         rdx
  0000000140002C98: C3                 ret
  0000000140002C99: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000140002C9E: 32 D2              xor         dl,dl
  0000000140002CA0: 48 89 5C 24 20     mov         qword ptr [rsp+20h],rbx
  0000000140002CA5: 33 C0              xor         eax,eax
  0000000140002CA7: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  0000000140002CAC: 48 8D 1D 4D D3 FF  lea         rbx,[0000000140000000h]
                    FF
  0000000140002CB3: FE C2              inc         dl
  0000000140002CB5: 89 8C 03 E0 D9 00  mov         dword ptr [rbx+rax+000000000000D9E0h],ecx
                    00
  0000000140002CBC: 89 8C 03 F8 D9 00  mov         dword ptr [rbx+rax+000000000000D9F8h],ecx
                    00
  0000000140002CC3: 48 83 C0 30        add         rax,30h
  0000000140002CC7: 80 FA 1F           cmp         dl,1Fh
  0000000140002CCA: 72 E7              jb          0000000140002CB3
  0000000140002CCC: 48 8D 15 B1 76 00  lea         rdx,[000000014000A384h]
                    00
  0000000140002CD3: 48 8D 05 BA 76 00  lea         rax,[000000014000A394h]
                    00
  0000000140002CDA: 48 89 15 F7 AC 00  mov         qword ptr [000000014000D9D8h],rdx
                    00
  0000000140002CE1: 48 8D 15 B0 76 00  lea         rdx,[000000014000A398h]
                    00
  0000000140002CE8: 48 89 15 19 AD 00  mov         qword ptr [000000014000DA08h],rdx
                    00
  0000000140002CEF: 48 8D 15 AA 76 00  lea         rdx,[000000014000A3A0h]
                    00
  0000000140002CF6: 48 89 15 33 AD 00  mov         qword ptr [000000014000DA30h],rdx
                    00
  0000000140002CFD: 48 8D 15 A0 76 00  lea         rdx,[000000014000A3A4h]
                    00
  0000000140002D04: 48 89 15 15 AD 00  mov         qword ptr [000000014000DA20h],rdx
                    00
  0000000140002D0B: 48 8D 15 96 76 00  lea         rdx,[000000014000A3A8h]
                    00
  0000000140002D12: 48 89 15 1F AD 00  mov         qword ptr [000000014000DA38h],rdx
                    00
  0000000140002D19: 48 8D 15 90 76 00  lea         rdx,[000000014000A3B0h]
                    00
  0000000140002D20: 48 89 15 39 AD 00  mov         qword ptr [000000014000DA60h],rdx
                    00
  0000000140002D27: 48 8D 15 86 76 00  lea         rdx,[000000014000A3B4h]
                    00
  0000000140002D2E: 48 89 15 1B AD 00  mov         qword ptr [000000014000DA50h],rdx
                    00
  0000000140002D35: 48 8D 15 7C 76 00  lea         rdx,[000000014000A3B8h]
                    00
  0000000140002D3C: 48 89 15 35 AD 00  mov         qword ptr [000000014000DA78h],rdx
                    00
  0000000140002D43: 48 8D 15 76 76 00  lea         rdx,[000000014000A3C0h]
                    00
  0000000140002D4A: 48 89 15 17 AD 00  mov         qword ptr [000000014000DA68h],rdx
                    00
  0000000140002D51: 48 8D 15 70 76 00  lea         rdx,[000000014000A3C8h]
                    00
  0000000140002D58: 48 89 15 31 AD 00  mov         qword ptr [000000014000DA90h],rdx
                    00
  0000000140002D5F: 48 8D 15 6A 76 00  lea         rdx,[000000014000A3D0h]
                    00
  0000000140002D66: 48 89 15 13 AD 00  mov         qword ptr [000000014000DA80h],rdx
                    00
  0000000140002D6D: 48 8D 15 64 76 00  lea         rdx,[000000014000A3D8h]
                    00
  0000000140002D74: 48 89 15 2D AD 00  mov         qword ptr [000000014000DAA8h],rdx
                    00
  0000000140002D7B: 48 8D 15 5E 76 00  lea         rdx,[000000014000A3E0h]
                    00
  0000000140002D82: 48 89 15 0F AD 00  mov         qword ptr [000000014000DA98h],rdx
                    00
  0000000140002D89: 48 8D 15 58 76 00  lea         rdx,[000000014000A3E8h]
                    00
  0000000140002D90: 48 89 15 29 AD 00  mov         qword ptr [000000014000DAC0h],rdx
                    00
  0000000140002D97: 48 8D 15 52 76 00  lea         rdx,[000000014000A3F0h]
                    00
  0000000140002D9E: 48 89 15 0B AD 00  mov         qword ptr [000000014000DAB0h],rdx
                    00
  0000000140002DA5: 48 8D 15 4C 76 00  lea         rdx,[000000014000A3F8h]
                    00
  0000000140002DAC: 48 89 15 25 AD 00  mov         qword ptr [000000014000DAD8h],rdx
                    00
  0000000140002DB3: 48 8D 15 46 76 00  lea         rdx,[000000014000A400h]
                    00
  0000000140002DBA: 48 89 15 07 AD 00  mov         qword ptr [000000014000DAC8h],rdx
                    00
  0000000140002DC1: 48 8D 15 40 76 00  lea         rdx,[000000014000A408h]
                    00
  0000000140002DC8: 48 89 15 21 AD 00  mov         qword ptr [000000014000DAF0h],rdx
                    00
  0000000140002DCF: 48 8D 15 3A 76 00  lea         rdx,[000000014000A410h]
                    00
  0000000140002DD6: 48 89 15 03 AD 00  mov         qword ptr [000000014000DAE0h],rdx
                    00
  0000000140002DDD: 48 8D 15 34 76 00  lea         rdx,[000000014000A418h]
                    00
  0000000140002DE4: 48 89 15 1D AD 00  mov         qword ptr [000000014000DB08h],rdx
                    00
  0000000140002DEB: 48 8D 15 2E 76 00  lea         rdx,[000000014000A420h]
                    00
  0000000140002DF2: 48 89 15 FF AC 00  mov         qword ptr [000000014000DAF8h],rdx
                    00
  0000000140002DF9: 48 8D 15 28 76 00  lea         rdx,[000000014000A428h]
                    00
  0000000140002E00: 48 89 15 19 AD 00  mov         qword ptr [000000014000DB20h],rdx
                    00
  0000000140002E07: 48 8D 15 22 76 00  lea         rdx,[000000014000A430h]
                    00
  0000000140002E0E: 48 89 15 FB AC 00  mov         qword ptr [000000014000DB10h],rdx
                    00
  0000000140002E15: 48 8D 15 20 76 00  lea         rdx,[000000014000A43Ch]
                    00
  0000000140002E1C: 48 89 15 15 AD 00  mov         qword ptr [000000014000DB38h],rdx
                    00
  0000000140002E23: 48 8D 15 16 76 00  lea         rdx,[000000014000A440h]
                    00
  0000000140002E2A: 48 89 15 F7 AC 00  mov         qword ptr [000000014000DB28h],rdx
                    00
  0000000140002E31: 48 8D 15 0C 76 00  lea         rdx,[000000014000A444h]
                    00
  0000000140002E38: 48 89 15 11 AD 00  mov         qword ptr [000000014000DB50h],rdx
                    00
  0000000140002E3F: 48 8D 15 02 76 00  lea         rdx,[000000014000A448h]
                    00
  0000000140002E46: 48 89 15 F3 AC 00  mov         qword ptr [000000014000DB40h],rdx
                    00
  0000000140002E4D: 48 8D 15 F8 75 00  lea         rdx,[000000014000A44Ch]
                    00
  0000000140002E54: 48 89 15 0D AD 00  mov         qword ptr [000000014000DB68h],rdx
                    00
  0000000140002E5B: 48 8D 15 F2 75 00  lea         rdx,[000000014000A454h]
                    00
  0000000140002E62: 48 89 15 EF AC 00  mov         qword ptr [000000014000DB58h],rdx
                    00
  0000000140002E69: 48 8D 15 EC 75 00  lea         rdx,[000000014000A45Ch]
                    00
  0000000140002E70: 48 89 15 09 AD 00  mov         qword ptr [000000014000DB80h],rdx
                    00
  0000000140002E77: 48 8D 15 E6 75 00  lea         rdx,[000000014000A464h]
                    00
  0000000140002E7E: 48 89 15 EB AC 00  mov         qword ptr [000000014000DB70h],rdx
                    00
  0000000140002E85: 48 8D 15 E0 75 00  lea         rdx,[000000014000A46Ch]
                    00
  0000000140002E8C: 48 89 15 05 AD 00  mov         qword ptr [000000014000DB98h],rdx
                    00
  0000000140002E93: 48 8D 15 D6 75 00  lea         rdx,[000000014000A470h]
                    00
  0000000140002E9A: 48 89 15 E7 AC 00  mov         qword ptr [000000014000DB88h],rdx
                    00
  0000000140002EA1: 48 8D 15 CC 75 00  lea         rdx,[000000014000A474h]
                    00
  0000000140002EA8: 48 89 15 01 AD 00  mov         qword ptr [000000014000DBB0h],rdx
                    00
  0000000140002EAF: 48 8D 15 C2 75 00  lea         rdx,[000000014000A478h]
                    00
  0000000140002EB6: 48 89 15 E3 AC 00  mov         qword ptr [000000014000DBA0h],rdx
                    00
  0000000140002EBD: 48 8D 15 B8 75 00  lea         rdx,[000000014000A47Ch]
                    00
  0000000140002EC4: 48 89 15 FD AC 00  mov         qword ptr [000000014000DBC8h],rdx
                    00
  0000000140002ECB: 48 8D 15 B2 75 00  lea         rdx,[000000014000A484h]
                    00
  0000000140002ED2: 48 89 15 DF AC 00  mov         qword ptr [000000014000DBB8h],rdx
                    00
  0000000140002ED9: 48 8D 15 AC 75 00  lea         rdx,[000000014000A48Ch]
                    00
  0000000140002EE0: 48 89 15 F9 AC 00  mov         qword ptr [000000014000DBE0h],rdx
                    00
  0000000140002EE7: 48 8D 15 A2 75 00  lea         rdx,[000000014000A490h]
                    00
  0000000140002EEE: 48 89 15 DB AC 00  mov         qword ptr [000000014000DBD0h],rdx
                    00
  0000000140002EF5: 48 8D 15 98 75 00  lea         rdx,[000000014000A494h]
                    00
  0000000140002EFC: 48 89 15 F5 AC 00  mov         qword ptr [000000014000DBF8h],rdx
                    00
  0000000140002F03: 48 8D 15 8E 75 00  lea         rdx,[000000014000A498h]
                    00
  0000000140002F0A: 48 89 15 D7 AC 00  mov         qword ptr [000000014000DBE8h],rdx
                    00
  0000000140002F11: 48 8D 15 84 75 00  lea         rdx,[000000014000A49Ch]
                    00
  0000000140002F18: 48 89 15 F1 AC 00  mov         qword ptr [000000014000DC10h],rdx
                    00
  0000000140002F1F: 48 8D 15 7E 75 00  lea         rdx,[000000014000A4A4h]
                    00
  0000000140002F26: 48 89 15 D3 AC 00  mov         qword ptr [000000014000DC00h],rdx
                    00
  0000000140002F2D: 48 8D 15 78 75 00  lea         rdx,[000000014000A4ACh]
                    00
  0000000140002F34: 48 89 15 ED AC 00  mov         qword ptr [000000014000DC28h],rdx
                    00
  0000000140002F3B: 48 8D 15 72 75 00  lea         rdx,[000000014000A4B4h]
                    00
  0000000140002F42: 48 89 15 CF AC 00  mov         qword ptr [000000014000DC18h],rdx
                    00
  0000000140002F49: 48 8D 15 6C 75 00  lea         rdx,[000000014000A4BCh]
                    00
  0000000140002F50: 48 89 15 E9 AC 00  mov         qword ptr [000000014000DC40h],rdx
                    00
  0000000140002F57: 48 8D 15 6A 75 00  lea         rdx,[000000014000A4C8h]
                    00
  0000000140002F5E: 48 89 15 CB AC 00  mov         qword ptr [000000014000DC30h],rdx
                    00
  0000000140002F65: 48 8D 15 68 75 00  lea         rdx,[000000014000A4D4h]
                    00
  0000000140002F6C: 48 89 15 E5 AC 00  mov         qword ptr [000000014000DC58h],rdx
                    00
  0000000140002F73: 48 8D 15 62 75 00  lea         rdx,[000000014000A4DCh]
                    00
  0000000140002F7A: 48 89 15 C7 AC 00  mov         qword ptr [000000014000DC48h],rdx
                    00
  0000000140002F81: 48 8D 15 5C 75 00  lea         rdx,[000000014000A4E4h]
                    00
  0000000140002F88: 48 89 15 D1 AC 00  mov         qword ptr [000000014000DC60h],rdx
                    00
  0000000140002F8F: 48 8D 15 56 75 00  lea         rdx,[000000014000A4ECh]
                    00
  0000000140002F96: 48 89 15 EB AC 00  mov         qword ptr [000000014000DC88h],rdx
                    00
  0000000140002F9D: 48 8D 15 4C 75 00  lea         rdx,[000000014000A4F0h]
                    00
  0000000140002FA4: 48 89 15 CD AC 00  mov         qword ptr [000000014000DC78h],rdx
                    00
  0000000140002FAB: 48 8D 15 42 75 00  lea         rdx,[000000014000A4F4h]
                    00
  0000000140002FB2: 48 89 15 E7 AC 00  mov         qword ptr [000000014000DCA0h],rdx
                    00
  0000000140002FB9: 48 8D 15 3C 75 00  lea         rdx,[000000014000A4FCh]
                    00
  0000000140002FC0: 48 89 15 C9 AC 00  mov         qword ptr [000000014000DC90h],rdx
                    00
  0000000140002FC7: 48 8D 15 36 75 00  lea         rdx,[000000014000A504h]
                    00
  0000000140002FCE: 48 89 15 E3 AC 00  mov         qword ptr [000000014000DCB8h],rdx
                    00
  0000000140002FD5: 48 8D 15 34 75 00  lea         rdx,[000000014000A510h]
                    00
  0000000140002FDC: 48 89 15 C5 AC 00  mov         qword ptr [000000014000DCA8h],rdx
                    00
  0000000140002FE3: 48 8D 15 36 75 00  lea         rdx,[000000014000A520h]
                    00
  0000000140002FEA: 48 89 15 F7 AC 00  mov         qword ptr [000000014000DCE8h],rdx
                    00
  0000000140002FF1: 48 8D 15 34 75 00  lea         rdx,[000000014000A52Ch]
                    00
  0000000140002FF8: 48 89 15 D9 AC 00  mov         qword ptr [000000014000DCD8h],rdx
                    00
  0000000140002FFF: 48 8D 15 32 75 00  lea         rdx,[000000014000A538h]
                    00
  0000000140003006: 48 89 15 F3 AC 00  mov         qword ptr [000000014000DD00h],rdx
                    00
  000000014000300D: 48 8D 15 30 75 00  lea         rdx,[000000014000A544h]
                    00
  0000000140003014: 48 89 15 D5 AC 00  mov         qword ptr [000000014000DCF0h],rdx
                    00
  000000014000301B: 48 8D 15 2E 75 00  lea         rdx,[000000014000A550h]
                    00
  0000000140003022: 48 89 15 EF AC 00  mov         qword ptr [000000014000DD18h],rdx
                    00
  0000000140003029: 48 8D 15 2C 75 00  lea         rdx,[000000014000A55Ch]
                    00
  0000000140003030: 48 89 15 D1 AC 00  mov         qword ptr [000000014000DD08h],rdx
                    00
  0000000140003037: 48 8D 15 2A 75 00  lea         rdx,[000000014000A568h]
                    00
  000000014000303E: 48 89 15 EB AC 00  mov         qword ptr [000000014000DD30h],rdx
                    00
  0000000140003045: 48 8D 15 20 75 00  lea         rdx,[000000014000A56Ch]
                    00
  000000014000304C: 48 89 15 CD AC 00  mov         qword ptr [000000014000DD20h],rdx
                    00
  0000000140003053: 48 8D 15 16 75 00  lea         rdx,[000000014000A570h]
                    00
  000000014000305A: 48 89 15 E7 AC 00  mov         qword ptr [000000014000DD48h],rdx
                    00
  0000000140003061: 48 8D 15 0C 75 00  lea         rdx,[000000014000A574h]
                    00
  0000000140003068: 48 89 15 C9 AC 00  mov         qword ptr [000000014000DD38h],rdx
                    00
  000000014000306F: 48 8D 15 02 75 00  lea         rdx,[000000014000A578h]
                    00
  0000000140003076: 48 89 15 E3 AC 00  mov         qword ptr [000000014000DD60h],rdx
                    00
  000000014000307D: 48 8D 15 00 75 00  lea         rdx,[000000014000A584h]
                    00
  0000000140003084: 48 89 15 C5 AC 00  mov         qword ptr [000000014000DD50h],rdx
                    00
  000000014000308B: 48 8D 15 FE 74 00  lea         rdx,[000000014000A590h]
                    00
  0000000140003092: 48 89 15 DF AC 00  mov         qword ptr [000000014000DD78h],rdx
                    00
  0000000140003099: 48 8D 15 FC 74 00  lea         rdx,[000000014000A59Ch]
                    00
  00000001400030A0: 48 89 15 C1 AC 00  mov         qword ptr [000000014000DD68h],rdx
                    00
  00000001400030A7: 48 8D 15 FA 74 00  lea         rdx,[000000014000A5A8h]
                    00
  00000001400030AE: 48 89 15 DB AC 00  mov         qword ptr [000000014000DD90h],rdx
                    00
  00000001400030B5: 48 8D 15 F8 74 00  lea         rdx,[000000014000A5B4h]
                    00
  00000001400030BC: 48 89 15 BD AC 00  mov         qword ptr [000000014000DD80h],rdx
                    00
  00000001400030C3: 48 8D 15 F6 74 00  lea         rdx,[000000014000A5C0h]
                    00
  00000001400030CA: 48 89 15 D7 AC 00  mov         qword ptr [000000014000DDA8h],rdx
                    00
  00000001400030D1: 48 8D 15 F8 74 00  lea         rdx,[000000014000A5D0h]
                    00
  00000001400030D8: 48 89 15 B9 AC 00  mov         qword ptr [000000014000DD98h],rdx
                    00
  00000001400030DF: 48 8D 15 FA 74 00  lea         rdx,[000000014000A5E0h]
                    00
  00000001400030E6: 48 89 15 D3 AC 00  mov         qword ptr [000000014000DDC0h],rdx
                    00
  00000001400030ED: 48 8D 15 FC 74 00  lea         rdx,[000000014000A5F0h]
                    00
  00000001400030F4: 48 89 15 B5 AC 00  mov         qword ptr [000000014000DDB0h],rdx
                    00
  00000001400030FB: 48 8D 15 FE 74 00  lea         rdx,[000000014000A600h]
                    00
  0000000140003102: 48 89 15 CF AC 00  mov         qword ptr [000000014000DDD8h],rdx
                    00
  0000000140003109: 48 8D 15 00 75 00  lea         rdx,[000000014000A610h]
                    00
  0000000140003110: 48 89 15 B1 AC 00  mov         qword ptr [000000014000DDC8h],rdx
                    00
  0000000140003117: 48 8D 15 06 75 00  lea         rdx,[000000014000A624h]
                    00
  000000014000311E: 48 89 15 CB AC 00  mov         qword ptr [000000014000DDF0h],rdx
                    00
  0000000140003125: 48 8D 15 08 75 00  lea         rdx,[000000014000A634h]
                    00
  000000014000312C: 48 89 15 AD AC 00  mov         qword ptr [000000014000DDE0h],rdx
                    00
  0000000140003133: 48 8D 15 0A 75 00  lea         rdx,[000000014000A644h]
                    00
  000000014000313A: 48 89 15 C7 AC 00  mov         qword ptr [000000014000DE08h],rdx
                    00
  0000000140003141: 48 8D 15 08 75 00  lea         rdx,[000000014000A650h]
                    00
  0000000140003148: 48 89 15 A9 AC 00  mov         qword ptr [000000014000DDF8h],rdx
                    00
  000000014000314F: 48 8D 15 0A 75 00  lea         rdx,[000000014000A660h]
                    00
  0000000140003156: 48 89 15 C3 AC 00  mov         qword ptr [000000014000DE20h],rdx
                    00
  000000014000315D: 48 8D 15 04 75 00  lea         rdx,[000000014000A668h]
                    00
  0000000140003164: 48 89 15 A5 AC 00  mov         qword ptr [000000014000DE10h],rdx
                    00
  000000014000316B: 48 8D 15 FE 74 00  lea         rdx,[000000014000A670h]
                    00
  0000000140003172: 48 89 15 BF AC 00  mov         qword ptr [000000014000DE38h],rdx
                    00
  0000000140003179: 48 8D 15 F8 74 00  lea         rdx,[000000014000A678h]
                    00
  0000000140003180: 48 89 15 A1 AC 00  mov         qword ptr [000000014000DE28h],rdx
                    00
  0000000140003187: 48 8D 15 F2 74 00  lea         rdx,[000000014000A680h]
                    00
  000000014000318E: 48 89 15 BB AC 00  mov         qword ptr [000000014000DE50h],rdx
                    00
  0000000140003195: 48 8D 15 F0 74 00  lea         rdx,[000000014000A68Ch]
                    00
  000000014000319C: 48 89 15 9D AC 00  mov         qword ptr [000000014000DE40h],rdx
                    00
  00000001400031A3: 48 8D 15 EE 74 00  lea         rdx,[000000014000A698h]
                    00
  00000001400031AA: 48 89 15 B7 AC 00  mov         qword ptr [000000014000DE68h],rdx
                    00
  00000001400031B1: 48 8D 15 EC 74 00  lea         rdx,[000000014000A6A4h]
                    00
  00000001400031B8: 48 89 15 99 AC 00  mov         qword ptr [000000014000DE58h],rdx
                    00
  00000001400031BF: 48 8D 15 EA 74 00  lea         rdx,[000000014000A6B0h]
                    00
  00000001400031C6: 48 89 15 B3 AC 00  mov         qword ptr [000000014000DE80h],rdx
                    00
  00000001400031CD: 48 8D 15 E4 74 00  lea         rdx,[000000014000A6B8h]
                    00
  00000001400031D4: 48 89 15 95 AC 00  mov         qword ptr [000000014000DE70h],rdx
                    00
  00000001400031DB: 48 8D 15 DE 74 00  lea         rdx,[000000014000A6C0h]
                    00
  00000001400031E2: 48 89 15 AF AC 00  mov         qword ptr [000000014000DE98h],rdx
                    00
  00000001400031E9: 48 8D 15 D8 74 00  lea         rdx,[000000014000A6C8h]
                    00
  00000001400031F0: 48 89 15 91 AC 00  mov         qword ptr [000000014000DE88h],rdx
                    00
  00000001400031F7: 48 8D 15 D2 74 00  lea         rdx,[000000014000A6D0h]
                    00
  00000001400031FE: 48 89 15 AB AC 00  mov         qword ptr [000000014000DEB0h],rdx
                    00
  0000000140003205: 48 8D 15 C8 74 00  lea         rdx,[000000014000A6D4h]
                    00
  000000014000320C: 48 89 15 8D AC 00  mov         qword ptr [000000014000DEA0h],rdx
                    00
  0000000140003213: 48 8D 15 BE 74 00  lea         rdx,[000000014000A6D8h]
                    00
  000000014000321A: 48 89 15 A7 AC 00  mov         qword ptr [000000014000DEC8h],rdx
                    00
  0000000140003221: 48 8D 15 B8 74 00  lea         rdx,[000000014000A6E0h]
                    00
  0000000140003228: 48 89 15 89 AC 00  mov         qword ptr [000000014000DEB8h],rdx
                    00
  000000014000322F: 48 8D 15 B2 74 00  lea         rdx,[000000014000A6E8h]
                    00
  0000000140003236: 48 89 15 A3 AC 00  mov         qword ptr [000000014000DEE0h],rdx
                    00
  000000014000323D: 48 8D 15 A8 74 00  lea         rdx,[000000014000A6ECh]
                    00
  0000000140003244: 48 89 15 85 AC 00  mov         qword ptr [000000014000DED0h],rdx
                    00
  000000014000324B: 48 8D 15 9E 74 00  lea         rdx,[000000014000A6F0h]
                    00
  0000000140003252: 48 89 15 9F AC 00  mov         qword ptr [000000014000DEF8h],rdx
                    00
  0000000140003259: 48 8D 15 9C 74 00  lea         rdx,[000000014000A6FCh]
                    00
  0000000140003260: 48 89 15 81 AC 00  mov         qword ptr [000000014000DEE8h],rdx
                    00
  0000000140003267: 48 8D 15 9A 74 00  lea         rdx,[000000014000A708h]
                    00
  000000014000326E: 48 89 15 9B AC 00  mov         qword ptr [000000014000DF10h],rdx
                    00
  0000000140003275: 48 8D 15 94 74 00  lea         rdx,[000000014000A710h]
                    00
  000000014000327C: 48 89 15 7D AC 00  mov         qword ptr [000000014000DF00h],rdx
                    00
  0000000140003283: 48 8D 15 8E 74 00  lea         rdx,[000000014000A718h]
                    00
  000000014000328A: 48 89 15 97 AC 00  mov         qword ptr [000000014000DF28h],rdx
                    00
  0000000140003291: 48 8D 15 94 74 00  lea         rdx,[000000014000A72Ch]
                    00
  0000000140003298: 48 89 15 79 AC 00  mov         qword ptr [000000014000DF18h],rdx
                    00
  000000014000329F: 48 8D 15 9A 74 00  lea         rdx,[000000014000A740h]
                    00
  00000001400032A6: 48 89 15 93 AC 00  mov         qword ptr [000000014000DF40h],rdx
                    00
  00000001400032AD: 48 8D 15 98 74 00  lea         rdx,[000000014000A74Ch]
                    00
  00000001400032B4: 48 89 15 75 AC 00  mov         qword ptr [000000014000DF30h],rdx
                    00
  00000001400032BB: 48 8D 15 96 74 00  lea         rdx,[000000014000A758h]
                    00
  00000001400032C2: 48 89 15 8F AC 00  mov         qword ptr [000000014000DF58h],rdx
                    00
  00000001400032C9: 48 8D 15 90 74 00  lea         rdx,[000000014000A760h]
                    00
  00000001400032D0: 48 89 15 71 AC 00  mov         qword ptr [000000014000DF48h],rdx
                    00
  00000001400032D7: 48 8D 15 8A 74 00  lea         rdx,[000000014000A768h]
                    00
  00000001400032DE: 48 89 15 8B AC 00  mov         qword ptr [000000014000DF70h],rdx
                    00
  00000001400032E5: 48 8D 15 88 74 00  lea         rdx,[000000014000A774h]
                    00
  00000001400032EC: 48 89 15 6D AC 00  mov         qword ptr [000000014000DF60h],rdx
                    00
  00000001400032F3: 48 8D 15 86 74 00  lea         rdx,[000000014000A780h]
                    00
  00000001400032FA: 48 89 15 87 AC 00  mov         qword ptr [000000014000DF88h],rdx
                    00
  0000000140003301: 48 8D 15 80 74 00  lea         rdx,[000000014000A788h]
                    00
  0000000140003308: 48 89 15 69 AC 00  mov         qword ptr [000000014000DF78h],rdx
                    00
  000000014000330F: 48 8D 15 7A 74 00  lea         rdx,[000000014000A790h]
                    00
  0000000140003316: 48 89 15 83 AC 00  mov         qword ptr [000000014000DFA0h],rdx
                    00
  000000014000331D: 48 8D 15 78 74 00  lea         rdx,[000000014000A79Ch]
                    00
  0000000140003324: 48 89 15 65 AC 00  mov         qword ptr [000000014000DF90h],rdx
                    00
  000000014000332B: 48 8D 15 76 74 00  lea         rdx,[000000014000A7A8h]
                    00
  0000000140003332: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000140003337: 48 8B 5C 24 20     mov         rbx,qword ptr [rsp+20h]
  000000014000333C: 48 89 05 AD A6 00  mov         qword ptr [000000014000D9F0h],rax
                    00
  0000000140003343: B8 01 00 00 00     mov         eax,1
  0000000140003348: 48 89 15 69 AC 00  mov         qword ptr [000000014000DFB8h],rdx
                    00
  000000014000334F: 48 8D 15 5A 74 00  lea         rdx,[000000014000A7B0h]
                    00
  0000000140003356: C7 05 80 A6 00 00  mov         dword ptr [000000014000D9E0h],0
                    00 00 00 00
  0000000140003360: 89 05 92 A6 00 00  mov         dword ptr [000000014000D9F8h],eax
  0000000140003366: C7 05 A0 A6 00 00  mov         dword ptr [000000014000DA10h],2
                    02 00 00 00
  0000000140003370: C7 05 AE A6 00 00  mov         dword ptr [000000014000DA28h],3
                    03 00 00 00
  000000014000337A: C7 05 BC A6 00 00  mov         dword ptr [000000014000DA40h],4
                    04 00 00 00
  0000000140003384: C7 05 CA A6 00 00  mov         dword ptr [000000014000DA58h],5
                    05 00 00 00
  000000014000338E: C7 05 D8 A6 00 00  mov         dword ptr [000000014000DA70h],6
                    06 00 00 00
  0000000140003398: C7 05 E6 A6 00 00  mov         dword ptr [000000014000DA88h],7
                    07 00 00 00
  00000001400033A2: C7 05 F4 A6 00 00  mov         dword ptr [000000014000DAA0h],8
                    08 00 00 00
  00000001400033AC: C7 05 02 A7 00 00  mov         dword ptr [000000014000DAB8h],9
                    09 00 00 00
  00000001400033B6: C7 05 10 A7 00 00  mov         dword ptr [000000014000DAD0h],0Ah
                    0A 00 00 00
  00000001400033C0: C7 05 1E A7 00 00  mov         dword ptr [000000014000DAE8h],0Bh
                    0B 00 00 00
  00000001400033CA: C7 05 2C A7 00 00  mov         dword ptr [000000014000DB00h],0Ch
                    0C 00 00 00
  00000001400033D4: C7 05 3A A7 00 00  mov         dword ptr [000000014000DB18h],0Dh
                    0D 00 00 00
  00000001400033DE: C7 05 48 A7 00 00  mov         dword ptr [000000014000DB30h],0Eh
                    0E 00 00 00
  00000001400033E8: C7 05 56 A7 00 00  mov         dword ptr [000000014000DB48h],10h
                    10 00 00 00
  00000001400033F2: C7 05 64 A7 00 00  mov         dword ptr [000000014000DB60h],0Fh
                    0F 00 00 00
  00000001400033FC: C7 05 72 A7 00 00  mov         dword ptr [000000014000DB78h],11h
                    11 00 00 00
  0000000140003406: C7 05 80 A7 00 00  mov         dword ptr [000000014000DB90h],12h
                    12 00 00 00
  0000000140003410: C7 05 8E A7 00 00  mov         dword ptr [000000014000DBA8h],13h
                    13 00 00 00
  000000014000341A: C7 05 9C A7 00 00  mov         dword ptr [000000014000DBC0h],14h
                    14 00 00 00
  0000000140003424: C7 05 AA A7 00 00  mov         dword ptr [000000014000DBD8h],15h
                    15 00 00 00
  000000014000342E: C7 05 B8 A7 00 00  mov         dword ptr [000000014000DBF0h],16h
                    16 00 00 00
  0000000140003438: C7 05 C6 A7 00 00  mov         dword ptr [000000014000DC08h],17h
                    17 00 00 00
  0000000140003442: C7 05 D4 A7 00 00  mov         dword ptr [000000014000DC20h],1Bh
                    1B 00 00 00
  000000014000344C: C7 05 E2 A7 00 00  mov         dword ptr [000000014000DC38h],18h
                    18 00 00 00
  0000000140003456: C7 05 F0 A7 00 00  mov         dword ptr [000000014000DC50h],19h
                    19 00 00 00
  0000000140003460: C7 05 FE A7 00 00  mov         dword ptr [000000014000DC68h],1Ah
                    1A 00 00 00
  000000014000346A: C7 05 0C A8 00 00  mov         dword ptr [000000014000DC80h],1Ch
                    1C 00 00 00
  0000000140003474: C7 05 1A A8 00 00  mov         dword ptr [000000014000DC98h],1Dh
                    1D 00 00 00
  000000014000347E: C7 05 28 A8 00 00  mov         dword ptr [000000014000DCB0h],1Eh
                    1E 00 00 00
  0000000140003488: C7 05 36 A8 00 00  mov         dword ptr [000000014000DCC8h],0FFFFFFFFh
                    FF FF FF FF
  0000000140003492: C7 05 44 A8 00 00  mov         dword ptr [000000014000DCE0h],20h
                    20 00 00 00
  000000014000349C: C7 05 52 A8 00 00  mov         dword ptr [000000014000DCF8h],21h
                    21 00 00 00
  00000001400034A6: C7 05 60 A8 00 00  mov         dword ptr [000000014000DD10h],22h
                    22 00 00 00
  00000001400034B0: C7 05 6E A8 00 00  mov         dword ptr [000000014000DD28h],23h
                    23 00 00 00
  00000001400034BA: C7 05 7C A8 00 00  mov         dword ptr [000000014000DD40h],24h
                    24 00 00 00
  00000001400034C4: C7 05 8A A8 00 00  mov         dword ptr [000000014000DD58h],25h
                    25 00 00 00
  00000001400034CE: C7 05 98 A8 00 00  mov         dword ptr [000000014000DD70h],26h
                    26 00 00 00
  00000001400034D8: C7 05 A6 A8 00 00  mov         dword ptr [000000014000DD88h],27h
                    27 00 00 00
  00000001400034E2: C7 05 B4 A8 00 00  mov         dword ptr [000000014000DDA0h],28h
                    28 00 00 00
  00000001400034EC: C7 05 C2 A8 00 00  mov         dword ptr [000000014000DDB8h],29h
                    29 00 00 00
  00000001400034F6: C7 05 D0 A8 00 00  mov         dword ptr [000000014000DDD0h],2Ah
                    2A 00 00 00
  0000000140003500: C7 05 DE A8 00 00  mov         dword ptr [000000014000DDE8h],2Bh
                    2B 00 00 00
  000000014000350A: C7 05 EC A8 00 00  mov         dword ptr [000000014000DE00h],2Ch
                    2C 00 00 00
  0000000140003514: C7 05 FA A8 00 00  mov         dword ptr [000000014000DE18h],2Dh
                    2D 00 00 00
  000000014000351E: C7 05 08 A9 00 00  mov         dword ptr [000000014000DE30h],2Eh
                    2E 00 00 00
  0000000140003528: C7 05 16 A9 00 00  mov         dword ptr [000000014000DE48h],2Fh
                    2F 00 00 00
  0000000140003532: C7 05 24 A9 00 00  mov         dword ptr [000000014000DE60h],30h
                    30 00 00 00
  000000014000353C: C7 05 32 A9 00 00  mov         dword ptr [000000014000DE78h],31h
                    31 00 00 00
  0000000140003546: C7 05 40 A9 00 00  mov         dword ptr [000000014000DE90h],32h
                    32 00 00 00
  0000000140003550: C7 05 4E A9 00 00  mov         dword ptr [000000014000DEA8h],33h
                    33 00 00 00
  000000014000355A: C7 05 5C A9 00 00  mov         dword ptr [000000014000DEC0h],34h
                    34 00 00 00
  0000000140003564: C7 05 6A A9 00 00  mov         dword ptr [000000014000DED8h],35h
                    35 00 00 00
  000000014000356E: C7 05 78 A9 00 00  mov         dword ptr [000000014000DEF0h],36h
                    36 00 00 00
  0000000140003578: C7 05 86 A9 00 00  mov         dword ptr [000000014000DF08h],37h
                    37 00 00 00
  0000000140003582: C7 05 94 A9 00 00  mov         dword ptr [000000014000DF20h],38h
                    38 00 00 00
  000000014000358C: C7 05 A2 A9 00 00  mov         dword ptr [000000014000DF38h],40h
                    40 00 00 00
  0000000140003596: C7 05 B0 A9 00 00  mov         dword ptr [000000014000DF50h],41h
                    41 00 00 00
  00000001400035A0: C7 05 BE A9 00 00  mov         dword ptr [000000014000DF68h],42h
                    42 00 00 00
  00000001400035AA: C7 05 CC A9 00 00  mov         dword ptr [000000014000DF80h],43h
                    43 00 00 00
  00000001400035B4: C7 05 DA A9 00 00  mov         dword ptr [000000014000DF98h],44h
                    44 00 00 00
  00000001400035BE: C7 05 E8 A9 00 00  mov         dword ptr [000000014000DFB0h],45h
                    45 00 00 00
  00000001400035C8: 48 89 15 D9 A9 00  mov         qword ptr [000000014000DFA8h],rdx
                    00
  00000001400035CF: 89 05 0B AA 00 00  mov         dword ptr [000000014000DFE0h],eax
  00000001400035D5: 48 83 C4 30        add         rsp,30h
  00000001400035D9: 5A                 pop         rdx
  00000001400035DA: C3                 ret
  00000001400035DB: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  00000001400035E0: B8 01 00 00 00     mov         eax,1
  00000001400035E5: E9 06 00 00 00     jmp         00000001400035F0
  00000001400035EA: 66 0F 1F 44 00 00  nop         word ptr [rax+rax]
  00000001400035F0: 52                 push        rdx
  00000001400035F1: 51                 push        rcx
  00000001400035F2: 53                 push        rbx
  00000001400035F3: 56                 push        rsi
  00000001400035F4: 41 50              push        r8
  00000001400035F6: 41 51              push        r9
  00000001400035F8: 41 52              push        r10
  00000001400035FA: 41 53              push        r11
  00000001400035FC: 41 57              push        r15
  00000001400035FE: 48 81 EC B0 00 00  sub         rsp,0B0h
                    00
  0000000140003605: 89 C6              mov         esi,eax
  0000000140003607: 0F 11 44 24 60     movups      xmmword ptr [rsp+60h],xmm0
  000000014000360C: 45 32 C0           xor         r8b,r8b
  000000014000360F: 0F 11 6C 24 40     movups      xmmword ptr [rsp+40h],xmm5
  0000000140003614: 66 0F EF C0        pxor        xmm0,xmm0
  0000000140003618: 0F 11 A4 24 80 00  movups      xmmword ptr [rsp+0000000000000080h],xmm4
                    00 00
  0000000140003620: 0F 11 9C 24 90 00  movups      xmmword ptr [rsp+0000000000000090h],xmm3
                    00 00
  0000000140003628: 0F 11 54 24 70     movups      xmmword ptr [rsp+70h],xmm2
  000000014000362D: 0F 11 4C 24 50     movups      xmmword ptr [rsp+50h],xmm1
  0000000140003632: F3 0F 7F 44 24 20  movdqu      xmmword ptr [rsp+20h],xmm0
  0000000140003638: F3 0F 7F 44 24 30  movdqu      xmmword ptr [rsp+30h],xmm0
  000000014000363E: B9 01 00 00 00     mov         ecx,1
  0000000140003643: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003648: E8 B3 F5 FF FF     call        0000000140002C00
  000000014000364D: 85 C0              test        eax,eax
  000000014000364F: 0F 85 9D 08 00 00  jne         0000000140003EF2
  0000000140003655: 33 C0              xor         eax,eax
  0000000140003657: 0F A2              cpuid
  0000000140003659: 89 84 24 A0 00 00  mov         dword ptr [rsp+00000000000000A0h],eax
                    00
  0000000140003660: 89 9C 24 A4 00 00  mov         dword ptr [rsp+00000000000000A4h],ebx
                    00
  0000000140003667: 89 8C 24 A8 00 00  mov         dword ptr [rsp+00000000000000A8h],ecx
                    00
  000000014000366E: 89 94 24 AC 00 00  mov         dword ptr [rsp+00000000000000ACh],edx
                    00
  0000000140003675: 83 BC 24 A0 00 00  cmp         dword ptr [rsp+00000000000000A0h],0
                    00 00
  000000014000367D: 0F 84 41 09 00 00  je          0000000140003FC4
  0000000140003683: 83 FE 01           cmp         esi,1
  0000000140003686: 0F 84 9B 09 00 00  je          0000000140004027
  000000014000368C: B8 01 00 00 00     mov         eax,1
  0000000140003691: 0F A2              cpuid
  0000000140003693: 41 89 C9           mov         r9d,ecx
  0000000140003696: F6 C2 01           test        dl,1
  0000000140003699: 74 17              je          00000001400036B2
  000000014000369B: B9 02 00 00 00     mov         ecx,2
  00000001400036A0: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400036A5: E8 56 F5 FF FF     call        0000000140002C00
  00000001400036AA: 85 C0              test        eax,eax
  00000001400036AC: 0F 85 40 08 00 00  jne         0000000140003EF2
  00000001400036B2: F7 C2 00 80 00 00  test        edx,8000h
  00000001400036B8: 74 17              je          00000001400036D1
  00000001400036BA: B9 03 00 00 00     mov         ecx,3
  00000001400036BF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400036C4: E8 37 F5 FF FF     call        0000000140002C00
  00000001400036C9: 85 C0              test        eax,eax
  00000001400036CB: 0F 85 21 08 00 00  jne         0000000140003EF2
  00000001400036D1: F7 C2 00 00 80 00  test        edx,800000h
  00000001400036D7: 74 17              je          00000001400036F0
  00000001400036D9: B9 04 00 00 00     mov         ecx,4
  00000001400036DE: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400036E3: E8 18 F5 FF FF     call        0000000140002C00
  00000001400036E8: 85 C0              test        eax,eax
  00000001400036EA: 0F 85 02 08 00 00  jne         0000000140003EF2
  00000001400036F0: F7 C2 00 00 00 01  test        edx,1000000h
  00000001400036F6: 75 12              jne         000000014000370A
  00000001400036F8: 41 F7 C1 00 00 00  test        r9d,40000000h
                    40
  00000001400036FF: 0F 85 98 01 00 00  jne         000000014000389D
  0000000140003705: E9 AF 01 00 00     jmp         00000001400038B9
  000000014000370A: B9 05 00 00 00     mov         ecx,5
  000000014000370F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003714: E8 E7 F4 FF FF     call        0000000140002C00
  0000000140003719: 85 C0              test        eax,eax
  000000014000371B: 0F 85 D1 07 00 00  jne         0000000140003EF2
  0000000140003721: F7 C2 00 00 00 02  test        edx,2000000h
  0000000140003727: 74 17              je          0000000140003740
  0000000140003729: B9 06 00 00 00     mov         ecx,6
  000000014000372E: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003733: E8 C8 F4 FF FF     call        0000000140002C00
  0000000140003738: 85 C0              test        eax,eax
  000000014000373A: 0F 85 B2 07 00 00  jne         0000000140003EF2
  0000000140003740: F7 C2 00 00 00 04  test        edx,4000000h
  0000000140003746: 74 17              je          000000014000375F
  0000000140003748: B9 07 00 00 00     mov         ecx,7
  000000014000374D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003752: E8 A9 F4 FF FF     call        0000000140002C00
  0000000140003757: 85 C0              test        eax,eax
  0000000140003759: 0F 85 93 07 00 00  jne         0000000140003EF2
  000000014000375F: 41 F7 C1 01 00 00  test        r9d,1
                    00
  0000000140003766: 74 17              je          000000014000377F
  0000000140003768: B9 08 00 00 00     mov         ecx,8
  000000014000376D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003772: E8 89 F4 FF FF     call        0000000140002C00
  0000000140003777: 85 C0              test        eax,eax
  0000000140003779: 0F 85 73 07 00 00  jne         0000000140003EF2
  000000014000377F: 41 F7 C1 00 02 00  test        r9d,200h
                    00
  0000000140003786: 74 17              je          000000014000379F
  0000000140003788: B9 09 00 00 00     mov         ecx,9
  000000014000378D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003792: E8 69 F4 FF FF     call        0000000140002C00
  0000000140003797: 85 C0              test        eax,eax
  0000000140003799: 0F 85 53 07 00 00  jne         0000000140003EF2
  000000014000379F: 41 F7 C1 00 00 40  test        r9d,400000h
                    00
  00000001400037A6: 74 17              je          00000001400037BF
  00000001400037A8: B9 0C 00 00 00     mov         ecx,0Ch
  00000001400037AD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400037B2: E8 49 F4 FF FF     call        0000000140002C00
  00000001400037B7: 85 C0              test        eax,eax
  00000001400037B9: 0F 85 33 07 00 00  jne         0000000140003EF2
  00000001400037BF: 41 F7 C1 00 00 08  test        r9d,80000h
                    00
  00000001400037C6: 74 17              je          00000001400037DF
  00000001400037C8: B9 0A 00 00 00     mov         ecx,0Ah
  00000001400037CD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400037D2: E8 29 F4 FF FF     call        0000000140002C00
  00000001400037D7: 85 C0              test        eax,eax
  00000001400037D9: 0F 85 13 07 00 00  jne         0000000140003EF2
  00000001400037DF: 41 F7 C1 00 00 10  test        r9d,100000h
                    00
  00000001400037E6: 74 17              je          00000001400037FF
  00000001400037E8: B9 0B 00 00 00     mov         ecx,0Bh
  00000001400037ED: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400037F2: E8 09 F4 FF FF     call        0000000140002C00
  00000001400037F7: 85 C0              test        eax,eax
  00000001400037F9: 0F 85 F3 06 00 00  jne         0000000140003EF2
  00000001400037FF: 41 F7 C1 00 00 80  test        r9d,800000h
                    00
  0000000140003806: 74 17              je          000000014000381F
  0000000140003808: B9 0D 00 00 00     mov         ecx,0Dh
  000000014000380D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003812: E8 E9 F3 FF FF     call        0000000140002C00
  0000000140003817: 85 C0              test        eax,eax
  0000000140003819: 0F 85 D3 06 00 00  jne         0000000140003EF2
  000000014000381F: 41 F7 C1 02 00 00  test        r9d,2
                    00
  0000000140003826: 74 17              je          000000014000383F
  0000000140003828: B9 0E 00 00 00     mov         ecx,0Eh
  000000014000382D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003832: E8 C9 F3 FF FF     call        0000000140002C00
  0000000140003837: 85 C0              test        eax,eax
  0000000140003839: 0F 85 B3 06 00 00  jne         0000000140003EF2
  000000014000383F: 41 F7 C1 00 00 00  test        r9d,2000000h
                    02
  0000000140003846: 74 17              je          000000014000385F
  0000000140003848: B9 0F 00 00 00     mov         ecx,0Fh
  000000014000384D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003852: E8 A9 F3 FF FF     call        0000000140002C00
  0000000140003857: 85 C0              test        eax,eax
  0000000140003859: 0F 85 93 06 00 00  jne         0000000140003EF2
  000000014000385F: B8 07 00 00 00     mov         eax,7
  0000000140003864: 33 C9              xor         ecx,ecx
  0000000140003866: 0F A2              cpuid
  0000000140003868: 41 B0 01           mov         r8b,1
  000000014000386B: 41 89 DF           mov         r15d,ebx
  000000014000386E: 41 89 D2           mov         r10d,edx
  0000000140003871: 41 89 CB           mov         r11d,ecx
  0000000140003874: 41 F7 C7 00 00 00  test        r15d,20000000h
                    20
  000000014000387B: 74 17              je          0000000140003894
  000000014000387D: B9 24 00 00 00     mov         ecx,24h
  0000000140003882: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003887: E8 74 F3 FF FF     call        0000000140002C00
  000000014000388C: 85 C0              test        eax,eax
  000000014000388E: 0F 85 5E 06 00 00  jne         0000000140003EF2
  0000000140003894: 41 F7 C1 00 00 00  test        r9d,40000000h
                    40
  000000014000389B: 74 2E              je          00000001400038CB
  000000014000389D: B9 12 00 00 00     mov         ecx,12h
  00000001400038A2: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400038A7: E8 54 F3 FF FF     call        0000000140002C00
  00000001400038AC: 85 C0              test        eax,eax
  00000001400038AE: 0F 85 3E 06 00 00  jne         0000000140003EF2
  00000001400038B4: 45 84 C0           test        r8b,r8b
  00000001400038B7: 75 12              jne         00000001400038CB
  00000001400038B9: B8 07 00 00 00     mov         eax,7
  00000001400038BE: 33 C9              xor         ecx,ecx
  00000001400038C0: 0F A2              cpuid
  00000001400038C2: 41 89 D2           mov         r10d,edx
  00000001400038C5: 41 89 CB           mov         r11d,ecx
  00000001400038C8: 41 89 DF           mov         r15d,ebx
  00000001400038CB: 44 89 F8           mov         eax,r15d
  00000001400038CE: 25 08 01 00 00     and         eax,108h
  00000001400038D3: 3D 08 01 00 00     cmp         eax,108h
  00000001400038D8: 75 17              jne         00000001400038F1
  00000001400038DA: B9 14 00 00 00     mov         ecx,14h
  00000001400038DF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400038E4: E8 17 F3 FF FF     call        0000000140002C00
  00000001400038E9: 85 C0              test        eax,eax
  00000001400038EB: 0F 85 01 06 00 00  jne         0000000140003EF2
  00000001400038F1: 41 F7 C7 04 00 00  test        r15d,4
                    00
  00000001400038F8: 74 17              je          0000000140003911
  00000001400038FA: B9 36 00 00 00     mov         ecx,36h
  00000001400038FF: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003904: E8 F7 F2 FF FF     call        0000000140002C00
  0000000140003909: 85 C0              test        eax,eax
  000000014000390B: 0F 85 E1 05 00 00  jne         0000000140003EF2
  0000000140003911: 41 F7 C7 10 00 00  test        r15d,10h
                    00
  0000000140003918: 74 17              je          0000000140003931
  000000014000391A: B9 16 00 00 00     mov         ecx,16h
  000000014000391F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003924: E8 D7 F2 FF FF     call        0000000140002C00
  0000000140003929: 85 C0              test        eax,eax
  000000014000392B: 0F 85 C1 05 00 00  jne         0000000140003EF2
  0000000140003931: 41 F7 C7 00 08 00  test        r15d,800h
                    00
  0000000140003938: 74 17              je          0000000140003951
  000000014000393A: B9 17 00 00 00     mov         ecx,17h
  000000014000393F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003944: E8 B7 F2 FF FF     call        0000000140002C00
  0000000140003949: 85 C0              test        eax,eax
  000000014000394B: 0F 85 A1 05 00 00  jne         0000000140003EF2
  0000000140003951: 41 F7 C7 00 00 08  test        r15d,80000h
                    00
  0000000140003958: 74 17              je          0000000140003971
  000000014000395A: B9 1D 00 00 00     mov         ecx,1Dh
  000000014000395F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003964: E8 97 F2 FF FF     call        0000000140002C00
  0000000140003969: 85 C0              test        eax,eax
  000000014000396B: 0F 85 81 05 00 00  jne         0000000140003EF2
  0000000140003971: 41 F7 C7 00 00 04  test        r15d,40000h
                    00
  0000000140003978: 74 17              je          0000000140003991
  000000014000397A: B9 1E 00 00 00     mov         ecx,1Eh
  000000014000397F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003984: E8 77 F2 FF FF     call        0000000140002C00
  0000000140003989: 85 C0              test        eax,eax
  000000014000398B: 0F 85 61 05 00 00  jne         0000000140003EF2
  0000000140003991: 41 F7 C7 00 00 00  test        r15d,1000000h
                    01
  0000000140003998: 74 17              je          00000001400039B1
  000000014000399A: B9 32 00 00 00     mov         ecx,32h
  000000014000399F: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400039A4: E8 57 F2 FF FF     call        0000000140002C00
  00000001400039A9: 85 C0              test        eax,eax
  00000001400039AB: 0F 85 41 05 00 00  jne         0000000140003EF2
  00000001400039B1: B8 01 00 00 80     mov         eax,80000001h
  00000001400039B6: 0F A2              cpuid
  00000001400039B8: F6 C1 20           test        cl,20h
  00000001400039BB: 74 17              je          00000001400039D4
  00000001400039BD: B9 15 00 00 00     mov         ecx,15h
  00000001400039C2: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400039C7: E8 34 F2 FF FF     call        0000000140002C00
  00000001400039CC: 85 C0              test        eax,eax
  00000001400039CE: 0F 85 1E 05 00 00  jne         0000000140003EF2
  00000001400039D4: B8 08 00 00 80     mov         eax,80000008h
  00000001400039D9: 0F A2              cpuid
  00000001400039DB: F7 C3 00 02 00 00  test        ebx,200h
  00000001400039E1: 74 17              je          00000001400039FA
  00000001400039E3: B9 37 00 00 00     mov         ecx,37h
  00000001400039E8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  00000001400039ED: E8 0E F2 FF FF     call        0000000140002C00
  00000001400039F2: 85 C0              test        eax,eax
  00000001400039F4: 0F 85 F8 04 00 00  jne         0000000140003EF2
  00000001400039FA: 41 F7 C3 20 00 00  test        r11d,20h
                    00
  0000000140003A01: 74 17              je          0000000140003A1A
  0000000140003A03: B9 3D 00 00 00     mov         ecx,3Dh
  0000000140003A08: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003A0D: E8 EE F1 FF FF     call        0000000140002C00
  0000000140003A12: 85 C0              test        eax,eax
  0000000140003A14: 0F 85 D8 04 00 00  jne         0000000140003EF2
  0000000140003A1A: 41 F7 C3 80 00 00  test        r11d,80h
                    00
  0000000140003A21: 74 17              je          0000000140003A3A
  0000000140003A23: B9 35 00 00 00     mov         ecx,35h
  0000000140003A28: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003A2D: E8 CE F1 FF FF     call        0000000140002C00
  0000000140003A32: 85 C0              test        eax,eax
  0000000140003A34: 0F 85 B8 04 00 00  jne         0000000140003EF2
  0000000140003A3A: 41 F7 C3 00 01 00  test        r11d,100h
                    00
  0000000140003A41: 74 17              je          0000000140003A5A
  0000000140003A43: B9 2E 00 00 00     mov         ecx,2Eh
  0000000140003A48: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003A4D: E8 AE F1 FF FF     call        0000000140002C00
  0000000140003A52: 85 C0              test        eax,eax
  0000000140003A54: 0F 85 98 04 00 00  jne         0000000140003EF2
  0000000140003A5A: 41 F7 C3 00 00 40  test        r11d,400000h
                    00
  0000000140003A61: 74 17              je          0000000140003A7A
  0000000140003A63: B9 33 00 00 00     mov         ecx,33h
  0000000140003A68: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003A6D: E8 8E F1 FF FF     call        0000000140002C00
  0000000140003A72: 85 C0              test        eax,eax
  0000000140003A74: 0F 85 78 04 00 00  jne         0000000140003EF2
  0000000140003A7A: 41 F7 C3 00 00 00  test        r11d,1000000h
                    01
  0000000140003A81: 74 17              je          0000000140003A9A
  0000000140003A83: B9 3A 00 00 00     mov         ecx,3Ah
  0000000140003A88: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003A8D: E8 6E F1 FF FF     call        0000000140002C00
  0000000140003A92: 85 C0              test        eax,eax
  0000000140003A94: 0F 85 58 04 00 00  jne         0000000140003EF2
  0000000140003A9A: 41 F7 C3 00 00 00  test        r11d,8000000h
                    08
  0000000140003AA1: 74 17              je          0000000140003ABA
  0000000140003AA3: B9 3B 00 00 00     mov         ecx,3Bh
  0000000140003AA8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003AAD: E8 4E F1 FF FF     call        0000000140002C00
  0000000140003AB2: 85 C0              test        eax,eax
  0000000140003AB4: 0F 85 38 04 00 00  jne         0000000140003EF2
  0000000140003ABA: 41 F7 C3 00 00 00  test        r11d,10000000h
                    10
  0000000140003AC1: 74 17              je          0000000140003ADA
  0000000140003AC3: B9 3C 00 00 00     mov         ecx,3Ch
  0000000140003AC8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003ACD: E8 2E F1 FF FF     call        0000000140002C00
  0000000140003AD2: 85 C0              test        eax,eax
  0000000140003AD4: 0F 85 18 04 00 00  jne         0000000140003EF2
  0000000140003ADA: 41 F7 C3 00 00 00  test        r11d,20000000h
                    20
  0000000140003AE1: 74 17              je          0000000140003AFA
  0000000140003AE3: B9 3F 00 00 00     mov         ecx,3Fh
  0000000140003AE8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003AED: E8 0E F1 FF FF     call        0000000140002C00
  0000000140003AF2: 85 C0              test        eax,eax
  0000000140003AF4: 0F 85 F8 03 00 00  jne         0000000140003EF2
  0000000140003AFA: 41 F7 C2 00 00 10  test        r10d,100000h
                    00
  0000000140003B01: 74 17              je          0000000140003B1A
  0000000140003B03: B9 34 00 00 00     mov         ecx,34h
  0000000140003B08: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003B0D: E8 EE F0 FF FF     call        0000000140002C00
  0000000140003B12: 85 C0              test        eax,eax
  0000000140003B14: 0F 85 D8 03 00 00  jne         0000000140003EF2
  0000000140003B1A: 41 F7 C2 00 00 04  test        r10d,40000h
                    00
  0000000140003B21: 74 17              je          0000000140003B3A
  0000000140003B23: B9 38 00 00 00     mov         ecx,38h
  0000000140003B28: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003B2D: E8 CE F0 FF FF     call        0000000140002C00
  0000000140003B32: 85 C0              test        eax,eax
  0000000140003B34: 0F 85 B8 03 00 00  jne         0000000140003EF2
  0000000140003B3A: B8 14 00 00 00     mov         eax,14h
  0000000140003B3F: 33 C9              xor         ecx,ecx
  0000000140003B41: 0F A2              cpuid
  0000000140003B43: F6 C3 10           test        bl,10h
  0000000140003B46: 74 17              je          0000000140003B5F
  0000000140003B48: B9 1B 00 00 00     mov         ecx,1Bh
  0000000140003B4D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003B52: E8 A9 F0 FF FF     call        0000000140002C00
  0000000140003B57: 85 C0              test        eax,eax
  0000000140003B59: 0F 85 93 03 00 00  jne         0000000140003EF2
  0000000140003B5F: 41 F7 C1 00 00 00  test        r9d,8000000h
                    08
  0000000140003B66: 0F 84 C0 03 00 00  je          0000000140003F2C
  0000000140003B6C: B9 01 00 00 00     mov         ecx,1
  0000000140003B71: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003B76: E8 85 F0 FF FF     call        0000000140002C00
  0000000140003B7B: 85 C0              test        eax,eax
  0000000140003B7D: 0F 85 6F 03 00 00  jne         0000000140003EF2
  0000000140003B83: 33 C9              xor         ecx,ecx
  0000000140003B85: 0F 01 D0           xgetbv
  0000000140003B88: 89 C2              mov         edx,eax
  0000000140003B8A: 89 D1              mov         ecx,edx
  0000000140003B8C: 83 E1 06           and         ecx,6
  0000000140003B8F: 83 F9 06           cmp         ecx,6
  0000000140003B92: 0F 85 94 03 00 00  jne         0000000140003F2C
  0000000140003B98: B9 01 00 00 00     mov         ecx,1
  0000000140003B9D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003BA2: E8 59 F0 FF FF     call        0000000140002C00
  0000000140003BA7: 85 C0              test        eax,eax
  0000000140003BA9: 0F 85 43 03 00 00  jne         0000000140003EF2
  0000000140003BAF: 41 F7 C1 00 00 00  test        r9d,10000000h
                    10
  0000000140003BB6: 74 57              je          0000000140003C0F
  0000000140003BB8: B9 10 00 00 00     mov         ecx,10h
  0000000140003BBD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003BC2: E8 39 F0 FF FF     call        0000000140002C00
  0000000140003BC7: 85 C0              test        eax,eax
  0000000140003BC9: 0F 85 23 03 00 00  jne         0000000140003EF2
  0000000140003BCF: 41 F7 C3 00 02 00  test        r11d,200h
                    00
  0000000140003BD6: 74 17              je          0000000140003BEF
  0000000140003BD8: B9 2F 00 00 00     mov         ecx,2Fh
  0000000140003BDD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003BE2: E8 19 F0 FF FF     call        0000000140002C00
  0000000140003BE7: 85 C0              test        eax,eax
  0000000140003BE9: 0F 85 03 03 00 00  jne         0000000140003EF2
  0000000140003BEF: 41 F7 C3 00 04 00  test        r11d,400h
                    00
  0000000140003BF6: 74 17              je          0000000140003C0F
  0000000140003BF8: B9 30 00 00 00     mov         ecx,30h
  0000000140003BFD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003C02: E8 F9 EF FF FF     call        0000000140002C00
  0000000140003C07: 85 C0              test        eax,eax
  0000000140003C09: 0F 85 E3 02 00 00  jne         0000000140003EF2
  0000000140003C0F: 41 F7 C1 00 00 00  test        r9d,20000000h
                    20
  0000000140003C16: 74 17              je          0000000140003C2F
  0000000140003C18: B9 11 00 00 00     mov         ecx,11h
  0000000140003C1D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003C22: E8 D9 EF FF FF     call        0000000140002C00
  0000000140003C27: 85 C0              test        eax,eax
  0000000140003C29: 0F 85 C3 02 00 00  jne         0000000140003EF2
  0000000140003C2F: 41 F7 C7 20 00 00  test        r15d,20h
                    00
  0000000140003C36: 74 17              je          0000000140003C4F
  0000000140003C38: B9 18 00 00 00     mov         ecx,18h
  0000000140003C3D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003C42: E8 B9 EF FF FF     call        0000000140002C00
  0000000140003C47: 85 C0              test        eax,eax
  0000000140003C49: 0F 85 A3 02 00 00  jne         0000000140003EF2
  0000000140003C4F: 41 F7 C1 00 10 00  test        r9d,1000h
                    00
  0000000140003C56: 74 17              je          0000000140003C6F
  0000000140003C58: B9 13 00 00 00     mov         ecx,13h
  0000000140003C5D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003C62: E8 99 EF FF FF     call        0000000140002C00
  0000000140003C67: 85 C0              test        eax,eax
  0000000140003C69: 0F 85 83 02 00 00  jne         0000000140003EF2
  0000000140003C6F: 89 D0              mov         eax,edx
  0000000140003C71: 83 E0 18           and         eax,18h
  0000000140003C74: 83 F8 18           cmp         eax,18h
  0000000140003C77: 75 37              jne         0000000140003CB0
  0000000140003C79: B9 01 00 00 00     mov         ecx,1
  0000000140003C7E: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003C83: E8 78 EF FF FF     call        0000000140002C00
  0000000140003C88: 85 C0              test        eax,eax
  0000000140003C8A: 0F 85 62 02 00 00  jne         0000000140003EF2
  0000000140003C90: 41 F7 C7 00 40 00  test        r15d,4000h
                    00
  0000000140003C97: 74 17              je          0000000140003CB0
  0000000140003C99: B9 25 00 00 00     mov         ecx,25h
  0000000140003C9E: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003CA3: E8 58 EF FF FF     call        0000000140002C00
  0000000140003CA8: 85 C0              test        eax,eax
  0000000140003CAA: 0F 85 42 02 00 00  jne         0000000140003EF2
  0000000140003CB0: 81 E2 E0 00 00 00  and         edx,0E0h
  0000000140003CB6: 81 FA E0 00 00 00  cmp         edx,0E0h
  0000000140003CBC: 0F 85 6A 02 00 00  jne         0000000140003F2C
  0000000140003CC2: B9 01 00 00 00     mov         ecx,1
  0000000140003CC7: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003CCC: E8 2F EF FF FF     call        0000000140002C00
  0000000140003CD1: 85 C0              test        eax,eax
  0000000140003CD3: 0F 85 19 02 00 00  jne         0000000140003EF2
  0000000140003CD9: 41 F7 C7 00 00 01  test        r15d,10000h
                    00
  0000000140003CE0: 74 17              je          0000000140003CF9
  0000000140003CE2: B9 19 00 00 00     mov         ecx,19h
  0000000140003CE7: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003CEC: E8 0F EF FF FF     call        0000000140002C00
  0000000140003CF1: 85 C0              test        eax,eax
  0000000140003CF3: 0F 85 F9 01 00 00  jne         0000000140003EF2
  0000000140003CF9: 41 F7 C7 00 00 00  test        r15d,10000000h
                    10
  0000000140003D00: 74 17              je          0000000140003D19
  0000000140003D02: B9 23 00 00 00     mov         ecx,23h
  0000000140003D07: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003D0C: E8 EF EE FF FF     call        0000000140002C00
  0000000140003D11: 85 C0              test        eax,eax
  0000000140003D13: 0F 85 D9 01 00 00  jne         0000000140003EF2
  0000000140003D19: 41 F7 C7 00 00 00  test        r15d,8000000h
                    08
  0000000140003D20: 74 17              je          0000000140003D39
  0000000140003D22: B9 21 00 00 00     mov         ecx,21h
  0000000140003D27: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003D2C: E8 CF EE FF FF     call        0000000140002C00
  0000000140003D31: 85 C0              test        eax,eax
  0000000140003D33: 0F 85 B9 01 00 00  jne         0000000140003EF2
  0000000140003D39: 41 F7 C7 00 00 00  test        r15d,4000000h
                    04
  0000000140003D40: 74 17              je          0000000140003D59
  0000000140003D42: B9 22 00 00 00     mov         ecx,22h
  0000000140003D47: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003D4C: E8 AF EE FF FF     call        0000000140002C00
  0000000140003D51: 85 C0              test        eax,eax
  0000000140003D53: 0F 85 99 01 00 00  jne         0000000140003EF2
  0000000140003D59: 41 F7 C7 00 00 02  test        r15d,20000h
                    00
  0000000140003D60: 74 17              je          0000000140003D79
  0000000140003D62: B9 1A 00 00 00     mov         ecx,1Ah
  0000000140003D67: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003D6C: E8 8F EE FF FF     call        0000000140002C00
  0000000140003D71: 85 C0              test        eax,eax
  0000000140003D73: 0F 85 79 01 00 00  jne         0000000140003EF2
  0000000140003D79: 41 F7 C7 00 00 00  test        r15d,40000000h
                    40
  0000000140003D80: 74 17              je          0000000140003D99
  0000000140003D82: B9 26 00 00 00     mov         ecx,26h
  0000000140003D87: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003D8C: E8 6F EE FF FF     call        0000000140002C00
  0000000140003D91: 85 C0              test        eax,eax
  0000000140003D93: 0F 85 59 01 00 00  jne         0000000140003EF2
  0000000140003D99: 44 89 F8           mov         eax,r15d
  0000000140003D9C: 25 00 00 00 80     and         eax,80000000h
  0000000140003DA1: 3D 00 00 00 80     cmp         eax,80000000h
  0000000140003DA6: 75 17              jne         0000000140003DBF
  0000000140003DA8: B9 27 00 00 00     mov         ecx,27h
  0000000140003DAD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003DB2: E8 49 EE FF FF     call        0000000140002C00
  0000000140003DB7: 85 C0              test        eax,eax
  0000000140003DB9: 0F 85 33 01 00 00  jne         0000000140003EF2
  0000000140003DBF: 41 F7 C7 00 00 20  test        r15d,200000h
                    00
  0000000140003DC6: 74 17              je          0000000140003DDF
  0000000140003DC8: B9 1F 00 00 00     mov         ecx,1Fh
  0000000140003DCD: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003DD2: E8 29 EE FF FF     call        0000000140002C00
  0000000140003DD7: 85 C0              test        eax,eax
  0000000140003DD9: 0F 85 13 01 00 00  jne         0000000140003EF2
  0000000140003DDF: 41 F7 C3 02 00 00  test        r11d,2
                    00
  0000000140003DE6: 74 17              je          0000000140003DFF
  0000000140003DE8: B9 28 00 00 00     mov         ecx,28h
  0000000140003DED: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003DF2: E8 09 EE FF FF     call        0000000140002C00
  0000000140003DF7: 85 C0              test        eax,eax
  0000000140003DF9: 0F 85 F3 00 00 00  jne         0000000140003EF2
  0000000140003DFF: 41 F7 C3 00 40 00  test        r11d,4000h
                    00
  0000000140003E06: 74 17              je          0000000140003E1F
  0000000140003E08: B9 2B 00 00 00     mov         ecx,2Bh
  0000000140003E0D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003E12: E8 E9 ED FF FF     call        0000000140002C00
  0000000140003E17: 85 C0              test        eax,eax
  0000000140003E19: 0F 85 D3 00 00 00  jne         0000000140003EF2
  0000000140003E1F: 41 F7 C2 04 00 00  test        r10d,4
                    00
  0000000140003E26: 74 17              je          0000000140003E3F
  0000000140003E28: B9 2A 00 00 00     mov         ecx,2Ah
  0000000140003E2D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003E32: E8 C9 ED FF FF     call        0000000140002C00
  0000000140003E37: 85 C0              test        eax,eax
  0000000140003E39: 0F 85 B3 00 00 00  jne         0000000140003EF2
  0000000140003E3F: 41 F7 C2 08 00 00  test        r10d,8
                    00
  0000000140003E46: 74 17              je          0000000140003E5F
  0000000140003E48: B9 29 00 00 00     mov         ecx,29h
  0000000140003E4D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003E52: E8 A9 ED FF FF     call        0000000140002C00
  0000000140003E57: 85 C0              test        eax,eax
  0000000140003E59: 0F 85 93 00 00 00  jne         0000000140003EF2
  0000000140003E5F: 41 F7 C3 00 10 00  test        r11d,1000h
                    00
  0000000140003E66: 74 13              je          0000000140003E7B
  0000000140003E68: B9 2C 00 00 00     mov         ecx,2Ch
  0000000140003E6D: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003E72: E8 89 ED FF FF     call        0000000140002C00
  0000000140003E77: 85 C0              test        eax,eax
  0000000140003E79: 75 77              jne         0000000140003EF2
  0000000140003E7B: 41 F7 C3 40 00 00  test        r11d,40h
                    00
  0000000140003E82: 74 13              je          0000000140003E97
  0000000140003E84: B9 2D 00 00 00     mov         ecx,2Dh
  0000000140003E89: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003E8E: E8 6D ED FF FF     call        0000000140002C00
  0000000140003E93: 85 C0              test        eax,eax
  0000000140003E95: 75 5B              jne         0000000140003EF2
  0000000140003E97: 41 F7 C3 00 08 00  test        r11d,800h
                    00
  0000000140003E9E: 74 13              je          0000000140003EB3
  0000000140003EA0: B9 31 00 00 00     mov         ecx,31h
  0000000140003EA5: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003EAA: E8 51 ED FF FF     call        0000000140002C00
  0000000140003EAF: 85 C0              test        eax,eax
  0000000140003EB1: 75 3F              jne         0000000140003EF2
  0000000140003EB3: B8 07 00 00 00     mov         eax,7
  0000000140003EB8: B9 01 00 00 00     mov         ecx,1
  0000000140003EBD: 0F A2              cpuid
  0000000140003EBF: A8 20              test        al,20h
  0000000140003EC1: 74 13              je          0000000140003ED6
  0000000140003EC3: B9 3E 00 00 00     mov         ecx,3Eh
  0000000140003EC8: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003ECD: E8 2E ED FF FF     call        0000000140002C00
  0000000140003ED2: 85 C0              test        eax,eax
  0000000140003ED4: 75 1C              jne         0000000140003EF2
  0000000140003ED6: 41 F7 C2 00 01 00  test        r10d,100h
                    00
  0000000140003EDD: 74 4D              je          0000000140003F2C
  0000000140003EDF: B9 39 00 00 00     mov         ecx,39h
  0000000140003EE4: 48 8D 44 24 20     lea         rax,[rsp+20h]
  0000000140003EE9: E8 12 ED FF FF     call        0000000140002C00
  0000000140003EEE: 85 C0              test        eax,eax
  0000000140003EF0: 74 3A              je          0000000140003F2C
  0000000140003EF2: 0F 10 44 24 60     movups      xmm0,xmmword ptr [rsp+60h]
  0000000140003EF7: 0F 10 4C 24 50     movups      xmm1,xmmword ptr [rsp+50h]
  0000000140003EFC: 0F 10 54 24 70     movups      xmm2,xmmword ptr [rsp+70h]
  0000000140003F01: 0F 10 9C 24 90 00  movups      xmm3,xmmword ptr [rsp+0000000000000090h]
                    00 00
  0000000140003F09: 0F 10 A4 24 80 00  movups      xmm4,xmmword ptr [rsp+0000000000000080h]
                    00 00
  0000000140003F11: 0F 10 6C 24 40     movups      xmm5,xmmword ptr [rsp+40h]
  0000000140003F16: 48 81 C4 B0 00 00  add         rsp,0B0h
                    00
  0000000140003F1D: 41 5F              pop         r15
  0000000140003F1F: 41 5B              pop         r11
  0000000140003F21: 41 5A              pop         r10
  0000000140003F23: 41 59              pop         r9
  0000000140003F25: 41 58              pop         r8
  0000000140003F27: 5E                 pop         rsi
  0000000140003F28: 5B                 pop         rbx
  0000000140003F29: 59                 pop         rcx
  0000000140003F2A: 5A                 pop         rdx
  0000000140003F2B: C3                 ret
  0000000140003F2C: 48 8D 0D 85 68 00  lea         rcx,[000000014000A7B8h]
                    00
  0000000140003F33: E8 64 50 00 00     call        0000000140008F9C
  0000000140003F38: 48 89 C3           mov         rbx,rax
  0000000140003F3B: E8 62 50 00 00     call        0000000140008FA2
  0000000140003F40: C7 00 00 00 00 00  mov         dword ptr [rax],0
  0000000140003F46: 48 85 DB           test        rbx,rbx
  0000000140003F49: 74 23              je          0000000140003F6E
  0000000140003F4B: 48 89 D9           mov         rcx,rbx
  0000000140003F4E: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  0000000140003F53: E8 28 EA FF FF     call        0000000140002980
  0000000140003F58: 85 C0              test        eax,eax
  0000000140003F5A: 7E 12              jle         0000000140003F6E
  0000000140003F5C: F3 0F 6F 44 24 30  movdqu      xmm0,xmmword ptr [rsp+30h]
  0000000140003F62: 66 0F DF 44 24 20  pandn       xmm0,xmmword ptr [rsp+20h]
  0000000140003F68: F3 0F 7F 44 24 20  movdqu      xmmword ptr [rsp+20h],xmm0
  0000000140003F6E: 83 FE 01           cmp         esi,1
  0000000140003F71: 0F 84 9A 00 00 00  je          0000000140004011
  0000000140003F77: 48 8D 05 52 A0 00  lea         rax,[000000014000DFD0h]
                    00
  0000000140003F7E: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140003F83: E8 58 EC FF FF     call        0000000140002BE0
  0000000140003F88: 0F 10 44 24 60     movups      xmm0,xmmword ptr [rsp+60h]
  0000000140003F8D: 33 C0              xor         eax,eax
  0000000140003F8F: 0F 10 4C 24 50     movups      xmm1,xmmword ptr [rsp+50h]
  0000000140003F94: 0F 10 54 24 70     movups      xmm2,xmmword ptr [rsp+70h]
  0000000140003F99: 0F 10 9C 24 90 00  movups      xmm3,xmmword ptr [rsp+0000000000000090h]
                    00 00
  0000000140003FA1: 0F 10 A4 24 80 00  movups      xmm4,xmmword ptr [rsp+0000000000000080h]
                    00 00
  0000000140003FA9: 0F 10 6C 24 40     movups      xmm5,xmmword ptr [rsp+40h]
  0000000140003FAE: 48 81 C4 B0 00 00  add         rsp,0B0h
                    00
  0000000140003FB5: 41 5F              pop         r15
  0000000140003FB7: 41 5B              pop         r11
  0000000140003FB9: 41 5A              pop         r10
  0000000140003FBB: 41 59              pop         r9
  0000000140003FBD: 41 58              pop         r8
  0000000140003FBF: 5E                 pop         rsi
  0000000140003FC0: 5B                 pop         rbx
  0000000140003FC1: 59                 pop         rcx
  0000000140003FC2: 5A                 pop         rdx
  0000000140003FC3: C3                 ret
  0000000140003FC4: 48 8D 05 F5 9F 00  lea         rax,[000000014000DFC0h]
                    00
  0000000140003FCB: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140003FD0: E8 0B EC FF FF     call        0000000140002BE0
  0000000140003FD5: 0F 10 44 24 60     movups      xmm0,xmmword ptr [rsp+60h]
  0000000140003FDA: 33 C0              xor         eax,eax
  0000000140003FDC: 0F 10 4C 24 50     movups      xmm1,xmmword ptr [rsp+50h]
  0000000140003FE1: 0F 10 54 24 70     movups      xmm2,xmmword ptr [rsp+70h]
  0000000140003FE6: 0F 10 9C 24 90 00  movups      xmm3,xmmword ptr [rsp+0000000000000090h]
                    00 00
  0000000140003FEE: 0F 10 A4 24 80 00  movups      xmm4,xmmword ptr [rsp+0000000000000080h]
                    00 00
  0000000140003FF6: 0F 10 6C 24 40     movups      xmm5,xmmword ptr [rsp+40h]
  0000000140003FFB: 48 81 C4 B0 00 00  add         rsp,0B0h
                    00
  0000000140004002: 41 5F              pop         r15
  0000000140004004: 41 5B              pop         r11
  0000000140004006: 41 5A              pop         r10
  0000000140004008: 41 59              pop         r9
  000000014000400A: 41 58              pop         r8
  000000014000400C: 5E                 pop         rsi
  000000014000400D: 5B                 pop         rbx
  000000014000400E: 59                 pop         rcx
  000000014000400F: 5A                 pop         rdx
  0000000140004010: C3                 ret
  0000000140004011: 48 8D 05 A8 9F 00  lea         rax,[000000014000DFC0h]
                    00
  0000000140004018: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000014000401D: E8 BE EB FF FF     call        0000000140002BE0
  0000000140004022: E9 50 FF FF FF     jmp         0000000140003F77
  0000000140004027: 81 BC 24 A4 00 00  cmp         dword ptr [rsp+00000000000000A4h],756E6547h
                    00 47 65 6E 75
  0000000140004032: 75 90              jne         0000000140003FC4
  0000000140004034: 81 BC 24 AC 00 00  cmp         dword ptr [rsp+00000000000000ACh],49656E69h
                    00 69 6E 65 49
  000000014000403F: 75 83              jne         0000000140003FC4
  0000000140004041: 81 BC 24 A8 00 00  cmp         dword ptr [rsp+00000000000000A8h],6C65746Eh
                    00 6E 74 65 6C
  000000014000404C: 0F 85 72 FF FF FF  jne         0000000140003FC4
  0000000140004052: E9 35 F6 FF FF     jmp         000000014000368C
  0000000140004057: 66 0F 1F 84 00 00  nop         word ptr [rax+rax+0000000000000000h]
                    00 00 00
  0000000140004060: 56                 push        rsi
  0000000140004061: 57                 push        rdi
  0000000140004062: 55                 push        rbp
  0000000140004063: 48 83 EC 40        sub         rsp,40h
  0000000140004067: 48 89 CF           mov         rdi,rcx
  000000014000406A: 48 89 54 24 68     mov         qword ptr [rsp+68h],rdx
  000000014000406F: 48 8D 44 24 70     lea         rax,[rsp+70h]
  0000000140004074: 4C 89 00           mov         qword ptr [rax],r8
  0000000140004077: 4C 89 48 08        mov         qword ptr [rax+8],r9
  000000014000407B: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000140004080: 48 8B 74 24 68     mov         rsi,qword ptr [rsp+68h]
  0000000140004085: 48 8B 6C 24 30     mov         rbp,qword ptr [rsp+30h]
  000000014000408A: E8 91 E2 FF FF     call        0000000140002320
  000000014000408F: 49 89 E2           mov         r10,rsp
  0000000140004092: 48 89 FA           mov         rdx,rdi
  0000000140004095: 49 C7 C0 FF FF FF  mov         r8,0FFFFFFFFFFFFFFFFh
                    FF
  000000014000409C: 49 89 F1           mov         r9,rsi
  000000014000409F: 48 8B 08           mov         rcx,qword ptr [rax]
  00000001400040A2: 48 83 C9 01        or          rcx,1
  00000001400040A6: 49 C7 42 20 00 00  mov         qword ptr [r10+20h],0
                    00 00
  00000001400040AE: 49 89 6A 28        mov         qword ptr [r10+28h],rbp
  00000001400040B2: E8 F1 4E 00 00     call        0000000140008FA8
  00000001400040B7: BA FF FF FF FF     mov         edx,0FFFFFFFFh
  00000001400040BC: 85 C0              test        eax,eax
  00000001400040BE: 48 C7 44 24 30 00  mov         qword ptr [rsp+30h],0
                    00 00 00
  00000001400040C7: 0F 4C C2           cmovl       eax,edx
  00000001400040CA: 48 83 C4 40        add         rsp,40h
  00000001400040CE: 5D                 pop         rbp
  00000001400040CF: 5F                 pop         rdi
  00000001400040D0: 5E                 pop         rsi
  00000001400040D1: C3                 ret
  00000001400040D2: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400040D9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400040E0: 41 55              push        r13
  00000001400040E2: 41 56              push        r14
  00000001400040E4: 48 81 EC D8 00 00  sub         rsp,0D8h
                    00
  00000001400040EB: 41 89 CE           mov         r14d,ecx
  00000001400040EE: 89 94 24 F8 00 00  mov         dword ptr [rsp+00000000000000F8h],edx
                    00
  00000001400040F5: 4C 89 84 24 00 01  mov         qword ptr [rsp+0000000000000100h],r8
                    00 00
  00000001400040FD: 4C 89 8C 24 08 01  mov         qword ptr [rsp+0000000000000108h],r9
                    00 00
  0000000140004105: 48 8B 05 1C 8F 00  mov         rax,qword ptr [000000014000D028h]
                    00
  000000014000410C: 48 33 C4           xor         rax,rsp
  000000014000410F: 48 89 84 24 D0 00  mov         qword ptr [rsp+00000000000000D0h],rax
                    00 00
  0000000140004117: 45 85 F6           test        r14d,r14d
  000000014000411A: 0F 84 FB 00 00 00  je          000000014000421B
  0000000140004120: 83 3D 09 8F 00 00  cmp         dword ptr [000000014000D030h],0
                    00
  0000000140004127: 74 4E              je          0000000140004177
  0000000140004129: C7 05 FD 8E 00 00  mov         dword ptr [000000014000D030h],0
                    00 00 00 00
  0000000140004133: FF 15 1F 5F 00 00  call        qword ptr [000000014000A058h]
  0000000140004139: 48 8D 15 40 77 00  lea         rdx,[000000014000B880h]
                    00
  0000000140004140: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140004145: 41 89 C0           mov         r8d,eax
  0000000140004148: 4C 8D 0D 39 77 00  lea         r9,[000000014000B888h]
                    00
  000000014000414F: E8 0C FF FF FF     call        0000000140004060
  0000000140004154: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140004159: FF 15 01 5F 00 00  call        qword ptr [000000014000A060h]
  000000014000415F: 48 89 05 BA A4 00  mov         qword ptr [000000014000E620h],rax
                    00
  0000000140004166: 48 85 C0           test        rax,rax
  0000000140004169: 74 0C              je          0000000140004177
  000000014000416B: C7 05 BF 8E 00 00  mov         dword ptr [000000014000D034h],0
                    00 00 00 00
  0000000140004175: EB 25              jmp         000000014000419C
  0000000140004177: 8B 05 B7 8E 00 00  mov         eax,dword ptr [000000014000D034h]
  000000014000417D: 85 C0              test        eax,eax
  000000014000417F: 74 1B              je          000000014000419C
  0000000140004181: 4D 63 F6           movsxd      r14,r14d
  0000000140004184: 48 8D 05 75 BE FF  lea         rax,[0000000140000000h]
                    FF
  000000014000418B: 49 C1 E6 04        shl         r14,4
  000000014000418F: 4E 8B AC 30 E8 A7  mov         r13,qword ptr [rax+r14+000000000000A7E8h]
                    00 00
  0000000140004197: E9 86 00 00 00     jmp         0000000140004222
  000000014000419C: 49 63 C6           movsxd      rax,r14d
  000000014000419F: 4C 8D 2D 5A BE FF  lea         r13,[0000000140000000h]
                    FF
  00000001400041A6: 48 C1 E0 04        shl         rax,4
  00000001400041AA: 49 89 E3           mov         r11,rsp
  00000001400041AD: 41 81 C6 00 00 00  add         r14d,80000000h
                    80
  00000001400041B4: B9 00 09 00 00     mov         ecx,900h
  00000001400041B9: 48 8B 15 60 A4 00  mov         rdx,qword ptr [000000014000E620h]
                    00
  00000001400041C0: 45 89 F0           mov         r8d,r14d
  00000001400041C3: 41 B9 09 04 00 00  mov         r9d,409h
  00000001400041C9: 4C 8D 54 24 40     lea         r10,[rsp+40h]
  00000001400041CE: 4D 8B AC 05 E8 A7  mov         r13,qword ptr [r13+rax+000000000000A7E8h]
                    00 00
  00000001400041D6: 4D 89 53 20        mov         qword ptr [r11+20h],r10
  00000001400041DA: 41 C7 43 28 00 02  mov         dword ptr [r11+28h],200h
                    00 00
  00000001400041E2: 49 C7 43 30 00 00  mov         qword ptr [r11+30h],0
                    00 00
  00000001400041EA: FF 15 78 5E 00 00  call        qword ptr [000000014000A068h]
  00000001400041F0: 85 C0              test        eax,eax
  00000001400041F2: 74 2E              je          0000000140004222
  00000001400041F4: 4C 8B 6C 24 40     mov         r13,qword ptr [rsp+40h]
  00000001400041F9: 4C 89 E9           mov         rcx,r13
  00000001400041FC: E8 8F 4D 00 00     call        0000000140008F90
  0000000140004201: 49 89 C6           mov         r14,rax
  0000000140004204: 49 83 FE 01        cmp         r14,1
  0000000140004208: 76 18              jbe         0000000140004222
  000000014000420A: 4D 8D 46 FE        lea         r8,[r14-2]
  000000014000420E: 43 80 3C 28 0D     cmp         byte ptr [r8+r13],0Dh
  0000000140004213: 0F 84 BA 00 00 00  je          00000001400042D3
  0000000140004219: EB 07              jmp         0000000140004222
  000000014000421B: 4C 8D 2D 72 76 00  lea         r13,[000000014000B894h]
                    00
  0000000140004222: 83 BC 24 F8 00 00  cmp         dword ptr [rsp+00000000000000F8h],0
                    00 00
  000000014000422A: 7E 78              jle         00000001400042A4
  000000014000422C: 4C 8D 84 24 00 01  lea         r8,[rsp+0000000000000100h]
                    00 00
  0000000140004234: 4C 89 44 24 48     mov         qword ptr [rsp+48h],r8
  0000000140004239: 4C 8B 74 24 48     mov         r14,qword ptr [rsp+48h]
  000000014000423E: E8 DD E0 FF FF     call        0000000140002320
  0000000140004243: 49 89 E2           mov         r10,rsp
  0000000140004246: 48 8D 15 D3 9D 00  lea         rdx,[000000014000E020h]
                    00
  000000014000424D: 41 B8 00 02 00 00  mov         r8d,200h
  0000000140004253: 4D 89 E9           mov         r9,r13
  0000000140004256: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000140004259: 48 83 C9 02        or          rcx,2
  000000014000425D: 49 C7 42 20 00 00  mov         qword ptr [r10+20h],0
                    00 00
  0000000140004265: 4D 89 72 28        mov         qword ptr [r10+28h],r14
  0000000140004269: E8 3A 4D 00 00     call        0000000140008FA8
  000000014000426E: 33 C0              xor         eax,eax
  0000000140004270: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000140004275: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+00000000000000D0h]
                    00 00
  000000014000427D: 48 89 84 24 D0 00  mov         qword ptr [rsp+00000000000000D0h],rax
                    00 00
  0000000140004285: 48 33 CC           xor         rcx,rsp
  0000000140004288: 48 3B 0D 99 8D 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  000000014000428F: 75 79              jne         000000014000430A
  0000000140004291: 48 8D 05 88 9D 00  lea         rax,[000000014000E020h]
                    00
  0000000140004298: 48 81 C4 D8 00 00  add         rsp,0D8h
                    00
  000000014000429F: 41 5E              pop         r14
  00000001400042A1: 41 5D              pop         r13
  00000001400042A3: C3                 ret
  00000001400042A4: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+00000000000000D0h]
                    00 00
  00000001400042AC: 48 C7 84 24 D0 00  mov         qword ptr [rsp+00000000000000D0h],0
                    00 00 00 00 00 00
  00000001400042B8: 48 33 CC           xor         rcx,rsp
  00000001400042BB: 48 3B 0D 66 8D 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  00000001400042C2: 75 46              jne         000000014000430A
  00000001400042C4: 4C 89 E8           mov         rax,r13
  00000001400042C7: 48 81 C4 D8 00 00  add         rsp,0D8h
                    00
  00000001400042CE: 41 5E              pop         r14
  00000001400042D0: 41 5D              pop         r13
  00000001400042D2: C3                 ret
  00000001400042D3: 43 80 7C 35 FF 0A  cmp         byte ptr [r13+r14-1],0Ah
  00000001400042D9: 0F 85 43 FF FF FF  jne         0000000140004222
  00000001400042DF: 48 8D 0D 3A 9F 00  lea         rcx,[000000014000E220h]
                    00
  00000001400042E6: 4C 89 EA           mov         rdx,r13
  00000001400042E9: E8 C0 4C 00 00     call        0000000140008FAE
  00000001400042EE: 48 8D 05 0B BD FF  lea         rax,[0000000140000000h]
                    FF
  00000001400042F5: 4C 8D 2D 24 9F 00  lea         r13,[000000014000E220h]
                    00
  00000001400042FC: 42 C6 84 30 1E E2  mov         byte ptr [rax+r14+000000000000E21Eh],0
                    00 00 00
  0000000140004305: E9 18 FF FF FF     jmp         0000000140004222
  000000014000430A: E8 C1 4C 00 00     call        0000000140008FD0
  000000014000430F: 90                 nop
  0000000140004310: 41 56              push        r14
  0000000140004312: 41 57              push        r15
  0000000140004314: 55                 push        rbp
  0000000140004315: 48 81 EC E0 00 00  sub         rsp,0E0h
                    00
  000000014000431C: 41 89 D7           mov         r15d,edx
  000000014000431F: 44 89 84 24 10 01  mov         dword ptr [rsp+0000000000000110h],r8d
                    00 00
  0000000140004327: 41 89 CE           mov         r14d,ecx
  000000014000432A: 4C 89 8C 24 18 01  mov         qword ptr [rsp+0000000000000118h],r9
                    00 00
  0000000140004332: 48 8B 05 EF 8C 00  mov         rax,qword ptr [000000014000D028h]
                    00
  0000000140004339: 48 33 C4           xor         rax,rsp
  000000014000433C: 48 89 84 24 D0 00  mov         qword ptr [rsp+00000000000000D0h],rax
                    00 00
  0000000140004344: 45 85 FF           test        r15d,r15d
  0000000140004347: 75 41              jne         000000014000438A
  0000000140004349: 41 83 FE 01        cmp         r14d,1
  000000014000434D: 48 8D 0D 6C 68 00  lea         rcx,[000000014000ABC0h]
                    00
  0000000140004354: E8 57 DF FF FF     call        00000001400022B0
  0000000140004359: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+00000000000000D0h]
                    00 00
  0000000140004361: 48 C7 84 24 D0 00  mov         qword ptr [rsp+00000000000000D0h],0
                    00 00 00 00 00 00
  000000014000436D: 48 33 CC           xor         rcx,rsp
  0000000140004370: 48 3B 0D B1 8C 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  0000000140004377: 0F 85 9F 01 00 00  jne         000000014000451C
  000000014000437D: 48 81 C4 E0 00 00  add         rsp,0E0h
                    00
  0000000140004384: 5D                 pop         rbp
  0000000140004385: 41 5F              pop         r15
  0000000140004387: 41 5E              pop         r14
  0000000140004389: C3                 ret
  000000014000438A: 83 3D 9F 8C 00 00  cmp         dword ptr [000000014000D030h],0
                    00
  0000000140004391: 74 4E              je          00000001400043E1
  0000000140004393: C7 05 93 8C 00 00  mov         dword ptr [000000014000D030h],0
                    00 00 00 00
  000000014000439D: FF 15 B5 5C 00 00  call        qword ptr [000000014000A058h]
  00000001400043A3: 48 8D 15 D6 74 00  lea         rdx,[000000014000B880h]
                    00
  00000001400043AA: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000001400043AF: 41 89 C0           mov         r8d,eax
  00000001400043B2: 4C 8D 0D CF 74 00  lea         r9,[000000014000B888h]
                    00
  00000001400043B9: E8 A2 FC FF FF     call        0000000140004060
  00000001400043BE: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000001400043C3: FF 15 97 5C 00 00  call        qword ptr [000000014000A060h]
  00000001400043C9: 48 89 05 50 A2 00  mov         qword ptr [000000014000E620h],rax
                    00
  00000001400043D0: 48 85 C0           test        rax,rax
  00000001400043D3: 74 0C              je          00000001400043E1
  00000001400043D5: C7 05 55 8C 00 00  mov         dword ptr [000000014000D034h],0
                    00 00 00 00
  00000001400043DF: EB 22              jmp         0000000140004403
  00000001400043E1: 8B 05 4D 8C 00 00  mov         eax,dword ptr [000000014000D034h]
  00000001400043E7: 85 C0              test        eax,eax
  00000001400043E9: 74 18              je          0000000140004403
  00000001400043EB: 4D 63 FF           movsxd      r15,r15d
  00000001400043EE: 48 8D 05 0B BC FF  lea         rax,[0000000140000000h]
                    FF
  00000001400043F5: 49 C1 E7 04        shl         r15,4
  00000001400043F9: 4A 8B AC 38 E8 A7  mov         rbp,qword ptr [rax+r15+000000000000A7E8h]
                    00 00
  0000000140004401: EB 7D              jmp         0000000140004480
  0000000140004403: 49 63 C7           movsxd      rax,r15d
  0000000140004406: 48 8D 2D F3 BB FF  lea         rbp,[0000000140000000h]
                    FF
  000000014000440D: 48 C1 E0 04        shl         rax,4
  0000000140004411: 49 89 E3           mov         r11,rsp
  0000000140004414: 41 81 C7 00 00 00  add         r15d,80000000h
                    80
  000000014000441B: B9 00 09 00 00     mov         ecx,900h
  0000000140004420: 48 8B 15 F9 A1 00  mov         rdx,qword ptr [000000014000E620h]
                    00
  0000000140004427: 45 89 F8           mov         r8d,r15d
  000000014000442A: 41 B9 09 04 00 00  mov         r9d,409h
  0000000140004430: 4C 8D 54 24 40     lea         r10,[rsp+40h]
  0000000140004435: 48 8B AC 05 E8 A7  mov         rbp,qword ptr [rbp+rax+000000000000A7E8h]
                    00 00
  000000014000443D: 4D 89 53 20        mov         qword ptr [r11+20h],r10
  0000000140004441: 41 C7 43 28 00 02  mov         dword ptr [r11+28h],200h
                    00 00
  0000000140004449: 49 C7 43 30 00 00  mov         qword ptr [r11+30h],0
                    00 00
  0000000140004451: FF 15 11 5C 00 00  call        qword ptr [000000014000A068h]
  0000000140004457: 85 C0              test        eax,eax
  0000000140004459: 74 25              je          0000000140004480
  000000014000445B: 48 8B 6C 24 40     mov         rbp,qword ptr [rsp+40h]
  0000000140004460: 48 89 E9           mov         rcx,rbp
  0000000140004463: E8 28 4B 00 00     call        0000000140008F90
  0000000140004468: 49 89 C7           mov         r15,rax
  000000014000446B: 49 83 FF 01        cmp         r15,1
  000000014000446F: 76 0F              jbe         0000000140004480
  0000000140004471: 4D 8D 47 FE        lea         r8,[r15-2]
  0000000140004475: 41 80 3C 28 0D     cmp         byte ptr [r8+rbp],0Dh
  000000014000447A: 0F 84 A1 00 00 00  je          0000000140004521
  0000000140004480: 83 BC 24 10 01 00  cmp         dword ptr [rsp+0000000000000110h],0
                    00 00
  0000000140004488: 7E 52              jle         00000001400044DC
  000000014000448A: 48 8D 84 24 18 01  lea         rax,[rsp+0000000000000118h]
                    00 00
  0000000140004492: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000140004497: 4C 8B 7C 24 48     mov         r15,qword ptr [rsp+48h]
  000000014000449C: E8 7F DE FF FF     call        0000000140002320
  00000001400044A1: 49 89 E2           mov         r10,rsp
  00000001400044A4: 48 8D 15 75 9F 00  lea         rdx,[000000014000E420h]
                    00
  00000001400044AB: 41 B8 00 02 00 00  mov         r8d,200h
  00000001400044B1: 49 89 E9           mov         r9,rbp
  00000001400044B4: 48 8B 08           mov         rcx,qword ptr [rax]
  00000001400044B7: 48 83 C9 02        or          rcx,2
  00000001400044BB: 49 C7 42 20 00 00  mov         qword ptr [r10+20h],0
                    00 00
  00000001400044C3: 4D 89 7A 28        mov         qword ptr [r10+28h],r15
  00000001400044C7: E8 DC 4A 00 00     call        0000000140008FA8
  00000001400044CC: 48 C7 44 24 48 00  mov         qword ptr [rsp+48h],0
                    00 00 00
  00000001400044D5: 48 8D 2D 44 9F 00  lea         rbp,[000000014000E420h]
                    00
  00000001400044DC: 41 83 FE 01        cmp         r14d,1
  00000001400044E0: 48 8D 0D B1 73 00  lea         rcx,[000000014000B898h]
                    00
  00000001400044E7: 48 89 EA           mov         rdx,rbp
  00000001400044EA: E8 C1 DD FF FF     call        00000001400022B0
  00000001400044EF: 48 8B 8C 24 D0 00  mov         rcx,qword ptr [rsp+00000000000000D0h]
                    00 00
  00000001400044F7: 48 C7 84 24 D0 00  mov         qword ptr [rsp+00000000000000D0h],0
                    00 00 00 00 00 00
  0000000140004503: 48 33 CC           xor         rcx,rsp
  0000000140004506: 48 3B 0D 1B 8B 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  000000014000450D: 75 0D              jne         000000014000451C
  000000014000450F: 48 81 C4 E0 00 00  add         rsp,0E0h
                    00
  0000000140004516: 5D                 pop         rbp
  0000000140004517: 41 5F              pop         r15
  0000000140004519: 41 5E              pop         r14
  000000014000451B: C3                 ret
  000000014000451C: E8 AF 4A 00 00     call        0000000140008FD0
  0000000140004521: 42 80 7C 3D FF 0A  cmp         byte ptr [rbp+r15-1],0Ah
  0000000140004527: 0F 85 53 FF FF FF  jne         0000000140004480
  000000014000452D: 48 8D 0D EC 9C 00  lea         rcx,[000000014000E220h]
                    00
  0000000140004534: 48 89 EA           mov         rdx,rbp
  0000000140004537: E8 72 4A 00 00     call        0000000140008FAE
  000000014000453C: 48 8D 05 BD BA FF  lea         rax,[0000000140000000h]
                    FF
  0000000140004543: 48 8D 2D D6 9C 00  lea         rbp,[000000014000E220h]
                    00
  000000014000454A: 42 C6 84 38 1E E2  mov         byte ptr [rax+r15+000000000000E21Eh],0
                    00 00 00
  0000000140004553: E9 28 FF FF FF     jmp         0000000140004480
  0000000140004558: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004560: 41 56              push        r14
  0000000140004562: 41 57              push        r15
  0000000140004564: 55                 push        rbp
  0000000140004565: 48 81 EC 40 02 00  sub         rsp,240h
                    00
  000000014000456C: 41 89 D7           mov         r15d,edx
  000000014000456F: 44 89 FD           mov         ebp,r15d
  0000000140004572: 45 89 FE           mov         r14d,r15d
  0000000140004575: 48 8B 05 AC 8A 00  mov         rax,qword ptr [000000014000D028h]
                    00
  000000014000457C: 83 E5 04           and         ebp,4
  000000014000457F: 48 33 C4           xor         rax,rsp
  0000000140004582: 48 89 84 24 30 02  mov         qword ptr [rsp+0000000000000230h],rax
                    00 00
  000000014000458A: 41 83 E6 02        and         r14d,2
  000000014000458E: 74 1D              je          00000001400045AD
  0000000140004590: F6 C1 02           test        cl,2
  0000000140004593: 74 34              je          00000001400045C9
  0000000140004595: 85 ED              test        ebp,ebp
  0000000140004597: 74 05              je          000000014000459E
  0000000140004599: F6 C1 04           test        cl,4
  000000014000459C: 74 2B              je          00000001400045C9
  000000014000459E: 41 F7 C7 01 00 00  test        r15d,1
                    00
  00000001400045A5: 0F 85 C0 00 00 00  jne         000000014000466B
  00000001400045AB: EB 56              jmp         0000000140004603
  00000001400045AD: 85 ED              test        ebp,ebp
  00000001400045AF: 0F 84 80 00 00 00  je          0000000140004635
  00000001400045B5: F6 C1 04           test        cl,4
  00000001400045B8: 74 0F              je          00000001400045C9
  00000001400045BA: 41 F7 C7 01 00 00  test        r15d,1
                    00
  00000001400045C1: 0F 85 A4 00 00 00  jne         000000014000466B
  00000001400045C7: EB 53              jmp         000000014000461C
  00000001400045C9: 33 D2              xor         edx,edx
  00000001400045CB: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  00000001400045D0: 41 B8 00 02 00 00  mov         r8d,200h
  00000001400045D6: E8 13 49 00 00     call        0000000140008EEE
  00000001400045DB: 90                 nop
  00000001400045DC: 0F AE 44 24 30     fxsave      [rsp+30h]
  00000001400045E1: 33 D2              xor         edx,edx
  00000001400045E3: 8B 44 24 4C        mov         eax,dword ptr [rsp+4Ch]
  00000001400045E7: A8 40              test        al,40h
  00000001400045E9: 44 0F 44 F2        cmove       r14d,edx
  00000001400045ED: A9 00 00 02 00     test        eax,20000h
  00000001400045F2: 0F 44 EA           cmove       ebp,edx
  00000001400045F5: 41 F7 C7 01 00 00  test        r15d,1
                    00
  00000001400045FC: 75 6D              jne         000000014000466B
  00000001400045FE: 45 85 F6           test        r14d,r14d
  0000000140004601: 74 15              je          0000000140004618
  0000000140004603: 0F AE 5C 24 20     stmxcsr     dword ptr [rsp+20h]
  0000000140004608: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000014000460C: 83 C8 40           or          eax,40h
  000000014000460F: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000140004613: 0F AE 54 24 20     ldmxcsr     dword ptr [rsp+20h]
  0000000140004618: 85 ED              test        ebp,ebp
  000000014000461A: 74 22              je          000000014000463E
  000000014000461C: 0F AE 5C 24 20     stmxcsr     dword ptr [rsp+20h]
  0000000140004621: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000140004625: 0D 00 00 02 00     or          eax,20000h
  000000014000462A: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000014000462E: 0F AE 54 24 20     ldmxcsr     dword ptr [rsp+20h]
  0000000140004633: EB 09              jmp         000000014000463E
  0000000140004635: 41 F7 C7 01 00 00  test        r15d,1
                    00
  000000014000463C: 75 2D              jne         000000014000466B
  000000014000463E: 48 8B 8C 24 30 02  mov         rcx,qword ptr [rsp+0000000000000230h]
                    00 00
  0000000140004646: 48 C7 84 24 30 02  mov         qword ptr [rsp+0000000000000230h],0
                    00 00 00 00 00 00
  0000000140004652: 48 33 CC           xor         rcx,rsp
  0000000140004655: 48 3B 0D CC 89 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  000000014000465C: 75 29              jne         0000000140004687
  000000014000465E: 48 81 C4 40 02 00  add         rsp,240h
                    00
  0000000140004665: 5D                 pop         rbp
  0000000140004666: 41 5F              pop         r15
  0000000140004668: 41 5E              pop         r14
  000000014000466A: C3                 ret
  000000014000466B: 0F AE 5C 24 20     stmxcsr     dword ptr [rsp+20h]
  0000000140004670: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000140004674: 0D 00 80 00 00     or          eax,8000h
  0000000140004679: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000014000467D: 0F AE 54 24 20     ldmxcsr     dword ptr [rsp+20h]
  0000000140004682: E9 77 FF FF FF     jmp         00000001400045FE
  0000000140004687: E8 44 49 00 00     call        0000000140008FD0
  000000014000468C: 90                 nop
  000000014000468D: 0F 1F 00           nop         dword ptr [rax]
  0000000140004690: 57                 push        rdi
  0000000140004691: 41 57              push        r15
  0000000140004693: 49 89 CB           mov         r11,rcx
  0000000140004696: 4D 89 DA           mov         r10,r11
  0000000140004699: 48 B8 01 01 01 01  mov         rax,101010101010101h
                    01 01 01 01
  00000001400046A3: 4C 0F B6 CA        movzx       r9,dl
  00000001400046A7: 4C 0F AF C8        imul        r9,rax
  00000001400046AB: 48 8D 15 7E 0C 00  lea         rdx,[0000000140005330h]
                    00
  00000001400046B2: C4 C1 F9 6E C1     vmovq       xmm0,r9
  00000001400046B7: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  00000001400046BE: 77 10              ja          00000001400046D0
  00000001400046C0: 4C 89 D7           mov         rdi,r10
  00000001400046C3: 49 03 F8           add         rdi,r8
  00000001400046C6: 4A 2B 14 C2        sub         rdx,qword ptr [rdx+r8*8]
  00000001400046CA: 3E FF E2           jmp         rdx
  00000001400046CD: 0F 1F 00           nop         dword ptr [rax]
  00000001400046D0: 48 8D 15 59 03 00  lea         rdx,[0000000140004A30h]
                    00
  00000001400046D7: 4C 89 D1           mov         rcx,r10
  00000001400046DA: 48 83 E1 1F        and         rcx,1Fh
  00000001400046DE: 74 23              je          0000000140004703
  00000001400046E0: 48 F7 D9           neg         rcx
  00000001400046E3: 48 83 C1 20        add         rcx,20h
  00000001400046E7: 4C 2B C1           sub         r8,rcx
  00000001400046EA: 4C 89 D7           mov         rdi,r10
  00000001400046ED: 48 03 F9           add         rdi,rcx
  00000001400046F0: 48 2B 14 CA        sub         rdx,qword ptr [rdx+rcx*8]
  00000001400046F4: 3E FF E2           jmp         rdx
  00000001400046F7: 66 0F 1F 84 00 00  nop         word ptr [rax+rax+0000000000000000h]
                    00 00 00
  0000000140004700: 4C 03 D1           add         r10,rcx
  0000000140004703: 49 81 F8 00 01 00  cmp         r8,100h
                    00
  000000014000470A: 0F 8C 30 01 00 00  jl          0000000140004840
  0000000140004710: 48 8B 0D 39 91 00  mov         rcx,qword ptr [000000014000D850h]
                    00
  0000000140004717: 48 89 CF           mov         rdi,rcx
  000000014000471A: 48 C1 E9 04        shr         rcx,4
  000000014000471E: 48 2B F9           sub         rdi,rcx
  0000000140004721: 4C 3B C7           cmp         r8,rdi
  0000000140004724: 73 5A              jae         0000000140004780
  0000000140004726: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  000000014000472B: C4 C1 7D 7F 02     vmovdqa     ymmword ptr [r10],ymm0
  0000000140004730: C4 C1 7D 7F 42 20  vmovdqa     ymmword ptr [r10+20h],ymm0
  0000000140004736: C4 C1 7D 7F 42 40  vmovdqa     ymmword ptr [r10+40h],ymm0
  000000014000473C: C4 C1 7D 7F 42 60  vmovdqa     ymmword ptr [r10+60h],ymm0
  0000000140004742: 49 81 C2 00 01 00  add         r10,100h
                    00
  0000000140004749: 49 81 E8 00 01 00  sub         r8,100h
                    00
  0000000140004750: C4 C1 7D 7F 42 80  vmovdqa     ymmword ptr [r10-80h],ymm0
  0000000140004756: C4 C1 7D 7F 42 A0  vmovdqa     ymmword ptr [r10-60h],ymm0
  000000014000475C: C4 C1 7D 7F 42 C0  vmovdqa     ymmword ptr [r10-40h],ymm0
  0000000140004762: C4 C1 7D 7F 42 E0  vmovdqa     ymmword ptr [r10-20h],ymm0
  0000000140004768: 49 81 F8 00 01 00  cmp         r8,100h
                    00
  000000014000476F: 7D BA              jge         000000014000472B
  0000000140004771: E9 DA 00 00 00     jmp         0000000140004850
  0000000140004776: 0F 1F 00           nop         dword ptr [rax]
  0000000140004779: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140004780: 4C 89 D7           mov         rdi,r10
  0000000140004783: 4C 89 C8           mov         rax,r9
  0000000140004786: 4C 89 C1           mov         rcx,r8
  0000000140004789: FC                 cld
  000000014000478A: F3 AA              rep stos    byte ptr [rdi]
  000000014000478C: E9 AF 0F 00 00     jmp         0000000140005740
  0000000140004791: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004799: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400047A0: 45 88 0A           mov         byte ptr [r10],r9b
  00000001400047A3: E9 58 FF FF FF     jmp         0000000140004700
  00000001400047A8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400047B0: 66 45 89 0A        mov         word ptr [r10],r9w
  00000001400047B4: E9 47 FF FF FF     jmp         0000000140004700
  00000001400047B9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400047C0: 66 45 89 0A        mov         word ptr [r10],r9w
  00000001400047C4: 45 88 4A 02        mov         byte ptr [r10+2],r9b
  00000001400047C8: E9 33 FF FF FF     jmp         0000000140004700
  00000001400047CD: 0F 1F 00           nop         dword ptr [rax]
  00000001400047D0: 45 89 0A           mov         dword ptr [r10],r9d
  00000001400047D3: E9 28 FF FF FF     jmp         0000000140004700
  00000001400047D8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400047E0: 45 89 0A           mov         dword ptr [r10],r9d
  00000001400047E3: 44 89 4F FC        mov         dword ptr [rdi-4],r9d
  00000001400047E7: E9 14 FF FF FF     jmp         0000000140004700
  00000001400047EC: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400047F0: 4D 89 0A           mov         qword ptr [r10],r9
  00000001400047F3: E9 08 FF FF FF     jmp         0000000140004700
  00000001400047F8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004800: 4D 89 0A           mov         qword ptr [r10],r9
  0000000140004803: 4C 89 4F F8        mov         qword ptr [rdi-8],r9
  0000000140004807: E9 F4 FE FF FF     jmp         0000000140004700
  000000014000480C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140004810: 4D 89 0A           mov         qword ptr [r10],r9
  0000000140004813: 4D 89 4A 08        mov         qword ptr [r10+8],r9
  0000000140004817: E9 E4 FE FF FF     jmp         0000000140004700
  000000014000481C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140004820: 4D 89 0A           mov         qword ptr [r10],r9
  0000000140004823: 4D 89 4A 08        mov         qword ptr [r10+8],r9
  0000000140004827: 4C 89 4F F0        mov         qword ptr [rdi-10h],r9
  000000014000482B: 4C 89 4F F8        mov         qword ptr [rdi-8],r9
  000000014000482F: E9 CC FE FF FF     jmp         0000000140004700
  0000000140004834: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140004839: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140004840: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140004845: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140004849: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140004850: 4D 03 D0           add         r10,r8
  0000000140004853: 4C 89 D7           mov         rdi,r10
  0000000140004856: 49 83 E2 E0        and         r10,0FFFFFFFFFFFFFFE0h
  000000014000485A: 48 8D 15 CF 02 00  lea         rdx,[0000000140004B30h]
                    00
  0000000140004861: 4A 2B 14 C2        sub         rdx,qword ptr [rdx+r8*8]
  0000000140004865: 3E FF E2           jmp         rdx
  0000000140004868: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004870: C4 C1 7C 29 82 20  vmovaps     ymmword ptr [r10+FFFFFFFFFFFFFF20h],ymm0
                    FF FF FF
  0000000140004879: C4 C1 7C 29 82 40  vmovaps     ymmword ptr [r10+FFFFFFFFFFFFFF40h],ymm0
                    FF FF FF
  0000000140004882: C4 C1 7C 29 82 60  vmovaps     ymmword ptr [r10+FFFFFFFFFFFFFF60h],ymm0
                    FF FF FF
  000000014000488B: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140004890: C4 C1 7C 29 42 80  vmovaps     ymmword ptr [r10-80h],ymm0
  0000000140004896: C4 C1 7C 29 42 A0  vmovaps     ymmword ptr [r10-60h],ymm0
  000000014000489C: C4 C1 7C 29 42 C0  vmovaps     ymmword ptr [r10-40h],ymm0
  00000001400048A2: C4 C1 7C 29 42 E0  vmovaps     ymmword ptr [r10-20h],ymm0
  00000001400048A8: 49 89 F8           mov         r8,rdi
  00000001400048AB: 49 83 E0 1F        and         r8,1Fh
  00000001400048AF: 48 8D 15 7A 02 00  lea         rdx,[0000000140004B30h]
                    00
  00000001400048B6: 4A 2B 14 C2        sub         rdx,qword ptr [rdx+r8*8]
  00000001400048BA: 3E FF E2           jmp         rdx
  00000001400048BD: 0F 1F 00           nop         dword ptr [rax]
  00000001400048C0: 45 88 0A           mov         byte ptr [r10],r9b
  00000001400048C3: E9 78 0E 00 00     jmp         0000000140005740
  00000001400048C8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400048D0: E9 6B 0E 00 00     jmp         0000000140005740
  00000001400048D5: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400048D9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400048E0: 66 45 89 0A        mov         word ptr [r10],r9w
  00000001400048E4: E9 57 0E 00 00     jmp         0000000140005740
  00000001400048E9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400048F0: 66 45 89 0A        mov         word ptr [r10],r9w
  00000001400048F4: 45 88 4A 02        mov         byte ptr [r10+2],r9b
  00000001400048F8: E9 43 0E 00 00     jmp         0000000140005740
  00000001400048FD: 0F 1F 00           nop         dword ptr [rax]
  0000000140004900: 45 89 0A           mov         dword ptr [r10],r9d
  0000000140004903: E9 38 0E 00 00     jmp         0000000140005740
  0000000140004908: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004910: 45 89 0A           mov         dword ptr [r10],r9d
  0000000140004913: 44 89 4F FC        mov         dword ptr [rdi-4],r9d
  0000000140004917: E9 24 0E 00 00     jmp         0000000140005740
  000000014000491C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140004920: 4D 89 0A           mov         qword ptr [r10],r9
  0000000140004923: E9 18 0E 00 00     jmp         0000000140005740
  0000000140004928: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004930: 4D 89 0A           mov         qword ptr [r10],r9
  0000000140004933: 4C 89 4F F8        mov         qword ptr [rdi-8],r9
  0000000140004937: E9 04 0E 00 00     jmp         0000000140005740
  000000014000493C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140004940: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  0000000140004945: E9 F6 0D 00 00     jmp         0000000140005740
  000000014000494A: 66 0F 1F 44 00 00  nop         word ptr [rax+rax]
  0000000140004950: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  0000000140004955: C5 F8 11 47 F0     vmovups     xmmword ptr [rdi-10h],xmm0
  000000014000495A: E9 E1 0D 00 00     jmp         0000000140005740
  000000014000495F: 90                 nop
  0000000140004960: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140004965: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000496A: E9 D1 0D 00 00     jmp         0000000140005740
  000000014000496F: 90                 nop
  0000000140004970: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140004975: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000497A: C5 FC 11 47 E0     vmovups     ymmword ptr [rdi-20h],ymm0
  000000014000497F: E9 BC 0D 00 00     jmp         0000000140005740
  0000000140004984: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140004989: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140004990: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  0000000140004995: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  000000014000499A: C4 C1 7C 11 42 20  vmovups     ymmword ptr [r10+20h],ymm0
  00000001400049A0: E9 9B 0D 00 00     jmp         0000000140005740
  00000001400049A5: 0F 1F 40 00        nop         dword ptr [rax]
  00000001400049A9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  00000001400049B0: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  00000001400049B5: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  00000001400049BA: C4 C1 7C 11 42 20  vmovups     ymmword ptr [r10+20h],ymm0
  00000001400049C0: C5 FC 11 47 E0     vmovups     ymmword ptr [rdi-20h],ymm0
  00000001400049C5: C5 FC 11 47 C0     vmovups     ymmword ptr [rdi-40h],ymm0
  00000001400049CA: E9 71 0D 00 00     jmp         0000000140005740
  00000001400049CF: 90                 nop
  00000001400049D0: C4 E2 7D 58 C0     vpbroadcastd ymm0,xmm0
  00000001400049D5: C4 C1 7C 11 02     vmovups     ymmword ptr [r10],ymm0
  00000001400049DA: C4 C1 7C 11 42 20  vmovups     ymmword ptr [r10+20h],ymm0
  00000001400049E0: C4 C1 7C 11 42 40  vmovups     ymmword ptr [r10+40h],ymm0
  00000001400049E6: C4 C1 7C 11 42 60  vmovups     ymmword ptr [r10+60h],ymm0
  00000001400049EC: E9 4F 0D 00 00     jmp         0000000140005740
  00000001400049F1: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400049F9: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140004A00: 66 0F 6C C0        punpcklqdq  xmm0,xmm0
  0000000140004A04: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  0000000140004A09: E9 32 0D 00 00     jmp         0000000140005740
  0000000140004A0E: 66 90              xchg        ax,ax
  0000000140004A10: 66 0F 6C C0        punpcklqdq  xmm0,xmm0
  0000000140004A14: C4 C1 78 11 02     vmovups     xmmword ptr [r10],xmm0
  0000000140004A19: C5 F8 11 47 F0     vmovups     xmmword ptr [rdi-10h],xmm0
  0000000140004A1E: E9 1D 0D 00 00     jmp         0000000140005740
  0000000140004A23: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140004A28: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140004A30: 8D 02              lea         eax,[rdx]
  0000000140004A32: 00 00              add         byte ptr [rax],al
  0000000140004A34: 00 00              add         byte ptr [rax],al
  0000000140004A36: 00 00              add         byte ptr [rax],al
  0000000140004A38: 90                 nop
  0000000140004A39: 02 00              add         al,byte ptr [rax]
  0000000140004A3B: 00 00              add         byte ptr [rax],al
  0000000140004A3D: 00 00              add         byte ptr [rax],al
  0000000140004A3F: 00 80 02 00 00 00  add         byte ptr [rax+0000000000000002h],al
  0000000140004A45: 00 00              add         byte ptr [rax],al
  0000000140004A47: 00 70 02           add         byte ptr [rax+2],dh
  0000000140004A4A: 00 00              add         byte ptr [rax],al
  0000000140004A4C: 00 00              add         byte ptr [rax],al
  0000000140004A4E: 00 00              add         byte ptr [rax],al
  0000000140004A50: 60
  0000000140004A51: 02 00              add         al,byte ptr [rax]
  0000000140004A53: 00 00              add         byte ptr [rax],al
  0000000140004A55: 00 00              add         byte ptr [rax],al
  0000000140004A57: 00 50 02           add         byte ptr [rax+2],dl
  0000000140004A5A: 00 00              add         byte ptr [rax],al
  0000000140004A5C: 00 00              add         byte ptr [rax],al
  0000000140004A5E: 00 00              add         byte ptr [rax],al
  0000000140004A60: 50                 push        rax
  0000000140004A61: 02 00              add         al,byte ptr [rax]
  0000000140004A63: 00 00              add         byte ptr [rax],al
  0000000140004A65: 00 00              add         byte ptr [rax],al
  0000000140004A67: 00 50 02           add         byte ptr [rax+2],dl
  0000000140004A6A: 00 00              add         byte ptr [rax],al
  0000000140004A6C: 00 00              add         byte ptr [rax],al
  0000000140004A6E: 00 00              add         byte ptr [rax],al
  0000000140004A70: 40 02 00           add         al,byte ptr [rax]
  0000000140004A73: 00 00              add         byte ptr [rax],al
  0000000140004A75: 00 00              add         byte ptr [rax],al
  0000000140004A77: 00 30              add         byte ptr [rax],dh
  0000000140004A79: 02 00              add         al,byte ptr [rax]
  0000000140004A7B: 00 00              add         byte ptr [rax],al
  0000000140004A7D: 00 00              add         byte ptr [rax],al
  0000000140004A7F: 00 30              add         byte ptr [rax],dh
  0000000140004A81: 02 00              add         al,byte ptr [rax]
  0000000140004A83: 00 00              add         byte ptr [rax],al
  0000000140004A85: 00 00              add         byte ptr [rax],al
  0000000140004A87: 00 30              add         byte ptr [rax],dh
  0000000140004A89: 02 00              add         al,byte ptr [rax]
  0000000140004A8B: 00 00              add         byte ptr [rax],al
  0000000140004A8D: 00 00              add         byte ptr [rax],al
  0000000140004A8F: 00 30              add         byte ptr [rax],dh
  0000000140004A91: 02 00              add         al,byte ptr [rax]
  0000000140004A93: 00 00              add         byte ptr [rax],al
  0000000140004A95: 00 00              add         byte ptr [rax],al
  0000000140004A97: 00 30              add         byte ptr [rax],dh
  0000000140004A99: 02 00              add         al,byte ptr [rax]
  0000000140004A9B: 00 00              add         byte ptr [rax],al
  0000000140004A9D: 00 00              add         byte ptr [rax],al
  0000000140004A9F: 00 30              add         byte ptr [rax],dh
  0000000140004AA1: 02 00              add         al,byte ptr [rax]
  0000000140004AA3: 00 00              add         byte ptr [rax],al
  0000000140004AA5: 00 00              add         byte ptr [rax],al
  0000000140004AA7: 00 30              add         byte ptr [rax],dh
  0000000140004AA9: 02 00              add         al,byte ptr [rax]
  0000000140004AAB: 00 00              add         byte ptr [rax],al
  0000000140004AAD: 00 00              add         byte ptr [rax],al
  0000000140004AAF: 00 20              add         byte ptr [rax],ah
  0000000140004AB1: 02 00              add         al,byte ptr [rax]
  0000000140004AB3: 00 00              add         byte ptr [rax],al
  0000000140004AB5: 00 00              add         byte ptr [rax],al
  0000000140004AB7: 00 10              add         byte ptr [rax],dl
  0000000140004AB9: 02 00              add         al,byte ptr [rax]
  0000000140004ABB: 00 00              add         byte ptr [rax],al
  0000000140004ABD: 00 00              add         byte ptr [rax],al
  0000000140004ABF: 00 10              add         byte ptr [rax],dl
  0000000140004AC1: 02 00              add         al,byte ptr [rax]
  0000000140004AC3: 00 00              add         byte ptr [rax],al
  0000000140004AC5: 00 00              add         byte ptr [rax],al
  0000000140004AC7: 00 10              add         byte ptr [rax],dl
  0000000140004AC9: 02 00              add         al,byte ptr [rax]
  0000000140004ACB: 00 00              add         byte ptr [rax],al
  0000000140004ACD: 00 00              add         byte ptr [rax],al
  0000000140004ACF: 00 10              add         byte ptr [rax],dl
  0000000140004AD1: 02 00              add         al,byte ptr [rax]
  0000000140004AD3: 00 00              add         byte ptr [rax],al
  0000000140004AD5: 00 00              add         byte ptr [rax],al
  0000000140004AD7: 00 10              add         byte ptr [rax],dl
  0000000140004AD9: 02 00              add         al,byte ptr [rax]
  0000000140004ADB: 00 00              add         byte ptr [rax],al
  0000000140004ADD: 00 00              add         byte ptr [rax],al
  0000000140004ADF: 00 10              add         byte ptr [rax],dl
  0000000140004AE1: 02 00              add         al,byte ptr [rax]
  0000000140004AE3: 00 00              add         byte ptr [rax],al
  0000000140004AE5: 00 00              add         byte ptr [rax],al
  0000000140004AE7: 00 10              add         byte ptr [rax],dl
  0000000140004AE9: 02 00              add         al,byte ptr [rax]
  0000000140004AEB: 00 00              add         byte ptr [rax],al
  0000000140004AED: 00 00              add         byte ptr [rax],al
  0000000140004AEF: 00 10              add         byte ptr [rax],dl
  0000000140004AF1: 02 00              add         al,byte ptr [rax]
  0000000140004AF3: 00 00              add         byte ptr [rax],al
  0000000140004AF5: 00 00              add         byte ptr [rax],al
  0000000140004AF7: 00 10              add         byte ptr [rax],dl
  0000000140004AF9: 02 00              add         al,byte ptr [rax]
  0000000140004AFB: 00 00              add         byte ptr [rax],al
  0000000140004AFD: 00 00              add         byte ptr [rax],al
  0000000140004AFF: 00 10              add         byte ptr [rax],dl
  0000000140004B01: 02 00              add         al,byte ptr [rax]
  0000000140004B03: 00 00              add         byte ptr [rax],al
  0000000140004B05: 00 00              add         byte ptr [rax],al
  0000000140004B07: 00 10              add         byte ptr [rax],dl
  0000000140004B09: 02 00              add         al,byte ptr [rax]
  0000000140004B0B: 00 00              add         byte ptr [rax],al
  0000000140004B0D: 00 00              add         byte ptr [rax],al
  0000000140004B0F: 00 10              add         byte ptr [rax],dl
  0000000140004B11: 02 00              add         al,byte ptr [rax]
  0000000140004B13: 00 00              add         byte ptr [rax],al
  0000000140004B15: 00 00              add         byte ptr [rax],al
  0000000140004B17: 00 10              add         byte ptr [rax],dl
  0000000140004B19: 02 00              add         al,byte ptr [rax]
  0000000140004B1B: 00 00              add         byte ptr [rax],al
  0000000140004B1D: 00 00              add         byte ptr [rax],al
  0000000140004B1F: 00 10              add         byte ptr [rax],dl
  0000000140004B21: 02 00              add         al,byte ptr [rax]
  0000000140004B23: 00 00              add         byte ptr [rax],al
  0000000140004B25: 00 00              add         byte ptr [rax],al
  0000000140004B27: 00 10              add         byte ptr [rax],dl
  0000000140004B29: 02 00              add         al,byte ptr [rax]
  0000000140004B2B: 00 00              add         byte ptr [rax],al
  0000000140004B2D: 00 00              add         byte ptr [rax],al
  0000000140004B2F: 00 60 02           add         byte ptr [rax+2],ah
  0000000140004B32: 00 00              add         byte ptr [rax],al
  0000000140004B34: 00 00              add         byte ptr [rax],al
  0000000140004B36: 00 00              add         byte ptr [rax],al
  0000000140004B38: 70 02              jo          0000000140004B3C
  0000000140004B3A: 00 00              add         byte ptr [rax],al
  0000000140004B3C: 00 00              add         byte ptr [rax],al
  0000000140004B3E: 00 00              add         byte ptr [rax],al
  0000000140004B40: 50                 push        rax
  0000000140004B41: 02 00              add         al,byte ptr [rax]
  0000000140004B43: 00 00              add         byte ptr [rax],al
  0000000140004B45: 00 00              add         byte ptr [rax],al
  0000000140004B47: 00 40 02           add         byte ptr [rax+2],al
  0000000140004B4A: 00 00              add         byte ptr [rax],al
  0000000140004B4C: 00 00              add         byte ptr [rax],al
  0000000140004B4E: 00 00              add         byte ptr [rax],al
  0000000140004B50: 30 02              xor         byte ptr [rdx],al
  0000000140004B52: 00 00              add         byte ptr [rax],al
  0000000140004B54: 00 00              add         byte ptr [rax],al
  0000000140004B56: 00 00              add         byte ptr [rax],al
  0000000140004B58: 20 02              and         byte ptr [rdx],al
  0000000140004B5A: 00 00              add         byte ptr [rax],al
  0000000140004B5C: 00 00              add         byte ptr [rax],al
  0000000140004B5E: 00 00              add         byte ptr [rax],al
  0000000140004B60: 20 02              and         byte ptr [rdx],al
  0000000140004B62: 00 00              add         byte ptr [rax],al
  0000000140004B64: 00 00              add         byte ptr [rax],al
  0000000140004B66: 00 00              add         byte ptr [rax],al
  0000000140004B68: 20 02              and         byte ptr [rdx],al
  0000000140004B6A: 00 00              add         byte ptr [rax],al
  0000000140004B6C: 00 00              add         byte ptr [rax],al
  0000000140004B6E: 00 00              add         byte ptr [rax],al
  0000000140004B70: 10 02              adc         byte ptr [rdx],al
  0000000140004B72: 00 00              add         byte ptr [rax],al
  0000000140004B74: 00 00              add         byte ptr [rax],al
  0000000140004B76: 00 00              add         byte ptr [rax],al
  0000000140004B78: 00 02              add         byte ptr [rdx],al
  0000000140004B7A: 00 00              add         byte ptr [rax],al
  0000000140004B7C: 00 00              add         byte ptr [rax],al
  0000000140004B7E: 00 00              add         byte ptr [rax],al
  0000000140004B80: 00 02              add         byte ptr [rdx],al
  0000000140004B82: 00 00              add         byte ptr [rax],al
  0000000140004B84: 00 00              add         byte ptr [rax],al
  0000000140004B86: 00 00              add         byte ptr [rax],al
  0000000140004B88: 00 02              add         byte ptr [rdx],al
  0000000140004B8A: 00 00              add         byte ptr [rax],al
  0000000140004B8C: 00 00              add         byte ptr [rax],al
  0000000140004B8E: 00 00              add         byte ptr [rax],al
  0000000140004B90: 00 02              add         byte ptr [rdx],al
  0000000140004B92: 00 00              add         byte ptr [rax],al
  0000000140004B94: 00 00              add         byte ptr [rax],al
  0000000140004B96: 00 00              add         byte ptr [rax],al
  0000000140004B98: 00 02              add         byte ptr [rdx],al
  0000000140004B9A: 00 00              add         byte ptr [rax],al
  0000000140004B9C: 00 00              add         byte ptr [rax],al
  0000000140004B9E: 00 00              add         byte ptr [rax],al
  0000000140004BA0: 00 02              add         byte ptr [rdx],al
  0000000140004BA2: 00 00              add         byte ptr [rax],al
  0000000140004BA4: 00 00              add         byte ptr [rax],al
  0000000140004BA6: 00 00              add         byte ptr [rax],al
  0000000140004BA8: 00 02              add         byte ptr [rdx],al
  0000000140004BAA: 00 00              add         byte ptr [rax],al
  0000000140004BAC: 00 00              add         byte ptr [rax],al
  0000000140004BAE: 00 00              add         byte ptr [rax],al
  0000000140004BB0: F0 01 00           lock add    dword ptr [rax],eax
  0000000140004BB3: 00 00              add         byte ptr [rax],al
  0000000140004BB5: 00 00              add         byte ptr [rax],al
  0000000140004BB7: 00 E0              add         al,ah
  0000000140004BB9: 01 00              add         dword ptr [rax],eax
  0000000140004BBB: 00 00              add         byte ptr [rax],al
  0000000140004BBD: 00 00              add         byte ptr [rax],al
  0000000140004BBF: 00 E0              add         al,ah
  0000000140004BC1: 01 00              add         dword ptr [rax],eax
  0000000140004BC3: 00 00              add         byte ptr [rax],al
  0000000140004BC5: 00 00              add         byte ptr [rax],al
  0000000140004BC7: 00 E0              add         al,ah
  0000000140004BC9: 01 00              add         dword ptr [rax],eax
  0000000140004BCB: 00 00              add         byte ptr [rax],al
  0000000140004BCD: 00 00              add         byte ptr [rax],al
  0000000140004BCF: 00 E0              add         al,ah
  0000000140004BD1: 01 00              add         dword ptr [rax],eax
  0000000140004BD3: 00 00              add         byte ptr [rax],al
  0000000140004BD5: 00 00              add         byte ptr [rax],al
  0000000140004BD7: 00 E0              add         al,ah
  0000000140004BD9: 01 00              add         dword ptr [rax],eax
  0000000140004BDB: 00 00              add         byte ptr [rax],al
  0000000140004BDD: 00 00              add         byte ptr [rax],al
  0000000140004BDF: 00 E0              add         al,ah
  0000000140004BE1: 01 00              add         dword ptr [rax],eax
  0000000140004BE3: 00 00              add         byte ptr [rax],al
  0000000140004BE5: 00 00              add         byte ptr [rax],al
  0000000140004BE7: 00 E0              add         al,ah
  0000000140004BE9: 01 00              add         dword ptr [rax],eax
  0000000140004BEB: 00 00              add         byte ptr [rax],al
  0000000140004BED: 00 00              add         byte ptr [rax],al
  0000000140004BEF: 00 E0              add         al,ah
  0000000140004BF1: 01 00              add         dword ptr [rax],eax
  0000000140004BF3: 00 00              add         byte ptr [rax],al
  0000000140004BF5: 00 00              add         byte ptr [rax],al
  0000000140004BF7: 00 E0              add         al,ah
  0000000140004BF9: 01 00              add         dword ptr [rax],eax
  0000000140004BFB: 00 00              add         byte ptr [rax],al
  0000000140004BFD: 00 00              add         byte ptr [rax],al
  0000000140004BFF: 00 E0              add         al,ah
  0000000140004C01: 01 00              add         dword ptr [rax],eax
  0000000140004C03: 00 00              add         byte ptr [rax],al
  0000000140004C05: 00 00              add         byte ptr [rax],al
  0000000140004C07: 00 E0              add         al,ah
  0000000140004C09: 01 00              add         dword ptr [rax],eax
  0000000140004C0B: 00 00              add         byte ptr [rax],al
  0000000140004C0D: 00 00              add         byte ptr [rax],al
  0000000140004C0F: 00 E0              add         al,ah
  0000000140004C11: 01 00              add         dword ptr [rax],eax
  0000000140004C13: 00 00              add         byte ptr [rax],al
  0000000140004C15: 00 00              add         byte ptr [rax],al
  0000000140004C17: 00 E0              add         al,ah
  0000000140004C19: 01 00              add         dword ptr [rax],eax
  0000000140004C1B: 00 00              add         byte ptr [rax],al
  0000000140004C1D: 00 00              add         byte ptr [rax],al
  0000000140004C1F: 00 E0              add         al,ah
  0000000140004C21: 01 00              add         dword ptr [rax],eax
  0000000140004C23: 00 00              add         byte ptr [rax],al
  0000000140004C25: 00 00              add         byte ptr [rax],al
  0000000140004C27: 00 E0              add         al,ah
  0000000140004C29: 01 00              add         dword ptr [rax],eax
  0000000140004C2B: 00 00              add         byte ptr [rax],al
  0000000140004C2D: 00 00              add         byte ptr [rax],al
  0000000140004C2F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C35: 00 00              add         byte ptr [rax],al
  0000000140004C37: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C3D: 00 00              add         byte ptr [rax],al
  0000000140004C3F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C45: 00 00              add         byte ptr [rax],al
  0000000140004C47: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C4D: 00 00              add         byte ptr [rax],al
  0000000140004C4F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C55: 00 00              add         byte ptr [rax],al
  0000000140004C57: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C5D: 00 00              add         byte ptr [rax],al
  0000000140004C5F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C65: 00 00              add         byte ptr [rax],al
  0000000140004C67: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C6D: 00 00              add         byte ptr [rax],al
  0000000140004C6F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C75: 00 00              add         byte ptr [rax],al
  0000000140004C77: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C7D: 00 00              add         byte ptr [rax],al
  0000000140004C7F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C85: 00 00              add         byte ptr [rax],al
  0000000140004C87: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C8D: 00 00              add         byte ptr [rax],al
  0000000140004C8F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C95: 00 00              add         byte ptr [rax],al
  0000000140004C97: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004C9D: 00 00              add         byte ptr [rax],al
  0000000140004C9F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CA5: 00 00              add         byte ptr [rax],al
  0000000140004CA7: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CAD: 00 00              add         byte ptr [rax],al
  0000000140004CAF: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CB5: 00 00              add         byte ptr [rax],al
  0000000140004CB7: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CBD: 00 00              add         byte ptr [rax],al
  0000000140004CBF: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CC5: 00 00              add         byte ptr [rax],al
  0000000140004CC7: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CCD: 00 00              add         byte ptr [rax],al
  0000000140004CCF: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CD5: 00 00              add         byte ptr [rax],al
  0000000140004CD7: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CDD: 00 00              add         byte ptr [rax],al
  0000000140004CDF: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CE5: 00 00              add         byte ptr [rax],al
  0000000140004CE7: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CED: 00 00              add         byte ptr [rax],al
  0000000140004CEF: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CF5: 00 00              add         byte ptr [rax],al
  0000000140004CF7: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004CFD: 00 00              add         byte ptr [rax],al
  0000000140004CFF: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004D05: 00 00              add         byte ptr [rax],al
  0000000140004D07: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004D0D: 00 00              add         byte ptr [rax],al
  0000000140004D0F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004D15: 00 00              add         byte ptr [rax],al
  0000000140004D17: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004D1D: 00 00              add         byte ptr [rax],al
  0000000140004D1F: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004D25: 00 00              add         byte ptr [rax],al
  0000000140004D27: 00 8E 02 00 00 00  add         byte ptr [rsi+0000000000000002h],cl
  0000000140004D2D: 00 00              add         byte ptr [rax],al
  0000000140004D2F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D36: 00 00              add         byte ptr [rax],al
  0000000140004D38: 94                 xchg        eax,esp
  0000000140004D39: 02 00              add         al,byte ptr [rax]
  0000000140004D3B: 00 00              add         byte ptr [rax],al
  0000000140004D3D: 00 00              add         byte ptr [rax],al
  0000000140004D3F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D46: 00 00              add         byte ptr [rax],al
  0000000140004D48: 94                 xchg        eax,esp
  0000000140004D49: 02 00              add         al,byte ptr [rax]
  0000000140004D4B: 00 00              add         byte ptr [rax],al
  0000000140004D4D: 00 00              add         byte ptr [rax],al
  0000000140004D4F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D56: 00 00              add         byte ptr [rax],al
  0000000140004D58: 94                 xchg        eax,esp
  0000000140004D59: 02 00              add         al,byte ptr [rax]
  0000000140004D5B: 00 00              add         byte ptr [rax],al
  0000000140004D5D: 00 00              add         byte ptr [rax],al
  0000000140004D5F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D66: 00 00              add         byte ptr [rax],al
  0000000140004D68: 94                 xchg        eax,esp
  0000000140004D69: 02 00              add         al,byte ptr [rax]
  0000000140004D6B: 00 00              add         byte ptr [rax],al
  0000000140004D6D: 00 00              add         byte ptr [rax],al
  0000000140004D6F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D76: 00 00              add         byte ptr [rax],al
  0000000140004D78: 94                 xchg        eax,esp
  0000000140004D79: 02 00              add         al,byte ptr [rax]
  0000000140004D7B: 00 00              add         byte ptr [rax],al
  0000000140004D7D: 00 00              add         byte ptr [rax],al
  0000000140004D7F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D86: 00 00              add         byte ptr [rax],al
  0000000140004D88: 94                 xchg        eax,esp
  0000000140004D89: 02 00              add         al,byte ptr [rax]
  0000000140004D8B: 00 00              add         byte ptr [rax],al
  0000000140004D8D: 00 00              add         byte ptr [rax],al
  0000000140004D8F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004D96: 00 00              add         byte ptr [rax],al
  0000000140004D98: 94                 xchg        eax,esp
  0000000140004D99: 02 00              add         al,byte ptr [rax]
  0000000140004D9B: 00 00              add         byte ptr [rax],al
  0000000140004D9D: 00 00              add         byte ptr [rax],al
  0000000140004D9F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004DA6: 00 00              add         byte ptr [rax],al
  0000000140004DA8: 94                 xchg        eax,esp
  0000000140004DA9: 02 00              add         al,byte ptr [rax]
  0000000140004DAB: 00 00              add         byte ptr [rax],al
  0000000140004DAD: 00 00              add         byte ptr [rax],al
  0000000140004DAF: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004DB6: 00 00              add         byte ptr [rax],al
  0000000140004DB8: 94                 xchg        eax,esp
  0000000140004DB9: 02 00              add         al,byte ptr [rax]
  0000000140004DBB: 00 00              add         byte ptr [rax],al
  0000000140004DBD: 00 00              add         byte ptr [rax],al
  0000000140004DBF: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004DC6: 00 00              add         byte ptr [rax],al
  0000000140004DC8: 94                 xchg        eax,esp
  0000000140004DC9: 02 00              add         al,byte ptr [rax]
  0000000140004DCB: 00 00              add         byte ptr [rax],al
  0000000140004DCD: 00 00              add         byte ptr [rax],al
  0000000140004DCF: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004DD6: 00 00              add         byte ptr [rax],al
  0000000140004DD8: 94                 xchg        eax,esp
  0000000140004DD9: 02 00              add         al,byte ptr [rax]
  0000000140004DDB: 00 00              add         byte ptr [rax],al
  0000000140004DDD: 00 00              add         byte ptr [rax],al
  0000000140004DDF: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004DE6: 00 00              add         byte ptr [rax],al
  0000000140004DE8: 94                 xchg        eax,esp
  0000000140004DE9: 02 00              add         al,byte ptr [rax]
  0000000140004DEB: 00 00              add         byte ptr [rax],al
  0000000140004DED: 00 00              add         byte ptr [rax],al
  0000000140004DEF: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004DF6: 00 00              add         byte ptr [rax],al
  0000000140004DF8: 94                 xchg        eax,esp
  0000000140004DF9: 02 00              add         al,byte ptr [rax]
  0000000140004DFB: 00 00              add         byte ptr [rax],al
  0000000140004DFD: 00 00              add         byte ptr [rax],al
  0000000140004DFF: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004E06: 00 00              add         byte ptr [rax],al
  0000000140004E08: 94                 xchg        eax,esp
  0000000140004E09: 02 00              add         al,byte ptr [rax]
  0000000140004E0B: 00 00              add         byte ptr [rax],al
  0000000140004E0D: 00 00              add         byte ptr [rax],al
  0000000140004E0F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004E16: 00 00              add         byte ptr [rax],al
  0000000140004E18: 94                 xchg        eax,esp
  0000000140004E19: 02 00              add         al,byte ptr [rax]
  0000000140004E1B: 00 00              add         byte ptr [rax],al
  0000000140004E1D: 00 00              add         byte ptr [rax],al
  0000000140004E1F: 00 94 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dl
                    00
  0000000140004E26: 00 00              add         byte ptr [rax],al
  0000000140004E28: 94                 xchg        eax,esp
  0000000140004E29: 02 00              add         al,byte ptr [rax]
  0000000140004E2B: 00 00              add         byte ptr [rax],al
  0000000140004E2D: 00 00              add         byte ptr [rax],al
  0000000140004E2F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E35: 00 00              add         byte ptr [rax],al
  0000000140004E37: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E3D: 00 00              add         byte ptr [rax],al
  0000000140004E3F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E45: 00 00              add         byte ptr [rax],al
  0000000140004E47: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E4D: 00 00              add         byte ptr [rax],al
  0000000140004E4F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E55: 00 00              add         byte ptr [rax],al
  0000000140004E57: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E5D: 00 00              add         byte ptr [rax],al
  0000000140004E5F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E65: 00 00              add         byte ptr [rax],al
  0000000140004E67: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E6D: 00 00              add         byte ptr [rax],al
  0000000140004E6F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E75: 00 00              add         byte ptr [rax],al
  0000000140004E77: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E7D: 00 00              add         byte ptr [rax],al
  0000000140004E7F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E85: 00 00              add         byte ptr [rax],al
  0000000140004E87: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E8D: 00 00              add         byte ptr [rax],al
  0000000140004E8F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E95: 00 00              add         byte ptr [rax],al
  0000000140004E97: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004E9D: 00 00              add         byte ptr [rax],al
  0000000140004E9F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EA5: 00 00              add         byte ptr [rax],al
  0000000140004EA7: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EAD: 00 00              add         byte ptr [rax],al
  0000000140004EAF: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EB5: 00 00              add         byte ptr [rax],al
  0000000140004EB7: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EBD: 00 00              add         byte ptr [rax],al
  0000000140004EBF: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EC5: 00 00              add         byte ptr [rax],al
  0000000140004EC7: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004ECD: 00 00              add         byte ptr [rax],al
  0000000140004ECF: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004ED5: 00 00              add         byte ptr [rax],al
  0000000140004ED7: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EDD: 00 00              add         byte ptr [rax],al
  0000000140004EDF: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EE5: 00 00              add         byte ptr [rax],al
  0000000140004EE7: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EED: 00 00              add         byte ptr [rax],al
  0000000140004EEF: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EF5: 00 00              add         byte ptr [rax],al
  0000000140004EF7: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004EFD: 00 00              add         byte ptr [rax],al
  0000000140004EFF: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004F05: 00 00              add         byte ptr [rax],al
  0000000140004F07: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004F0D: 00 00              add         byte ptr [rax],al
  0000000140004F0F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004F15: 00 00              add         byte ptr [rax],al
  0000000140004F17: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004F1D: 00 00              add         byte ptr [rax],al
  0000000140004F1F: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004F25: 00 00              add         byte ptr [rax],al
  0000000140004F27: 00 9A 02 00 00 00  add         byte ptr [rdx+0000000000000002h],bl
  0000000140004F2D: 00 00              add         byte ptr [rax],al
  0000000140004F2F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F35: 00 00              add         byte ptr [rax],al
  0000000140004F37: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F3D: 00 00              add         byte ptr [rax],al
  0000000140004F3F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F45: 00 00              add         byte ptr [rax],al
  0000000140004F47: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F4D: 00 00              add         byte ptr [rax],al
  0000000140004F4F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F55: 00 00              add         byte ptr [rax],al
  0000000140004F57: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F5D: 00 00              add         byte ptr [rax],al
  0000000140004F5F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F65: 00 00              add         byte ptr [rax],al
  0000000140004F67: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F6D: 00 00              add         byte ptr [rax],al
  0000000140004F6F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F75: 00 00              add         byte ptr [rax],al
  0000000140004F77: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F7D: 00 00              add         byte ptr [rax],al
  0000000140004F7F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F85: 00 00              add         byte ptr [rax],al
  0000000140004F87: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F8D: 00 00              add         byte ptr [rax],al
  0000000140004F8F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F95: 00 00              add         byte ptr [rax],al
  0000000140004F97: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004F9D: 00 00              add         byte ptr [rax],al
  0000000140004F9F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FA5: 00 00              add         byte ptr [rax],al
  0000000140004FA7: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FAD: 00 00              add         byte ptr [rax],al
  0000000140004FAF: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FB5: 00 00              add         byte ptr [rax],al
  0000000140004FB7: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FBD: 00 00              add         byte ptr [rax],al
  0000000140004FBF: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FC5: 00 00              add         byte ptr [rax],al
  0000000140004FC7: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FCD: 00 00              add         byte ptr [rax],al
  0000000140004FCF: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FD5: 00 00              add         byte ptr [rax],al
  0000000140004FD7: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FDD: 00 00              add         byte ptr [rax],al
  0000000140004FDF: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FE5: 00 00              add         byte ptr [rax],al
  0000000140004FE7: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FED: 00 00              add         byte ptr [rax],al
  0000000140004FEF: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FF5: 00 00              add         byte ptr [rax],al
  0000000140004FF7: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140004FFD: 00 00              add         byte ptr [rax],al
  0000000140004FFF: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140005005: 00 00              add         byte ptr [rax],al
  0000000140005007: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  000000014000500D: 00 00              add         byte ptr [rax],al
  000000014000500F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140005015: 00 00              add         byte ptr [rax],al
  0000000140005017: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  000000014000501D: 00 00              add         byte ptr [rax],al
  000000014000501F: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  0000000140005025: 00 00              add         byte ptr [rax],al
  0000000140005027: 00 A0 02 00 00 00  add         byte ptr [rax+0000000000000002h],ah
  000000014000502D: 00 00              add         byte ptr [rax],al
  000000014000502F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005035: 00 00              add         byte ptr [rax],al
  0000000140005037: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000503D: 00 00              add         byte ptr [rax],al
  000000014000503F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005045: 00 00              add         byte ptr [rax],al
  0000000140005047: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000504D: 00 00              add         byte ptr [rax],al
  000000014000504F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005055: 00 00              add         byte ptr [rax],al
  0000000140005057: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000505D: 00 00              add         byte ptr [rax],al
  000000014000505F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005065: 00 00              add         byte ptr [rax],al
  0000000140005067: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000506D: 00 00              add         byte ptr [rax],al
  000000014000506F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005075: 00 00              add         byte ptr [rax],al
  0000000140005077: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000507D: 00 00              add         byte ptr [rax],al
  000000014000507F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005085: 00 00              add         byte ptr [rax],al
  0000000140005087: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000508D: 00 00              add         byte ptr [rax],al
  000000014000508F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005095: 00 00              add         byte ptr [rax],al
  0000000140005097: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000509D: 00 00              add         byte ptr [rax],al
  000000014000509F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050A5: 00 00              add         byte ptr [rax],al
  00000001400050A7: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050AD: 00 00              add         byte ptr [rax],al
  00000001400050AF: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050B5: 00 00              add         byte ptr [rax],al
  00000001400050B7: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050BD: 00 00              add         byte ptr [rax],al
  00000001400050BF: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050C5: 00 00              add         byte ptr [rax],al
  00000001400050C7: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050CD: 00 00              add         byte ptr [rax],al
  00000001400050CF: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050D5: 00 00              add         byte ptr [rax],al
  00000001400050D7: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050DD: 00 00              add         byte ptr [rax],al
  00000001400050DF: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050E5: 00 00              add         byte ptr [rax],al
  00000001400050E7: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050ED: 00 00              add         byte ptr [rax],al
  00000001400050EF: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050F5: 00 00              add         byte ptr [rax],al
  00000001400050F7: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  00000001400050FD: 00 00              add         byte ptr [rax],al
  00000001400050FF: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005105: 00 00              add         byte ptr [rax],al
  0000000140005107: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000510D: 00 00              add         byte ptr [rax],al
  000000014000510F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005115: 00 00              add         byte ptr [rax],al
  0000000140005117: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000511D: 00 00              add         byte ptr [rax],al
  000000014000511F: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  0000000140005125: 00 00              add         byte ptr [rax],al
  0000000140005127: 00 AE 02 00 00 00  add         byte ptr [rsi+0000000000000002h],ch
  000000014000512D: 00 00              add         byte ptr [rax],al
  000000014000512F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005135: 00 00              add         byte ptr [rax],al
  0000000140005137: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000513D: 00 00              add         byte ptr [rax],al
  000000014000513F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005145: 00 00              add         byte ptr [rax],al
  0000000140005147: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000514D: 00 00              add         byte ptr [rax],al
  000000014000514F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005155: 00 00              add         byte ptr [rax],al
  0000000140005157: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000515D: 00 00              add         byte ptr [rax],al
  000000014000515F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005165: 00 00              add         byte ptr [rax],al
  0000000140005167: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000516D: 00 00              add         byte ptr [rax],al
  000000014000516F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005175: 00 00              add         byte ptr [rax],al
  0000000140005177: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000517D: 00 00              add         byte ptr [rax],al
  000000014000517F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005185: 00 00              add         byte ptr [rax],al
  0000000140005187: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000518D: 00 00              add         byte ptr [rax],al
  000000014000518F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005195: 00 00              add         byte ptr [rax],al
  0000000140005197: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000519D: 00 00              add         byte ptr [rax],al
  000000014000519F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051A5: 00 00              add         byte ptr [rax],al
  00000001400051A7: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051AD: 00 00              add         byte ptr [rax],al
  00000001400051AF: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051B5: 00 00              add         byte ptr [rax],al
  00000001400051B7: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051BD: 00 00              add         byte ptr [rax],al
  00000001400051BF: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051C5: 00 00              add         byte ptr [rax],al
  00000001400051C7: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051CD: 00 00              add         byte ptr [rax],al
  00000001400051CF: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051D5: 00 00              add         byte ptr [rax],al
  00000001400051D7: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051DD: 00 00              add         byte ptr [rax],al
  00000001400051DF: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051E5: 00 00              add         byte ptr [rax],al
  00000001400051E7: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051ED: 00 00              add         byte ptr [rax],al
  00000001400051EF: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051F5: 00 00              add         byte ptr [rax],al
  00000001400051F7: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  00000001400051FD: 00 00              add         byte ptr [rax],al
  00000001400051FF: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005205: 00 00              add         byte ptr [rax],al
  0000000140005207: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000520D: 00 00              add         byte ptr [rax],al
  000000014000520F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005215: 00 00              add         byte ptr [rax],al
  0000000140005217: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000521D: 00 00              add         byte ptr [rax],al
  000000014000521F: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  0000000140005225: 00 00              add         byte ptr [rax],al
  0000000140005227: 00 B7 02 00 00 00  add         byte ptr [rdi+0000000000000002h],dh
  000000014000522D: 00 00              add         byte ptr [rax],al
  000000014000522F: 00 C0              add         al,al
  0000000140005231: 02 00              add         al,byte ptr [rax]
  0000000140005233: 00 00              add         byte ptr [rax],al
  0000000140005235: 00 00              add         byte ptr [rax],al
  0000000140005237: 00 C0              add         al,al
  0000000140005239: 02 00              add         al,byte ptr [rax]
  000000014000523B: 00 00              add         byte ptr [rax],al
  000000014000523D: 00 00              add         byte ptr [rax],al
  000000014000523F: 00 C0              add         al,al
  0000000140005241: 02 00              add         al,byte ptr [rax]
  0000000140005243: 00 00              add         byte ptr [rax],al
  0000000140005245: 00 00              add         byte ptr [rax],al
  0000000140005247: 00 C0              add         al,al
  0000000140005249: 02 00              add         al,byte ptr [rax]
  000000014000524B: 00 00              add         byte ptr [rax],al
  000000014000524D: 00 00              add         byte ptr [rax],al
  000000014000524F: 00 C0              add         al,al
  0000000140005251: 02 00              add         al,byte ptr [rax]
  0000000140005253: 00 00              add         byte ptr [rax],al
  0000000140005255: 00 00              add         byte ptr [rax],al
  0000000140005257: 00 C0              add         al,al
  0000000140005259: 02 00              add         al,byte ptr [rax]
  000000014000525B: 00 00              add         byte ptr [rax],al
  000000014000525D: 00 00              add         byte ptr [rax],al
  000000014000525F: 00 C0              add         al,al
  0000000140005261: 02 00              add         al,byte ptr [rax]
  0000000140005263: 00 00              add         byte ptr [rax],al
  0000000140005265: 00 00              add         byte ptr [rax],al
  0000000140005267: 00 C0              add         al,al
  0000000140005269: 02 00              add         al,byte ptr [rax]
  000000014000526B: 00 00              add         byte ptr [rax],al
  000000014000526D: 00 00              add         byte ptr [rax],al
  000000014000526F: 00 C0              add         al,al
  0000000140005271: 02 00              add         al,byte ptr [rax]
  0000000140005273: 00 00              add         byte ptr [rax],al
  0000000140005275: 00 00              add         byte ptr [rax],al
  0000000140005277: 00 C0              add         al,al
  0000000140005279: 02 00              add         al,byte ptr [rax]
  000000014000527B: 00 00              add         byte ptr [rax],al
  000000014000527D: 00 00              add         byte ptr [rax],al
  000000014000527F: 00 C0              add         al,al
  0000000140005281: 02 00              add         al,byte ptr [rax]
  0000000140005283: 00 00              add         byte ptr [rax],al
  0000000140005285: 00 00              add         byte ptr [rax],al
  0000000140005287: 00 C0              add         al,al
  0000000140005289: 02 00              add         al,byte ptr [rax]
  000000014000528B: 00 00              add         byte ptr [rax],al
  000000014000528D: 00 00              add         byte ptr [rax],al
  000000014000528F: 00 C0              add         al,al
  0000000140005291: 02 00              add         al,byte ptr [rax]
  0000000140005293: 00 00              add         byte ptr [rax],al
  0000000140005295: 00 00              add         byte ptr [rax],al
  0000000140005297: 00 C0              add         al,al
  0000000140005299: 02 00              add         al,byte ptr [rax]
  000000014000529B: 00 00              add         byte ptr [rax],al
  000000014000529D: 00 00              add         byte ptr [rax],al
  000000014000529F: 00 C0              add         al,al
  00000001400052A1: 02 00              add         al,byte ptr [rax]
  00000001400052A3: 00 00              add         byte ptr [rax],al
  00000001400052A5: 00 00              add         byte ptr [rax],al
  00000001400052A7: 00 C0              add         al,al
  00000001400052A9: 02 00              add         al,byte ptr [rax]
  00000001400052AB: 00 00              add         byte ptr [rax],al
  00000001400052AD: 00 00              add         byte ptr [rax],al
  00000001400052AF: 00 C0              add         al,al
  00000001400052B1: 02 00              add         al,byte ptr [rax]
  00000001400052B3: 00 00              add         byte ptr [rax],al
  00000001400052B5: 00 00              add         byte ptr [rax],al
  00000001400052B7: 00 C0              add         al,al
  00000001400052B9: 02 00              add         al,byte ptr [rax]
  00000001400052BB: 00 00              add         byte ptr [rax],al
  00000001400052BD: 00 00              add         byte ptr [rax],al
  00000001400052BF: 00 C0              add         al,al
  00000001400052C1: 02 00              add         al,byte ptr [rax]
  00000001400052C3: 00 00              add         byte ptr [rax],al
  00000001400052C5: 00 00              add         byte ptr [rax],al
  00000001400052C7: 00 C0              add         al,al
  00000001400052C9: 02 00              add         al,byte ptr [rax]
  00000001400052CB: 00 00              add         byte ptr [rax],al
  00000001400052CD: 00 00              add         byte ptr [rax],al
  00000001400052CF: 00 C0              add         al,al
  00000001400052D1: 02 00              add         al,byte ptr [rax]
  00000001400052D3: 00 00              add         byte ptr [rax],al
  00000001400052D5: 00 00              add         byte ptr [rax],al
  00000001400052D7: 00 C0              add         al,al
  00000001400052D9: 02 00              add         al,byte ptr [rax]
  00000001400052DB: 00 00              add         byte ptr [rax],al
  00000001400052DD: 00 00              add         byte ptr [rax],al
  00000001400052DF: 00 C0              add         al,al
  00000001400052E1: 02 00              add         al,byte ptr [rax]
  00000001400052E3: 00 00              add         byte ptr [rax],al
  00000001400052E5: 00 00              add         byte ptr [rax],al
  00000001400052E7: 00 C0              add         al,al
  00000001400052E9: 02 00              add         al,byte ptr [rax]
  00000001400052EB: 00 00              add         byte ptr [rax],al
  00000001400052ED: 00 00              add         byte ptr [rax],al
  00000001400052EF: 00 C0              add         al,al
  00000001400052F1: 02 00              add         al,byte ptr [rax]
  00000001400052F3: 00 00              add         byte ptr [rax],al
  00000001400052F5: 00 00              add         byte ptr [rax],al
  00000001400052F7: 00 C0              add         al,al
  00000001400052F9: 02 00              add         al,byte ptr [rax]
  00000001400052FB: 00 00              add         byte ptr [rax],al
  00000001400052FD: 00 00              add         byte ptr [rax],al
  00000001400052FF: 00 C0              add         al,al
  0000000140005301: 02 00              add         al,byte ptr [rax]
  0000000140005303: 00 00              add         byte ptr [rax],al
  0000000140005305: 00 00              add         byte ptr [rax],al
  0000000140005307: 00 C0              add         al,al
  0000000140005309: 02 00              add         al,byte ptr [rax]
  000000014000530B: 00 00              add         byte ptr [rax],al
  000000014000530D: 00 00              add         byte ptr [rax],al
  000000014000530F: 00 C0              add         al,al
  0000000140005311: 02 00              add         al,byte ptr [rax]
  0000000140005313: 00 00              add         byte ptr [rax],al
  0000000140005315: 00 00              add         byte ptr [rax],al
  0000000140005317: 00 C0              add         al,al
  0000000140005319: 02 00              add         al,byte ptr [rax]
  000000014000531B: 00 00              add         byte ptr [rax],al
  000000014000531D: 00 00              add         byte ptr [rax],al
  000000014000531F: 00 C0              add         al,al
  0000000140005321: 02 00              add         al,byte ptr [rax]
  0000000140005323: 00 00              add         byte ptr [rax],al
  0000000140005325: 00 00              add         byte ptr [rax],al
  0000000140005327: 00 C0              add         al,al
  0000000140005329: 02 00              add         al,byte ptr [rax]
  000000014000532B: 00 00              add         byte ptr [rax],al
  000000014000532D: 00 00              add         byte ptr [rax],al
  000000014000532F: 00 60 0A           add         byte ptr [rax+0Ah],ah
  0000000140005332: 00 00              add         byte ptr [rax],al
  0000000140005334: 00 00              add         byte ptr [rax],al
  0000000140005336: 00 00              add         byte ptr [rax],al
  0000000140005338: 70 0A              jo          0000000140005344
  000000014000533A: 00 00              add         byte ptr [rax],al
  000000014000533C: 00 00              add         byte ptr [rax],al
  000000014000533E: 00 00              add         byte ptr [rax],al
  0000000140005340: 50                 push        rax
  0000000140005341: 0A 00              or          al,byte ptr [rax]
  0000000140005343: 00 00              add         byte ptr [rax],al
  0000000140005345: 00 00              add         byte ptr [rax],al
  0000000140005347: 00 40 0A           add         byte ptr [rax+0Ah],al
  000000014000534A: 00 00              add         byte ptr [rax],al
  000000014000534C: 00 00              add         byte ptr [rax],al
  000000014000534E: 00 00              add         byte ptr [rax],al
  0000000140005350: 30 0A              xor         byte ptr [rdx],cl
  0000000140005352: 00 00              add         byte ptr [rax],al
  0000000140005354: 00 00              add         byte ptr [rax],al
  0000000140005356: 00 00              add         byte ptr [rax],al
  0000000140005358: 20 0A              and         byte ptr [rdx],cl
  000000014000535A: 00 00              add         byte ptr [rax],al
  000000014000535C: 00 00              add         byte ptr [rax],al
  000000014000535E: 00 00              add         byte ptr [rax],al
  0000000140005360: 20 0A              and         byte ptr [rdx],cl
  0000000140005362: 00 00              add         byte ptr [rax],al
  0000000140005364: 00 00              add         byte ptr [rax],al
  0000000140005366: 00 00              add         byte ptr [rax],al
  0000000140005368: 20 0A              and         byte ptr [rdx],cl
  000000014000536A: 00 00              add         byte ptr [rax],al
  000000014000536C: 00 00              add         byte ptr [rax],al
  000000014000536E: 00 00              add         byte ptr [rax],al
  0000000140005370: 10 0A              adc         byte ptr [rdx],cl
  0000000140005372: 00 00              add         byte ptr [rax],al
  0000000140005374: 00 00              add         byte ptr [rax],al
  0000000140005376: 00 00              add         byte ptr [rax],al
  0000000140005378: 00 0A              add         byte ptr [rdx],cl
  000000014000537A: 00 00              add         byte ptr [rax],al
  000000014000537C: 00 00              add         byte ptr [rax],al
  000000014000537E: 00 00              add         byte ptr [rax],al
  0000000140005380: 00 0A              add         byte ptr [rdx],cl
  0000000140005382: 00 00              add         byte ptr [rax],al
  0000000140005384: 00 00              add         byte ptr [rax],al
  0000000140005386: 00 00              add         byte ptr [rax],al
  0000000140005388: 00 0A              add         byte ptr [rdx],cl
  000000014000538A: 00 00              add         byte ptr [rax],al
  000000014000538C: 00 00              add         byte ptr [rax],al
  000000014000538E: 00 00              add         byte ptr [rax],al
  0000000140005390: 00 0A              add         byte ptr [rdx],cl
  0000000140005392: 00 00              add         byte ptr [rax],al
  0000000140005394: 00 00              add         byte ptr [rax],al
  0000000140005396: 00 00              add         byte ptr [rax],al
  0000000140005398: 00 0A              add         byte ptr [rdx],cl
  000000014000539A: 00 00              add         byte ptr [rax],al
  000000014000539C: 00 00              add         byte ptr [rax],al
  000000014000539E: 00 00              add         byte ptr [rax],al
  00000001400053A0: 00 0A              add         byte ptr [rdx],cl
  00000001400053A2: 00 00              add         byte ptr [rax],al
  00000001400053A4: 00 00              add         byte ptr [rax],al
  00000001400053A6: 00 00              add         byte ptr [rax],al
  00000001400053A8: 00 0A              add         byte ptr [rdx],cl
  00000001400053AA: 00 00              add         byte ptr [rax],al
  00000001400053AC: 00 00              add         byte ptr [rax],al
  00000001400053AE: 00 00              add         byte ptr [rax],al
  00000001400053B0: 30 09              xor         byte ptr [rcx],cl
  00000001400053B2: 00 00              add         byte ptr [rax],al
  00000001400053B4: 00 00              add         byte ptr [rax],al
  00000001400053B6: 00 00              add         byte ptr [rax],al
  00000001400053B8: 20 09              and         byte ptr [rcx],cl
  00000001400053BA: 00 00              add         byte ptr [rax],al
  00000001400053BC: 00 00              add         byte ptr [rax],al
  00000001400053BE: 00 00              add         byte ptr [rax],al
  00000001400053C0: 20 09              and         byte ptr [rcx],cl
  00000001400053C2: 00 00              add         byte ptr [rax],al
  00000001400053C4: 00 00              add         byte ptr [rax],al
  00000001400053C6: 00 00              add         byte ptr [rax],al
  00000001400053C8: 20 09              and         byte ptr [rcx],cl
  00000001400053CA: 00 00              add         byte ptr [rax],al
  00000001400053CC: 00 00              add         byte ptr [rax],al
  00000001400053CE: 00 00              add         byte ptr [rax],al
  00000001400053D0: 20 09              and         byte ptr [rcx],cl
  00000001400053D2: 00 00              add         byte ptr [rax],al
  00000001400053D4: 00 00              add         byte ptr [rax],al
  00000001400053D6: 00 00              add         byte ptr [rax],al
  00000001400053D8: 20 09              and         byte ptr [rcx],cl
  00000001400053DA: 00 00              add         byte ptr [rax],al
  00000001400053DC: 00 00              add         byte ptr [rax],al
  00000001400053DE: 00 00              add         byte ptr [rax],al
  00000001400053E0: 20 09              and         byte ptr [rcx],cl
  00000001400053E2: 00 00              add         byte ptr [rax],al
  00000001400053E4: 00 00              add         byte ptr [rax],al
  00000001400053E6: 00 00              add         byte ptr [rax],al
  00000001400053E8: 20 09              and         byte ptr [rcx],cl
  00000001400053EA: 00 00              add         byte ptr [rax],al
  00000001400053EC: 00 00              add         byte ptr [rax],al
  00000001400053EE: 00 00              add         byte ptr [rax],al
  00000001400053F0: 20 09              and         byte ptr [rcx],cl
  00000001400053F2: 00 00              add         byte ptr [rax],al
  00000001400053F4: 00 00              add         byte ptr [rax],al
  00000001400053F6: 00 00              add         byte ptr [rax],al
  00000001400053F8: 20 09              and         byte ptr [rcx],cl
  00000001400053FA: 00 00              add         byte ptr [rax],al
  00000001400053FC: 00 00              add         byte ptr [rax],al
  00000001400053FE: 00 00              add         byte ptr [rax],al
  0000000140005400: 20 09              and         byte ptr [rcx],cl
  0000000140005402: 00 00              add         byte ptr [rax],al
  0000000140005404: 00 00              add         byte ptr [rax],al
  0000000140005406: 00 00              add         byte ptr [rax],al
  0000000140005408: 20 09              and         byte ptr [rcx],cl
  000000014000540A: 00 00              add         byte ptr [rax],al
  000000014000540C: 00 00              add         byte ptr [rax],al
  000000014000540E: 00 00              add         byte ptr [rax],al
  0000000140005410: 20 09              and         byte ptr [rcx],cl
  0000000140005412: 00 00              add         byte ptr [rax],al
  0000000140005414: 00 00              add         byte ptr [rax],al
  0000000140005416: 00 00              add         byte ptr [rax],al
  0000000140005418: 20 09              and         byte ptr [rcx],cl
  000000014000541A: 00 00              add         byte ptr [rax],al
  000000014000541C: 00 00              add         byte ptr [rax],al
  000000014000541E: 00 00              add         byte ptr [rax],al
  0000000140005420: 20 09              and         byte ptr [rcx],cl
  0000000140005422: 00 00              add         byte ptr [rax],al
  0000000140005424: 00 00              add         byte ptr [rax],al
  0000000140005426: 00 00              add         byte ptr [rax],al
  0000000140005428: 20 09              and         byte ptr [rcx],cl
  000000014000542A: 00 00              add         byte ptr [rax],al
  000000014000542C: 00 00              add         byte ptr [rax],al
  000000014000542E: 00 00              add         byte ptr [rax],al
  0000000140005430: D0 09              ror         byte ptr [rcx],1
  0000000140005432: 00 00              add         byte ptr [rax],al
  0000000140005434: 00 00              add         byte ptr [rax],al
  0000000140005436: 00 00              add         byte ptr [rax],al
  0000000140005438: C0 09 00           ror         byte ptr [rcx],0
  000000014000543B: 00 00              add         byte ptr [rax],al
  000000014000543D: 00 00              add         byte ptr [rax],al
  000000014000543F: 00 C0              add         al,al
  0000000140005441: 09 00              or          dword ptr [rax],eax
  0000000140005443: 00 00              add         byte ptr [rax],al
  0000000140005445: 00 00              add         byte ptr [rax],al
  0000000140005447: 00 C0              add         al,al
  0000000140005449: 09 00              or          dword ptr [rax],eax
  000000014000544B: 00 00              add         byte ptr [rax],al
  000000014000544D: 00 00              add         byte ptr [rax],al
  000000014000544F: 00 C0              add         al,al
  0000000140005451: 09 00              or          dword ptr [rax],eax
  0000000140005453: 00 00              add         byte ptr [rax],al
  0000000140005455: 00 00              add         byte ptr [rax],al
  0000000140005457: 00 C0              add         al,al
  0000000140005459: 09 00              or          dword ptr [rax],eax
  000000014000545B: 00 00              add         byte ptr [rax],al
  000000014000545D: 00 00              add         byte ptr [rax],al
  000000014000545F: 00 C0              add         al,al
  0000000140005461: 09 00              or          dword ptr [rax],eax
  0000000140005463: 00 00              add         byte ptr [rax],al
  0000000140005465: 00 00              add         byte ptr [rax],al
  0000000140005467: 00 C0              add         al,al
  0000000140005469: 09 00              or          dword ptr [rax],eax
  000000014000546B: 00 00              add         byte ptr [rax],al
  000000014000546D: 00 00              add         byte ptr [rax],al
  000000014000546F: 00 C0              add         al,al
  0000000140005471: 09 00              or          dword ptr [rax],eax
  0000000140005473: 00 00              add         byte ptr [rax],al
  0000000140005475: 00 00              add         byte ptr [rax],al
  0000000140005477: 00 C0              add         al,al
  0000000140005479: 09 00              or          dword ptr [rax],eax
  000000014000547B: 00 00              add         byte ptr [rax],al
  000000014000547D: 00 00              add         byte ptr [rax],al
  000000014000547F: 00 C0              add         al,al
  0000000140005481: 09 00              or          dword ptr [rax],eax
  0000000140005483: 00 00              add         byte ptr [rax],al
  0000000140005485: 00 00              add         byte ptr [rax],al
  0000000140005487: 00 C0              add         al,al
  0000000140005489: 09 00              or          dword ptr [rax],eax
  000000014000548B: 00 00              add         byte ptr [rax],al
  000000014000548D: 00 00              add         byte ptr [rax],al
  000000014000548F: 00 C0              add         al,al
  0000000140005491: 09 00              or          dword ptr [rax],eax
  0000000140005493: 00 00              add         byte ptr [rax],al
  0000000140005495: 00 00              add         byte ptr [rax],al
  0000000140005497: 00 C0              add         al,al
  0000000140005499: 09 00              or          dword ptr [rax],eax
  000000014000549B: 00 00              add         byte ptr [rax],al
  000000014000549D: 00 00              add         byte ptr [rax],al
  000000014000549F: 00 C0              add         al,al
  00000001400054A1: 09 00              or          dword ptr [rax],eax
  00000001400054A3: 00 00              add         byte ptr [rax],al
  00000001400054A5: 00 00              add         byte ptr [rax],al
  00000001400054A7: 00 C0              add         al,al
  00000001400054A9: 09 00              or          dword ptr [rax],eax
  00000001400054AB: 00 00              add         byte ptr [rax],al
  00000001400054AD: 00 00              add         byte ptr [rax],al
  00000001400054AF: 00 C0              add         al,al
  00000001400054B1: 09 00              or          dword ptr [rax],eax
  00000001400054B3: 00 00              add         byte ptr [rax],al
  00000001400054B5: 00 00              add         byte ptr [rax],al
  00000001400054B7: 00 C0              add         al,al
  00000001400054B9: 09 00              or          dword ptr [rax],eax
  00000001400054BB: 00 00              add         byte ptr [rax],al
  00000001400054BD: 00 00              add         byte ptr [rax],al
  00000001400054BF: 00 C0              add         al,al
  00000001400054C1: 09 00              or          dword ptr [rax],eax
  00000001400054C3: 00 00              add         byte ptr [rax],al
  00000001400054C5: 00 00              add         byte ptr [rax],al
  00000001400054C7: 00 C0              add         al,al
  00000001400054C9: 09 00              or          dword ptr [rax],eax
  00000001400054CB: 00 00              add         byte ptr [rax],al
  00000001400054CD: 00 00              add         byte ptr [rax],al
  00000001400054CF: 00 C0              add         al,al
  00000001400054D1: 09 00              or          dword ptr [rax],eax
  00000001400054D3: 00 00              add         byte ptr [rax],al
  00000001400054D5: 00 00              add         byte ptr [rax],al
  00000001400054D7: 00 C0              add         al,al
  00000001400054D9: 09 00              or          dword ptr [rax],eax
  00000001400054DB: 00 00              add         byte ptr [rax],al
  00000001400054DD: 00 00              add         byte ptr [rax],al
  00000001400054DF: 00 C0              add         al,al
  00000001400054E1: 09 00              or          dword ptr [rax],eax
  00000001400054E3: 00 00              add         byte ptr [rax],al
  00000001400054E5: 00 00              add         byte ptr [rax],al
  00000001400054E7: 00 C0              add         al,al
  00000001400054E9: 09 00              or          dword ptr [rax],eax
  00000001400054EB: 00 00              add         byte ptr [rax],al
  00000001400054ED: 00 00              add         byte ptr [rax],al
  00000001400054EF: 00 C0              add         al,al
  00000001400054F1: 09 00              or          dword ptr [rax],eax
  00000001400054F3: 00 00              add         byte ptr [rax],al
  00000001400054F5: 00 00              add         byte ptr [rax],al
  00000001400054F7: 00 C0              add         al,al
  00000001400054F9: 09 00              or          dword ptr [rax],eax
  00000001400054FB: 00 00              add         byte ptr [rax],al
  00000001400054FD: 00 00              add         byte ptr [rax],al
  00000001400054FF: 00 C0              add         al,al
  0000000140005501: 09 00              or          dword ptr [rax],eax
  0000000140005503: 00 00              add         byte ptr [rax],al
  0000000140005505: 00 00              add         byte ptr [rax],al
  0000000140005507: 00 C0              add         al,al
  0000000140005509: 09 00              or          dword ptr [rax],eax
  000000014000550B: 00 00              add         byte ptr [rax],al
  000000014000550D: 00 00              add         byte ptr [rax],al
  000000014000550F: 00 C0              add         al,al
  0000000140005511: 09 00              or          dword ptr [rax],eax
  0000000140005513: 00 00              add         byte ptr [rax],al
  0000000140005515: 00 00              add         byte ptr [rax],al
  0000000140005517: 00 C0              add         al,al
  0000000140005519: 09 00              or          dword ptr [rax],eax
  000000014000551B: 00 00              add         byte ptr [rax],al
  000000014000551D: 00 00              add         byte ptr [rax],al
  000000014000551F: 00 C0              add         al,al
  0000000140005521: 09 00              or          dword ptr [rax],eax
  0000000140005523: 00 00              add         byte ptr [rax],al
  0000000140005525: 00 00              add         byte ptr [rax],al
  0000000140005527: 00 C0              add         al,al
  0000000140005529: 09 00              or          dword ptr [rax],eax
  000000014000552B: 00 00              add         byte ptr [rax],al
  000000014000552D: 00 00              add         byte ptr [rax],al
  000000014000552F: 00 A0 09 00 00 00  add         byte ptr [rax+0000000000000009h],ah
  0000000140005535: 00 00              add         byte ptr [rax],al
  0000000140005537: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000553D: 00 00              add         byte ptr [rax],al
  000000014000553F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005545: 00 00              add         byte ptr [rax],al
  0000000140005547: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000554D: 00 00              add         byte ptr [rax],al
  000000014000554F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005555: 00 00              add         byte ptr [rax],al
  0000000140005557: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000555D: 00 00              add         byte ptr [rax],al
  000000014000555F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005565: 00 00              add         byte ptr [rax],al
  0000000140005567: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000556D: 00 00              add         byte ptr [rax],al
  000000014000556F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005575: 00 00              add         byte ptr [rax],al
  0000000140005577: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000557D: 00 00              add         byte ptr [rax],al
  000000014000557F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005585: 00 00              add         byte ptr [rax],al
  0000000140005587: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000558D: 00 00              add         byte ptr [rax],al
  000000014000558F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005595: 00 00              add         byte ptr [rax],al
  0000000140005597: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000559D: 00 00              add         byte ptr [rax],al
  000000014000559F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055A5: 00 00              add         byte ptr [rax],al
  00000001400055A7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055AD: 00 00              add         byte ptr [rax],al
  00000001400055AF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055B5: 00 00              add         byte ptr [rax],al
  00000001400055B7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055BD: 00 00              add         byte ptr [rax],al
  00000001400055BF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055C5: 00 00              add         byte ptr [rax],al
  00000001400055C7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055CD: 00 00              add         byte ptr [rax],al
  00000001400055CF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055D5: 00 00              add         byte ptr [rax],al
  00000001400055D7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055DD: 00 00              add         byte ptr [rax],al
  00000001400055DF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055E5: 00 00              add         byte ptr [rax],al
  00000001400055E7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055ED: 00 00              add         byte ptr [rax],al
  00000001400055EF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055F5: 00 00              add         byte ptr [rax],al
  00000001400055F7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400055FD: 00 00              add         byte ptr [rax],al
  00000001400055FF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005605: 00 00              add         byte ptr [rax],al
  0000000140005607: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000560D: 00 00              add         byte ptr [rax],al
  000000014000560F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005615: 00 00              add         byte ptr [rax],al
  0000000140005617: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000561D: 00 00              add         byte ptr [rax],al
  000000014000561F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005625: 00 00              add         byte ptr [rax],al
  0000000140005627: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000562D: 00 00              add         byte ptr [rax],al
  000000014000562F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005635: 00 00              add         byte ptr [rax],al
  0000000140005637: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000563D: 00 00              add         byte ptr [rax],al
  000000014000563F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005645: 00 00              add         byte ptr [rax],al
  0000000140005647: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000564D: 00 00              add         byte ptr [rax],al
  000000014000564F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005655: 00 00              add         byte ptr [rax],al
  0000000140005657: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000565D: 00 00              add         byte ptr [rax],al
  000000014000565F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005665: 00 00              add         byte ptr [rax],al
  0000000140005667: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000566D: 00 00              add         byte ptr [rax],al
  000000014000566F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005675: 00 00              add         byte ptr [rax],al
  0000000140005677: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000567D: 00 00              add         byte ptr [rax],al
  000000014000567F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005685: 00 00              add         byte ptr [rax],al
  0000000140005687: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000568D: 00 00              add         byte ptr [rax],al
  000000014000568F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005695: 00 00              add         byte ptr [rax],al
  0000000140005697: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000569D: 00 00              add         byte ptr [rax],al
  000000014000569F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056A5: 00 00              add         byte ptr [rax],al
  00000001400056A7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056AD: 00 00              add         byte ptr [rax],al
  00000001400056AF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056B5: 00 00              add         byte ptr [rax],al
  00000001400056B7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056BD: 00 00              add         byte ptr [rax],al
  00000001400056BF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056C5: 00 00              add         byte ptr [rax],al
  00000001400056C7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056CD: 00 00              add         byte ptr [rax],al
  00000001400056CF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056D5: 00 00              add         byte ptr [rax],al
  00000001400056D7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056DD: 00 00              add         byte ptr [rax],al
  00000001400056DF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056E5: 00 00              add         byte ptr [rax],al
  00000001400056E7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056ED: 00 00              add         byte ptr [rax],al
  00000001400056EF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056F5: 00 00              add         byte ptr [rax],al
  00000001400056F7: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  00000001400056FD: 00 00              add         byte ptr [rax],al
  00000001400056FF: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005705: 00 00              add         byte ptr [rax],al
  0000000140005707: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000570D: 00 00              add         byte ptr [rax],al
  000000014000570F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005715: 00 00              add         byte ptr [rax],al
  0000000140005717: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000571D: 00 00              add         byte ptr [rax],al
  000000014000571F: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  0000000140005725: 00 00              add         byte ptr [rax],al
  0000000140005727: 00 80 09 00 00 00  add         byte ptr [rax+0000000000000009h],al
  000000014000572D: 00 00              add         byte ptr [rax],al
  000000014000572F: 00 60 09           add         byte ptr [rax+9],ah
  0000000140005732: 00 00              add         byte ptr [rax],al
  0000000140005734: 00 00              add         byte ptr [rax],al
  0000000140005736: 00 00              add         byte ptr [rax],al
  0000000140005738: 60
  0000000140005739: 09 00              or          dword ptr [rax],eax
  000000014000573B: 00 00              add         byte ptr [rax],al
  000000014000573D: 00 00              add         byte ptr [rax],al
  000000014000573F: 00 C5              add         ch,al
  0000000140005741: F8                 clc
  0000000140005742: 77 4C              ja          0000000140005790
  0000000140005744: 89 D8              mov         eax,ebx
  0000000140005746: 41 5F              pop         r15
  0000000140005748: 5F                 pop         rdi
  0000000140005749: C3                 ret
  000000014000574A: 66 0F 1F 44 00 00  nop         word ptr [rax+rax]
  0000000140005750: CC                 int         3
  0000000140005751: CC                 int         3
  0000000140005752: CC                 int         3
  0000000140005753: CC                 int         3
  0000000140005754: CC                 int         3
  0000000140005755: CC                 int         3
  0000000140005756: CC                 int         3
  0000000140005757: CC                 int         3
  0000000140005758: CC                 int         3
  0000000140005759: CC                 int         3
  000000014000575A: CC                 int         3
  000000014000575B: CC                 int         3
  000000014000575C: CC                 int         3
  000000014000575D: CC                 int         3
  000000014000575E: CC                 int         3
  000000014000575F: CC                 int         3
  0000000140005760: CC                 int         3
  0000000140005761: CC                 int         3
  0000000140005762: CC                 int         3
  0000000140005763: CC                 int         3
  0000000140005764: CC                 int         3
  0000000140005765: CC                 int         3
  0000000140005766: CC                 int         3
  0000000140005767: CC                 int         3
  0000000140005768: CC                 int         3
  0000000140005769: CC                 int         3
  000000014000576A: CC                 int         3
  000000014000576B: CC                 int         3
  000000014000576C: CC                 int         3
  000000014000576D: CC                 int         3
  000000014000576E: CC                 int         3
  000000014000576F: CC                 int         3
  0000000140005770: CC                 int         3
  0000000140005771: CC                 int         3
  0000000140005772: CC                 int         3
  0000000140005773: CC                 int         3
  0000000140005774: CC                 int         3
  0000000140005775: CC                 int         3
  0000000140005776: CC                 int         3
  0000000140005777: CC                 int         3
  0000000140005778: CC                 int         3
  0000000140005779: CC                 int         3
  000000014000577A: CC                 int         3
  000000014000577B: CC                 int         3
  000000014000577C: CC                 int         3
  000000014000577D: CC                 int         3
  000000014000577E: CC                 int         3
  000000014000577F: CC                 int         3
  0000000140005780: 4D 89 C2           mov         r10,r8
  0000000140005783: 49 89 C8           mov         r8,rcx
  0000000140005786: 48 B8 01 01 01 01  mov         rax,101010101010101h
                    01 01 01 01
  0000000140005790: 4C 0F B6 CA        movzx       r9,dl
  0000000140005794: 4C 0F AF C8        imul        r9,rax
  0000000140005798: 48 8D 15 A1 14 00  lea         rdx,[0000000140006C40h]
                    00
  000000014000579F: 62 D2 7D 48 7C C1  vpbroadcastd zmm0,r9d
  00000001400057A5: 49 81 FA 80 00 00  cmp         r10,80h
                    00
  00000001400057AC: 7D 0C              jge         00000001400057BA
  00000001400057AE: 4C 89 C0           mov         rax,r8
  00000001400057B1: 49 03 C2           add         rax,r10
  00000001400057B4: 4A 2B 14 D2        sub         rdx,qword ptr [rdx+r10*8]
  00000001400057B8: FF E2              jmp         rdx
  00000001400057BA: 48 8D 15 7F 02 00  lea         rdx,[0000000140005A40h]
                    00
  00000001400057C1: 4D 89 C3           mov         r11,r8
  00000001400057C4: 49 F7 DB           neg         r11
  00000001400057C7: 49 83 C3 40        add         r11,40h
  00000001400057CB: 49 83 E3 3F        and         r11,3Fh
  00000001400057CF: 74 12              je          00000001400057E3
  00000001400057D1: 4D 2B D3           sub         r10,r11
  00000001400057D4: 4C 89 C0           mov         rax,r8
  00000001400057D7: 49 03 C3           add         rax,r11
  00000001400057DA: 4A 2B 14 DA        sub         rdx,qword ptr [rdx+r11*8]
  00000001400057DE: FF E2              jmp         rdx
  00000001400057E0: 4D 03 C3           add         r8,r11
  00000001400057E3: 49 81 FA 00 02 00  cmp         r10,200h
                    00
  00000001400057EA: 0F 8C 27 01 00 00  jl          0000000140005917
  00000001400057F0: 4C 3B 15 69 80 00  cmp         r10,qword ptr [000000014000D860h]
                    00
  00000001400057F7: 73 53              jae         000000014000584C
  00000001400057F9: 62 D1 7C 48 29 00  vmovaps     zmmword ptr [r8],zmm0
  00000001400057FF: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8+40h],zmm0
                    01
  0000000140005806: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8+80h],zmm0
                    02
  000000014000580D: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8+0C0h],zmm0
                    03
  0000000140005814: 4D 8D 80 00 02 00  lea         r8,[r8+0000000000000200h]
                    00
  000000014000581B: 49 81 EA 00 02 00  sub         r10,200h
                    00
  0000000140005822: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-100h],zmm0
                    FC
  0000000140005829: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-0C0h],zmm0
                    FD
  0000000140005830: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-80h],zmm0
                    FE
  0000000140005837: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-40h],zmm0
                    FF
  000000014000583E: 49 81 FA 00 02 00  cmp         r10,200h
                    00
  0000000140005845: 7D B2              jge         00000001400057F9
  0000000140005847: E9 CB 00 00 00     jmp         0000000140005917
  000000014000584C: 62 D1 7D 48 E7 00  vmovntdq    zmmword ptr [r8],zmm0
  0000000140005852: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8+40h],zmm0
                    01
  0000000140005859: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8+80h],zmm0
                    02
  0000000140005860: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8+0C0h],zmm0
                    03
  0000000140005867: 4D 8D 80 00 02 00  lea         r8,[r8+0000000000000200h]
                    00
  000000014000586E: 49 81 EA 00 02 00  sub         r10,200h
                    00
  0000000140005875: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-100h],zmm0
                    FC
  000000014000587C: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-0C0h],zmm0
                    FD
  0000000140005883: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-80h],zmm0
                    FE
  000000014000588A: 62 D1 7D 48 E7 40  vmovntdq    zmmword ptr [r8-40h],zmm0
                    FF
  0000000140005891: 49 81 FA 00 02 00  cmp         r10,200h
                    00
  0000000140005898: 7D B2              jge         000000014000584C
  000000014000589A: 0F AE F8           sfence
  000000014000589D: EB 78              jmp         0000000140005917
  000000014000589F: 45 88 08           mov         byte ptr [r8],r9b
  00000001400058A2: E9 39 FF FF FF     jmp         00000001400057E0
  00000001400058A7: 66 45 89 08        mov         word ptr [r8],r9w
  00000001400058AB: E9 30 FF FF FF     jmp         00000001400057E0
  00000001400058B0: 66 45 89 08        mov         word ptr [r8],r9w
  00000001400058B4: 45 88 48 02        mov         byte ptr [r8+2],r9b
  00000001400058B8: E9 23 FF FF FF     jmp         00000001400057E0
  00000001400058BD: 45 89 08           mov         dword ptr [r8],r9d
  00000001400058C0: E9 1B FF FF FF     jmp         00000001400057E0
  00000001400058C5: 45 89 08           mov         dword ptr [r8],r9d
  00000001400058C8: 44 89 48 FC        mov         dword ptr [rax-4],r9d
  00000001400058CC: E9 0F FF FF FF     jmp         00000001400057E0
  00000001400058D1: 4D 89 08           mov         qword ptr [r8],r9
  00000001400058D4: E9 07 FF FF FF     jmp         00000001400057E0
  00000001400058D9: 4D 89 08           mov         qword ptr [r8],r9
  00000001400058DC: 4C 89 48 F8        mov         qword ptr [rax-8],r9
  00000001400058E0: E9 FB FE FF FF     jmp         00000001400057E0
  00000001400058E5: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  00000001400058EA: E9 F1 FE FF FF     jmp         00000001400057E0
  00000001400058EF: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  00000001400058F4: C5 F8 11 40 F0     vmovups     xmmword ptr [rax-10h],xmm0
  00000001400058F9: E9 E2 FE FF FF     jmp         00000001400057E0
  00000001400058FE: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  0000000140005903: E9 D8 FE FF FF     jmp         00000001400057E0
  0000000140005908: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  000000014000590D: C5 FC 11 40 E0     vmovups     ymmword ptr [rax-20h],ymm0
  0000000140005912: E9 C9 FE FF FF     jmp         00000001400057E0
  0000000140005917: 4C 89 C0           mov         rax,r8
  000000014000591A: 49 03 C2           add         rax,r10
  000000014000591D: 4D 03 C2           add         r8,r10
  0000000140005920: 49 83 E0 C0        and         r8,0FFFFFFFFFFFFFFC0h
  0000000140005924: 48 8D 15 15 03 00  lea         rdx,[0000000140005C40h]
                    00
  000000014000592B: 4A 2B 14 D2        sub         rdx,qword ptr [rdx+r10*8]
  000000014000592F: FF E2              jmp         rdx
  0000000140005931: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-1C0h],zmm0
                    F9
  0000000140005938: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-180h],zmm0
                    FA
  000000014000593F: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-140h],zmm0
                    FB
  0000000140005946: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-100h],zmm0
                    FC
  000000014000594D: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-0C0h],zmm0
                    FD
  0000000140005954: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-80h],zmm0
                    FE
  000000014000595B: 62 D1 7C 48 29 40  vmovaps     zmmword ptr [r8-40h],zmm0
                    FF
  0000000140005962: 49 89 C2           mov         r10,rax
  0000000140005965: 49 83 E2 3F        and         r10,3Fh
  0000000140005969: 48 8D 15 D0 02 00  lea         rdx,[0000000140005C40h]
                    00
  0000000140005970: 4A 2B 14 D2        sub         rdx,qword ptr [rdx+r10*8]
  0000000140005974: FF E2              jmp         rdx
  0000000140005976: 45 88 08           mov         byte ptr [r8],r9b
  0000000140005979: E9 C2 16 00 00     jmp         0000000140007040
  000000014000597E: E9 BD 16 00 00     jmp         0000000140007040
  0000000140005983: 66 45 89 08        mov         word ptr [r8],r9w
  0000000140005987: E9 B4 16 00 00     jmp         0000000140007040
  000000014000598C: 66 45 89 08        mov         word ptr [r8],r9w
  0000000140005990: 45 88 48 02        mov         byte ptr [r8+2],r9b
  0000000140005994: E9 A7 16 00 00     jmp         0000000140007040
  0000000140005999: 45 89 08           mov         dword ptr [r8],r9d
  000000014000599C: E9 9F 16 00 00     jmp         0000000140007040
  00000001400059A1: 45 89 08           mov         dword ptr [r8],r9d
  00000001400059A4: 44 89 48 FC        mov         dword ptr [rax-4],r9d
  00000001400059A8: E9 93 16 00 00     jmp         0000000140007040
  00000001400059AD: 4D 89 08           mov         qword ptr [r8],r9
  00000001400059B0: E9 8B 16 00 00     jmp         0000000140007040
  00000001400059B5: 4D 89 08           mov         qword ptr [r8],r9
  00000001400059B8: 4C 89 48 F8        mov         qword ptr [rax-8],r9
  00000001400059BC: E9 7F 16 00 00     jmp         0000000140007040
  00000001400059C1: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  00000001400059C6: E9 75 16 00 00     jmp         0000000140007040
  00000001400059CB: C4 C1 78 11 00     vmovups     xmmword ptr [r8],xmm0
  00000001400059D0: C5 F8 11 40 F0     vmovups     xmmword ptr [rax-10h],xmm0
  00000001400059D5: E9 66 16 00 00     jmp         0000000140007040
  00000001400059DA: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  00000001400059DF: E9 5C 16 00 00     jmp         0000000140007040
  00000001400059E4: C4 C1 7C 11 00     vmovups     ymmword ptr [r8],ymm0
  00000001400059E9: C5 FC 11 40 E0     vmovups     ymmword ptr [rax-20h],ymm0
  00000001400059EE: E9 4D 16 00 00     jmp         0000000140007040
  00000001400059F3: 62 D1 7C 48 11 00  vmovups     zmmword ptr [r8],zmm0
  00000001400059F9: E9 42 16 00 00     jmp         0000000140007040
  00000001400059FE: 62 D1 7C 48 11 00  vmovups     zmmword ptr [r8],zmm0
  0000000140005A04: 62 F1 7C 48 11 40  vmovups     zmmword ptr [rax-40h],zmm0
                    FF
  0000000140005A0B: E9 30 16 00 00     jmp         0000000140007040
  0000000140005A10: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140005A18: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140005A1F: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140005A27: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140005A2E: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140005A36: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140005A3D: 0F 1F 00           nop         dword ptr [rax]
  0000000140005A40: 9E                 sahf
  0000000140005A41: 01 00              add         dword ptr [rax],eax
  0000000140005A43: 00 00              add         byte ptr [rax],al
  0000000140005A45: 00 00              add         byte ptr [rax],al
  0000000140005A47: 00 A1 01 00 00 00  add         byte ptr [rcx+0000000000000001h],ah
  0000000140005A4D: 00 00              add         byte ptr [rax],al
  0000000140005A4F: 00 99 01 00 00 00  add         byte ptr [rcx+0000000000000001h],bl
  0000000140005A55: 00 00              add         byte ptr [rax],al
  0000000140005A57: 00 90 01 00 00 00  add         byte ptr [rax+0000000000000001h],dl
  0000000140005A5D: 00 00              add         byte ptr [rax],al
  0000000140005A5F: 00 83 01 00 00 00  add         byte ptr [rbx+0000000000000001h],al
  0000000140005A65: 00 00              add         byte ptr [rax],al
  0000000140005A67: 00 7B 01           add         byte ptr [rbx+1],bh
  0000000140005A6A: 00 00              add         byte ptr [rax],al
  0000000140005A6C: 00 00              add         byte ptr [rax],al
  0000000140005A6E: 00 00              add         byte ptr [rax],al
  0000000140005A70: 7B 01              jnp         0000000140005A73
  0000000140005A72: 00 00              add         byte ptr [rax],al
  0000000140005A74: 00 00              add         byte ptr [rax],al
  0000000140005A76: 00 00              add         byte ptr [rax],al
  0000000140005A78: 7B 01              jnp         0000000140005A7B
  0000000140005A7A: 00 00              add         byte ptr [rax],al
  0000000140005A7C: 00 00              add         byte ptr [rax],al
  0000000140005A7E: 00 00              add         byte ptr [rax],al
  0000000140005A80: 6F                 outs        dx,dword ptr [rsi]
  0000000140005A81: 01 00              add         dword ptr [rax],eax
  0000000140005A83: 00 00              add         byte ptr [rax],al
  0000000140005A85: 00 00              add         byte ptr [rax],al
  0000000140005A87: 00 67 01           add         byte ptr [rdi+1],ah
  0000000140005A8A: 00 00              add         byte ptr [rax],al
  0000000140005A8C: 00 00              add         byte ptr [rax],al
  0000000140005A8E: 00 00              add         byte ptr [rax],al
  0000000140005A90: 67 01 00           add         dword ptr [eax],eax
  0000000140005A93: 00 00              add         byte ptr [rax],al
  0000000140005A95: 00 00              add         byte ptr [rax],al
  0000000140005A97: 00 67 01           add         byte ptr [rdi+1],ah
  0000000140005A9A: 00 00              add         byte ptr [rax],al
  0000000140005A9C: 00 00              add         byte ptr [rax],al
  0000000140005A9E: 00 00              add         byte ptr [rax],al
  0000000140005AA0: 67 01 00           add         dword ptr [eax],eax
  0000000140005AA3: 00 00              add         byte ptr [rax],al
  0000000140005AA5: 00 00              add         byte ptr [rax],al
  0000000140005AA7: 00 67 01           add         byte ptr [rdi+1],ah
  0000000140005AAA: 00 00              add         byte ptr [rax],al
  0000000140005AAC: 00 00              add         byte ptr [rax],al
  0000000140005AAE: 00 00              add         byte ptr [rax],al
  0000000140005AB0: 67 01 00           add         dword ptr [eax],eax
  0000000140005AB3: 00 00              add         byte ptr [rax],al
  0000000140005AB5: 00 00              add         byte ptr [rax],al
  0000000140005AB7: 00 67 01           add         byte ptr [rdi+1],ah
  0000000140005ABA: 00 00              add         byte ptr [rax],al
  0000000140005ABC: 00 00              add         byte ptr [rax],al
  0000000140005ABE: 00 00              add         byte ptr [rax],al
  0000000140005AC0: 5B                 pop         rbx
  0000000140005AC1: 01 00              add         dword ptr [rax],eax
  0000000140005AC3: 00 00              add         byte ptr [rax],al
  0000000140005AC5: 00 00              add         byte ptr [rax],al
  0000000140005AC7: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005ACA: 00 00              add         byte ptr [rax],al
  0000000140005ACC: 00 00              add         byte ptr [rax],al
  0000000140005ACE: 00 00              add         byte ptr [rax],al
  0000000140005AD0: 51                 push        rcx
  0000000140005AD1: 01 00              add         dword ptr [rax],eax
  0000000140005AD3: 00 00              add         byte ptr [rax],al
  0000000140005AD5: 00 00              add         byte ptr [rax],al
  0000000140005AD7: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005ADA: 00 00              add         byte ptr [rax],al
  0000000140005ADC: 00 00              add         byte ptr [rax],al
  0000000140005ADE: 00 00              add         byte ptr [rax],al
  0000000140005AE0: 51                 push        rcx
  0000000140005AE1: 01 00              add         dword ptr [rax],eax
  0000000140005AE3: 00 00              add         byte ptr [rax],al
  0000000140005AE5: 00 00              add         byte ptr [rax],al
  0000000140005AE7: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005AEA: 00 00              add         byte ptr [rax],al
  0000000140005AEC: 00 00              add         byte ptr [rax],al
  0000000140005AEE: 00 00              add         byte ptr [rax],al
  0000000140005AF0: 51                 push        rcx
  0000000140005AF1: 01 00              add         dword ptr [rax],eax
  0000000140005AF3: 00 00              add         byte ptr [rax],al
  0000000140005AF5: 00 00              add         byte ptr [rax],al
  0000000140005AF7: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005AFA: 00 00              add         byte ptr [rax],al
  0000000140005AFC: 00 00              add         byte ptr [rax],al
  0000000140005AFE: 00 00              add         byte ptr [rax],al
  0000000140005B00: 51                 push        rcx
  0000000140005B01: 01 00              add         dword ptr [rax],eax
  0000000140005B03: 00 00              add         byte ptr [rax],al
  0000000140005B05: 00 00              add         byte ptr [rax],al
  0000000140005B07: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005B0A: 00 00              add         byte ptr [rax],al
  0000000140005B0C: 00 00              add         byte ptr [rax],al
  0000000140005B0E: 00 00              add         byte ptr [rax],al
  0000000140005B10: 51                 push        rcx
  0000000140005B11: 01 00              add         dword ptr [rax],eax
  0000000140005B13: 00 00              add         byte ptr [rax],al
  0000000140005B15: 00 00              add         byte ptr [rax],al
  0000000140005B17: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005B1A: 00 00              add         byte ptr [rax],al
  0000000140005B1C: 00 00              add         byte ptr [rax],al
  0000000140005B1E: 00 00              add         byte ptr [rax],al
  0000000140005B20: 51                 push        rcx
  0000000140005B21: 01 00              add         dword ptr [rax],eax
  0000000140005B23: 00 00              add         byte ptr [rax],al
  0000000140005B25: 00 00              add         byte ptr [rax],al
  0000000140005B27: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005B2A: 00 00              add         byte ptr [rax],al
  0000000140005B2C: 00 00              add         byte ptr [rax],al
  0000000140005B2E: 00 00              add         byte ptr [rax],al
  0000000140005B30: 51                 push        rcx
  0000000140005B31: 01 00              add         dword ptr [rax],eax
  0000000140005B33: 00 00              add         byte ptr [rax],al
  0000000140005B35: 00 00              add         byte ptr [rax],al
  0000000140005B37: 00 51 01           add         byte ptr [rcx+1],dl
  0000000140005B3A: 00 00              add         byte ptr [rax],al
  0000000140005B3C: 00 00              add         byte ptr [rax],al
  0000000140005B3E: 00 00              add         byte ptr [rax],al
  0000000140005B40: 42 01 00           add         dword ptr [rax],eax
  0000000140005B43: 00 00              add         byte ptr [rax],al
  0000000140005B45: 00 00              add         byte ptr [rax],al
  0000000140005B47: 00 38              add         byte ptr [rax],bh
  0000000140005B49: 01 00              add         dword ptr [rax],eax
  0000000140005B4B: 00 00              add         byte ptr [rax],al
  0000000140005B4D: 00 00              add         byte ptr [rax],al
  0000000140005B4F: 00 38              add         byte ptr [rax],bh
  0000000140005B51: 01 00              add         dword ptr [rax],eax
  0000000140005B53: 00 00              add         byte ptr [rax],al
  0000000140005B55: 00 00              add         byte ptr [rax],al
  0000000140005B57: 00 38              add         byte ptr [rax],bh
  0000000140005B59: 01 00              add         dword ptr [rax],eax
  0000000140005B5B: 00 00              add         byte ptr [rax],al
  0000000140005B5D: 00 00              add         byte ptr [rax],al
  0000000140005B5F: 00 38              add         byte ptr [rax],bh
  0000000140005B61: 01 00              add         dword ptr [rax],eax
  0000000140005B63: 00 00              add         byte ptr [rax],al
  0000000140005B65: 00 00              add         byte ptr [rax],al
  0000000140005B67: 00 38              add         byte ptr [rax],bh
  0000000140005B69: 01 00              add         dword ptr [rax],eax
  0000000140005B6B: 00 00              add         byte ptr [rax],al
  0000000140005B6D: 00 00              add         byte ptr [rax],al
  0000000140005B6F: 00 38              add         byte ptr [rax],bh
  0000000140005B71: 01 00              add         dword ptr [rax],eax
  0000000140005B73: 00 00              add         byte ptr [rax],al
  0000000140005B75: 00 00              add         byte ptr [rax],al
  0000000140005B77: 00 38              add         byte ptr [rax],bh
  0000000140005B79: 01 00              add         dword ptr [rax],eax
  0000000140005B7B: 00 00              add         byte ptr [rax],al
  0000000140005B7D: 00 00              add         byte ptr [rax],al
  0000000140005B7F: 00 38              add         byte ptr [rax],bh
  0000000140005B81: 01 00              add         dword ptr [rax],eax
  0000000140005B83: 00 00              add         byte ptr [rax],al
  0000000140005B85: 00 00              add         byte ptr [rax],al
  0000000140005B87: 00 38              add         byte ptr [rax],bh
  0000000140005B89: 01 00              add         dword ptr [rax],eax
  0000000140005B8B: 00 00              add         byte ptr [rax],al
  0000000140005B8D: 00 00              add         byte ptr [rax],al
  0000000140005B8F: 00 38              add         byte ptr [rax],bh
  0000000140005B91: 01 00              add         dword ptr [rax],eax
  0000000140005B93: 00 00              add         byte ptr [rax],al
  0000000140005B95: 00 00              add         byte ptr [rax],al
  0000000140005B97: 00 38              add         byte ptr [rax],bh
  0000000140005B99: 01 00              add         dword ptr [rax],eax
  0000000140005B9B: 00 00              add         byte ptr [rax],al
  0000000140005B9D: 00 00              add         byte ptr [rax],al
  0000000140005B9F: 00 38              add         byte ptr [rax],bh
  0000000140005BA1: 01 00              add         dword ptr [rax],eax
  0000000140005BA3: 00 00              add         byte ptr [rax],al
  0000000140005BA5: 00 00              add         byte ptr [rax],al
  0000000140005BA7: 00 38              add         byte ptr [rax],bh
  0000000140005BA9: 01 00              add         dword ptr [rax],eax
  0000000140005BAB: 00 00              add         byte ptr [rax],al
  0000000140005BAD: 00 00              add         byte ptr [rax],al
  0000000140005BAF: 00 38              add         byte ptr [rax],bh
  0000000140005BB1: 01 00              add         dword ptr [rax],eax
  0000000140005BB3: 00 00              add         byte ptr [rax],al
  0000000140005BB5: 00 00              add         byte ptr [rax],al
  0000000140005BB7: 00 38              add         byte ptr [rax],bh
  0000000140005BB9: 01 00              add         dword ptr [rax],eax
  0000000140005BBB: 00 00              add         byte ptr [rax],al
  0000000140005BBD: 00 00              add         byte ptr [rax],al
  0000000140005BBF: 00 38              add         byte ptr [rax],bh
  0000000140005BC1: 01 00              add         dword ptr [rax],eax
  0000000140005BC3: 00 00              add         byte ptr [rax],al
  0000000140005BC5: 00 00              add         byte ptr [rax],al
  0000000140005BC7: 00 38              add         byte ptr [rax],bh
  0000000140005BC9: 01 00              add         dword ptr [rax],eax
  0000000140005BCB: 00 00              add         byte ptr [rax],al
  0000000140005BCD: 00 00              add         byte ptr [rax],al
  0000000140005BCF: 00 38              add         byte ptr [rax],bh
  0000000140005BD1: 01 00              add         dword ptr [rax],eax
  0000000140005BD3: 00 00              add         byte ptr [rax],al
  0000000140005BD5: 00 00              add         byte ptr [rax],al
  0000000140005BD7: 00 38              add         byte ptr [rax],bh
  0000000140005BD9: 01 00              add         dword ptr [rax],eax
  0000000140005BDB: 00 00              add         byte ptr [rax],al
  0000000140005BDD: 00 00              add         byte ptr [rax],al
  0000000140005BDF: 00 38              add         byte ptr [rax],bh
  0000000140005BE1: 01 00              add         dword ptr [rax],eax
  0000000140005BE3: 00 00              add         byte ptr [rax],al
  0000000140005BE5: 00 00              add         byte ptr [rax],al
  0000000140005BE7: 00 38              add         byte ptr [rax],bh
  0000000140005BE9: 01 00              add         dword ptr [rax],eax
  0000000140005BEB: 00 00              add         byte ptr [rax],al
  0000000140005BED: 00 00              add         byte ptr [rax],al
  0000000140005BEF: 00 38              add         byte ptr [rax],bh
  0000000140005BF1: 01 00              add         dword ptr [rax],eax
  0000000140005BF3: 00 00              add         byte ptr [rax],al
  0000000140005BF5: 00 00              add         byte ptr [rax],al
  0000000140005BF7: 00 38              add         byte ptr [rax],bh
  0000000140005BF9: 01 00              add         dword ptr [rax],eax
  0000000140005BFB: 00 00              add         byte ptr [rax],al
  0000000140005BFD: 00 00              add         byte ptr [rax],al
  0000000140005BFF: 00 38              add         byte ptr [rax],bh
  0000000140005C01: 01 00              add         dword ptr [rax],eax
  0000000140005C03: 00 00              add         byte ptr [rax],al
  0000000140005C05: 00 00              add         byte ptr [rax],al
  0000000140005C07: 00 38              add         byte ptr [rax],bh
  0000000140005C09: 01 00              add         dword ptr [rax],eax
  0000000140005C0B: 00 00              add         byte ptr [rax],al
  0000000140005C0D: 00 00              add         byte ptr [rax],al
  0000000140005C0F: 00 38              add         byte ptr [rax],bh
  0000000140005C11: 01 00              add         dword ptr [rax],eax
  0000000140005C13: 00 00              add         byte ptr [rax],al
  0000000140005C15: 00 00              add         byte ptr [rax],al
  0000000140005C17: 00 38              add         byte ptr [rax],bh
  0000000140005C19: 01 00              add         dword ptr [rax],eax
  0000000140005C1B: 00 00              add         byte ptr [rax],al
  0000000140005C1D: 00 00              add         byte ptr [rax],al
  0000000140005C1F: 00 38              add         byte ptr [rax],bh
  0000000140005C21: 01 00              add         dword ptr [rax],eax
  0000000140005C23: 00 00              add         byte ptr [rax],al
  0000000140005C25: 00 00              add         byte ptr [rax],al
  0000000140005C27: 00 38              add         byte ptr [rax],bh
  0000000140005C29: 01 00              add         dword ptr [rax],eax
  0000000140005C2B: 00 00              add         byte ptr [rax],al
  0000000140005C2D: 00 00              add         byte ptr [rax],al
  0000000140005C2F: 00 38              add         byte ptr [rax],bh
  0000000140005C31: 01 00              add         dword ptr [rax],eax
  0000000140005C33: 00 00              add         byte ptr [rax],al
  0000000140005C35: 00 00              add         byte ptr [rax],al
  0000000140005C37: 00 38              add         byte ptr [rax],bh
  0000000140005C39: 01 00              add         dword ptr [rax],eax
  0000000140005C3B: 00 00              add         byte ptr [rax],al
  0000000140005C3D: 00 00              add         byte ptr [rax],al
  0000000140005C3F: 00 C2              add         dl,al
  0000000140005C41: 02 00              add         al,byte ptr [rax]
  0000000140005C43: 00 00              add         byte ptr [rax],al
  0000000140005C45: 00 00              add         byte ptr [rax],al
  0000000140005C47: 00 CA              add         dl,cl
  0000000140005C49: 02 00              add         al,byte ptr [rax]
  0000000140005C4B: 00 00              add         byte ptr [rax],al
  0000000140005C4D: 00 00              add         byte ptr [rax],al
  0000000140005C4F: 00 BD 02 00 00 00  add         byte ptr [rbp+0000000000000002h],bh
  0000000140005C55: 00 00              add         byte ptr [rax],al
  0000000140005C57: 00 B4 02 00 00 00  add         byte ptr [rdx+rax+0000000000000000h],dh
                    00
  0000000140005C5E: 00 00              add         byte ptr [rax],al
  0000000140005C60: A7                 cmps        dword ptr [rsi],dword ptr [rdi]
  0000000140005C61: 02 00              add         al,byte ptr [rax]
  0000000140005C63: 00 00              add         byte ptr [rax],al
  0000000140005C65: 00 00              add         byte ptr [rax],al
  0000000140005C67: 00 9F 02 00 00 00  add         byte ptr [rdi+0000000000000002h],bl
  0000000140005C6D: 00 00              add         byte ptr [rax],al
  0000000140005C6F: 00 9F 02 00 00 00  add         byte ptr [rdi+0000000000000002h],bl
  0000000140005C75: 00 00              add         byte ptr [rax],al
  0000000140005C77: 00 9F 02 00 00 00  add         byte ptr [rdi+0000000000000002h],bl
  0000000140005C7D: 00 00              add         byte ptr [rax],al
  0000000140005C7F: 00 93 02 00 00 00  add         byte ptr [rbx+0000000000000002h],dl
  0000000140005C85: 00 00              add         byte ptr [rax],al
  0000000140005C87: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005C8D: 00 00              add         byte ptr [rax],al
  0000000140005C8F: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005C95: 00 00              add         byte ptr [rax],al
  0000000140005C97: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005C9D: 00 00              add         byte ptr [rax],al
  0000000140005C9F: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005CA5: 00 00              add         byte ptr [rax],al
  0000000140005CA7: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005CAD: 00 00              add         byte ptr [rax],al
  0000000140005CAF: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005CB5: 00 00              add         byte ptr [rax],al
  0000000140005CB7: 00 8B 02 00 00 00  add         byte ptr [rbx+0000000000000002h],cl
  0000000140005CBD: 00 00              add         byte ptr [rax],al
  0000000140005CBF: 00 7F 02           add         byte ptr [rdi+2],bh
  0000000140005CC2: 00 00              add         byte ptr [rax],al
  0000000140005CC4: 00 00              add         byte ptr [rax],al
  0000000140005CC6: 00 00              add         byte ptr [rax],al
  0000000140005CC8: 75 02              jne         0000000140005CCC
  0000000140005CCA: 00 00              add         byte ptr [rax],al
  0000000140005CCC: 00 00              add         byte ptr [rax],al
  0000000140005CCE: 00 00              add         byte ptr [rax],al
  0000000140005CD0: 75 02              jne         0000000140005CD4
  0000000140005CD2: 00 00              add         byte ptr [rax],al
  0000000140005CD4: 00 00              add         byte ptr [rax],al
  0000000140005CD6: 00 00              add         byte ptr [rax],al
  0000000140005CD8: 75 02              jne         0000000140005CDC
  0000000140005CDA: 00 00              add         byte ptr [rax],al
  0000000140005CDC: 00 00              add         byte ptr [rax],al
  0000000140005CDE: 00 00              add         byte ptr [rax],al
  0000000140005CE0: 75 02              jne         0000000140005CE4
  0000000140005CE2: 00 00              add         byte ptr [rax],al
  0000000140005CE4: 00 00              add         byte ptr [rax],al
  0000000140005CE6: 00 00              add         byte ptr [rax],al
  0000000140005CE8: 75 02              jne         0000000140005CEC
  0000000140005CEA: 00 00              add         byte ptr [rax],al
  0000000140005CEC: 00 00              add         byte ptr [rax],al
  0000000140005CEE: 00 00              add         byte ptr [rax],al
  0000000140005CF0: 75 02              jne         0000000140005CF4
  0000000140005CF2: 00 00              add         byte ptr [rax],al
  0000000140005CF4: 00 00              add         byte ptr [rax],al
  0000000140005CF6: 00 00              add         byte ptr [rax],al
  0000000140005CF8: 75 02              jne         0000000140005CFC
  0000000140005CFA: 00 00              add         byte ptr [rax],al
  0000000140005CFC: 00 00              add         byte ptr [rax],al
  0000000140005CFE: 00 00              add         byte ptr [rax],al
  0000000140005D00: 75 02              jne         0000000140005D04
  0000000140005D02: 00 00              add         byte ptr [rax],al
  0000000140005D04: 00 00              add         byte ptr [rax],al
  0000000140005D06: 00 00              add         byte ptr [rax],al
  0000000140005D08: 75 02              jne         0000000140005D0C
  0000000140005D0A: 00 00              add         byte ptr [rax],al
  0000000140005D0C: 00 00              add         byte ptr [rax],al
  0000000140005D0E: 00 00              add         byte ptr [rax],al
  0000000140005D10: 75 02              jne         0000000140005D14
  0000000140005D12: 00 00              add         byte ptr [rax],al
  0000000140005D14: 00 00              add         byte ptr [rax],al
  0000000140005D16: 00 00              add         byte ptr [rax],al
  0000000140005D18: 75 02              jne         0000000140005D1C
  0000000140005D1A: 00 00              add         byte ptr [rax],al
  0000000140005D1C: 00 00              add         byte ptr [rax],al
  0000000140005D1E: 00 00              add         byte ptr [rax],al
  0000000140005D20: 75 02              jne         0000000140005D24
  0000000140005D22: 00 00              add         byte ptr [rax],al
  0000000140005D24: 00 00              add         byte ptr [rax],al
  0000000140005D26: 00 00              add         byte ptr [rax],al
  0000000140005D28: 75 02              jne         0000000140005D2C
  0000000140005D2A: 00 00              add         byte ptr [rax],al
  0000000140005D2C: 00 00              add         byte ptr [rax],al
  0000000140005D2E: 00 00              add         byte ptr [rax],al
  0000000140005D30: 75 02              jne         0000000140005D34
  0000000140005D32: 00 00              add         byte ptr [rax],al
  0000000140005D34: 00 00              add         byte ptr [rax],al
  0000000140005D36: 00 00              add         byte ptr [rax],al
  0000000140005D38: 75 02              jne         0000000140005D3C
  0000000140005D3A: 00 00              add         byte ptr [rax],al
  0000000140005D3C: 00 00              add         byte ptr [rax],al
  0000000140005D3E: 00 00              add         byte ptr [rax],al
  0000000140005D40: 66 02 00           add         al,byte ptr [rax]
  0000000140005D43: 00 00              add         byte ptr [rax],al
  0000000140005D45: 00 00              add         byte ptr [rax],al
  0000000140005D47: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D4B: 00 00              add         byte ptr [rax],al
  0000000140005D4D: 00 00              add         byte ptr [rax],al
  0000000140005D4F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D53: 00 00              add         byte ptr [rax],al
  0000000140005D55: 00 00              add         byte ptr [rax],al
  0000000140005D57: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D5B: 00 00              add         byte ptr [rax],al
  0000000140005D5D: 00 00              add         byte ptr [rax],al
  0000000140005D5F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D63: 00 00              add         byte ptr [rax],al
  0000000140005D65: 00 00              add         byte ptr [rax],al
  0000000140005D67: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D6B: 00 00              add         byte ptr [rax],al
  0000000140005D6D: 00 00              add         byte ptr [rax],al
  0000000140005D6F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D73: 00 00              add         byte ptr [rax],al
  0000000140005D75: 00 00              add         byte ptr [rax],al
  0000000140005D77: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D7B: 00 00              add         byte ptr [rax],al
  0000000140005D7D: 00 00              add         byte ptr [rax],al
  0000000140005D7F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D83: 00 00              add         byte ptr [rax],al
  0000000140005D85: 00 00              add         byte ptr [rax],al
  0000000140005D87: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D8B: 00 00              add         byte ptr [rax],al
  0000000140005D8D: 00 00              add         byte ptr [rax],al
  0000000140005D8F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D93: 00 00              add         byte ptr [rax],al
  0000000140005D95: 00 00              add         byte ptr [rax],al
  0000000140005D97: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005D9B: 00 00              add         byte ptr [rax],al
  0000000140005D9D: 00 00              add         byte ptr [rax],al
  0000000140005D9F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DA3: 00 00              add         byte ptr [rax],al
  0000000140005DA5: 00 00              add         byte ptr [rax],al
  0000000140005DA7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DAB: 00 00              add         byte ptr [rax],al
  0000000140005DAD: 00 00              add         byte ptr [rax],al
  0000000140005DAF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DB3: 00 00              add         byte ptr [rax],al
  0000000140005DB5: 00 00              add         byte ptr [rax],al
  0000000140005DB7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DBB: 00 00              add         byte ptr [rax],al
  0000000140005DBD: 00 00              add         byte ptr [rax],al
  0000000140005DBF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DC3: 00 00              add         byte ptr [rax],al
  0000000140005DC5: 00 00              add         byte ptr [rax],al
  0000000140005DC7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DCB: 00 00              add         byte ptr [rax],al
  0000000140005DCD: 00 00              add         byte ptr [rax],al
  0000000140005DCF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DD3: 00 00              add         byte ptr [rax],al
  0000000140005DD5: 00 00              add         byte ptr [rax],al
  0000000140005DD7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DDB: 00 00              add         byte ptr [rax],al
  0000000140005DDD: 00 00              add         byte ptr [rax],al
  0000000140005DDF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DE3: 00 00              add         byte ptr [rax],al
  0000000140005DE5: 00 00              add         byte ptr [rax],al
  0000000140005DE7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DEB: 00 00              add         byte ptr [rax],al
  0000000140005DED: 00 00              add         byte ptr [rax],al
  0000000140005DEF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DF3: 00 00              add         byte ptr [rax],al
  0000000140005DF5: 00 00              add         byte ptr [rax],al
  0000000140005DF7: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005DFB: 00 00              add         byte ptr [rax],al
  0000000140005DFD: 00 00              add         byte ptr [rax],al
  0000000140005DFF: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E03: 00 00              add         byte ptr [rax],al
  0000000140005E05: 00 00              add         byte ptr [rax],al
  0000000140005E07: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E0B: 00 00              add         byte ptr [rax],al
  0000000140005E0D: 00 00              add         byte ptr [rax],al
  0000000140005E0F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E13: 00 00              add         byte ptr [rax],al
  0000000140005E15: 00 00              add         byte ptr [rax],al
  0000000140005E17: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E1B: 00 00              add         byte ptr [rax],al
  0000000140005E1D: 00 00              add         byte ptr [rax],al
  0000000140005E1F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E23: 00 00              add         byte ptr [rax],al
  0000000140005E25: 00 00              add         byte ptr [rax],al
  0000000140005E27: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E2B: 00 00              add         byte ptr [rax],al
  0000000140005E2D: 00 00              add         byte ptr [rax],al
  0000000140005E2F: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E33: 00 00              add         byte ptr [rax],al
  0000000140005E35: 00 00              add         byte ptr [rax],al
  0000000140005E37: 00 5C 02 00        add         byte ptr [rdx+rax],bl
  0000000140005E3B: 00 00              add         byte ptr [rax],al
  0000000140005E3D: 00 00              add         byte ptr [rax],al
  0000000140005E3F: 00 E5              add         ch,ah
  0000000140005E41: 02 00              add         al,byte ptr [rax]
  0000000140005E43: 00 00              add         byte ptr [rax],al
  0000000140005E45: 00 00              add         byte ptr [rax],al
  0000000140005E47: 00 E5              add         ch,ah
  0000000140005E49: 02 00              add         al,byte ptr [rax]
  0000000140005E4B: 00 00              add         byte ptr [rax],al
  0000000140005E4D: 00 00              add         byte ptr [rax],al
  0000000140005E4F: 00 E5              add         ch,ah
  0000000140005E51: 02 00              add         al,byte ptr [rax]
  0000000140005E53: 00 00              add         byte ptr [rax],al
  0000000140005E55: 00 00              add         byte ptr [rax],al
  0000000140005E57: 00 E5              add         ch,ah
  0000000140005E59: 02 00              add         al,byte ptr [rax]
  0000000140005E5B: 00 00              add         byte ptr [rax],al
  0000000140005E5D: 00 00              add         byte ptr [rax],al
  0000000140005E5F: 00 E5              add         ch,ah
  0000000140005E61: 02 00              add         al,byte ptr [rax]
  0000000140005E63: 00 00              add         byte ptr [rax],al
  0000000140005E65: 00 00              add         byte ptr [rax],al
  0000000140005E67: 00 E5              add         ch,ah
  0000000140005E69: 02 00              add         al,byte ptr [rax]
  0000000140005E6B: 00 00              add         byte ptr [rax],al
  0000000140005E6D: 00 00              add         byte ptr [rax],al
  0000000140005E6F: 00 E5              add         ch,ah
  0000000140005E71: 02 00              add         al,byte ptr [rax]
  0000000140005E73: 00 00              add         byte ptr [rax],al
  0000000140005E75: 00 00              add         byte ptr [rax],al
  0000000140005E77: 00 E5              add         ch,ah
  0000000140005E79: 02 00              add         al,byte ptr [rax]
  0000000140005E7B: 00 00              add         byte ptr [rax],al
  0000000140005E7D: 00 00              add         byte ptr [rax],al
  0000000140005E7F: 00 E5              add         ch,ah
  0000000140005E81: 02 00              add         al,byte ptr [rax]
  0000000140005E83: 00 00              add         byte ptr [rax],al
  0000000140005E85: 00 00              add         byte ptr [rax],al
  0000000140005E87: 00 E5              add         ch,ah
  0000000140005E89: 02 00              add         al,byte ptr [rax]
  0000000140005E8B: 00 00              add         byte ptr [rax],al
  0000000140005E8D: 00 00              add         byte ptr [rax],al
  0000000140005E8F: 00 E5              add         ch,ah
  0000000140005E91: 02 00              add         al,byte ptr [rax]
  0000000140005E93: 00 00              add         byte ptr [rax],al
  0000000140005E95: 00 00              add         byte ptr [rax],al
  0000000140005E97: 00 E5              add         ch,ah
  0000000140005E99: 02 00              add         al,byte ptr [rax]
  0000000140005E9B: 00 00              add         byte ptr [rax],al
  0000000140005E9D: 00 00              add         byte ptr [rax],al
  0000000140005E9F: 00 E5              add         ch,ah
  0000000140005EA1: 02 00              add         al,byte ptr [rax]
  0000000140005EA3: 00 00              add         byte ptr [rax],al
  0000000140005EA5: 00 00              add         byte ptr [rax],al
  0000000140005EA7: 00 E5              add         ch,ah
  0000000140005EA9: 02 00              add         al,byte ptr [rax]
  0000000140005EAB: 00 00              add         byte ptr [rax],al
  0000000140005EAD: 00 00              add         byte ptr [rax],al
  0000000140005EAF: 00 E5              add         ch,ah
  0000000140005EB1: 02 00              add         al,byte ptr [rax]
  0000000140005EB3: 00 00              add         byte ptr [rax],al
  0000000140005EB5: 00 00              add         byte ptr [rax],al
  0000000140005EB7: 00 E5              add         ch,ah
  0000000140005EB9: 02 00              add         al,byte ptr [rax]
  0000000140005EBB: 00 00              add         byte ptr [rax],al
  0000000140005EBD: 00 00              add         byte ptr [rax],al
  0000000140005EBF: 00 E5              add         ch,ah
  0000000140005EC1: 02 00              add         al,byte ptr [rax]
  0000000140005EC3: 00 00              add         byte ptr [rax],al
  0000000140005EC5: 00 00              add         byte ptr [rax],al
  0000000140005EC7: 00 E5              add         ch,ah
  0000000140005EC9: 02 00              add         al,byte ptr [rax]
  0000000140005ECB: 00 00              add         byte ptr [rax],al
  0000000140005ECD: 00 00              add         byte ptr [rax],al
  0000000140005ECF: 00 E5              add         ch,ah
  0000000140005ED1: 02 00              add         al,byte ptr [rax]
  0000000140005ED3: 00 00              add         byte ptr [rax],al
  0000000140005ED5: 00 00              add         byte ptr [rax],al
  0000000140005ED7: 00 E5              add         ch,ah
  0000000140005ED9: 02 00              add         al,byte ptr [rax]
  0000000140005EDB: 00 00              add         byte ptr [rax],al
  0000000140005EDD: 00 00              add         byte ptr [rax],al
  0000000140005EDF: 00 E5              add         ch,ah
  0000000140005EE1: 02 00              add         al,byte ptr [rax]
  0000000140005EE3: 00 00              add         byte ptr [rax],al
  0000000140005EE5: 00 00              add         byte ptr [rax],al
  0000000140005EE7: 00 E5              add         ch,ah
  0000000140005EE9: 02 00              add         al,byte ptr [rax]
  0000000140005EEB: 00 00              add         byte ptr [rax],al
  0000000140005EED: 00 00              add         byte ptr [rax],al
  0000000140005EEF: 00 E5              add         ch,ah
  0000000140005EF1: 02 00              add         al,byte ptr [rax]
  0000000140005EF3: 00 00              add         byte ptr [rax],al
  0000000140005EF5: 00 00              add         byte ptr [rax],al
  0000000140005EF7: 00 E5              add         ch,ah
  0000000140005EF9: 02 00              add         al,byte ptr [rax]
  0000000140005EFB: 00 00              add         byte ptr [rax],al
  0000000140005EFD: 00 00              add         byte ptr [rax],al
  0000000140005EFF: 00 E5              add         ch,ah
  0000000140005F01: 02 00              add         al,byte ptr [rax]
  0000000140005F03: 00 00              add         byte ptr [rax],al
  0000000140005F05: 00 00              add         byte ptr [rax],al
  0000000140005F07: 00 E5              add         ch,ah
  0000000140005F09: 02 00              add         al,byte ptr [rax]
  0000000140005F0B: 00 00              add         byte ptr [rax],al
  0000000140005F0D: 00 00              add         byte ptr [rax],al
  0000000140005F0F: 00 E5              add         ch,ah
  0000000140005F11: 02 00              add         al,byte ptr [rax]
  0000000140005F13: 00 00              add         byte ptr [rax],al
  0000000140005F15: 00 00              add         byte ptr [rax],al
  0000000140005F17: 00 E5              add         ch,ah
  0000000140005F19: 02 00              add         al,byte ptr [rax]
  0000000140005F1B: 00 00              add         byte ptr [rax],al
  0000000140005F1D: 00 00              add         byte ptr [rax],al
  0000000140005F1F: 00 E5              add         ch,ah
  0000000140005F21: 02 00              add         al,byte ptr [rax]
  0000000140005F23: 00 00              add         byte ptr [rax],al
  0000000140005F25: 00 00              add         byte ptr [rax],al
  0000000140005F27: 00 E5              add         ch,ah
  0000000140005F29: 02 00              add         al,byte ptr [rax]
  0000000140005F2B: 00 00              add         byte ptr [rax],al
  0000000140005F2D: 00 00              add         byte ptr [rax],al
  0000000140005F2F: 00 E5              add         ch,ah
  0000000140005F31: 02 00              add         al,byte ptr [rax]
  0000000140005F33: 00 00              add         byte ptr [rax],al
  0000000140005F35: 00 00              add         byte ptr [rax],al
  0000000140005F37: 00 E5              add         ch,ah
  0000000140005F39: 02 00              add         al,byte ptr [rax]
  0000000140005F3B: 00 00              add         byte ptr [rax],al
  0000000140005F3D: 00 00              add         byte ptr [rax],al
  0000000140005F3F: 00 E5              add         ch,ah
  0000000140005F41: 02 00              add         al,byte ptr [rax]
  0000000140005F43: 00 00              add         byte ptr [rax],al
  0000000140005F45: 00 00              add         byte ptr [rax],al
  0000000140005F47: 00 E5              add         ch,ah
  0000000140005F49: 02 00              add         al,byte ptr [rax]
  0000000140005F4B: 00 00              add         byte ptr [rax],al
  0000000140005F4D: 00 00              add         byte ptr [rax],al
  0000000140005F4F: 00 E5              add         ch,ah
  0000000140005F51: 02 00              add         al,byte ptr [rax]
  0000000140005F53: 00 00              add         byte ptr [rax],al
  0000000140005F55: 00 00              add         byte ptr [rax],al
  0000000140005F57: 00 E5              add         ch,ah
  0000000140005F59: 02 00              add         al,byte ptr [rax]
  0000000140005F5B: 00 00              add         byte ptr [rax],al
  0000000140005F5D: 00 00              add         byte ptr [rax],al
  0000000140005F5F: 00 E5              add         ch,ah
  0000000140005F61: 02 00              add         al,byte ptr [rax]
  0000000140005F63: 00 00              add         byte ptr [rax],al
  0000000140005F65: 00 00              add         byte ptr [rax],al
  0000000140005F67: 00 E5              add         ch,ah
  0000000140005F69: 02 00              add         al,byte ptr [rax]
  0000000140005F6B: 00 00              add         byte ptr [rax],al
  0000000140005F6D: 00 00              add         byte ptr [rax],al
  0000000140005F6F: 00 E5              add         ch,ah
  0000000140005F71: 02 00              add         al,byte ptr [rax]
  0000000140005F73: 00 00              add         byte ptr [rax],al
  0000000140005F75: 00 00              add         byte ptr [rax],al
  0000000140005F77: 00 E5              add         ch,ah
  0000000140005F79: 02 00              add         al,byte ptr [rax]
  0000000140005F7B: 00 00              add         byte ptr [rax],al
  0000000140005F7D: 00 00              add         byte ptr [rax],al
  0000000140005F7F: 00 E5              add         ch,ah
  0000000140005F81: 02 00              add         al,byte ptr [rax]
  0000000140005F83: 00 00              add         byte ptr [rax],al
  0000000140005F85: 00 00              add         byte ptr [rax],al
  0000000140005F87: 00 E5              add         ch,ah
  0000000140005F89: 02 00              add         al,byte ptr [rax]
  0000000140005F8B: 00 00              add         byte ptr [rax],al
  0000000140005F8D: 00 00              add         byte ptr [rax],al
  0000000140005F8F: 00 E5              add         ch,ah
  0000000140005F91: 02 00              add         al,byte ptr [rax]
  0000000140005F93: 00 00              add         byte ptr [rax],al
  0000000140005F95: 00 00              add         byte ptr [rax],al
  0000000140005F97: 00 E5              add         ch,ah
  0000000140005F99: 02 00              add         al,byte ptr [rax]
  0000000140005F9B: 00 00              add         byte ptr [rax],al
  0000000140005F9D: 00 00              add         byte ptr [rax],al
  0000000140005F9F: 00 E5              add         ch,ah
  0000000140005FA1: 02 00              add         al,byte ptr [rax]
  0000000140005FA3: 00 00              add         byte ptr [rax],al
  0000000140005FA5: 00 00              add         byte ptr [rax],al
  0000000140005FA7: 00 E5              add         ch,ah
  0000000140005FA9: 02 00              add         al,byte ptr [rax]
  0000000140005FAB: 00 00              add         byte ptr [rax],al
  0000000140005FAD: 00 00              add         byte ptr [rax],al
  0000000140005FAF: 00 E5              add         ch,ah
  0000000140005FB1: 02 00              add         al,byte ptr [rax]
  0000000140005FB3: 00 00              add         byte ptr [rax],al
  0000000140005FB5: 00 00              add         byte ptr [rax],al
  0000000140005FB7: 00 E5              add         ch,ah
  0000000140005FB9: 02 00              add         al,byte ptr [rax]
  0000000140005FBB: 00 00              add         byte ptr [rax],al
  0000000140005FBD: 00 00              add         byte ptr [rax],al
  0000000140005FBF: 00 E5              add         ch,ah
  0000000140005FC1: 02 00              add         al,byte ptr [rax]
  0000000140005FC3: 00 00              add         byte ptr [rax],al
  0000000140005FC5: 00 00              add         byte ptr [rax],al
  0000000140005FC7: 00 E5              add         ch,ah
  0000000140005FC9: 02 00              add         al,byte ptr [rax]
  0000000140005FCB: 00 00              add         byte ptr [rax],al
  0000000140005FCD: 00 00              add         byte ptr [rax],al
  0000000140005FCF: 00 E5              add         ch,ah
  0000000140005FD1: 02 00              add         al,byte ptr [rax]
  0000000140005FD3: 00 00              add         byte ptr [rax],al
  0000000140005FD5: 00 00              add         byte ptr [rax],al
  0000000140005FD7: 00 E5              add         ch,ah
  0000000140005FD9: 02 00              add         al,byte ptr [rax]
  0000000140005FDB: 00 00              add         byte ptr [rax],al
  0000000140005FDD: 00 00              add         byte ptr [rax],al
  0000000140005FDF: 00 E5              add         ch,ah
  0000000140005FE1: 02 00              add         al,byte ptr [rax]
  0000000140005FE3: 00 00              add         byte ptr [rax],al
  0000000140005FE5: 00 00              add         byte ptr [rax],al
  0000000140005FE7: 00 E5              add         ch,ah
  0000000140005FE9: 02 00              add         al,byte ptr [rax]
  0000000140005FEB: 00 00              add         byte ptr [rax],al
  0000000140005FED: 00 00              add         byte ptr [rax],al
  0000000140005FEF: 00 E5              add         ch,ah
  0000000140005FF1: 02 00              add         al,byte ptr [rax]
  0000000140005FF3: 00 00              add         byte ptr [rax],al
  0000000140005FF5: 00 00              add         byte ptr [rax],al
  0000000140005FF7: 00 E5              add         ch,ah
  0000000140005FF9: 02 00              add         al,byte ptr [rax]
  0000000140005FFB: 00 00              add         byte ptr [rax],al
  0000000140005FFD: 00 00              add         byte ptr [rax],al
  0000000140005FFF: 00 E5              add         ch,ah
  0000000140006001: 02 00              add         al,byte ptr [rax]
  0000000140006003: 00 00              add         byte ptr [rax],al
  0000000140006005: 00 00              add         byte ptr [rax],al
  0000000140006007: 00 E5              add         ch,ah
  0000000140006009: 02 00              add         al,byte ptr [rax]
  000000014000600B: 00 00              add         byte ptr [rax],al
  000000014000600D: 00 00              add         byte ptr [rax],al
  000000014000600F: 00 E5              add         ch,ah
  0000000140006011: 02 00              add         al,byte ptr [rax]
  0000000140006013: 00 00              add         byte ptr [rax],al
  0000000140006015: 00 00              add         byte ptr [rax],al
  0000000140006017: 00 E5              add         ch,ah
  0000000140006019: 02 00              add         al,byte ptr [rax]
  000000014000601B: 00 00              add         byte ptr [rax],al
  000000014000601D: 00 00              add         byte ptr [rax],al
  000000014000601F: 00 E5              add         ch,ah
  0000000140006021: 02 00              add         al,byte ptr [rax]
  0000000140006023: 00 00              add         byte ptr [rax],al
  0000000140006025: 00 00              add         byte ptr [rax],al
  0000000140006027: 00 E5              add         ch,ah
  0000000140006029: 02 00              add         al,byte ptr [rax]
  000000014000602B: 00 00              add         byte ptr [rax],al
  000000014000602D: 00 00              add         byte ptr [rax],al
  000000014000602F: 00 E5              add         ch,ah
  0000000140006031: 02 00              add         al,byte ptr [rax]
  0000000140006033: 00 00              add         byte ptr [rax],al
  0000000140006035: 00 00              add         byte ptr [rax],al
  0000000140006037: 00 E5              add         ch,ah
  0000000140006039: 02 00              add         al,byte ptr [rax]
  000000014000603B: 00 00              add         byte ptr [rax],al
  000000014000603D: 00 00              add         byte ptr [rax],al
  000000014000603F: 00 EC              add         ah,ch
  0000000140006041: 02 00              add         al,byte ptr [rax]
  0000000140006043: 00 00              add         byte ptr [rax],al
  0000000140006045: 00 00              add         byte ptr [rax],al
  0000000140006047: 00 EC              add         ah,ch
  0000000140006049: 02 00              add         al,byte ptr [rax]
  000000014000604B: 00 00              add         byte ptr [rax],al
  000000014000604D: 00 00              add         byte ptr [rax],al
  000000014000604F: 00 EC              add         ah,ch
  0000000140006051: 02 00              add         al,byte ptr [rax]
  0000000140006053: 00 00              add         byte ptr [rax],al
  0000000140006055: 00 00              add         byte ptr [rax],al
  0000000140006057: 00 EC              add         ah,ch
  0000000140006059: 02 00              add         al,byte ptr [rax]
  000000014000605B: 00 00              add         byte ptr [rax],al
  000000014000605D: 00 00              add         byte ptr [rax],al
  000000014000605F: 00 EC              add         ah,ch
  0000000140006061: 02 00              add         al,byte ptr [rax]
  0000000140006063: 00 00              add         byte ptr [rax],al
  0000000140006065: 00 00              add         byte ptr [rax],al
  0000000140006067: 00 EC              add         ah,ch
  0000000140006069: 02 00              add         al,byte ptr [rax]
  000000014000606B: 00 00              add         byte ptr [rax],al
  000000014000606D: 00 00              add         byte ptr [rax],al
  000000014000606F: 00 EC              add         ah,ch
  0000000140006071: 02 00              add         al,byte ptr [rax]
  0000000140006073: 00 00              add         byte ptr [rax],al
  0000000140006075: 00 00              add         byte ptr [rax],al
  0000000140006077: 00 EC              add         ah,ch
  0000000140006079: 02 00              add         al,byte ptr [rax]
  000000014000607B: 00 00              add         byte ptr [rax],al
  000000014000607D: 00 00              add         byte ptr [rax],al
  000000014000607F: 00 EC              add         ah,ch
  0000000140006081: 02 00              add         al,byte ptr [rax]
  0000000140006083: 00 00              add         byte ptr [rax],al
  0000000140006085: 00 00              add         byte ptr [rax],al
  0000000140006087: 00 EC              add         ah,ch
  0000000140006089: 02 00              add         al,byte ptr [rax]
  000000014000608B: 00 00              add         byte ptr [rax],al
  000000014000608D: 00 00              add         byte ptr [rax],al
  000000014000608F: 00 EC              add         ah,ch
  0000000140006091: 02 00              add         al,byte ptr [rax]
  0000000140006093: 00 00              add         byte ptr [rax],al
  0000000140006095: 00 00              add         byte ptr [rax],al
  0000000140006097: 00 EC              add         ah,ch
  0000000140006099: 02 00              add         al,byte ptr [rax]
  000000014000609B: 00 00              add         byte ptr [rax],al
  000000014000609D: 00 00              add         byte ptr [rax],al
  000000014000609F: 00 EC              add         ah,ch
  00000001400060A1: 02 00              add         al,byte ptr [rax]
  00000001400060A3: 00 00              add         byte ptr [rax],al
  00000001400060A5: 00 00              add         byte ptr [rax],al
  00000001400060A7: 00 EC              add         ah,ch
  00000001400060A9: 02 00              add         al,byte ptr [rax]
  00000001400060AB: 00 00              add         byte ptr [rax],al
  00000001400060AD: 00 00              add         byte ptr [rax],al
  00000001400060AF: 00 EC              add         ah,ch
  00000001400060B1: 02 00              add         al,byte ptr [rax]
  00000001400060B3: 00 00              add         byte ptr [rax],al
  00000001400060B5: 00 00              add         byte ptr [rax],al
  00000001400060B7: 00 EC              add         ah,ch
  00000001400060B9: 02 00              add         al,byte ptr [rax]
  00000001400060BB: 00 00              add         byte ptr [rax],al
  00000001400060BD: 00 00              add         byte ptr [rax],al
  00000001400060BF: 00 EC              add         ah,ch
  00000001400060C1: 02 00              add         al,byte ptr [rax]
  00000001400060C3: 00 00              add         byte ptr [rax],al
  00000001400060C5: 00 00              add         byte ptr [rax],al
  00000001400060C7: 00 EC              add         ah,ch
  00000001400060C9: 02 00              add         al,byte ptr [rax]
  00000001400060CB: 00 00              add         byte ptr [rax],al
  00000001400060CD: 00 00              add         byte ptr [rax],al
  00000001400060CF: 00 EC              add         ah,ch
  00000001400060D1: 02 00              add         al,byte ptr [rax]
  00000001400060D3: 00 00              add         byte ptr [rax],al
  00000001400060D5: 00 00              add         byte ptr [rax],al
  00000001400060D7: 00 EC              add         ah,ch
  00000001400060D9: 02 00              add         al,byte ptr [rax]
  00000001400060DB: 00 00              add         byte ptr [rax],al
  00000001400060DD: 00 00              add         byte ptr [rax],al
  00000001400060DF: 00 EC              add         ah,ch
  00000001400060E1: 02 00              add         al,byte ptr [rax]
  00000001400060E3: 00 00              add         byte ptr [rax],al
  00000001400060E5: 00 00              add         byte ptr [rax],al
  00000001400060E7: 00 EC              add         ah,ch
  00000001400060E9: 02 00              add         al,byte ptr [rax]
  00000001400060EB: 00 00              add         byte ptr [rax],al
  00000001400060ED: 00 00              add         byte ptr [rax],al
  00000001400060EF: 00 EC              add         ah,ch
  00000001400060F1: 02 00              add         al,byte ptr [rax]
  00000001400060F3: 00 00              add         byte ptr [rax],al
  00000001400060F5: 00 00              add         byte ptr [rax],al
  00000001400060F7: 00 EC              add         ah,ch
  00000001400060F9: 02 00              add         al,byte ptr [rax]
  00000001400060FB: 00 00              add         byte ptr [rax],al
  00000001400060FD: 00 00              add         byte ptr [rax],al
  00000001400060FF: 00 EC              add         ah,ch
  0000000140006101: 02 00              add         al,byte ptr [rax]
  0000000140006103: 00 00              add         byte ptr [rax],al
  0000000140006105: 00 00              add         byte ptr [rax],al
  0000000140006107: 00 EC              add         ah,ch
  0000000140006109: 02 00              add         al,byte ptr [rax]
  000000014000610B: 00 00              add         byte ptr [rax],al
  000000014000610D: 00 00              add         byte ptr [rax],al
  000000014000610F: 00 EC              add         ah,ch
  0000000140006111: 02 00              add         al,byte ptr [rax]
  0000000140006113: 00 00              add         byte ptr [rax],al
  0000000140006115: 00 00              add         byte ptr [rax],al
  0000000140006117: 00 EC              add         ah,ch
  0000000140006119: 02 00              add         al,byte ptr [rax]
  000000014000611B: 00 00              add         byte ptr [rax],al
  000000014000611D: 00 00              add         byte ptr [rax],al
  000000014000611F: 00 EC              add         ah,ch
  0000000140006121: 02 00              add         al,byte ptr [rax]
  0000000140006123: 00 00              add         byte ptr [rax],al
  0000000140006125: 00 00              add         byte ptr [rax],al
  0000000140006127: 00 EC              add         ah,ch
  0000000140006129: 02 00              add         al,byte ptr [rax]
  000000014000612B: 00 00              add         byte ptr [rax],al
  000000014000612D: 00 00              add         byte ptr [rax],al
  000000014000612F: 00 EC              add         ah,ch
  0000000140006131: 02 00              add         al,byte ptr [rax]
  0000000140006133: 00 00              add         byte ptr [rax],al
  0000000140006135: 00 00              add         byte ptr [rax],al
  0000000140006137: 00 EC              add         ah,ch
  0000000140006139: 02 00              add         al,byte ptr [rax]
  000000014000613B: 00 00              add         byte ptr [rax],al
  000000014000613D: 00 00              add         byte ptr [rax],al
  000000014000613F: 00 EC              add         ah,ch
  0000000140006141: 02 00              add         al,byte ptr [rax]
  0000000140006143: 00 00              add         byte ptr [rax],al
  0000000140006145: 00 00              add         byte ptr [rax],al
  0000000140006147: 00 EC              add         ah,ch
  0000000140006149: 02 00              add         al,byte ptr [rax]
  000000014000614B: 00 00              add         byte ptr [rax],al
  000000014000614D: 00 00              add         byte ptr [rax],al
  000000014000614F: 00 EC              add         ah,ch
  0000000140006151: 02 00              add         al,byte ptr [rax]
  0000000140006153: 00 00              add         byte ptr [rax],al
  0000000140006155: 00 00              add         byte ptr [rax],al
  0000000140006157: 00 EC              add         ah,ch
  0000000140006159: 02 00              add         al,byte ptr [rax]
  000000014000615B: 00 00              add         byte ptr [rax],al
  000000014000615D: 00 00              add         byte ptr [rax],al
  000000014000615F: 00 EC              add         ah,ch
  0000000140006161: 02 00              add         al,byte ptr [rax]
  0000000140006163: 00 00              add         byte ptr [rax],al
  0000000140006165: 00 00              add         byte ptr [rax],al
  0000000140006167: 00 EC              add         ah,ch
  0000000140006169: 02 00              add         al,byte ptr [rax]
  000000014000616B: 00 00              add         byte ptr [rax],al
  000000014000616D: 00 00              add         byte ptr [rax],al
  000000014000616F: 00 EC              add         ah,ch
  0000000140006171: 02 00              add         al,byte ptr [rax]
  0000000140006173: 00 00              add         byte ptr [rax],al
  0000000140006175: 00 00              add         byte ptr [rax],al
  0000000140006177: 00 EC              add         ah,ch
  0000000140006179: 02 00              add         al,byte ptr [rax]
  000000014000617B: 00 00              add         byte ptr [rax],al
  000000014000617D: 00 00              add         byte ptr [rax],al
  000000014000617F: 00 EC              add         ah,ch
  0000000140006181: 02 00              add         al,byte ptr [rax]
  0000000140006183: 00 00              add         byte ptr [rax],al
  0000000140006185: 00 00              add         byte ptr [rax],al
  0000000140006187: 00 EC              add         ah,ch
  0000000140006189: 02 00              add         al,byte ptr [rax]
  000000014000618B: 00 00              add         byte ptr [rax],al
  000000014000618D: 00 00              add         byte ptr [rax],al
  000000014000618F: 00 EC              add         ah,ch
  0000000140006191: 02 00              add         al,byte ptr [rax]
  0000000140006193: 00 00              add         byte ptr [rax],al
  0000000140006195: 00 00              add         byte ptr [rax],al
  0000000140006197: 00 EC              add         ah,ch
  0000000140006199: 02 00              add         al,byte ptr [rax]
  000000014000619B: 00 00              add         byte ptr [rax],al
  000000014000619D: 00 00              add         byte ptr [rax],al
  000000014000619F: 00 EC              add         ah,ch
  00000001400061A1: 02 00              add         al,byte ptr [rax]
  00000001400061A3: 00 00              add         byte ptr [rax],al
  00000001400061A5: 00 00              add         byte ptr [rax],al
  00000001400061A7: 00 EC              add         ah,ch
  00000001400061A9: 02 00              add         al,byte ptr [rax]
  00000001400061AB: 00 00              add         byte ptr [rax],al
  00000001400061AD: 00 00              add         byte ptr [rax],al
  00000001400061AF: 00 EC              add         ah,ch
  00000001400061B1: 02 00              add         al,byte ptr [rax]
  00000001400061B3: 00 00              add         byte ptr [rax],al
  00000001400061B5: 00 00              add         byte ptr [rax],al
  00000001400061B7: 00 EC              add         ah,ch
  00000001400061B9: 02 00              add         al,byte ptr [rax]
  00000001400061BB: 00 00              add         byte ptr [rax],al
  00000001400061BD: 00 00              add         byte ptr [rax],al
  00000001400061BF: 00 EC              add         ah,ch
  00000001400061C1: 02 00              add         al,byte ptr [rax]
  00000001400061C3: 00 00              add         byte ptr [rax],al
  00000001400061C5: 00 00              add         byte ptr [rax],al
  00000001400061C7: 00 EC              add         ah,ch
  00000001400061C9: 02 00              add         al,byte ptr [rax]
  00000001400061CB: 00 00              add         byte ptr [rax],al
  00000001400061CD: 00 00              add         byte ptr [rax],al
  00000001400061CF: 00 EC              add         ah,ch
  00000001400061D1: 02 00              add         al,byte ptr [rax]
  00000001400061D3: 00 00              add         byte ptr [rax],al
  00000001400061D5: 00 00              add         byte ptr [rax],al
  00000001400061D7: 00 EC              add         ah,ch
  00000001400061D9: 02 00              add         al,byte ptr [rax]
  00000001400061DB: 00 00              add         byte ptr [rax],al
  00000001400061DD: 00 00              add         byte ptr [rax],al
  00000001400061DF: 00 EC              add         ah,ch
  00000001400061E1: 02 00              add         al,byte ptr [rax]
  00000001400061E3: 00 00              add         byte ptr [rax],al
  00000001400061E5: 00 00              add         byte ptr [rax],al
  00000001400061E7: 00 EC              add         ah,ch
  00000001400061E9: 02 00              add         al,byte ptr [rax]
  00000001400061EB: 00 00              add         byte ptr [rax],al
  00000001400061ED: 00 00              add         byte ptr [rax],al
  00000001400061EF: 00 EC              add         ah,ch
  00000001400061F1: 02 00              add         al,byte ptr [rax]
  00000001400061F3: 00 00              add         byte ptr [rax],al
  00000001400061F5: 00 00              add         byte ptr [rax],al
  00000001400061F7: 00 EC              add         ah,ch
  00000001400061F9: 02 00              add         al,byte ptr [rax]
  00000001400061FB: 00 00              add         byte ptr [rax],al
  00000001400061FD: 00 00              add         byte ptr [rax],al
  00000001400061FF: 00 EC              add         ah,ch
  0000000140006201: 02 00              add         al,byte ptr [rax]
  0000000140006203: 00 00              add         byte ptr [rax],al
  0000000140006205: 00 00              add         byte ptr [rax],al
  0000000140006207: 00 EC              add         ah,ch
  0000000140006209: 02 00              add         al,byte ptr [rax]
  000000014000620B: 00 00              add         byte ptr [rax],al
  000000014000620D: 00 00              add         byte ptr [rax],al
  000000014000620F: 00 EC              add         ah,ch
  0000000140006211: 02 00              add         al,byte ptr [rax]
  0000000140006213: 00 00              add         byte ptr [rax],al
  0000000140006215: 00 00              add         byte ptr [rax],al
  0000000140006217: 00 EC              add         ah,ch
  0000000140006219: 02 00              add         al,byte ptr [rax]
  000000014000621B: 00 00              add         byte ptr [rax],al
  000000014000621D: 00 00              add         byte ptr [rax],al
  000000014000621F: 00 EC              add         ah,ch
  0000000140006221: 02 00              add         al,byte ptr [rax]
  0000000140006223: 00 00              add         byte ptr [rax],al
  0000000140006225: 00 00              add         byte ptr [rax],al
  0000000140006227: 00 EC              add         ah,ch
  0000000140006229: 02 00              add         al,byte ptr [rax]
  000000014000622B: 00 00              add         byte ptr [rax],al
  000000014000622D: 00 00              add         byte ptr [rax],al
  000000014000622F: 00 EC              add         ah,ch
  0000000140006231: 02 00              add         al,byte ptr [rax]
  0000000140006233: 00 00              add         byte ptr [rax],al
  0000000140006235: 00 00              add         byte ptr [rax],al
  0000000140006237: 00 EC              add         ah,ch
  0000000140006239: 02 00              add         al,byte ptr [rax]
  000000014000623B: 00 00              add         byte ptr [rax],al
  000000014000623D: 00 00              add         byte ptr [rax],al
  000000014000623F: 00 F3              add         bl,dh
  0000000140006241: 02 00              add         al,byte ptr [rax]
  0000000140006243: 00 00              add         byte ptr [rax],al
  0000000140006245: 00 00              add         byte ptr [rax],al
  0000000140006247: 00 F3              add         bl,dh
  0000000140006249: 02 00              add         al,byte ptr [rax]
  000000014000624B: 00 00              add         byte ptr [rax],al
  000000014000624D: 00 00              add         byte ptr [rax],al
  000000014000624F: 00 F3              add         bl,dh
  0000000140006251: 02 00              add         al,byte ptr [rax]
  0000000140006253: 00 00              add         byte ptr [rax],al
  0000000140006255: 00 00              add         byte ptr [rax],al
  0000000140006257: 00 F3              add         bl,dh
  0000000140006259: 02 00              add         al,byte ptr [rax]
  000000014000625B: 00 00              add         byte ptr [rax],al
  000000014000625D: 00 00              add         byte ptr [rax],al
  000000014000625F: 00 F3              add         bl,dh
  0000000140006261: 02 00              add         al,byte ptr [rax]
  0000000140006263: 00 00              add         byte ptr [rax],al
  0000000140006265: 00 00              add         byte ptr [rax],al
  0000000140006267: 00 F3              add         bl,dh
  0000000140006269: 02 00              add         al,byte ptr [rax]
  000000014000626B: 00 00              add         byte ptr [rax],al
  000000014000626D: 00 00              add         byte ptr [rax],al
  000000014000626F: 00 F3              add         bl,dh
  0000000140006271: 02 00              add         al,byte ptr [rax]
  0000000140006273: 00 00              add         byte ptr [rax],al
  0000000140006275: 00 00              add         byte ptr [rax],al
  0000000140006277: 00 F3              add         bl,dh
  0000000140006279: 02 00              add         al,byte ptr [rax]
  000000014000627B: 00 00              add         byte ptr [rax],al
  000000014000627D: 00 00              add         byte ptr [rax],al
  000000014000627F: 00 F3              add         bl,dh
  0000000140006281: 02 00              add         al,byte ptr [rax]
  0000000140006283: 00 00              add         byte ptr [rax],al
  0000000140006285: 00 00              add         byte ptr [rax],al
  0000000140006287: 00 F3              add         bl,dh
  0000000140006289: 02 00              add         al,byte ptr [rax]
  000000014000628B: 00 00              add         byte ptr [rax],al
  000000014000628D: 00 00              add         byte ptr [rax],al
  000000014000628F: 00 F3              add         bl,dh
  0000000140006291: 02 00              add         al,byte ptr [rax]
  0000000140006293: 00 00              add         byte ptr [rax],al
  0000000140006295: 00 00              add         byte ptr [rax],al
  0000000140006297: 00 F3              add         bl,dh
  0000000140006299: 02 00              add         al,byte ptr [rax]
  000000014000629B: 00 00              add         byte ptr [rax],al
  000000014000629D: 00 00              add         byte ptr [rax],al
  000000014000629F: 00 F3              add         bl,dh
  00000001400062A1: 02 00              add         al,byte ptr [rax]
  00000001400062A3: 00 00              add         byte ptr [rax],al
  00000001400062A5: 00 00              add         byte ptr [rax],al
  00000001400062A7: 00 F3              add         bl,dh
  00000001400062A9: 02 00              add         al,byte ptr [rax]
  00000001400062AB: 00 00              add         byte ptr [rax],al
  00000001400062AD: 00 00              add         byte ptr [rax],al
  00000001400062AF: 00 F3              add         bl,dh
  00000001400062B1: 02 00              add         al,byte ptr [rax]
  00000001400062B3: 00 00              add         byte ptr [rax],al
  00000001400062B5: 00 00              add         byte ptr [rax],al
  00000001400062B7: 00 F3              add         bl,dh
  00000001400062B9: 02 00              add         al,byte ptr [rax]
  00000001400062BB: 00 00              add         byte ptr [rax],al
  00000001400062BD: 00 00              add         byte ptr [rax],al
  00000001400062BF: 00 F3              add         bl,dh
  00000001400062C1: 02 00              add         al,byte ptr [rax]
  00000001400062C3: 00 00              add         byte ptr [rax],al
  00000001400062C5: 00 00              add         byte ptr [rax],al
  00000001400062C7: 00 F3              add         bl,dh
  00000001400062C9: 02 00              add         al,byte ptr [rax]
  00000001400062CB: 00 00              add         byte ptr [rax],al
  00000001400062CD: 00 00              add         byte ptr [rax],al
  00000001400062CF: 00 F3              add         bl,dh
  00000001400062D1: 02 00              add         al,byte ptr [rax]
  00000001400062D3: 00 00              add         byte ptr [rax],al
  00000001400062D5: 00 00              add         byte ptr [rax],al
  00000001400062D7: 00 F3              add         bl,dh
  00000001400062D9: 02 00              add         al,byte ptr [rax]
  00000001400062DB: 00 00              add         byte ptr [rax],al
  00000001400062DD: 00 00              add         byte ptr [rax],al
  00000001400062DF: 00 F3              add         bl,dh
  00000001400062E1: 02 00              add         al,byte ptr [rax]
  00000001400062E3: 00 00              add         byte ptr [rax],al
  00000001400062E5: 00 00              add         byte ptr [rax],al
  00000001400062E7: 00 F3              add         bl,dh
  00000001400062E9: 02 00              add         al,byte ptr [rax]
  00000001400062EB: 00 00              add         byte ptr [rax],al
  00000001400062ED: 00 00              add         byte ptr [rax],al
  00000001400062EF: 00 F3              add         bl,dh
  00000001400062F1: 02 00              add         al,byte ptr [rax]
  00000001400062F3: 00 00              add         byte ptr [rax],al
  00000001400062F5: 00 00              add         byte ptr [rax],al
  00000001400062F7: 00 F3              add         bl,dh
  00000001400062F9: 02 00              add         al,byte ptr [rax]
  00000001400062FB: 00 00              add         byte ptr [rax],al
  00000001400062FD: 00 00              add         byte ptr [rax],al
  00000001400062FF: 00 F3              add         bl,dh
  0000000140006301: 02 00              add         al,byte ptr [rax]
  0000000140006303: 00 00              add         byte ptr [rax],al
  0000000140006305: 00 00              add         byte ptr [rax],al
  0000000140006307: 00 F3              add         bl,dh
  0000000140006309: 02 00              add         al,byte ptr [rax]
  000000014000630B: 00 00              add         byte ptr [rax],al
  000000014000630D: 00 00              add         byte ptr [rax],al
  000000014000630F: 00 F3              add         bl,dh
  0000000140006311: 02 00              add         al,byte ptr [rax]
  0000000140006313: 00 00              add         byte ptr [rax],al
  0000000140006315: 00 00              add         byte ptr [rax],al
  0000000140006317: 00 F3              add         bl,dh
  0000000140006319: 02 00              add         al,byte ptr [rax]
  000000014000631B: 00 00              add         byte ptr [rax],al
  000000014000631D: 00 00              add         byte ptr [rax],al
  000000014000631F: 00 F3              add         bl,dh
  0000000140006321: 02 00              add         al,byte ptr [rax]
  0000000140006323: 00 00              add         byte ptr [rax],al
  0000000140006325: 00 00              add         byte ptr [rax],al
  0000000140006327: 00 F3              add         bl,dh
  0000000140006329: 02 00              add         al,byte ptr [rax]
  000000014000632B: 00 00              add         byte ptr [rax],al
  000000014000632D: 00 00              add         byte ptr [rax],al
  000000014000632F: 00 F3              add         bl,dh
  0000000140006331: 02 00              add         al,byte ptr [rax]
  0000000140006333: 00 00              add         byte ptr [rax],al
  0000000140006335: 00 00              add         byte ptr [rax],al
  0000000140006337: 00 F3              add         bl,dh
  0000000140006339: 02 00              add         al,byte ptr [rax]
  000000014000633B: 00 00              add         byte ptr [rax],al
  000000014000633D: 00 00              add         byte ptr [rax],al
  000000014000633F: 00 F3              add         bl,dh
  0000000140006341: 02 00              add         al,byte ptr [rax]
  0000000140006343: 00 00              add         byte ptr [rax],al
  0000000140006345: 00 00              add         byte ptr [rax],al
  0000000140006347: 00 F3              add         bl,dh
  0000000140006349: 02 00              add         al,byte ptr [rax]
  000000014000634B: 00 00              add         byte ptr [rax],al
  000000014000634D: 00 00              add         byte ptr [rax],al
  000000014000634F: 00 F3              add         bl,dh
  0000000140006351: 02 00              add         al,byte ptr [rax]
  0000000140006353: 00 00              add         byte ptr [rax],al
  0000000140006355: 00 00              add         byte ptr [rax],al
  0000000140006357: 00 F3              add         bl,dh
  0000000140006359: 02 00              add         al,byte ptr [rax]
  000000014000635B: 00 00              add         byte ptr [rax],al
  000000014000635D: 00 00              add         byte ptr [rax],al
  000000014000635F: 00 F3              add         bl,dh
  0000000140006361: 02 00              add         al,byte ptr [rax]
  0000000140006363: 00 00              add         byte ptr [rax],al
  0000000140006365: 00 00              add         byte ptr [rax],al
  0000000140006367: 00 F3              add         bl,dh
  0000000140006369: 02 00              add         al,byte ptr [rax]
  000000014000636B: 00 00              add         byte ptr [rax],al
  000000014000636D: 00 00              add         byte ptr [rax],al
  000000014000636F: 00 F3              add         bl,dh
  0000000140006371: 02 00              add         al,byte ptr [rax]
  0000000140006373: 00 00              add         byte ptr [rax],al
  0000000140006375: 00 00              add         byte ptr [rax],al
  0000000140006377: 00 F3              add         bl,dh
  0000000140006379: 02 00              add         al,byte ptr [rax]
  000000014000637B: 00 00              add         byte ptr [rax],al
  000000014000637D: 00 00              add         byte ptr [rax],al
  000000014000637F: 00 F3              add         bl,dh
  0000000140006381: 02 00              add         al,byte ptr [rax]
  0000000140006383: 00 00              add         byte ptr [rax],al
  0000000140006385: 00 00              add         byte ptr [rax],al
  0000000140006387: 00 F3              add         bl,dh
  0000000140006389: 02 00              add         al,byte ptr [rax]
  000000014000638B: 00 00              add         byte ptr [rax],al
  000000014000638D: 00 00              add         byte ptr [rax],al
  000000014000638F: 00 F3              add         bl,dh
  0000000140006391: 02 00              add         al,byte ptr [rax]
  0000000140006393: 00 00              add         byte ptr [rax],al
  0000000140006395: 00 00              add         byte ptr [rax],al
  0000000140006397: 00 F3              add         bl,dh
  0000000140006399: 02 00              add         al,byte ptr [rax]
  000000014000639B: 00 00              add         byte ptr [rax],al
  000000014000639D: 00 00              add         byte ptr [rax],al
  000000014000639F: 00 F3              add         bl,dh
  00000001400063A1: 02 00              add         al,byte ptr [rax]
  00000001400063A3: 00 00              add         byte ptr [rax],al
  00000001400063A5: 00 00              add         byte ptr [rax],al
  00000001400063A7: 00 F3              add         bl,dh
  00000001400063A9: 02 00              add         al,byte ptr [rax]
  00000001400063AB: 00 00              add         byte ptr [rax],al
  00000001400063AD: 00 00              add         byte ptr [rax],al
  00000001400063AF: 00 F3              add         bl,dh
  00000001400063B1: 02 00              add         al,byte ptr [rax]
  00000001400063B3: 00 00              add         byte ptr [rax],al
  00000001400063B5: 00 00              add         byte ptr [rax],al
  00000001400063B7: 00 F3              add         bl,dh
  00000001400063B9: 02 00              add         al,byte ptr [rax]
  00000001400063BB: 00 00              add         byte ptr [rax],al
  00000001400063BD: 00 00              add         byte ptr [rax],al
  00000001400063BF: 00 F3              add         bl,dh
  00000001400063C1: 02 00              add         al,byte ptr [rax]
  00000001400063C3: 00 00              add         byte ptr [rax],al
  00000001400063C5: 00 00              add         byte ptr [rax],al
  00000001400063C7: 00 F3              add         bl,dh
  00000001400063C9: 02 00              add         al,byte ptr [rax]
  00000001400063CB: 00 00              add         byte ptr [rax],al
  00000001400063CD: 00 00              add         byte ptr [rax],al
  00000001400063CF: 00 F3              add         bl,dh
  00000001400063D1: 02 00              add         al,byte ptr [rax]
  00000001400063D3: 00 00              add         byte ptr [rax],al
  00000001400063D5: 00 00              add         byte ptr [rax],al
  00000001400063D7: 00 F3              add         bl,dh
  00000001400063D9: 02 00              add         al,byte ptr [rax]
  00000001400063DB: 00 00              add         byte ptr [rax],al
  00000001400063DD: 00 00              add         byte ptr [rax],al
  00000001400063DF: 00 F3              add         bl,dh
  00000001400063E1: 02 00              add         al,byte ptr [rax]
  00000001400063E3: 00 00              add         byte ptr [rax],al
  00000001400063E5: 00 00              add         byte ptr [rax],al
  00000001400063E7: 00 F3              add         bl,dh
  00000001400063E9: 02 00              add         al,byte ptr [rax]
  00000001400063EB: 00 00              add         byte ptr [rax],al
  00000001400063ED: 00 00              add         byte ptr [rax],al
  00000001400063EF: 00 F3              add         bl,dh
  00000001400063F1: 02 00              add         al,byte ptr [rax]
  00000001400063F3: 00 00              add         byte ptr [rax],al
  00000001400063F5: 00 00              add         byte ptr [rax],al
  00000001400063F7: 00 F3              add         bl,dh
  00000001400063F9: 02 00              add         al,byte ptr [rax]
  00000001400063FB: 00 00              add         byte ptr [rax],al
  00000001400063FD: 00 00              add         byte ptr [rax],al
  00000001400063FF: 00 F3              add         bl,dh
  0000000140006401: 02 00              add         al,byte ptr [rax]
  0000000140006403: 00 00              add         byte ptr [rax],al
  0000000140006405: 00 00              add         byte ptr [rax],al
  0000000140006407: 00 F3              add         bl,dh
  0000000140006409: 02 00              add         al,byte ptr [rax]
  000000014000640B: 00 00              add         byte ptr [rax],al
  000000014000640D: 00 00              add         byte ptr [rax],al
  000000014000640F: 00 F3              add         bl,dh
  0000000140006411: 02 00              add         al,byte ptr [rax]
  0000000140006413: 00 00              add         byte ptr [rax],al
  0000000140006415: 00 00              add         byte ptr [rax],al
  0000000140006417: 00 F3              add         bl,dh
  0000000140006419: 02 00              add         al,byte ptr [rax]
  000000014000641B: 00 00              add         byte ptr [rax],al
  000000014000641D: 00 00              add         byte ptr [rax],al
  000000014000641F: 00 F3              add         bl,dh
  0000000140006421: 02 00              add         al,byte ptr [rax]
  0000000140006423: 00 00              add         byte ptr [rax],al
  0000000140006425: 00 00              add         byte ptr [rax],al
  0000000140006427: 00 F3              add         bl,dh
  0000000140006429: 02 00              add         al,byte ptr [rax]
  000000014000642B: 00 00              add         byte ptr [rax],al
  000000014000642D: 00 00              add         byte ptr [rax],al
  000000014000642F: 00 F3              add         bl,dh
  0000000140006431: 02 00              add         al,byte ptr [rax]
  0000000140006433: 00 00              add         byte ptr [rax],al
  0000000140006435: 00 00              add         byte ptr [rax],al
  0000000140006437: 00 F3              add         bl,dh
  0000000140006439: 02 00              add         al,byte ptr [rax]
  000000014000643B: 00 00              add         byte ptr [rax],al
  000000014000643D: 00 00              add         byte ptr [rax],al
  000000014000643F: 00 FA              add         dl,bh
  0000000140006441: 02 00              add         al,byte ptr [rax]
  0000000140006443: 00 00              add         byte ptr [rax],al
  0000000140006445: 00 00              add         byte ptr [rax],al
  0000000140006447: 00 FA              add         dl,bh
  0000000140006449: 02 00              add         al,byte ptr [rax]
  000000014000644B: 00 00              add         byte ptr [rax],al
  000000014000644D: 00 00              add         byte ptr [rax],al
  000000014000644F: 00 FA              add         dl,bh
  0000000140006451: 02 00              add         al,byte ptr [rax]
  0000000140006453: 00 00              add         byte ptr [rax],al
  0000000140006455: 00 00              add         byte ptr [rax],al
  0000000140006457: 00 FA              add         dl,bh
  0000000140006459: 02 00              add         al,byte ptr [rax]
  000000014000645B: 00 00              add         byte ptr [rax],al
  000000014000645D: 00 00              add         byte ptr [rax],al
  000000014000645F: 00 FA              add         dl,bh
  0000000140006461: 02 00              add         al,byte ptr [rax]
  0000000140006463: 00 00              add         byte ptr [rax],al
  0000000140006465: 00 00              add         byte ptr [rax],al
  0000000140006467: 00 FA              add         dl,bh
  0000000140006469: 02 00              add         al,byte ptr [rax]
  000000014000646B: 00 00              add         byte ptr [rax],al
  000000014000646D: 00 00              add         byte ptr [rax],al
  000000014000646F: 00 FA              add         dl,bh
  0000000140006471: 02 00              add         al,byte ptr [rax]
  0000000140006473: 00 00              add         byte ptr [rax],al
  0000000140006475: 00 00              add         byte ptr [rax],al
  0000000140006477: 00 FA              add         dl,bh
  0000000140006479: 02 00              add         al,byte ptr [rax]
  000000014000647B: 00 00              add         byte ptr [rax],al
  000000014000647D: 00 00              add         byte ptr [rax],al
  000000014000647F: 00 FA              add         dl,bh
  0000000140006481: 02 00              add         al,byte ptr [rax]
  0000000140006483: 00 00              add         byte ptr [rax],al
  0000000140006485: 00 00              add         byte ptr [rax],al
  0000000140006487: 00 FA              add         dl,bh
  0000000140006489: 02 00              add         al,byte ptr [rax]
  000000014000648B: 00 00              add         byte ptr [rax],al
  000000014000648D: 00 00              add         byte ptr [rax],al
  000000014000648F: 00 FA              add         dl,bh
  0000000140006491: 02 00              add         al,byte ptr [rax]
  0000000140006493: 00 00              add         byte ptr [rax],al
  0000000140006495: 00 00              add         byte ptr [rax],al
  0000000140006497: 00 FA              add         dl,bh
  0000000140006499: 02 00              add         al,byte ptr [rax]
  000000014000649B: 00 00              add         byte ptr [rax],al
  000000014000649D: 00 00              add         byte ptr [rax],al
  000000014000649F: 00 FA              add         dl,bh
  00000001400064A1: 02 00              add         al,byte ptr [rax]
  00000001400064A3: 00 00              add         byte ptr [rax],al
  00000001400064A5: 00 00              add         byte ptr [rax],al
  00000001400064A7: 00 FA              add         dl,bh
  00000001400064A9: 02 00              add         al,byte ptr [rax]
  00000001400064AB: 00 00              add         byte ptr [rax],al
  00000001400064AD: 00 00              add         byte ptr [rax],al
  00000001400064AF: 00 FA              add         dl,bh
  00000001400064B1: 02 00              add         al,byte ptr [rax]
  00000001400064B3: 00 00              add         byte ptr [rax],al
  00000001400064B5: 00 00              add         byte ptr [rax],al
  00000001400064B7: 00 FA              add         dl,bh
  00000001400064B9: 02 00              add         al,byte ptr [rax]
  00000001400064BB: 00 00              add         byte ptr [rax],al
  00000001400064BD: 00 00              add         byte ptr [rax],al
  00000001400064BF: 00 FA              add         dl,bh
  00000001400064C1: 02 00              add         al,byte ptr [rax]
  00000001400064C3: 00 00              add         byte ptr [rax],al
  00000001400064C5: 00 00              add         byte ptr [rax],al
  00000001400064C7: 00 FA              add         dl,bh
  00000001400064C9: 02 00              add         al,byte ptr [rax]
  00000001400064CB: 00 00              add         byte ptr [rax],al
  00000001400064CD: 00 00              add         byte ptr [rax],al
  00000001400064CF: 00 FA              add         dl,bh
  00000001400064D1: 02 00              add         al,byte ptr [rax]
  00000001400064D3: 00 00              add         byte ptr [rax],al
  00000001400064D5: 00 00              add         byte ptr [rax],al
  00000001400064D7: 00 FA              add         dl,bh
  00000001400064D9: 02 00              add         al,byte ptr [rax]
  00000001400064DB: 00 00              add         byte ptr [rax],al
  00000001400064DD: 00 00              add         byte ptr [rax],al
  00000001400064DF: 00 FA              add         dl,bh
  00000001400064E1: 02 00              add         al,byte ptr [rax]
  00000001400064E3: 00 00              add         byte ptr [rax],al
  00000001400064E5: 00 00              add         byte ptr [rax],al
  00000001400064E7: 00 FA              add         dl,bh
  00000001400064E9: 02 00              add         al,byte ptr [rax]
  00000001400064EB: 00 00              add         byte ptr [rax],al
  00000001400064ED: 00 00              add         byte ptr [rax],al
  00000001400064EF: 00 FA              add         dl,bh
  00000001400064F1: 02 00              add         al,byte ptr [rax]
  00000001400064F3: 00 00              add         byte ptr [rax],al
  00000001400064F5: 00 00              add         byte ptr [rax],al
  00000001400064F7: 00 FA              add         dl,bh
  00000001400064F9: 02 00              add         al,byte ptr [rax]
  00000001400064FB: 00 00              add         byte ptr [rax],al
  00000001400064FD: 00 00              add         byte ptr [rax],al
  00000001400064FF: 00 FA              add         dl,bh
  0000000140006501: 02 00              add         al,byte ptr [rax]
  0000000140006503: 00 00              add         byte ptr [rax],al
  0000000140006505: 00 00              add         byte ptr [rax],al
  0000000140006507: 00 FA              add         dl,bh
  0000000140006509: 02 00              add         al,byte ptr [rax]
  000000014000650B: 00 00              add         byte ptr [rax],al
  000000014000650D: 00 00              add         byte ptr [rax],al
  000000014000650F: 00 FA              add         dl,bh
  0000000140006511: 02 00              add         al,byte ptr [rax]
  0000000140006513: 00 00              add         byte ptr [rax],al
  0000000140006515: 00 00              add         byte ptr [rax],al
  0000000140006517: 00 FA              add         dl,bh
  0000000140006519: 02 00              add         al,byte ptr [rax]
  000000014000651B: 00 00              add         byte ptr [rax],al
  000000014000651D: 00 00              add         byte ptr [rax],al
  000000014000651F: 00 FA              add         dl,bh
  0000000140006521: 02 00              add         al,byte ptr [rax]
  0000000140006523: 00 00              add         byte ptr [rax],al
  0000000140006525: 00 00              add         byte ptr [rax],al
  0000000140006527: 00 FA              add         dl,bh
  0000000140006529: 02 00              add         al,byte ptr [rax]
  000000014000652B: 00 00              add         byte ptr [rax],al
  000000014000652D: 00 00              add         byte ptr [rax],al
  000000014000652F: 00 FA              add         dl,bh
  0000000140006531: 02 00              add         al,byte ptr [rax]
  0000000140006533: 00 00              add         byte ptr [rax],al
  0000000140006535: 00 00              add         byte ptr [rax],al
  0000000140006537: 00 FA              add         dl,bh
  0000000140006539: 02 00              add         al,byte ptr [rax]
  000000014000653B: 00 00              add         byte ptr [rax],al
  000000014000653D: 00 00              add         byte ptr [rax],al
  000000014000653F: 00 FA              add         dl,bh
  0000000140006541: 02 00              add         al,byte ptr [rax]
  0000000140006543: 00 00              add         byte ptr [rax],al
  0000000140006545: 00 00              add         byte ptr [rax],al
  0000000140006547: 00 FA              add         dl,bh
  0000000140006549: 02 00              add         al,byte ptr [rax]
  000000014000654B: 00 00              add         byte ptr [rax],al
  000000014000654D: 00 00              add         byte ptr [rax],al
  000000014000654F: 00 FA              add         dl,bh
  0000000140006551: 02 00              add         al,byte ptr [rax]
  0000000140006553: 00 00              add         byte ptr [rax],al
  0000000140006555: 00 00              add         byte ptr [rax],al
  0000000140006557: 00 FA              add         dl,bh
  0000000140006559: 02 00              add         al,byte ptr [rax]
  000000014000655B: 00 00              add         byte ptr [rax],al
  000000014000655D: 00 00              add         byte ptr [rax],al
  000000014000655F: 00 FA              add         dl,bh
  0000000140006561: 02 00              add         al,byte ptr [rax]
  0000000140006563: 00 00              add         byte ptr [rax],al
  0000000140006565: 00 00              add         byte ptr [rax],al
  0000000140006567: 00 FA              add         dl,bh
  0000000140006569: 02 00              add         al,byte ptr [rax]
  000000014000656B: 00 00              add         byte ptr [rax],al
  000000014000656D: 00 00              add         byte ptr [rax],al
  000000014000656F: 00 FA              add         dl,bh
  0000000140006571: 02 00              add         al,byte ptr [rax]
  0000000140006573: 00 00              add         byte ptr [rax],al
  0000000140006575: 00 00              add         byte ptr [rax],al
  0000000140006577: 00 FA              add         dl,bh
  0000000140006579: 02 00              add         al,byte ptr [rax]
  000000014000657B: 00 00              add         byte ptr [rax],al
  000000014000657D: 00 00              add         byte ptr [rax],al
  000000014000657F: 00 FA              add         dl,bh
  0000000140006581: 02 00              add         al,byte ptr [rax]
  0000000140006583: 00 00              add         byte ptr [rax],al
  0000000140006585: 00 00              add         byte ptr [rax],al
  0000000140006587: 00 FA              add         dl,bh
  0000000140006589: 02 00              add         al,byte ptr [rax]
  000000014000658B: 00 00              add         byte ptr [rax],al
  000000014000658D: 00 00              add         byte ptr [rax],al
  000000014000658F: 00 FA              add         dl,bh
  0000000140006591: 02 00              add         al,byte ptr [rax]
  0000000140006593: 00 00              add         byte ptr [rax],al
  0000000140006595: 00 00              add         byte ptr [rax],al
  0000000140006597: 00 FA              add         dl,bh
  0000000140006599: 02 00              add         al,byte ptr [rax]
  000000014000659B: 00 00              add         byte ptr [rax],al
  000000014000659D: 00 00              add         byte ptr [rax],al
  000000014000659F: 00 FA              add         dl,bh
  00000001400065A1: 02 00              add         al,byte ptr [rax]
  00000001400065A3: 00 00              add         byte ptr [rax],al
  00000001400065A5: 00 00              add         byte ptr [rax],al
  00000001400065A7: 00 FA              add         dl,bh
  00000001400065A9: 02 00              add         al,byte ptr [rax]
  00000001400065AB: 00 00              add         byte ptr [rax],al
  00000001400065AD: 00 00              add         byte ptr [rax],al
  00000001400065AF: 00 FA              add         dl,bh
  00000001400065B1: 02 00              add         al,byte ptr [rax]
  00000001400065B3: 00 00              add         byte ptr [rax],al
  00000001400065B5: 00 00              add         byte ptr [rax],al
  00000001400065B7: 00 FA              add         dl,bh
  00000001400065B9: 02 00              add         al,byte ptr [rax]
  00000001400065BB: 00 00              add         byte ptr [rax],al
  00000001400065BD: 00 00              add         byte ptr [rax],al
  00000001400065BF: 00 FA              add         dl,bh
  00000001400065C1: 02 00              add         al,byte ptr [rax]
  00000001400065C3: 00 00              add         byte ptr [rax],al
  00000001400065C5: 00 00              add         byte ptr [rax],al
  00000001400065C7: 00 FA              add         dl,bh
  00000001400065C9: 02 00              add         al,byte ptr [rax]
  00000001400065CB: 00 00              add         byte ptr [rax],al
  00000001400065CD: 00 00              add         byte ptr [rax],al
  00000001400065CF: 00 FA              add         dl,bh
  00000001400065D1: 02 00              add         al,byte ptr [rax]
  00000001400065D3: 00 00              add         byte ptr [rax],al
  00000001400065D5: 00 00              add         byte ptr [rax],al
  00000001400065D7: 00 FA              add         dl,bh
  00000001400065D9: 02 00              add         al,byte ptr [rax]
  00000001400065DB: 00 00              add         byte ptr [rax],al
  00000001400065DD: 00 00              add         byte ptr [rax],al
  00000001400065DF: 00 FA              add         dl,bh
  00000001400065E1: 02 00              add         al,byte ptr [rax]
  00000001400065E3: 00 00              add         byte ptr [rax],al
  00000001400065E5: 00 00              add         byte ptr [rax],al
  00000001400065E7: 00 FA              add         dl,bh
  00000001400065E9: 02 00              add         al,byte ptr [rax]
  00000001400065EB: 00 00              add         byte ptr [rax],al
  00000001400065ED: 00 00              add         byte ptr [rax],al
  00000001400065EF: 00 FA              add         dl,bh
  00000001400065F1: 02 00              add         al,byte ptr [rax]
  00000001400065F3: 00 00              add         byte ptr [rax],al
  00000001400065F5: 00 00              add         byte ptr [rax],al
  00000001400065F7: 00 FA              add         dl,bh
  00000001400065F9: 02 00              add         al,byte ptr [rax]
  00000001400065FB: 00 00              add         byte ptr [rax],al
  00000001400065FD: 00 00              add         byte ptr [rax],al
  00000001400065FF: 00 FA              add         dl,bh
  0000000140006601: 02 00              add         al,byte ptr [rax]
  0000000140006603: 00 00              add         byte ptr [rax],al
  0000000140006605: 00 00              add         byte ptr [rax],al
  0000000140006607: 00 FA              add         dl,bh
  0000000140006609: 02 00              add         al,byte ptr [rax]
  000000014000660B: 00 00              add         byte ptr [rax],al
  000000014000660D: 00 00              add         byte ptr [rax],al
  000000014000660F: 00 FA              add         dl,bh
  0000000140006611: 02 00              add         al,byte ptr [rax]
  0000000140006613: 00 00              add         byte ptr [rax],al
  0000000140006615: 00 00              add         byte ptr [rax],al
  0000000140006617: 00 FA              add         dl,bh
  0000000140006619: 02 00              add         al,byte ptr [rax]
  000000014000661B: 00 00              add         byte ptr [rax],al
  000000014000661D: 00 00              add         byte ptr [rax],al
  000000014000661F: 00 FA              add         dl,bh
  0000000140006621: 02 00              add         al,byte ptr [rax]
  0000000140006623: 00 00              add         byte ptr [rax],al
  0000000140006625: 00 00              add         byte ptr [rax],al
  0000000140006627: 00 FA              add         dl,bh
  0000000140006629: 02 00              add         al,byte ptr [rax]
  000000014000662B: 00 00              add         byte ptr [rax],al
  000000014000662D: 00 00              add         byte ptr [rax],al
  000000014000662F: 00 FA              add         dl,bh
  0000000140006631: 02 00              add         al,byte ptr [rax]
  0000000140006633: 00 00              add         byte ptr [rax],al
  0000000140006635: 00 00              add         byte ptr [rax],al
  0000000140006637: 00 FA              add         dl,bh
  0000000140006639: 02 00              add         al,byte ptr [rax]
  000000014000663B: 00 00              add         byte ptr [rax],al
  000000014000663D: 00 00              add         byte ptr [rax],al
  000000014000663F: 00 01              add         byte ptr [rcx],al
  0000000140006641: 03 00              add         eax,dword ptr [rax]
  0000000140006643: 00 00              add         byte ptr [rax],al
  0000000140006645: 00 00              add         byte ptr [rax],al
  0000000140006647: 00 01              add         byte ptr [rcx],al
  0000000140006649: 03 00              add         eax,dword ptr [rax]
  000000014000664B: 00 00              add         byte ptr [rax],al
  000000014000664D: 00 00              add         byte ptr [rax],al
  000000014000664F: 00 01              add         byte ptr [rcx],al
  0000000140006651: 03 00              add         eax,dword ptr [rax]
  0000000140006653: 00 00              add         byte ptr [rax],al
  0000000140006655: 00 00              add         byte ptr [rax],al
  0000000140006657: 00 01              add         byte ptr [rcx],al
  0000000140006659: 03 00              add         eax,dword ptr [rax]
  000000014000665B: 00 00              add         byte ptr [rax],al
  000000014000665D: 00 00              add         byte ptr [rax],al
  000000014000665F: 00 01              add         byte ptr [rcx],al
  0000000140006661: 03 00              add         eax,dword ptr [rax]
  0000000140006663: 00 00              add         byte ptr [rax],al
  0000000140006665: 00 00              add         byte ptr [rax],al
  0000000140006667: 00 01              add         byte ptr [rcx],al
  0000000140006669: 03 00              add         eax,dword ptr [rax]
  000000014000666B: 00 00              add         byte ptr [rax],al
  000000014000666D: 00 00              add         byte ptr [rax],al
  000000014000666F: 00 01              add         byte ptr [rcx],al
  0000000140006671: 03 00              add         eax,dword ptr [rax]
  0000000140006673: 00 00              add         byte ptr [rax],al
  0000000140006675: 00 00              add         byte ptr [rax],al
  0000000140006677: 00 01              add         byte ptr [rcx],al
  0000000140006679: 03 00              add         eax,dword ptr [rax]
  000000014000667B: 00 00              add         byte ptr [rax],al
  000000014000667D: 00 00              add         byte ptr [rax],al
  000000014000667F: 00 01              add         byte ptr [rcx],al
  0000000140006681: 03 00              add         eax,dword ptr [rax]
  0000000140006683: 00 00              add         byte ptr [rax],al
  0000000140006685: 00 00              add         byte ptr [rax],al
  0000000140006687: 00 01              add         byte ptr [rcx],al
  0000000140006689: 03 00              add         eax,dword ptr [rax]
  000000014000668B: 00 00              add         byte ptr [rax],al
  000000014000668D: 00 00              add         byte ptr [rax],al
  000000014000668F: 00 01              add         byte ptr [rcx],al
  0000000140006691: 03 00              add         eax,dword ptr [rax]
  0000000140006693: 00 00              add         byte ptr [rax],al
  0000000140006695: 00 00              add         byte ptr [rax],al
  0000000140006697: 00 01              add         byte ptr [rcx],al
  0000000140006699: 03 00              add         eax,dword ptr [rax]
  000000014000669B: 00 00              add         byte ptr [rax],al
  000000014000669D: 00 00              add         byte ptr [rax],al
  000000014000669F: 00 01              add         byte ptr [rcx],al
  00000001400066A1: 03 00              add         eax,dword ptr [rax]
  00000001400066A3: 00 00              add         byte ptr [rax],al
  00000001400066A5: 00 00              add         byte ptr [rax],al
  00000001400066A7: 00 01              add         byte ptr [rcx],al
  00000001400066A9: 03 00              add         eax,dword ptr [rax]
  00000001400066AB: 00 00              add         byte ptr [rax],al
  00000001400066AD: 00 00              add         byte ptr [rax],al
  00000001400066AF: 00 01              add         byte ptr [rcx],al
  00000001400066B1: 03 00              add         eax,dword ptr [rax]
  00000001400066B3: 00 00              add         byte ptr [rax],al
  00000001400066B5: 00 00              add         byte ptr [rax],al
  00000001400066B7: 00 01              add         byte ptr [rcx],al
  00000001400066B9: 03 00              add         eax,dword ptr [rax]
  00000001400066BB: 00 00              add         byte ptr [rax],al
  00000001400066BD: 00 00              add         byte ptr [rax],al
  00000001400066BF: 00 01              add         byte ptr [rcx],al
  00000001400066C1: 03 00              add         eax,dword ptr [rax]
  00000001400066C3: 00 00              add         byte ptr [rax],al
  00000001400066C5: 00 00              add         byte ptr [rax],al
  00000001400066C7: 00 01              add         byte ptr [rcx],al
  00000001400066C9: 03 00              add         eax,dword ptr [rax]
  00000001400066CB: 00 00              add         byte ptr [rax],al
  00000001400066CD: 00 00              add         byte ptr [rax],al
  00000001400066CF: 00 01              add         byte ptr [rcx],al
  00000001400066D1: 03 00              add         eax,dword ptr [rax]
  00000001400066D3: 00 00              add         byte ptr [rax],al
  00000001400066D5: 00 00              add         byte ptr [rax],al
  00000001400066D7: 00 01              add         byte ptr [rcx],al
  00000001400066D9: 03 00              add         eax,dword ptr [rax]
  00000001400066DB: 00 00              add         byte ptr [rax],al
  00000001400066DD: 00 00              add         byte ptr [rax],al
  00000001400066DF: 00 01              add         byte ptr [rcx],al
  00000001400066E1: 03 00              add         eax,dword ptr [rax]
  00000001400066E3: 00 00              add         byte ptr [rax],al
  00000001400066E5: 00 00              add         byte ptr [rax],al
  00000001400066E7: 00 01              add         byte ptr [rcx],al
  00000001400066E9: 03 00              add         eax,dword ptr [rax]
  00000001400066EB: 00 00              add         byte ptr [rax],al
  00000001400066ED: 00 00              add         byte ptr [rax],al
  00000001400066EF: 00 01              add         byte ptr [rcx],al
  00000001400066F1: 03 00              add         eax,dword ptr [rax]
  00000001400066F3: 00 00              add         byte ptr [rax],al
  00000001400066F5: 00 00              add         byte ptr [rax],al
  00000001400066F7: 00 01              add         byte ptr [rcx],al
  00000001400066F9: 03 00              add         eax,dword ptr [rax]
  00000001400066FB: 00 00              add         byte ptr [rax],al
  00000001400066FD: 00 00              add         byte ptr [rax],al
  00000001400066FF: 00 01              add         byte ptr [rcx],al
  0000000140006701: 03 00              add         eax,dword ptr [rax]
  0000000140006703: 00 00              add         byte ptr [rax],al
  0000000140006705: 00 00              add         byte ptr [rax],al
  0000000140006707: 00 01              add         byte ptr [rcx],al
  0000000140006709: 03 00              add         eax,dword ptr [rax]
  000000014000670B: 00 00              add         byte ptr [rax],al
  000000014000670D: 00 00              add         byte ptr [rax],al
  000000014000670F: 00 01              add         byte ptr [rcx],al
  0000000140006711: 03 00              add         eax,dword ptr [rax]
  0000000140006713: 00 00              add         byte ptr [rax],al
  0000000140006715: 00 00              add         byte ptr [rax],al
  0000000140006717: 00 01              add         byte ptr [rcx],al
  0000000140006719: 03 00              add         eax,dword ptr [rax]
  000000014000671B: 00 00              add         byte ptr [rax],al
  000000014000671D: 00 00              add         byte ptr [rax],al
  000000014000671F: 00 01              add         byte ptr [rcx],al
  0000000140006721: 03 00              add         eax,dword ptr [rax]
  0000000140006723: 00 00              add         byte ptr [rax],al
  0000000140006725: 00 00              add         byte ptr [rax],al
  0000000140006727: 00 01              add         byte ptr [rcx],al
  0000000140006729: 03 00              add         eax,dword ptr [rax]
  000000014000672B: 00 00              add         byte ptr [rax],al
  000000014000672D: 00 00              add         byte ptr [rax],al
  000000014000672F: 00 01              add         byte ptr [rcx],al
  0000000140006731: 03 00              add         eax,dword ptr [rax]
  0000000140006733: 00 00              add         byte ptr [rax],al
  0000000140006735: 00 00              add         byte ptr [rax],al
  0000000140006737: 00 01              add         byte ptr [rcx],al
  0000000140006739: 03 00              add         eax,dword ptr [rax]
  000000014000673B: 00 00              add         byte ptr [rax],al
  000000014000673D: 00 00              add         byte ptr [rax],al
  000000014000673F: 00 01              add         byte ptr [rcx],al
  0000000140006741: 03 00              add         eax,dword ptr [rax]
  0000000140006743: 00 00              add         byte ptr [rax],al
  0000000140006745: 00 00              add         byte ptr [rax],al
  0000000140006747: 00 01              add         byte ptr [rcx],al
  0000000140006749: 03 00              add         eax,dword ptr [rax]
  000000014000674B: 00 00              add         byte ptr [rax],al
  000000014000674D: 00 00              add         byte ptr [rax],al
  000000014000674F: 00 01              add         byte ptr [rcx],al
  0000000140006751: 03 00              add         eax,dword ptr [rax]
  0000000140006753: 00 00              add         byte ptr [rax],al
  0000000140006755: 00 00              add         byte ptr [rax],al
  0000000140006757: 00 01              add         byte ptr [rcx],al
  0000000140006759: 03 00              add         eax,dword ptr [rax]
  000000014000675B: 00 00              add         byte ptr [rax],al
  000000014000675D: 00 00              add         byte ptr [rax],al
  000000014000675F: 00 01              add         byte ptr [rcx],al
  0000000140006761: 03 00              add         eax,dword ptr [rax]
  0000000140006763: 00 00              add         byte ptr [rax],al
  0000000140006765: 00 00              add         byte ptr [rax],al
  0000000140006767: 00 01              add         byte ptr [rcx],al
  0000000140006769: 03 00              add         eax,dword ptr [rax]
  000000014000676B: 00 00              add         byte ptr [rax],al
  000000014000676D: 00 00              add         byte ptr [rax],al
  000000014000676F: 00 01              add         byte ptr [rcx],al
  0000000140006771: 03 00              add         eax,dword ptr [rax]
  0000000140006773: 00 00              add         byte ptr [rax],al
  0000000140006775: 00 00              add         byte ptr [rax],al
  0000000140006777: 00 01              add         byte ptr [rcx],al
  0000000140006779: 03 00              add         eax,dword ptr [rax]
  000000014000677B: 00 00              add         byte ptr [rax],al
  000000014000677D: 00 00              add         byte ptr [rax],al
  000000014000677F: 00 01              add         byte ptr [rcx],al
  0000000140006781: 03 00              add         eax,dword ptr [rax]
  0000000140006783: 00 00              add         byte ptr [rax],al
  0000000140006785: 00 00              add         byte ptr [rax],al
  0000000140006787: 00 01              add         byte ptr [rcx],al
  0000000140006789: 03 00              add         eax,dword ptr [rax]
  000000014000678B: 00 00              add         byte ptr [rax],al
  000000014000678D: 00 00              add         byte ptr [rax],al
  000000014000678F: 00 01              add         byte ptr [rcx],al
  0000000140006791: 03 00              add         eax,dword ptr [rax]
  0000000140006793: 00 00              add         byte ptr [rax],al
  0000000140006795: 00 00              add         byte ptr [rax],al
  0000000140006797: 00 01              add         byte ptr [rcx],al
  0000000140006799: 03 00              add         eax,dword ptr [rax]
  000000014000679B: 00 00              add         byte ptr [rax],al
  000000014000679D: 00 00              add         byte ptr [rax],al
  000000014000679F: 00 01              add         byte ptr [rcx],al
  00000001400067A1: 03 00              add         eax,dword ptr [rax]
  00000001400067A3: 00 00              add         byte ptr [rax],al
  00000001400067A5: 00 00              add         byte ptr [rax],al
  00000001400067A7: 00 01              add         byte ptr [rcx],al
  00000001400067A9: 03 00              add         eax,dword ptr [rax]
  00000001400067AB: 00 00              add         byte ptr [rax],al
  00000001400067AD: 00 00              add         byte ptr [rax],al
  00000001400067AF: 00 01              add         byte ptr [rcx],al
  00000001400067B1: 03 00              add         eax,dword ptr [rax]
  00000001400067B3: 00 00              add         byte ptr [rax],al
  00000001400067B5: 00 00              add         byte ptr [rax],al
  00000001400067B7: 00 01              add         byte ptr [rcx],al
  00000001400067B9: 03 00              add         eax,dword ptr [rax]
  00000001400067BB: 00 00              add         byte ptr [rax],al
  00000001400067BD: 00 00              add         byte ptr [rax],al
  00000001400067BF: 00 01              add         byte ptr [rcx],al
  00000001400067C1: 03 00              add         eax,dword ptr [rax]
  00000001400067C3: 00 00              add         byte ptr [rax],al
  00000001400067C5: 00 00              add         byte ptr [rax],al
  00000001400067C7: 00 01              add         byte ptr [rcx],al
  00000001400067C9: 03 00              add         eax,dword ptr [rax]
  00000001400067CB: 00 00              add         byte ptr [rax],al
  00000001400067CD: 00 00              add         byte ptr [rax],al
  00000001400067CF: 00 01              add         byte ptr [rcx],al
  00000001400067D1: 03 00              add         eax,dword ptr [rax]
  00000001400067D3: 00 00              add         byte ptr [rax],al
  00000001400067D5: 00 00              add         byte ptr [rax],al
  00000001400067D7: 00 01              add         byte ptr [rcx],al
  00000001400067D9: 03 00              add         eax,dword ptr [rax]
  00000001400067DB: 00 00              add         byte ptr [rax],al
  00000001400067DD: 00 00              add         byte ptr [rax],al
  00000001400067DF: 00 01              add         byte ptr [rcx],al
  00000001400067E1: 03 00              add         eax,dword ptr [rax]
  00000001400067E3: 00 00              add         byte ptr [rax],al
  00000001400067E5: 00 00              add         byte ptr [rax],al
  00000001400067E7: 00 01              add         byte ptr [rcx],al
  00000001400067E9: 03 00              add         eax,dword ptr [rax]
  00000001400067EB: 00 00              add         byte ptr [rax],al
  00000001400067ED: 00 00              add         byte ptr [rax],al
  00000001400067EF: 00 01              add         byte ptr [rcx],al
  00000001400067F1: 03 00              add         eax,dword ptr [rax]
  00000001400067F3: 00 00              add         byte ptr [rax],al
  00000001400067F5: 00 00              add         byte ptr [rax],al
  00000001400067F7: 00 01              add         byte ptr [rcx],al
  00000001400067F9: 03 00              add         eax,dword ptr [rax]
  00000001400067FB: 00 00              add         byte ptr [rax],al
  00000001400067FD: 00 00              add         byte ptr [rax],al
  00000001400067FF: 00 01              add         byte ptr [rcx],al
  0000000140006801: 03 00              add         eax,dword ptr [rax]
  0000000140006803: 00 00              add         byte ptr [rax],al
  0000000140006805: 00 00              add         byte ptr [rax],al
  0000000140006807: 00 01              add         byte ptr [rcx],al
  0000000140006809: 03 00              add         eax,dword ptr [rax]
  000000014000680B: 00 00              add         byte ptr [rax],al
  000000014000680D: 00 00              add         byte ptr [rax],al
  000000014000680F: 00 01              add         byte ptr [rcx],al
  0000000140006811: 03 00              add         eax,dword ptr [rax]
  0000000140006813: 00 00              add         byte ptr [rax],al
  0000000140006815: 00 00              add         byte ptr [rax],al
  0000000140006817: 00 01              add         byte ptr [rcx],al
  0000000140006819: 03 00              add         eax,dword ptr [rax]
  000000014000681B: 00 00              add         byte ptr [rax],al
  000000014000681D: 00 00              add         byte ptr [rax],al
  000000014000681F: 00 01              add         byte ptr [rcx],al
  0000000140006821: 03 00              add         eax,dword ptr [rax]
  0000000140006823: 00 00              add         byte ptr [rax],al
  0000000140006825: 00 00              add         byte ptr [rax],al
  0000000140006827: 00 01              add         byte ptr [rcx],al
  0000000140006829: 03 00              add         eax,dword ptr [rax]
  000000014000682B: 00 00              add         byte ptr [rax],al
  000000014000682D: 00 00              add         byte ptr [rax],al
  000000014000682F: 00 01              add         byte ptr [rcx],al
  0000000140006831: 03 00              add         eax,dword ptr [rax]
  0000000140006833: 00 00              add         byte ptr [rax],al
  0000000140006835: 00 00              add         byte ptr [rax],al
  0000000140006837: 00 01              add         byte ptr [rcx],al
  0000000140006839: 03 00              add         eax,dword ptr [rax]
  000000014000683B: 00 00              add         byte ptr [rax],al
  000000014000683D: 00 00              add         byte ptr [rax],al
  000000014000683F: 00 08              add         byte ptr [rax],cl
  0000000140006841: 03 00              add         eax,dword ptr [rax]
  0000000140006843: 00 00              add         byte ptr [rax],al
  0000000140006845: 00 00              add         byte ptr [rax],al
  0000000140006847: 00 08              add         byte ptr [rax],cl
  0000000140006849: 03 00              add         eax,dword ptr [rax]
  000000014000684B: 00 00              add         byte ptr [rax],al
  000000014000684D: 00 00              add         byte ptr [rax],al
  000000014000684F: 00 08              add         byte ptr [rax],cl
  0000000140006851: 03 00              add         eax,dword ptr [rax]
  0000000140006853: 00 00              add         byte ptr [rax],al
  0000000140006855: 00 00              add         byte ptr [rax],al
  0000000140006857: 00 08              add         byte ptr [rax],cl
  0000000140006859: 03 00              add         eax,dword ptr [rax]
  000000014000685B: 00 00              add         byte ptr [rax],al
  000000014000685D: 00 00              add         byte ptr [rax],al
  000000014000685F: 00 08              add         byte ptr [rax],cl
  0000000140006861: 03 00              add         eax,dword ptr [rax]
  0000000140006863: 00 00              add         byte ptr [rax],al
  0000000140006865: 00 00              add         byte ptr [rax],al
  0000000140006867: 00 08              add         byte ptr [rax],cl
  0000000140006869: 03 00              add         eax,dword ptr [rax]
  000000014000686B: 00 00              add         byte ptr [rax],al
  000000014000686D: 00 00              add         byte ptr [rax],al
  000000014000686F: 00 08              add         byte ptr [rax],cl
  0000000140006871: 03 00              add         eax,dword ptr [rax]
  0000000140006873: 00 00              add         byte ptr [rax],al
  0000000140006875: 00 00              add         byte ptr [rax],al
  0000000140006877: 00 08              add         byte ptr [rax],cl
  0000000140006879: 03 00              add         eax,dword ptr [rax]
  000000014000687B: 00 00              add         byte ptr [rax],al
  000000014000687D: 00 00              add         byte ptr [rax],al
  000000014000687F: 00 08              add         byte ptr [rax],cl
  0000000140006881: 03 00              add         eax,dword ptr [rax]
  0000000140006883: 00 00              add         byte ptr [rax],al
  0000000140006885: 00 00              add         byte ptr [rax],al
  0000000140006887: 00 08              add         byte ptr [rax],cl
  0000000140006889: 03 00              add         eax,dword ptr [rax]
  000000014000688B: 00 00              add         byte ptr [rax],al
  000000014000688D: 00 00              add         byte ptr [rax],al
  000000014000688F: 00 08              add         byte ptr [rax],cl
  0000000140006891: 03 00              add         eax,dword ptr [rax]
  0000000140006893: 00 00              add         byte ptr [rax],al
  0000000140006895: 00 00              add         byte ptr [rax],al
  0000000140006897: 00 08              add         byte ptr [rax],cl
  0000000140006899: 03 00              add         eax,dword ptr [rax]
  000000014000689B: 00 00              add         byte ptr [rax],al
  000000014000689D: 00 00              add         byte ptr [rax],al
  000000014000689F: 00 08              add         byte ptr [rax],cl
  00000001400068A1: 03 00              add         eax,dword ptr [rax]
  00000001400068A3: 00 00              add         byte ptr [rax],al
  00000001400068A5: 00 00              add         byte ptr [rax],al
  00000001400068A7: 00 08              add         byte ptr [rax],cl
  00000001400068A9: 03 00              add         eax,dword ptr [rax]
  00000001400068AB: 00 00              add         byte ptr [rax],al
  00000001400068AD: 00 00              add         byte ptr [rax],al
  00000001400068AF: 00 08              add         byte ptr [rax],cl
  00000001400068B1: 03 00              add         eax,dword ptr [rax]
  00000001400068B3: 00 00              add         byte ptr [rax],al
  00000001400068B5: 00 00              add         byte ptr [rax],al
  00000001400068B7: 00 08              add         byte ptr [rax],cl
  00000001400068B9: 03 00              add         eax,dword ptr [rax]
  00000001400068BB: 00 00              add         byte ptr [rax],al
  00000001400068BD: 00 00              add         byte ptr [rax],al
  00000001400068BF: 00 08              add         byte ptr [rax],cl
  00000001400068C1: 03 00              add         eax,dword ptr [rax]
  00000001400068C3: 00 00              add         byte ptr [rax],al
  00000001400068C5: 00 00              add         byte ptr [rax],al
  00000001400068C7: 00 08              add         byte ptr [rax],cl
  00000001400068C9: 03 00              add         eax,dword ptr [rax]
  00000001400068CB: 00 00              add         byte ptr [rax],al
  00000001400068CD: 00 00              add         byte ptr [rax],al
  00000001400068CF: 00 08              add         byte ptr [rax],cl
  00000001400068D1: 03 00              add         eax,dword ptr [rax]
  00000001400068D3: 00 00              add         byte ptr [rax],al
  00000001400068D5: 00 00              add         byte ptr [rax],al
  00000001400068D7: 00 08              add         byte ptr [rax],cl
  00000001400068D9: 03 00              add         eax,dword ptr [rax]
  00000001400068DB: 00 00              add         byte ptr [rax],al
  00000001400068DD: 00 00              add         byte ptr [rax],al
  00000001400068DF: 00 08              add         byte ptr [rax],cl
  00000001400068E1: 03 00              add         eax,dword ptr [rax]
  00000001400068E3: 00 00              add         byte ptr [rax],al
  00000001400068E5: 00 00              add         byte ptr [rax],al
  00000001400068E7: 00 08              add         byte ptr [rax],cl
  00000001400068E9: 03 00              add         eax,dword ptr [rax]
  00000001400068EB: 00 00              add         byte ptr [rax],al
  00000001400068ED: 00 00              add         byte ptr [rax],al
  00000001400068EF: 00 08              add         byte ptr [rax],cl
  00000001400068F1: 03 00              add         eax,dword ptr [rax]
  00000001400068F3: 00 00              add         byte ptr [rax],al
  00000001400068F5: 00 00              add         byte ptr [rax],al
  00000001400068F7: 00 08              add         byte ptr [rax],cl
  00000001400068F9: 03 00              add         eax,dword ptr [rax]
  00000001400068FB: 00 00              add         byte ptr [rax],al
  00000001400068FD: 00 00              add         byte ptr [rax],al
  00000001400068FF: 00 08              add         byte ptr [rax],cl
  0000000140006901: 03 00              add         eax,dword ptr [rax]
  0000000140006903: 00 00              add         byte ptr [rax],al
  0000000140006905: 00 00              add         byte ptr [rax],al
  0000000140006907: 00 08              add         byte ptr [rax],cl
  0000000140006909: 03 00              add         eax,dword ptr [rax]
  000000014000690B: 00 00              add         byte ptr [rax],al
  000000014000690D: 00 00              add         byte ptr [rax],al
  000000014000690F: 00 08              add         byte ptr [rax],cl
  0000000140006911: 03 00              add         eax,dword ptr [rax]
  0000000140006913: 00 00              add         byte ptr [rax],al
  0000000140006915: 00 00              add         byte ptr [rax],al
  0000000140006917: 00 08              add         byte ptr [rax],cl
  0000000140006919: 03 00              add         eax,dword ptr [rax]
  000000014000691B: 00 00              add         byte ptr [rax],al
  000000014000691D: 00 00              add         byte ptr [rax],al
  000000014000691F: 00 08              add         byte ptr [rax],cl
  0000000140006921: 03 00              add         eax,dword ptr [rax]
  0000000140006923: 00 00              add         byte ptr [rax],al
  0000000140006925: 00 00              add         byte ptr [rax],al
  0000000140006927: 00 08              add         byte ptr [rax],cl
  0000000140006929: 03 00              add         eax,dword ptr [rax]
  000000014000692B: 00 00              add         byte ptr [rax],al
  000000014000692D: 00 00              add         byte ptr [rax],al
  000000014000692F: 00 08              add         byte ptr [rax],cl
  0000000140006931: 03 00              add         eax,dword ptr [rax]
  0000000140006933: 00 00              add         byte ptr [rax],al
  0000000140006935: 00 00              add         byte ptr [rax],al
  0000000140006937: 00 08              add         byte ptr [rax],cl
  0000000140006939: 03 00              add         eax,dword ptr [rax]
  000000014000693B: 00 00              add         byte ptr [rax],al
  000000014000693D: 00 00              add         byte ptr [rax],al
  000000014000693F: 00 08              add         byte ptr [rax],cl
  0000000140006941: 03 00              add         eax,dword ptr [rax]
  0000000140006943: 00 00              add         byte ptr [rax],al
  0000000140006945: 00 00              add         byte ptr [rax],al
  0000000140006947: 00 08              add         byte ptr [rax],cl
  0000000140006949: 03 00              add         eax,dword ptr [rax]
  000000014000694B: 00 00              add         byte ptr [rax],al
  000000014000694D: 00 00              add         byte ptr [rax],al
  000000014000694F: 00 08              add         byte ptr [rax],cl
  0000000140006951: 03 00              add         eax,dword ptr [rax]
  0000000140006953: 00 00              add         byte ptr [rax],al
  0000000140006955: 00 00              add         byte ptr [rax],al
  0000000140006957: 00 08              add         byte ptr [rax],cl
  0000000140006959: 03 00              add         eax,dword ptr [rax]
  000000014000695B: 00 00              add         byte ptr [rax],al
  000000014000695D: 00 00              add         byte ptr [rax],al
  000000014000695F: 00 08              add         byte ptr [rax],cl
  0000000140006961: 03 00              add         eax,dword ptr [rax]
  0000000140006963: 00 00              add         byte ptr [rax],al
  0000000140006965: 00 00              add         byte ptr [rax],al
  0000000140006967: 00 08              add         byte ptr [rax],cl
  0000000140006969: 03 00              add         eax,dword ptr [rax]
  000000014000696B: 00 00              add         byte ptr [rax],al
  000000014000696D: 00 00              add         byte ptr [rax],al
  000000014000696F: 00 08              add         byte ptr [rax],cl
  0000000140006971: 03 00              add         eax,dword ptr [rax]
  0000000140006973: 00 00              add         byte ptr [rax],al
  0000000140006975: 00 00              add         byte ptr [rax],al
  0000000140006977: 00 08              add         byte ptr [rax],cl
  0000000140006979: 03 00              add         eax,dword ptr [rax]
  000000014000697B: 00 00              add         byte ptr [rax],al
  000000014000697D: 00 00              add         byte ptr [rax],al
  000000014000697F: 00 08              add         byte ptr [rax],cl
  0000000140006981: 03 00              add         eax,dword ptr [rax]
  0000000140006983: 00 00              add         byte ptr [rax],al
  0000000140006985: 00 00              add         byte ptr [rax],al
  0000000140006987: 00 08              add         byte ptr [rax],cl
  0000000140006989: 03 00              add         eax,dword ptr [rax]
  000000014000698B: 00 00              add         byte ptr [rax],al
  000000014000698D: 00 00              add         byte ptr [rax],al
  000000014000698F: 00 08              add         byte ptr [rax],cl
  0000000140006991: 03 00              add         eax,dword ptr [rax]
  0000000140006993: 00 00              add         byte ptr [rax],al
  0000000140006995: 00 00              add         byte ptr [rax],al
  0000000140006997: 00 08              add         byte ptr [rax],cl
  0000000140006999: 03 00              add         eax,dword ptr [rax]
  000000014000699B: 00 00              add         byte ptr [rax],al
  000000014000699D: 00 00              add         byte ptr [rax],al
  000000014000699F: 00 08              add         byte ptr [rax],cl
  00000001400069A1: 03 00              add         eax,dword ptr [rax]
  00000001400069A3: 00 00              add         byte ptr [rax],al
  00000001400069A5: 00 00              add         byte ptr [rax],al
  00000001400069A7: 00 08              add         byte ptr [rax],cl
  00000001400069A9: 03 00              add         eax,dword ptr [rax]
  00000001400069AB: 00 00              add         byte ptr [rax],al
  00000001400069AD: 00 00              add         byte ptr [rax],al
  00000001400069AF: 00 08              add         byte ptr [rax],cl
  00000001400069B1: 03 00              add         eax,dword ptr [rax]
  00000001400069B3: 00 00              add         byte ptr [rax],al
  00000001400069B5: 00 00              add         byte ptr [rax],al
  00000001400069B7: 00 08              add         byte ptr [rax],cl
  00000001400069B9: 03 00              add         eax,dword ptr [rax]
  00000001400069BB: 00 00              add         byte ptr [rax],al
  00000001400069BD: 00 00              add         byte ptr [rax],al
  00000001400069BF: 00 08              add         byte ptr [rax],cl
  00000001400069C1: 03 00              add         eax,dword ptr [rax]
  00000001400069C3: 00 00              add         byte ptr [rax],al
  00000001400069C5: 00 00              add         byte ptr [rax],al
  00000001400069C7: 00 08              add         byte ptr [rax],cl
  00000001400069C9: 03 00              add         eax,dword ptr [rax]
  00000001400069CB: 00 00              add         byte ptr [rax],al
  00000001400069CD: 00 00              add         byte ptr [rax],al
  00000001400069CF: 00 08              add         byte ptr [rax],cl
  00000001400069D1: 03 00              add         eax,dword ptr [rax]
  00000001400069D3: 00 00              add         byte ptr [rax],al
  00000001400069D5: 00 00              add         byte ptr [rax],al
  00000001400069D7: 00 08              add         byte ptr [rax],cl
  00000001400069D9: 03 00              add         eax,dword ptr [rax]
  00000001400069DB: 00 00              add         byte ptr [rax],al
  00000001400069DD: 00 00              add         byte ptr [rax],al
  00000001400069DF: 00 08              add         byte ptr [rax],cl
  00000001400069E1: 03 00              add         eax,dword ptr [rax]
  00000001400069E3: 00 00              add         byte ptr [rax],al
  00000001400069E5: 00 00              add         byte ptr [rax],al
  00000001400069E7: 00 08              add         byte ptr [rax],cl
  00000001400069E9: 03 00              add         eax,dword ptr [rax]
  00000001400069EB: 00 00              add         byte ptr [rax],al
  00000001400069ED: 00 00              add         byte ptr [rax],al
  00000001400069EF: 00 08              add         byte ptr [rax],cl
  00000001400069F1: 03 00              add         eax,dword ptr [rax]
  00000001400069F3: 00 00              add         byte ptr [rax],al
  00000001400069F5: 00 00              add         byte ptr [rax],al
  00000001400069F7: 00 08              add         byte ptr [rax],cl
  00000001400069F9: 03 00              add         eax,dword ptr [rax]
  00000001400069FB: 00 00              add         byte ptr [rax],al
  00000001400069FD: 00 00              add         byte ptr [rax],al
  00000001400069FF: 00 08              add         byte ptr [rax],cl
  0000000140006A01: 03 00              add         eax,dword ptr [rax]
  0000000140006A03: 00 00              add         byte ptr [rax],al
  0000000140006A05: 00 00              add         byte ptr [rax],al
  0000000140006A07: 00 08              add         byte ptr [rax],cl
  0000000140006A09: 03 00              add         eax,dword ptr [rax]
  0000000140006A0B: 00 00              add         byte ptr [rax],al
  0000000140006A0D: 00 00              add         byte ptr [rax],al
  0000000140006A0F: 00 08              add         byte ptr [rax],cl
  0000000140006A11: 03 00              add         eax,dword ptr [rax]
  0000000140006A13: 00 00              add         byte ptr [rax],al
  0000000140006A15: 00 00              add         byte ptr [rax],al
  0000000140006A17: 00 08              add         byte ptr [rax],cl
  0000000140006A19: 03 00              add         eax,dword ptr [rax]
  0000000140006A1B: 00 00              add         byte ptr [rax],al
  0000000140006A1D: 00 00              add         byte ptr [rax],al
  0000000140006A1F: 00 08              add         byte ptr [rax],cl
  0000000140006A21: 03 00              add         eax,dword ptr [rax]
  0000000140006A23: 00 00              add         byte ptr [rax],al
  0000000140006A25: 00 00              add         byte ptr [rax],al
  0000000140006A27: 00 08              add         byte ptr [rax],cl
  0000000140006A29: 03 00              add         eax,dword ptr [rax]
  0000000140006A2B: 00 00              add         byte ptr [rax],al
  0000000140006A2D: 00 00              add         byte ptr [rax],al
  0000000140006A2F: 00 08              add         byte ptr [rax],cl
  0000000140006A31: 03 00              add         eax,dword ptr [rax]
  0000000140006A33: 00 00              add         byte ptr [rax],al
  0000000140006A35: 00 00              add         byte ptr [rax],al
  0000000140006A37: 00 08              add         byte ptr [rax],cl
  0000000140006A39: 03 00              add         eax,dword ptr [rax]
  0000000140006A3B: 00 00              add         byte ptr [rax],al
  0000000140006A3D: 00 00              add         byte ptr [rax],al
  0000000140006A3F: 00 0F              add         byte ptr [rdi],cl
  0000000140006A41: 03 00              add         eax,dword ptr [rax]
  0000000140006A43: 00 00              add         byte ptr [rax],al
  0000000140006A45: 00 00              add         byte ptr [rax],al
  0000000140006A47: 00 0F              add         byte ptr [rdi],cl
  0000000140006A49: 03 00              add         eax,dword ptr [rax]
  0000000140006A4B: 00 00              add         byte ptr [rax],al
  0000000140006A4D: 00 00              add         byte ptr [rax],al
  0000000140006A4F: 00 0F              add         byte ptr [rdi],cl
  0000000140006A51: 03 00              add         eax,dword ptr [rax]
  0000000140006A53: 00 00              add         byte ptr [rax],al
  0000000140006A55: 00 00              add         byte ptr [rax],al
  0000000140006A57: 00 0F              add         byte ptr [rdi],cl
  0000000140006A59: 03 00              add         eax,dword ptr [rax]
  0000000140006A5B: 00 00              add         byte ptr [rax],al
  0000000140006A5D: 00 00              add         byte ptr [rax],al
  0000000140006A5F: 00 0F              add         byte ptr [rdi],cl
  0000000140006A61: 03 00              add         eax,dword ptr [rax]
  0000000140006A63: 00 00              add         byte ptr [rax],al
  0000000140006A65: 00 00              add         byte ptr [rax],al
  0000000140006A67: 00 0F              add         byte ptr [rdi],cl
  0000000140006A69: 03 00              add         eax,dword ptr [rax]
  0000000140006A6B: 00 00              add         byte ptr [rax],al
  0000000140006A6D: 00 00              add         byte ptr [rax],al
  0000000140006A6F: 00 0F              add         byte ptr [rdi],cl
  0000000140006A71: 03 00              add         eax,dword ptr [rax]
  0000000140006A73: 00 00              add         byte ptr [rax],al
  0000000140006A75: 00 00              add         byte ptr [rax],al
  0000000140006A77: 00 0F              add         byte ptr [rdi],cl
  0000000140006A79: 03 00              add         eax,dword ptr [rax]
  0000000140006A7B: 00 00              add         byte ptr [rax],al
  0000000140006A7D: 00 00              add         byte ptr [rax],al
  0000000140006A7F: 00 0F              add         byte ptr [rdi],cl
  0000000140006A81: 03 00              add         eax,dword ptr [rax]
  0000000140006A83: 00 00              add         byte ptr [rax],al
  0000000140006A85: 00 00              add         byte ptr [rax],al
  0000000140006A87: 00 0F              add         byte ptr [rdi],cl
  0000000140006A89: 03 00              add         eax,dword ptr [rax]
  0000000140006A8B: 00 00              add         byte ptr [rax],al
  0000000140006A8D: 00 00              add         byte ptr [rax],al
  0000000140006A8F: 00 0F              add         byte ptr [rdi],cl
  0000000140006A91: 03 00              add         eax,dword ptr [rax]
  0000000140006A93: 00 00              add         byte ptr [rax],al
  0000000140006A95: 00 00              add         byte ptr [rax],al
  0000000140006A97: 00 0F              add         byte ptr [rdi],cl
  0000000140006A99: 03 00              add         eax,dword ptr [rax]
  0000000140006A9B: 00 00              add         byte ptr [rax],al
  0000000140006A9D: 00 00              add         byte ptr [rax],al
  0000000140006A9F: 00 0F              add         byte ptr [rdi],cl
  0000000140006AA1: 03 00              add         eax,dword ptr [rax]
  0000000140006AA3: 00 00              add         byte ptr [rax],al
  0000000140006AA5: 00 00              add         byte ptr [rax],al
  0000000140006AA7: 00 0F              add         byte ptr [rdi],cl
  0000000140006AA9: 03 00              add         eax,dword ptr [rax]
  0000000140006AAB: 00 00              add         byte ptr [rax],al
  0000000140006AAD: 00 00              add         byte ptr [rax],al
  0000000140006AAF: 00 0F              add         byte ptr [rdi],cl
  0000000140006AB1: 03 00              add         eax,dword ptr [rax]
  0000000140006AB3: 00 00              add         byte ptr [rax],al
  0000000140006AB5: 00 00              add         byte ptr [rax],al
  0000000140006AB7: 00 0F              add         byte ptr [rdi],cl
  0000000140006AB9: 03 00              add         eax,dword ptr [rax]
  0000000140006ABB: 00 00              add         byte ptr [rax],al
  0000000140006ABD: 00 00              add         byte ptr [rax],al
  0000000140006ABF: 00 0F              add         byte ptr [rdi],cl
  0000000140006AC1: 03 00              add         eax,dword ptr [rax]
  0000000140006AC3: 00 00              add         byte ptr [rax],al
  0000000140006AC5: 00 00              add         byte ptr [rax],al
  0000000140006AC7: 00 0F              add         byte ptr [rdi],cl
  0000000140006AC9: 03 00              add         eax,dword ptr [rax]
  0000000140006ACB: 00 00              add         byte ptr [rax],al
  0000000140006ACD: 00 00              add         byte ptr [rax],al
  0000000140006ACF: 00 0F              add         byte ptr [rdi],cl
  0000000140006AD1: 03 00              add         eax,dword ptr [rax]
  0000000140006AD3: 00 00              add         byte ptr [rax],al
  0000000140006AD5: 00 00              add         byte ptr [rax],al
  0000000140006AD7: 00 0F              add         byte ptr [rdi],cl
  0000000140006AD9: 03 00              add         eax,dword ptr [rax]
  0000000140006ADB: 00 00              add         byte ptr [rax],al
  0000000140006ADD: 00 00              add         byte ptr [rax],al
  0000000140006ADF: 00 0F              add         byte ptr [rdi],cl
  0000000140006AE1: 03 00              add         eax,dword ptr [rax]
  0000000140006AE3: 00 00              add         byte ptr [rax],al
  0000000140006AE5: 00 00              add         byte ptr [rax],al
  0000000140006AE7: 00 0F              add         byte ptr [rdi],cl
  0000000140006AE9: 03 00              add         eax,dword ptr [rax]
  0000000140006AEB: 00 00              add         byte ptr [rax],al
  0000000140006AED: 00 00              add         byte ptr [rax],al
  0000000140006AEF: 00 0F              add         byte ptr [rdi],cl
  0000000140006AF1: 03 00              add         eax,dword ptr [rax]
  0000000140006AF3: 00 00              add         byte ptr [rax],al
  0000000140006AF5: 00 00              add         byte ptr [rax],al
  0000000140006AF7: 00 0F              add         byte ptr [rdi],cl
  0000000140006AF9: 03 00              add         eax,dword ptr [rax]
  0000000140006AFB: 00 00              add         byte ptr [rax],al
  0000000140006AFD: 00 00              add         byte ptr [rax],al
  0000000140006AFF: 00 0F              add         byte ptr [rdi],cl
  0000000140006B01: 03 00              add         eax,dword ptr [rax]
  0000000140006B03: 00 00              add         byte ptr [rax],al
  0000000140006B05: 00 00              add         byte ptr [rax],al
  0000000140006B07: 00 0F              add         byte ptr [rdi],cl
  0000000140006B09: 03 00              add         eax,dword ptr [rax]
  0000000140006B0B: 00 00              add         byte ptr [rax],al
  0000000140006B0D: 00 00              add         byte ptr [rax],al
  0000000140006B0F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B11: 03 00              add         eax,dword ptr [rax]
  0000000140006B13: 00 00              add         byte ptr [rax],al
  0000000140006B15: 00 00              add         byte ptr [rax],al
  0000000140006B17: 00 0F              add         byte ptr [rdi],cl
  0000000140006B19: 03 00              add         eax,dword ptr [rax]
  0000000140006B1B: 00 00              add         byte ptr [rax],al
  0000000140006B1D: 00 00              add         byte ptr [rax],al
  0000000140006B1F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B21: 03 00              add         eax,dword ptr [rax]
  0000000140006B23: 00 00              add         byte ptr [rax],al
  0000000140006B25: 00 00              add         byte ptr [rax],al
  0000000140006B27: 00 0F              add         byte ptr [rdi],cl
  0000000140006B29: 03 00              add         eax,dword ptr [rax]
  0000000140006B2B: 00 00              add         byte ptr [rax],al
  0000000140006B2D: 00 00              add         byte ptr [rax],al
  0000000140006B2F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B31: 03 00              add         eax,dword ptr [rax]
  0000000140006B33: 00 00              add         byte ptr [rax],al
  0000000140006B35: 00 00              add         byte ptr [rax],al
  0000000140006B37: 00 0F              add         byte ptr [rdi],cl
  0000000140006B39: 03 00              add         eax,dword ptr [rax]
  0000000140006B3B: 00 00              add         byte ptr [rax],al
  0000000140006B3D: 00 00              add         byte ptr [rax],al
  0000000140006B3F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B41: 03 00              add         eax,dword ptr [rax]
  0000000140006B43: 00 00              add         byte ptr [rax],al
  0000000140006B45: 00 00              add         byte ptr [rax],al
  0000000140006B47: 00 0F              add         byte ptr [rdi],cl
  0000000140006B49: 03 00              add         eax,dword ptr [rax]
  0000000140006B4B: 00 00              add         byte ptr [rax],al
  0000000140006B4D: 00 00              add         byte ptr [rax],al
  0000000140006B4F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B51: 03 00              add         eax,dword ptr [rax]
  0000000140006B53: 00 00              add         byte ptr [rax],al
  0000000140006B55: 00 00              add         byte ptr [rax],al
  0000000140006B57: 00 0F              add         byte ptr [rdi],cl
  0000000140006B59: 03 00              add         eax,dword ptr [rax]
  0000000140006B5B: 00 00              add         byte ptr [rax],al
  0000000140006B5D: 00 00              add         byte ptr [rax],al
  0000000140006B5F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B61: 03 00              add         eax,dword ptr [rax]
  0000000140006B63: 00 00              add         byte ptr [rax],al
  0000000140006B65: 00 00              add         byte ptr [rax],al
  0000000140006B67: 00 0F              add         byte ptr [rdi],cl
  0000000140006B69: 03 00              add         eax,dword ptr [rax]
  0000000140006B6B: 00 00              add         byte ptr [rax],al
  0000000140006B6D: 00 00              add         byte ptr [rax],al
  0000000140006B6F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B71: 03 00              add         eax,dword ptr [rax]
  0000000140006B73: 00 00              add         byte ptr [rax],al
  0000000140006B75: 00 00              add         byte ptr [rax],al
  0000000140006B77: 00 0F              add         byte ptr [rdi],cl
  0000000140006B79: 03 00              add         eax,dword ptr [rax]
  0000000140006B7B: 00 00              add         byte ptr [rax],al
  0000000140006B7D: 00 00              add         byte ptr [rax],al
  0000000140006B7F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B81: 03 00              add         eax,dword ptr [rax]
  0000000140006B83: 00 00              add         byte ptr [rax],al
  0000000140006B85: 00 00              add         byte ptr [rax],al
  0000000140006B87: 00 0F              add         byte ptr [rdi],cl
  0000000140006B89: 03 00              add         eax,dword ptr [rax]
  0000000140006B8B: 00 00              add         byte ptr [rax],al
  0000000140006B8D: 00 00              add         byte ptr [rax],al
  0000000140006B8F: 00 0F              add         byte ptr [rdi],cl
  0000000140006B91: 03 00              add         eax,dword ptr [rax]
  0000000140006B93: 00 00              add         byte ptr [rax],al
  0000000140006B95: 00 00              add         byte ptr [rax],al
  0000000140006B97: 00 0F              add         byte ptr [rdi],cl
  0000000140006B99: 03 00              add         eax,dword ptr [rax]
  0000000140006B9B: 00 00              add         byte ptr [rax],al
  0000000140006B9D: 00 00              add         byte ptr [rax],al
  0000000140006B9F: 00 0F              add         byte ptr [rdi],cl
  0000000140006BA1: 03 00              add         eax,dword ptr [rax]
  0000000140006BA3: 00 00              add         byte ptr [rax],al
  0000000140006BA5: 00 00              add         byte ptr [rax],al
  0000000140006BA7: 00 0F              add         byte ptr [rdi],cl
  0000000140006BA9: 03 00              add         eax,dword ptr [rax]
  0000000140006BAB: 00 00              add         byte ptr [rax],al
  0000000140006BAD: 00 00              add         byte ptr [rax],al
  0000000140006BAF: 00 0F              add         byte ptr [rdi],cl
  0000000140006BB1: 03 00              add         eax,dword ptr [rax]
  0000000140006BB3: 00 00              add         byte ptr [rax],al
  0000000140006BB5: 00 00              add         byte ptr [rax],al
  0000000140006BB7: 00 0F              add         byte ptr [rdi],cl
  0000000140006BB9: 03 00              add         eax,dword ptr [rax]
  0000000140006BBB: 00 00              add         byte ptr [rax],al
  0000000140006BBD: 00 00              add         byte ptr [rax],al
  0000000140006BBF: 00 0F              add         byte ptr [rdi],cl
  0000000140006BC1: 03 00              add         eax,dword ptr [rax]
  0000000140006BC3: 00 00              add         byte ptr [rax],al
  0000000140006BC5: 00 00              add         byte ptr [rax],al
  0000000140006BC7: 00 0F              add         byte ptr [rdi],cl
  0000000140006BC9: 03 00              add         eax,dword ptr [rax]
  0000000140006BCB: 00 00              add         byte ptr [rax],al
  0000000140006BCD: 00 00              add         byte ptr [rax],al
  0000000140006BCF: 00 0F              add         byte ptr [rdi],cl
  0000000140006BD1: 03 00              add         eax,dword ptr [rax]
  0000000140006BD3: 00 00              add         byte ptr [rax],al
  0000000140006BD5: 00 00              add         byte ptr [rax],al
  0000000140006BD7: 00 0F              add         byte ptr [rdi],cl
  0000000140006BD9: 03 00              add         eax,dword ptr [rax]
  0000000140006BDB: 00 00              add         byte ptr [rax],al
  0000000140006BDD: 00 00              add         byte ptr [rax],al
  0000000140006BDF: 00 0F              add         byte ptr [rdi],cl
  0000000140006BE1: 03 00              add         eax,dword ptr [rax]
  0000000140006BE3: 00 00              add         byte ptr [rax],al
  0000000140006BE5: 00 00              add         byte ptr [rax],al
  0000000140006BE7: 00 0F              add         byte ptr [rdi],cl
  0000000140006BE9: 03 00              add         eax,dword ptr [rax]
  0000000140006BEB: 00 00              add         byte ptr [rax],al
  0000000140006BED: 00 00              add         byte ptr [rax],al
  0000000140006BEF: 00 0F              add         byte ptr [rdi],cl
  0000000140006BF1: 03 00              add         eax,dword ptr [rax]
  0000000140006BF3: 00 00              add         byte ptr [rax],al
  0000000140006BF5: 00 00              add         byte ptr [rax],al
  0000000140006BF7: 00 0F              add         byte ptr [rdi],cl
  0000000140006BF9: 03 00              add         eax,dword ptr [rax]
  0000000140006BFB: 00 00              add         byte ptr [rax],al
  0000000140006BFD: 00 00              add         byte ptr [rax],al
  0000000140006BFF: 00 0F              add         byte ptr [rdi],cl
  0000000140006C01: 03 00              add         eax,dword ptr [rax]
  0000000140006C03: 00 00              add         byte ptr [rax],al
  0000000140006C05: 00 00              add         byte ptr [rax],al
  0000000140006C07: 00 0F              add         byte ptr [rdi],cl
  0000000140006C09: 03 00              add         eax,dword ptr [rax]
  0000000140006C0B: 00 00              add         byte ptr [rax],al
  0000000140006C0D: 00 00              add         byte ptr [rax],al
  0000000140006C0F: 00 0F              add         byte ptr [rdi],cl
  0000000140006C11: 03 00              add         eax,dword ptr [rax]
  0000000140006C13: 00 00              add         byte ptr [rax],al
  0000000140006C15: 00 00              add         byte ptr [rax],al
  0000000140006C17: 00 0F              add         byte ptr [rdi],cl
  0000000140006C19: 03 00              add         eax,dword ptr [rax]
  0000000140006C1B: 00 00              add         byte ptr [rax],al
  0000000140006C1D: 00 00              add         byte ptr [rax],al
  0000000140006C1F: 00 0F              add         byte ptr [rdi],cl
  0000000140006C21: 03 00              add         eax,dword ptr [rax]
  0000000140006C23: 00 00              add         byte ptr [rax],al
  0000000140006C25: 00 00              add         byte ptr [rax],al
  0000000140006C27: 00 0F              add         byte ptr [rdi],cl
  0000000140006C29: 03 00              add         eax,dword ptr [rax]
  0000000140006C2B: 00 00              add         byte ptr [rax],al
  0000000140006C2D: 00 00              add         byte ptr [rax],al
  0000000140006C2F: 00 0F              add         byte ptr [rdi],cl
  0000000140006C31: 03 00              add         eax,dword ptr [rax]
  0000000140006C33: 00 00              add         byte ptr [rax],al
  0000000140006C35: 00 00              add         byte ptr [rax],al
  0000000140006C37: 00 0F              add         byte ptr [rdi],cl
  0000000140006C39: 03 00              add         eax,dword ptr [rax]
  0000000140006C3B: 00 00              add         byte ptr [rax],al
  0000000140006C3D: 00 00              add         byte ptr [rax],al
  0000000140006C3F: 00 C2              add         dl,al
  0000000140006C41: 12 00              adc         al,byte ptr [rax]
  0000000140006C43: 00 00              add         byte ptr [rax],al
  0000000140006C45: 00 00              add         byte ptr [rax],al
  0000000140006C47: 00 CA              add         dl,cl
  0000000140006C49: 12 00              adc         al,byte ptr [rax]
  0000000140006C4B: 00 00              add         byte ptr [rax],al
  0000000140006C4D: 00 00              add         byte ptr [rax],al
  0000000140006C4F: 00 BD 12 00 00 00  add         byte ptr [rbp+0000000000000012h],bh
  0000000140006C55: 00 00              add         byte ptr [rax],al
  0000000140006C57: 00 B4 12 00 00 00  add         byte ptr [rdx+rdx+0000000000000000h],dh
                    00
  0000000140006C5E: 00 00              add         byte ptr [rax],al
  0000000140006C60: A7                 cmps        dword ptr [rsi],dword ptr [rdi]
  0000000140006C61: 12 00              adc         al,byte ptr [rax]
  0000000140006C63: 00 00              add         byte ptr [rax],al
  0000000140006C65: 00 00              add         byte ptr [rax],al
  0000000140006C67: 00 9F 12 00 00 00  add         byte ptr [rdi+0000000000000012h],bl
  0000000140006C6D: 00 00              add         byte ptr [rax],al
  0000000140006C6F: 00 9F 12 00 00 00  add         byte ptr [rdi+0000000000000012h],bl
  0000000140006C75: 00 00              add         byte ptr [rax],al
  0000000140006C77: 00 9F 12 00 00 00  add         byte ptr [rdi+0000000000000012h],bl
  0000000140006C7D: 00 00              add         byte ptr [rax],al
  0000000140006C7F: 00 93 12 00 00 00  add         byte ptr [rbx+0000000000000012h],dl
  0000000140006C85: 00 00              add         byte ptr [rax],al
  0000000140006C87: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006C8D: 00 00              add         byte ptr [rax],al
  0000000140006C8F: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006C95: 00 00              add         byte ptr [rax],al
  0000000140006C97: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006C9D: 00 00              add         byte ptr [rax],al
  0000000140006C9F: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006CA5: 00 00              add         byte ptr [rax],al
  0000000140006CA7: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006CAD: 00 00              add         byte ptr [rax],al
  0000000140006CAF: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006CB5: 00 00              add         byte ptr [rax],al
  0000000140006CB7: 00 8B 12 00 00 00  add         byte ptr [rbx+0000000000000012h],cl
  0000000140006CBD: 00 00              add         byte ptr [rax],al
  0000000140006CBF: 00 7F 12           add         byte ptr [rdi+12h],bh
  0000000140006CC2: 00 00              add         byte ptr [rax],al
  0000000140006CC4: 00 00              add         byte ptr [rax],al
  0000000140006CC6: 00 00              add         byte ptr [rax],al
  0000000140006CC8: 75 12              jne         0000000140006CDC
  0000000140006CCA: 00 00              add         byte ptr [rax],al
  0000000140006CCC: 00 00              add         byte ptr [rax],al
  0000000140006CCE: 00 00              add         byte ptr [rax],al
  0000000140006CD0: 75 12              jne         0000000140006CE4
  0000000140006CD2: 00 00              add         byte ptr [rax],al
  0000000140006CD4: 00 00              add         byte ptr [rax],al
  0000000140006CD6: 00 00              add         byte ptr [rax],al
  0000000140006CD8: 75 12              jne         0000000140006CEC
  0000000140006CDA: 00 00              add         byte ptr [rax],al
  0000000140006CDC: 00 00              add         byte ptr [rax],al
  0000000140006CDE: 00 00              add         byte ptr [rax],al
  0000000140006CE0: 75 12              jne         0000000140006CF4
  0000000140006CE2: 00 00              add         byte ptr [rax],al
  0000000140006CE4: 00 00              add         byte ptr [rax],al
  0000000140006CE6: 00 00              add         byte ptr [rax],al
  0000000140006CE8: 75 12              jne         0000000140006CFC
  0000000140006CEA: 00 00              add         byte ptr [rax],al
  0000000140006CEC: 00 00              add         byte ptr [rax],al
  0000000140006CEE: 00 00              add         byte ptr [rax],al
  0000000140006CF0: 75 12              jne         0000000140006D04
  0000000140006CF2: 00 00              add         byte ptr [rax],al
  0000000140006CF4: 00 00              add         byte ptr [rax],al
  0000000140006CF6: 00 00              add         byte ptr [rax],al
  0000000140006CF8: 75 12              jne         0000000140006D0C
  0000000140006CFA: 00 00              add         byte ptr [rax],al
  0000000140006CFC: 00 00              add         byte ptr [rax],al
  0000000140006CFE: 00 00              add         byte ptr [rax],al
  0000000140006D00: 75 12              jne         0000000140006D14
  0000000140006D02: 00 00              add         byte ptr [rax],al
  0000000140006D04: 00 00              add         byte ptr [rax],al
  0000000140006D06: 00 00              add         byte ptr [rax],al
  0000000140006D08: 75 12              jne         0000000140006D1C
  0000000140006D0A: 00 00              add         byte ptr [rax],al
  0000000140006D0C: 00 00              add         byte ptr [rax],al
  0000000140006D0E: 00 00              add         byte ptr [rax],al
  0000000140006D10: 75 12              jne         0000000140006D24
  0000000140006D12: 00 00              add         byte ptr [rax],al
  0000000140006D14: 00 00              add         byte ptr [rax],al
  0000000140006D16: 00 00              add         byte ptr [rax],al
  0000000140006D18: 75 12              jne         0000000140006D2C
  0000000140006D1A: 00 00              add         byte ptr [rax],al
  0000000140006D1C: 00 00              add         byte ptr [rax],al
  0000000140006D1E: 00 00              add         byte ptr [rax],al
  0000000140006D20: 75 12              jne         0000000140006D34
  0000000140006D22: 00 00              add         byte ptr [rax],al
  0000000140006D24: 00 00              add         byte ptr [rax],al
  0000000140006D26: 00 00              add         byte ptr [rax],al
  0000000140006D28: 75 12              jne         0000000140006D3C
  0000000140006D2A: 00 00              add         byte ptr [rax],al
  0000000140006D2C: 00 00              add         byte ptr [rax],al
  0000000140006D2E: 00 00              add         byte ptr [rax],al
  0000000140006D30: 75 12              jne         0000000140006D44
  0000000140006D32: 00 00              add         byte ptr [rax],al
  0000000140006D34: 00 00              add         byte ptr [rax],al
  0000000140006D36: 00 00              add         byte ptr [rax],al
  0000000140006D38: 75 12              jne         0000000140006D4C
  0000000140006D3A: 00 00              add         byte ptr [rax],al
  0000000140006D3C: 00 00              add         byte ptr [rax],al
  0000000140006D3E: 00 00              add         byte ptr [rax],al
  0000000140006D40: 66 12 00           adc         al,byte ptr [rax]
  0000000140006D43: 00 00              add         byte ptr [rax],al
  0000000140006D45: 00 00              add         byte ptr [rax],al
  0000000140006D47: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D4B: 00 00              add         byte ptr [rax],al
  0000000140006D4D: 00 00              add         byte ptr [rax],al
  0000000140006D4F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D53: 00 00              add         byte ptr [rax],al
  0000000140006D55: 00 00              add         byte ptr [rax],al
  0000000140006D57: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D5B: 00 00              add         byte ptr [rax],al
  0000000140006D5D: 00 00              add         byte ptr [rax],al
  0000000140006D5F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D63: 00 00              add         byte ptr [rax],al
  0000000140006D65: 00 00              add         byte ptr [rax],al
  0000000140006D67: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D6B: 00 00              add         byte ptr [rax],al
  0000000140006D6D: 00 00              add         byte ptr [rax],al
  0000000140006D6F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D73: 00 00              add         byte ptr [rax],al
  0000000140006D75: 00 00              add         byte ptr [rax],al
  0000000140006D77: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D7B: 00 00              add         byte ptr [rax],al
  0000000140006D7D: 00 00              add         byte ptr [rax],al
  0000000140006D7F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D83: 00 00              add         byte ptr [rax],al
  0000000140006D85: 00 00              add         byte ptr [rax],al
  0000000140006D87: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D8B: 00 00              add         byte ptr [rax],al
  0000000140006D8D: 00 00              add         byte ptr [rax],al
  0000000140006D8F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D93: 00 00              add         byte ptr [rax],al
  0000000140006D95: 00 00              add         byte ptr [rax],al
  0000000140006D97: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006D9B: 00 00              add         byte ptr [rax],al
  0000000140006D9D: 00 00              add         byte ptr [rax],al
  0000000140006D9F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DA3: 00 00              add         byte ptr [rax],al
  0000000140006DA5: 00 00              add         byte ptr [rax],al
  0000000140006DA7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DAB: 00 00              add         byte ptr [rax],al
  0000000140006DAD: 00 00              add         byte ptr [rax],al
  0000000140006DAF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DB3: 00 00              add         byte ptr [rax],al
  0000000140006DB5: 00 00              add         byte ptr [rax],al
  0000000140006DB7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DBB: 00 00              add         byte ptr [rax],al
  0000000140006DBD: 00 00              add         byte ptr [rax],al
  0000000140006DBF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DC3: 00 00              add         byte ptr [rax],al
  0000000140006DC5: 00 00              add         byte ptr [rax],al
  0000000140006DC7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DCB: 00 00              add         byte ptr [rax],al
  0000000140006DCD: 00 00              add         byte ptr [rax],al
  0000000140006DCF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DD3: 00 00              add         byte ptr [rax],al
  0000000140006DD5: 00 00              add         byte ptr [rax],al
  0000000140006DD7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DDB: 00 00              add         byte ptr [rax],al
  0000000140006DDD: 00 00              add         byte ptr [rax],al
  0000000140006DDF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DE3: 00 00              add         byte ptr [rax],al
  0000000140006DE5: 00 00              add         byte ptr [rax],al
  0000000140006DE7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DEB: 00 00              add         byte ptr [rax],al
  0000000140006DED: 00 00              add         byte ptr [rax],al
  0000000140006DEF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DF3: 00 00              add         byte ptr [rax],al
  0000000140006DF5: 00 00              add         byte ptr [rax],al
  0000000140006DF7: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006DFB: 00 00              add         byte ptr [rax],al
  0000000140006DFD: 00 00              add         byte ptr [rax],al
  0000000140006DFF: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E03: 00 00              add         byte ptr [rax],al
  0000000140006E05: 00 00              add         byte ptr [rax],al
  0000000140006E07: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E0B: 00 00              add         byte ptr [rax],al
  0000000140006E0D: 00 00              add         byte ptr [rax],al
  0000000140006E0F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E13: 00 00              add         byte ptr [rax],al
  0000000140006E15: 00 00              add         byte ptr [rax],al
  0000000140006E17: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E1B: 00 00              add         byte ptr [rax],al
  0000000140006E1D: 00 00              add         byte ptr [rax],al
  0000000140006E1F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E23: 00 00              add         byte ptr [rax],al
  0000000140006E25: 00 00              add         byte ptr [rax],al
  0000000140006E27: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E2B: 00 00              add         byte ptr [rax],al
  0000000140006E2D: 00 00              add         byte ptr [rax],al
  0000000140006E2F: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E33: 00 00              add         byte ptr [rax],al
  0000000140006E35: 00 00              add         byte ptr [rax],al
  0000000140006E37: 00 5C 12 00        add         byte ptr [rdx+rdx],bl
  0000000140006E3B: 00 00              add         byte ptr [rax],al
  0000000140006E3D: 00 00              add         byte ptr [rax],al
  0000000140006E3F: 00 4D 12           add         byte ptr [rbp+12h],cl
  0000000140006E42: 00 00              add         byte ptr [rax],al
  0000000140006E44: 00 00              add         byte ptr [rax],al
  0000000140006E46: 00 00              add         byte ptr [rax],al
  0000000140006E48: 42 12 00           adc         al,byte ptr [rax]
  0000000140006E4B: 00 00              add         byte ptr [rax],al
  0000000140006E4D: 00 00              add         byte ptr [rax],al
  0000000140006E4F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006E52: 00 00              add         byte ptr [rax],al
  0000000140006E54: 00 00              add         byte ptr [rax],al
  0000000140006E56: 00 00              add         byte ptr [rax],al
  0000000140006E58: 42 12 00           adc         al,byte ptr [rax]
  0000000140006E5B: 00 00              add         byte ptr [rax],al
  0000000140006E5D: 00 00              add         byte ptr [rax],al
  0000000140006E5F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006E62: 00 00              add         byte ptr [rax],al
  0000000140006E64: 00 00              add         byte ptr [rax],al
  0000000140006E66: 00 00              add         byte ptr [rax],al
  0000000140006E68: 42 12 00           adc         al,byte ptr [rax]
  0000000140006E6B: 00 00              add         byte ptr [rax],al
  0000000140006E6D: 00 00              add         byte ptr [rax],al
  0000000140006E6F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006E72: 00 00              add         byte ptr [rax],al
  0000000140006E74: 00 00              add         byte ptr [rax],al
  0000000140006E76: 00 00              add         byte ptr [rax],al
  0000000140006E78: 42 12 00           adc         al,byte ptr [rax]
  0000000140006E7B: 00 00              add         byte ptr [rax],al
  0000000140006E7D: 00 00              add         byte ptr [rax],al
  0000000140006E7F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006E82: 00 00              add         byte ptr [rax],al
  0000000140006E84: 00 00              add         byte ptr [rax],al
  0000000140006E86: 00 00              add         byte ptr [rax],al
  0000000140006E88: 42 12 00           adc         al,byte ptr [rax]
  0000000140006E8B: 00 00              add         byte ptr [rax],al
  0000000140006E8D: 00 00              add         byte ptr [rax],al
  0000000140006E8F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006E92: 00 00              add         byte ptr [rax],al
  0000000140006E94: 00 00              add         byte ptr [rax],al
  0000000140006E96: 00 00              add         byte ptr [rax],al
  0000000140006E98: 42 12 00           adc         al,byte ptr [rax]
  0000000140006E9B: 00 00              add         byte ptr [rax],al
  0000000140006E9D: 00 00              add         byte ptr [rax],al
  0000000140006E9F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006EA2: 00 00              add         byte ptr [rax],al
  0000000140006EA4: 00 00              add         byte ptr [rax],al
  0000000140006EA6: 00 00              add         byte ptr [rax],al
  0000000140006EA8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006EAB: 00 00              add         byte ptr [rax],al
  0000000140006EAD: 00 00              add         byte ptr [rax],al
  0000000140006EAF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006EB2: 00 00              add         byte ptr [rax],al
  0000000140006EB4: 00 00              add         byte ptr [rax],al
  0000000140006EB6: 00 00              add         byte ptr [rax],al
  0000000140006EB8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006EBB: 00 00              add         byte ptr [rax],al
  0000000140006EBD: 00 00              add         byte ptr [rax],al
  0000000140006EBF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006EC2: 00 00              add         byte ptr [rax],al
  0000000140006EC4: 00 00              add         byte ptr [rax],al
  0000000140006EC6: 00 00              add         byte ptr [rax],al
  0000000140006EC8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006ECB: 00 00              add         byte ptr [rax],al
  0000000140006ECD: 00 00              add         byte ptr [rax],al
  0000000140006ECF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006ED2: 00 00              add         byte ptr [rax],al
  0000000140006ED4: 00 00              add         byte ptr [rax],al
  0000000140006ED6: 00 00              add         byte ptr [rax],al
  0000000140006ED8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006EDB: 00 00              add         byte ptr [rax],al
  0000000140006EDD: 00 00              add         byte ptr [rax],al
  0000000140006EDF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006EE2: 00 00              add         byte ptr [rax],al
  0000000140006EE4: 00 00              add         byte ptr [rax],al
  0000000140006EE6: 00 00              add         byte ptr [rax],al
  0000000140006EE8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006EEB: 00 00              add         byte ptr [rax],al
  0000000140006EED: 00 00              add         byte ptr [rax],al
  0000000140006EEF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006EF2: 00 00              add         byte ptr [rax],al
  0000000140006EF4: 00 00              add         byte ptr [rax],al
  0000000140006EF6: 00 00              add         byte ptr [rax],al
  0000000140006EF8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006EFB: 00 00              add         byte ptr [rax],al
  0000000140006EFD: 00 00              add         byte ptr [rax],al
  0000000140006EFF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F02: 00 00              add         byte ptr [rax],al
  0000000140006F04: 00 00              add         byte ptr [rax],al
  0000000140006F06: 00 00              add         byte ptr [rax],al
  0000000140006F08: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F0B: 00 00              add         byte ptr [rax],al
  0000000140006F0D: 00 00              add         byte ptr [rax],al
  0000000140006F0F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F12: 00 00              add         byte ptr [rax],al
  0000000140006F14: 00 00              add         byte ptr [rax],al
  0000000140006F16: 00 00              add         byte ptr [rax],al
  0000000140006F18: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F1B: 00 00              add         byte ptr [rax],al
  0000000140006F1D: 00 00              add         byte ptr [rax],al
  0000000140006F1F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F22: 00 00              add         byte ptr [rax],al
  0000000140006F24: 00 00              add         byte ptr [rax],al
  0000000140006F26: 00 00              add         byte ptr [rax],al
  0000000140006F28: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F2B: 00 00              add         byte ptr [rax],al
  0000000140006F2D: 00 00              add         byte ptr [rax],al
  0000000140006F2F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F32: 00 00              add         byte ptr [rax],al
  0000000140006F34: 00 00              add         byte ptr [rax],al
  0000000140006F36: 00 00              add         byte ptr [rax],al
  0000000140006F38: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F3B: 00 00              add         byte ptr [rax],al
  0000000140006F3D: 00 00              add         byte ptr [rax],al
  0000000140006F3F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F42: 00 00              add         byte ptr [rax],al
  0000000140006F44: 00 00              add         byte ptr [rax],al
  0000000140006F46: 00 00              add         byte ptr [rax],al
  0000000140006F48: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F4B: 00 00              add         byte ptr [rax],al
  0000000140006F4D: 00 00              add         byte ptr [rax],al
  0000000140006F4F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F52: 00 00              add         byte ptr [rax],al
  0000000140006F54: 00 00              add         byte ptr [rax],al
  0000000140006F56: 00 00              add         byte ptr [rax],al
  0000000140006F58: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F5B: 00 00              add         byte ptr [rax],al
  0000000140006F5D: 00 00              add         byte ptr [rax],al
  0000000140006F5F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F62: 00 00              add         byte ptr [rax],al
  0000000140006F64: 00 00              add         byte ptr [rax],al
  0000000140006F66: 00 00              add         byte ptr [rax],al
  0000000140006F68: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F6B: 00 00              add         byte ptr [rax],al
  0000000140006F6D: 00 00              add         byte ptr [rax],al
  0000000140006F6F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F72: 00 00              add         byte ptr [rax],al
  0000000140006F74: 00 00              add         byte ptr [rax],al
  0000000140006F76: 00 00              add         byte ptr [rax],al
  0000000140006F78: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F7B: 00 00              add         byte ptr [rax],al
  0000000140006F7D: 00 00              add         byte ptr [rax],al
  0000000140006F7F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F82: 00 00              add         byte ptr [rax],al
  0000000140006F84: 00 00              add         byte ptr [rax],al
  0000000140006F86: 00 00              add         byte ptr [rax],al
  0000000140006F88: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F8B: 00 00              add         byte ptr [rax],al
  0000000140006F8D: 00 00              add         byte ptr [rax],al
  0000000140006F8F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006F92: 00 00              add         byte ptr [rax],al
  0000000140006F94: 00 00              add         byte ptr [rax],al
  0000000140006F96: 00 00              add         byte ptr [rax],al
  0000000140006F98: 42 12 00           adc         al,byte ptr [rax]
  0000000140006F9B: 00 00              add         byte ptr [rax],al
  0000000140006F9D: 00 00              add         byte ptr [rax],al
  0000000140006F9F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006FA2: 00 00              add         byte ptr [rax],al
  0000000140006FA4: 00 00              add         byte ptr [rax],al
  0000000140006FA6: 00 00              add         byte ptr [rax],al
  0000000140006FA8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006FAB: 00 00              add         byte ptr [rax],al
  0000000140006FAD: 00 00              add         byte ptr [rax],al
  0000000140006FAF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006FB2: 00 00              add         byte ptr [rax],al
  0000000140006FB4: 00 00              add         byte ptr [rax],al
  0000000140006FB6: 00 00              add         byte ptr [rax],al
  0000000140006FB8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006FBB: 00 00              add         byte ptr [rax],al
  0000000140006FBD: 00 00              add         byte ptr [rax],al
  0000000140006FBF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006FC2: 00 00              add         byte ptr [rax],al
  0000000140006FC4: 00 00              add         byte ptr [rax],al
  0000000140006FC6: 00 00              add         byte ptr [rax],al
  0000000140006FC8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006FCB: 00 00              add         byte ptr [rax],al
  0000000140006FCD: 00 00              add         byte ptr [rax],al
  0000000140006FCF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006FD2: 00 00              add         byte ptr [rax],al
  0000000140006FD4: 00 00              add         byte ptr [rax],al
  0000000140006FD6: 00 00              add         byte ptr [rax],al
  0000000140006FD8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006FDB: 00 00              add         byte ptr [rax],al
  0000000140006FDD: 00 00              add         byte ptr [rax],al
  0000000140006FDF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006FE2: 00 00              add         byte ptr [rax],al
  0000000140006FE4: 00 00              add         byte ptr [rax],al
  0000000140006FE6: 00 00              add         byte ptr [rax],al
  0000000140006FE8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006FEB: 00 00              add         byte ptr [rax],al
  0000000140006FED: 00 00              add         byte ptr [rax],al
  0000000140006FEF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140006FF2: 00 00              add         byte ptr [rax],al
  0000000140006FF4: 00 00              add         byte ptr [rax],al
  0000000140006FF6: 00 00              add         byte ptr [rax],al
  0000000140006FF8: 42 12 00           adc         al,byte ptr [rax]
  0000000140006FFB: 00 00              add         byte ptr [rax],al
  0000000140006FFD: 00 00              add         byte ptr [rax],al
  0000000140006FFF: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140007002: 00 00              add         byte ptr [rax],al
  0000000140007004: 00 00              add         byte ptr [rax],al
  0000000140007006: 00 00              add         byte ptr [rax],al
  0000000140007008: 42 12 00           adc         al,byte ptr [rax]
  000000014000700B: 00 00              add         byte ptr [rax],al
  000000014000700D: 00 00              add         byte ptr [rax],al
  000000014000700F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140007012: 00 00              add         byte ptr [rax],al
  0000000140007014: 00 00              add         byte ptr [rax],al
  0000000140007016: 00 00              add         byte ptr [rax],al
  0000000140007018: 42 12 00           adc         al,byte ptr [rax]
  000000014000701B: 00 00              add         byte ptr [rax],al
  000000014000701D: 00 00              add         byte ptr [rax],al
  000000014000701F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140007022: 00 00              add         byte ptr [rax],al
  0000000140007024: 00 00              add         byte ptr [rax],al
  0000000140007026: 00 00              add         byte ptr [rax],al
  0000000140007028: 42 12 00           adc         al,byte ptr [rax]
  000000014000702B: 00 00              add         byte ptr [rax],al
  000000014000702D: 00 00              add         byte ptr [rax],al
  000000014000702F: 00 42 12           add         byte ptr [rdx+12h],al
  0000000140007032: 00 00              add         byte ptr [rax],al
  0000000140007034: 00 00              add         byte ptr [rax],al
  0000000140007036: 00 00              add         byte ptr [rax],al
  0000000140007038: 42 12 00           adc         al,byte ptr [rax]
  000000014000703B: 00 00              add         byte ptr [rax],al
  000000014000703D: 00 00              add         byte ptr [rax],al
  000000014000703F: 00 48 89           add         byte ptr [rax-77h],cl
  0000000140007042: C8 C3 0F 1F        enter       0FC3h,1Fh
  0000000140007046: 44 00 00           add         byte ptr [rax],r8b
  0000000140007049: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140007050: 90                 nop
  0000000140007051: 90                 nop
  0000000140007052: 90                 nop
  0000000140007053: 90                 nop
  0000000140007054: 90                 nop
  0000000140007055: 90                 nop
  0000000140007056: 90                 nop
  0000000140007057: 90                 nop
  0000000140007058: 90                 nop
  0000000140007059: 90                 nop
  000000014000705A: 90                 nop
  000000014000705B: 90                 nop
  000000014000705C: 90                 nop
  000000014000705D: 90                 nop
  000000014000705E: 90                 nop
  000000014000705F: 90                 nop
  0000000140007060: 90                 nop
  0000000140007061: 90                 nop
  0000000140007062: 90                 nop
  0000000140007063: 90                 nop
  0000000140007064: 90                 nop
  0000000140007065: 90                 nop
  0000000140007066: 90                 nop
  0000000140007067: 90                 nop
  0000000140007068: 90                 nop
  0000000140007069: 90                 nop
  000000014000706A: 90                 nop
  000000014000706B: 90                 nop
  000000014000706C: 90                 nop
  000000014000706D: 90                 nop
  000000014000706E: 90                 nop
  000000014000706F: 90                 nop
  0000000140007070: 90                 nop
  0000000140007071: 90                 nop
  0000000140007072: 90                 nop
  0000000140007073: 90                 nop
  0000000140007074: 90                 nop
  0000000140007075: 90                 nop
  0000000140007076: 90                 nop
  0000000140007077: 90                 nop
  0000000140007078: 90                 nop
  0000000140007079: 90                 nop
  000000014000707A: 90                 nop
  000000014000707B: 90                 nop
  000000014000707C: 90                 nop
  000000014000707D: 90                 nop
  000000014000707E: 90                 nop
  000000014000707F: 90                 nop
  0000000140007080: 55                 push        rbp
  0000000140007081: 53                 push        rbx
  0000000140007082: 41 57              push        r15
  0000000140007084: 48 81 EC A0 01 00  sub         rsp,1A0h
                    00
  000000014000708B: 48 8D 6C 24 20     lea         rbp,[rsp+20h]
  0000000140007090: 45 33 DB           xor         r11d,r11d
  0000000140007093: 48 8B 05 8E 5F 00  mov         rax,qword ptr [000000014000D028h]
                    00
  000000014000709A: 45 33 FF           xor         r15d,r15d
  000000014000709D: 48 33 C5           xor         rax,rbp
  00000001400070A0: 45 33 C9           xor         r9d,r9d
  00000001400070A3: 48 89 85 78 01 00  mov         qword ptr [rbp+0000000000000178h],rax
                    00
  00000001400070AA: 83 3D 9B 75 00 00  cmp         dword ptr [000000014000E64Ch],0
                    00
  00000001400070B1: 0F 84 E2 02 00 00  je          0000000140007399
  00000001400070B7: 83 3D 82 75 00 00  cmp         dword ptr [000000014000E640h],0
                    00
  00000001400070BE: 0F 84 0E 01 00 00  je          00000001400071D2
  00000001400070C4: 83 3D 79 75 00 00  cmp         dword ptr [000000014000E644h],0
                    00
  00000001400070CB: 76 3A              jbe         0000000140007107
  00000001400070CD: 53                 push        rbx
  00000001400070CE: B8 01 00 00 00     mov         eax,1
  00000001400070D3: 0F A2              cpuid
  00000001400070D5: 89 5D 7C           mov         dword ptr [rbp+7Ch],ebx
  00000001400070D8: 89 95 84 00 00 00  mov         dword ptr [rbp+0000000000000084h],edx
  00000001400070DE: 89 85 94 00 00 00  mov         dword ptr [rbp+0000000000000094h],eax
  00000001400070E4: 5B                 pop         rbx
  00000001400070E5: 8B 85 84 00 00 00  mov         eax,dword ptr [rbp+0000000000000084h]
  00000001400070EB: A9 00 00 00 04     test        eax,4000000h
  00000001400070F0: 74 08              je          00000001400070FA
  00000001400070F2: 41 BF 02 00 00 00  mov         r15d,2
  00000001400070F8: EB 0D              jmp         0000000140007107
  00000001400070FA: A9 00 00 80 00     test        eax,800000h
  00000001400070FF: 74 06              je          0000000140007107
  0000000140007101: 41 BF 01 00 00 00  mov         r15d,1
  0000000140007107: 8B 05 43 75 00 00  mov         eax,dword ptr [000000014000E650h]
  000000014000710D: 89 C2              mov         edx,eax
  000000014000710F: 48 85 D2           test        rdx,rdx
  0000000140007112: 76 12              jbe         0000000140007126
  0000000140007114: 44 8B 0D 39 75 00  mov         r9d,dword ptr [000000014000E654h]
                    00
  000000014000711B: 49 89 D3           mov         r11,rdx
  000000014000711E: 44 0F AF 0D 32 75  imul        r9d,dword ptr [000000014000E658h]
                    00 00
  0000000140007126: 8B 15 34 75 00 00  mov         edx,dword ptr [000000014000E660h]
  000000014000712C: 49 3B D3           cmp         rdx,r11
  000000014000712F: 76 12              jbe         0000000140007143
  0000000140007131: 44 8B 0D 2C 75 00  mov         r9d,dword ptr [000000014000E664h]
                    00
  0000000140007138: 49 89 D3           mov         r11,rdx
  000000014000713B: 44 0F AF 0D 25 75  imul        r9d,dword ptr [000000014000E668h]
                    00 00
  0000000140007143: 8B 15 27 75 00 00  mov         edx,dword ptr [000000014000E670h]
  0000000140007149: 49 3B D3           cmp         rdx,r11
  000000014000714C: 76 12              jbe         0000000140007160
  000000014000714E: 44 8B 0D 1F 75 00  mov         r9d,dword ptr [000000014000E674h]
                    00
  0000000140007155: 49 89 D3           mov         r11,rdx
  0000000140007158: 44 0F AF 0D 18 75  imul        r9d,dword ptr [000000014000E678h]
                    00 00
  0000000140007160: 85 C0              test        eax,eax
  0000000140007162: 0F 84 DC 01 00 00  je          0000000140007344
  0000000140007168: C1 E0 0A           shl         eax,0Ah
  000000014000716B: 49 C1 E3 0A        shl         r11,0Ah
  000000014000716F: 48 89 C2           mov         rdx,rax
  0000000140007172: 48 89 C1           mov         rcx,rax
  0000000140007175: 48 8D 1C 40        lea         rbx,[rax+rax*2]
  0000000140007179: 4C 89 1D C0 66 00  mov         qword ptr [000000014000D840h],r11
                    00
  0000000140007180: 48 03 DB           add         rbx,rbx
  0000000140007183: 49 D1 EB           shr         r11,1
  0000000140007186: 48 D1 EA           shr         rdx,1
  0000000140007189: 48 C1 E9 02        shr         rcx,2
  000000014000718D: 4C 89 1D B4 66 00  mov         qword ptr [000000014000D848h],r11
                    00
  0000000140007194: 48 89 05 B5 66 00  mov         qword ptr [000000014000D850h],rax
                    00
  000000014000719B: 48 89 15 B6 66 00  mov         qword ptr [000000014000D858h],rdx
                    00
  00000001400071A2: 48 89 0D B7 66 00  mov         qword ptr [000000014000D860h],rcx
                    00
  00000001400071A9: 4C 89 0D D0 74 00  mov         qword ptr [000000014000E680h],r9
                    00
  00000001400071B0: 48 C7 05 AD 66 00  mov         qword ptr [000000014000D868h],2000h
                    00 00 20 00 00
  00000001400071BB: 48 89 1D AE 66 00  mov         qword ptr [000000014000D870h],rbx
                    00
  00000001400071C2: 48 C7 05 AB 66 00  mov         qword ptr [000000014000D878h],800h
                    00 00 08 00 00
  00000001400071CD: E9 3A 01 00 00     jmp         000000014000730C
  00000001400071D2: 33 D2              xor         edx,edx
  00000001400071D4: 48 B8 41 75 74 68  mov         rax,69746E6568747541h
                    65 6E 74 69
  00000001400071DE: 4C 8D 4D 28        lea         r9,[rbp+28h]
  00000001400071E2: 48 89 45 38        mov         qword ptr [rbp+38h],rax
  00000001400071E6: C7 45 40 63 41 4D  mov         dword ptr [rbp+40h],444D4163h
                    44
  00000001400071ED: 88 55 44           mov         byte ptr [rbp+44h],dl
  00000001400071F0: 41 89 51 68        mov         dword ptr [r9+68h],edx
  00000001400071F4: 4D 89 49 60        mov         qword ptr [r9+60h],r9
  00000001400071F8: 50                 push        rax
  00000001400071F9: 53                 push        rbx
  00000001400071FA: 51                 push        rcx
  00000001400071FB: 52                 push        rdx
  00000001400071FC: 4C 8B 85 88 00 00  mov         r8,qword ptr [rbp+0000000000000088h]
                    00
  0000000140007203: 8B 85 90 00 00 00  mov         eax,dword ptr [rbp+0000000000000090h]
  0000000140007209: 0F A2              cpuid
  000000014000720B: 41 89 00           mov         dword ptr [r8],eax
  000000014000720E: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140007212: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140007216: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  000000014000721A: 5A                 pop         rdx
  000000014000721B: 59                 pop         rcx
  000000014000721C: 5B                 pop         rbx
  000000014000721D: 58                 pop         rax
  000000014000721E: 8B 45 38           mov         eax,dword ptr [rbp+38h]
  0000000140007221: 3B 45 2C           cmp         eax,dword ptr [rbp+2Ch]
  0000000140007224: 0F 85 E2 00 00 00  jne         000000014000730C
  000000014000722A: 8B 45 3C           mov         eax,dword ptr [rbp+3Ch]
  000000014000722D: 3B 45 34           cmp         eax,dword ptr [rbp+34h]
  0000000140007230: 0F 85 D6 00 00 00  jne         000000014000730C
  0000000140007236: 8B 45 40           mov         eax,dword ptr [rbp+40h]
  0000000140007239: 3B 45 30           cmp         eax,dword ptr [rbp+30h]
  000000014000723C: 0F 85 CA 00 00 00  jne         000000014000730C
  0000000140007242: C7 45 78 01 00 00  mov         dword ptr [rbp+78h],1
                    00
  0000000140007249: 4C 89 4D 60        mov         qword ptr [rbp+60h],r9
  000000014000724D: 50                 push        rax
  000000014000724E: 53                 push        rbx
  000000014000724F: 51                 push        rcx
  0000000140007250: 52                 push        rdx
  0000000140007251: 4C 8B 45 60        mov         r8,qword ptr [rbp+60h]
  0000000140007255: 8B 45 78           mov         eax,dword ptr [rbp+78h]
  0000000140007258: 0F A2              cpuid
  000000014000725A: 41 89 00           mov         dword ptr [r8],eax
  000000014000725D: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140007261: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140007265: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  0000000140007269: 5A                 pop         rdx
  000000014000726A: 59                 pop         rcx
  000000014000726B: 5B                 pop         rbx
  000000014000726C: 58                 pop         rax
  000000014000726D: F7 45 34 00 00 80  test        dword ptr [rbp+34h],800000h
                    00
  0000000140007274: 74 06              je          000000014000727C
  0000000140007276: 41 BF 01 00 00 00  mov         r15d,1
  000000014000727C: C7 85 80 00 00 00  mov         dword ptr [rbp+0000000000000080h],80000000h
                    00 00 00 80
  0000000140007286: 4C 89 4D 68        mov         qword ptr [rbp+68h],r9
  000000014000728A: 50                 push        rax
  000000014000728B: 53                 push        rbx
  000000014000728C: 51                 push        rcx
  000000014000728D: 52                 push        rdx
  000000014000728E: 4C 8B 45 68        mov         r8,qword ptr [rbp+68h]
  0000000140007292: 8B 85 80 00 00 00  mov         eax,dword ptr [rbp+0000000000000080h]
  0000000140007298: 0F A2              cpuid
  000000014000729A: 41 89 00           mov         dword ptr [r8],eax
  000000014000729D: 41 89 58 04        mov         dword ptr [r8+4],ebx
  00000001400072A1: 41 89 48 08        mov         dword ptr [r8+8],ecx
  00000001400072A5: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  00000001400072A9: 5A                 pop         rdx
  00000001400072AA: 59                 pop         rcx
  00000001400072AB: 5B                 pop         rbx
  00000001400072AC: 58                 pop         rax
  00000001400072AD: 81 7D 28 06 00 00  cmp         dword ptr [rbp+28h],80000006h
                    80
  00000001400072B4: 72 56              jb          000000014000730C
  00000001400072B6: C7 45 50 06 00 00  mov         dword ptr [rbp+50h],80000006h
                    80
  00000001400072BD: 4C 89 4D 48        mov         qword ptr [rbp+48h],r9
  00000001400072C1: 50                 push        rax
  00000001400072C2: 53                 push        rbx
  00000001400072C3: 51                 push        rcx
  00000001400072C4: 52                 push        rdx
  00000001400072C5: 4C 8B 45 48        mov         r8,qword ptr [rbp+48h]
  00000001400072C9: 8B 45 50           mov         eax,dword ptr [rbp+50h]
  00000001400072CC: 0F A2              cpuid
  00000001400072CE: 41 89 00           mov         dword ptr [r8],eax
  00000001400072D1: 41 89 58 04        mov         dword ptr [r8+4],ebx
  00000001400072D5: 41 89 48 08        mov         dword ptr [r8+8],ecx
  00000001400072D9: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  00000001400072DD: 5A                 pop         rdx
  00000001400072DE: 59                 pop         rcx
  00000001400072DF: 5B                 pop         rbx
  00000001400072E0: 58                 pop         rax
  00000001400072E1: 0F B7 45 32        movzx       eax,word ptr [rbp+32h]
  00000001400072E5: 48 C1 E0 0A        shl         rax,0Ah
  00000001400072E9: 48 8B 15 60 65 00  mov         rdx,qword ptr [000000014000D850h]
                    00
  00000001400072F0: 48 89 05 49 65 00  mov         qword ptr [000000014000D840h],rax
                    00
  00000001400072F7: 48 D1 E8           shr         rax,1
  00000001400072FA: 48 C1 EA 02        shr         rdx,2
  00000001400072FE: 48 89 05 43 65 00  mov         qword ptr [000000014000D848h],rax
                    00
  0000000140007305: 48 89 15 54 65 00  mov         qword ptr [000000014000D860h],rdx
                    00
  000000014000730C: 44 89 3D 79 73 00  mov         dword ptr [000000014000E68Ch],r15d
                    00
  0000000140007313: 44 89 3D 6E 73 00  mov         dword ptr [000000014000E688h],r15d
                    00
  000000014000731A: 48 8B 8D 78 01 00  mov         rcx,qword ptr [rbp+0000000000000178h]
                    00
  0000000140007321: 48 C7 85 78 01 00  mov         qword ptr [rbp+0000000000000178h],0
                    00 00 00 00 00
  000000014000732C: 48 33 CD           xor         rcx,rbp
  000000014000732F: 48 3B 0D F2 5C 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  0000000140007336: 75 5C              jne         0000000140007394
  0000000140007338: 48 8D A5 80 01 00  lea         rsp,[rbp+0000000000000180h]
                    00
  000000014000733F: 41 5F              pop         r15
  0000000140007341: 5B                 pop         rbx
  0000000140007342: 5D                 pop         rbp
  0000000140007343: C3                 ret
  0000000140007344: 48 8D 0D 51 45 00  lea         rcx,[000000014000B89Ch]
                    00
  000000014000734B: E8 4C 1C 00 00     call        0000000140008F9C
  0000000140007350: 48 85 C0           test        rax,rax
  0000000140007353: 74 B7              je          000000014000730C
  0000000140007355: 80 38 00           cmp         byte ptr [rax],0
  0000000140007358: 74 B2              je          000000014000730C
  000000014000735A: 33 D2              xor         edx,edx
  000000014000735C: B9 01 00 00 00     mov         ecx,1
  0000000140007361: 45 33 C0           xor         r8d,r8d
  0000000140007364: E8 A7 CF FF FF     call        0000000140004310
  0000000140007369: B9 01 00 00 00     mov         ecx,1
  000000014000736E: BA 3D 00 00 00     mov         edx,3Dh
  0000000140007373: 45 33 C0           xor         r8d,r8d
  0000000140007376: E8 95 CF FF FF     call        0000000140004310
  000000014000737B: 33 D2              xor         edx,edx
  000000014000737D: B9 01 00 00 00     mov         ecx,1
  0000000140007382: 45 33 C0           xor         r8d,r8d
  0000000140007385: E8 86 CF FF FF     call        0000000140004310
  000000014000738A: B9 01 00 00 00     mov         ecx,1
  000000014000738F: E8 A2 1B 00 00     call        0000000140008F36
  0000000140007394: E8 37 1C 00 00     call        0000000140008FD0
  0000000140007399: C7 45 74 00 00 00  mov         dword ptr [rbp+74h],0
                    00
  00000001400073A0: 50                 push        rax
  00000001400073A1: 51                 push        rcx
  00000001400073A2: 9C                 pushfq
  00000001400073A3: 58                 pop         rax
  00000001400073A4: 89 C1              mov         ecx,eax
  00000001400073A6: 35 00 00 20 00     xor         eax,200000h
  00000001400073AB: 50                 push        rax
  00000001400073AC: 9D                 popfq
  00000001400073AD: 9C                 pushfq
  00000001400073AE: 58                 pop         rax
  00000001400073AF: 3B C1              cmp         eax,ecx
  00000001400073B1: 74 08              je          00000001400073BB
  00000001400073B3: C7 45 74 01 00 00  mov         dword ptr [rbp+74h],1
                    00
  00000001400073BA: 51                 push        rcx
  00000001400073BB: 9D                 popfq
  00000001400073BC: 59                 pop         rcx
  00000001400073BD: 58                 pop         rax
  00000001400073BE: 83 7D 74 00        cmp         dword ptr [rbp+74h],0
  00000001400073C2: 0F 84 7D 03 00 00  je          0000000140007745
  00000001400073C8: 33 C9              xor         ecx,ecx
  00000001400073CA: 48 8D 45 54        lea         rax,[rbp+54h]
  00000001400073CE: 48 BA 47 65 6E 75  mov         rdx,49656E69756E6547h
                    69 6E 65 49
  00000001400073D8: 48 89 45 58        mov         qword ptr [rbp+58h],rax
  00000001400073DC: 48 89 95 68 01 00  mov         qword ptr [rbp+0000000000000168h],rdx
                    00
  00000001400073E3: 48 C7 85 70 01 00  mov         qword ptr [rbp+0000000000000170h],6C65746Eh
                    00 6E 74 65 6C
  00000001400073EE: 89 4D 70           mov         dword ptr [rbp+70h],ecx
  00000001400073F1: 89 08              mov         dword ptr [rax],ecx
  00000001400073F3: 50                 push        rax
  00000001400073F4: 53                 push        rbx
  00000001400073F5: 51                 push        rcx
  00000001400073F6: 52                 push        rdx
  00000001400073F7: B8 00 00 00 00     mov         eax,0
  00000001400073FC: 0F A2              cpuid
  00000001400073FE: 39 9D 68 01 00 00  cmp         dword ptr [rbp+0000000000000168h],ebx
  0000000140007404: 75 1D              jne         0000000140007423
  0000000140007406: 39 95 6C 01 00 00  cmp         dword ptr [rbp+000000000000016Ch],edx
  000000014000740C: 75 15              jne         0000000140007423
  000000014000740E: 39 8D 70 01 00 00  cmp         dword ptr [rbp+0000000000000170h],ecx
  0000000140007414: 75 0D              jne         0000000140007423
  0000000140007416: C7 45 70 01 00 00  mov         dword ptr [rbp+70h],1
                    00
  000000014000741D: 48 8B 55 58        mov         rdx,qword ptr [rbp+58h]
  0000000140007421: 89 02              mov         dword ptr [rdx],eax
  0000000140007423: 5A                 pop         rdx
  0000000140007424: 59                 pop         rcx
  0000000140007425: 5B                 pop         rbx
  0000000140007426: 58                 pop         rax
  0000000140007427: 8B 45 70           mov         eax,dword ptr [rbp+70h]
  000000014000742A: 8B 55 54           mov         edx,dword ptr [rbp+54h]
  000000014000742D: 89 05 0D 72 00 00  mov         dword ptr [000000014000E640h],eax
  0000000140007433: 89 15 0B 72 00 00  mov         dword ptr [000000014000E644h],edx
  0000000140007439: 83 FA 04           cmp         edx,4
  000000014000743C: 0F 8C 3A 01 00 00  jl          000000014000757C
  0000000140007442: C7 45 0C 00 00 00  mov         dword ptr [rbp+0Ch],0
                    00
  0000000140007449: 48 8D 85 A8 00 00  lea         rax,[rbp+00000000000000A8h]
                    00
  0000000140007450: 48 89 45 20        mov         qword ptr [rbp+20h],rax
  0000000140007454: 48 89 7D 40        mov         qword ptr [rbp+40h],rdi
  0000000140007458: 50                 push        rax
  0000000140007459: 53                 push        rbx
  000000014000745A: 51                 push        rcx
  000000014000745B: 52                 push        rdx
  000000014000745C: 57                 push        rdi
  000000014000745D: 4C 8B 45 20        mov         r8,qword ptr [rbp+20h]
  0000000140007461: BF 00 00 00 00     mov         edi,0
  0000000140007466: 89 F9              mov         ecx,edi
  0000000140007468: B8 04 00 00 00     mov         eax,4
  000000014000746D: 0F A2              cpuid
  000000014000746F: A9 1F 00 00 00     test        eax,1Fh
  0000000140007474: 74 1D              je          0000000140007493
  0000000140007476: 41 89 00           mov         dword ptr [r8],eax
  0000000140007479: 41 89 58 04        mov         dword ptr [r8+4],ebx
  000000014000747D: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140007481: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  0000000140007485: 83 C7 01           add         edi,1
  0000000140007488: 83 FF 08           cmp         edi,8
  000000014000748B: 7D 06              jge         0000000140007493
  000000014000748D: 49 83 C0 10        add         r8,10h
  0000000140007491: EB D3              jmp         0000000140007466
  0000000140007493: 89 7D 0C           mov         dword ptr [rbp+0Ch],edi
  0000000140007496: 5F                 pop         rdi
  0000000140007497: 5A                 pop         rdx
  0000000140007498: 59                 pop         rcx
  0000000140007499: 5B                 pop         rbx
  000000014000749A: 58                 pop         rax
  000000014000749B: 45 33 D2           xor         r10d,r10d
  000000014000749E: 4C 63 45 0C        movsxd      r8,dword ptr [rbp+0Ch]
  00000001400074A2: 33 DB              xor         ebx,ebx
  00000001400074A4: 48 8B 7D 40        mov         rdi,qword ptr [rbp+40h]
  00000001400074A8: 4D 85 C0           test        r8,r8
  00000001400074AB: 0F 8E CB 00 00 00  jle         000000014000757C
  00000001400074B1: 4C 89 65 28        mov         qword ptr [rbp+28h],r12
  00000001400074B5: 4C 89 6D 30        mov         qword ptr [rbp+30h],r13
  00000001400074B9: 4C 89 75 38        mov         qword ptr [rbp+38h],r14
  00000001400074BD: 8A 94 1D A8 00 00  mov         dl,byte ptr [rbp+rbx+00000000000000A8h]
                    00
  00000001400074C4: 88 D0              mov         al,dl
  00000001400074C6: 24 1D              and         al,1Dh
  00000001400074C8: 3C 01              cmp         al,1
  00000001400074CA: 0F 85 90 00 00 00  jne         0000000140007560
  00000001400074D0: 80 E2 E0           and         dl,0E0h
  00000001400074D3: 4C 8D 25 26 8B FF  lea         r12,[0000000140000000h]
                    FF
  00000001400074DA: C0 EA 05           shr         dl,5
  00000001400074DD: 4D 89 E5           mov         r13,r12
  00000001400074E0: 0F B6 D2           movzx       edx,dl
  00000001400074E3: 4D 89 EE           mov         r14,r13
  00000001400074E6: 48 C1 E2 04        shl         rdx,4
  00000001400074EA: 0F B7 8C 1D AC 00  movzx       ecx,word ptr [rbp+rbx+00000000000000ACh]
                    00 00
  00000001400074F2: 81 E1 FF 0F 00 00  and         ecx,0FFFh
  00000001400074F8: 8B 84 1D AC 00 00  mov         eax,dword ptr [rbp+rbx+00000000000000ACh]
                    00
  00000001400074FF: FF C1              inc         ecx
  0000000140007501: 25 00 F0 3F 00     and         eax,3FF000h
  0000000140007506: 41 89 8C 14 44 E6  mov         dword ptr [r12+rdx+000000000000E644h],ecx
                    00 00
  000000014000750E: 44 0F B7 A4 1D AE  movzx       r12d,word ptr [rbp+rbx+00000000000000AEh]
                    00 00 00
  0000000140007517: 41 81 E4 C0 FF 00  and         r12d,0FFC0h
                    00
  000000014000751E: C1 E8 0C           shr         eax,0Ch
  0000000140007521: 41 C1 EC 06        shr         r12d,6
  0000000140007525: FF C0              inc         eax
  0000000140007527: 41 89 84 15 48 E6  mov         dword ptr [r13+rdx+000000000000E648h],eax
                    00 00
  000000014000752F: 41 FF C4           inc         r12d
  0000000140007532: 44 8B AC 1D B0 00  mov         r13d,dword ptr [rbp+rbx+00000000000000B0h]
                    00 00
  000000014000753A: 41 FF C5           inc         r13d
  000000014000753D: 41 0F AF C4        imul        eax,r12d
  0000000140007541: 44 0F AF E9        imul        r13d,ecx
  0000000140007545: 44 0F AF E8        imul        r13d,eax
  0000000140007549: 4C 89 F0           mov         rax,r14
  000000014000754C: 41 C1 ED 0A        shr         r13d,0Ah
  0000000140007550: 45 89 A4 16 4C E6  mov         dword ptr [r14+rdx+000000000000E64Ch],r12d
                    00 00
  0000000140007558: 44 89 AC 10 40 E6  mov         dword ptr [rax+rdx+000000000000E640h],r13d
                    00 00
  0000000140007560: 49 FF C2           inc         r10
  0000000140007563: 48 83 C3 10        add         rbx,10h
  0000000140007567: 4D 3B D0           cmp         r10,r8
  000000014000756A: 0F 8C 4D FF FF FF  jl          00000001400074BD
  0000000140007570: 4C 8B 65 28        mov         r12,qword ptr [rbp+28h]
  0000000140007574: 4C 8B 6D 30        mov         r13,qword ptr [rbp+30h]
  0000000140007578: 4C 8B 75 38        mov         r14,qword ptr [rbp+38h]
  000000014000757C: 83 3D CD 70 00 00  cmp         dword ptr [000000014000E650h],0
                    00
  0000000140007583: 0F 85 BC 01 00 00  jne         0000000140007745
  0000000140007589: 83 7D 54 02        cmp         dword ptr [rbp+54h],2
  000000014000758D: 0F 8C B2 01 00 00  jl          0000000140007745
  0000000140007593: 48 8D 85 28 01 00  lea         rax,[rbp+0000000000000128h]
                    00
  000000014000759A: 48 89 45 10        mov         qword ptr [rbp+10h],rax
  000000014000759E: 50                 push        rax
  000000014000759F: 53                 push        rbx
  00000001400075A0: 51                 push        rcx
  00000001400075A1: 52                 push        rdx
  00000001400075A2: 4C 8B 45 10        mov         r8,qword ptr [rbp+10h]
  00000001400075A6: B8 02 00 00 00     mov         eax,2
  00000001400075AB: 0F A2              cpuid
  00000001400075AD: 41 89 00           mov         dword ptr [r8],eax
  00000001400075B0: 41 89 58 04        mov         dword ptr [r8+4],ebx
  00000001400075B4: 41 89 48 08        mov         dword ptr [r8+8],ecx
  00000001400075B8: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  00000001400075BC: 3C 01              cmp         al,1
  00000001400075BE: 7E 4D              jle         000000014000760D
  00000001400075C0: 3C 02              cmp         al,2
  00000001400075C2: 7E 32              jle         00000001400075F6
  00000001400075C4: 3C 03              cmp         al,3
  00000001400075C6: 7E 17              jle         00000001400075DF
  00000001400075C8: B8 02 00 00 00     mov         eax,2
  00000001400075CD: 0F A2              cpuid
  00000001400075CF: 41 89 40 30        mov         dword ptr [r8+30h],eax
  00000001400075D3: 41 89 58 34        mov         dword ptr [r8+34h],ebx
  00000001400075D7: 41 89 48 38        mov         dword ptr [r8+38h],ecx
  00000001400075DB: 41 89 50 3C        mov         dword ptr [r8+3Ch],edx
  00000001400075DF: B8 02 00 00 00     mov         eax,2
  00000001400075E4: 0F A2              cpuid
  00000001400075E6: 41 89 40 20        mov         dword ptr [r8+20h],eax
  00000001400075EA: 41 89 58 24        mov         dword ptr [r8+24h],ebx
  00000001400075EE: 41 89 48 28        mov         dword ptr [r8+28h],ecx
  00000001400075F2: 41 89 50 2C        mov         dword ptr [r8+2Ch],edx
  00000001400075F6: B8 02 00 00 00     mov         eax,2
  00000001400075FB: 0F A2              cpuid
  00000001400075FD: 41 89 40 10        mov         dword ptr [r8+10h],eax
  0000000140007601: 41 89 58 14        mov         dword ptr [r8+14h],ebx
  0000000140007605: 41 89 48 18        mov         dword ptr [r8+18h],ecx
  0000000140007609: 41 89 50 1C        mov         dword ptr [r8+1Ch],edx
  000000014000760D: 5A                 pop         rdx
  000000014000760E: 59                 pop         rcx
  000000014000760F: 5B                 pop         rbx
  0000000140007610: 58                 pop         rax
  0000000140007611: 0F B6 85 28 01 00  movzx       eax,byte ptr [rbp+0000000000000128h]
                    00
  0000000140007618: 83 F8 04           cmp         eax,4
  000000014000761B: 7E 07              jle         0000000140007624
  000000014000761D: B8 10 00 00 00     mov         eax,10h
  0000000140007622: EB 0D              jmp         0000000140007631
  0000000140007624: 48 C1 E0 02        shl         rax,2
  0000000140007628: 48 85 C0           test        rax,rax
  000000014000762B: 0F 8E 14 01 00 00  jle         0000000140007745
  0000000140007631: 48 89 75 18        mov         qword ptr [rbp+18h],rsi
  0000000140007635: 45 33 D2           xor         r10d,r10d
  0000000140007638: 48 89 7D 40        mov         qword ptr [rbp+40h],rdi
  000000014000763C: 48 89 C7           mov         rdi,rax
  000000014000763F: 4C 89 65 28        mov         qword ptr [rbp+28h],r12
  0000000140007643: 4C 89 6D 30        mov         qword ptr [rbp+30h],r13
  0000000140007647: 4C 89 75 38        mov         qword ptr [rbp+38h],r14
  000000014000764B: 42 F6 84 95 2B 01  test        byte ptr [rbp+r10*4+000000000000012Bh],80h
                    00 00 80
  0000000140007654: 0F 85 C3 00 00 00  jne         000000014000771D
  000000014000765A: 45 33 ED           xor         r13d,r13d
  000000014000765D: 4E 8D A4 95 28 01  lea         r12,[rbp+r10*4+0000000000000128h]
                    00 00
  0000000140007665: 47 0F B6 74 25 00  movzx       r14d,byte ptr [r13+r12]
  000000014000766B: 49 81 FE FF 00 00  cmp         r14,0FFh
                    00
  0000000140007672: 0F 84 64 01 00 00  je          00000001400077DC
  0000000140007678: 48 8D 15 81 89 FF  lea         rdx,[0000000140000000h]
                    FF
  000000014000767F: 42 8A 8C F2 40 D0  mov         cl,byte ptr [rdx+r14*8+000000000000D040h]
                    00 00
  0000000140007687: 80 E1 07           and         cl,7
  000000014000768A: 0F B6 F1           movzx       esi,cl
  000000014000768D: 48 85 F6           test        rsi,rsi
  0000000140007690: 74 7E              je          0000000140007710
  0000000140007692: 48 83 FE 02        cmp         rsi,2
  0000000140007696: 0F 84 B8 00 00 00  je          0000000140007754
  000000014000769C: 48 8D 15 5D 89 FF  lea         rdx,[0000000140000000h]
                    FF
  00000001400076A3: 48 C1 E6 04        shl         rsi,4
  00000001400076A7: 48 89 D3           mov         rbx,rdx
  00000001400076AA: 49 89 D0           mov         r8,rdx
  00000001400076AD: 42 0F B7 8C F2 40  movzx       ecx,word ptr [rdx+r14*8+000000000000D040h]
                    D0 00 00
  00000001400076B6: 81 E1 F8 7F 00 00  and         ecx,7FF8h
  00000001400076BC: C1 E9 03           shr         ecx,3
  00000001400076BF: 89 8C 33 44 E6 00  mov         dword ptr [rbx+rsi+000000000000E644h],ecx
                    00
  00000001400076C6: 48 89 D9           mov         rcx,rbx
  00000001400076C9: 43 8B 94 F0 40 D0  mov         edx,dword ptr [r8+r14*8+000000000000D040h]
                    00 00
  00000001400076D1: 81 E2 00 80 3F 00  and         edx,3F8000h
  00000001400076D7: C1 EA 0F           shr         edx,0Fh
  00000001400076DA: 89 94 31 48 E6 00  mov         dword ptr [rcx+rsi+000000000000E648h],edx
                    00
  00000001400076E1: 48 89 DA           mov         rdx,rbx
  00000001400076E4: 42 0F B7 94 F2 42  movzx       edx,word ptr [rdx+r14*8+000000000000D042h]
                    D0 00 00
  00000001400076ED: 81 E2 C0 FF 00 00  and         edx,0FFC0h
  00000001400076F3: C1 EA 06           shr         edx,6
  00000001400076F6: 89 94 31 4C E6 00  mov         dword ptr [rcx+rsi+000000000000E64Ch],edx
                    00
  00000001400076FD: 48 89 DA           mov         rdx,rbx
  0000000140007700: 46 8B B4 F2 44 D0  mov         r14d,dword ptr [rdx+r14*8+000000000000D044h]
                    00 00
  0000000140007708: 44 89 B4 32 40 E6  mov         dword ptr [rdx+rsi+000000000000E640h],r14d
                    00 00
  0000000140007710: 49 FF C5           inc         r13
  0000000140007713: 49 83 FD 04        cmp         r13,4
  0000000140007717: 0F 8C 48 FF FF FF  jl          0000000140007665
  000000014000771D: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140007725: 49 FF C2           inc         r10
  0000000140007728: 4C 3B D7           cmp         r10,rdi
  000000014000772B: 0F 8C 1A FF FF FF  jl          000000014000764B
  0000000140007731: 48 8B 75 18        mov         rsi,qword ptr [rbp+18h]
  0000000140007735: 48 8B 7D 40        mov         rdi,qword ptr [rbp+40h]
  0000000140007739: 4C 8B 65 28        mov         r12,qword ptr [rbp+28h]
  000000014000773D: 4C 8B 6D 30        mov         r13,qword ptr [rbp+30h]
  0000000140007741: 4C 8B 75 38        mov         r14,qword ptr [rbp+38h]
  0000000140007745: C7 05 FD 6E 00 00  mov         dword ptr [000000014000E64Ch],1
                    01 00 00 00
  000000014000774F: E9 63 F9 FF FF     jmp         00000001400070B7
  0000000140007754: 49 83 FE 49        cmp         r14,49h
  0000000140007758: 0F 85 3E FF FF FF  jne         000000014000769C
  000000014000775E: C7 45 08 01 00 00  mov         dword ptr [rbp+8],1
                    00
  0000000140007765: 48 8D 95 98 00 00  lea         rdx,[rbp+0000000000000098h]
                    00
  000000014000776C: 48 89 55 00        mov         qword ptr [rbp],rdx
  0000000140007770: 50                 push        rax
  0000000140007771: 53                 push        rbx
  0000000140007772: 51                 push        rcx
  0000000140007773: 52                 push        rdx
  0000000140007774: 4C 8B 45 00        mov         r8,qword ptr [rbp]
  0000000140007778: 8B 45 08           mov         eax,dword ptr [rbp+8]
  000000014000777B: 0F A2              cpuid
  000000014000777D: 41 89 00           mov         dword ptr [r8],eax
  0000000140007780: 41 89 58 04        mov         dword ptr [r8+4],ebx
  0000000140007784: 41 89 48 08        mov         dword ptr [r8+8],ecx
  0000000140007788: 41 89 50 0C        mov         dword ptr [r8+0Ch],edx
  000000014000778C: 5A                 pop         rdx
  000000014000778D: 59                 pop         rcx
  000000014000778E: 5B                 pop         rbx
  000000014000778F: 58                 pop         rax
  0000000140007790: 8B 8D 98 00 00 00  mov         ecx,dword ptr [rbp+0000000000000098h]
  0000000140007796: 89 CA              mov         edx,ecx
  0000000140007798: 81 E2 00 0F 00 00  and         edx,0F00h
  000000014000779E: 81 FA 00 0F 00 00  cmp         edx,0F00h
  00000001400077A4: 0F 85 F2 FE FF FF  jne         000000014000769C
  00000001400077AA: F7 C1 00 00 00 0F  test        ecx,0F000000h
  00000001400077B0: 0F 85 E6 FE FF FF  jne         000000014000769C
  00000001400077B6: 89 CA              mov         edx,ecx
  00000001400077B8: C1 EA 0C           shr         edx,0Ch
  00000001400077BB: C1 E9 04           shr         ecx,4
  00000001400077BE: 81 E2 F0 00 00 00  and         edx,0F0h
  00000001400077C4: 83 E1 0F           and         ecx,0Fh
  00000001400077C7: 0B D1              or          edx,ecx
  00000001400077C9: 83 FA 06           cmp         edx,6
  00000001400077CC: 0F 85 CA FE FF FF  jne         000000014000769C
  00000001400077D2: BE 03 00 00 00     mov         esi,3
  00000001400077D7: E9 C0 FE FF FF     jmp         000000014000769C
  00000001400077DC: 48 8B 75 18        mov         rsi,qword ptr [rbp+18h]
  00000001400077E0: 66 0F EF C0        pxor        xmm0,xmm0
  00000001400077E4: 48 8B 7D 40        mov         rdi,qword ptr [rbp+40h]
  00000001400077E8: 4C 8B 65 28        mov         r12,qword ptr [rbp+28h]
  00000001400077EC: 4C 8B 6D 30        mov         r13,qword ptr [rbp+30h]
  00000001400077F0: 4C 8B 75 38        mov         r14,qword ptr [rbp+38h]
  00000001400077F4: F3 0F 7F 05 54 6E  movdqu      xmmword ptr [000000014000E650h],xmm0
                    00 00
  00000001400077FC: F3 0F 7F 05 5C 6E  movdqu      xmmword ptr [000000014000E660h],xmm0
                    00 00
  0000000140007804: F3 0F 7F 05 64 6E  movdqu      xmmword ptr [000000014000E670h],xmm0
                    00 00
  000000014000780C: E9 34 FF FF FF     jmp         0000000140007745
  0000000140007811: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140007819: 0F 1F 80 00 00 00  nop         dword ptr [rax+0000000000000000h]
                    00
  0000000140007820: 40 53              push        rbx
  0000000140007822: 48 83 EC 20        sub         rsp,20h
  0000000140007826: 48 8B D9           mov         rbx,rcx
  0000000140007829: EB 0F              jmp         000000014000783A
  000000014000782B: 48 8B CB           mov         rcx,rbx
  000000014000782E: E8 C1 16 00 00     call        0000000140008EF4
  0000000140007833: 85 C0              test        eax,eax
  0000000140007835: 74 13              je          000000014000784A
  0000000140007837: 48 8B CB           mov         rcx,rbx
  000000014000783A: E8 BB 16 00 00     call        0000000140008EFA
  000000014000783F: 48 85 C0           test        rax,rax
  0000000140007842: 74 E7              je          000000014000782B
  0000000140007844: 48 83 C4 20        add         rsp,20h
  0000000140007848: 5B                 pop         rbx
  0000000140007849: C3                 ret
  000000014000784A: 48 83 FB FF        cmp         rbx,0FFFFFFFFFFFFFFFFh
  000000014000784E: 74 06              je          0000000140007856
  0000000140007850: E8 57 04 00 00     call        0000000140007CAC
  0000000140007855: CC                 int         3
  0000000140007856: E8 71 04 00 00     call        0000000140007CCC
  000000014000785B: CC                 int         3
  000000014000785C: E9 9F 16 00 00     jmp         0000000140008F00
  0000000140007861: CC                 int         3
  0000000140007862: CC                 int         3
  0000000140007863: CC                 int         3
  0000000140007864: E9 F3 FF FF FF     jmp         000000014000785C
  0000000140007869: CC                 int         3
  000000014000786A: CC                 int         3
  000000014000786B: CC                 int         3
  000000014000786C: 40 53              push        rbx
  000000014000786E: 48 83 EC 20        sub         rsp,20h
  0000000140007872: B9 01 00 00 00     mov         ecx,1
  0000000140007877: E8 90 16 00 00     call        0000000140008F0C
  000000014000787C: E8 87 07 00 00     call        0000000140008008
  0000000140007881: 8B C8              mov         ecx,eax
  0000000140007883: E8 BA 16 00 00     call        0000000140008F42
  0000000140007888: E8 6F 07 00 00     call        0000000140007FFC
  000000014000788D: 8B D8              mov         ebx,eax
  000000014000788F: E8 DE 16 00 00     call        0000000140008F72
  0000000140007894: B9 01 00 00 00     mov         ecx,1
  0000000140007899: 89 18              mov         dword ptr [rax],ebx
  000000014000789B: E8 E8 04 00 00     call        0000000140007D88
  00000001400078A0: 84 C0              test        al,al
  00000001400078A2: 74 73              je          0000000140007917
  00000001400078A4: E8 DB 09 00 00     call        0000000140008284
  00000001400078A9: 48 8D 0D 10 0A 00  lea         rcx,[00000001400082C0h]
                    00
  00000001400078B0: E8 83 06 00 00     call        0000000140007F38
  00000001400078B5: E8 46 07 00 00     call        0000000140008000
  00000001400078BA: 8B C8              mov         ecx,eax
  00000001400078BC: E8 57 16 00 00     call        0000000140008F18
  00000001400078C1: 85 C0              test        eax,eax
  00000001400078C3: 75 52              jne         0000000140007917
  00000001400078C5: E8 46 07 00 00     call        0000000140008010
  00000001400078CA: E8 7D 07 00 00     call        000000014000804C
  00000001400078CF: 85 C0              test        eax,eax
  00000001400078D1: 74 0C              je          00000001400078DF
  00000001400078D3: 48 8D 0D 22 07 00  lea         rcx,[0000000140007FFCh]
                    00
  00000001400078DA: E8 33 16 00 00     call        0000000140008F12
  00000001400078DF: E8 40 07 00 00     call        0000000140008024
  00000001400078E4: E8 3B 07 00 00     call        0000000140008024
  00000001400078E9: E8 0E 07 00 00     call        0000000140007FFC
  00000001400078EE: 8B C8              mov         ecx,eax
  00000001400078F0: E8 71 16 00 00     call        0000000140008F66
  00000001400078F5: E8 26 07 00 00     call        0000000140008020
  00000001400078FA: 84 C0              test        al,al
  00000001400078FC: 74 05              je          0000000140007903
  00000001400078FE: E8 1B 16 00 00     call        0000000140008F1E
  0000000140007903: E8 F4 06 00 00     call        0000000140007FFC
  0000000140007908: E8 AF 08 00 00     call        00000001400081BC
  000000014000790D: 85 C0              test        eax,eax
  000000014000790F: 75 06              jne         0000000140007917
  0000000140007911: 48 83 C4 20        add         rsp,20h
  0000000140007915: 5B                 pop         rbx
  0000000140007916: C3                 ret
  0000000140007917: B9 07 00 00 00     mov         ecx,7
  000000014000791C: E8 4F 07 00 00     call        0000000140008070
  0000000140007921: CC                 int         3
  0000000140007922: CC                 int         3
  0000000140007923: CC                 int         3
  0000000140007924: 48 83 EC 28        sub         rsp,28h
  0000000140007928: E8 03 07 00 00     call        0000000140008030
  000000014000792D: 33 C0              xor         eax,eax
  000000014000792F: 48 83 C4 28        add         rsp,28h
  0000000140007933: C3                 ret
  0000000140007934: 48 83 EC 28        sub         rsp,28h
  0000000140007938: E8 DB 08 00 00     call        0000000140008218
  000000014000793D: E8 BA 06 00 00     call        0000000140007FFC
  0000000140007942: 8B C8              mov         ecx,eax
  0000000140007944: 48 83 C4 28        add         rsp,28h
  0000000140007948: E9 1F 16 00 00     jmp         0000000140008F6C
  000000014000794D: CC                 int         3
  000000014000794E: CC                 int         3
  000000014000794F: CC                 int         3
  0000000140007950: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140007955: 48 89 74 24 10     mov         qword ptr [rsp+10h],rsi
  000000014000795A: 57                 push        rdi
  000000014000795B: 48 83 EC 30        sub         rsp,30h
  000000014000795F: B9 01 00 00 00     mov         ecx,1
  0000000140007964: E8 D3 03 00 00     call        0000000140007D3C
  0000000140007969: 84 C0              test        al,al
  000000014000796B: 0F 84 36 01 00 00  je          0000000140007AA7
  0000000140007971: 40 32 F6           xor         sil,sil
  0000000140007974: 40 88 74 24 20     mov         byte ptr [rsp+20h],sil
  0000000140007979: E8 82 03 00 00     call        0000000140007D00
  000000014000797E: 8A D8              mov         bl,al
  0000000140007980: 8B 0D C2 5F 00 00  mov         ecx,dword ptr [000000014000D948h]
  0000000140007986: 83 F9 01           cmp         ecx,1
  0000000140007989: 0F 84 23 01 00 00  je          0000000140007AB2
  000000014000798F: 85 C9              test        ecx,ecx
  0000000140007991: 75 4A              jne         00000001400079DD
  0000000140007993: C7 05 AB 5F 00 00  mov         dword ptr [000000014000D948h],1
                    01 00 00 00
  000000014000799D: 48 8D 15 E4 28 00  lea         rdx,[000000014000A288h]
                    00
  00000001400079A4: 48 8D 0D C5 28 00  lea         rcx,[000000014000A270h]
                    00
  00000001400079AB: E8 80 15 00 00     call        0000000140008F30
  00000001400079B0: 85 C0              test        eax,eax
  00000001400079B2: 74 0A              je          00000001400079BE
  00000001400079B4: B8 FF 00 00 00     mov         eax,0FFh
  00000001400079B9: E9 D9 00 00 00     jmp         0000000140007A97
  00000001400079BE: 48 8D 15 A3 28 00  lea         rdx,[000000014000A268h]
                    00
  00000001400079C5: 48 8D 0D 84 28 00  lea         rcx,[000000014000A250h]
                    00
  00000001400079CC: E8 59 15 00 00     call        0000000140008F2A
  00000001400079D1: C7 05 6D 5F 00 00  mov         dword ptr [000000014000D948h],2
                    02 00 00 00
  00000001400079DB: EB 08              jmp         00000001400079E5
  00000001400079DD: 40 B6 01           mov         sil,1
  00000001400079E0: 40 88 74 24 20     mov         byte ptr [rsp+20h],sil
  00000001400079E5: 8A CB              mov         cl,bl
  00000001400079E7: E8 C0 04 00 00     call        0000000140007EAC
  00000001400079EC: E8 67 06 00 00     call        0000000140008058
  00000001400079F1: 48 8B D8           mov         rbx,rax
  00000001400079F4: 48 83 38 00        cmp         qword ptr [rax],0
  00000001400079F8: 74 1E              je          0000000140007A18
  00000001400079FA: 48 8B C8           mov         rcx,rax
  00000001400079FD: E8 12 04 00 00     call        0000000140007E14
  0000000140007A02: 84 C0              test        al,al
  0000000140007A04: 74 12              je          0000000140007A18
  0000000140007A06: 45 33 C0           xor         r8d,r8d
  0000000140007A09: 41 8D 50 02        lea         edx,[r8+2]
  0000000140007A0D: 33 C9              xor         ecx,ecx
  0000000140007A0F: 48 8B 03           mov         rax,qword ptr [rbx]
  0000000140007A12: FF 15 20 28 00 00  call        qword ptr [000000014000A238h]
  0000000140007A18: E8 43 06 00 00     call        0000000140008060
  0000000140007A1D: 48 8B D8           mov         rbx,rax
  0000000140007A20: 48 83 38 00        cmp         qword ptr [rax],0
  0000000140007A24: 74 14              je          0000000140007A3A
  0000000140007A26: 48 8B C8           mov         rcx,rax
  0000000140007A29: E8 E6 03 00 00     call        0000000140007E14
  0000000140007A2E: 84 C0              test        al,al
  0000000140007A30: 74 08              je          0000000140007A3A
  0000000140007A32: 48 8B 0B           mov         rcx,qword ptr [rbx]
  0000000140007A35: E8 26 15 00 00     call        0000000140008F60
  0000000140007A3A: E8 E5 14 00 00     call        0000000140008F24
  0000000140007A3F: 48 8B F8           mov         rdi,rax
  0000000140007A42: E8 07 15 00 00     call        0000000140008F4E
  0000000140007A47: 48 8B 18           mov         rbx,qword ptr [rax]
  0000000140007A4A: E8 F9 14 00 00     call        0000000140008F48
  0000000140007A4F: 4C 8B C7           mov         r8,rdi
  0000000140007A52: 48 8B D3           mov         rdx,rbx
  0000000140007A55: 8B 08              mov         ecx,dword ptr [rax]
  0000000140007A57: E8 A4 95 FF FF     call        0000000140001000
  0000000140007A5C: 8B D8              mov         ebx,eax
  0000000140007A5E: E8 61 07 00 00     call        00000001400081C4
  0000000140007A63: 84 C0              test        al,al
  0000000140007A65: 74 55              je          0000000140007ABC
  0000000140007A67: 40 84 F6           test        sil,sil
  0000000140007A6A: 75 05              jne         0000000140007A71
  0000000140007A6C: E8 E3 14 00 00     call        0000000140008F54
  0000000140007A71: 33 D2              xor         edx,edx
  0000000140007A73: B1 01              mov         cl,1
  0000000140007A75: E8 56 04 00 00     call        0000000140007ED0
  0000000140007A7A: 8B C3              mov         eax,ebx
  0000000140007A7C: EB 19              jmp         0000000140007A97
  0000000140007A7E: 8B D8              mov         ebx,eax
  0000000140007A80: E8 3F 07 00 00     call        00000001400081C4
  0000000140007A85: 84 C0              test        al,al
  0000000140007A87: 74 3B              je          0000000140007AC4
  0000000140007A89: 80 7C 24 20 00     cmp         byte ptr [rsp+20h],0
  0000000140007A8E: 75 05              jne         0000000140007A95
  0000000140007A90: E8 C5 14 00 00     call        0000000140008F5A
  0000000140007A95: 8B C3              mov         eax,ebx
  0000000140007A97: 48 8B 5C 24 40     mov         rbx,qword ptr [rsp+40h]
  0000000140007A9C: 48 8B 74 24 48     mov         rsi,qword ptr [rsp+48h]
  0000000140007AA1: 48 83 C4 30        add         rsp,30h
  0000000140007AA5: 5F                 pop         rdi
  0000000140007AA6: C3                 ret
  0000000140007AA7: B9 07 00 00 00     mov         ecx,7
  0000000140007AAC: E8 BF 05 00 00     call        0000000140008070
  0000000140007AB1: 90                 nop
  0000000140007AB2: B9 07 00 00 00     mov         ecx,7
  0000000140007AB7: E8 B4 05 00 00     call        0000000140008070
  0000000140007ABC: 8B CB              mov         ecx,ebx
  0000000140007ABE: E8 73 14 00 00     call        0000000140008F36
  0000000140007AC3: 90                 nop
  0000000140007AC4: 8B CB              mov         ecx,ebx
  0000000140007AC6: E8 71 14 00 00     call        0000000140008F3C
  0000000140007ACB: 90                 nop
  0000000140007ACC: 48 83 EC 28        sub         rsp,28h
  0000000140007AD0: E8 7B 04 00 00     call        0000000140007F50
  0000000140007AD5: 48 83 C4 28        add         rsp,28h
  0000000140007AD9: E9 72 FE FF FF     jmp         0000000140007950
  0000000140007ADE: CC                 int         3
  0000000140007ADF: CC                 int         3
  0000000140007AE0: 40 53              push        rbx
  0000000140007AE2: 48 83 EC 20        sub         rsp,20h
  0000000140007AE6: 48 8B D9           mov         rbx,rcx
  0000000140007AE9: 48 8B C2           mov         rax,rdx
  0000000140007AEC: 48 8D 0D E5 27 00  lea         rcx,[000000014000A2D8h]
                    00
  0000000140007AF3: 0F 57 C0           xorps       xmm0,xmm0
  0000000140007AF6: 48 89 0B           mov         qword ptr [rbx],rcx
  0000000140007AF9: 48 8D 53 08        lea         rdx,[rbx+8]
  0000000140007AFD: 48 8D 48 08        lea         rcx,[rax+8]
  0000000140007B01: 0F 11 02           movups      xmmword ptr [rdx],xmm0
  0000000140007B04: E8 C7 13 00 00     call        0000000140008ED0
  0000000140007B09: 48 8D 05 F8 27 00  lea         rax,[000000014000A308h]
                    00
  0000000140007B10: 48 89 03           mov         qword ptr [rbx],rax
  0000000140007B13: 48 8B C3           mov         rax,rbx
  0000000140007B16: 48 83 C4 20        add         rsp,20h
  0000000140007B1A: 5B                 pop         rbx
  0000000140007B1B: C3                 ret
  0000000140007B1C: 48 83 61 10 00     and         qword ptr [rcx+10h],0
  0000000140007B21: 48 8D 05 F0 27 00  lea         rax,[000000014000A318h]
                    00
  0000000140007B28: 48 89 41 08        mov         qword ptr [rcx+8],rax
  0000000140007B2C: 48 8D 05 D5 27 00  lea         rax,[000000014000A308h]
                    00
  0000000140007B33: 48 89 01           mov         qword ptr [rcx],rax
  0000000140007B36: 48 8B C1           mov         rax,rcx
  0000000140007B39: C3                 ret
  0000000140007B3A: CC                 int         3
  0000000140007B3B: CC                 int         3
  0000000140007B3C: 40 53              push        rbx
  0000000140007B3E: 48 83 EC 20        sub         rsp,20h
  0000000140007B42: 48 8B D9           mov         rbx,rcx
  0000000140007B45: 48 8B C2           mov         rax,rdx
  0000000140007B48: 48 8D 0D 89 27 00  lea         rcx,[000000014000A2D8h]
                    00
  0000000140007B4F: 0F 57 C0           xorps       xmm0,xmm0
  0000000140007B52: 48 89 0B           mov         qword ptr [rbx],rcx
  0000000140007B55: 48 8D 53 08        lea         rdx,[rbx+8]
  0000000140007B59: 48 8D 48 08        lea         rcx,[rax+8]
  0000000140007B5D: 0F 11 02           movups      xmmword ptr [rdx],xmm0
  0000000140007B60: E8 6B 13 00 00     call        0000000140008ED0
  0000000140007B65: 48 8D 05 C4 27 00  lea         rax,[000000014000A330h]
                    00
  0000000140007B6C: 48 89 03           mov         qword ptr [rbx],rax
  0000000140007B6F: 48 8B C3           mov         rax,rbx
  0000000140007B72: 48 83 C4 20        add         rsp,20h
  0000000140007B76: 5B                 pop         rbx
  0000000140007B77: C3                 ret
  0000000140007B78: 48 83 61 10 00     and         qword ptr [rcx+10h],0
  0000000140007B7D: 48 8D 05 BC 27 00  lea         rax,[000000014000A340h]
                    00
  0000000140007B84: 48 89 41 08        mov         qword ptr [rcx+8],rax
  0000000140007B88: 48 8D 05 A1 27 00  lea         rax,[000000014000A330h]
                    00
  0000000140007B8F: 48 89 01           mov         qword ptr [rcx],rax
  0000000140007B92: 48 8B C1           mov         rax,rcx
  0000000140007B95: C3                 ret
  0000000140007B96: CC                 int         3
  0000000140007B97: CC                 int         3
  0000000140007B98: 40 53              push        rbx
  0000000140007B9A: 48 83 EC 20        sub         rsp,20h
  0000000140007B9E: 48 8B D9           mov         rbx,rcx
  0000000140007BA1: 48 8B C2           mov         rax,rdx
  0000000140007BA4: 48 8D 0D 2D 27 00  lea         rcx,[000000014000A2D8h]
                    00
  0000000140007BAB: 0F 57 C0           xorps       xmm0,xmm0
  0000000140007BAE: 48 89 0B           mov         qword ptr [rbx],rcx
  0000000140007BB1: 48 8D 53 08        lea         rdx,[rbx+8]
  0000000140007BB5: 48 8D 48 08        lea         rcx,[rax+8]
  0000000140007BB9: 0F 11 02           movups      xmmword ptr [rdx],xmm0
  0000000140007BBC: E8 0F 13 00 00     call        0000000140008ED0
  0000000140007BC1: 48 8B C3           mov         rax,rbx
  0000000140007BC4: 48 83 C4 20        add         rsp,20h
  0000000140007BC8: 5B                 pop         rbx
  0000000140007BC9: C3                 ret
  0000000140007BCA: CC                 int         3
  0000000140007BCB: CC                 int         3
  0000000140007BCC: 48 8D 05 05 27 00  lea         rax,[000000014000A2D8h]
                    00
  0000000140007BD3: 48 89 01           mov         qword ptr [rcx],rax
  0000000140007BD6: 48 83 C1 08        add         rcx,8
  0000000140007BDA: E9 F7 12 00 00     jmp         0000000140008ED6
  0000000140007BDF: CC                 int         3
  0000000140007BE0: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140007BE5: 57                 push        rdi
  0000000140007BE6: 48 83 EC 20        sub         rsp,20h
  0000000140007BEA: 48 8D 05 E7 26 00  lea         rax,[000000014000A2D8h]
                    00
  0000000140007BF1: 48 8B F9           mov         rdi,rcx
  0000000140007BF4: 48 89 01           mov         qword ptr [rcx],rax
  0000000140007BF7: 8B DA              mov         ebx,edx
  0000000140007BF9: 48 83 C1 08        add         rcx,8
  0000000140007BFD: E8 D4 12 00 00     call        0000000140008ED6
  0000000140007C02: F6 C3 01           test        bl,1
  0000000140007C05: 74 0D              je          0000000140007C14
  0000000140007C07: BA 18 00 00 00     mov         edx,18h
  0000000140007C0C: 48 8B CF           mov         rcx,rdi
  0000000140007C0F: E8 50 FC FF FF     call        0000000140007864
  0000000140007C14: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140007C19: 48 8B C7           mov         rax,rdi
  0000000140007C1C: 48 83 C4 20        add         rsp,20h
  0000000140007C20: 5F                 pop         rdi
  0000000140007C21: C3                 ret
  0000000140007C22: CC                 int         3
  0000000140007C23: CC                 int         3
  0000000140007C24: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140007C29: 57                 push        rdi
  0000000140007C2A: 48 83 EC 20        sub         rsp,20h
  0000000140007C2E: 48 8D 05 A3 26 00  lea         rax,[000000014000A2D8h]
                    00
  0000000140007C35: 48 8B F9           mov         rdi,rcx
  0000000140007C38: 48 89 01           mov         qword ptr [rcx],rax
  0000000140007C3B: 8B DA              mov         ebx,edx
  0000000140007C3D: 48 83 C1 08        add         rcx,8
  0000000140007C41: E8 90 12 00 00     call        0000000140008ED6
  0000000140007C46: F6 C3 01           test        bl,1
  0000000140007C49: 74 0D              je          0000000140007C58
  0000000140007C4B: BA 18 00 00 00     mov         edx,18h
  0000000140007C50: 48 8B CF           mov         rcx,rdi
  0000000140007C53: E8 0C FC FF FF     call        0000000140007864
  0000000140007C58: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140007C5D: 48 8B C7           mov         rax,rdi
  0000000140007C60: 48 83 C4 20        add         rsp,20h
  0000000140007C64: 5F                 pop         rdi
  0000000140007C65: C3                 ret
  0000000140007C66: CC                 int         3
  0000000140007C67: CC                 int         3
  0000000140007C68: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140007C6D: 57                 push        rdi
  0000000140007C6E: 48 83 EC 20        sub         rsp,20h
  0000000140007C72: 48 8D 05 5F 26 00  lea         rax,[000000014000A2D8h]
                    00
  0000000140007C79: 48 8B F9           mov         rdi,rcx
  0000000140007C7C: 48 89 01           mov         qword ptr [rcx],rax
  0000000140007C7F: 8B DA              mov         ebx,edx
  0000000140007C81: 48 83 C1 08        add         rcx,8
  0000000140007C85: E8 4C 12 00 00     call        0000000140008ED6
  0000000140007C8A: F6 C3 01           test        bl,1
  0000000140007C8D: 74 0D              je          0000000140007C9C
  0000000140007C8F: BA 18 00 00 00     mov         edx,18h
  0000000140007C94: 48 8B CF           mov         rcx,rdi
  0000000140007C97: E8 C8 FB FF FF     call        0000000140007864
  0000000140007C9C: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140007CA1: 48 8B C7           mov         rax,rdi
  0000000140007CA4: 48 83 C4 20        add         rsp,20h
  0000000140007CA8: 5F                 pop         rdi
  0000000140007CA9: C3                 ret
  0000000140007CAA: CC                 int         3
  0000000140007CAB: CC                 int         3
  0000000140007CAC: 48 83 EC 48        sub         rsp,48h
  0000000140007CB0: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140007CB5: E8 62 FE FF FF     call        0000000140007B1C
  0000000140007CBA: 48 8D 15 67 49 00  lea         rdx,[000000014000C628h]
                    00
  0000000140007CC1: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140007CC6: E8 11 12 00 00     call        0000000140008EDC
  0000000140007CCB: CC                 int         3
  0000000140007CCC: 48 83 EC 48        sub         rsp,48h
  0000000140007CD0: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140007CD5: E8 9E FE FF FF     call        0000000140007B78
  0000000140007CDA: 48 8D 15 CF 49 00  lea         rdx,[000000014000C6B0h]
                    00
  0000000140007CE1: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000140007CE6: E8 F1 11 00 00     call        0000000140008EDC
  0000000140007CEB: CC                 int         3
  0000000140007CEC: 48 83 79 08 00     cmp         qword ptr [rcx+8],0
  0000000140007CF1: 48 8D 05 F0 25 00  lea         rax,[000000014000A2E8h]
                    00
  0000000140007CF8: 48 0F 45 41 08     cmovne      rax,qword ptr [rcx+8]
  0000000140007CFD: C3                 ret
  0000000140007CFE: CC                 int         3
  0000000140007CFF: CC                 int         3
  0000000140007D00: 48 83 EC 28        sub         rsp,28h
  0000000140007D04: E8 C3 07 00 00     call        00000001400084CC
  0000000140007D09: 85 C0              test        eax,eax
  0000000140007D0B: 74 21              je          0000000140007D2E
  0000000140007D0D: 65 48 8B 04 25 30  mov         rax,qword ptr gs:[0000000000000030h]
                    00 00 00
  0000000140007D16: 48 8B 48 08        mov         rcx,qword ptr [rax+8]
  0000000140007D1A: EB 05              jmp         0000000140007D21
  0000000140007D1C: 48 3B C8           cmp         rcx,rax
  0000000140007D1F: 74 14              je          0000000140007D35
  0000000140007D21: 33 C0              xor         eax,eax
  0000000140007D23: F0 48 0F B1 0D 24  lock cmpxchg qword ptr [000000014000D950h],rcx
                    5C 00 00
  0000000140007D2C: 75 EE              jne         0000000140007D1C
  0000000140007D2E: 32 C0              xor         al,al
  0000000140007D30: 48 83 C4 28        add         rsp,28h
  0000000140007D34: C3                 ret
  0000000140007D35: B0 01              mov         al,1
  0000000140007D37: EB F7              jmp         0000000140007D30
  0000000140007D39: CC                 int         3
  0000000140007D3A: CC                 int         3
  0000000140007D3B: CC                 int         3
  0000000140007D3C: 40 53              push        rbx
  0000000140007D3E: 48 83 EC 20        sub         rsp,20h
  0000000140007D42: 0F B6 05 0F 5C 00  movzx       eax,byte ptr [000000014000D958h]
                    00
  0000000140007D49: 85 C9              test        ecx,ecx
  0000000140007D4B: BB 01 00 00 00     mov         ebx,1
  0000000140007D50: 0F 44 C3           cmove       eax,ebx
  0000000140007D53: 88 05 FF 5B 00 00  mov         byte ptr [000000014000D958h],al
  0000000140007D59: E8 CA 05 00 00     call        0000000140008328
  0000000140007D5E: E8 BD 02 00 00     call        0000000140008020
  0000000140007D63: 84 C0              test        al,al
  0000000140007D65: 75 04              jne         0000000140007D6B
  0000000140007D67: 32 C0              xor         al,al
  0000000140007D69: EB 14              jmp         0000000140007D7F
  0000000140007D6B: E8 B0 02 00 00     call        0000000140008020
  0000000140007D70: 84 C0              test        al,al
  0000000140007D72: 75 09              jne         0000000140007D7D
  0000000140007D74: 33 C9              xor         ecx,ecx
  0000000140007D76: E8 A5 02 00 00     call        0000000140008020
  0000000140007D7B: EB EA              jmp         0000000140007D67
  0000000140007D7D: 8A C3              mov         al,bl
  0000000140007D7F: 48 83 C4 20        add         rsp,20h
  0000000140007D83: 5B                 pop         rbx
  0000000140007D84: C3                 ret
  0000000140007D85: CC                 int         3
  0000000140007D86: CC                 int         3
  0000000140007D87: CC                 int         3
  0000000140007D88: 40 53              push        rbx
  0000000140007D8A: 48 83 EC 20        sub         rsp,20h
  0000000140007D8E: 80 3D C4 5B 00 00  cmp         byte ptr [000000014000D959h],0
                    00
  0000000140007D95: 8B D9              mov         ebx,ecx
  0000000140007D97: 75 67              jne         0000000140007E00
  0000000140007D99: 83 F9 01           cmp         ecx,1
  0000000140007D9C: 77 6A              ja          0000000140007E08
  0000000140007D9E: E8 29 07 00 00     call        00000001400084CC
  0000000140007DA3: 85 C0              test        eax,eax
  0000000140007DA5: 74 28              je          0000000140007DCF
  0000000140007DA7: 85 DB              test        ebx,ebx
  0000000140007DA9: 75 24              jne         0000000140007DCF
  0000000140007DAB: 48 8D 0D AE 5B 00  lea         rcx,[000000014000D960h]
                    00
  0000000140007DB2: E8 C1 11 00 00     call        0000000140008F78
  0000000140007DB7: 85 C0              test        eax,eax
  0000000140007DB9: 75 10              jne         0000000140007DCB
  0000000140007DBB: 48 8D 0D B6 5B 00  lea         rcx,[000000014000D978h]
                    00
  0000000140007DC2: E8 B1 11 00 00     call        0000000140008F78
  0000000140007DC7: 85 C0              test        eax,eax
  0000000140007DC9: 74 2E              je          0000000140007DF9
  0000000140007DCB: 32 C0              xor         al,al
  0000000140007DCD: EB 33              jmp         0000000140007E02
  0000000140007DCF: 66 0F 6F 05 89 25  movdqa      xmm0,xmmword ptr [000000014000A360h]
                    00 00
  0000000140007DD7: 48 83 C8 FF        or          rax,0FFFFFFFFFFFFFFFFh
  0000000140007DDB: F3 0F 7F 05 7D 5B  movdqu      xmmword ptr [000000014000D960h],xmm0
                    00 00
  0000000140007DE3: 48 89 05 86 5B 00  mov         qword ptr [000000014000D970h],rax
                    00
  0000000140007DEA: F3 0F 7F 05 86 5B  movdqu      xmmword ptr [000000014000D978h],xmm0
                    00 00
  0000000140007DF2: 48 89 05 8F 5B 00  mov         qword ptr [000000014000D988h],rax
                    00
  0000000140007DF9: C6 05 59 5B 00 00  mov         byte ptr [000000014000D959h],1
                    01
  0000000140007E00: B0 01              mov         al,1
  0000000140007E02: 48 83 C4 20        add         rsp,20h
  0000000140007E06: 5B                 pop         rbx
  0000000140007E07: C3                 ret
  0000000140007E08: B9 05 00 00 00     mov         ecx,5
  0000000140007E0D: E8 5E 02 00 00     call        0000000140008070
  0000000140007E12: CC                 int         3
  0000000140007E13: CC                 int         3
  0000000140007E14: 48 83 EC 18        sub         rsp,18h
  0000000140007E18: 4C 8B C1           mov         r8,rcx
  0000000140007E1B: B8 4D 5A 00 00     mov         eax,5A4Dh
  0000000140007E20: 66 39 05 D9 81 FF  cmp         word ptr [0000000140000000h],ax
                    FF
  0000000140007E27: 75 78              jne         0000000140007EA1
  0000000140007E29: 48 63 0D 0C 82 FF  movsxd      rcx,dword ptr [000000014000003Ch]
                    FF
  0000000140007E30: 48 8D 15 C9 81 FF  lea         rdx,[0000000140000000h]
                    FF
  0000000140007E37: 48 03 CA           add         rcx,rdx
  0000000140007E3A: 81 39 50 45 00 00  cmp         dword ptr [rcx],4550h
  0000000140007E40: 75 5F              jne         0000000140007EA1
  0000000140007E42: B8 0B 02 00 00     mov         eax,20Bh
  0000000140007E47: 66 39 41 18        cmp         word ptr [rcx+18h],ax
  0000000140007E4B: 75 54              jne         0000000140007EA1
  0000000140007E4D: 4C 2B C2           sub         r8,rdx
  0000000140007E50: 0F B7 41 14        movzx       eax,word ptr [rcx+14h]
  0000000140007E54: 48 8D 51 18        lea         rdx,[rcx+18h]
  0000000140007E58: 48 03 D0           add         rdx,rax
  0000000140007E5B: 0F B7 41 06        movzx       eax,word ptr [rcx+6]
  0000000140007E5F: 48 8D 0C 80        lea         rcx,[rax+rax*4]
  0000000140007E63: 4C 8D 0C CA        lea         r9,[rdx+rcx*8]
  0000000140007E67: 48 89 14 24        mov         qword ptr [rsp],rdx
  0000000140007E6B: 49 3B D1           cmp         rdx,r9
  0000000140007E6E: 74 18              je          0000000140007E88
  0000000140007E70: 8B 4A 0C           mov         ecx,dword ptr [rdx+0Ch]
  0000000140007E73: 4C 3B C1           cmp         r8,rcx
  0000000140007E76: 72 0A              jb          0000000140007E82
  0000000140007E78: 8B 42 08           mov         eax,dword ptr [rdx+8]
  0000000140007E7B: 03 C1              add         eax,ecx
  0000000140007E7D: 4C 3B C0           cmp         r8,rax
  0000000140007E80: 72 08              jb          0000000140007E8A
  0000000140007E82: 48 83 C2 28        add         rdx,28h
  0000000140007E86: EB DF              jmp         0000000140007E67
  0000000140007E88: 33 D2              xor         edx,edx
  0000000140007E8A: 48 85 D2           test        rdx,rdx
  0000000140007E8D: 75 04              jne         0000000140007E93
  0000000140007E8F: 32 C0              xor         al,al
  0000000140007E91: EB 14              jmp         0000000140007EA7
  0000000140007E93: 83 7A 24 00        cmp         dword ptr [rdx+24h],0
  0000000140007E97: 7D 04              jge         0000000140007E9D
  0000000140007E99: 32 C0              xor         al,al
  0000000140007E9B: EB 0A              jmp         0000000140007EA7
  0000000140007E9D: B0 01              mov         al,1
  0000000140007E9F: EB 06              jmp         0000000140007EA7
  0000000140007EA1: 32 C0              xor         al,al
  0000000140007EA3: EB 02              jmp         0000000140007EA7
  0000000140007EA5: 32 C0              xor         al,al
  0000000140007EA7: 48 83 C4 18        add         rsp,18h
  0000000140007EAB: C3                 ret
  0000000140007EAC: 40 53              push        rbx
  0000000140007EAE: 48 83 EC 20        sub         rsp,20h
  0000000140007EB2: 8A D9              mov         bl,cl
  0000000140007EB4: E8 13 06 00 00     call        00000001400084CC
  0000000140007EB9: 33 D2              xor         edx,edx
  0000000140007EBB: 85 C0              test        eax,eax
  0000000140007EBD: 74 0B              je          0000000140007ECA
  0000000140007EBF: 84 DB              test        bl,bl
  0000000140007EC1: 75 07              jne         0000000140007ECA
  0000000140007EC3: 48 87 15 86 5A 00  xchg        rdx,qword ptr [000000014000D950h]
                    00
  0000000140007ECA: 48 83 C4 20        add         rsp,20h
  0000000140007ECE: 5B                 pop         rbx
  0000000140007ECF: C3                 ret
  0000000140007ED0: 40 53              push        rbx
  0000000140007ED2: 48 83 EC 20        sub         rsp,20h
  0000000140007ED6: 80 3D 7B 5A 00 00  cmp         byte ptr [000000014000D958h],0
                    00
  0000000140007EDD: 8A D9              mov         bl,cl
  0000000140007EDF: 74 04              je          0000000140007EE5
  0000000140007EE1: 84 D2              test        dl,dl
  0000000140007EE3: 75 0C              jne         0000000140007EF1
  0000000140007EE5: E8 36 01 00 00     call        0000000140008020
  0000000140007EEA: 8A CB              mov         cl,bl
  0000000140007EEC: E8 2F 01 00 00     call        0000000140008020
  0000000140007EF1: B0 01              mov         al,1
  0000000140007EF3: 48 83 C4 20        add         rsp,20h
  0000000140007EF7: 5B                 pop         rbx
  0000000140007EF8: C3                 ret
  0000000140007EF9: CC                 int         3
  0000000140007EFA: CC                 int         3
  0000000140007EFB: CC                 int         3
  0000000140007EFC: 40 53              push        rbx
  0000000140007EFE: 48 83 EC 20        sub         rsp,20h
  0000000140007F02: 48 83 3D 56 5A 00  cmp         qword ptr [000000014000D960h],0FFFFFFFFFFFFFFFFh
                    00 FF
  0000000140007F0A: 48 8B D9           mov         rbx,rcx
  0000000140007F0D: 75 07              jne         0000000140007F16
  0000000140007F0F: E8 70 10 00 00     call        0000000140008F84
  0000000140007F14: EB 0F              jmp         0000000140007F25
  0000000140007F16: 48 8B D3           mov         rdx,rbx
  0000000140007F19: 48 8D 0D 40 5A 00  lea         rcx,[000000014000D960h]
                    00
  0000000140007F20: E8 59 10 00 00     call        0000000140008F7E
  0000000140007F25: 33 D2              xor         edx,edx
  0000000140007F27: 85 C0              test        eax,eax
  0000000140007F29: 48 0F 44 D3        cmove       rdx,rbx
  0000000140007F2D: 48 8B C2           mov         rax,rdx
  0000000140007F30: 48 83 C4 20        add         rsp,20h
  0000000140007F34: 5B                 pop         rbx
  0000000140007F35: C3                 ret
  0000000140007F36: CC                 int         3
  0000000140007F37: CC                 int         3
  0000000140007F38: 48 83 EC 28        sub         rsp,28h
  0000000140007F3C: E8 BB FF FF FF     call        0000000140007EFC
  0000000140007F41: 48 F7 D8           neg         rax
  0000000140007F44: 1B C0              sbb         eax,eax
  0000000140007F46: F7 D8              neg         eax
  0000000140007F48: FF C8              dec         eax
  0000000140007F4A: 48 83 C4 28        add         rsp,28h
  0000000140007F4E: C3                 ret
  0000000140007F4F: CC                 int         3
  0000000140007F50: 48 89 5C 24 20     mov         qword ptr [rsp+20h],rbx
  0000000140007F55: 55                 push        rbp
  0000000140007F56: 48 8B EC           mov         rbp,rsp
  0000000140007F59: 48 83 EC 20        sub         rsp,20h
  0000000140007F5D: 48 8B 05 C4 50 00  mov         rax,qword ptr [000000014000D028h]
                    00
  0000000140007F64: 48 BB 32 A2 DF 2D  mov         rbx,2B992DDFA232h
                    99 2B 00 00
  0000000140007F6E: 48 3B C3           cmp         rax,rbx
  0000000140007F71: 75 74              jne         0000000140007FE7
  0000000140007F73: 48 83 65 18 00     and         qword ptr [rbp+18h],0
  0000000140007F78: 48 8D 4D 18        lea         rcx,[rbp+18h]
  0000000140007F7C: FF 15 96 20 00 00  call        qword ptr [000000014000A018h]
  0000000140007F82: 48 8B 45 18        mov         rax,qword ptr [rbp+18h]
  0000000140007F86: 48 89 45 10        mov         qword ptr [rbp+10h],rax
  0000000140007F8A: FF 15 80 20 00 00  call        qword ptr [000000014000A010h]
  0000000140007F90: 8B C0              mov         eax,eax
  0000000140007F92: 48 31 45 10        xor         qword ptr [rbp+10h],rax
  0000000140007F96: FF 15 6C 20 00 00  call        qword ptr [000000014000A008h]
  0000000140007F9C: 8B C0              mov         eax,eax
  0000000140007F9E: 48 8D 4D 20        lea         rcx,[rbp+20h]
  0000000140007FA2: 48 31 45 10        xor         qword ptr [rbp+10h],rax
  0000000140007FA6: FF 15 DC 20 00 00  call        qword ptr [000000014000A088h]
  0000000140007FAC: 8B 45 20           mov         eax,dword ptr [rbp+20h]
  0000000140007FAF: 48 8D 4D 10        lea         rcx,[rbp+10h]
  0000000140007FB3: 48 C1 E0 20        shl         rax,20h
  0000000140007FB7: 48 33 45 20        xor         rax,qword ptr [rbp+20h]
  0000000140007FBB: 48 33 45 10        xor         rax,qword ptr [rbp+10h]
  0000000140007FBF: 48 33 C1           xor         rax,rcx
  0000000140007FC2: 48 B9 FF FF FF FF  mov         rcx,0FFFFFFFFFFFFh
                    FF FF 00 00
  0000000140007FCC: 48 23 C1           and         rax,rcx
  0000000140007FCF: 48 B9 33 A2 DF 2D  mov         rcx,2B992DDFA233h
                    99 2B 00 00
  0000000140007FD9: 48 3B C3           cmp         rax,rbx
  0000000140007FDC: 48 0F 44 C1        cmove       rax,rcx
  0000000140007FE0: 48 89 05 41 50 00  mov         qword ptr [000000014000D028h],rax
                    00
  0000000140007FE7: 48 8B 5C 24 48     mov         rbx,qword ptr [rsp+48h]
  0000000140007FEC: 48 F7 D0           not         rax
  0000000140007FEF: 48 89 05 2A 50 00  mov         qword ptr [000000014000D020h],rax
                    00
  0000000140007FF6: 48 83 C4 20        add         rsp,20h
  0000000140007FFA: 5D                 pop         rbp
  0000000140007FFB: C3                 ret
  0000000140007FFC: 33 C0              xor         eax,eax
  0000000140007FFE: C3                 ret
  0000000140007FFF: CC                 int         3
  0000000140008000: B8 01 00 00 00     mov         eax,1
  0000000140008005: C3                 ret
  0000000140008006: CC                 int         3
  0000000140008007: CC                 int         3
  0000000140008008: B8 00 40 00 00     mov         eax,4000h
  000000014000800D: C3                 ret
  000000014000800E: CC                 int         3
  000000014000800F: CC                 int         3
  0000000140008010: 48 8D 0D 79 59 00  lea         rcx,[000000014000D990h]
                    00
  0000000140008017: 48 FF 25 02 20 00  jmp         qword ptr [000000014000A020h]
                    00
  000000014000801E: CC                 int         3
  000000014000801F: CC                 int         3
  0000000140008020: B0 01              mov         al,1
  0000000140008022: C3                 ret
  0000000140008023: CC                 int         3
  0000000140008024: C2 00 00           ret         0
  0000000140008027: CC                 int         3
  0000000140008028: 48 8D 05 71 59 00  lea         rax,[000000014000D9A0h]
                    00
  000000014000802F: C3                 ret
  0000000140008030: 48 83 EC 28        sub         rsp,28h
  0000000140008034: E8 E7 A2 FF FF     call        0000000140002320
  0000000140008039: 48 83 08 24        or          qword ptr [rax],24h
  000000014000803D: E8 E6 FF FF FF     call        0000000140008028
  0000000140008042: 48 83 08 02        or          qword ptr [rax],2
  0000000140008046: 48 83 C4 28        add         rsp,28h
  000000014000804A: C3                 ret
  000000014000804B: CC                 int         3
  000000014000804C: 33 C0              xor         eax,eax
  000000014000804E: 39 05 B0 4F 00 00  cmp         dword ptr [000000014000D004h],eax
  0000000140008054: 0F 94 C0           sete        al
  0000000140008057: C3                 ret
  0000000140008058: 48 8D 05 B9 6B 00  lea         rax,[000000014000EC18h]
                    00
  000000014000805F: C3                 ret
  0000000140008060: 48 8D 05 A9 6B 00  lea         rax,[000000014000EC10h]
                    00
  0000000140008067: C3                 ret
  0000000140008068: 83 25 39 59 00 00  and         dword ptr [000000014000D9A8h],0
                    00
  000000014000806F: C3                 ret
  0000000140008070: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140008075: 55                 push        rbp
  0000000140008076: 48 8D AC 24 40 FB  lea         rbp,[rsp+FFFFFFFFFFFFFB40h]
                    FF FF
  000000014000807E: 48 81 EC C0 05 00  sub         rsp,5C0h
                    00
  0000000140008085: 8B D9              mov         ebx,ecx
  0000000140008087: B9 17 00 00 00     mov         ecx,17h
  000000014000808C: E8 23 0F 00 00     call        0000000140008FB4
  0000000140008091: 85 C0              test        eax,eax
  0000000140008093: 74 04              je          0000000140008099
  0000000140008095: 8B CB              mov         ecx,ebx
  0000000140008097: CD 29              int         29h
  0000000140008099: B9 03 00 00 00     mov         ecx,3
  000000014000809E: E8 C5 FF FF FF     call        0000000140008068
  00000001400080A3: 33 D2              xor         edx,edx
  00000001400080A5: 48 8D 4D F0        lea         rcx,[rbp-10h]
  00000001400080A9: 41 B8 D0 04 00 00  mov         r8d,4D0h
  00000001400080AF: E8 3A 0E 00 00     call        0000000140008EEE
  00000001400080B4: 48 8D 4D F0        lea         rcx,[rbp-10h]
  00000001400080B8: FF 15 6A 1F 00 00  call        qword ptr [000000014000A028h]
  00000001400080BE: 48 8B 9D E8 00 00  mov         rbx,qword ptr [rbp+00000000000000E8h]
                    00
  00000001400080C5: 48 8D 95 D8 04 00  lea         rdx,[rbp+00000000000004D8h]
                    00
  00000001400080CC: 48 8B CB           mov         rcx,rbx
  00000001400080CF: 45 33 C0           xor         r8d,r8d
  00000001400080D2: FF 15 58 1F 00 00  call        qword ptr [000000014000A030h]
  00000001400080D8: 48 85 C0           test        rax,rax
  00000001400080DB: 74 3C              je          0000000140008119
  00000001400080DD: 48 83 64 24 38 00  and         qword ptr [rsp+38h],0
  00000001400080E3: 48 8D 8D E0 04 00  lea         rcx,[rbp+00000000000004E0h]
                    00
  00000001400080EA: 48 8B 95 D8 04 00  mov         rdx,qword ptr [rbp+00000000000004D8h]
                    00
  00000001400080F1: 4C 8B C8           mov         r9,rax
  00000001400080F4: 48 89 4C 24 30     mov         qword ptr [rsp+30h],rcx
  00000001400080F9: 4C 8B C3           mov         r8,rbx
  00000001400080FC: 48 8D 8D E8 04 00  lea         rcx,[rbp+00000000000004E8h]
                    00
  0000000140008103: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000140008108: 48 8D 4D F0        lea         rcx,[rbp-10h]
  000000014000810C: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000140008111: 33 C9              xor         ecx,ecx
  0000000140008113: FF 15 1F 1F 00 00  call        qword ptr [000000014000A038h]
  0000000140008119: 48 8B 85 C8 04 00  mov         rax,qword ptr [rbp+00000000000004C8h]
                    00
  0000000140008120: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  0000000140008125: 48 89 85 E8 00 00  mov         qword ptr [rbp+00000000000000E8h],rax
                    00
  000000014000812C: 33 D2              xor         edx,edx
  000000014000812E: 48 8D 85 C8 04 00  lea         rax,[rbp+00000000000004C8h]
                    00
  0000000140008135: 41 B8 98 00 00 00  mov         r8d,98h
  000000014000813B: 48 83 C0 08        add         rax,8
  000000014000813F: 48 89 85 88 00 00  mov         qword ptr [rbp+0000000000000088h],rax
                    00
  0000000140008146: E8 A3 0D 00 00     call        0000000140008EEE
  000000014000814B: 48 8B 85 C8 04 00  mov         rax,qword ptr [rbp+00000000000004C8h]
                    00
  0000000140008152: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  0000000140008157: C7 44 24 50 15 00  mov         dword ptr [rsp+50h],40000015h
                    00 40
  000000014000815F: C7 44 24 54 01 00  mov         dword ptr [rsp+54h],1
                    00 00
  0000000140008167: FF 15 D3 1E 00 00  call        qword ptr [000000014000A040h]
  000000014000816D: 83 F8 01           cmp         eax,1
  0000000140008170: 48 8D 44 24 50     lea         rax,[rsp+50h]
  0000000140008175: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  000000014000817A: 48 8D 45 F0        lea         rax,[rbp-10h]
  000000014000817E: 0F 94 C3           sete        bl
  0000000140008181: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000140008186: 33 C9              xor         ecx,ecx
  0000000140008188: FF 15 F2 1E 00 00  call        qword ptr [000000014000A080h]
  000000014000818E: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000140008193: FF 15 B7 1E 00 00  call        qword ptr [000000014000A050h]
  0000000140008199: 85 C0              test        eax,eax
  000000014000819B: 75 0C              jne         00000001400081A9
  000000014000819D: 84 DB              test        bl,bl
  000000014000819F: 75 08              jne         00000001400081A9
  00000001400081A1: 8D 48 03           lea         ecx,[rax+3]
  00000001400081A4: E8 BF FE FF FF     call        0000000140008068
  00000001400081A9: 48 8B 9C 24 D0 05  mov         rbx,qword ptr [rsp+00000000000005D0h]
                    00 00
  00000001400081B1: 48 81 C4 C0 05 00  add         rsp,5C0h
                    00
  00000001400081B8: 5D                 pop         rbp
  00000001400081B9: C3                 ret
  00000001400081BA: CC                 int         3
  00000001400081BB: CC                 int         3
  00000001400081BC: E9 3B FE FF FF     jmp         0000000140007FFC
  00000001400081C1: CC                 int         3
  00000001400081C2: CC                 int         3
  00000001400081C3: CC                 int         3
  00000001400081C4: 48 83 EC 28        sub         rsp,28h
  00000001400081C8: 33 C9              xor         ecx,ecx
  00000001400081CA: FF 15 A0 1E 00 00  call        qword ptr [000000014000A070h]
  00000001400081D0: 48 85 C0           test        rax,rax
  00000001400081D3: 74 3A              je          000000014000820F
  00000001400081D5: B9 4D 5A 00 00     mov         ecx,5A4Dh
  00000001400081DA: 66 39 08           cmp         word ptr [rax],cx
  00000001400081DD: 75 30              jne         000000014000820F
  00000001400081DF: 48 63 48 3C        movsxd      rcx,dword ptr [rax+3Ch]
  00000001400081E3: 48 03 C8           add         rcx,rax
  00000001400081E6: 81 39 50 45 00 00  cmp         dword ptr [rcx],4550h
  00000001400081EC: 75 21              jne         000000014000820F
  00000001400081EE: B8 0B 02 00 00     mov         eax,20Bh
  00000001400081F3: 66 39 41 18        cmp         word ptr [rcx+18h],ax
  00000001400081F7: 75 16              jne         000000014000820F
  00000001400081F9: 83 B9 84 00 00 00  cmp         dword ptr [rcx+0000000000000084h],0Eh
                    0E
  0000000140008200: 76 0D              jbe         000000014000820F
  0000000140008202: 83 B9 F8 00 00 00  cmp         dword ptr [rcx+00000000000000F8h],0
                    00
  0000000140008209: 74 04              je          000000014000820F
  000000014000820B: B0 01              mov         al,1
  000000014000820D: EB 02              jmp         0000000140008211
  000000014000820F: 32 C0              xor         al,al
  0000000140008211: 48 83 C4 28        add         rsp,28h
  0000000140008215: C3                 ret
  0000000140008216: CC                 int         3
  0000000140008217: CC                 int         3
  0000000140008218: 48 8D 0D 09 00 00  lea         rcx,[0000000140008228h]
                    00
  000000014000821F: 48 FF 25 5A 1E 00  jmp         qword ptr [000000014000A080h]
                    00
  0000000140008226: CC                 int         3
  0000000140008227: CC                 int         3
  0000000140008228: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  000000014000822D: 57                 push        rdi
  000000014000822E: 48 83 EC 20        sub         rsp,20h
  0000000140008232: 48 8B 19           mov         rbx,qword ptr [rcx]
  0000000140008235: 48 8B F9           mov         rdi,rcx
  0000000140008238: 81 3B 63 73 6D E0  cmp         dword ptr [rbx],0E06D7363h
  000000014000823E: 75 1C              jne         000000014000825C
  0000000140008240: 83 7B 18 04        cmp         dword ptr [rbx+18h],4
  0000000140008244: 75 16              jne         000000014000825C
  0000000140008246: 8B 53 20           mov         edx,dword ptr [rbx+20h]
  0000000140008249: 8D 82 E0 FA 6C E6  lea         eax,[rdx+FFFFFFFFE66CFAE0h]
  000000014000824F: 83 F8 02           cmp         eax,2
  0000000140008252: 76 15              jbe         0000000140008269
  0000000140008254: 81 FA 00 40 99 01  cmp         edx,1994000h
  000000014000825A: 74 0D              je          0000000140008269
  000000014000825C: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  0000000140008261: 33 C0              xor         eax,eax
  0000000140008263: 48 83 C4 20        add         rsp,20h
  0000000140008267: 5F                 pop         rdi
  0000000140008268: C3                 ret
  0000000140008269: E8 74 0C 00 00     call        0000000140008EE2
  000000014000826E: 48 89 18           mov         qword ptr [rax],rbx
  0000000140008271: 48 8B 5F 08        mov         rbx,qword ptr [rdi+8]
  0000000140008275: E8 6E 0C 00 00     call        0000000140008EE8
  000000014000827A: 48 89 18           mov         qword ptr [rax],rbx
  000000014000827D: E8 08 0D 00 00     call        0000000140008F8A
  0000000140008282: CC                 int         3
  0000000140008283: CC                 int         3
  0000000140008284: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  0000000140008289: 57                 push        rdi
  000000014000828A: 48 83 EC 20        sub         rsp,20h
  000000014000828E: 48 8D 1D 4B 3D 00  lea         rbx,[000000014000BFE0h]
                    00
  0000000140008295: 48 8D 3D 44 3D 00  lea         rdi,[000000014000BFE0h]
                    00
  000000014000829C: EB 12              jmp         00000001400082B0
  000000014000829E: 48 8B 03           mov         rax,qword ptr [rbx]
  00000001400082A1: 48 85 C0           test        rax,rax
  00000001400082A4: 74 06              je          00000001400082AC
  00000001400082A6: FF 15 8C 1F 00 00  call        qword ptr [000000014000A238h]
  00000001400082AC: 48 83 C3 08        add         rbx,8
  00000001400082B0: 48 3B DF           cmp         rbx,rdi
  00000001400082B3: 72 E9              jb          000000014000829E
  00000001400082B5: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  00000001400082BA: 48 83 C4 20        add         rsp,20h
  00000001400082BE: 5F                 pop         rdi
  00000001400082BF: C3                 ret
  00000001400082C0: 48 89 5C 24 08     mov         qword ptr [rsp+8],rbx
  00000001400082C5: 57                 push        rdi
  00000001400082C6: 48 83 EC 20        sub         rsp,20h
  00000001400082CA: 48 8D 1D 1F 3D 00  lea         rbx,[000000014000BFF0h]
                    00
  00000001400082D1: 48 8D 3D 18 3D 00  lea         rdi,[000000014000BFF0h]
                    00
  00000001400082D8: EB 12              jmp         00000001400082EC
  00000001400082DA: 48 8B 03           mov         rax,qword ptr [rbx]
  00000001400082DD: 48 85 C0           test        rax,rax
  00000001400082E0: 74 06              je          00000001400082E8
  00000001400082E2: FF 15 50 1F 00 00  call        qword ptr [000000014000A238h]
  00000001400082E8: 48 83 C3 08        add         rbx,8
  00000001400082EC: 48 3B DF           cmp         rbx,rdi
  00000001400082EF: 72 E9              jb          00000001400082DA
  00000001400082F1: 48 8B 5C 24 30     mov         rbx,qword ptr [rsp+30h]
  00000001400082F6: 48 83 C4 20        add         rsp,20h
  00000001400082FA: 5F                 pop         rdi
  00000001400082FB: C3                 ret
  00000001400082FC: 40 53              push        rbx
  00000001400082FE: 48 83 EC 20        sub         rsp,20h
  0000000140008302: 48 8D 05 6F 20 00  lea         rax,[000000014000A378h]
                    00
  0000000140008309: 48 8B D9           mov         rbx,rcx
  000000014000830C: 48 89 01           mov         qword ptr [rcx],rax
  000000014000830F: F6 C2 01           test        dl,1
  0000000140008312: 74 0A              je          000000014000831E
  0000000140008314: BA 18 00 00 00     mov         edx,18h
  0000000140008319: E8 46 F5 FF FF     call        0000000140007864
  000000014000831E: 48 8B C3           mov         rax,rbx
  0000000140008321: 48 83 C4 20        add         rsp,20h
  0000000140008325: 5B                 pop         rbx
  0000000140008326: C3                 ret
  0000000140008327: CC                 int         3
  0000000140008328: 48 89 5C 24 10     mov         qword ptr [rsp+10h],rbx
  000000014000832D: 48 89 74 24 18     mov         qword ptr [rsp+18h],rsi
  0000000140008332: 57                 push        rdi
  0000000140008333: 48 83 EC 10        sub         rsp,10h
  0000000140008337: 33 C0              xor         eax,eax
  0000000140008339: 33 C9              xor         ecx,ecx
  000000014000833B: 0F A2              cpuid
  000000014000833D: 44 8B C1           mov         r8d,ecx
  0000000140008340: 45 33 DB           xor         r11d,r11d
  0000000140008343: 44 8B CB           mov         r9d,ebx
  0000000140008346: 41 81 F0 6E 74 65  xor         r8d,6C65746Eh
                    6C
  000000014000834D: 41 81 F1 47 65 6E  xor         r9d,756E6547h
                    75
  0000000140008354: 44 8B D2           mov         r10d,edx
  0000000140008357: 8B F0              mov         esi,eax
  0000000140008359: 33 C9              xor         ecx,ecx
  000000014000835B: 41 8D 43 01        lea         eax,[r11+1]
  000000014000835F: 45 0B C8           or          r9d,r8d
  0000000140008362: 0F A2              cpuid
  0000000140008364: 41 81 F2 69 6E 65  xor         r10d,49656E69h
                    49
  000000014000836B: 89 04 24           mov         dword ptr [rsp],eax
  000000014000836E: 45 0B CA           or          r9d,r10d
  0000000140008371: 89 5C 24 04        mov         dword ptr [rsp+4],ebx
  0000000140008375: 8B F9              mov         edi,ecx
  0000000140008377: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  000000014000837B: 89 54 24 0C        mov         dword ptr [rsp+0Ch],edx
  000000014000837F: 75 50              jne         00000001400083D1
  0000000140008381: 48 83 0D 87 4C 00  or          qword ptr [000000014000D010h],0FFFFFFFFFFFFFFFFh
                    00 FF
  0000000140008389: 25 F0 3F FF 0F     and         eax,0FFF3FF0h
  000000014000838E: 3D C0 06 01 00     cmp         eax,106C0h
  0000000140008393: 74 28              je          00000001400083BD
  0000000140008395: 3D 60 06 02 00     cmp         eax,20660h
  000000014000839A: 74 21              je          00000001400083BD
  000000014000839C: 3D 70 06 02 00     cmp         eax,20670h
  00000001400083A1: 74 1A              je          00000001400083BD
  00000001400083A3: 05 B0 F9 FC FF     add         eax,0FFFCF9B0h
  00000001400083A8: 83 F8 20           cmp         eax,20h
  00000001400083AB: 77 24              ja          00000001400083D1
  00000001400083AD: 48 B9 01 00 01 00  mov         rcx,100010001h
                    01 00 00 00
  00000001400083B7: 48 0F A3 C1        bt          rcx,rax
  00000001400083BB: 73 14              jae         00000001400083D1
  00000001400083BD: 44 8B 05 E8 55 00  mov         r8d,dword ptr [000000014000D9ACh]
                    00
  00000001400083C4: 41 83 C8 01        or          r8d,1
  00000001400083C8: 44 89 05 DD 55 00  mov         dword ptr [000000014000D9ACh],r8d
                    00
  00000001400083CF: EB 07              jmp         00000001400083D8
  00000001400083D1: 44 8B 05 D4 55 00  mov         r8d,dword ptr [000000014000D9ACh]
                    00
  00000001400083D8: B8 07 00 00 00     mov         eax,7
  00000001400083DD: 44 8D 48 FB        lea         r9d,[rax-5]
  00000001400083E1: 3B F0              cmp         esi,eax
  00000001400083E3: 7C 26              jl          000000014000840B
  00000001400083E5: 33 C9              xor         ecx,ecx
  00000001400083E7: 0F A2              cpuid
  00000001400083E9: 89 04 24           mov         dword ptr [rsp],eax
  00000001400083EC: 44 8B DB           mov         r11d,ebx
  00000001400083EF: 89 5C 24 04        mov         dword ptr [rsp+4],ebx
  00000001400083F3: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  00000001400083F7: 89 54 24 0C        mov         dword ptr [rsp+0Ch],edx
  00000001400083FB: 0F BA E3 09        bt          ebx,9
  00000001400083FF: 73 0A              jae         000000014000840B
  0000000140008401: 45 0B C1           or          r8d,r9d
  0000000140008404: 44 89 05 A1 55 00  mov         dword ptr [000000014000D9ACh],r8d
                    00
  000000014000840B: C7 05 F3 4B 00 00  mov         dword ptr [000000014000D008h],1
                    01 00 00 00
  0000000140008415: 44 89 0D F0 4B 00  mov         dword ptr [000000014000D00Ch],r9d
                    00
  000000014000841C: 0F BA E7 14        bt          edi,14h
  0000000140008420: 0F 83 91 00 00 00  jae         00000001400084B7
  0000000140008426: 44 89 0D DB 4B 00  mov         dword ptr [000000014000D008h],r9d
                    00
  000000014000842D: BB 06 00 00 00     mov         ebx,6
  0000000140008432: 89 1D D4 4B 00 00  mov         dword ptr [000000014000D00Ch],ebx
  0000000140008438: 0F BA E7 1B        bt          edi,1Bh
  000000014000843C: 73 79              jae         00000001400084B7
  000000014000843E: 0F BA E7 1C        bt          edi,1Ch
  0000000140008442: 73 73              jae         00000001400084B7
  0000000140008444: 33 C9              xor         ecx,ecx
  0000000140008446: 0F 01 D0           xgetbv
  0000000140008449: 48 C1 E2 20        shl         rdx,20h
  000000014000844D: 48 0B D0           or          rdx,rax
  0000000140008450: 48 89 54 24 20     mov         qword ptr [rsp+20h],rdx
  0000000140008455: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000014000845A: 22 C3              and         al,bl
  000000014000845C: 3A C3              cmp         al,bl
  000000014000845E: 75 57              jne         00000001400084B7
  0000000140008460: 8B 05 A6 4B 00 00  mov         eax,dword ptr [000000014000D00Ch]
  0000000140008466: 83 C8 08           or          eax,8
  0000000140008469: C7 05 95 4B 00 00  mov         dword ptr [000000014000D008h],3
                    03 00 00 00
  0000000140008473: 89 05 93 4B 00 00  mov         dword ptr [000000014000D00Ch],eax
  0000000140008479: 41 F6 C3 20        test        r11b,20h
  000000014000847D: 74 38              je          00000001400084B7
  000000014000847F: 83 C8 20           or          eax,20h
  0000000140008482: C7 05 7C 4B 00 00  mov         dword ptr [000000014000D008h],5
                    05 00 00 00
  000000014000848C: 89 05 7A 4B 00 00  mov         dword ptr [000000014000D00Ch],eax
  0000000140008492: B8 00 00 03 D0     mov         eax,0D0030000h
  0000000140008497: 44 23 D8           and         r11d,eax
  000000014000849A: 44 3B D8           cmp         r11d,eax
  000000014000849D: 75 18              jne         00000001400084B7
  000000014000849F: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  00000001400084A4: 24 E0              and         al,0E0h
  00000001400084A6: 3C E0              cmp         al,0E0h
  00000001400084A8: 75 0D              jne         00000001400084B7
  00000001400084AA: 83 0D 5B 4B 00 00  or          dword ptr [000000014000D00Ch],40h
                    40
  00000001400084B1: 89 1D 51 4B 00 00  mov         dword ptr [000000014000D008h],ebx
  00000001400084B7: 48 8B 5C 24 28     mov         rbx,qword ptr [rsp+28h]
  00000001400084BC: 33 C0              xor         eax,eax
  00000001400084BE: 48 8B 74 24 30     mov         rsi,qword ptr [rsp+30h]
  00000001400084C3: 48 83 C4 10        add         rsp,10h
  00000001400084C7: 5F                 pop         rdi
  00000001400084C8: C3                 ret
  00000001400084C9: CC                 int         3
  00000001400084CA: CC                 int         3
  00000001400084CB: CC                 int         3
  00000001400084CC: 33 C0              xor         eax,eax
  00000001400084CE: 39 05 AC 53 00 00  cmp         dword ptr [000000014000D880h],eax
  00000001400084D4: 0F 95 C0           setne       al
  00000001400084D7: C3                 ret
  00000001400084D8: CC                 int         3
  00000001400084D9: CC                 int         3
  00000001400084DA: CC                 int         3
  00000001400084DB: CC                 int         3
  00000001400084DC: CC                 int         3
  00000001400084DD: CC                 int         3
  00000001400084DE: CC                 int         3
  00000001400084DF: CC                 int         3
  00000001400084E0: 49 83 F8 01        cmp         r8,1
  00000001400084E4: 48 8B C1           mov         rax,rcx
  00000001400084E7: 75 03              jne         00000001400084EC
  00000001400084E9: 88 11              mov         byte ptr [rcx],dl
  00000001400084EB: C3                 ret
  00000001400084EC: 49 B9 01 01 01 01  mov         r9,101010101010101h
                    01 01 01 01
  00000001400084F6: 7C 2F              jl          0000000140008527
  00000001400084F8: 48 81 E2 FF 00 00  and         rdx,0FFh
                    00
  00000001400084FF: 49 0F AF D1        imul        rdx,r9
  0000000140008503: 48 F7 C1 07 00 00  test        rcx,7
                    00
  000000014000850A: 75 24              jne         0000000140008530
  000000014000850C: 4C 8D 1D 2D 8B 00  lea         r11,[0000000140011040h]
                    00
  0000000140008513: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  000000014000851A: 0F 8D A7 02 00 00  jge         00000001400087C7
  0000000140008520: 49 03 C8           add         rcx,r8
  0000000140008523: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140008527: C3                 ret
  0000000140008528: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140008530: 49 83 F8 08        cmp         r8,8
  0000000140008534: 7E D6              jle         000000014000850C
  0000000140008536: 4C 8D 1D C3 8A 00  lea         r11,[0000000140011000h]
                    00
  000000014000853D: 4C 8B C9           mov         r9,rcx
  0000000140008540: 49 83 E1 07        and         r9,7
  0000000140008544: 49 F7 D9           neg         r9
  0000000140008547: 49 83 C1 08        add         r9,8
  000000014000854B: 49 03 C9           add         rcx,r9
  000000014000854E: 4D 2B C1           sub         r8,r9
  0000000140008551: 43 FF 24 CB        jmp         qword ptr [r11+r9*8]
  0000000140008555: 66 66 66 0F 1F 84  nop         word ptr [rax+rax+0000000000000000h]
                    00 00 00 00 00
  0000000140008560: 89 51 FC           mov         dword ptr [rcx-4],edx
  0000000140008563: EB A7              jmp         000000014000850C
  0000000140008565: 89 51 FB           mov         dword ptr [rcx-5],edx
  0000000140008568: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000856B: EB 9F              jmp         000000014000850C
  000000014000856D: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140008570: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140008574: EB 96              jmp         000000014000850C
  0000000140008576: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140008579: 66 89 51 FD        mov         word ptr [rcx-3],dx
  000000014000857D: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008580: EB 8A              jmp         000000014000850C
  0000000140008582: 48 89 91 7F FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF7Fh],rdx
                    FF
  0000000140008589: 48 89 51 87        mov         qword ptr [rcx-79h],rdx
  000000014000858D: 48 89 51 8F        mov         qword ptr [rcx-71h],rdx
  0000000140008591: 48 89 51 97        mov         qword ptr [rcx-69h],rdx
  0000000140008595: 48 89 51 9F        mov         qword ptr [rcx-61h],rdx
  0000000140008599: 48 89 51 A7        mov         qword ptr [rcx-59h],rdx
  000000014000859D: 48 89 51 AF        mov         qword ptr [rcx-51h],rdx
  00000001400085A1: 48 89 51 B7        mov         qword ptr [rcx-49h],rdx
  00000001400085A5: 48 89 51 BF        mov         qword ptr [rcx-41h],rdx
  00000001400085A9: 48 89 51 C7        mov         qword ptr [rcx-39h],rdx
  00000001400085AD: 48 89 51 CF        mov         qword ptr [rcx-31h],rdx
  00000001400085B1: 48 89 51 D7        mov         qword ptr [rcx-29h],rdx
  00000001400085B5: 48 89 51 DF        mov         qword ptr [rcx-21h],rdx
  00000001400085B9: 48 89 51 E7        mov         qword ptr [rcx-19h],rdx
  00000001400085BD: 48 89 51 EF        mov         qword ptr [rcx-11h],rdx
  00000001400085C1: 48 89 51 F7        mov         qword ptr [rcx-9],rdx
  00000001400085C5: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400085C8: C3                 ret
  00000001400085C9: 48 89 51 80        mov         qword ptr [rcx-80h],rdx
  00000001400085CD: 48 89 51 88        mov         qword ptr [rcx-78h],rdx
  00000001400085D1: 48 89 51 90        mov         qword ptr [rcx-70h],rdx
  00000001400085D5: 48 89 51 98        mov         qword ptr [rcx-68h],rdx
  00000001400085D9: 48 89 51 A0        mov         qword ptr [rcx-60h],rdx
  00000001400085DD: 48 89 51 A8        mov         qword ptr [rcx-58h],rdx
  00000001400085E1: 48 89 51 B0        mov         qword ptr [rcx-50h],rdx
  00000001400085E5: 48 89 51 B8        mov         qword ptr [rcx-48h],rdx
  00000001400085E9: 48 89 51 C0        mov         qword ptr [rcx-40h],rdx
  00000001400085ED: 48 89 51 C8        mov         qword ptr [rcx-38h],rdx
  00000001400085F1: 48 89 51 D0        mov         qword ptr [rcx-30h],rdx
  00000001400085F5: 48 89 51 D8        mov         qword ptr [rcx-28h],rdx
  00000001400085F9: 48 89 51 E0        mov         qword ptr [rcx-20h],rdx
  00000001400085FD: 48 89 51 E8        mov         qword ptr [rcx-18h],rdx
  0000000140008601: 48 89 51 F0        mov         qword ptr [rcx-10h],rdx
  0000000140008605: 48 89 51 F8        mov         qword ptr [rcx-8],rdx
  0000000140008609: C3                 ret
  000000014000860A: 48 89 91 7E FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF7Eh],rdx
                    FF
  0000000140008611: 48 89 51 86        mov         qword ptr [rcx-7Ah],rdx
  0000000140008615: 48 89 51 8E        mov         qword ptr [rcx-72h],rdx
  0000000140008619: 48 89 51 96        mov         qword ptr [rcx-6Ah],rdx
  000000014000861D: 48 89 51 9E        mov         qword ptr [rcx-62h],rdx
  0000000140008621: 48 89 51 A6        mov         qword ptr [rcx-5Ah],rdx
  0000000140008625: 48 89 51 AE        mov         qword ptr [rcx-52h],rdx
  0000000140008629: 48 89 51 B6        mov         qword ptr [rcx-4Ah],rdx
  000000014000862D: 48 89 51 BE        mov         qword ptr [rcx-42h],rdx
  0000000140008631: 48 89 51 C6        mov         qword ptr [rcx-3Ah],rdx
  0000000140008635: 48 89 51 CE        mov         qword ptr [rcx-32h],rdx
  0000000140008639: 48 89 51 D6        mov         qword ptr [rcx-2Ah],rdx
  000000014000863D: 48 89 51 DE        mov         qword ptr [rcx-22h],rdx
  0000000140008641: 48 89 51 E6        mov         qword ptr [rcx-1Ah],rdx
  0000000140008645: 48 89 51 EE        mov         qword ptr [rcx-12h],rdx
  0000000140008649: 48 89 51 F6        mov         qword ptr [rcx-0Ah],rdx
  000000014000864D: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140008651: C3                 ret
  0000000140008652: 48 89 91 7D FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF7Dh],rdx
                    FF
  0000000140008659: 48 89 51 85        mov         qword ptr [rcx-7Bh],rdx
  000000014000865D: 48 89 51 8D        mov         qword ptr [rcx-73h],rdx
  0000000140008661: 48 89 51 95        mov         qword ptr [rcx-6Bh],rdx
  0000000140008665: 48 89 51 9D        mov         qword ptr [rcx-63h],rdx
  0000000140008669: 48 89 51 A5        mov         qword ptr [rcx-5Bh],rdx
  000000014000866D: 48 89 51 AD        mov         qword ptr [rcx-53h],rdx
  0000000140008671: 48 89 51 B5        mov         qword ptr [rcx-4Bh],rdx
  0000000140008675: 48 89 51 BD        mov         qword ptr [rcx-43h],rdx
  0000000140008679: 48 89 51 C5        mov         qword ptr [rcx-3Bh],rdx
  000000014000867D: 48 89 51 CD        mov         qword ptr [rcx-33h],rdx
  0000000140008681: 48 89 51 D5        mov         qword ptr [rcx-2Bh],rdx
  0000000140008685: 48 89 51 DD        mov         qword ptr [rcx-23h],rdx
  0000000140008689: 48 89 51 E5        mov         qword ptr [rcx-1Bh],rdx
  000000014000868D: 48 89 51 ED        mov         qword ptr [rcx-13h],rdx
  0000000140008691: 48 89 51 F5        mov         qword ptr [rcx-0Bh],rdx
  0000000140008695: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140008699: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000869C: C3                 ret
  000000014000869D: 48 89 91 7C FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF7Ch],rdx
                    FF
  00000001400086A4: 48 89 51 84        mov         qword ptr [rcx-7Ch],rdx
  00000001400086A8: 48 89 51 8C        mov         qword ptr [rcx-74h],rdx
  00000001400086AC: 48 89 51 94        mov         qword ptr [rcx-6Ch],rdx
  00000001400086B0: 48 89 51 9C        mov         qword ptr [rcx-64h],rdx
  00000001400086B4: 48 89 51 A4        mov         qword ptr [rcx-5Ch],rdx
  00000001400086B8: 48 89 51 AC        mov         qword ptr [rcx-54h],rdx
  00000001400086BC: 48 89 51 B4        mov         qword ptr [rcx-4Ch],rdx
  00000001400086C0: 48 89 51 BC        mov         qword ptr [rcx-44h],rdx
  00000001400086C4: 48 89 51 C4        mov         qword ptr [rcx-3Ch],rdx
  00000001400086C8: 48 89 51 CC        mov         qword ptr [rcx-34h],rdx
  00000001400086CC: 48 89 51 D4        mov         qword ptr [rcx-2Ch],rdx
  00000001400086D0: 48 89 51 DC        mov         qword ptr [rcx-24h],rdx
  00000001400086D4: 48 89 51 E4        mov         qword ptr [rcx-1Ch],rdx
  00000001400086D8: 48 89 51 EC        mov         qword ptr [rcx-14h],rdx
  00000001400086DC: 48 89 51 F4        mov         qword ptr [rcx-0Ch],rdx
  00000001400086E0: 89 51 FC           mov         dword ptr [rcx-4],edx
  00000001400086E3: C3                 ret
  00000001400086E4: 48 89 91 7C FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF7Ch],rdx
                    FF
  00000001400086EB: 48 89 51 83        mov         qword ptr [rcx-7Dh],rdx
  00000001400086EF: 48 89 51 8B        mov         qword ptr [rcx-75h],rdx
  00000001400086F3: 48 89 51 93        mov         qword ptr [rcx-6Dh],rdx
  00000001400086F7: 48 89 51 9B        mov         qword ptr [rcx-65h],rdx
  00000001400086FB: 48 89 51 A3        mov         qword ptr [rcx-5Dh],rdx
  00000001400086FF: 48 89 51 AB        mov         qword ptr [rcx-55h],rdx
  0000000140008703: 48 89 51 B3        mov         qword ptr [rcx-4Dh],rdx
  0000000140008707: 48 89 51 BB        mov         qword ptr [rcx-45h],rdx
  000000014000870B: 48 89 51 C3        mov         qword ptr [rcx-3Dh],rdx
  000000014000870F: 48 89 51 CB        mov         qword ptr [rcx-35h],rdx
  0000000140008713: 48 89 51 D3        mov         qword ptr [rcx-2Dh],rdx
  0000000140008717: 48 89 51 DB        mov         qword ptr [rcx-25h],rdx
  000000014000871B: 48 89 51 E3        mov         qword ptr [rcx-1Dh],rdx
  000000014000871F: 48 89 51 EB        mov         qword ptr [rcx-15h],rdx
  0000000140008723: 48 89 51 F3        mov         qword ptr [rcx-0Dh],rdx
  0000000140008727: 89 51 FB           mov         dword ptr [rcx-5],edx
  000000014000872A: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000872D: C3                 ret
  000000014000872E: 48 89 91 7A FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF7Ah],rdx
                    FF
  0000000140008735: 48 89 51 82        mov         qword ptr [rcx-7Eh],rdx
  0000000140008739: 48 89 51 8A        mov         qword ptr [rcx-76h],rdx
  000000014000873D: 48 89 51 92        mov         qword ptr [rcx-6Eh],rdx
  0000000140008741: 48 89 51 9A        mov         qword ptr [rcx-66h],rdx
  0000000140008745: 48 89 51 A2        mov         qword ptr [rcx-5Eh],rdx
  0000000140008749: 48 89 51 AA        mov         qword ptr [rcx-56h],rdx
  000000014000874D: 48 89 51 B2        mov         qword ptr [rcx-4Eh],rdx
  0000000140008751: 48 89 51 BA        mov         qword ptr [rcx-46h],rdx
  0000000140008755: 48 89 51 C2        mov         qword ptr [rcx-3Eh],rdx
  0000000140008759: 48 89 51 CA        mov         qword ptr [rcx-36h],rdx
  000000014000875D: 48 89 51 D2        mov         qword ptr [rcx-2Eh],rdx
  0000000140008761: 48 89 51 DA        mov         qword ptr [rcx-26h],rdx
  0000000140008765: 48 89 51 E2        mov         qword ptr [rcx-1Eh],rdx
  0000000140008769: 48 89 51 EA        mov         qword ptr [rcx-16h],rdx
  000000014000876D: 48 89 51 F2        mov         qword ptr [rcx-0Eh],rdx
  0000000140008771: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140008774: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140008778: C3                 ret
  0000000140008779: 48 89 91 79 FF FF  mov         qword ptr [rcx+FFFFFFFFFFFFFF79h],rdx
                    FF
  0000000140008780: 48 89 51 81        mov         qword ptr [rcx-7Fh],rdx
  0000000140008784: 48 89 51 89        mov         qword ptr [rcx-77h],rdx
  0000000140008788: 48 89 51 91        mov         qword ptr [rcx-6Fh],rdx
  000000014000878C: 48 89 51 99        mov         qword ptr [rcx-67h],rdx
  0000000140008790: 48 89 51 A1        mov         qword ptr [rcx-5Fh],rdx
  0000000140008794: 48 89 51 A9        mov         qword ptr [rcx-57h],rdx
  0000000140008798: 48 89 51 B1        mov         qword ptr [rcx-4Fh],rdx
  000000014000879C: 48 89 51 B9        mov         qword ptr [rcx-47h],rdx
  00000001400087A0: 48 89 51 C1        mov         qword ptr [rcx-3Fh],rdx
  00000001400087A4: 48 89 51 C9        mov         qword ptr [rcx-37h],rdx
  00000001400087A8: 48 89 51 D1        mov         qword ptr [rcx-2Fh],rdx
  00000001400087AC: 48 89 51 D9        mov         qword ptr [rcx-27h],rdx
  00000001400087B0: 48 89 51 E1        mov         qword ptr [rcx-1Fh],rdx
  00000001400087B4: 48 89 51 E9        mov         qword ptr [rcx-17h],rdx
  00000001400087B8: 48 89 51 F1        mov         qword ptr [rcx-0Fh],rdx
  00000001400087BC: 89 51 F9           mov         dword ptr [rcx-7],edx
  00000001400087BF: 66 89 51 FD        mov         word ptr [rcx-3],dx
  00000001400087C3: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400087C6: C3                 ret
  00000001400087C7: 83 3D BE 5E 00 00  cmp         dword ptr [000000014000E68Ch],2
                    02
  00000001400087CE: 0F 8C 4C 06 00 00  jl          0000000140008E20
  00000001400087D4: 66 48 0F 6E C2     movq        xmm0,rdx
  00000001400087D9: 66 0F 6C C0        punpcklqdq  xmm0,xmm0
  00000001400087DD: 4C 8D 1D 9C 8C 00  lea         r11,[0000000140011480h]
                    00
  00000001400087E4: 49 C7 C2 10 00 00  mov         r10,10h
                    00
  00000001400087EB: 4C 8B C9           mov         r9,rcx
  00000001400087EE: 49 83 E1 0F        and         r9,0Fh
  00000001400087F2: 4D 2B D1           sub         r10,r9
  00000001400087F5: 49 83 E2 0F        and         r10,0Fh
  00000001400087F9: 49 03 CA           add         rcx,r10
  00000001400087FC: 4D 2B C2           sub         r8,r10
  00000001400087FF: 43 FF 24 D3        jmp         qword ptr [r11+r10*8]
  0000000140008803: EB 56              jmp         000000014000885B
  0000000140008805: 48 89 51 F8        mov         qword ptr [rcx-8],rdx
  0000000140008809: EB 50              jmp         000000014000885B
  000000014000880B: 48 89 51 F7        mov         qword ptr [rcx-9],rdx
  000000014000880F: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008812: EB 47              jmp         000000014000885B
  0000000140008814: 48 89 51 F6        mov         qword ptr [rcx-0Ah],rdx
  0000000140008818: 66 89 51 FE        mov         word ptr [rcx-2],dx
  000000014000881C: EB 3D              jmp         000000014000885B
  000000014000881E: 48 89 51 F5        mov         qword ptr [rcx-0Bh],rdx
  0000000140008822: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140008826: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008829: EB 30              jmp         000000014000885B
  000000014000882B: 48 89 51 F4        mov         qword ptr [rcx-0Ch],rdx
  000000014000882F: 89 51 FC           mov         dword ptr [rcx-4],edx
  0000000140008832: EB 27              jmp         000000014000885B
  0000000140008834: 48 89 51 F3        mov         qword ptr [rcx-0Dh],rdx
  0000000140008838: 89 51 FB           mov         dword ptr [rcx-5],edx
  000000014000883B: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000883E: EB 1B              jmp         000000014000885B
  0000000140008840: 48 89 51 F2        mov         qword ptr [rcx-0Eh],rdx
  0000000140008844: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140008847: 66 89 51 FE        mov         word ptr [rcx-2],dx
  000000014000884B: EB 0E              jmp         000000014000885B
  000000014000884D: 48 89 51 F1        mov         qword ptr [rcx-0Fh],rdx
  0000000140008851: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140008854: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140008858: 88 51 FF           mov         byte ptr [rcx-1],dl
  000000014000885B: 4C 8D 1D AE 8C 00  lea         r11,[0000000140011510h]
                    00
  0000000140008862: 49 81 F8 B0 00 00  cmp         r8,0B0h
                    00
  0000000140008869: 0F 8D F4 04 00 00  jge         0000000140008D63
  000000014000886F: 49 03 C8           add         rcx,r8
  0000000140008872: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140008876: 89 11              mov         dword ptr [rcx],edx
  0000000140008878: 48 83 C1 04        add         rcx,4
  000000014000887C: 49 83 E8 04        sub         r8,4
  0000000140008880: 48 F7 C1 0F 00 00  test        rcx,0Fh
                    00
  0000000140008887: 74 D2              je          000000014000885B
  0000000140008889: 89 11              mov         dword ptr [rcx],edx
  000000014000888B: 48 83 C1 04        add         rcx,4
  000000014000888F: 49 83 E8 04        sub         r8,4
  0000000140008893: 48 F7 C1 0F 00 00  test        rcx,0Fh
                    00
  000000014000889A: 74 BF              je          000000014000885B
  000000014000889C: 89 11              mov         dword ptr [rcx],edx
  000000014000889E: 48 83 C1 04        add         rcx,4
  00000001400088A2: 49 83 E8 04        sub         r8,4
  00000001400088A6: EB B3              jmp         000000014000885B
  00000001400088A8: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  00000001400088B0: 66 0F 7F 81 50 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF50h],xmm0
                    FF FF
  00000001400088B8: 66 0F 7F 81 60 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF60h],xmm0
                    FF FF
  00000001400088C0: 66 0F 7F 81 70 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF70h],xmm0
                    FF FF
  00000001400088C8: 66 0F 7F 41 80     movdqa      xmmword ptr [rcx-80h],xmm0
  00000001400088CD: 66 0F 7F 41 90     movdqa      xmmword ptr [rcx-70h],xmm0
  00000001400088D2: 66 0F 7F 41 A0     movdqa      xmmword ptr [rcx-60h],xmm0
  00000001400088D7: 66 0F 7F 41 B0     movdqa      xmmword ptr [rcx-50h],xmm0
  00000001400088DC: 66 0F 7F 41 C0     movdqa      xmmword ptr [rcx-40h],xmm0
  00000001400088E1: 66 0F 7F 41 D0     movdqa      xmmword ptr [rcx-30h],xmm0
  00000001400088E6: 66 0F 7F 41 E0     movdqa      xmmword ptr [rcx-20h],xmm0
  00000001400088EB: 66 0F 7F 41 F0     movdqa      xmmword ptr [rcx-10h],xmm0
  00000001400088F0: C3                 ret
  00000001400088F1: 66 0F 7F 81 4F FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF4Fh],xmm0
                    FF FF
  00000001400088F9: 66 0F 7F 81 5F FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF5Fh],xmm0
                    FF FF
  0000000140008901: 66 0F 7F 81 6F FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF6Fh],xmm0
                    FF FF
  0000000140008909: 66 0F 7F 81 7F FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF7Fh],xmm0
                    FF FF
  0000000140008911: 66 0F 7F 41 8F     movdqa      xmmword ptr [rcx-71h],xmm0
  0000000140008916: 66 0F 7F 41 9F     movdqa      xmmword ptr [rcx-61h],xmm0
  000000014000891B: 66 0F 7F 41 AF     movdqa      xmmword ptr [rcx-51h],xmm0
  0000000140008920: 66 0F 7F 41 BF     movdqa      xmmword ptr [rcx-41h],xmm0
  0000000140008925: 66 0F 7F 41 CF     movdqa      xmmword ptr [rcx-31h],xmm0
  000000014000892A: 66 0F 7F 41 DF     movdqa      xmmword ptr [rcx-21h],xmm0
  000000014000892F: 66 0F 7F 41 EF     movdqa      xmmword ptr [rcx-11h],xmm0
  0000000140008934: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008937: C3                 ret
  0000000140008938: 66 0F 7F 81 4E FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF4Eh],xmm0
                    FF FF
  0000000140008940: 66 0F 7F 81 5E FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF5Eh],xmm0
                    FF FF
  0000000140008948: 66 0F 7F 81 6E FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF6Eh],xmm0
                    FF FF
  0000000140008950: 66 0F 7F 81 7E FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF7Eh],xmm0
                    FF FF
  0000000140008958: 66 0F 7F 41 8E     movdqa      xmmword ptr [rcx-72h],xmm0
  000000014000895D: 66 0F 7F 41 9E     movdqa      xmmword ptr [rcx-62h],xmm0
  0000000140008962: 66 0F 7F 41 AE     movdqa      xmmword ptr [rcx-52h],xmm0
  0000000140008967: 66 0F 7F 41 BE     movdqa      xmmword ptr [rcx-42h],xmm0
  000000014000896C: 66 0F 7F 41 CE     movdqa      xmmword ptr [rcx-32h],xmm0
  0000000140008971: 66 0F 7F 41 DE     movdqa      xmmword ptr [rcx-22h],xmm0
  0000000140008976: 66 0F 7F 41 EE     movdqa      xmmword ptr [rcx-12h],xmm0
  000000014000897B: 66 89 51 FE        mov         word ptr [rcx-2],dx
  000000014000897F: C3                 ret
  0000000140008980: 66 0F 7F 81 4D FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF4Dh],xmm0
                    FF FF
  0000000140008988: 66 0F 7F 81 5D FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF5Dh],xmm0
                    FF FF
  0000000140008990: 66 0F 7F 81 6D FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF6Dh],xmm0
                    FF FF
  0000000140008998: 66 0F 7F 81 7D FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF7Dh],xmm0
                    FF FF
  00000001400089A0: 66 0F 7F 41 8D     movdqa      xmmword ptr [rcx-73h],xmm0
  00000001400089A5: 66 0F 7F 41 9D     movdqa      xmmword ptr [rcx-63h],xmm0
  00000001400089AA: 66 0F 7F 41 AD     movdqa      xmmword ptr [rcx-53h],xmm0
  00000001400089AF: 66 0F 7F 41 BD     movdqa      xmmword ptr [rcx-43h],xmm0
  00000001400089B4: 66 0F 7F 41 CD     movdqa      xmmword ptr [rcx-33h],xmm0
  00000001400089B9: 66 0F 7F 41 DD     movdqa      xmmword ptr [rcx-23h],xmm0
  00000001400089BE: 66 0F 7F 41 ED     movdqa      xmmword ptr [rcx-13h],xmm0
  00000001400089C3: 66 89 51 FD        mov         word ptr [rcx-3],dx
  00000001400089C7: 88 51 FF           mov         byte ptr [rcx-1],dl
  00000001400089CA: C3                 ret
  00000001400089CB: 66 0F 7F 81 4C FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF4Ch],xmm0
                    FF FF
  00000001400089D3: 66 0F 7F 81 5C FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF5Ch],xmm0
                    FF FF
  00000001400089DB: 66 0F 7F 81 6C FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF6Ch],xmm0
                    FF FF
  00000001400089E3: 66 0F 7F 81 7C FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF7Ch],xmm0
                    FF FF
  00000001400089EB: 66 0F 7F 41 8C     movdqa      xmmword ptr [rcx-74h],xmm0
  00000001400089F0: 66 0F 7F 41 9C     movdqa      xmmword ptr [rcx-64h],xmm0
  00000001400089F5: 66 0F 7F 41 AC     movdqa      xmmword ptr [rcx-54h],xmm0
  00000001400089FA: 66 0F 7F 41 BC     movdqa      xmmword ptr [rcx-44h],xmm0
  00000001400089FF: 66 0F 7F 41 CC     movdqa      xmmword ptr [rcx-34h],xmm0
  0000000140008A04: 66 0F 7F 41 DC     movdqa      xmmword ptr [rcx-24h],xmm0
  0000000140008A09: 66 0F 7F 41 EC     movdqa      xmmword ptr [rcx-14h],xmm0
  0000000140008A0E: 89 51 FC           mov         dword ptr [rcx-4],edx
  0000000140008A11: C3                 ret
  0000000140008A12: 66 0F 7F 81 4B FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF4Bh],xmm0
                    FF FF
  0000000140008A1A: 66 0F 7F 81 5B FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF5Bh],xmm0
                    FF FF
  0000000140008A22: 66 0F 7F 81 6B FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF6Bh],xmm0
                    FF FF
  0000000140008A2A: 66 0F 7F 81 7B FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF7Bh],xmm0
                    FF FF
  0000000140008A32: 66 0F 7F 41 8B     movdqa      xmmword ptr [rcx-75h],xmm0
  0000000140008A37: 66 0F 7F 41 9B     movdqa      xmmword ptr [rcx-65h],xmm0
  0000000140008A3C: 66 0F 7F 41 AB     movdqa      xmmword ptr [rcx-55h],xmm0
  0000000140008A41: 66 0F 7F 41 BB     movdqa      xmmword ptr [rcx-45h],xmm0
  0000000140008A46: 66 0F 7F 41 CB     movdqa      xmmword ptr [rcx-35h],xmm0
  0000000140008A4B: 66 0F 7F 41 DB     movdqa      xmmword ptr [rcx-25h],xmm0
  0000000140008A50: 66 0F 7F 41 EB     movdqa      xmmword ptr [rcx-15h],xmm0
  0000000140008A55: 89 51 FB           mov         dword ptr [rcx-5],edx
  0000000140008A58: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008A5B: C3                 ret
  0000000140008A5C: 66 0F 7F 81 4A FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF4Ah],xmm0
                    FF FF
  0000000140008A64: 66 0F 7F 81 5A FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF5Ah],xmm0
                    FF FF
  0000000140008A6C: 66 0F 7F 81 6A FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF6Ah],xmm0
                    FF FF
  0000000140008A74: 66 0F 7F 81 7A FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF7Ah],xmm0
                    FF FF
  0000000140008A7C: 66 0F 7F 41 8A     movdqa      xmmword ptr [rcx-76h],xmm0
  0000000140008A81: 66 0F 7F 41 9A     movdqa      xmmword ptr [rcx-66h],xmm0
  0000000140008A86: 66 0F 7F 41 AA     movdqa      xmmword ptr [rcx-56h],xmm0
  0000000140008A8B: 66 0F 7F 41 BA     movdqa      xmmword ptr [rcx-46h],xmm0
  0000000140008A90: 66 0F 7F 41 CA     movdqa      xmmword ptr [rcx-36h],xmm0
  0000000140008A95: 66 0F 7F 41 DA     movdqa      xmmword ptr [rcx-26h],xmm0
  0000000140008A9A: 66 0F 7F 41 EA     movdqa      xmmword ptr [rcx-16h],xmm0
  0000000140008A9F: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140008AA2: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140008AA6: C3                 ret
  0000000140008AA7: 66 0F 7F 81 49 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF49h],xmm0
                    FF FF
  0000000140008AAF: 66 0F 7F 81 59 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF59h],xmm0
                    FF FF
  0000000140008AB7: 66 0F 7F 81 69 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF69h],xmm0
                    FF FF
  0000000140008ABF: 66 0F 7F 81 79 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF79h],xmm0
                    FF FF
  0000000140008AC7: 66 0F 7F 41 89     movdqa      xmmword ptr [rcx-77h],xmm0
  0000000140008ACC: 66 0F 7F 41 99     movdqa      xmmword ptr [rcx-67h],xmm0
  0000000140008AD1: 66 0F 7F 41 A9     movdqa      xmmword ptr [rcx-57h],xmm0
  0000000140008AD6: 66 0F 7F 41 B9     movdqa      xmmword ptr [rcx-47h],xmm0
  0000000140008ADB: 66 0F 7F 41 C9     movdqa      xmmword ptr [rcx-37h],xmm0
  0000000140008AE0: 66 0F 7F 41 D9     movdqa      xmmword ptr [rcx-27h],xmm0
  0000000140008AE5: 66 0F 7F 41 E9     movdqa      xmmword ptr [rcx-17h],xmm0
  0000000140008AEA: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140008AED: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140008AF1: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008AF4: C3                 ret
  0000000140008AF5: 66 0F 7F 81 48 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF48h],xmm0
                    FF FF
  0000000140008AFD: 66 0F 7F 81 58 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF58h],xmm0
                    FF FF
  0000000140008B05: 66 0F 7F 81 68 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF68h],xmm0
                    FF FF
  0000000140008B0D: 66 0F 7F 81 78 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF78h],xmm0
                    FF FF
  0000000140008B15: 66 0F 7F 41 88     movdqa      xmmword ptr [rcx-78h],xmm0
  0000000140008B1A: 66 0F 7F 41 98     movdqa      xmmword ptr [rcx-68h],xmm0
  0000000140008B1F: 66 0F 7F 41 A8     movdqa      xmmword ptr [rcx-58h],xmm0
  0000000140008B24: 66 0F 7F 41 B8     movdqa      xmmword ptr [rcx-48h],xmm0
  0000000140008B29: 66 0F 7F 41 C8     movdqa      xmmword ptr [rcx-38h],xmm0
  0000000140008B2E: 66 0F 7F 41 D8     movdqa      xmmword ptr [rcx-28h],xmm0
  0000000140008B33: 66 0F 7F 41 E8     movdqa      xmmword ptr [rcx-18h],xmm0
  0000000140008B38: 66 0F D6 41 F8     movq        mmword ptr [rcx-8],xmm0
  0000000140008B3D: C3                 ret
  0000000140008B3E: 66 0F 7F 81 47 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF47h],xmm0
                    FF FF
  0000000140008B46: 66 0F 7F 81 57 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF57h],xmm0
                    FF FF
  0000000140008B4E: 66 0F 7F 81 67 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF67h],xmm0
                    FF FF
  0000000140008B56: 66 0F 7F 81 77 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF77h],xmm0
                    FF FF
  0000000140008B5E: 66 0F 7F 41 87     movdqa      xmmword ptr [rcx-79h],xmm0
  0000000140008B63: 66 0F 7F 41 97     movdqa      xmmword ptr [rcx-69h],xmm0
  0000000140008B68: 66 0F 7F 41 A7     movdqa      xmmword ptr [rcx-59h],xmm0
  0000000140008B6D: 66 0F 7F 41 B7     movdqa      xmmword ptr [rcx-49h],xmm0
  0000000140008B72: 66 0F 7F 41 C7     movdqa      xmmword ptr [rcx-39h],xmm0
  0000000140008B77: 66 0F 7F 41 D7     movdqa      xmmword ptr [rcx-29h],xmm0
  0000000140008B7C: 66 0F 7F 41 E7     movdqa      xmmword ptr [rcx-19h],xmm0
  0000000140008B81: 66 0F D6 41 F7     movq        mmword ptr [rcx-9],xmm0
  0000000140008B86: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008B89: C3                 ret
  0000000140008B8A: 66 0F 7F 81 46 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF46h],xmm0
                    FF FF
  0000000140008B92: 66 0F 7F 81 56 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF56h],xmm0
                    FF FF
  0000000140008B9A: 66 0F 7F 81 66 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF66h],xmm0
                    FF FF
  0000000140008BA2: 66 0F 7F 81 76 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF76h],xmm0
                    FF FF
  0000000140008BAA: 66 0F 7F 41 86     movdqa      xmmword ptr [rcx-7Ah],xmm0
  0000000140008BAF: 66 0F 7F 41 96     movdqa      xmmword ptr [rcx-6Ah],xmm0
  0000000140008BB4: 66 0F 7F 41 A6     movdqa      xmmword ptr [rcx-5Ah],xmm0
  0000000140008BB9: 66 0F 7F 41 B6     movdqa      xmmword ptr [rcx-4Ah],xmm0
  0000000140008BBE: 66 0F 7F 41 C6     movdqa      xmmword ptr [rcx-3Ah],xmm0
  0000000140008BC3: 66 0F 7F 41 D6     movdqa      xmmword ptr [rcx-2Ah],xmm0
  0000000140008BC8: 66 0F 7F 41 E6     movdqa      xmmword ptr [rcx-1Ah],xmm0
  0000000140008BCD: 66 0F D6 41 F6     movq        mmword ptr [rcx-0Ah],xmm0
  0000000140008BD2: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140008BD6: C3                 ret
  0000000140008BD7: 66 0F 7F 81 45 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF45h],xmm0
                    FF FF
  0000000140008BDF: 66 0F 7F 81 55 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF55h],xmm0
                    FF FF
  0000000140008BE7: 66 0F 7F 81 65 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF65h],xmm0
                    FF FF
  0000000140008BEF: 66 0F 7F 81 75 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF75h],xmm0
                    FF FF
  0000000140008BF7: 66 0F 7F 41 85     movdqa      xmmword ptr [rcx-7Bh],xmm0
  0000000140008BFC: 66 0F 7F 41 95     movdqa      xmmword ptr [rcx-6Bh],xmm0
  0000000140008C01: 66 0F 7F 41 A5     movdqa      xmmword ptr [rcx-5Bh],xmm0
  0000000140008C06: 66 0F 7F 41 B5     movdqa      xmmword ptr [rcx-4Bh],xmm0
  0000000140008C0B: 66 0F 7F 41 C5     movdqa      xmmword ptr [rcx-3Bh],xmm0
  0000000140008C10: 66 0F 7F 41 D5     movdqa      xmmword ptr [rcx-2Bh],xmm0
  0000000140008C15: 66 0F 7F 41 E5     movdqa      xmmword ptr [rcx-1Bh],xmm0
  0000000140008C1A: 66 0F D6 41 F5     movq        mmword ptr [rcx-0Bh],xmm0
  0000000140008C1F: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140008C23: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008C26: C3                 ret
  0000000140008C27: 66 0F 7F 81 44 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF44h],xmm0
                    FF FF
  0000000140008C2F: 66 0F 7F 81 54 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF54h],xmm0
                    FF FF
  0000000140008C37: 66 0F 7F 81 64 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF64h],xmm0
                    FF FF
  0000000140008C3F: 66 0F 7F 81 74 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF74h],xmm0
                    FF FF
  0000000140008C47: 66 0F 7F 41 84     movdqa      xmmword ptr [rcx-7Ch],xmm0
  0000000140008C4C: 66 0F 7F 41 94     movdqa      xmmword ptr [rcx-6Ch],xmm0
  0000000140008C51: 66 0F 7F 41 A4     movdqa      xmmword ptr [rcx-5Ch],xmm0
  0000000140008C56: 66 0F 7F 41 B4     movdqa      xmmword ptr [rcx-4Ch],xmm0
  0000000140008C5B: 66 0F 7F 41 C4     movdqa      xmmword ptr [rcx-3Ch],xmm0
  0000000140008C60: 66 0F 7F 41 D4     movdqa      xmmword ptr [rcx-2Ch],xmm0
  0000000140008C65: 66 0F 7F 41 E4     movdqa      xmmword ptr [rcx-1Ch],xmm0
  0000000140008C6A: 66 0F D6 41 F4     movq        mmword ptr [rcx-0Ch],xmm0
  0000000140008C6F: 89 51 FC           mov         dword ptr [rcx-4],edx
  0000000140008C72: C3                 ret
  0000000140008C73: 66 0F 7F 81 43 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF43h],xmm0
                    FF FF
  0000000140008C7B: 66 0F 7F 81 53 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF53h],xmm0
                    FF FF
  0000000140008C83: 66 0F 7F 81 63 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF63h],xmm0
                    FF FF
  0000000140008C8B: 66 0F 7F 81 73 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF73h],xmm0
                    FF FF
  0000000140008C93: 66 0F 7F 41 83     movdqa      xmmword ptr [rcx-7Dh],xmm0
  0000000140008C98: 66 0F 7F 41 93     movdqa      xmmword ptr [rcx-6Dh],xmm0
  0000000140008C9D: 66 0F 7F 41 A3     movdqa      xmmword ptr [rcx-5Dh],xmm0
  0000000140008CA2: 66 0F 7F 41 B3     movdqa      xmmword ptr [rcx-4Dh],xmm0
  0000000140008CA7: 66 0F 7F 41 C3     movdqa      xmmword ptr [rcx-3Dh],xmm0
  0000000140008CAC: 66 0F 7F 41 D3     movdqa      xmmword ptr [rcx-2Dh],xmm0
  0000000140008CB1: 66 0F 7F 41 E3     movdqa      xmmword ptr [rcx-1Dh],xmm0
  0000000140008CB6: 66 0F D6 41 F3     movq        mmword ptr [rcx-0Dh],xmm0
  0000000140008CBB: 89 51 FB           mov         dword ptr [rcx-5],edx
  0000000140008CBE: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008CC1: C3                 ret
  0000000140008CC2: 66 0F 7F 81 42 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF42h],xmm0
                    FF FF
  0000000140008CCA: 66 0F 7F 81 52 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF52h],xmm0
                    FF FF
  0000000140008CD2: 66 0F 7F 81 62 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF62h],xmm0
                    FF FF
  0000000140008CDA: 66 0F 7F 81 72 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF72h],xmm0
                    FF FF
  0000000140008CE2: 66 0F 7F 41 82     movdqa      xmmword ptr [rcx-7Eh],xmm0
  0000000140008CE7: 66 0F 7F 41 92     movdqa      xmmword ptr [rcx-6Eh],xmm0
  0000000140008CEC: 66 0F 7F 41 A2     movdqa      xmmword ptr [rcx-5Eh],xmm0
  0000000140008CF1: 66 0F 7F 41 B2     movdqa      xmmword ptr [rcx-4Eh],xmm0
  0000000140008CF6: 66 0F 7F 41 C2     movdqa      xmmword ptr [rcx-3Eh],xmm0
  0000000140008CFB: 66 0F 7F 41 D2     movdqa      xmmword ptr [rcx-2Eh],xmm0
  0000000140008D00: 66 0F 7F 41 E2     movdqa      xmmword ptr [rcx-1Eh],xmm0
  0000000140008D05: 48 89 51 F2        mov         qword ptr [rcx-0Eh],rdx
  0000000140008D09: 89 51 FA           mov         dword ptr [rcx-6],edx
  0000000140008D0C: 66 89 51 FE        mov         word ptr [rcx-2],dx
  0000000140008D10: C3                 ret
  0000000140008D11: 66 0F 7F 81 41 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF41h],xmm0
                    FF FF
  0000000140008D19: 66 0F 7F 81 51 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF51h],xmm0
                    FF FF
  0000000140008D21: 66 0F 7F 81 61 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF61h],xmm0
                    FF FF
  0000000140008D29: 66 0F 7F 81 71 FF  movdqa      xmmword ptr [rcx+FFFFFFFFFFFFFF71h],xmm0
                    FF FF
  0000000140008D31: 66 0F 7F 41 81     movdqa      xmmword ptr [rcx-7Fh],xmm0
  0000000140008D36: 66 0F 7F 41 91     movdqa      xmmword ptr [rcx-6Fh],xmm0
  0000000140008D3B: 66 0F 7F 41 A1     movdqa      xmmword ptr [rcx-5Fh],xmm0
  0000000140008D40: 66 0F 7F 41 B1     movdqa      xmmword ptr [rcx-4Fh],xmm0
  0000000140008D45: 66 0F 7F 41 C1     movdqa      xmmword ptr [rcx-3Fh],xmm0
  0000000140008D4A: 66 0F 7F 41 D1     movdqa      xmmword ptr [rcx-2Fh],xmm0
  0000000140008D4F: 66 0F 7F 41 E1     movdqa      xmmword ptr [rcx-1Fh],xmm0
  0000000140008D54: 48 89 51 F1        mov         qword ptr [rcx-0Fh],rdx
  0000000140008D58: 89 51 F9           mov         dword ptr [rcx-7],edx
  0000000140008D5B: 66 89 51 FD        mov         word ptr [rcx-3],dx
  0000000140008D5F: 88 51 FF           mov         byte ptr [rcx-1],dl
  0000000140008D62: C3                 ret
  0000000140008D63: 4C 3B 05 D6 4A 00  cmp         r8,qword ptr [000000014000D840h]
                    00
  0000000140008D6A: 7F 4D              jg          0000000140008DB9
  0000000140008D6C: EB 02              jmp         0000000140008D70
  0000000140008D6E: 66 90              xchg        ax,ax
  0000000140008D70: 4D 8D 40 80        lea         r8,[r8-80h]
  0000000140008D74: 66 0F 7F 01        movdqa      xmmword ptr [rcx],xmm0
  0000000140008D78: 66 0F 7F 41 10     movdqa      xmmword ptr [rcx+10h],xmm0
  0000000140008D7D: 66 0F 7F 41 20     movdqa      xmmword ptr [rcx+20h],xmm0
  0000000140008D82: 66 0F 7F 41 30     movdqa      xmmword ptr [rcx+30h],xmm0
  0000000140008D87: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  0000000140008D8E: 66 0F 7F 41 40     movdqa      xmmword ptr [rcx+40h],xmm0
  0000000140008D93: 66 0F 7F 41 50     movdqa      xmmword ptr [rcx+50h],xmm0
  0000000140008D98: 66 0F 7F 41 60     movdqa      xmmword ptr [rcx+60h],xmm0
  0000000140008D9D: 66 0F 7F 41 70     movdqa      xmmword ptr [rcx+70h],xmm0
  0000000140008DA2: 48 8D 89 80 00 00  lea         rcx,[rcx+0000000000000080h]
                    00
  0000000140008DA9: 7D C5              jge         0000000140008D70
  0000000140008DAB: 4C 8D 1D 5E 87 00  lea         r11,[0000000140011510h]
                    00
  0000000140008DB2: 49 03 C8           add         rcx,r8
  0000000140008DB5: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140008DB9: 49 83 F9 00        cmp         r9,0
  0000000140008DBD: 74 B1              je          0000000140008D70
  0000000140008DBF: EB 0F              jmp         0000000140008DD0
  0000000140008DC1: 66 66 66 66 66 66  nop         word ptr [rax+rax+0000000000000000h]
                    66 0F 1F 84 00 00
                    00 00 00
  0000000140008DD0: 49 81 E8 80 00 00  sub         r8,80h
                    00
  0000000140008DD7: 66 0F E7 01        movntdq     xmmword ptr [rcx],xmm0
  0000000140008DDB: 66 0F E7 41 10     movntdq     xmmword ptr [rcx+10h],xmm0
  0000000140008DE0: 66 0F E7 41 20     movntdq     xmmword ptr [rcx+20h],xmm0
  0000000140008DE5: 66 0F E7 41 30     movntdq     xmmword ptr [rcx+30h],xmm0
  0000000140008DEA: 66 0F E7 41 40     movntdq     xmmword ptr [rcx+40h],xmm0
  0000000140008DEF: 66 0F E7 41 50     movntdq     xmmword ptr [rcx+50h],xmm0
  0000000140008DF4: 66 0F E7 41 60     movntdq     xmmword ptr [rcx+60h],xmm0
  0000000140008DF9: 66 0F E7 41 70     movntdq     xmmword ptr [rcx+70h],xmm0
  0000000140008DFE: 48 81 C1 80 00 00  add         rcx,80h
                    00
  0000000140008E05: 49 81 F8 80 00 00  cmp         r8,80h
                    00
  0000000140008E0C: 7D C2              jge         0000000140008DD0
  0000000140008E0E: 0F AE F8           sfence
  0000000140008E11: 4C 8D 1D F8 86 00  lea         r11,[0000000140011510h]
                    00
  0000000140008E18: 49 03 C8           add         rcx,r8
  0000000140008E1B: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140008E1F: 90                 nop
  0000000140008E20: 4C 3B 05 19 4A 00  cmp         r8,qword ptr [000000014000D840h]
                    00
  0000000140008E27: 7F 47              jg          0000000140008E70
  0000000140008E29: EB 05              jmp         0000000140008E30
  0000000140008E2B: 0F 1F 44 00 00     nop         dword ptr [rax+rax]
  0000000140008E30: 48 89 11           mov         qword ptr [rcx],rdx
  0000000140008E33: 48 89 51 08        mov         qword ptr [rcx+8],rdx
  0000000140008E37: 4D 8D 40 C0        lea         r8,[r8-40h]
  0000000140008E3B: 48 89 51 10        mov         qword ptr [rcx+10h],rdx
  0000000140008E3F: 48 89 51 18        mov         qword ptr [rcx+18h],rdx
  0000000140008E43: 49 83 F8 40        cmp         r8,40h
  0000000140008E47: 48 89 51 20        mov         qword ptr [rcx+20h],rdx
  0000000140008E4B: 48 89 51 28        mov         qword ptr [rcx+28h],rdx
  0000000140008E4F: 48 89 51 30        mov         qword ptr [rcx+30h],rdx
  0000000140008E53: 48 89 51 38        mov         qword ptr [rcx+38h],rdx
  0000000140008E57: 48 8D 49 40        lea         rcx,[rcx+40h]
  0000000140008E5B: 7F D3              jg          0000000140008E30
  0000000140008E5D: 4C 8D 1D DC 81 00  lea         r11,[0000000140011040h]
                    00
  0000000140008E64: 4A 8D 0C 01        lea         rcx,[rcx+r8]
  0000000140008E68: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140008E6C: 0F 1F 40 00        nop         dword ptr [rax]
  0000000140008E70: 49 83 F9 00        cmp         r9,0
  0000000140008E74: 74 BA              je          0000000140008E30
  0000000140008E76: EB 08              jmp         0000000140008E80
  0000000140008E78: 0F 1F 84 00 00 00  nop         dword ptr [rax+rax+0000000000000000h]
                    00 00
  0000000140008E80: 48 0F C3 11        movnti      qword ptr [rcx],rdx
  0000000140008E84: 48 0F C3 51 08     movnti      qword ptr [rcx+8],rdx
  0000000140008E89: 4D 8D 40 C0        lea         r8,[r8-40h]
  0000000140008E8D: 48 0F C3 51 10     movnti      qword ptr [rcx+10h],rdx
  0000000140008E92: 48 0F C3 51 18     movnti      qword ptr [rcx+18h],rdx
  0000000140008E97: 48 0F C3 51 20     movnti      qword ptr [rcx+20h],rdx
  0000000140008E9C: 49 83 F8 40        cmp         r8,40h
  0000000140008EA0: 48 0F C3 51 28     movnti      qword ptr [rcx+28h],rdx
  0000000140008EA5: 48 0F C3 51 30     movnti      qword ptr [rcx+30h],rdx
  0000000140008EAA: 48 0F C3 51 38     movnti      qword ptr [rcx+38h],rdx
  0000000140008EAF: 48 8D 49 40        lea         rcx,[rcx+40h]
  0000000140008EB3: 7D CB              jge         0000000140008E80
  0000000140008EB5: 4C 8D 1D 84 81 00  lea         r11,[0000000140011040h]
                    00
  0000000140008EBC: 4A 8D 0C 01        lea         rcx,[rcx+r8]
  0000000140008EC0: 43 FF 24 C3        jmp         qword ptr [r11+r8*8]
  0000000140008EC4: FF 25 06 12 00 00  jmp         qword ptr [000000014000A0D0h]
  0000000140008ECA: FF 25 E8 11 00 00  jmp         qword ptr [000000014000A0B8h]
  0000000140008ED0: FF 25 DA 11 00 00  jmp         qword ptr [000000014000A0B0h]
  0000000140008ED6: FF 25 CC 11 00 00  jmp         qword ptr [000000014000A0A8h]
  0000000140008EDC: FF 25 DE 11 00 00  jmp         qword ptr [000000014000A0C0h]
  0000000140008EE2: FF 25 B0 11 00 00  jmp         qword ptr [000000014000A098h]
  0000000140008EE8: FF 25 DA 11 00 00  jmp         qword ptr [000000014000A0C8h]
  0000000140008EEE: FF 25 AC 11 00 00  jmp         qword ptr [000000014000A0A0h]
  0000000140008EF4: FF 25 0E 12 00 00  jmp         qword ptr [000000014000A108h]
  0000000140008EFA: FF 25 00 12 00 00  jmp         qword ptr [000000014000A100h]
  0000000140008F00: FF 25 F2 11 00 00  jmp         qword ptr [000000014000A0F8h]
  0000000140008F06: FF 25 4C 12 00 00  jmp         qword ptr [000000014000A158h]
  0000000140008F0C: FF 25 4E 12 00 00  jmp         qword ptr [000000014000A160h]
  0000000140008F12: FF 25 10 12 00 00  jmp         qword ptr [000000014000A128h]
  0000000140008F18: FF 25 62 12 00 00  jmp         qword ptr [000000014000A180h]
  0000000140008F1E: FF 25 7C 12 00 00  jmp         qword ptr [000000014000A1A0h]
  0000000140008F24: FF 25 9E 12 00 00  jmp         qword ptr [000000014000A1C8h]
  0000000140008F2A: FF 25 90 12 00 00  jmp         qword ptr [000000014000A1C0h]
  0000000140008F30: FF 25 82 12 00 00  jmp         qword ptr [000000014000A1B8h]
  0000000140008F36: FF 25 74 12 00 00  jmp         qword ptr [000000014000A1B0h]
  0000000140008F3C: FF 25 66 12 00 00  jmp         qword ptr [000000014000A1A8h]
  0000000140008F42: FF 25 B0 12 00 00  jmp         qword ptr [000000014000A1F8h]
  0000000140008F48: FF 25 4A 12 00 00  jmp         qword ptr [000000014000A198h]
  0000000140008F4E: FF 25 3C 12 00 00  jmp         qword ptr [000000014000A190h]
  0000000140008F54: FF 25 0E 12 00 00  jmp         qword ptr [000000014000A168h]
  0000000140008F5A: FF 25 18 12 00 00  jmp         qword ptr [000000014000A178h]
  0000000140008F60: FF 25 EA 11 00 00  jmp         qword ptr [000000014000A150h]
  0000000140008F66: FF 25 AC 11 00 00  jmp         qword ptr [000000014000A118h]
  0000000140008F6C: FF 25 7E 11 00 00  jmp         qword ptr [000000014000A0F0h]
  0000000140008F72: FF 25 60 12 00 00  jmp         qword ptr [000000014000A1D8h]
  0000000140008F78: FF 25 BA 11 00 00  jmp         qword ptr [000000014000A138h]
  0000000140008F7E: FF 25 04 12 00 00  jmp         qword ptr [000000014000A188h]
  0000000140008F84: FF 25 B6 11 00 00  jmp         qword ptr [000000014000A140h]
  0000000140008F8A: FF 25 B8 11 00 00  jmp         qword ptr [000000014000A148h]
  0000000140008F90: FF 25 82 12 00 00  jmp         qword ptr [000000014000A218h]
  0000000140008F96: FF 25 74 12 00 00  jmp         qword ptr [000000014000A210h]
  0000000140008F9C: FF 25 3E 11 00 00  jmp         qword ptr [000000014000A0E0h]
  0000000140008FA2: FF 25 C8 11 00 00  jmp         qword ptr [000000014000A170h]
  0000000140008FA8: FF 25 42 12 00 00  jmp         qword ptr [000000014000A1F0h]
  0000000140008FAE: FF 25 54 12 00 00  jmp         qword ptr [000000014000A208h]
  0000000140008FB4: FF 25 BE 10 00 00  jmp         qword ptr [000000014000A078h]
  0000000140008FBA: CC                 int         3
  0000000140008FBB: CC                 int         3
  0000000140008FBC: CC                 int         3
  0000000140008FBD: CC                 int         3
  0000000140008FBE: CC                 int         3
  0000000140008FBF: CC                 int         3
  0000000140008FC0: CC                 int         3
  0000000140008FC1: CC                 int         3
  0000000140008FC2: CC                 int         3
  0000000140008FC3: CC                 int         3
  0000000140008FC4: CC                 int         3
  0000000140008FC5: CC                 int         3
  0000000140008FC6: 66 66 0F 1F 84 00  nop         word ptr [rax+rax+0000000000000000h]
                    00 00 00 00
  0000000140008FD0: 48 3B 0D 51 40 00  cmp         rcx,qword ptr [000000014000D028h]
                    00
  0000000140008FD7: F2 75 12           bnd jne     0000000140008FEC
  0000000140008FDA: 48 C1 C1 10        rol         rcx,10h
  0000000140008FDE: 66 F7 C1 FF FF     test        cx,0FFFFh
  0000000140008FE3: F2 75 02           bnd jne     0000000140008FE8
  0000000140008FE6: F2 C3              bnd ret
  0000000140008FE8: 48 C1 C9 10        ror         rcx,10h
  0000000140008FEC: E9 B3 00 00 00     jmp         00000001400090A4
  0000000140008FF1: CC                 int         3
  0000000140008FF2: CC                 int         3
  0000000140008FF3: CC                 int         3
  0000000140008FF4: 48 83 EC 28        sub         rsp,28h
  0000000140008FF8: 4D 8B 41 38        mov         r8,qword ptr [r9+38h]
  0000000140008FFC: 48 8B CA           mov         rcx,rdx
  0000000140008FFF: 49 8B D1           mov         rdx,r9
  0000000140009002: E8 0D 00 00 00     call        0000000140009014
  0000000140009007: B8 01 00 00 00     mov         eax,1
  000000014000900C: 48 83 C4 28        add         rsp,28h
  0000000140009010: C3                 ret
  0000000140009011: CC                 int         3
  0000000140009012: CC                 int         3
  0000000140009013: CC                 int         3
  0000000140009014: 40 53              push        rbx
  0000000140009016: 45 8B 18           mov         r11d,dword ptr [r8]
  0000000140009019: 48 8B DA           mov         rbx,rdx
  000000014000901C: 41 83 E3 F8        and         r11d,0FFFFFFF8h
  0000000140009020: 4C 8B C9           mov         r9,rcx
  0000000140009023: 41 F6 00 04        test        byte ptr [r8],4
  0000000140009027: 4C 8B D1           mov         r10,rcx
  000000014000902A: 74 13              je          000000014000903F
  000000014000902C: 41 8B 40 08        mov         eax,dword ptr [r8+8]
  0000000140009030: 4D 63 50 04        movsxd      r10,dword ptr [r8+4]
  0000000140009034: F7 D8              neg         eax
  0000000140009036: 4C 03 D1           add         r10,rcx
  0000000140009039: 48 63 C8           movsxd      rcx,eax
  000000014000903C: 4C 23 D1           and         r10,rcx
  000000014000903F: 49 63 C3           movsxd      rax,r11d
  0000000140009042: 4A 8B 14 10        mov         rdx,qword ptr [rax+r10]
  0000000140009046: 48 8B 43 10        mov         rax,qword ptr [rbx+10h]
  000000014000904A: 8B 48 08           mov         ecx,dword ptr [rax+8]
  000000014000904D: 48 8B 43 08        mov         rax,qword ptr [rbx+8]
  0000000140009051: F6 44 01 03 0F     test        byte ptr [rcx+rax+3],0Fh
  0000000140009056: 74 0B              je          0000000140009063
  0000000140009058: 0F B6 44 01 03     movzx       eax,byte ptr [rcx+rax+3]
  000000014000905D: 83 E0 F0           and         eax,0FFFFFFF0h
  0000000140009060: 4C 03 C8           add         r9,rax
  0000000140009063: 4C 33 CA           xor         r9,rdx
  0000000140009066: 49 8B C9           mov         rcx,r9
  0000000140009069: 5B                 pop         rbx
  000000014000906A: E9 61 FF FF FF     jmp         0000000140008FD0
  000000014000906F: CC                 int         3
  0000000140009070: 40 53              push        rbx
  0000000140009072: 48 83 EC 20        sub         rsp,20h
  0000000140009076: 48 8B D9           mov         rbx,rcx
  0000000140009079: 33 C9              xor         ecx,ecx
  000000014000907B: FF 15 FF 0F 00 00  call        qword ptr [000000014000A080h]
  0000000140009081: 48 8B CB           mov         rcx,rbx
  0000000140009084: FF 15 C6 0F 00 00  call        qword ptr [000000014000A050h]
  000000014000908A: FF 15 B8 0F 00 00  call        qword ptr [000000014000A048h]
  0000000140009090: 48 8B C8           mov         rcx,rax
  0000000140009093: BA 09 04 00 C0     mov         edx,0C0000409h
  0000000140009098: 48 83 C4 20        add         rsp,20h
  000000014000909C: 5B                 pop         rbx
  000000014000909D: 48 FF 25 5C 0F 00  jmp         qword ptr [000000014000A000h]
                    00
  00000001400090A4: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  00000001400090A9: 48 83 EC 38        sub         rsp,38h
  00000001400090AD: B9 17 00 00 00     mov         ecx,17h
  00000001400090B2: E8 FD FE FF FF     call        0000000140008FB4
  00000001400090B7: 85 C0              test        eax,eax
  00000001400090B9: 74 07              je          00000001400090C2
  00000001400090BB: B9 02 00 00 00     mov         ecx,2
  00000001400090C0: CD 29              int         29h
  00000001400090C2: 48 8D 0D 77 56 00  lea         rcx,[000000014000E740h]
                    00
  00000001400090C9: E8 AA 00 00 00     call        0000000140009178
  00000001400090CE: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  00000001400090D3: 48 89 05 5E 57 00  mov         qword ptr [000000014000E838h],rax
                    00
  00000001400090DA: 48 8D 44 24 38     lea         rax,[rsp+38h]
  00000001400090DF: 48 83 C0 08        add         rax,8
  00000001400090E3: 48 89 05 EE 56 00  mov         qword ptr [000000014000E7D8h],rax
                    00
  00000001400090EA: 48 8B 05 47 57 00  mov         rax,qword ptr [000000014000E838h]
                    00
  00000001400090F1: 48 89 05 B8 55 00  mov         qword ptr [000000014000E6B0h],rax
                    00
  00000001400090F8: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000001400090FD: 48 89 05 BC 56 00  mov         qword ptr [000000014000E7C0h],rax
                    00
  0000000140009104: C7 05 92 55 00 00  mov         dword ptr [000000014000E6A0h],0C0000409h
                    09 04 00 C0
  000000014000910E: C7 05 8C 55 00 00  mov         dword ptr [000000014000E6A4h],1
                    01 00 00 00
  0000000140009118: C7 05 96 55 00 00  mov         dword ptr [000000014000E6B8h],1
                    01 00 00 00
  0000000140009122: B8 08 00 00 00     mov         eax,8
  0000000140009127: 48 6B C0 00        imul        rax,rax,0
  000000014000912B: 48 8D 0D 8E 55 00  lea         rcx,[000000014000E6C0h]
                    00
  0000000140009132: 48 C7 04 01 02 00  mov         qword ptr [rcx+rax],2
                    00 00
  000000014000913A: B8 08 00 00 00     mov         eax,8
  000000014000913F: 48 6B C0 00        imul        rax,rax,0
  0000000140009143: 48 8B 0D DE 3E 00  mov         rcx,qword ptr [000000014000D028h]
                    00
  000000014000914A: 48 89 4C 04 20     mov         qword ptr [rsp+rax+20h],rcx
  000000014000914F: B8 08 00 00 00     mov         eax,8
  0000000140009154: 48 6B C0 01        imul        rax,rax,1
  0000000140009158: 48 8B 0D C1 3E 00  mov         rcx,qword ptr [000000014000D020h]
                    00
  000000014000915F: 48 89 4C 04 20     mov         qword ptr [rsp+rax+20h],rcx
  0000000140009164: 48 8D 0D 4D 27 00  lea         rcx,[000000014000B8B8h]
                    00
  000000014000916B: E8 00 FF FF FF     call        0000000140009070
  0000000140009170: 48 83 C4 38        add         rsp,38h
  0000000140009174: C3                 ret
  0000000140009175: CC                 int         3
  0000000140009176: CC                 int         3
  0000000140009177: CC                 int         3
  0000000140009178: 40 53              push        rbx
  000000014000917A: 56                 push        rsi
  000000014000917B: 57                 push        rdi
  000000014000917C: 48 83 EC 40        sub         rsp,40h
  0000000140009180: 48 8B D9           mov         rbx,rcx
  0000000140009183: FF 15 9F 0E 00 00  call        qword ptr [000000014000A028h]
  0000000140009189: 48 8B B3 F8 00 00  mov         rsi,qword ptr [rbx+00000000000000F8h]
                    00
  0000000140009190: 33 FF              xor         edi,edi
  0000000140009192: 45 33 C0           xor         r8d,r8d
  0000000140009195: 48 8D 54 24 60     lea         rdx,[rsp+60h]
  000000014000919A: 48 8B CE           mov         rcx,rsi
  000000014000919D: FF 15 8D 0E 00 00  call        qword ptr [000000014000A030h]
  00000001400091A3: 48 85 C0           test        rax,rax
  00000001400091A6: 74 39              je          00000001400091E1
  00000001400091A8: 48 83 64 24 38 00  and         qword ptr [rsp+38h],0
  00000001400091AE: 48 8D 4C 24 68     lea         rcx,[rsp+68h]
  00000001400091B3: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  00000001400091B8: 4C 8B C8           mov         r9,rax
  00000001400091BB: 48 89 4C 24 30     mov         qword ptr [rsp+30h],rcx
  00000001400091C0: 4C 8B C6           mov         r8,rsi
  00000001400091C3: 48 8D 4C 24 70     lea         rcx,[rsp+70h]
  00000001400091C8: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  00000001400091CD: 33 C9              xor         ecx,ecx
  00000001400091CF: 48 89 5C 24 20     mov         qword ptr [rsp+20h],rbx
  00000001400091D4: FF 15 5E 0E 00 00  call        qword ptr [000000014000A038h]
  00000001400091DA: FF C7              inc         edi
  00000001400091DC: 83 FF 02           cmp         edi,2
  00000001400091DF: 7C B1              jl          0000000140009192
  00000001400091E1: 48 83 C4 40        add         rsp,40h
  00000001400091E5: 5F                 pop         rdi
  00000001400091E6: 5E                 pop         rsi
  00000001400091E7: 5B                 pop         rbx
  00000001400091E8: C3                 ret
  00000001400091E9: CC                 int         3
  00000001400091EA: CC                 int         3
  00000001400091EB: CC                 int         3
  00000001400091EC: CC                 int         3
  00000001400091ED: CC                 int         3
  00000001400091EE: CC                 int         3
  00000001400091EF: CC                 int         3
  00000001400091F0: CC                 int         3
  00000001400091F1: CC                 int         3
  00000001400091F2: CC                 int         3
  00000001400091F3: CC                 int         3
  00000001400091F4: CC                 int         3
  00000001400091F5: CC                 int         3
  00000001400091F6: 66 66 0F 1F 84 00  nop         word ptr [rax+rax+0000000000000000h]
                    00 00 00 00
  0000000140009200: FF E0              jmp         rax
  0000000140009202: CC                 int         3
  0000000140009203: CC                 int         3
  0000000140009204: CC                 int         3
  0000000140009205: CC                 int         3
  0000000140009206: CC                 int         3
  0000000140009207: CC                 int         3
  0000000140009208: CC                 int         3
  0000000140009209: CC                 int         3
  000000014000920A: CC                 int         3
  000000014000920B: CC                 int         3
  000000014000920C: CC                 int         3
  000000014000920D: CC                 int         3
  000000014000920E: CC                 int         3
  000000014000920F: CC                 int         3
  0000000140009210: CC                 int         3
  0000000140009211: CC                 int         3
  0000000140009212: CC                 int         3
  0000000140009213: CC                 int         3
  0000000140009214: CC                 int         3
  0000000140009215: CC                 int         3
  0000000140009216: 66 66 0F 1F 84 00  nop         word ptr [rax+rax+0000000000000000h]
                    00 00 00 00
  0000000140009220: FF 25 12 10 00 00  jmp         qword ptr [000000014000A238h]
  0000000140009226: 40 55              push        rbp
  0000000140009228: 48 83 EC 20        sub         rsp,20h
  000000014000922C: 48 8B EA           mov         rbp,rdx
  000000014000922F: 48 8B 01           mov         rax,qword ptr [rcx]
  0000000140009232: 48 8B D1           mov         rdx,rcx
  0000000140009235: 8B 08              mov         ecx,dword ptr [rax]
  0000000140009237: E8 CA FC FF FF     call        0000000140008F06
  000000014000923C: 90                 nop
  000000014000923D: 48 83 C4 20        add         rsp,20h
  0000000140009241: 5D                 pop         rbp
  0000000140009242: C3                 ret
  0000000140009243: CC                 int         3
  0000000140009244: 40 55              push        rbp
  0000000140009246: 48 8B EA           mov         rbp,rdx
  0000000140009249: 48 8B 01           mov         rax,qword ptr [rcx]
  000000014000924C: 33 C9              xor         ecx,ecx
  000000014000924E: 81 38 05 00 00 C0  cmp         dword ptr [rax],0C0000005h
  0000000140009254: 0F 94 C1           sete        cl
  0000000140009257: 8B C1              mov         eax,ecx
  0000000140009259: 5D                 pop         rbp
  000000014000925A: C3                 ret
  000000014000925B: CC                 int         3

  Summary

        2000 .data
        1000 .data1
        1000 .debug_o
        1000 .pdata
        3000 .rdata
        1000 .reloc
        1000 .rsrc
        9000 .text
        1000 _RDATA
