
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
| SIG_REGION                | [('0x80002010', '0x80002090', '32 words')]      |
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

|s.no|        signature         |            coverpoints             |                                                                                                              code                                                                                                               |
|---:|--------------------------|------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000013|- opcode : c.jr<br> - rs1 : x21<br> |[0x80000108]:c.jr s5<br> [0x80000110]:xori s5, s5, 3<br> [0x80000114]:auipc t1, 0<br> [0x80000118]:addi t1, t1, 4076<br> [0x8000011c]:andi t1, t1, 4092<br> [0x80000120]:sub s5, s5, t1<br> [0x80000124]:c.swsp s5, 0<br>        |
|   2|[0x80002014]<br>0x00000011|- rs1 : x30<br>                     |[0x8000012e]:c.jr t5<br> [0x80000136]:xori t5, t5, 3<br> [0x8000013a]:auipc t1, 0<br> [0x8000013e]:addi t1, t1, 4076<br> [0x80000142]:andi t1, t1, 4092<br> [0x80000146]:sub t5, t5, t1<br> [0x8000014a]:c.swsp t5, 1<br>        |
|   3|[0x80002018]<br>0x00000013|- rs1 : x20<br>                     |[0x80000154]:c.jr s4<br> [0x8000015c]:xori s4, s4, 3<br> [0x80000160]:auipc t1, 0<br> [0x80000164]:addi t1, t1, 4076<br> [0x80000168]:andi t1, t1, 4092<br> [0x8000016c]:sub s4, s4, t1<br> [0x80000170]:c.swsp s4, 2<br>        |
|   4|[0x8000201c]<br>0x00000011|- rs1 : x11<br>                     |[0x8000017a]:c.jr a1<br> [0x80000182]:xori a1, a1, 3<br> [0x80000186]:auipc t1, 0<br> [0x8000018a]:addi t1, t1, 4076<br> [0x8000018e]:andi t1, t1, 4092<br> [0x80000192]:sub a1, a1, t1<br> [0x80000196]:c.swsp a1, 3<br>        |
|   5|[0x80002020]<br>0x00000013|- rs1 : x19<br>                     |[0x800001a0]:c.jr s3<br> [0x800001a8]:xori s3, s3, 3<br> [0x800001ac]:auipc t1, 0<br> [0x800001b0]:addi t1, t1, 4076<br> [0x800001b4]:andi t1, t1, 4092<br> [0x800001b8]:sub s3, s3, t1<br> [0x800001bc]:c.swsp s3, 4<br>        |
|   6|[0x80002024]<br>0x00000011|- rs1 : x27<br>                     |[0x800001c6]:c.jr s11<br> [0x800001ce]:xori s11, s11, 3<br> [0x800001d2]:auipc t1, 0<br> [0x800001d6]:addi t1, t1, 4076<br> [0x800001da]:andi t1, t1, 4092<br> [0x800001de]:sub s11, s11, t1<br> [0x800001e2]:c.swsp s11, 5<br>  |
|   7|[0x80002028]<br>0x00000013|- rs1 : x1<br>                      |[0x800001ec]:c.jr ra<br> [0x800001f4]:xori ra, ra, 3<br> [0x800001f8]:auipc t1, 0<br> [0x800001fc]:addi t1, t1, 4076<br> [0x80000200]:andi t1, t1, 4092<br> [0x80000204]:sub ra, ra, t1<br> [0x80000208]:c.swsp ra, 6<br>        |
|   8|[0x8000202c]<br>0x00000011|- rs1 : x9<br>                      |[0x80000212]:c.jr s1<br> [0x8000021a]:xori s1, s1, 3<br> [0x8000021e]:auipc t1, 0<br> [0x80000222]:addi t1, t1, 4076<br> [0x80000226]:andi t1, t1, 4092<br> [0x8000022a]:sub s1, s1, t1<br> [0x8000022e]:c.swsp s1, 7<br>        |
|   9|[0x80002030]<br>0x00000013|- rs1 : x22<br>                     |[0x80000238]:c.jr s6<br> [0x80000240]:xori s6, s6, 3<br> [0x80000244]:auipc t1, 0<br> [0x80000248]:addi t1, t1, 4076<br> [0x8000024c]:andi t1, t1, 4092<br> [0x80000250]:sub s6, s6, t1<br> [0x80000254]:c.swsp s6, 8<br>        |
|  10|[0x80002034]<br>0x00000011|- rs1 : x3<br>                      |[0x8000025e]:c.jr gp<br> [0x80000266]:xori gp, gp, 3<br> [0x8000026a]:auipc t1, 0<br> [0x8000026e]:addi t1, t1, 4076<br> [0x80000272]:andi t1, t1, 4092<br> [0x80000276]:sub gp, gp, t1<br> [0x8000027a]:c.swsp gp, 9<br>        |
|  11|[0x80002038]<br>0x00000013|- rs1 : x5<br>                      |[0x80000284]:c.jr t0<br> [0x8000028c]:xori t0, t0, 3<br> [0x80000290]:auipc t1, 0<br> [0x80000294]:addi t1, t1, 4076<br> [0x80000298]:andi t1, t1, 4092<br> [0x8000029c]:sub t0, t0, t1<br> [0x800002a0]:c.swsp t0, 10<br>       |
|  12|[0x8000203c]<br>0x00000011|- rs1 : x18<br>                     |[0x800002aa]:c.jr s2<br> [0x800002b2]:xori s2, s2, 3<br> [0x800002b6]:auipc t1, 0<br> [0x800002ba]:addi t1, t1, 4076<br> [0x800002be]:andi t1, t1, 4092<br> [0x800002c2]:sub s2, s2, t1<br> [0x800002c6]:c.swsp s2, 11<br>       |
|  13|[0x80002040]<br>0x00000013|- rs1 : x24<br>                     |[0x800002d0]:c.jr s8<br> [0x800002d8]:xori s8, s8, 3<br> [0x800002dc]:auipc t1, 0<br> [0x800002e0]:addi t1, t1, 4076<br> [0x800002e4]:andi t1, t1, 4092<br> [0x800002e8]:sub s8, s8, t1<br> [0x800002ec]:c.swsp s8, 12<br>       |
|  14|[0x80002044]<br>0x00000011|- rs1 : x25<br>                     |[0x800002f6]:c.jr s9<br> [0x800002fe]:xori s9, s9, 3<br> [0x80000302]:auipc t1, 0<br> [0x80000306]:addi t1, t1, 4076<br> [0x8000030a]:andi t1, t1, 4092<br> [0x8000030e]:sub s9, s9, t1<br> [0x80000312]:c.swsp s9, 13<br>       |
|  15|[0x80002048]<br>0x00000013|- rs1 : x8<br>                      |[0x8000031c]:c.jr fp<br> [0x80000324]:xori fp, fp, 3<br> [0x80000328]:auipc t1, 0<br> [0x8000032c]:addi t1, t1, 4076<br> [0x80000330]:andi t1, t1, 4092<br> [0x80000334]:sub fp, fp, t1<br> [0x80000338]:c.swsp fp, 14<br>       |
|  16|[0x8000204c]<br>0x00000011|- rs1 : x28<br>                     |[0x80000342]:c.jr t3<br> [0x8000034a]:xori t3, t3, 3<br> [0x8000034e]:auipc t1, 0<br> [0x80000352]:addi t1, t1, 4076<br> [0x80000356]:andi t1, t1, 4092<br> [0x8000035a]:sub t3, t3, t1<br> [0x8000035e]:c.swsp t3, 15<br>       |
|  17|[0x80002050]<br>0x00000013|- rs1 : x14<br>                     |[0x80000368]:c.jr a4<br> [0x80000370]:xori a4, a4, 3<br> [0x80000374]:auipc t1, 0<br> [0x80000378]:addi t1, t1, 4076<br> [0x8000037c]:andi t1, t1, 4092<br> [0x80000380]:sub a4, a4, t1<br> [0x80000384]:c.swsp a4, 16<br>       |
|  18|[0x80002054]<br>0x00000011|- rs1 : x4<br>                      |[0x8000038e]:c.jr tp<br> [0x80000396]:xori tp, tp, 3<br> [0x8000039a]:auipc t1, 0<br> [0x8000039e]:addi t1, t1, 4076<br> [0x800003a2]:andi t1, t1, 4092<br> [0x800003a6]:sub tp, tp, t1<br> [0x800003aa]:c.swsp tp, 17<br>       |
|  19|[0x80002058]<br>0x00000013|- rs1 : x15<br>                     |[0x800003b4]:c.jr a5<br> [0x800003bc]:xori a5, a5, 3<br> [0x800003c0]:auipc t1, 0<br> [0x800003c4]:addi t1, t1, 4076<br> [0x800003c8]:andi t1, t1, 4092<br> [0x800003cc]:sub a5, a5, t1<br> [0x800003d0]:c.swsp a5, 18<br>       |
|  20|[0x8000205c]<br>0x00000011|- rs1 : x12<br>                     |[0x800003da]:c.jr a2<br> [0x800003e2]:xori a2, a2, 3<br> [0x800003e6]:auipc t1, 0<br> [0x800003ea]:addi t1, t1, 4076<br> [0x800003ee]:andi t1, t1, 4092<br> [0x800003f2]:sub a2, a2, t1<br> [0x800003f6]:c.swsp a2, 19<br>       |
|  21|[0x80002060]<br>0x00000013|- rs1 : x29<br>                     |[0x80000400]:c.jr t4<br> [0x80000408]:xori t4, t4, 3<br> [0x8000040c]:auipc t1, 0<br> [0x80000410]:addi t1, t1, 4076<br> [0x80000414]:andi t1, t1, 4092<br> [0x80000418]:sub t4, t4, t1<br> [0x8000041c]:c.swsp t4, 20<br>       |
|  22|[0x80002064]<br>0x00000011|- rs1 : x23<br>                     |[0x80000426]:c.jr s7<br> [0x8000042e]:xori s7, s7, 3<br> [0x80000432]:auipc t1, 0<br> [0x80000436]:addi t1, t1, 4076<br> [0x8000043a]:andi t1, t1, 4092<br> [0x8000043e]:sub s7, s7, t1<br> [0x80000442]:c.swsp s7, 21<br>       |
|  23|[0x80002068]<br>0x00000013|- rs1 : x31<br>                     |[0x8000044c]:c.jr t6<br> [0x80000454]:xori t6, t6, 3<br> [0x80000458]:auipc t1, 0<br> [0x8000045c]:addi t1, t1, 4076<br> [0x80000460]:andi t1, t1, 4092<br> [0x80000464]:sub t6, t6, t1<br> [0x80000468]:c.swsp t6, 22<br>       |
|  24|[0x8000206c]<br>0x00000011|- rs1 : x26<br>                     |[0x80000472]:c.jr s10<br> [0x8000047a]:xori s10, s10, 3<br> [0x8000047e]:auipc t1, 0<br> [0x80000482]:addi t1, t1, 4076<br> [0x80000486]:andi t1, t1, 4092<br> [0x8000048a]:sub s10, s10, t1<br> [0x8000048e]:c.swsp s10, 23<br> |
|  25|[0x80002070]<br>0x00000013|- rs1 : x7<br>                      |[0x80000498]:c.jr t2<br> [0x800004a0]:xori t2, t2, 3<br> [0x800004a4]:auipc t1, 0<br> [0x800004a8]:addi t1, t1, 4076<br> [0x800004ac]:andi t1, t1, 4092<br> [0x800004b0]:sub t2, t2, t1<br> [0x800004b4]:c.swsp t2, 24<br>       |
|  26|[0x80002074]<br>0x00000011|- rs1 : x13<br>                     |[0x800004be]:c.jr a3<br> [0x800004c6]:xori a3, a3, 3<br> [0x800004ca]:auipc t1, 0<br> [0x800004ce]:addi t1, t1, 4076<br> [0x800004d2]:andi t1, t1, 4092<br> [0x800004d6]:sub a3, a3, t1<br> [0x800004da]:c.swsp a3, 25<br>       |
|  27|[0x80002078]<br>0x00000013|- rs1 : x17<br>                     |[0x800004e4]:c.jr a7<br> [0x800004ec]:xori a7, a7, 3<br> [0x800004f0]:auipc gp, 0<br> [0x800004f4]:addi gp, gp, 4076<br> [0x800004f8]:andi gp, gp, 4092<br> [0x800004fc]:sub a7, a7, gp<br> [0x80000500]:c.swsp a7, 26<br>       |
|  28|[0x8000207c]<br>0x00000011|- rs1 : x2<br>                      |[0x80000512]:c.jr sp<br> [0x8000051a]:xori sp, sp, 3<br> [0x8000051e]:auipc gp, 0<br> [0x80000522]:addi gp, gp, 4076<br> [0x80000526]:andi gp, gp, 4092<br> [0x8000052a]:sub sp, sp, gp<br> [0x8000052e]:sw sp, 0(ra)<br>        |
|  29|[0x80002080]<br>0x00000011|- rs1 : x6<br>                      |[0x8000053a]:c.jr t1<br> [0x80000542]:xori t1, t1, 3<br> [0x80000546]:auipc gp, 0<br> [0x8000054a]:addi gp, gp, 4076<br> [0x8000054e]:andi gp, gp, 4092<br> [0x80000552]:sub t1, t1, gp<br> [0x80000556]:sw t1, 4(ra)<br>        |
|  30|[0x80002084]<br>0x00000011|- rs1 : x16<br>                     |[0x80000562]:c.jr a6<br> [0x8000056a]:xori a6, a6, 3<br> [0x8000056e]:auipc gp, 0<br> [0x80000572]:addi gp, gp, 4076<br> [0x80000576]:andi gp, gp, 4092<br> [0x8000057a]:sub a6, a6, gp<br> [0x8000057e]:sw a6, 8(ra)<br>        |
|  31|[0x80002088]<br>0x00000011|- rs1 : x10<br>                     |[0x8000058a]:c.jr a0<br> [0x80000592]:xori a0, a0, 3<br> [0x80000596]:auipc gp, 0<br> [0x8000059a]:addi gp, gp, 4076<br> [0x8000059e]:andi gp, gp, 4092<br> [0x800005a2]:sub a0, a0, gp<br> [0x800005a6]:sw a0, 12(ra)<br>       |
