
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000750')]      |
| SIG_REGION                | [('0x80002204', '0x80002270', '27 words')]      |
| COV_LABELS                | jalr      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/jalr-01.S/jalr-01.S    |
| Total Number of coverpoints| 67     |
| Total Coverpoints Hit     | 62      |
| Total Signature Updates   | 27      |
| STAT1                     | 26      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000720]:jalr a1, a0, 4079
      [0x80000734]:xori a1, a1, 3
      [0x80000738]:jal zero, 4
      [0x8000073c]:auipc sp, 0
      [0x80000740]:addi sp, sp, 4052
      [0x80000744]:andi sp, sp, 4092
      [0x80000748]:sub a1, a1, sp
      [0x8000074c]:sw a1, 44(ra)
 -- Signature Address: 0x8000226c Data: 0x00000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val < 0
      - imm_val == -17






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

|s.no|        signature         |                                               coverpoints                                                |                                                                                                                                     code                                                                                                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000017|- opcode : jalr<br> - rs1 : x8<br> - rd : x12<br> - rs1 != rd<br> - imm_val < 0<br> - imm_val == -129<br> |[0x80000090]:jalr a2, fp, 3967<br> [0x800000a4]:xori a2, a2, 3<br> [0x800000a8]:jal zero, 4<br> [0x800000ac]:auipc t1, 0<br> [0x800000b0]:addi t1, t1, 4052<br> [0x800000b4]:andi t1, t1, 4092<br> [0x800000b8]:sub a2, a2, t1<br> [0x800000bc]:sw a2, 0(ra)<br>              |
|   2|[0x80002208]<br>0x00000017|- rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - imm_val == 2047<br> - imm_val > 0<br>                      |[0x800000d0]:jalr t0, t0, 2047<br> [0x800000e4]:xori t0, t0, 3<br> [0x800000e8]:jal zero, 4<br> [0x800000ec]:auipc t1, 0<br> [0x800000f0]:addi t1, t1, 4052<br> [0x800000f4]:andi t1, t1, 4092<br> [0x800000f8]:sub t0, t0, t1<br> [0x800000fc]:sw t0, 4(ra)<br>              |
|   3|[0x8000220c]<br>0x00000017|- rs1 : x3<br> - rd : x15<br> - imm_val == -1025<br>                                                      |[0x80000110]:jalr a5, gp, 3071<br> [0x80000124]:xori a5, a5, 3<br> [0x80000128]:jal zero, 4<br> [0x8000012c]:auipc t1, 0<br> [0x80000130]:addi t1, t1, 4052<br> [0x80000134]:andi t1, t1, 4092<br> [0x80000138]:sub a5, a5, t1<br> [0x8000013c]:sw a5, 8(ra)<br>              |
|   4|[0x80002210]<br>0x00000017|- rs1 : x2<br> - rd : x3<br> - imm_val == -513<br>                                                        |[0x80000150]:jalr gp, sp, 3583<br> [0x80000164]:xori gp, gp, 3<br> [0x80000168]:jal zero, 4<br> [0x8000016c]:auipc t1, 0<br> [0x80000170]:addi t1, t1, 4052<br> [0x80000174]:andi t1, t1, 4092<br> [0x80000178]:sub gp, gp, t1<br> [0x8000017c]:sw gp, 12(ra)<br>             |
|   5|[0x80002214]<br>0x00000017|- rs1 : x4<br> - rd : x9<br> - imm_val == -257<br>                                                        |[0x80000190]:jalr s1, tp, 3839<br> [0x800001a4]:xori s1, s1, 3<br> [0x800001a8]:jal zero, 4<br> [0x800001ac]:auipc t1, 0<br> [0x800001b0]:addi t1, t1, 4052<br> [0x800001b4]:andi t1, t1, 4092<br> [0x800001b8]:sub s1, s1, t1<br> [0x800001bc]:sw s1, 16(ra)<br>             |
|   6|[0x80002218]<br>0x00000017|- rs1 : x9<br> - rd : x7<br> - imm_val == -65<br>                                                         |[0x800001d0]:jalr t2, s1, 4031<br> [0x800001e4]:xori t2, t2, 3<br> [0x800001e8]:jal zero, 4<br> [0x800001ec]:auipc t1, 0<br> [0x800001f0]:addi t1, t1, 4052<br> [0x800001f4]:andi t1, t1, 4092<br> [0x800001f8]:sub t2, t2, t1<br> [0x800001fc]:sw t2, 20(ra)<br>             |
|   7|[0x8000221c]<br>0x00000017|- rs1 : x10<br> - rd : x13<br> - imm_val == -33<br>                                                       |[0x80000210]:jalr a3, a0, 4063<br> [0x80000224]:xori a3, a3, 3<br> [0x80000228]:jal zero, 4<br> [0x8000022c]:auipc t1, 0<br> [0x80000230]:addi t1, t1, 4052<br> [0x80000234]:andi t1, t1, 4092<br> [0x80000238]:sub a3, a3, t1<br> [0x8000023c]:sw a3, 24(ra)<br>             |
|   8|[0x80002220]<br>0x00000000|- rs1 : x14<br> - rd : x0<br> - imm_val == -17<br>                                                        |[0x80000250]:jalr zero, a4, 4079<br> [0x80000264]:xori zero, zero, 3<br> [0x80000268]:jal zero, 4<br> [0x8000026c]:auipc t0, 0<br> [0x80000270]:addi t0, t0, 4052<br> [0x80000274]:andi t0, t0, 4092<br> [0x80000278]:sub zero, zero, t0<br> [0x8000027c]:sw zero, 28(ra)<br> |
|   9|[0x80002224]<br>0x00000017|- rs1 : x15<br> - rd : x4<br> - imm_val == -9<br>                                                         |[0x80000298]:jalr tp, a5, 4087<br> [0x800002ac]:xori tp, tp, 3<br> [0x800002b0]:jal zero, 4<br> [0x800002b4]:auipc t0, 0<br> [0x800002b8]:addi t0, t0, 4052<br> [0x800002bc]:andi t0, t0, 4092<br> [0x800002c0]:sub tp, tp, t0<br> [0x800002c4]:sw tp, 0(gp)<br>              |
|  10|[0x80002228]<br>0x00000017|- rs1 : x7<br> - rd : x14<br> - imm_val == -5<br>                                                         |[0x800002d8]:jalr a4, t2, 4091<br> [0x800002ec]:xori a4, a4, 3<br> [0x800002f0]:jal zero, 4<br> [0x800002f4]:auipc t0, 0<br> [0x800002f8]:addi t0, t0, 4052<br> [0x800002fc]:andi t0, t0, 4092<br> [0x80000300]:sub a4, a4, t0<br> [0x80000304]:sw a4, 4(gp)<br>              |
|  11|[0x8000222c]<br>0x00000017|- rs1 : x11<br> - rd : x2<br> - imm_val == -3<br>                                                         |[0x80000318]:jalr sp, a1, 4093<br> [0x8000032c]:xori sp, sp, 3<br> [0x80000330]:jal zero, 4<br> [0x80000334]:auipc t0, 0<br> [0x80000338]:addi t0, t0, 4052<br> [0x8000033c]:andi t0, t0, 4092<br> [0x80000340]:sub sp, sp, t0<br> [0x80000344]:sw sp, 8(gp)<br>              |
|  12|[0x80002230]<br>0x00000017|- rs1 : x6<br> - rd : x11<br> - imm_val == -2<br>                                                         |[0x80000358]:jalr a1, t1, 4094<br> [0x8000036c]:xori a1, a1, 3<br> [0x80000370]:jal zero, 4<br> [0x80000374]:auipc t0, 0<br> [0x80000378]:addi t0, t0, 4052<br> [0x8000037c]:andi t0, t0, 4092<br> [0x80000380]:sub a1, a1, t0<br> [0x80000384]:sw a1, 12(gp)<br>             |
|  13|[0x80002234]<br>0x00000017|- rs1 : x12<br> - rd : x8<br> - imm_val == -2048<br>                                                      |[0x80000398]:jalr fp, a2, 2048<br> [0x800003ac]:xori fp, fp, 3<br> [0x800003b0]:jal zero, 4<br> [0x800003b4]:auipc t0, 0<br> [0x800003b8]:addi t0, t0, 4052<br> [0x800003bc]:andi t0, t0, 4092<br> [0x800003c0]:sub fp, fp, t0<br> [0x800003c4]:sw fp, 16(gp)<br>             |
|  14|[0x80002238]<br>0x00000017|- rs1 : x13<br> - rd : x1<br> - imm_val == 1024<br>                                                       |[0x800003d8]:jalr ra, a3, 1024<br> [0x800003ec]:xori ra, ra, 3<br> [0x800003f0]:jal zero, 4<br> [0x800003f4]:auipc t0, 0<br> [0x800003f8]:addi t0, t0, 4052<br> [0x800003fc]:andi t0, t0, 4092<br> [0x80000400]:sub ra, ra, t0<br> [0x80000404]:sw ra, 20(gp)<br>             |
|  15|[0x8000223c]<br>0x00000017|- rs1 : x1<br> - rd : x10<br> - imm_val == 512<br>                                                        |[0x80000418]:jalr a0, ra, 512<br> [0x8000042c]:xori a0, a0, 3<br> [0x80000430]:jal zero, 4<br> [0x80000434]:auipc sp, 0<br> [0x80000438]:addi sp, sp, 4052<br> [0x8000043c]:andi sp, sp, 4092<br> [0x80000440]:sub a0, a0, sp<br> [0x80000444]:sw a0, 24(gp)<br>              |
|  16|[0x80002240]<br>0x00000017|- rd : x6<br> - imm_val == 256<br>                                                                        |[0x80000460]:jalr t1, a3, 256<br> [0x80000474]:xori t1, t1, 3<br> [0x80000478]:jal zero, 4<br> [0x8000047c]:auipc sp, 0<br> [0x80000480]:addi sp, sp, 4052<br> [0x80000484]:andi sp, sp, 4092<br> [0x80000488]:sub t1, t1, sp<br> [0x8000048c]:sw t1, 0(ra)<br>               |
|  17|[0x80002244]<br>0x00000017|- imm_val == 128<br>                                                                                      |[0x800004a0]:jalr a1, a0, 128<br> [0x800004b4]:xori a1, a1, 3<br> [0x800004b8]:jal zero, 4<br> [0x800004bc]:auipc sp, 0<br> [0x800004c0]:addi sp, sp, 4052<br> [0x800004c4]:andi sp, sp, 4092<br> [0x800004c8]:sub a1, a1, sp<br> [0x800004cc]:sw a1, 4(ra)<br>               |
|  18|[0x80002248]<br>0x00000017|- imm_val == 64<br>                                                                                       |[0x800004e0]:jalr a1, a0, 64<br> [0x800004f4]:xori a1, a1, 3<br> [0x800004f8]:jal zero, 4<br> [0x800004fc]:auipc sp, 0<br> [0x80000500]:addi sp, sp, 4052<br> [0x80000504]:andi sp, sp, 4092<br> [0x80000508]:sub a1, a1, sp<br> [0x8000050c]:sw a1, 8(ra)<br>                |
|  19|[0x8000224c]<br>0x00000017|- imm_val == 32<br>                                                                                       |[0x80000520]:jalr a1, a0, 32<br> [0x80000534]:xori a1, a1, 3<br> [0x80000538]:jal zero, 4<br> [0x8000053c]:auipc sp, 0<br> [0x80000540]:addi sp, sp, 4052<br> [0x80000544]:andi sp, sp, 4092<br> [0x80000548]:sub a1, a1, sp<br> [0x8000054c]:sw a1, 12(ra)<br>               |
|  20|[0x80002250]<br>0x00000017|- imm_val == 16<br>                                                                                       |[0x80000560]:jalr a1, a0, 16<br> [0x80000574]:xori a1, a1, 3<br> [0x80000578]:jal zero, 4<br> [0x8000057c]:auipc sp, 0<br> [0x80000580]:addi sp, sp, 4052<br> [0x80000584]:andi sp, sp, 4092<br> [0x80000588]:sub a1, a1, sp<br> [0x8000058c]:sw a1, 16(ra)<br>               |
|  21|[0x80002254]<br>0x00000017|- imm_val == 8<br>                                                                                        |[0x800005a0]:jalr a1, a0, 8<br> [0x800005b4]:xori a1, a1, 3<br> [0x800005b8]:jal zero, 4<br> [0x800005bc]:auipc sp, 0<br> [0x800005c0]:addi sp, sp, 4052<br> [0x800005c4]:andi sp, sp, 4092<br> [0x800005c8]:sub a1, a1, sp<br> [0x800005cc]:sw a1, 20(ra)<br>                |
|  22|[0x80002258]<br>0x00000017|- imm_val == 4<br>                                                                                        |[0x800005e0]:jalr a1, a0, 4<br> [0x800005f4]:xori a1, a1, 3<br> [0x800005f8]:jal zero, 4<br> [0x800005fc]:auipc sp, 0<br> [0x80000600]:addi sp, sp, 4052<br> [0x80000604]:andi sp, sp, 4092<br> [0x80000608]:sub a1, a1, sp<br> [0x8000060c]:sw a1, 24(ra)<br>                |
|  23|[0x8000225c]<br>0x00000017|- imm_val == 1<br>                                                                                        |[0x80000620]:jalr a1, a0, 1<br> [0x80000634]:xori a1, a1, 3<br> [0x80000638]:jal zero, 4<br> [0x8000063c]:auipc sp, 0<br> [0x80000640]:addi sp, sp, 4052<br> [0x80000644]:andi sp, sp, 4092<br> [0x80000648]:sub a1, a1, sp<br> [0x8000064c]:sw a1, 28(ra)<br>                |
|  24|[0x80002260]<br>0x00000017|- imm_val == -1366<br>                                                                                    |[0x80000660]:jalr a1, a0, 2730<br> [0x80000674]:xori a1, a1, 3<br> [0x80000678]:jal zero, 4<br> [0x8000067c]:auipc sp, 0<br> [0x80000680]:addi sp, sp, 4052<br> [0x80000684]:andi sp, sp, 4092<br> [0x80000688]:sub a1, a1, sp<br> [0x8000068c]:sw a1, 32(ra)<br>             |
|  25|[0x80002264]<br>0x00000017|- imm_val == 1365<br>                                                                                     |[0x800006a0]:jalr a1, a0, 1365<br> [0x800006b4]:xori a1, a1, 3<br> [0x800006b8]:jal zero, 4<br> [0x800006bc]:auipc sp, 0<br> [0x800006c0]:addi sp, sp, 4052<br> [0x800006c4]:andi sp, sp, 4092<br> [0x800006c8]:sub a1, a1, sp<br> [0x800006cc]:sw a1, 36(ra)<br>             |
|  26|[0x80002268]<br>0x00000017|- imm_val == 2<br>                                                                                        |[0x800006e0]:jalr a1, a0, 2<br> [0x800006f4]:xori a1, a1, 3<br> [0x800006f8]:jal zero, 4<br> [0x800006fc]:auipc sp, 0<br> [0x80000700]:addi sp, sp, 4052<br> [0x80000704]:andi sp, sp, 4092<br> [0x80000708]:sub a1, a1, sp<br> [0x8000070c]:sw a1, 40(ra)<br>                |
