
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000880')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
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

|s.no|            signature             |            coverpoints            |                                                                                                              code                                                                                                               |
|---:|----------------------------------|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000013|- opcode : c.jr<br> - rs1 : x5<br> |[0x800003a0]:c.jr t0<br> [0x800003a8]:xori t0, t0, 3<br> [0x800003ac]:auipc s9, 0<br> [0x800003b0]:addi s9, s9, 4076<br> [0x800003b4]:andi s9, s9, 4092<br> [0x800003b8]:sub t0, t0, s9<br> [0x800003bc]:sd t0, 0(s7)<br>        |
|   2|[0x80002018]<br>0x0000000000000013|- rs1 : x11<br>                    |[0x800003c8]:c.jr a1<br> [0x800003d0]:xori a1, a1, 3<br> [0x800003d4]:auipc s9, 0<br> [0x800003d8]:addi s9, s9, 4076<br> [0x800003dc]:andi s9, s9, 4092<br> [0x800003e0]:sub a1, a1, s9<br> [0x800003e4]:sd a1, 8(s7)<br>        |
|   3|[0x80002020]<br>0x0000000000000013|- rs1 : x17<br>                    |[0x800003f0]:c.jr a7<br> [0x800003f8]:xori a7, a7, 3<br> [0x800003fc]:auipc s9, 0<br> [0x80000400]:addi s9, s9, 4076<br> [0x80000404]:andi s9, s9, 4092<br> [0x80000408]:sub a7, a7, s9<br> [0x8000040c]:sd a7, 16(s7)<br>       |
|   4|[0x80002028]<br>0x0000000000000013|- rs1 : x16<br>                    |[0x80000418]:c.jr a6<br> [0x80000420]:xori a6, a6, 3<br> [0x80000424]:auipc s9, 0<br> [0x80000428]:addi s9, s9, 4076<br> [0x8000042c]:andi s9, s9, 4092<br> [0x80000430]:sub a6, a6, s9<br> [0x80000434]:sd a6, 24(s7)<br>       |
|   5|[0x80002030]<br>0x0000000000000013|- rs1 : x26<br>                    |[0x80000440]:c.jr s10<br> [0x80000448]:xori s10, s10, 3<br> [0x8000044c]:auipc s9, 0<br> [0x80000450]:addi s9, s9, 4076<br> [0x80000454]:andi s9, s9, 4092<br> [0x80000458]:sub s10, s10, s9<br> [0x8000045c]:sd s10, 32(s7)<br> |
|   6|[0x80002038]<br>0x0000000000000013|- rs1 : x27<br>                    |[0x80000468]:c.jr s11<br> [0x80000470]:xori s11, s11, 3<br> [0x80000474]:auipc s9, 0<br> [0x80000478]:addi s9, s9, 4076<br> [0x8000047c]:andi s9, s9, 4092<br> [0x80000480]:sub s11, s11, s9<br> [0x80000484]:sd s11, 40(s7)<br> |
|   7|[0x80002040]<br>0x0000000000000013|- rs1 : x22<br>                    |[0x80000490]:c.jr s6<br> [0x80000498]:xori s6, s6, 3<br> [0x8000049c]:auipc s9, 0<br> [0x800004a0]:addi s9, s9, 4076<br> [0x800004a4]:andi s9, s9, 4092<br> [0x800004a8]:sub s6, s6, s9<br> [0x800004ac]:sd s6, 48(s7)<br>       |
|   8|[0x80002048]<br>0x0000000000000013|- rs1 : x13<br>                    |[0x800004b8]:c.jr a3<br> [0x800004c0]:xori a3, a3, 3<br> [0x800004c4]:auipc s9, 0<br> [0x800004c8]:addi s9, s9, 4076<br> [0x800004cc]:andi s9, s9, 4092<br> [0x800004d0]:sub a3, a3, s9<br> [0x800004d4]:sd a3, 56(s7)<br>       |
|   9|[0x80002050]<br>0x0000000000000013|- rs1 : x14<br>                    |[0x800004e0]:c.jr a4<br> [0x800004e8]:xori a4, a4, 3<br> [0x800004ec]:auipc s9, 0<br> [0x800004f0]:addi s9, s9, 4076<br> [0x800004f4]:andi s9, s9, 4092<br> [0x800004f8]:sub a4, a4, s9<br> [0x800004fc]:sd a4, 64(s7)<br>       |
|  10|[0x80002058]<br>0x0000000000000013|- rs1 : x4<br>                     |[0x80000508]:c.jr tp<br> [0x80000510]:xori tp, tp, 3<br> [0x80000514]:auipc s9, 0<br> [0x80000518]:addi s9, s9, 4076<br> [0x8000051c]:andi s9, s9, 4092<br> [0x80000520]:sub tp, tp, s9<br> [0x80000524]:sd tp, 72(s7)<br>       |
|  11|[0x80002060]<br>0x0000000000000013|- rs1 : x24<br>                    |[0x80000530]:c.jr s8<br> [0x80000538]:xori s8, s8, 3<br> [0x8000053c]:auipc s9, 0<br> [0x80000540]:addi s9, s9, 4076<br> [0x80000544]:andi s9, s9, 4092<br> [0x80000548]:sub s8, s8, s9<br> [0x8000054c]:sd s8, 80(s7)<br>       |
|  12|[0x80002068]<br>0x0000000000000013|- rs1 : x19<br>                    |[0x80000558]:c.jr s3<br> [0x80000560]:xori s3, s3, 3<br> [0x80000564]:auipc s9, 0<br> [0x80000568]:addi s9, s9, 4076<br> [0x8000056c]:andi s9, s9, 4092<br> [0x80000570]:sub s3, s3, s9<br> [0x80000574]:sd s3, 88(s7)<br>       |
|  13|[0x80002070]<br>0x0000000000000013|- rs1 : x8<br>                     |[0x80000580]:c.jr fp<br> [0x80000588]:xori fp, fp, 3<br> [0x8000058c]:auipc s9, 0<br> [0x80000590]:addi s9, s9, 4076<br> [0x80000594]:andi s9, s9, 4092<br> [0x80000598]:sub fp, fp, s9<br> [0x8000059c]:sd fp, 96(s7)<br>       |
|  14|[0x80002078]<br>0x0000000000000013|- rs1 : x2<br>                     |[0x800005a8]:c.jr sp<br> [0x800005b0]:xori sp, sp, 3<br> [0x800005b4]:auipc s9, 0<br> [0x800005b8]:addi s9, s9, 4076<br> [0x800005bc]:andi s9, s9, 4092<br> [0x800005c0]:sub sp, sp, s9<br> [0x800005c4]:sd sp, 104(s7)<br>      |
|  15|[0x80002080]<br>0x0000000000000013|- rs1 : x20<br>                    |[0x800005d0]:c.jr s4<br> [0x800005d8]:xori s4, s4, 3<br> [0x800005dc]:auipc s9, 0<br> [0x800005e0]:addi s9, s9, 4076<br> [0x800005e4]:andi s9, s9, 4092<br> [0x800005e8]:sub s4, s4, s9<br> [0x800005ec]:sd s4, 112(s7)<br>      |
|  16|[0x80002088]<br>0x0000000000000013|- rs1 : x6<br>                     |[0x800005f8]:c.jr t1<br> [0x80000600]:xori t1, t1, 3<br> [0x80000604]:auipc s9, 0<br> [0x80000608]:addi s9, s9, 4076<br> [0x8000060c]:andi s9, s9, 4092<br> [0x80000610]:sub t1, t1, s9<br> [0x80000614]:sd t1, 120(s7)<br>      |
|  17|[0x80002090]<br>0x0000000000000013|- rs1 : x18<br>                    |[0x80000620]:c.jr s2<br> [0x80000628]:xori s2, s2, 3<br> [0x8000062c]:auipc s9, 0<br> [0x80000630]:addi s9, s9, 4076<br> [0x80000634]:andi s9, s9, 4092<br> [0x80000638]:sub s2, s2, s9<br> [0x8000063c]:sd s2, 128(s7)<br>      |
|  18|[0x80002098]<br>0x0000000000000013|- rs1 : x21<br>                    |[0x80000648]:c.jr s5<br> [0x80000650]:xori s5, s5, 3<br> [0x80000654]:auipc s9, 0<br> [0x80000658]:addi s9, s9, 4076<br> [0x8000065c]:andi s9, s9, 4092<br> [0x80000660]:sub s5, s5, s9<br> [0x80000664]:sd s5, 136(s7)<br>      |
|  19|[0x800020a0]<br>0x0000000000000013|- rs1 : x3<br>                     |[0x80000670]:c.jr gp<br> [0x80000678]:xori gp, gp, 3<br> [0x8000067c]:auipc s9, 0<br> [0x80000680]:addi s9, s9, 4076<br> [0x80000684]:andi s9, s9, 4092<br> [0x80000688]:sub gp, gp, s9<br> [0x8000068c]:sd gp, 144(s7)<br>      |
|  20|[0x800020a8]<br>0x0000000000000013|- rs1 : x9<br>                     |[0x80000698]:c.jr s1<br> [0x800006a0]:xori s1, s1, 3<br> [0x800006a4]:auipc s9, 0<br> [0x800006a8]:addi s9, s9, 4076<br> [0x800006ac]:andi s9, s9, 4092<br> [0x800006b0]:sub s1, s1, s9<br> [0x800006b4]:sd s1, 152(s7)<br>      |
|  21|[0x800020b0]<br>0x0000000000000013|- rs1 : x30<br>                    |[0x800006c0]:c.jr t5<br> [0x800006c8]:xori t5, t5, 3<br> [0x800006cc]:auipc s9, 0<br> [0x800006d0]:addi s9, s9, 4076<br> [0x800006d4]:andi s9, s9, 4092<br> [0x800006d8]:sub t5, t5, s9<br> [0x800006dc]:sd t5, 160(s7)<br>      |
|  22|[0x800020b8]<br>0x0000000000000013|- rs1 : x1<br>                     |[0x800006e8]:c.jr ra<br> [0x800006f0]:xori ra, ra, 3<br> [0x800006f4]:auipc s9, 0<br> [0x800006f8]:addi s9, s9, 4076<br> [0x800006fc]:andi s9, s9, 4092<br> [0x80000700]:sub ra, ra, s9<br> [0x80000704]:sd ra, 168(s7)<br>      |
|  23|[0x800020c0]<br>0x0000000000000013|- rs1 : x7<br>                     |[0x80000710]:c.jr t2<br> [0x80000718]:xori t2, t2, 3<br> [0x8000071c]:auipc s9, 0<br> [0x80000720]:addi s9, s9, 4076<br> [0x80000724]:andi s9, s9, 4092<br> [0x80000728]:sub t2, t2, s9<br> [0x8000072c]:sd t2, 176(s7)<br>      |
|  24|[0x800020c8]<br>0x0000000000000013|- rs1 : x15<br>                    |[0x80000738]:c.jr a5<br> [0x80000740]:xori a5, a5, 3<br> [0x80000744]:auipc s9, 0<br> [0x80000748]:addi s9, s9, 4076<br> [0x8000074c]:andi s9, s9, 4092<br> [0x80000750]:sub a5, a5, s9<br> [0x80000754]:sd a5, 184(s7)<br>      |
|  25|[0x800020d0]<br>0x0000000000000013|- rs1 : x12<br>                    |[0x80000760]:c.jr a2<br> [0x80000768]:xori a2, a2, 3<br> [0x8000076c]:auipc s9, 0<br> [0x80000770]:addi s9, s9, 4076<br> [0x80000774]:andi s9, s9, 4092<br> [0x80000778]:sub a2, a2, s9<br> [0x8000077c]:sd a2, 192(s7)<br>      |
|  26|[0x800020d8]<br>0x0000000000000013|- rs1 : x31<br>                    |[0x80000788]:c.jr t6<br> [0x80000790]:xori t6, t6, 3<br> [0x80000794]:auipc s9, 0<br> [0x80000798]:addi s9, s9, 4076<br> [0x8000079c]:andi s9, s9, 4092<br> [0x800007a0]:sub t6, t6, s9<br> [0x800007a4]:sd t6, 200(s7)<br>      |
|  27|[0x800020e0]<br>0x0000000000000013|- rs1 : x29<br>                    |[0x800007b0]:c.jr t4<br> [0x800007b8]:xori t4, t4, 3<br> [0x800007bc]:auipc sp, 0<br> [0x800007c0]:addi sp, sp, 4076<br> [0x800007c4]:andi sp, sp, 4092<br> [0x800007c8]:sub t4, t4, sp<br> [0x800007cc]:sd t4, 208(s7)<br>      |
|  28|[0x800020e8]<br>0x0000000000000013|- rs1 : x25<br>                    |[0x800007e0]:c.jr s9<br> [0x800007e8]:xori s9, s9, 3<br> [0x800007ec]:auipc sp, 0<br> [0x800007f0]:addi sp, sp, 4076<br> [0x800007f4]:andi sp, sp, 4092<br> [0x800007f8]:sub s9, s9, sp<br> [0x800007fc]:sd s9, 0(ra)<br>        |
|  29|[0x800020f0]<br>0x0000000000000013|- rs1 : x28<br>                    |[0x80000808]:c.jr t3<br> [0x80000810]:xori t3, t3, 3<br> [0x80000814]:auipc sp, 0<br> [0x80000818]:addi sp, sp, 4076<br> [0x8000081c]:andi sp, sp, 4092<br> [0x80000820]:sub t3, t3, sp<br> [0x80000824]:sd t3, 8(ra)<br>        |
|  30|[0x800020f8]<br>0x0000000000000013|- rs1 : x23<br>                    |[0x80000830]:c.jr s7<br> [0x80000838]:xori s7, s7, 3<br> [0x8000083c]:auipc sp, 0<br> [0x80000840]:addi sp, sp, 4076<br> [0x80000844]:andi sp, sp, 4092<br> [0x80000848]:sub s7, s7, sp<br> [0x8000084c]:sd s7, 16(ra)<br>       |
|  31|[0x80002100]<br>0x0000000000000013|- rs1 : x10<br>                    |[0x80000858]:c.jr a0<br> [0x80000860]:xori a0, a0, 3<br> [0x80000864]:auipc sp, 0<br> [0x80000868]:addi sp, sp, 4076<br> [0x8000086c]:andi sp, sp, 4092<br> [0x80000870]:sub a0, a0, sp<br> [0x80000874]:sd a0, 24(ra)<br>       |
