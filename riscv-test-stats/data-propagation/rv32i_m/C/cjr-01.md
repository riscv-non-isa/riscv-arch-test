
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
|   1|[0x80002010]<br>0x00000013|- opcode : c.jr<br> - rs1 : x16<br> |[0x80000108]:c.jr a6<br> [0x80000110]:xori a6, a6, 3<br> [0x80000114]:auipc sp, 0<br> [0x80000118]:addi sp, sp, 4076<br> [0x8000011c]:andi sp, sp, 4092<br> [0x80000120]:sub a6, a6, sp<br> [0x80000124]:sw a6, 0(a5)<br>        |
|   2|[0x80002014]<br>0x00000013|- rs1 : x21<br>                     |[0x80000130]:c.jr s5<br> [0x80000138]:xori s5, s5, 3<br> [0x8000013c]:auipc sp, 0<br> [0x80000140]:addi sp, sp, 4076<br> [0x80000144]:andi sp, sp, 4092<br> [0x80000148]:sub s5, s5, sp<br> [0x8000014c]:sw s5, 4(a5)<br>        |
|   3|[0x80002018]<br>0x00000013|- rs1 : x8<br>                      |[0x80000158]:c.jr fp<br> [0x80000160]:xori fp, fp, 3<br> [0x80000164]:auipc sp, 0<br> [0x80000168]:addi sp, sp, 4076<br> [0x8000016c]:andi sp, sp, 4092<br> [0x80000170]:sub fp, fp, sp<br> [0x80000174]:c.sw a5, s0, 8<br>      |
|   4|[0x8000201c]<br>0x00000011|- rs1 : x22<br>                     |[0x8000017e]:c.jr s6<br> [0x80000186]:xori s6, s6, 3<br> [0x8000018a]:auipc sp, 0<br> [0x8000018e]:addi sp, sp, 4076<br> [0x80000192]:andi sp, sp, 4092<br> [0x80000196]:sub s6, s6, sp<br> [0x8000019a]:sw s6, 12(a5)<br>       |
|   5|[0x80002020]<br>0x00000011|- rs1 : x1<br>                      |[0x800001a6]:c.jr ra<br> [0x800001ae]:xori ra, ra, 3<br> [0x800001b2]:auipc sp, 0<br> [0x800001b6]:addi sp, sp, 4076<br> [0x800001ba]:andi sp, sp, 4092<br> [0x800001be]:sub ra, ra, sp<br> [0x800001c2]:sw ra, 16(a5)<br>       |
|   6|[0x80002024]<br>0x00000011|- rs1 : x5<br>                      |[0x800001ce]:c.jr t0<br> [0x800001d6]:xori t0, t0, 3<br> [0x800001da]:auipc sp, 0<br> [0x800001de]:addi sp, sp, 4076<br> [0x800001e2]:andi sp, sp, 4092<br> [0x800001e6]:sub t0, t0, sp<br> [0x800001ea]:sw t0, 20(a5)<br>       |
|   7|[0x80002028]<br>0x00000011|- rs1 : x12<br>                     |[0x800001f6]:c.jr a2<br> [0x800001fe]:xori a2, a2, 3<br> [0x80000202]:auipc sp, 0<br> [0x80000206]:addi sp, sp, 4076<br> [0x8000020a]:andi sp, sp, 4092<br> [0x8000020e]:sub a2, a2, sp<br> [0x80000212]:c.sw a5, a2, 24<br>     |
|   8|[0x8000202c]<br>0x00000013|- rs1 : x29<br>                     |[0x8000021c]:c.jr t4<br> [0x80000224]:xori t4, t4, 3<br> [0x80000228]:auipc sp, 0<br> [0x8000022c]:addi sp, sp, 4076<br> [0x80000230]:andi sp, sp, 4092<br> [0x80000234]:sub t4, t4, sp<br> [0x80000238]:sw t4, 28(a5)<br>       |
|   9|[0x80002030]<br>0x00000013|- rs1 : x25<br>                     |[0x80000244]:c.jr s9<br> [0x8000024c]:xori s9, s9, 3<br> [0x80000250]:auipc sp, 0<br> [0x80000254]:addi sp, sp, 4076<br> [0x80000258]:andi sp, sp, 4092<br> [0x8000025c]:sub s9, s9, sp<br> [0x80000260]:sw s9, 32(a5)<br>       |
|  10|[0x80002034]<br>0x00000013|- rs1 : x4<br>                      |[0x8000026c]:c.jr tp<br> [0x80000274]:xori tp, tp, 3<br> [0x80000278]:auipc sp, 0<br> [0x8000027c]:addi sp, sp, 4076<br> [0x80000280]:andi sp, sp, 4092<br> [0x80000284]:sub tp, tp, sp<br> [0x80000288]:sw tp, 36(a5)<br>       |
|  11|[0x80002038]<br>0x00000013|- rs1 : x23<br>                     |[0x80000294]:c.jr s7<br> [0x8000029c]:xori s7, s7, 3<br> [0x800002a0]:auipc sp, 0<br> [0x800002a4]:addi sp, sp, 4076<br> [0x800002a8]:andi sp, sp, 4092<br> [0x800002ac]:sub s7, s7, sp<br> [0x800002b0]:sw s7, 40(a5)<br>       |
|  12|[0x8000203c]<br>0x00000013|- rs1 : x14<br>                     |[0x800002bc]:c.jr a4<br> [0x800002c4]:xori a4, a4, 3<br> [0x800002c8]:auipc sp, 0<br> [0x800002cc]:addi sp, sp, 4076<br> [0x800002d0]:andi sp, sp, 4092<br> [0x800002d4]:sub a4, a4, sp<br> [0x800002d8]:c.sw a5, a4, 44<br>     |
|  13|[0x80002040]<br>0x00000011|- rs1 : x11<br>                     |[0x800002e2]:c.jr a1<br> [0x800002ea]:xori a1, a1, 3<br> [0x800002ee]:auipc sp, 0<br> [0x800002f2]:addi sp, sp, 4076<br> [0x800002f6]:andi sp, sp, 4092<br> [0x800002fa]:sub a1, a1, sp<br> [0x800002fe]:c.sw a5, a1, 48<br>     |
|  14|[0x80002044]<br>0x00000013|- rs1 : x18<br>                     |[0x80000308]:c.jr s2<br> [0x80000310]:xori s2, s2, 3<br> [0x80000314]:auipc sp, 0<br> [0x80000318]:addi sp, sp, 4076<br> [0x8000031c]:andi sp, sp, 4092<br> [0x80000320]:sub s2, s2, sp<br> [0x80000324]:sw s2, 52(a5)<br>       |
|  15|[0x80002048]<br>0x00000013|- rs1 : x20<br>                     |[0x80000330]:c.jr s4<br> [0x80000338]:xori s4, s4, 3<br> [0x8000033c]:auipc sp, 0<br> [0x80000340]:addi sp, sp, 4076<br> [0x80000344]:andi sp, sp, 4092<br> [0x80000348]:sub s4, s4, sp<br> [0x8000034c]:sw s4, 56(a5)<br>       |
|  16|[0x8000204c]<br>0x00000013|- rs1 : x3<br>                      |[0x80000358]:c.jr gp<br> [0x80000360]:xori gp, gp, 3<br> [0x80000364]:auipc sp, 0<br> [0x80000368]:addi sp, sp, 4076<br> [0x8000036c]:andi sp, sp, 4092<br> [0x80000370]:sub gp, gp, sp<br> [0x80000374]:sw gp, 60(a5)<br>       |
|  17|[0x80002050]<br>0x00000013|- rs1 : x13<br>                     |[0x80000380]:c.jr a3<br> [0x80000388]:xori a3, a3, 3<br> [0x8000038c]:auipc sp, 0<br> [0x80000390]:addi sp, sp, 4076<br> [0x80000394]:andi sp, sp, 4092<br> [0x80000398]:sub a3, a3, sp<br> [0x8000039c]:c.sw a5, a3, 64<br>     |
|  18|[0x80002054]<br>0x00000011|- rs1 : x31<br>                     |[0x800003a6]:c.jr t6<br> [0x800003ae]:xori t6, t6, 3<br> [0x800003b2]:auipc sp, 0<br> [0x800003b6]:addi sp, sp, 4076<br> [0x800003ba]:andi sp, sp, 4092<br> [0x800003be]:sub t6, t6, sp<br> [0x800003c2]:sw t6, 68(a5)<br>       |
|  19|[0x80002058]<br>0x00000011|- rs1 : x7<br>                      |[0x800003ce]:c.jr t2<br> [0x800003d6]:xori t2, t2, 3<br> [0x800003da]:auipc sp, 0<br> [0x800003de]:addi sp, sp, 4076<br> [0x800003e2]:andi sp, sp, 4092<br> [0x800003e6]:sub t2, t2, sp<br> [0x800003ea]:sw t2, 72(a5)<br>       |
|  20|[0x8000205c]<br>0x00000011|- rs1 : x9<br>                      |[0x800003f6]:c.jr s1<br> [0x800003fe]:xori s1, s1, 3<br> [0x80000402]:auipc sp, 0<br> [0x80000406]:addi sp, sp, 4076<br> [0x8000040a]:andi sp, sp, 4092<br> [0x8000040e]:sub s1, s1, sp<br> [0x80000412]:c.sw a5, s1, 76<br>     |
|  21|[0x80002060]<br>0x00000013|- rs1 : x28<br>                     |[0x8000041c]:c.jr t3<br> [0x80000424]:xori t3, t3, 3<br> [0x80000428]:auipc sp, 0<br> [0x8000042c]:addi sp, sp, 4076<br> [0x80000430]:andi sp, sp, 4092<br> [0x80000434]:sub t3, t3, sp<br> [0x80000438]:sw t3, 80(a5)<br>       |
|  22|[0x80002064]<br>0x00000013|- rs1 : x19<br>                     |[0x80000444]:c.jr s3<br> [0x8000044c]:xori s3, s3, 3<br> [0x80000450]:auipc sp, 0<br> [0x80000454]:addi sp, sp, 4076<br> [0x80000458]:andi sp, sp, 4092<br> [0x8000045c]:sub s3, s3, sp<br> [0x80000460]:sw s3, 84(a5)<br>       |
|  23|[0x80002068]<br>0x00000013|- rs1 : x30<br>                     |[0x8000046c]:c.jr t5<br> [0x80000474]:xori t5, t5, 3<br> [0x80000478]:auipc sp, 0<br> [0x8000047c]:addi sp, sp, 4076<br> [0x80000480]:andi sp, sp, 4092<br> [0x80000484]:sub t5, t5, sp<br> [0x80000488]:sw t5, 88(a5)<br>       |
|  24|[0x8000206c]<br>0x00000013|- rs1 : x17<br>                     |[0x80000494]:c.jr a7<br> [0x8000049c]:xori a7, a7, 3<br> [0x800004a0]:auipc sp, 0<br> [0x800004a4]:addi sp, sp, 4076<br> [0x800004a8]:andi sp, sp, 4092<br> [0x800004ac]:sub a7, a7, sp<br> [0x800004b0]:sw a7, 92(a5)<br>       |
|  25|[0x80002070]<br>0x00000013|- rs1 : x27<br>                     |[0x800004bc]:c.jr s11<br> [0x800004c4]:xori s11, s11, 3<br> [0x800004c8]:auipc sp, 0<br> [0x800004cc]:addi sp, sp, 4076<br> [0x800004d0]:andi sp, sp, 4092<br> [0x800004d4]:sub s11, s11, sp<br> [0x800004d8]:sw s11, 96(a5)<br> |
|  26|[0x80002074]<br>0x00000013|- rs1 : x6<br>                      |[0x800004e4]:c.jr t1<br> [0x800004ec]:xori t1, t1, 3<br> [0x800004f0]:auipc sp, 0<br> [0x800004f4]:addi sp, sp, 4076<br> [0x800004f8]:andi sp, sp, 4092<br> [0x800004fc]:sub t1, t1, sp<br> [0x80000500]:sw t1, 100(a5)<br>      |
|  27|[0x80002078]<br>0x00000013|- rs1 : x2<br>                      |[0x8000050c]:c.jr sp<br> [0x80000514]:xori sp, sp, 3<br> [0x80000518]:auipc gp, 0<br> [0x8000051c]:addi gp, gp, 4076<br> [0x80000520]:andi gp, gp, 4092<br> [0x80000524]:sub sp, sp, gp<br> [0x80000528]:sw sp, 104(a5)<br>      |
|  28|[0x8000207c]<br>0x00000013|- rs1 : x15<br>                     |[0x8000053c]:c.jr a5<br> [0x80000544]:xori a5, a5, 3<br> [0x80000548]:auipc gp, 0<br> [0x8000054c]:addi gp, gp, 4076<br> [0x80000550]:andi gp, gp, 4092<br> [0x80000554]:sub a5, a5, gp<br> [0x80000558]:sw a5, 0(ra)<br>        |
|  29|[0x80002080]<br>0x00000013|- rs1 : x24<br>                     |[0x80000564]:c.jr s8<br> [0x8000056c]:xori s8, s8, 3<br> [0x80000570]:auipc gp, 0<br> [0x80000574]:addi gp, gp, 4076<br> [0x80000578]:andi gp, gp, 4092<br> [0x8000057c]:sub s8, s8, gp<br> [0x80000580]:sw s8, 4(ra)<br>        |
|  30|[0x80002084]<br>0x00000013|- rs1 : x26<br>                     |[0x8000058c]:c.jr s10<br> [0x80000594]:xori s10, s10, 3<br> [0x80000598]:auipc gp, 0<br> [0x8000059c]:addi gp, gp, 4076<br> [0x800005a0]:andi gp, gp, 4092<br> [0x800005a4]:sub s10, s10, gp<br> [0x800005a8]:sw s10, 8(ra)<br>  |
|  31|[0x80002088]<br>0x00000013|- rs1 : x10<br>                     |[0x800005b4]:c.jr a0<br> [0x800005bc]:xori a0, a0, 3<br> [0x800005c0]:auipc gp, 0<br> [0x800005c4]:addi gp, gp, 4076<br> [0x800005c8]:andi gp, gp, 4092<br> [0x800005cc]:sub a0, a0, gp<br> [0x800005d0]:sw a0, 12(ra)<br>       |
