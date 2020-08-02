Unroll Pragma Inspection
========================

This directory contains my own inspection about Intel C++ Compiler(19.1)'s unroll/nounroll pragma.


What I've done?
---------------

1. I wrote a simple code for inspection. Look [inspect_unroll.cpp](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/inspect_unroll.cpp).\
   I marked the start and the end point of the target of unroll pragma using simple inline assembly.
   ```assembly
   ; For the start point
   NOP
   NOP
   CMP rax, rbx
   CMP rcx, rdx
   NOP
   NOP
   ; For the end point
   NOP
   NOP
   CMP eax, ebx
   CMP ecx, edx
   NOP
   NOP
   ```
2. I built [inspect_unroll.cpp](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/inspect_unroll.cpp) using ICL 19.1 with below options.
   |        File Name        | Unroll Size (`SIZE`) | Options Added To Default Release Option |
   |:------------------------|:--------------------:|:----------------------------------------|
   | inspect_unroll_O2_U16   | 16                   | /Qvec-                                  |
   | inspect_unroll_O2_U255  | 255                  | /Qvec-                                  |
   | inspect_unroll_O2_U256  | 256                  | /Qvec-                                  |
   | inspect_unroll_O2_U1000 | 1000                 | /Qvec-                                  |
   | inspect_unroll_O3_U255  | 255                  | /O3 /Qvec-                              |

   All above configurations without `SIZE` is saved in [the Visual Studio project file](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/inspect_unroll.vcxproj). `SIZE` can be controlled by editing `#define SIZE 16` of [inspect_unroll.cpp](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/inspect_unroll.cpp#L6).\
   Also, you can find all built executables in [products directory](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/products/).
3. I disassembled all executables using [DUMPBIN](https://docs.microsoft.com/cpp/build/reference/dumpbin-reference?view=vs-2019) tool. Results from this step is saved as `inspect_unroll_OX_UXX.asm` in [products directory](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/products/).
4. Then I prettified those files. Below table denotes what regular expressions I used. I saved the results from this step as `inspect_unroll_OX_UXX_CUT.asm` in [products directory](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/products/).
   |                     Replace From (RegEx)                      |     Replaced To     |              Purpose              |
   |:-------------------------------------------------------------:|:-------------------:|:----------------------------------|
   | `(\s\s[0-9A-F]{16}: [\s0-9A-F]{19})|(^\s{20}[\s0-9A-F]+$\n)`  | *(empty)*           | To remove address number prefixes |
   | `nop\nnop\ncmp\s+rax,rbx\ncmp\s+rcx,rdx\nnop\nnop`            | `; FLAG_UNROLL_OP`  | To mark the start point           |
   | `nop\nnop\ncmp\s+eax,ebx\ncmp\s+ecx,edx\nnop\nnop`            | `; FLAG_UNROLL_ED`  | To mark the end point             |
5. Finally, I compared the assembly code files.


Results & Discussion
--------------------

### Importance of `Qvec-` option

It seems that Intel compiler put some instruction-level parallelism when it compiles. Without that option, it was hard to divide unrolled loop section.

### Range of unroll parameter

I checked occurances of `inc         ebx` in prettified files to get approximate value. In `O2_U16`, 12 lines found. In `O2_255`, 247 lines found. But in `O2_256` and `O2_1000`, but no lines found, and the loop structure was kept without any unrolling. **So the maximum value of unrolling is 255,** as written in [the guide](https://go.wldh.org/icl-19-1-guide.pdf)(1983p).

### Why unroll pragma works in `O2` optimization?

Following their description, `#pragma unroll` should not work with default build configuration, because it uses `O2` optimization option.

> "This pragma is supported only when option `O3` is set." - Intel

The result assembly of O2 and O3 was equivalent in loop unrolling part. (See [inspect_unroll_O2_U255_CUT.asm](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/products/inspect_unroll_O2_U255_CUT.asm) and [inspect_unroll_O3_U255_CUT.asm](https://github.com/wldh-g/CITE700J-Homework/blob/master/A-Unroll_Pragma/products/inspect_unroll_O3_U255_CUT.asm).)

... I concluded this is just their typo on [the guide document](https://go.wldh.org/icl-19-1-guide.pdf), because in a table at 2315 page of the guide says `O2` option performs loop unrolling.

What an empty ending, what an anticlimax.

Done.

2020\. 08. 01. Jio Gim
