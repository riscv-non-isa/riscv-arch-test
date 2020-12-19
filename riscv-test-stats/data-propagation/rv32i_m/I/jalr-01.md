
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000950')]      |
| SIG_REGION                | [('0x80002010', '0x800020a0', '36 words')]      |
| COV_LABELS                | jalr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jalr-01.S/jalr-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
| Total Signature Updates   | 33      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000918]:jalr a1, a0, 32
      [0x8000092c]:xori a1, a1, 3
      [0x80000930]:jal zero, 4
      [0x80000934]:auipc t0, 0
      [0x80000938]:addi t0, t0, 4052
      [0x8000093c]:andi t0, t0, 4092
      [0x80000940]:sub a1, a1, t0
      [0x80000944]:sw a1, 48(gp)
 -- Signature Address: 0x80002090 Data: 0x00000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val > 0
      - imm_val == 32






```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address and the data at that location in hexadecimal in the following format: 
  ```
  [Address]
  Data
  ```

- The second column captures all the coverpoints which have been captured by that particular signature location

- The third column captures all the insrtuctions since the time a coverpoint was
  hit to the point when a store to the signature was performed. Each line has
  the following format:
  ```
  [PC of instruction] : mnemonic
  ```
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|        signature         |                                              coverpoints                                               |                                                                                                                                    code                                                                                                                                    |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000017|- opcode : jalr<br> - rs1 : x4<br> - rd : x25<br> - rs1 != rd<br> - imm_val > 0<br> - imm_val == 64<br> |[0x80000110]:jalr s9, tp, 64<br> [0x80000124]:xori s9, s9, 3<br> [0x80000128]:jal zero, 4<br> [0x8000012c]:auipc a5, 0<br> [0x80000130]:addi a5, a5, 4052<br> [0x80000134]:andi a5, a5, 4092<br> [0x80000138]:sub s9, s9, a5<br> [0x8000013c]:sw s9, 0(a0)<br>              |
|   2|[0x80002014]<br>0x00000017|- rs1 : x17<br> - rd : x17<br> - rs1 == rd<br> - imm_val < 0<br> - imm_val == -257<br>                  |[0x80000150]:jalr a7, a7, 3839<br> [0x80000164]:xori a7, a7, 3<br> [0x80000168]:jal zero, 4<br> [0x8000016c]:auipc a5, 0<br> [0x80000170]:addi a5, a5, 4052<br> [0x80000174]:andi a5, a5, 4092<br> [0x80000178]:sub a7, a7, a5<br> [0x8000017c]:sw a7, 4(a0)<br>            |
|   3|[0x80002018]<br>0x00000017|- rs1 : x3<br> - rd : x16<br> - imm_val == 1<br>                                                        |[0x80000190]:jalr a6, gp, 1<br> [0x800001a4]:xori a6, a6, 3<br> [0x800001a8]:jal zero, 4<br> [0x800001ac]:auipc a5, 0<br> [0x800001b0]:addi a5, a5, 4052<br> [0x800001b4]:andi a5, a5, 4092<br> [0x800001b8]:sub a6, a6, a5<br> [0x800001bc]:sw a6, 8(a0)<br>               |
|   4|[0x8000201c]<br>0x00000017|- rs1 : x23<br> - rd : x12<br> - imm_val == 2<br>                                                       |[0x800001d0]:jalr a2, s7, 2<br> [0x800001e4]:xori a2, a2, 3<br> [0x800001e8]:jal zero, 4<br> [0x800001ec]:auipc a5, 0<br> [0x800001f0]:addi a5, a5, 4052<br> [0x800001f4]:andi a5, a5, 4092<br> [0x800001f8]:sub a2, a2, a5<br> [0x800001fc]:sw a2, 12(a0)<br>              |
|   5|[0x80002020]<br>0x00000017|- rs1 : x27<br> - rd : x13<br> - imm_val == 4<br>                                                       |[0x80000210]:jalr a3, s11, 4<br> [0x80000224]:xori a3, a3, 3<br> [0x80000228]:jal zero, 4<br> [0x8000022c]:auipc a5, 0<br> [0x80000230]:addi a5, a5, 4052<br> [0x80000234]:andi a5, a5, 4092<br> [0x80000238]:sub a3, a3, a5<br> [0x8000023c]:sw a3, 16(a0)<br>             |
|   6|[0x80002024]<br>0x00000017|- rs1 : x6<br> - rd : x8<br> - imm_val == 8<br>                                                         |[0x80000250]:jalr fp, t1, 8<br> [0x80000264]:xori fp, fp, 3<br> [0x80000268]:jal zero, 4<br> [0x8000026c]:auipc a5, 0<br> [0x80000270]:addi a5, a5, 4052<br> [0x80000274]:andi a5, a5, 4092<br> [0x80000278]:sub fp, fp, a5<br> [0x8000027c]:sw fp, 20(a0)<br>              |
|   7|[0x80002028]<br>0x00000017|- rs1 : x12<br> - rd : x30<br> - imm_val == 16<br>                                                      |[0x80000290]:jalr t5, a2, 16<br> [0x800002a4]:xori t5, t5, 3<br> [0x800002a8]:jal zero, 4<br> [0x800002ac]:auipc a5, 0<br> [0x800002b0]:addi a5, a5, 4052<br> [0x800002b4]:andi a5, a5, 4092<br> [0x800002b8]:sub t5, t5, a5<br> [0x800002bc]:sw t5, 24(a0)<br>             |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x31<br> - rd : x0<br> - imm_val == 32<br>                                                       |[0x800002d0]:jalr zero, t6, 32<br> [0x800002e4]:xori zero, zero, 3<br> [0x800002e8]:jal zero, 4<br> [0x800002ec]:auipc a5, 0<br> [0x800002f0]:addi a5, a5, 4052<br> [0x800002f4]:andi a5, a5, 4092<br> [0x800002f8]:sub zero, zero, a5<br> [0x800002fc]:sw zero, 28(a0)<br> |
|   9|[0x80002030]<br>0x00000017|- rs1 : x20<br> - rd : x3<br> - imm_val == 128<br>                                                      |[0x80000310]:jalr gp, s4, 128<br> [0x80000324]:xori gp, gp, 3<br> [0x80000328]:jal zero, 4<br> [0x8000032c]:auipc a5, 0<br> [0x80000330]:addi a5, a5, 4052<br> [0x80000334]:andi a5, a5, 4092<br> [0x80000338]:sub gp, gp, a5<br> [0x8000033c]:sw gp, 32(a0)<br>            |
|  10|[0x80002034]<br>0x00000017|- rs1 : x13<br> - rd : x19<br> - imm_val == 256<br>                                                     |[0x80000350]:jalr s3, a3, 256<br> [0x80000364]:xori s3, s3, 3<br> [0x80000368]:jal zero, 4<br> [0x8000036c]:auipc a5, 0<br> [0x80000370]:addi a5, a5, 4052<br> [0x80000374]:andi a5, a5, 4092<br> [0x80000378]:sub s3, s3, a5<br> [0x8000037c]:sw s3, 36(a0)<br>            |
|  11|[0x80002038]<br>0x00000017|- rs1 : x8<br> - rd : x29<br> - imm_val == 512<br>                                                      |[0x80000390]:jalr t4, fp, 512<br> [0x800003a4]:xori t4, t4, 3<br> [0x800003a8]:jal zero, 4<br> [0x800003ac]:auipc a5, 0<br> [0x800003b0]:addi a5, a5, 4052<br> [0x800003b4]:andi a5, a5, 4092<br> [0x800003b8]:sub t4, t4, a5<br> [0x800003bc]:sw t4, 40(a0)<br>            |
|  12|[0x8000203c]<br>0x00000017|- rs1 : x30<br> - rd : x22<br> - imm_val == 1024<br>                                                    |[0x800003d0]:jalr s6, t5, 1024<br> [0x800003e4]:xori s6, s6, 3<br> [0x800003e8]:jal zero, 4<br> [0x800003ec]:auipc a5, 0<br> [0x800003f0]:addi a5, a5, 4052<br> [0x800003f4]:andi a5, a5, 4092<br> [0x800003f8]:sub s6, s6, a5<br> [0x800003fc]:sw s6, 44(a0)<br>           |
|  13|[0x80002040]<br>0x00000017|- rs1 : x29<br> - rd : x21<br> - imm_val == -2048<br>                                                   |[0x80000410]:jalr s5, t4, 2048<br> [0x80000424]:xori s5, s5, 3<br> [0x80000428]:jal zero, 4<br> [0x8000042c]:auipc a5, 0<br> [0x80000430]:addi a5, a5, 4052<br> [0x80000434]:andi a5, a5, 4092<br> [0x80000438]:sub s5, s5, a5<br> [0x8000043c]:sw s5, 48(a0)<br>           |
|  14|[0x80002044]<br>0x00000017|- rs1 : x18<br> - rd : x11<br> - imm_val == -2<br>                                                      |[0x80000450]:jalr a1, s2, 4094<br> [0x80000464]:xori a1, a1, 3<br> [0x80000468]:jal zero, 4<br> [0x8000046c]:auipc a5, 0<br> [0x80000470]:addi a5, a5, 4052<br> [0x80000474]:andi a5, a5, 4092<br> [0x80000478]:sub a1, a1, a5<br> [0x8000047c]:sw a1, 52(a0)<br>           |
|  15|[0x80002048]<br>0x00000017|- rs1 : x21<br> - rd : x28<br> - imm_val == -3<br>                                                      |[0x80000490]:jalr t3, s5, 4093<br> [0x800004a4]:xori t3, t3, 3<br> [0x800004a8]:jal zero, 4<br> [0x800004ac]:auipc a5, 0<br> [0x800004b0]:addi a5, a5, 4052<br> [0x800004b4]:andi a5, a5, 4092<br> [0x800004b8]:sub t3, t3, a5<br> [0x800004bc]:sw t3, 56(a0)<br>           |
|  16|[0x8000204c]<br>0x00000017|- rs1 : x24<br> - rd : x14<br> - imm_val == -5<br>                                                      |[0x800004d0]:jalr a4, s8, 4091<br> [0x800004e4]:xori a4, a4, 3<br> [0x800004e8]:jal zero, 4<br> [0x800004ec]:auipc a5, 0<br> [0x800004f0]:addi a5, a5, 4052<br> [0x800004f4]:andi a5, a5, 4092<br> [0x800004f8]:sub a4, a4, a5<br> [0x800004fc]:sw a4, 60(a0)<br>           |
|  17|[0x80002050]<br>0x00000017|- rs1 : x2<br> - rd : x6<br> - imm_val == -9<br>                                                        |[0x80000510]:jalr t1, sp, 4087<br> [0x80000524]:xori t1, t1, 3<br> [0x80000528]:jal zero, 4<br> [0x8000052c]:auipc a5, 0<br> [0x80000530]:addi a5, a5, 4052<br> [0x80000534]:andi a5, a5, 4092<br> [0x80000538]:sub t1, t1, a5<br> [0x8000053c]:sw t1, 64(a0)<br>           |
|  18|[0x80002054]<br>0x00000017|- rs1 : x1<br> - rd : x5<br> - imm_val == -17<br>                                                       |[0x80000550]:jalr t0, ra, 4079<br> [0x80000564]:xori t0, t0, 3<br> [0x80000568]:jal zero, 4<br> [0x8000056c]:auipc a5, 0<br> [0x80000570]:addi a5, a5, 4052<br> [0x80000574]:andi a5, a5, 4092<br> [0x80000578]:sub t0, t0, a5<br> [0x8000057c]:sw t0, 68(a0)<br>           |
|  19|[0x80002058]<br>0x00000017|- rs1 : x5<br> - rd : x18<br> - imm_val == -33<br>                                                      |[0x80000590]:jalr s2, t0, 4063<br> [0x800005a4]:xori s2, s2, 3<br> [0x800005a8]:jal zero, 4<br> [0x800005ac]:auipc a5, 0<br> [0x800005b0]:addi a5, a5, 4052<br> [0x800005b4]:andi a5, a5, 4092<br> [0x800005b8]:sub s2, s2, a5<br> [0x800005bc]:sw s2, 72(a0)<br>           |
|  20|[0x8000205c]<br>0x00000017|- rs1 : x9<br> - rd : x7<br> - imm_val == -65<br>                                                       |[0x800005d0]:jalr t2, s1, 4031<br> [0x800005e4]:xori t2, t2, 3<br> [0x800005e8]:jal zero, 4<br> [0x800005ec]:auipc a5, 0<br> [0x800005f0]:addi a5, a5, 4052<br> [0x800005f4]:andi a5, a5, 4092<br> [0x800005f8]:sub t2, t2, a5<br> [0x800005fc]:sw t2, 76(a0)<br>           |
|  21|[0x80002060]<br>0x00000017|- rs1 : x25<br> - rd : x10<br> - imm_val == -129<br>                                                    |[0x80000618]:jalr a0, s9, 3967<br> [0x8000062c]:xori a0, a0, 3<br> [0x80000630]:jal zero, 4<br> [0x80000634]:auipc t0, 0<br> [0x80000638]:addi t0, t0, 4052<br> [0x8000063c]:andi t0, t0, 4092<br> [0x80000640]:sub a0, a0, t0<br> [0x80000644]:sw a0, 0(gp)<br>            |
|  22|[0x80002064]<br>0x00000017|- rs1 : x11<br> - rd : x15<br> - imm_val == -513<br>                                                    |[0x80000658]:jalr a5, a1, 3583<br> [0x8000066c]:xori a5, a5, 3<br> [0x80000670]:jal zero, 4<br> [0x80000674]:auipc t0, 0<br> [0x80000678]:addi t0, t0, 4052<br> [0x8000067c]:andi t0, t0, 4092<br> [0x80000680]:sub a5, a5, t0<br> [0x80000684]:sw a5, 4(gp)<br>            |
|  23|[0x80002068]<br>0x00000017|- rs1 : x19<br> - rd : x9<br> - imm_val == -1025<br>                                                    |[0x80000698]:jalr s1, s3, 3071<br> [0x800006ac]:xori s1, s1, 3<br> [0x800006b0]:jal zero, 4<br> [0x800006b4]:auipc t0, 0<br> [0x800006b8]:addi t0, t0, 4052<br> [0x800006bc]:andi t0, t0, 4092<br> [0x800006c0]:sub s1, s1, t0<br> [0x800006c4]:sw s1, 8(gp)<br>            |
|  24|[0x8000206c]<br>0x00000017|- rs1 : x7<br> - rd : x20<br> - imm_val == 2047<br>                                                     |[0x800006d8]:jalr s4, t2, 2047<br> [0x800006ec]:xori s4, s4, 3<br> [0x800006f0]:jal zero, 4<br> [0x800006f4]:auipc t0, 0<br> [0x800006f8]:addi t0, t0, 4052<br> [0x800006fc]:andi t0, t0, 4092<br> [0x80000700]:sub s4, s4, t0<br> [0x80000704]:sw s4, 12(gp)<br>           |
|  25|[0x80002070]<br>0x00000017|- rs1 : x14<br> - rd : x26<br> - imm_val == 1365<br>                                                    |[0x80000718]:jalr s10, a4, 1365<br> [0x8000072c]:xori s10, s10, 3<br> [0x80000730]:jal zero, 4<br> [0x80000734]:auipc t0, 0<br> [0x80000738]:addi t0, t0, 4052<br> [0x8000073c]:andi t0, t0, 4092<br> [0x80000740]:sub s10, s10, t0<br> [0x80000744]:sw s10, 16(gp)<br>     |
|  26|[0x80002074]<br>0x00000017|- rs1 : x15<br> - rd : x4<br> - imm_val == -1366<br>                                                    |[0x80000758]:jalr tp, a5, 2730<br> [0x8000076c]:xori tp, tp, 3<br> [0x80000770]:jal zero, 4<br> [0x80000774]:auipc t0, 0<br> [0x80000778]:addi t0, t0, 4052<br> [0x8000077c]:andi t0, t0, 4092<br> [0x80000780]:sub tp, tp, t0<br> [0x80000784]:sw tp, 20(gp)<br>           |
|  27|[0x80002078]<br>0x00000017|- rs1 : x22<br> - rd : x24<br>                                                                          |[0x80000798]:jalr s8, s6, 2048<br> [0x800007ac]:xori s8, s8, 3<br> [0x800007b0]:jal zero, 4<br> [0x800007b4]:auipc t0, 0<br> [0x800007b8]:addi t0, t0, 4052<br> [0x800007bc]:andi t0, t0, 4092<br> [0x800007c0]:sub s8, s8, t0<br> [0x800007c4]:sw s8, 24(gp)<br>           |
|  28|[0x8000207c]<br>0x00000017|- rs1 : x26<br> - rd : x23<br>                                                                          |[0x800007d8]:jalr s7, s10, 2048<br> [0x800007ec]:xori s7, s7, 3<br> [0x800007f0]:jal zero, 4<br> [0x800007f4]:auipc t0, 0<br> [0x800007f8]:addi t0, t0, 4052<br> [0x800007fc]:andi t0, t0, 4092<br> [0x80000800]:sub s7, s7, t0<br> [0x80000804]:sw s7, 28(gp)<br>          |
|  29|[0x80002080]<br>0x00000017|- rs1 : x28<br> - rd : x2<br>                                                                           |[0x80000818]:jalr sp, t3, 2048<br> [0x8000082c]:xori sp, sp, 3<br> [0x80000830]:jal zero, 4<br> [0x80000834]:auipc t0, 0<br> [0x80000838]:addi t0, t0, 4052<br> [0x8000083c]:andi t0, t0, 4092<br> [0x80000840]:sub sp, sp, t0<br> [0x80000844]:sw sp, 32(gp)<br>           |
|  30|[0x80002084]<br>0x00000017|- rs1 : x10<br> - rd : x1<br>                                                                           |[0x80000858]:jalr ra, a0, 2048<br> [0x8000086c]:xori ra, ra, 3<br> [0x80000870]:jal zero, 4<br> [0x80000874]:auipc t0, 0<br> [0x80000878]:addi t0, t0, 4052<br> [0x8000087c]:andi t0, t0, 4092<br> [0x80000880]:sub ra, ra, t0<br> [0x80000884]:sw ra, 36(gp)<br>           |
|  31|[0x80002088]<br>0x00000017|- rs1 : x16<br> - rd : x31<br>                                                                          |[0x80000898]:jalr t6, a6, 2048<br> [0x800008ac]:xori t6, t6, 3<br> [0x800008b0]:jal zero, 4<br> [0x800008b4]:auipc t0, 0<br> [0x800008b8]:addi t0, t0, 4052<br> [0x800008bc]:andi t0, t0, 4092<br> [0x800008c0]:sub t6, t6, t0<br> [0x800008c4]:sw t6, 40(gp)<br>           |
|  32|[0x8000208c]<br>0x00000017|- rd : x27<br>                                                                                          |[0x800008d8]:jalr s11, a6, 2048<br> [0x800008ec]:xori s11, s11, 3<br> [0x800008f0]:jal zero, 4<br> [0x800008f4]:auipc t0, 0<br> [0x800008f8]:addi t0, t0, 4052<br> [0x800008fc]:andi t0, t0, 4092<br> [0x80000900]:sub s11, s11, t0<br> [0x80000904]:sw s11, 44(gp)<br>     |
