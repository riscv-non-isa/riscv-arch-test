
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005e0')]      |
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
|   1|[0x80002010]<br>0x00000013|- opcode : c.jr<br> - rs1 : x18<br> |[0x80000108]:c.jr s2<br> [0x80000110]:xori s2, s2, 3<br> [0x80000114]:auipc sp, 0<br> [0x80000118]:addi sp, sp, 4076<br> [0x8000011c]:andi sp, sp, 4092<br> [0x80000120]:sub s2, s2, sp<br> [0x80000124]:sw s2, 0(a1)<br>        |
|   2|[0x80002014]<br>0x00000013|- rs1 : x6<br>                      |[0x80000130]:c.jr t1<br> [0x80000138]:xori t1, t1, 3<br> [0x8000013c]:auipc sp, 0<br> [0x80000140]:addi sp, sp, 4076<br> [0x80000144]:andi sp, sp, 4092<br> [0x80000148]:sub t1, t1, sp<br> [0x8000014c]:sw t1, 4(a1)<br>        |
|   3|[0x80002018]<br>0x00000013|- rs1 : x13<br>                     |[0x80000158]:c.jr a3<br> [0x80000160]:xori a3, a3, 3<br> [0x80000164]:auipc sp, 0<br> [0x80000168]:addi sp, sp, 4076<br> [0x8000016c]:andi sp, sp, 4092<br> [0x80000170]:sub a3, a3, sp<br> [0x80000174]:c.sw a1, a3, 8<br>      |
|   4|[0x8000201c]<br>0x00000011|- rs1 : x17<br>                     |[0x8000017e]:c.jr a7<br> [0x80000186]:xori a7, a7, 3<br> [0x8000018a]:auipc sp, 0<br> [0x8000018e]:addi sp, sp, 4076<br> [0x80000192]:andi sp, sp, 4092<br> [0x80000196]:sub a7, a7, sp<br> [0x8000019a]:sw a7, 12(a1)<br>       |
|   5|[0x80002020]<br>0x00000011|- rs1 : x23<br>                     |[0x800001a6]:c.jr s7<br> [0x800001ae]:xori s7, s7, 3<br> [0x800001b2]:auipc sp, 0<br> [0x800001b6]:addi sp, sp, 4076<br> [0x800001ba]:andi sp, sp, 4092<br> [0x800001be]:sub s7, s7, sp<br> [0x800001c2]:sw s7, 16(a1)<br>       |
|   6|[0x80002024]<br>0x00000011|- rs1 : x30<br>                     |[0x800001ce]:c.jr t5<br> [0x800001d6]:xori t5, t5, 3<br> [0x800001da]:auipc sp, 0<br> [0x800001de]:addi sp, sp, 4076<br> [0x800001e2]:andi sp, sp, 4092<br> [0x800001e6]:sub t5, t5, sp<br> [0x800001ea]:sw t5, 20(a1)<br>       |
|   7|[0x80002028]<br>0x00000011|- rs1 : x1<br>                      |[0x800001f6]:c.jr ra<br> [0x800001fe]:xori ra, ra, 3<br> [0x80000202]:auipc sp, 0<br> [0x80000206]:addi sp, sp, 4076<br> [0x8000020a]:andi sp, sp, 4092<br> [0x8000020e]:sub ra, ra, sp<br> [0x80000212]:sw ra, 24(a1)<br>       |
|   8|[0x8000202c]<br>0x00000011|- rs1 : x31<br>                     |[0x8000021e]:c.jr t6<br> [0x80000226]:xori t6, t6, 3<br> [0x8000022a]:auipc sp, 0<br> [0x8000022e]:addi sp, sp, 4076<br> [0x80000232]:andi sp, sp, 4092<br> [0x80000236]:sub t6, t6, sp<br> [0x8000023a]:sw t6, 28(a1)<br>       |
|   9|[0x80002030]<br>0x00000011|- rs1 : x5<br>                      |[0x80000246]:c.jr t0<br> [0x8000024e]:xori t0, t0, 3<br> [0x80000252]:auipc sp, 0<br> [0x80000256]:addi sp, sp, 4076<br> [0x8000025a]:andi sp, sp, 4092<br> [0x8000025e]:sub t0, t0, sp<br> [0x80000262]:sw t0, 32(a1)<br>       |
|  10|[0x80002034]<br>0x00000011|- rs1 : x24<br>                     |[0x8000026e]:c.jr s8<br> [0x80000276]:xori s8, s8, 3<br> [0x8000027a]:auipc sp, 0<br> [0x8000027e]:addi sp, sp, 4076<br> [0x80000282]:andi sp, sp, 4092<br> [0x80000286]:sub s8, s8, sp<br> [0x8000028a]:sw s8, 36(a1)<br>       |
|  11|[0x80002038]<br>0x00000011|- rs1 : x15<br>                     |[0x80000296]:c.jr a5<br> [0x8000029e]:xori a5, a5, 3<br> [0x800002a2]:auipc sp, 0<br> [0x800002a6]:addi sp, sp, 4076<br> [0x800002aa]:andi sp, sp, 4092<br> [0x800002ae]:sub a5, a5, sp<br> [0x800002b2]:c.sw a1, a5, 40<br>     |
|  12|[0x8000203c]<br>0x00000013|- rs1 : x25<br>                     |[0x800002bc]:c.jr s9<br> [0x800002c4]:xori s9, s9, 3<br> [0x800002c8]:auipc sp, 0<br> [0x800002cc]:addi sp, sp, 4076<br> [0x800002d0]:andi sp, sp, 4092<br> [0x800002d4]:sub s9, s9, sp<br> [0x800002d8]:sw s9, 44(a1)<br>       |
|  13|[0x80002040]<br>0x00000013|- rs1 : x21<br>                     |[0x800002e4]:c.jr s5<br> [0x800002ec]:xori s5, s5, 3<br> [0x800002f0]:auipc sp, 0<br> [0x800002f4]:addi sp, sp, 4076<br> [0x800002f8]:andi sp, sp, 4092<br> [0x800002fc]:sub s5, s5, sp<br> [0x80000300]:sw s5, 48(a1)<br>       |
|  14|[0x80002044]<br>0x00000013|- rs1 : x19<br>                     |[0x8000030c]:c.jr s3<br> [0x80000314]:xori s3, s3, 3<br> [0x80000318]:auipc sp, 0<br> [0x8000031c]:addi sp, sp, 4076<br> [0x80000320]:andi sp, sp, 4092<br> [0x80000324]:sub s3, s3, sp<br> [0x80000328]:sw s3, 52(a1)<br>       |
|  15|[0x80002048]<br>0x00000013|- rs1 : x8<br>                      |[0x80000334]:c.jr fp<br> [0x8000033c]:xori fp, fp, 3<br> [0x80000340]:auipc sp, 0<br> [0x80000344]:addi sp, sp, 4076<br> [0x80000348]:andi sp, sp, 4092<br> [0x8000034c]:sub fp, fp, sp<br> [0x80000350]:c.sw a1, s0, 56<br>     |
|  16|[0x8000204c]<br>0x00000011|- rs1 : x27<br>                     |[0x8000035a]:c.jr s11<br> [0x80000362]:xori s11, s11, 3<br> [0x80000366]:auipc sp, 0<br> [0x8000036a]:addi sp, sp, 4076<br> [0x8000036e]:andi sp, sp, 4092<br> [0x80000372]:sub s11, s11, sp<br> [0x80000376]:sw s11, 60(a1)<br> |
|  17|[0x80002050]<br>0x00000011|- rs1 : x26<br>                     |[0x80000382]:c.jr s10<br> [0x8000038a]:xori s10, s10, 3<br> [0x8000038e]:auipc sp, 0<br> [0x80000392]:addi sp, sp, 4076<br> [0x80000396]:andi sp, sp, 4092<br> [0x8000039a]:sub s10, s10, sp<br> [0x8000039e]:sw s10, 64(a1)<br> |
|  18|[0x80002054]<br>0x00000011|- rs1 : x9<br>                      |[0x800003aa]:c.jr s1<br> [0x800003b2]:xori s1, s1, 3<br> [0x800003b6]:auipc sp, 0<br> [0x800003ba]:addi sp, sp, 4076<br> [0x800003be]:andi sp, sp, 4092<br> [0x800003c2]:sub s1, s1, sp<br> [0x800003c6]:c.sw a1, s1, 68<br>     |
|  19|[0x80002058]<br>0x00000013|- rs1 : x22<br>                     |[0x800003d0]:c.jr s6<br> [0x800003d8]:xori s6, s6, 3<br> [0x800003dc]:auipc sp, 0<br> [0x800003e0]:addi sp, sp, 4076<br> [0x800003e4]:andi sp, sp, 4092<br> [0x800003e8]:sub s6, s6, sp<br> [0x800003ec]:sw s6, 72(a1)<br>       |
|  20|[0x8000205c]<br>0x00000013|- rs1 : x29<br>                     |[0x800003f8]:c.jr t4<br> [0x80000400]:xori t4, t4, 3<br> [0x80000404]:auipc sp, 0<br> [0x80000408]:addi sp, sp, 4076<br> [0x8000040c]:andi sp, sp, 4092<br> [0x80000410]:sub t4, t4, sp<br> [0x80000414]:sw t4, 76(a1)<br>       |
|  21|[0x80002060]<br>0x00000013|- rs1 : x7<br>                      |[0x80000420]:c.jr t2<br> [0x80000428]:xori t2, t2, 3<br> [0x8000042c]:auipc sp, 0<br> [0x80000430]:addi sp, sp, 4076<br> [0x80000434]:andi sp, sp, 4092<br> [0x80000438]:sub t2, t2, sp<br> [0x8000043c]:sw t2, 80(a1)<br>       |
|  22|[0x80002064]<br>0x00000013|- rs1 : x16<br>                     |[0x80000448]:c.jr a6<br> [0x80000450]:xori a6, a6, 3<br> [0x80000454]:auipc sp, 0<br> [0x80000458]:addi sp, sp, 4076<br> [0x8000045c]:andi sp, sp, 4092<br> [0x80000460]:sub a6, a6, sp<br> [0x80000464]:sw a6, 84(a1)<br>       |
|  23|[0x80002068]<br>0x00000013|- rs1 : x12<br>                     |[0x80000470]:c.jr a2<br> [0x80000478]:xori a2, a2, 3<br> [0x8000047c]:auipc sp, 0<br> [0x80000480]:addi sp, sp, 4076<br> [0x80000484]:andi sp, sp, 4092<br> [0x80000488]:sub a2, a2, sp<br> [0x8000048c]:c.sw a1, a2, 88<br>     |
|  24|[0x8000206c]<br>0x00000011|- rs1 : x3<br>                      |[0x80000496]:c.jr gp<br> [0x8000049e]:xori gp, gp, 3<br> [0x800004a2]:auipc sp, 0<br> [0x800004a6]:addi sp, sp, 4076<br> [0x800004aa]:andi sp, sp, 4092<br> [0x800004ae]:sub gp, gp, sp<br> [0x800004b2]:sw gp, 92(a1)<br>       |
|  25|[0x80002070]<br>0x00000011|- rs1 : x4<br>                      |[0x800004be]:c.jr tp<br> [0x800004c6]:xori tp, tp, 3<br> [0x800004ca]:auipc sp, 0<br> [0x800004ce]:addi sp, sp, 4076<br> [0x800004d2]:andi sp, sp, 4092<br> [0x800004d6]:sub tp, tp, sp<br> [0x800004da]:sw tp, 96(a1)<br>       |
|  26|[0x80002074]<br>0x00000011|- rs1 : x14<br>                     |[0x800004e6]:c.jr a4<br> [0x800004ee]:xori a4, a4, 3<br> [0x800004f2]:auipc sp, 0<br> [0x800004f6]:addi sp, sp, 4076<br> [0x800004fa]:andi sp, sp, 4092<br> [0x800004fe]:sub a4, a4, sp<br> [0x80000502]:c.sw a1, a4, 100<br>    |
|  27|[0x80002078]<br>0x00000013|- rs1 : x2<br>                      |[0x8000050c]:c.jr sp<br> [0x80000514]:xori sp, sp, 3<br> [0x80000518]:auipc gp, 0<br> [0x8000051c]:addi gp, gp, 4076<br> [0x80000520]:andi gp, gp, 4092<br> [0x80000524]:sub sp, sp, gp<br> [0x80000528]:sw sp, 104(a1)<br>      |
|  28|[0x8000207c]<br>0x00000013|- rs1 : x28<br>                     |[0x8000053c]:c.jr t3<br> [0x80000544]:xori t3, t3, 3<br> [0x80000548]:auipc gp, 0<br> [0x8000054c]:addi gp, gp, 4076<br> [0x80000550]:andi gp, gp, 4092<br> [0x80000554]:sub t3, t3, gp<br> [0x80000558]:sw t3, 0(ra)<br>        |
|  29|[0x80002080]<br>0x00000013|- rs1 : x11<br>                     |[0x80000564]:c.jr a1<br> [0x8000056c]:xori a1, a1, 3<br> [0x80000570]:auipc gp, 0<br> [0x80000574]:addi gp, gp, 4076<br> [0x80000578]:andi gp, gp, 4092<br> [0x8000057c]:sub a1, a1, gp<br> [0x80000580]:sw a1, 4(ra)<br>        |
|  30|[0x80002084]<br>0x00000013|- rs1 : x20<br>                     |[0x8000058c]:c.jr s4<br> [0x80000594]:xori s4, s4, 3<br> [0x80000598]:auipc gp, 0<br> [0x8000059c]:addi gp, gp, 4076<br> [0x800005a0]:andi gp, gp, 4092<br> [0x800005a4]:sub s4, s4, gp<br> [0x800005a8]:sw s4, 8(ra)<br>        |
|  31|[0x80002088]<br>0x00000013|- rs1 : x10<br>                     |[0x800005b4]:c.jr a0<br> [0x800005bc]:xori a0, a0, 3<br> [0x800005c0]:auipc gp, 0<br> [0x800005c4]:addi gp, gp, 4076<br> [0x800005c8]:andi gp, gp, 4092<br> [0x800005cc]:sub a0, a0, gp<br> [0x800005d0]:sw a0, 12(ra)<br>       |
