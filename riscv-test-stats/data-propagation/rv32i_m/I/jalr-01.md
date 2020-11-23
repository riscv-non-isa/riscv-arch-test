
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
      [0x80000918]:jalr a1, a0, 4
      [0x8000092c]:xori a1, a1, 3
      [0x80000930]:jal zero, 4
      [0x80000934]:auipc t2, 0
      [0x80000938]:addi t2, t2, 4052
      [0x8000093c]:andi t2, t2, 4092
      [0x80000940]:sub a1, a1, t2
      [0x80000944]:sw a1, 36(t1)
 -- Signature Address: 0x80002090 Data: 0x00000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val > 0
      - imm_val == 4






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

|s.no|        signature         |                                               coverpoints                                               |                                                                                                                                   code                                                                                                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000017|- opcode : jalr<br> - rs1 : x6<br> - rd : x17<br> - rs1 != rd<br> - imm_val > 0<br> - imm_val == 256<br> |[0x80000110]:jalr a7, t1, 256<br> [0x80000124]:xori a7, a7, 3<br> [0x80000128]:jal zero, 4<br> [0x8000012c]:auipc tp, 0<br> [0x80000130]:addi tp, tp, 4052<br> [0x80000134]:andi tp, tp, 4092<br> [0x80000138]:sub a7, a7, tp<br> [0x8000013c]:sw a7, 0(a5)<br>            |
|   2|[0x80002014]<br>0x00000017|- rs1 : x19<br> - rd : x19<br> - rs1 == rd<br> - imm_val < 0<br> - imm_val == -3<br>                     |[0x80000150]:jalr s3, s3, 4093<br> [0x80000164]:xori s3, s3, 3<br> [0x80000168]:jal zero, 4<br> [0x8000016c]:auipc tp, 0<br> [0x80000170]:addi tp, tp, 4052<br> [0x80000174]:andi tp, tp, 4092<br> [0x80000178]:sub s3, s3, tp<br> [0x8000017c]:sw s3, 4(a5)<br>           |
|   3|[0x80002018]<br>0x00000017|- rs1 : x20<br> - rd : x30<br> - imm_val == 1<br>                                                        |[0x80000190]:jalr t5, s4, 1<br> [0x800001a4]:xori t5, t5, 3<br> [0x800001a8]:jal zero, 4<br> [0x800001ac]:auipc tp, 0<br> [0x800001b0]:addi tp, tp, 4052<br> [0x800001b4]:andi tp, tp, 4092<br> [0x800001b8]:sub t5, t5, tp<br> [0x800001bc]:sw t5, 8(a5)<br>              |
|   4|[0x8000201c]<br>0x00000017|- rs1 : x21<br> - rd : x1<br> - imm_val == 2<br>                                                         |[0x800001d0]:jalr ra, s5, 2<br> [0x800001e4]:xori ra, ra, 3<br> [0x800001e8]:jal zero, 4<br> [0x800001ec]:auipc tp, 0<br> [0x800001f0]:addi tp, tp, 4052<br> [0x800001f4]:andi tp, tp, 4092<br> [0x800001f8]:sub ra, ra, tp<br> [0x800001fc]:sw ra, 12(a5)<br>             |
|   5|[0x80002020]<br>0x00000000|- rs1 : x8<br> - rd : x0<br> - imm_val == 4<br>                                                          |[0x80000210]:jalr zero, fp, 4<br> [0x80000224]:xori zero, zero, 3<br> [0x80000228]:jal zero, 4<br> [0x8000022c]:auipc tp, 0<br> [0x80000230]:addi tp, tp, 4052<br> [0x80000234]:andi tp, tp, 4092<br> [0x80000238]:sub zero, zero, tp<br> [0x8000023c]:sw zero, 16(a5)<br> |
|   6|[0x80002024]<br>0x00000017|- rs1 : x29<br> - rd : x27<br> - imm_val == 8<br>                                                        |[0x80000250]:jalr s11, t4, 8<br> [0x80000264]:xori s11, s11, 3<br> [0x80000268]:jal zero, 4<br> [0x8000026c]:auipc tp, 0<br> [0x80000270]:addi tp, tp, 4052<br> [0x80000274]:andi tp, tp, 4092<br> [0x80000278]:sub s11, s11, tp<br> [0x8000027c]:sw s11, 20(a5)<br>       |
|   7|[0x80002028]<br>0x00000017|- rs1 : x12<br> - rd : x24<br> - imm_val == 16<br>                                                       |[0x80000290]:jalr s8, a2, 16<br> [0x800002a4]:xori s8, s8, 3<br> [0x800002a8]:jal zero, 4<br> [0x800002ac]:auipc tp, 0<br> [0x800002b0]:addi tp, tp, 4052<br> [0x800002b4]:andi tp, tp, 4092<br> [0x800002b8]:sub s8, s8, tp<br> [0x800002bc]:sw s8, 24(a5)<br>            |
|   8|[0x8000202c]<br>0x00000017|- rs1 : x7<br> - rd : x20<br> - imm_val == 32<br>                                                        |[0x800002d0]:jalr s4, t2, 32<br> [0x800002e4]:xori s4, s4, 3<br> [0x800002e8]:jal zero, 4<br> [0x800002ec]:auipc tp, 0<br> [0x800002f0]:addi tp, tp, 4052<br> [0x800002f4]:andi tp, tp, 4092<br> [0x800002f8]:sub s4, s4, tp<br> [0x800002fc]:sw s4, 28(a5)<br>            |
|   9|[0x80002030]<br>0x00000017|- rs1 : x18<br> - rd : x3<br> - imm_val == 64<br>                                                        |[0x80000310]:jalr gp, s2, 64<br> [0x80000324]:xori gp, gp, 3<br> [0x80000328]:jal zero, 4<br> [0x8000032c]:auipc tp, 0<br> [0x80000330]:addi tp, tp, 4052<br> [0x80000334]:andi tp, tp, 4092<br> [0x80000338]:sub gp, gp, tp<br> [0x8000033c]:sw gp, 32(a5)<br>            |
|  10|[0x80002034]<br>0x00000017|- rs1 : x25<br> - rd : x21<br> - imm_val == 128<br>                                                      |[0x80000350]:jalr s5, s9, 128<br> [0x80000364]:xori s5, s5, 3<br> [0x80000368]:jal zero, 4<br> [0x8000036c]:auipc tp, 0<br> [0x80000370]:addi tp, tp, 4052<br> [0x80000374]:andi tp, tp, 4092<br> [0x80000378]:sub s5, s5, tp<br> [0x8000037c]:sw s5, 36(a5)<br>           |
|  11|[0x80002038]<br>0x00000017|- rs1 : x10<br> - rd : x7<br> - imm_val == 512<br>                                                       |[0x80000390]:jalr t2, a0, 512<br> [0x800003a4]:xori t2, t2, 3<br> [0x800003a8]:jal zero, 4<br> [0x800003ac]:auipc tp, 0<br> [0x800003b0]:addi tp, tp, 4052<br> [0x800003b4]:andi tp, tp, 4092<br> [0x800003b8]:sub t2, t2, tp<br> [0x800003bc]:sw t2, 40(a5)<br>           |
|  12|[0x8000203c]<br>0x00000017|- rs1 : x3<br> - rd : x25<br> - imm_val == 1024<br>                                                      |[0x800003d0]:jalr s9, gp, 1024<br> [0x800003e4]:xori s9, s9, 3<br> [0x800003e8]:jal zero, 4<br> [0x800003ec]:auipc tp, 0<br> [0x800003f0]:addi tp, tp, 4052<br> [0x800003f4]:andi tp, tp, 4092<br> [0x800003f8]:sub s9, s9, tp<br> [0x800003fc]:sw s9, 44(a5)<br>          |
|  13|[0x80002040]<br>0x00000017|- rs1 : x30<br> - rd : x13<br> - imm_val == -2048<br>                                                    |[0x80000410]:jalr a3, t5, 2048<br> [0x80000424]:xori a3, a3, 3<br> [0x80000428]:jal zero, 4<br> [0x8000042c]:auipc tp, 0<br> [0x80000430]:addi tp, tp, 4052<br> [0x80000434]:andi tp, tp, 4092<br> [0x80000438]:sub a3, a3, tp<br> [0x8000043c]:sw a3, 48(a5)<br>          |
|  14|[0x80002044]<br>0x00000017|- rs1 : x31<br> - rd : x14<br> - imm_val == -2<br>                                                       |[0x80000450]:jalr a4, t6, 4094<br> [0x80000464]:xori a4, a4, 3<br> [0x80000468]:jal zero, 4<br> [0x8000046c]:auipc tp, 0<br> [0x80000470]:addi tp, tp, 4052<br> [0x80000474]:andi tp, tp, 4092<br> [0x80000478]:sub a4, a4, tp<br> [0x8000047c]:sw a4, 52(a5)<br>          |
|  15|[0x80002048]<br>0x00000017|- rs1 : x11<br> - rd : x8<br> - imm_val == -5<br>                                                        |[0x80000490]:jalr fp, a1, 4091<br> [0x800004a4]:xori fp, fp, 3<br> [0x800004a8]:jal zero, 4<br> [0x800004ac]:auipc tp, 0<br> [0x800004b0]:addi tp, tp, 4052<br> [0x800004b4]:andi tp, tp, 4092<br> [0x800004b8]:sub fp, fp, tp<br> [0x800004bc]:sw fp, 56(a5)<br>          |
|  16|[0x8000204c]<br>0x00000017|- rs1 : x16<br> - rd : x29<br> - imm_val == -9<br>                                                       |[0x800004d0]:jalr t4, a6, 4087<br> [0x800004e4]:xori t4, t4, 3<br> [0x800004e8]:jal zero, 4<br> [0x800004ec]:auipc tp, 0<br> [0x800004f0]:addi tp, tp, 4052<br> [0x800004f4]:andi tp, tp, 4092<br> [0x800004f8]:sub t4, t4, tp<br> [0x800004fc]:sw t4, 60(a5)<br>          |
|  17|[0x80002050]<br>0x00000017|- rs1 : x17<br> - rd : x18<br> - imm_val == -17<br>                                                      |[0x80000510]:jalr s2, a7, 4079<br> [0x80000524]:xori s2, s2, 3<br> [0x80000528]:jal zero, 4<br> [0x8000052c]:auipc tp, 0<br> [0x80000530]:addi tp, tp, 4052<br> [0x80000534]:andi tp, tp, 4092<br> [0x80000538]:sub s2, s2, tp<br> [0x8000053c]:sw s2, 64(a5)<br>          |
|  18|[0x80002054]<br>0x00000017|- rs1 : x24<br> - rd : x5<br> - imm_val == -33<br>                                                       |[0x80000550]:jalr t0, s8, 4063<br> [0x80000564]:xori t0, t0, 3<br> [0x80000568]:jal zero, 4<br> [0x8000056c]:auipc tp, 0<br> [0x80000570]:addi tp, tp, 4052<br> [0x80000574]:andi tp, tp, 4092<br> [0x80000578]:sub t0, t0, tp<br> [0x8000057c]:sw t0, 68(a5)<br>          |
|  19|[0x80002058]<br>0x00000017|- rs1 : x14<br> - rd : x16<br> - imm_val == -65<br>                                                      |[0x80000590]:jalr a6, a4, 4031<br> [0x800005a4]:xori a6, a6, 3<br> [0x800005a8]:jal zero, 4<br> [0x800005ac]:auipc tp, 0<br> [0x800005b0]:addi tp, tp, 4052<br> [0x800005b4]:andi tp, tp, 4092<br> [0x800005b8]:sub a6, a6, tp<br> [0x800005bc]:sw a6, 72(a5)<br>          |
|  20|[0x8000205c]<br>0x00000017|- rs1 : x13<br> - rd : x26<br> - imm_val == -129<br>                                                     |[0x800005d0]:jalr s10, a3, 3967<br> [0x800005e4]:xori s10, s10, 3<br> [0x800005e8]:jal zero, 4<br> [0x800005ec]:auipc tp, 0<br> [0x800005f0]:addi tp, tp, 4052<br> [0x800005f4]:andi tp, tp, 4092<br> [0x800005f8]:sub s10, s10, tp<br> [0x800005fc]:sw s10, 76(a5)<br>    |
|  21|[0x80002060]<br>0x00000017|- rs1 : x22<br> - rd : x2<br> - imm_val == -257<br>                                                      |[0x80000610]:jalr sp, s6, 3839<br> [0x80000624]:xori sp, sp, 3<br> [0x80000628]:jal zero, 4<br> [0x8000062c]:auipc tp, 0<br> [0x80000630]:addi tp, tp, 4052<br> [0x80000634]:andi tp, tp, 4092<br> [0x80000638]:sub sp, sp, tp<br> [0x8000063c]:sw sp, 80(a5)<br>          |
|  22|[0x80002064]<br>0x00000017|- rs1 : x9<br> - rd : x6<br> - imm_val == -513<br>                                                       |[0x80000650]:jalr t1, s1, 3583<br> [0x80000664]:xori t1, t1, 3<br> [0x80000668]:jal zero, 4<br> [0x8000066c]:auipc tp, 0<br> [0x80000670]:addi tp, tp, 4052<br> [0x80000674]:andi tp, tp, 4092<br> [0x80000678]:sub t1, t1, tp<br> [0x8000067c]:sw t1, 84(a5)<br>          |
|  23|[0x80002068]<br>0x00000017|- rs1 : x4<br> - rd : x12<br> - imm_val == -1025<br>                                                     |[0x80000690]:jalr a2, tp, 3071<br> [0x800006a4]:xori a2, a2, 3<br> [0x800006a8]:jal zero, 4<br> [0x800006ac]:auipc t2, 0<br> [0x800006b0]:addi t2, t2, 4052<br> [0x800006b4]:andi t2, t2, 4092<br> [0x800006b8]:sub a2, a2, t2<br> [0x800006bc]:sw a2, 88(a5)<br>          |
|  24|[0x8000206c]<br>0x00000017|- rs1 : x15<br> - rd : x11<br> - imm_val == 2047<br>                                                     |[0x800006d8]:jalr a1, a5, 2047<br> [0x800006ec]:xori a1, a1, 3<br> [0x800006f0]:jal zero, 4<br> [0x800006f4]:auipc t2, 0<br> [0x800006f8]:addi t2, t2, 4052<br> [0x800006fc]:andi t2, t2, 4092<br> [0x80000700]:sub a1, a1, t2<br> [0x80000704]:sw a1, 0(t1)<br>           |
|  25|[0x80002070]<br>0x00000017|- rs1 : x26<br> - rd : x23<br> - imm_val == 1365<br>                                                     |[0x80000718]:jalr s7, s10, 1365<br> [0x8000072c]:xori s7, s7, 3<br> [0x80000730]:jal zero, 4<br> [0x80000734]:auipc t2, 0<br> [0x80000738]:addi t2, t2, 4052<br> [0x8000073c]:andi t2, t2, 4092<br> [0x80000740]:sub s7, s7, t2<br> [0x80000744]:sw s7, 4(t1)<br>          |
|  26|[0x80002074]<br>0x00000017|- rs1 : x1<br> - rd : x15<br> - imm_val == -1366<br>                                                     |[0x80000758]:jalr a5, ra, 2730<br> [0x8000076c]:xori a5, a5, 3<br> [0x80000770]:jal zero, 4<br> [0x80000774]:auipc t2, 0<br> [0x80000778]:addi t2, t2, 4052<br> [0x8000077c]:andi t2, t2, 4092<br> [0x80000780]:sub a5, a5, t2<br> [0x80000784]:sw a5, 8(t1)<br>           |
|  27|[0x80002078]<br>0x00000017|- rs1 : x28<br> - rd : x4<br>                                                                            |[0x80000798]:jalr tp, t3, 2048<br> [0x800007ac]:xori tp, tp, 3<br> [0x800007b0]:jal zero, 4<br> [0x800007b4]:auipc t2, 0<br> [0x800007b8]:addi t2, t2, 4052<br> [0x800007bc]:andi t2, t2, 4092<br> [0x800007c0]:sub tp, tp, t2<br> [0x800007c4]:sw tp, 12(t1)<br>          |
|  28|[0x8000207c]<br>0x00000017|- rs1 : x23<br> - rd : x31<br>                                                                           |[0x800007d8]:jalr t6, s7, 2048<br> [0x800007ec]:xori t6, t6, 3<br> [0x800007f0]:jal zero, 4<br> [0x800007f4]:auipc t2, 0<br> [0x800007f8]:addi t2, t2, 4052<br> [0x800007fc]:andi t2, t2, 4092<br> [0x80000800]:sub t6, t6, t2<br> [0x80000804]:sw t6, 16(t1)<br>          |
|  29|[0x80002080]<br>0x00000017|- rs1 : x5<br> - rd : x10<br>                                                                            |[0x80000818]:jalr a0, t0, 2048<br> [0x8000082c]:xori a0, a0, 3<br> [0x80000830]:jal zero, 4<br> [0x80000834]:auipc t2, 0<br> [0x80000838]:addi t2, t2, 4052<br> [0x8000083c]:andi t2, t2, 4092<br> [0x80000840]:sub a0, a0, t2<br> [0x80000844]:sw a0, 20(t1)<br>          |
|  30|[0x80002084]<br>0x00000017|- rs1 : x2<br> - rd : x28<br>                                                                            |[0x80000858]:jalr t3, sp, 2048<br> [0x8000086c]:xori t3, t3, 3<br> [0x80000870]:jal zero, 4<br> [0x80000874]:auipc t2, 0<br> [0x80000878]:addi t2, t2, 4052<br> [0x8000087c]:andi t2, t2, 4092<br> [0x80000880]:sub t3, t3, t2<br> [0x80000884]:sw t3, 24(t1)<br>          |
|  31|[0x80002088]<br>0x00000017|- rs1 : x27<br> - rd : x22<br>                                                                           |[0x80000898]:jalr s6, s11, 2048<br> [0x800008ac]:xori s6, s6, 3<br> [0x800008b0]:jal zero, 4<br> [0x800008b4]:auipc t2, 0<br> [0x800008b8]:addi t2, t2, 4052<br> [0x800008bc]:andi t2, t2, 4092<br> [0x800008c0]:sub s6, s6, t2<br> [0x800008c4]:sw s6, 28(t1)<br>         |
|  32|[0x8000208c]<br>0x00000017|- rd : x9<br>                                                                                            |[0x800008d8]:jalr s1, gp, 2048<br> [0x800008ec]:xori s1, s1, 3<br> [0x800008f0]:jal zero, 4<br> [0x800008f4]:auipc t2, 0<br> [0x800008f8]:addi t2, t2, 4052<br> [0x800008fc]:andi t2, t2, 4092<br> [0x80000900]:sub s1, s1, t2<br> [0x80000904]:sw s1, 32(t1)<br>          |
