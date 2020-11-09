
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005b0')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '31 words')]      |
| COV_LABELS                | cjr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjr-01.S/cjr-01.S    |
| Total Number of coverpoints| 32     |
| Total Coverpoints Hit     | 32      |
| Total Signature Updates   | 31      |
| STAT1                     | 31      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |            coverpoints             |                                                                                                              code                                                                                                              |
|---:|--------------------------|------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000013|- opcode : c.jr<br> - rs1 : x27<br> |[0x80000108]:c.jr s11<br> [0x80000110]:xori s11, s11, 3<br> [0x80000114]:auipc gp, 0<br> [0x80000118]:addi gp, gp, 4076<br> [0x8000011c]:andi gp, gp, 4092<br> [0x80000120]:sub s11, s11, gp<br> [0x80000124]:c.swsp s11, 0<br> |
|   2|[0x80003208]<br>0x00000011|- rs1 : x18<br>                     |[0x8000012e]:c.jr s2<br> [0x80000136]:xori s2, s2, 3<br> [0x8000013a]:auipc gp, 0<br> [0x8000013e]:addi gp, gp, 4076<br> [0x80000142]:andi gp, gp, 4092<br> [0x80000146]:sub s2, s2, gp<br> [0x8000014a]:c.swsp s2, 1<br>       |
|   3|[0x8000320c]<br>0x00000013|- rs1 : x30<br>                     |[0x80000154]:c.jr t5<br> [0x8000015c]:xori t5, t5, 3<br> [0x80000160]:auipc gp, 0<br> [0x80000164]:addi gp, gp, 4076<br> [0x80000168]:andi gp, gp, 4092<br> [0x8000016c]:sub t5, t5, gp<br> [0x80000170]:c.swsp t5, 2<br>       |
|   4|[0x80003210]<br>0x00000011|- rs1 : x28<br>                     |[0x8000017a]:c.jr t3<br> [0x80000182]:xori t3, t3, 3<br> [0x80000186]:auipc gp, 0<br> [0x8000018a]:addi gp, gp, 4076<br> [0x8000018e]:andi gp, gp, 4092<br> [0x80000192]:sub t3, t3, gp<br> [0x80000196]:c.swsp t3, 3<br>       |
|   5|[0x80003214]<br>0x00000013|- rs1 : x24<br>                     |[0x800001a0]:c.jr s8<br> [0x800001a8]:xori s8, s8, 3<br> [0x800001ac]:auipc gp, 0<br> [0x800001b0]:addi gp, gp, 4076<br> [0x800001b4]:andi gp, gp, 4092<br> [0x800001b8]:sub s8, s8, gp<br> [0x800001bc]:c.swsp s8, 4<br>       |
|   6|[0x80003218]<br>0x00000011|- rs1 : x13<br>                     |[0x800001c6]:c.jr a3<br> [0x800001ce]:xori a3, a3, 3<br> [0x800001d2]:auipc gp, 0<br> [0x800001d6]:addi gp, gp, 4076<br> [0x800001da]:andi gp, gp, 4092<br> [0x800001de]:sub a3, a3, gp<br> [0x800001e2]:c.swsp a3, 5<br>       |
|   7|[0x8000321c]<br>0x00000013|- rs1 : x21<br>                     |[0x800001ec]:c.jr s5<br> [0x800001f4]:xori s5, s5, 3<br> [0x800001f8]:auipc gp, 0<br> [0x800001fc]:addi gp, gp, 4076<br> [0x80000200]:andi gp, gp, 4092<br> [0x80000204]:sub s5, s5, gp<br> [0x80000208]:c.swsp s5, 6<br>       |
|   8|[0x80003220]<br>0x00000011|- rs1 : x26<br>                     |[0x80000212]:c.jr s10<br> [0x8000021a]:xori s10, s10, 3<br> [0x8000021e]:auipc gp, 0<br> [0x80000222]:addi gp, gp, 4076<br> [0x80000226]:andi gp, gp, 4092<br> [0x8000022a]:sub s10, s10, gp<br> [0x8000022e]:c.swsp s10, 7<br> |
|   9|[0x80003224]<br>0x00000013|- rs1 : x14<br>                     |[0x80000238]:c.jr a4<br> [0x80000240]:xori a4, a4, 3<br> [0x80000244]:auipc gp, 0<br> [0x80000248]:addi gp, gp, 4076<br> [0x8000024c]:andi gp, gp, 4092<br> [0x80000250]:sub a4, a4, gp<br> [0x80000254]:c.swsp a4, 8<br>       |
|  10|[0x80003228]<br>0x00000011|- rs1 : x25<br>                     |[0x8000025e]:c.jr s9<br> [0x80000266]:xori s9, s9, 3<br> [0x8000026a]:auipc gp, 0<br> [0x8000026e]:addi gp, gp, 4076<br> [0x80000272]:andi gp, gp, 4092<br> [0x80000276]:sub s9, s9, gp<br> [0x8000027a]:c.swsp s9, 9<br>       |
|  11|[0x8000322c]<br>0x00000013|- rs1 : x12<br>                     |[0x80000284]:c.jr a2<br> [0x8000028c]:xori a2, a2, 3<br> [0x80000290]:auipc gp, 0<br> [0x80000294]:addi gp, gp, 4076<br> [0x80000298]:andi gp, gp, 4092<br> [0x8000029c]:sub a2, a2, gp<br> [0x800002a0]:c.swsp a2, 10<br>      |
|  12|[0x80003230]<br>0x00000011|- rs1 : x29<br>                     |[0x800002aa]:c.jr t4<br> [0x800002b2]:xori t4, t4, 3<br> [0x800002b6]:auipc gp, 0<br> [0x800002ba]:addi gp, gp, 4076<br> [0x800002be]:andi gp, gp, 4092<br> [0x800002c2]:sub t4, t4, gp<br> [0x800002c6]:c.swsp t4, 11<br>      |
|  13|[0x80003234]<br>0x00000013|- rs1 : x17<br>                     |[0x800002d0]:c.jr a7<br> [0x800002d8]:xori a7, a7, 3<br> [0x800002dc]:auipc gp, 0<br> [0x800002e0]:addi gp, gp, 4076<br> [0x800002e4]:andi gp, gp, 4092<br> [0x800002e8]:sub a7, a7, gp<br> [0x800002ec]:c.swsp a7, 12<br>      |
|  14|[0x80003238]<br>0x00000011|- rs1 : x5<br>                      |[0x800002f6]:c.jr t0<br> [0x800002fe]:xori t0, t0, 3<br> [0x80000302]:auipc gp, 0<br> [0x80000306]:addi gp, gp, 4076<br> [0x8000030a]:andi gp, gp, 4092<br> [0x8000030e]:sub t0, t0, gp<br> [0x80000312]:c.swsp t0, 13<br>      |
|  15|[0x8000323c]<br>0x00000013|- rs1 : x15<br>                     |[0x8000031c]:c.jr a5<br> [0x80000324]:xori a5, a5, 3<br> [0x80000328]:auipc gp, 0<br> [0x8000032c]:addi gp, gp, 4076<br> [0x80000330]:andi gp, gp, 4092<br> [0x80000334]:sub a5, a5, gp<br> [0x80000338]:c.swsp a5, 14<br>      |
|  16|[0x80003240]<br>0x00000011|- rs1 : x8<br>                      |[0x80000342]:c.jr fp<br> [0x8000034a]:xori fp, fp, 3<br> [0x8000034e]:auipc gp, 0<br> [0x80000352]:addi gp, gp, 4076<br> [0x80000356]:andi gp, gp, 4092<br> [0x8000035a]:sub fp, fp, gp<br> [0x8000035e]:c.swsp fp, 15<br>      |
|  17|[0x80003244]<br>0x00000013|- rs1 : x16<br>                     |[0x80000368]:c.jr a6<br> [0x80000370]:xori a6, a6, 3<br> [0x80000374]:auipc gp, 0<br> [0x80000378]:addi gp, gp, 4076<br> [0x8000037c]:andi gp, gp, 4092<br> [0x80000380]:sub a6, a6, gp<br> [0x80000384]:c.swsp a6, 16<br>      |
|  18|[0x80003248]<br>0x00000011|- rs1 : x1<br>                      |[0x8000038e]:c.jr ra<br> [0x80000396]:xori ra, ra, 3<br> [0x8000039a]:auipc gp, 0<br> [0x8000039e]:addi gp, gp, 4076<br> [0x800003a2]:andi gp, gp, 4092<br> [0x800003a6]:sub ra, ra, gp<br> [0x800003aa]:c.swsp ra, 17<br>      |
|  19|[0x8000324c]<br>0x00000013|- rs1 : x11<br>                     |[0x800003b4]:c.jr a1<br> [0x800003bc]:xori a1, a1, 3<br> [0x800003c0]:auipc gp, 0<br> [0x800003c4]:addi gp, gp, 4076<br> [0x800003c8]:andi gp, gp, 4092<br> [0x800003cc]:sub a1, a1, gp<br> [0x800003d0]:c.swsp a1, 18<br>      |
|  20|[0x80003250]<br>0x00000011|- rs1 : x6<br>                      |[0x800003da]:c.jr t1<br> [0x800003e2]:xori t1, t1, 3<br> [0x800003e6]:auipc gp, 0<br> [0x800003ea]:addi gp, gp, 4076<br> [0x800003ee]:andi gp, gp, 4092<br> [0x800003f2]:sub t1, t1, gp<br> [0x800003f6]:c.swsp t1, 19<br>      |
|  21|[0x80003254]<br>0x00000013|- rs1 : x31<br>                     |[0x80000400]:c.jr t6<br> [0x80000408]:xori t6, t6, 3<br> [0x8000040c]:auipc gp, 0<br> [0x80000410]:addi gp, gp, 4076<br> [0x80000414]:andi gp, gp, 4092<br> [0x80000418]:sub t6, t6, gp<br> [0x8000041c]:c.swsp t6, 20<br>      |
|  22|[0x80003258]<br>0x00000011|- rs1 : x22<br>                     |[0x80000426]:c.jr s6<br> [0x8000042e]:xori s6, s6, 3<br> [0x80000432]:auipc gp, 0<br> [0x80000436]:addi gp, gp, 4076<br> [0x8000043a]:andi gp, gp, 4092<br> [0x8000043e]:sub s6, s6, gp<br> [0x80000442]:c.swsp s6, 21<br>      |
|  23|[0x8000325c]<br>0x00000013|- rs1 : x23<br>                     |[0x8000044c]:c.jr s7<br> [0x80000454]:xori s7, s7, 3<br> [0x80000458]:auipc gp, 0<br> [0x8000045c]:addi gp, gp, 4076<br> [0x80000460]:andi gp, gp, 4092<br> [0x80000464]:sub s7, s7, gp<br> [0x80000468]:c.swsp s7, 22<br>      |
|  24|[0x80003260]<br>0x00000011|- rs1 : x9<br>                      |[0x80000472]:c.jr s1<br> [0x8000047a]:xori s1, s1, 3<br> [0x8000047e]:auipc gp, 0<br> [0x80000482]:addi gp, gp, 4076<br> [0x80000486]:andi gp, gp, 4092<br> [0x8000048a]:sub s1, s1, gp<br> [0x8000048e]:c.swsp s1, 23<br>      |
|  25|[0x80003264]<br>0x00000013|- rs1 : x4<br>                      |[0x80000498]:c.jr tp<br> [0x800004a0]:xori tp, tp, 3<br> [0x800004a4]:auipc gp, 0<br> [0x800004a8]:addi gp, gp, 4076<br> [0x800004ac]:andi gp, gp, 4092<br> [0x800004b0]:sub tp, tp, gp<br> [0x800004b4]:c.swsp tp, 24<br>      |
|  26|[0x80003268]<br>0x00000011|- rs1 : x19<br>                     |[0x800004be]:c.jr s3<br> [0x800004c6]:xori s3, s3, 3<br> [0x800004ca]:auipc gp, 0<br> [0x800004ce]:addi gp, gp, 4076<br> [0x800004d2]:andi gp, gp, 4092<br> [0x800004d6]:sub s3, s3, gp<br> [0x800004da]:c.swsp s3, 25<br>      |
|  27|[0x8000326c]<br>0x00000013|- rs1 : x20<br>                     |[0x800004e4]:c.jr s4<br> [0x800004ec]:xori s4, s4, 3<br> [0x800004f0]:auipc tp, 0<br> [0x800004f4]:addi tp, tp, 4076<br> [0x800004f8]:andi tp, tp, 4092<br> [0x800004fc]:sub s4, s4, tp<br> [0x80000500]:c.swsp s4, 26<br>      |
|  28|[0x80003270]<br>0x00000011|- rs1 : x7<br>                      |[0x80000512]:c.jr t2<br> [0x8000051a]:xori t2, t2, 3<br> [0x8000051e]:auipc tp, 0<br> [0x80000522]:addi tp, tp, 4076<br> [0x80000526]:andi tp, tp, 4092<br> [0x8000052a]:sub t2, t2, tp<br> [0x8000052e]:sw t2, 0(ra)<br>       |
|  29|[0x80003274]<br>0x00000011|- rs1 : x2<br>                      |[0x8000053a]:c.jr sp<br> [0x80000542]:xori sp, sp, 3<br> [0x80000546]:auipc tp, 0<br> [0x8000054a]:addi tp, tp, 4076<br> [0x8000054e]:andi tp, tp, 4092<br> [0x80000552]:sub sp, sp, tp<br> [0x80000556]:sw sp, 4(ra)<br>       |
|  30|[0x80003278]<br>0x00000011|- rs1 : x3<br>                      |[0x80000562]:c.jr gp<br> [0x8000056a]:xori gp, gp, 3<br> [0x8000056e]:auipc tp, 0<br> [0x80000572]:addi tp, tp, 4076<br> [0x80000576]:andi tp, tp, 4092<br> [0x8000057a]:sub gp, gp, tp<br> [0x8000057e]:sw gp, 8(ra)<br>       |
|  31|[0x8000327c]<br>0x00000011|- rs1 : x10<br>                     |[0x8000058a]:c.jr a0<br> [0x80000592]:xori a0, a0, 3<br> [0x80000596]:auipc tp, 0<br> [0x8000059a]:addi tp, tp, 4076<br> [0x8000059e]:andi tp, tp, 4092<br> [0x800005a2]:sub a0, a0, tp<br> [0x800005a6]:sw a0, 12(ra)<br>      |
