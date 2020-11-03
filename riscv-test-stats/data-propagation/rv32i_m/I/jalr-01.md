
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000950')]      |
| SIG_REGION                | [('0x80003204', '0x80003294', '36 words')]      |
| COV_LABELS                | jalr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jalr-01.S/jalr-01.S    |
| Total Number of coverpoints| 94     |
| Total Signature Updates   | 33      |
| Total Coverpoints Covered | 94      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000918]:jalr a1, a0, 3071
      [0x8000092c]:xori a1, a1, 3
      [0x80000930]:jal zero, 4
      [0x80000934]:auipc sp, 0
      [0x80000938]:addi sp, sp, 4052
      [0x8000093c]:andi sp, sp, 4092
      [0x80000940]:sub a1, a1, sp
      [0x80000944]:sw a1, 48(ra)
 -- Signature Address: 0x80003290 Data: 0x00000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val < 0
      - imm_val == -1025






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

|s.no|        signature         |                                              coverpoints                                               |                                                                                                                                    code                                                                                                                                     |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000017|- opcode : jalr<br> - rs1 : x24<br> - rd : x10<br> - rs1 != rd<br> - imm_val > 0<br> - imm_val == 8<br> |[0x80000110]:jalr a0, s8, 8<br> [0x80000124]:xori a0, a0, 3<br> [0x80000128]:jal zero, 4<br> [0x8000012c]:auipc s9, 0<br> [0x80000130]:addi s9, s9, 4052<br> [0x80000134]:andi s9, s9, 4092<br> [0x80000138]:sub a0, a0, s9<br> [0x8000013c]:sw a0, 0(s2)<br>                |
|   2|[0x80003214]<br>0x00000017|- rs1 : x1<br> - rd : x1<br> - rs1 == rd<br> - imm_val < 0<br> - imm_val == -1366<br>                   |[0x80000150]:jalr ra, ra, 2730<br> [0x80000164]:xori ra, ra, 3<br> [0x80000168]:jal zero, 4<br> [0x8000016c]:auipc s9, 0<br> [0x80000170]:addi s9, s9, 4052<br> [0x80000174]:andi s9, s9, 4092<br> [0x80000178]:sub ra, ra, s9<br> [0x8000017c]:sw ra, 4(s2)<br>             |
|   3|[0x80003218]<br>0x00000017|- rs1 : x26<br> - rd : x6<br> - imm_val == 1<br>                                                        |[0x80000190]:jalr t1, s10, 1<br> [0x800001a4]:xori t1, t1, 3<br> [0x800001a8]:jal zero, 4<br> [0x800001ac]:auipc s9, 0<br> [0x800001b0]:addi s9, s9, 4052<br> [0x800001b4]:andi s9, s9, 4092<br> [0x800001b8]:sub t1, t1, s9<br> [0x800001bc]:sw t1, 8(s2)<br>               |
|   4|[0x8000321c]<br>0x00000017|- rs1 : x23<br> - rd : x21<br> - imm_val == 2<br>                                                       |[0x800001d0]:jalr s5, s7, 2<br> [0x800001e4]:xori s5, s5, 3<br> [0x800001e8]:jal zero, 4<br> [0x800001ec]:auipc s9, 0<br> [0x800001f0]:addi s9, s9, 4052<br> [0x800001f4]:andi s9, s9, 4092<br> [0x800001f8]:sub s5, s5, s9<br> [0x800001fc]:sw s5, 12(s2)<br>               |
|   5|[0x80003220]<br>0x00000017|- rs1 : x15<br> - rd : x9<br> - imm_val == 4<br>                                                        |[0x80000210]:jalr s1, a5, 4<br> [0x80000224]:xori s1, s1, 3<br> [0x80000228]:jal zero, 4<br> [0x8000022c]:auipc s9, 0<br> [0x80000230]:addi s9, s9, 4052<br> [0x80000234]:andi s9, s9, 4092<br> [0x80000238]:sub s1, s1, s9<br> [0x8000023c]:sw s1, 16(s2)<br>               |
|   6|[0x80003224]<br>0x00000017|- rs1 : x31<br> - rd : x8<br> - imm_val == 16<br>                                                       |[0x80000250]:jalr fp, t6, 16<br> [0x80000264]:xori fp, fp, 3<br> [0x80000268]:jal zero, 4<br> [0x8000026c]:auipc s9, 0<br> [0x80000270]:addi s9, s9, 4052<br> [0x80000274]:andi s9, s9, 4092<br> [0x80000278]:sub fp, fp, s9<br> [0x8000027c]:sw fp, 20(s2)<br>              |
|   7|[0x80003228]<br>0x00000017|- rs1 : x19<br> - rd : x26<br> - imm_val == 32<br>                                                      |[0x80000290]:jalr s10, s3, 32<br> [0x800002a4]:xori s10, s10, 3<br> [0x800002a8]:jal zero, 4<br> [0x800002ac]:auipc s9, 0<br> [0x800002b0]:addi s9, s9, 4052<br> [0x800002b4]:andi s9, s9, 4092<br> [0x800002b8]:sub s10, s10, s9<br> [0x800002bc]:sw s10, 24(s2)<br>        |
|   8|[0x8000322c]<br>0x00000017|- rs1 : x3<br> - rd : x30<br> - imm_val == 64<br>                                                       |[0x800002d0]:jalr t5, gp, 64<br> [0x800002e4]:xori t5, t5, 3<br> [0x800002e8]:jal zero, 4<br> [0x800002ec]:auipc s9, 0<br> [0x800002f0]:addi s9, s9, 4052<br> [0x800002f4]:andi s9, s9, 4092<br> [0x800002f8]:sub t5, t5, s9<br> [0x800002fc]:sw t5, 28(s2)<br>              |
|   9|[0x80003230]<br>0x00000017|- rs1 : x14<br> - rd : x22<br> - imm_val == 128<br>                                                     |[0x80000310]:jalr s6, a4, 128<br> [0x80000324]:xori s6, s6, 3<br> [0x80000328]:jal zero, 4<br> [0x8000032c]:auipc s9, 0<br> [0x80000330]:addi s9, s9, 4052<br> [0x80000334]:andi s9, s9, 4092<br> [0x80000338]:sub s6, s6, s9<br> [0x8000033c]:sw s6, 32(s2)<br>             |
|  10|[0x80003234]<br>0x00000017|- rs1 : x22<br> - rd : x11<br> - imm_val == 256<br>                                                     |[0x80000350]:jalr a1, s6, 256<br> [0x80000364]:xori a1, a1, 3<br> [0x80000368]:jal zero, 4<br> [0x8000036c]:auipc s9, 0<br> [0x80000370]:addi s9, s9, 4052<br> [0x80000374]:andi s9, s9, 4092<br> [0x80000378]:sub a1, a1, s9<br> [0x8000037c]:sw a1, 36(s2)<br>             |
|  11|[0x80003238]<br>0x00000017|- rs1 : x11<br> - rd : x2<br> - imm_val == 512<br>                                                      |[0x80000390]:jalr sp, a1, 512<br> [0x800003a4]:xori sp, sp, 3<br> [0x800003a8]:jal zero, 4<br> [0x800003ac]:auipc s9, 0<br> [0x800003b0]:addi s9, s9, 4052<br> [0x800003b4]:andi s9, s9, 4092<br> [0x800003b8]:sub sp, sp, s9<br> [0x800003bc]:sw sp, 40(s2)<br>             |
|  12|[0x8000323c]<br>0x00000017|- rs1 : x21<br> - rd : x5<br> - imm_val == 1024<br>                                                     |[0x800003d0]:jalr t0, s5, 1024<br> [0x800003e4]:xori t0, t0, 3<br> [0x800003e8]:jal zero, 4<br> [0x800003ec]:auipc s9, 0<br> [0x800003f0]:addi s9, s9, 4052<br> [0x800003f4]:andi s9, s9, 4092<br> [0x800003f8]:sub t0, t0, s9<br> [0x800003fc]:sw t0, 44(s2)<br>            |
|  13|[0x80003240]<br>0x00000017|- rs1 : x12<br> - rd : x7<br> - imm_val == -2048<br>                                                    |[0x80000410]:jalr t2, a2, 2048<br> [0x80000424]:xori t2, t2, 3<br> [0x80000428]:jal zero, 4<br> [0x8000042c]:auipc s9, 0<br> [0x80000430]:addi s9, s9, 4052<br> [0x80000434]:andi s9, s9, 4092<br> [0x80000438]:sub t2, t2, s9<br> [0x8000043c]:sw t2, 48(s2)<br>            |
|  14|[0x80003244]<br>0x00000017|- rs1 : x9<br> - rd : x4<br> - imm_val == -2<br>                                                        |[0x80000450]:jalr tp, s1, 4094<br> [0x80000464]:xori tp, tp, 3<br> [0x80000468]:jal zero, 4<br> [0x8000046c]:auipc s9, 0<br> [0x80000470]:addi s9, s9, 4052<br> [0x80000474]:andi s9, s9, 4092<br> [0x80000478]:sub tp, tp, s9<br> [0x8000047c]:sw tp, 52(s2)<br>            |
|  15|[0x80003248]<br>0x00000017|- rs1 : x20<br> - rd : x27<br> - imm_val == -3<br>                                                      |[0x80000490]:jalr s11, s4, 4093<br> [0x800004a4]:xori s11, s11, 3<br> [0x800004a8]:jal zero, 4<br> [0x800004ac]:auipc s9, 0<br> [0x800004b0]:addi s9, s9, 4052<br> [0x800004b4]:andi s9, s9, 4092<br> [0x800004b8]:sub s11, s11, s9<br> [0x800004bc]:sw s11, 56(s2)<br>      |
|  16|[0x8000324c]<br>0x00000017|- rs1 : x16<br> - rd : x12<br> - imm_val == -5<br>                                                      |[0x800004d0]:jalr a2, a6, 4091<br> [0x800004e4]:xori a2, a2, 3<br> [0x800004e8]:jal zero, 4<br> [0x800004ec]:auipc s9, 0<br> [0x800004f0]:addi s9, s9, 4052<br> [0x800004f4]:andi s9, s9, 4092<br> [0x800004f8]:sub a2, a2, s9<br> [0x800004fc]:sw a2, 60(s2)<br>            |
|  17|[0x80003250]<br>0x00000017|- rs1 : x5<br> - rd : x14<br> - imm_val == -9<br>                                                       |[0x80000510]:jalr a4, t0, 4087<br> [0x80000524]:xori a4, a4, 3<br> [0x80000528]:jal zero, 4<br> [0x8000052c]:auipc s9, 0<br> [0x80000530]:addi s9, s9, 4052<br> [0x80000534]:andi s9, s9, 4092<br> [0x80000538]:sub a4, a4, s9<br> [0x8000053c]:sw a4, 64(s2)<br>            |
|  18|[0x80003254]<br>0x00000017|- rs1 : x2<br> - rd : x20<br> - imm_val == -17<br>                                                      |[0x80000550]:jalr s4, sp, 4079<br> [0x80000564]:xori s4, s4, 3<br> [0x80000568]:jal zero, 4<br> [0x8000056c]:auipc s9, 0<br> [0x80000570]:addi s9, s9, 4052<br> [0x80000574]:andi s9, s9, 4092<br> [0x80000578]:sub s4, s4, s9<br> [0x8000057c]:sw s4, 68(s2)<br>            |
|  19|[0x80003258]<br>0x00000017|- rs1 : x13<br> - rd : x17<br> - imm_val == -33<br>                                                     |[0x80000590]:jalr a7, a3, 4063<br> [0x800005a4]:xori a7, a7, 3<br> [0x800005a8]:jal zero, 4<br> [0x800005ac]:auipc s9, 0<br> [0x800005b0]:addi s9, s9, 4052<br> [0x800005b4]:andi s9, s9, 4092<br> [0x800005b8]:sub a7, a7, s9<br> [0x800005bc]:sw a7, 72(s2)<br>            |
|  20|[0x8000325c]<br>0x00000017|- rs1 : x10<br> - rd : x28<br> - imm_val == -65<br>                                                     |[0x800005d0]:jalr t3, a0, 4031<br> [0x800005e4]:xori t3, t3, 3<br> [0x800005e8]:jal zero, 4<br> [0x800005ec]:auipc sp, 0<br> [0x800005f0]:addi sp, sp, 4052<br> [0x800005f4]:andi sp, sp, 4092<br> [0x800005f8]:sub t3, t3, sp<br> [0x800005fc]:sw t3, 76(s2)<br>            |
|  21|[0x80003260]<br>0x00000017|- rs1 : x18<br> - rd : x16<br> - imm_val == -129<br>                                                    |[0x80000618]:jalr a6, s2, 3967<br> [0x8000062c]:xori a6, a6, 3<br> [0x80000630]:jal zero, 4<br> [0x80000634]:auipc sp, 0<br> [0x80000638]:addi sp, sp, 4052<br> [0x8000063c]:andi sp, sp, 4092<br> [0x80000640]:sub a6, a6, sp<br> [0x80000644]:sw a6, 0(ra)<br>             |
|  22|[0x80003264]<br>0x00000017|- rs1 : x30<br> - rd : x29<br> - imm_val == -257<br>                                                    |[0x80000658]:jalr t4, t5, 3839<br> [0x8000066c]:xori t4, t4, 3<br> [0x80000670]:jal zero, 4<br> [0x80000674]:auipc sp, 0<br> [0x80000678]:addi sp, sp, 4052<br> [0x8000067c]:andi sp, sp, 4092<br> [0x80000680]:sub t4, t4, sp<br> [0x80000684]:sw t4, 4(ra)<br>             |
|  23|[0x80003268]<br>0x00000000|- rs1 : x7<br> - rd : x0<br> - imm_val == -1025<br>                                                     |[0x80000698]:jalr zero, t2, 3071<br> [0x800006ac]:xori zero, zero, 3<br> [0x800006b0]:jal zero, 4<br> [0x800006b4]:auipc sp, 0<br> [0x800006b8]:addi sp, sp, 4052<br> [0x800006bc]:andi sp, sp, 4092<br> [0x800006c0]:sub zero, zero, sp<br> [0x800006c4]:sw zero, 8(ra)<br> |
|  24|[0x8000326c]<br>0x00000017|- rs1 : x6<br> - rd : x24<br> - imm_val == 2047<br>                                                     |[0x800006d8]:jalr s8, t1, 2047<br> [0x800006ec]:xori s8, s8, 3<br> [0x800006f0]:jal zero, 4<br> [0x800006f4]:auipc sp, 0<br> [0x800006f8]:addi sp, sp, 4052<br> [0x800006fc]:andi sp, sp, 4092<br> [0x80000700]:sub s8, s8, sp<br> [0x80000704]:sw s8, 12(ra)<br>            |
|  25|[0x80003270]<br>0x00000017|- rs1 : x17<br> - rd : x15<br> - imm_val == 1365<br>                                                    |[0x80000718]:jalr a5, a7, 1365<br> [0x8000072c]:xori a5, a5, 3<br> [0x80000730]:jal zero, 4<br> [0x80000734]:auipc sp, 0<br> [0x80000738]:addi sp, sp, 4052<br> [0x8000073c]:andi sp, sp, 4092<br> [0x80000740]:sub a5, a5, sp<br> [0x80000744]:sw a5, 16(ra)<br>            |
|  26|[0x80003274]<br>0x00000017|- rs1 : x29<br> - rd : x19<br> - imm_val == -513<br>                                                    |[0x80000758]:jalr s3, t4, 3583<br> [0x8000076c]:xori s3, s3, 3<br> [0x80000770]:jal zero, 4<br> [0x80000774]:auipc sp, 0<br> [0x80000778]:addi sp, sp, 4052<br> [0x8000077c]:andi sp, sp, 4092<br> [0x80000780]:sub s3, s3, sp<br> [0x80000784]:sw s3, 20(ra)<br>            |
|  27|[0x80003278]<br>0x00000017|- rs1 : x25<br> - rd : x31<br>                                                                          |[0x80000798]:jalr t6, s9, 2048<br> [0x800007ac]:xori t6, t6, 3<br> [0x800007b0]:jal zero, 4<br> [0x800007b4]:auipc sp, 0<br> [0x800007b8]:addi sp, sp, 4052<br> [0x800007bc]:andi sp, sp, 4092<br> [0x800007c0]:sub t6, t6, sp<br> [0x800007c4]:sw t6, 24(ra)<br>            |
|  28|[0x8000327c]<br>0x00000017|- rs1 : x4<br> - rd : x13<br>                                                                           |[0x800007d8]:jalr a3, tp, 2048<br> [0x800007ec]:xori a3, a3, 3<br> [0x800007f0]:jal zero, 4<br> [0x800007f4]:auipc sp, 0<br> [0x800007f8]:addi sp, sp, 4052<br> [0x800007fc]:andi sp, sp, 4092<br> [0x80000800]:sub a3, a3, sp<br> [0x80000804]:sw a3, 28(ra)<br>            |
|  29|[0x80003280]<br>0x00000017|- rs1 : x27<br> - rd : x23<br>                                                                          |[0x80000818]:jalr s7, s11, 2048<br> [0x8000082c]:xori s7, s7, 3<br> [0x80000830]:jal zero, 4<br> [0x80000834]:auipc sp, 0<br> [0x80000838]:addi sp, sp, 4052<br> [0x8000083c]:andi sp, sp, 4092<br> [0x80000840]:sub s7, s7, sp<br> [0x80000844]:sw s7, 32(ra)<br>           |
|  30|[0x80003284]<br>0x00000017|- rs1 : x8<br> - rd : x25<br>                                                                           |[0x80000858]:jalr s9, fp, 2048<br> [0x8000086c]:xori s9, s9, 3<br> [0x80000870]:jal zero, 4<br> [0x80000874]:auipc sp, 0<br> [0x80000878]:addi sp, sp, 4052<br> [0x8000087c]:andi sp, sp, 4092<br> [0x80000880]:sub s9, s9, sp<br> [0x80000884]:sw s9, 36(ra)<br>            |
|  31|[0x80003288]<br>0x00000017|- rs1 : x28<br> - rd : x3<br>                                                                           |[0x80000898]:jalr gp, t3, 2048<br> [0x800008ac]:xori gp, gp, 3<br> [0x800008b0]:jal zero, 4<br> [0x800008b4]:auipc sp, 0<br> [0x800008b8]:addi sp, sp, 4052<br> [0x800008bc]:andi sp, sp, 4092<br> [0x800008c0]:sub gp, gp, sp<br> [0x800008c4]:sw gp, 40(ra)<br>            |
|  32|[0x8000328c]<br>0x00000017|- rd : x18<br>                                                                                          |[0x800008d8]:jalr s2, t0, 2048<br> [0x800008ec]:xori s2, s2, 3<br> [0x800008f0]:jal zero, 4<br> [0x800008f4]:auipc sp, 0<br> [0x800008f8]:addi sp, sp, 4052<br> [0x800008fc]:andi sp, sp, 4092<br> [0x80000900]:sub s2, s2, sp<br> [0x80000904]:sw s2, 44(ra)<br>            |
