
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005e0')]      |
| SIG_REGION                | [('0x80003204', '0x8000328c', '34 words')]      |
| COV_LABELS                | cjr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjr-01.S/cjr-01.S    |
| Total Number of coverpoints| 32     |
| Total Signature Updates   | 31      |
| Total Coverpoints Covered | 32      |
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
|   1|[0x80003210]<br>0x00000013|- opcode : c.jr<br> - rs1 : x21<br> |[0x80000108]:c.jr s5<br> [0x80000110]:xori s5, s5, 3<br> [0x80000114]:auipc s4, 0<br> [0x80000118]:addi s4, s4, 4076<br> [0x8000011c]:andi s4, s4, 4092<br> [0x80000120]:sub s5, s5, s4<br> [0x80000124]:sw s5, 0(a1)<br>        |
|   2|[0x80003214]<br>0x00000013|- rs1 : x25<br>                     |[0x80000130]:c.jr s9<br> [0x80000138]:xori s9, s9, 3<br> [0x8000013c]:auipc s4, 0<br> [0x80000140]:addi s4, s4, 4076<br> [0x80000144]:andi s4, s4, 4092<br> [0x80000148]:sub s9, s9, s4<br> [0x8000014c]:sw s9, 4(a1)<br>        |
|   3|[0x80003218]<br>0x00000013|- rs1 : x15<br>                     |[0x80000158]:c.jr a5<br> [0x80000160]:xori a5, a5, 3<br> [0x80000164]:auipc s4, 0<br> [0x80000168]:addi s4, s4, 4076<br> [0x8000016c]:andi s4, s4, 4092<br> [0x80000170]:sub a5, a5, s4<br> [0x80000174]:c.sw a1, a5, 8<br>      |
|   4|[0x8000321c]<br>0x00000011|- rs1 : x3<br>                      |[0x8000017e]:c.jr gp<br> [0x80000186]:xori gp, gp, 3<br> [0x8000018a]:auipc s4, 0<br> [0x8000018e]:addi s4, s4, 4076<br> [0x80000192]:andi s4, s4, 4092<br> [0x80000196]:sub gp, gp, s4<br> [0x8000019a]:sw gp, 12(a1)<br>       |
|   5|[0x80003220]<br>0x00000011|- rs1 : x16<br>                     |[0x800001a6]:c.jr a6<br> [0x800001ae]:xori a6, a6, 3<br> [0x800001b2]:auipc s4, 0<br> [0x800001b6]:addi s4, s4, 4076<br> [0x800001ba]:andi s4, s4, 4092<br> [0x800001be]:sub a6, a6, s4<br> [0x800001c2]:sw a6, 16(a1)<br>       |
|   6|[0x80003224]<br>0x00000011|- rs1 : x28<br>                     |[0x800001ce]:c.jr t3<br> [0x800001d6]:xori t3, t3, 3<br> [0x800001da]:auipc s4, 0<br> [0x800001de]:addi s4, s4, 4076<br> [0x800001e2]:andi s4, s4, 4092<br> [0x800001e6]:sub t3, t3, s4<br> [0x800001ea]:sw t3, 20(a1)<br>       |
|   7|[0x80003228]<br>0x00000011|- rs1 : x13<br>                     |[0x800001f6]:c.jr a3<br> [0x800001fe]:xori a3, a3, 3<br> [0x80000202]:auipc s4, 0<br> [0x80000206]:addi s4, s4, 4076<br> [0x8000020a]:andi s4, s4, 4092<br> [0x8000020e]:sub a3, a3, s4<br> [0x80000212]:c.sw a1, a3, 24<br>     |
|   8|[0x8000322c]<br>0x00000013|- rs1 : x30<br>                     |[0x8000021c]:c.jr t5<br> [0x80000224]:xori t5, t5, 3<br> [0x80000228]:auipc s4, 0<br> [0x8000022c]:addi s4, s4, 4076<br> [0x80000230]:andi s4, s4, 4092<br> [0x80000234]:sub t5, t5, s4<br> [0x80000238]:sw t5, 28(a1)<br>       |
|   9|[0x80003230]<br>0x00000013|- rs1 : x18<br>                     |[0x80000244]:c.jr s2<br> [0x8000024c]:xori s2, s2, 3<br> [0x80000250]:auipc s4, 0<br> [0x80000254]:addi s4, s4, 4076<br> [0x80000258]:andi s4, s4, 4092<br> [0x8000025c]:sub s2, s2, s4<br> [0x80000260]:sw s2, 32(a1)<br>       |
|  10|[0x80003234]<br>0x00000013|- rs1 : x7<br>                      |[0x8000026c]:c.jr t2<br> [0x80000274]:xori t2, t2, 3<br> [0x80000278]:auipc s4, 0<br> [0x8000027c]:addi s4, s4, 4076<br> [0x80000280]:andi s4, s4, 4092<br> [0x80000284]:sub t2, t2, s4<br> [0x80000288]:sw t2, 36(a1)<br>       |
|  11|[0x80003238]<br>0x00000013|- rs1 : x14<br>                     |[0x80000294]:c.jr a4<br> [0x8000029c]:xori a4, a4, 3<br> [0x800002a0]:auipc s4, 0<br> [0x800002a4]:addi s4, s4, 4076<br> [0x800002a8]:andi s4, s4, 4092<br> [0x800002ac]:sub a4, a4, s4<br> [0x800002b0]:c.sw a1, a4, 40<br>     |
|  12|[0x8000323c]<br>0x00000011|- rs1 : x12<br>                     |[0x800002ba]:c.jr a2<br> [0x800002c2]:xori a2, a2, 3<br> [0x800002c6]:auipc s4, 0<br> [0x800002ca]:addi s4, s4, 4076<br> [0x800002ce]:andi s4, s4, 4092<br> [0x800002d2]:sub a2, a2, s4<br> [0x800002d6]:c.sw a1, a2, 44<br>     |
|  13|[0x80003240]<br>0x00000013|- rs1 : x2<br>                      |[0x800002e0]:c.jr sp<br> [0x800002e8]:xori sp, sp, 3<br> [0x800002ec]:auipc s4, 0<br> [0x800002f0]:addi s4, s4, 4076<br> [0x800002f4]:andi s4, s4, 4092<br> [0x800002f8]:sub sp, sp, s4<br> [0x800002fc]:sw sp, 48(a1)<br>       |
|  14|[0x80003244]<br>0x00000013|- rs1 : x8<br>                      |[0x80000308]:c.jr fp<br> [0x80000310]:xori fp, fp, 3<br> [0x80000314]:auipc s4, 0<br> [0x80000318]:addi s4, s4, 4076<br> [0x8000031c]:andi s4, s4, 4092<br> [0x80000320]:sub fp, fp, s4<br> [0x80000324]:c.sw a1, s0, 52<br>     |
|  15|[0x80003248]<br>0x00000011|- rs1 : x19<br>                     |[0x8000032e]:c.jr s3<br> [0x80000336]:xori s3, s3, 3<br> [0x8000033a]:auipc s4, 0<br> [0x8000033e]:addi s4, s4, 4076<br> [0x80000342]:andi s4, s4, 4092<br> [0x80000346]:sub s3, s3, s4<br> [0x8000034a]:sw s3, 56(a1)<br>       |
|  16|[0x8000324c]<br>0x00000011|- rs1 : x27<br>                     |[0x80000356]:c.jr s11<br> [0x8000035e]:xori s11, s11, 3<br> [0x80000362]:auipc s4, 0<br> [0x80000366]:addi s4, s4, 4076<br> [0x8000036a]:andi s4, s4, 4092<br> [0x8000036e]:sub s11, s11, s4<br> [0x80000372]:sw s11, 60(a1)<br> |
|  17|[0x80003250]<br>0x00000011|- rs1 : x17<br>                     |[0x8000037e]:c.jr a7<br> [0x80000386]:xori a7, a7, 3<br> [0x8000038a]:auipc s4, 0<br> [0x8000038e]:addi s4, s4, 4076<br> [0x80000392]:andi s4, s4, 4092<br> [0x80000396]:sub a7, a7, s4<br> [0x8000039a]:sw a7, 64(a1)<br>       |
|  18|[0x80003254]<br>0x00000011|- rs1 : x9<br>                      |[0x800003a6]:c.jr s1<br> [0x800003ae]:xori s1, s1, 3<br> [0x800003b2]:auipc s4, 0<br> [0x800003b6]:addi s4, s4, 4076<br> [0x800003ba]:andi s4, s4, 4092<br> [0x800003be]:sub s1, s1, s4<br> [0x800003c2]:c.sw a1, s1, 68<br>     |
|  19|[0x80003258]<br>0x00000013|- rs1 : x5<br>                      |[0x800003cc]:c.jr t0<br> [0x800003d4]:xori t0, t0, 3<br> [0x800003d8]:auipc s4, 0<br> [0x800003dc]:addi s4, s4, 4076<br> [0x800003e0]:andi s4, s4, 4092<br> [0x800003e4]:sub t0, t0, s4<br> [0x800003e8]:sw t0, 72(a1)<br>       |
|  20|[0x8000325c]<br>0x00000013|- rs1 : x22<br>                     |[0x800003f4]:c.jr s6<br> [0x800003fc]:xori s6, s6, 3<br> [0x80000400]:auipc s4, 0<br> [0x80000404]:addi s4, s4, 4076<br> [0x80000408]:andi s4, s4, 4092<br> [0x8000040c]:sub s6, s6, s4<br> [0x80000410]:sw s6, 76(a1)<br>       |
|  21|[0x80003260]<br>0x00000013|- rs1 : x24<br>                     |[0x8000041c]:c.jr s8<br> [0x80000424]:xori s8, s8, 3<br> [0x80000428]:auipc s4, 0<br> [0x8000042c]:addi s4, s4, 4076<br> [0x80000430]:andi s4, s4, 4092<br> [0x80000434]:sub s8, s8, s4<br> [0x80000438]:sw s8, 80(a1)<br>       |
|  22|[0x80003264]<br>0x00000013|- rs1 : x26<br>                     |[0x80000444]:c.jr s10<br> [0x8000044c]:xori s10, s10, 3<br> [0x80000450]:auipc s4, 0<br> [0x80000454]:addi s4, s4, 4076<br> [0x80000458]:andi s4, s4, 4092<br> [0x8000045c]:sub s10, s10, s4<br> [0x80000460]:sw s10, 84(a1)<br> |
|  23|[0x80003268]<br>0x00000013|- rs1 : x6<br>                      |[0x8000046c]:c.jr t1<br> [0x80000474]:xori t1, t1, 3<br> [0x80000478]:auipc s4, 0<br> [0x8000047c]:addi s4, s4, 4076<br> [0x80000480]:andi s4, s4, 4092<br> [0x80000484]:sub t1, t1, s4<br> [0x80000488]:sw t1, 88(a1)<br>       |
|  24|[0x8000326c]<br>0x00000013|- rs1 : x4<br>                      |[0x80000494]:c.jr tp<br> [0x8000049c]:xori tp, tp, 3<br> [0x800004a0]:auipc s4, 0<br> [0x800004a4]:addi s4, s4, 4076<br> [0x800004a8]:andi s4, s4, 4092<br> [0x800004ac]:sub tp, tp, s4<br> [0x800004b0]:sw tp, 92(a1)<br>       |
|  25|[0x80003270]<br>0x00000013|- rs1 : x1<br>                      |[0x800004bc]:c.jr ra<br> [0x800004c4]:xori ra, ra, 3<br> [0x800004c8]:auipc s4, 0<br> [0x800004cc]:addi s4, s4, 4076<br> [0x800004d0]:andi s4, s4, 4092<br> [0x800004d4]:sub ra, ra, s4<br> [0x800004d8]:sw ra, 96(a1)<br>       |
|  26|[0x80003274]<br>0x00000013|- rs1 : x23<br>                     |[0x800004e4]:c.jr s7<br> [0x800004ec]:xori s7, s7, 3<br> [0x800004f0]:auipc s4, 0<br> [0x800004f4]:addi s4, s4, 4076<br> [0x800004f8]:andi s4, s4, 4092<br> [0x800004fc]:sub s7, s7, s4<br> [0x80000500]:sw s7, 100(a1)<br>      |
|  27|[0x80003278]<br>0x00000013|- rs1 : x29<br>                     |[0x8000050c]:c.jr t4<br> [0x80000514]:xori t4, t4, 3<br> [0x80000518]:auipc sp, 0<br> [0x8000051c]:addi sp, sp, 4076<br> [0x80000520]:andi sp, sp, 4092<br> [0x80000524]:sub t4, t4, sp<br> [0x80000528]:sw t4, 104(a1)<br>      |
|  28|[0x8000327c]<br>0x00000013|- rs1 : x31<br>                     |[0x8000053c]:c.jr t6<br> [0x80000544]:xori t6, t6, 3<br> [0x80000548]:auipc sp, 0<br> [0x8000054c]:addi sp, sp, 4076<br> [0x80000550]:andi sp, sp, 4092<br> [0x80000554]:sub t6, t6, sp<br> [0x80000558]:sw t6, 0(ra)<br>        |
|  29|[0x80003280]<br>0x00000013|- rs1 : x20<br>                     |[0x80000564]:c.jr s4<br> [0x8000056c]:xori s4, s4, 3<br> [0x80000570]:auipc sp, 0<br> [0x80000574]:addi sp, sp, 4076<br> [0x80000578]:andi sp, sp, 4092<br> [0x8000057c]:sub s4, s4, sp<br> [0x80000580]:sw s4, 4(ra)<br>        |
|  30|[0x80003284]<br>0x00000013|- rs1 : x11<br>                     |[0x8000058c]:c.jr a1<br> [0x80000594]:xori a1, a1, 3<br> [0x80000598]:auipc sp, 0<br> [0x8000059c]:addi sp, sp, 4076<br> [0x800005a0]:andi sp, sp, 4092<br> [0x800005a4]:sub a1, a1, sp<br> [0x800005a8]:sw a1, 8(ra)<br>        |
|  31|[0x80003288]<br>0x00000013|- rs1 : x10<br>                     |[0x800005b4]:c.jr a0<br> [0x800005bc]:xori a0, a0, 3<br> [0x800005c0]:auipc sp, 0<br> [0x800005c4]:addi sp, sp, 4076<br> [0x800005c8]:andi sp, sp, 4092<br> [0x800005cc]:sub a0, a0, sp<br> [0x800005d0]:sw a0, 12(ra)<br>       |
