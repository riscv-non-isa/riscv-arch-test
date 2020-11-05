
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000870')]      |
| SIG_REGION                | [('0x80003204', '0x80003308', '32 dwords')]      |
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

|s.no|            signature             |            coverpoints             |                                                                                                               code                                                                                                               |
|---:|----------------------------------|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000013|- opcode : c.jr<br> - rs1 : x12<br> |[0x800003a0]:c.jr a2<br> [0x800003a8]:xori a2, a2, 3<br> [0x800003ac]:auipc s5, 0<br> [0x800003b0]:addi s5, s5, 4076<br> [0x800003b4]:andi s5, s5, 4092<br> [0x800003b8]:sub a2, a2, s5<br> [0x800003bc]:c.sd a4, a2, 0<br>       |
|   2|[0x80003218]<br>0x0000000000000011|- rs1 : x16<br>                     |[0x800003c6]:c.jr a6<br> [0x800003ce]:xori a6, a6, 3<br> [0x800003d2]:auipc s5, 0<br> [0x800003d6]:addi s5, s5, 4076<br> [0x800003da]:andi s5, s5, 4092<br> [0x800003de]:sub a6, a6, s5<br> [0x800003e2]:sd a6, 8(a4)<br>         |
|   3|[0x80003220]<br>0x0000000000000011|- rs1 : x7<br>                      |[0x800003ee]:c.jr t2<br> [0x800003f6]:xori t2, t2, 3<br> [0x800003fa]:auipc s5, 0<br> [0x800003fe]:addi s5, s5, 4076<br> [0x80000402]:andi s5, s5, 4092<br> [0x80000406]:sub t2, t2, s5<br> [0x8000040a]:sd t2, 16(a4)<br>        |
|   4|[0x80003228]<br>0x0000000000000011|- rs1 : x6<br>                      |[0x80000416]:c.jr t1<br> [0x8000041e]:xori t1, t1, 3<br> [0x80000422]:auipc s5, 0<br> [0x80000426]:addi s5, s5, 4076<br> [0x8000042a]:andi s5, s5, 4092<br> [0x8000042e]:sub t1, t1, s5<br> [0x80000432]:sd t1, 24(a4)<br>        |
|   5|[0x80003230]<br>0x0000000000000011|- rs1 : x15<br>                     |[0x8000043e]:c.jr a5<br> [0x80000446]:xori a5, a5, 3<br> [0x8000044a]:auipc s5, 0<br> [0x8000044e]:addi s5, s5, 4076<br> [0x80000452]:andi s5, s5, 4092<br> [0x80000456]:sub a5, a5, s5<br> [0x8000045a]:c.sd a4, a5, 32<br>      |
|   6|[0x80003238]<br>0x0000000000000013|- rs1 : x23<br>                     |[0x80000464]:c.jr s7<br> [0x8000046c]:xori s7, s7, 3<br> [0x80000470]:auipc s5, 0<br> [0x80000474]:addi s5, s5, 4076<br> [0x80000478]:andi s5, s5, 4092<br> [0x8000047c]:sub s7, s7, s5<br> [0x80000480]:sd s7, 40(a4)<br>        |
|   7|[0x80003240]<br>0x0000000000000013|- rs1 : x31<br>                     |[0x8000048c]:c.jr t6<br> [0x80000494]:xori t6, t6, 3<br> [0x80000498]:auipc s5, 0<br> [0x8000049c]:addi s5, s5, 4076<br> [0x800004a0]:andi s5, s5, 4092<br> [0x800004a4]:sub t6, t6, s5<br> [0x800004a8]:sd t6, 48(a4)<br>        |
|   8|[0x80003248]<br>0x0000000000000013|- rs1 : x29<br>                     |[0x800004b4]:c.jr t4<br> [0x800004bc]:xori t4, t4, 3<br> [0x800004c0]:auipc s5, 0<br> [0x800004c4]:addi s5, s5, 4076<br> [0x800004c8]:andi s5, s5, 4092<br> [0x800004cc]:sub t4, t4, s5<br> [0x800004d0]:sd t4, 56(a4)<br>        |
|   9|[0x80003250]<br>0x0000000000000013|- rs1 : x19<br>                     |[0x800004dc]:c.jr s3<br> [0x800004e4]:xori s3, s3, 3<br> [0x800004e8]:auipc s5, 0<br> [0x800004ec]:addi s5, s5, 4076<br> [0x800004f0]:andi s5, s5, 4092<br> [0x800004f4]:sub s3, s3, s5<br> [0x800004f8]:sd s3, 64(a4)<br>        |
|  10|[0x80003258]<br>0x0000000000000013|- rs1 : x30<br>                     |[0x80000504]:c.jr t5<br> [0x8000050c]:xori t5, t5, 3<br> [0x80000510]:auipc s5, 0<br> [0x80000514]:addi s5, s5, 4076<br> [0x80000518]:andi s5, s5, 4092<br> [0x8000051c]:sub t5, t5, s5<br> [0x80000520]:sd t5, 72(a4)<br>        |
|  11|[0x80003260]<br>0x0000000000000013|- rs1 : x5<br>                      |[0x8000052c]:c.jr t0<br> [0x80000534]:xori t0, t0, 3<br> [0x80000538]:auipc s5, 0<br> [0x8000053c]:addi s5, s5, 4076<br> [0x80000540]:andi s5, s5, 4092<br> [0x80000544]:sub t0, t0, s5<br> [0x80000548]:sd t0, 80(a4)<br>        |
|  12|[0x80003268]<br>0x0000000000000013|- rs1 : x4<br>                      |[0x80000554]:c.jr tp<br> [0x8000055c]:xori tp, tp, 3<br> [0x80000560]:auipc s5, 0<br> [0x80000564]:addi s5, s5, 4076<br> [0x80000568]:andi s5, s5, 4092<br> [0x8000056c]:sub tp, tp, s5<br> [0x80000570]:sd tp, 88(a4)<br>        |
|  13|[0x80003270]<br>0x0000000000000013|- rs1 : x27<br>                     |[0x8000057c]:c.jr s11<br> [0x80000584]:xori s11, s11, 3<br> [0x80000588]:auipc s5, 0<br> [0x8000058c]:addi s5, s5, 4076<br> [0x80000590]:andi s5, s5, 4092<br> [0x80000594]:sub s11, s11, s5<br> [0x80000598]:sd s11, 96(a4)<br>  |
|  14|[0x80003278]<br>0x0000000000000013|- rs1 : x9<br>                      |[0x800005a4]:c.jr s1<br> [0x800005ac]:xori s1, s1, 3<br> [0x800005b0]:auipc s5, 0<br> [0x800005b4]:addi s5, s5, 4076<br> [0x800005b8]:andi s5, s5, 4092<br> [0x800005bc]:sub s1, s1, s5<br> [0x800005c0]:c.sd a4, s1, 104<br>     |
|  15|[0x80003280]<br>0x0000000000000011|- rs1 : x8<br>                      |[0x800005ca]:c.jr fp<br> [0x800005d2]:xori fp, fp, 3<br> [0x800005d6]:auipc s5, 0<br> [0x800005da]:addi s5, s5, 4076<br> [0x800005de]:andi s5, s5, 4092<br> [0x800005e2]:sub fp, fp, s5<br> [0x800005e6]:c.sd a4, s0, 112<br>     |
|  16|[0x80003288]<br>0x0000000000000013|- rs1 : x20<br>                     |[0x800005f0]:c.jr s4<br> [0x800005f8]:xori s4, s4, 3<br> [0x800005fc]:auipc s5, 0<br> [0x80000600]:addi s5, s5, 4076<br> [0x80000604]:andi s5, s5, 4092<br> [0x80000608]:sub s4, s4, s5<br> [0x8000060c]:sd s4, 120(a4)<br>       |
|  17|[0x80003290]<br>0x0000000000000013|- rs1 : x13<br>                     |[0x80000618]:c.jr a3<br> [0x80000620]:xori a3, a3, 3<br> [0x80000624]:auipc s5, 0<br> [0x80000628]:addi s5, s5, 4076<br> [0x8000062c]:andi s5, s5, 4092<br> [0x80000630]:sub a3, a3, s5<br> [0x80000634]:c.sd a4, a3, 128<br>     |
|  18|[0x80003298]<br>0x0000000000000011|- rs1 : x26<br>                     |[0x8000063e]:c.jr s10<br> [0x80000646]:xori s10, s10, 3<br> [0x8000064a]:auipc s5, 0<br> [0x8000064e]:addi s5, s5, 4076<br> [0x80000652]:andi s5, s5, 4092<br> [0x80000656]:sub s10, s10, s5<br> [0x8000065a]:sd s10, 136(a4)<br> |
|  19|[0x800032a0]<br>0x0000000000000011|- rs1 : x18<br>                     |[0x80000666]:c.jr s2<br> [0x8000066e]:xori s2, s2, 3<br> [0x80000672]:auipc s5, 0<br> [0x80000676]:addi s5, s5, 4076<br> [0x8000067a]:andi s5, s5, 4092<br> [0x8000067e]:sub s2, s2, s5<br> [0x80000682]:sd s2, 144(a4)<br>       |
|  20|[0x800032a8]<br>0x0000000000000011|- rs1 : x25<br>                     |[0x8000068e]:c.jr s9<br> [0x80000696]:xori s9, s9, 3<br> [0x8000069a]:auipc s5, 0<br> [0x8000069e]:addi s5, s5, 4076<br> [0x800006a2]:andi s5, s5, 4092<br> [0x800006a6]:sub s9, s9, s5<br> [0x800006aa]:sd s9, 152(a4)<br>       |
|  21|[0x800032b0]<br>0x0000000000000011|- rs1 : x28<br>                     |[0x800006b6]:c.jr t3<br> [0x800006be]:xori t3, t3, 3<br> [0x800006c2]:auipc s5, 0<br> [0x800006c6]:addi s5, s5, 4076<br> [0x800006ca]:andi s5, s5, 4092<br> [0x800006ce]:sub t3, t3, s5<br> [0x800006d2]:sd t3, 160(a4)<br>       |
|  22|[0x800032b8]<br>0x0000000000000011|- rs1 : x1<br>                      |[0x800006de]:c.jr ra<br> [0x800006e6]:xori ra, ra, 3<br> [0x800006ea]:auipc s5, 0<br> [0x800006ee]:addi s5, s5, 4076<br> [0x800006f2]:andi s5, s5, 4092<br> [0x800006f6]:sub ra, ra, s5<br> [0x800006fa]:sd ra, 168(a4)<br>       |
|  23|[0x800032c0]<br>0x0000000000000011|- rs1 : x17<br>                     |[0x80000706]:c.jr a7<br> [0x8000070e]:xori a7, a7, 3<br> [0x80000712]:auipc s5, 0<br> [0x80000716]:addi s5, s5, 4076<br> [0x8000071a]:andi s5, s5, 4092<br> [0x8000071e]:sub a7, a7, s5<br> [0x80000722]:sd a7, 176(a4)<br>       |
|  24|[0x800032c8]<br>0x0000000000000011|- rs1 : x3<br>                      |[0x8000072e]:c.jr gp<br> [0x80000736]:xori gp, gp, 3<br> [0x8000073a]:auipc s5, 0<br> [0x8000073e]:addi s5, s5, 4076<br> [0x80000742]:andi s5, s5, 4092<br> [0x80000746]:sub gp, gp, s5<br> [0x8000074a]:sd gp, 184(a4)<br>       |
|  25|[0x800032d0]<br>0x0000000000000011|- rs1 : x11<br>                     |[0x80000756]:c.jr a1<br> [0x8000075e]:xori a1, a1, 3<br> [0x80000762]:auipc s5, 0<br> [0x80000766]:addi s5, s5, 4076<br> [0x8000076a]:andi s5, s5, 4092<br> [0x8000076e]:sub a1, a1, s5<br> [0x80000772]:c.sd a4, a1, 192<br>     |
|  26|[0x800032d8]<br>0x0000000000000013|- rs1 : x2<br>                      |[0x8000077c]:c.jr sp<br> [0x80000784]:xori sp, sp, 3<br> [0x80000788]:auipc s5, 0<br> [0x8000078c]:addi s5, s5, 4076<br> [0x80000790]:andi s5, s5, 4092<br> [0x80000794]:sub sp, sp, s5<br> [0x80000798]:sd sp, 200(a4)<br>       |
|  27|[0x800032e0]<br>0x0000000000000013|- rs1 : x22<br>                     |[0x800007a4]:c.jr s6<br> [0x800007ac]:xori s6, s6, 3<br> [0x800007b0]:auipc sp, 0<br> [0x800007b4]:addi sp, sp, 4076<br> [0x800007b8]:andi sp, sp, 4092<br> [0x800007bc]:sub s6, s6, sp<br> [0x800007c0]:sd s6, 208(a4)<br>       |
|  28|[0x800032e8]<br>0x0000000000000013|- rs1 : x14<br>                     |[0x800007d4]:c.jr a4<br> [0x800007dc]:xori a4, a4, 3<br> [0x800007e0]:auipc sp, 0<br> [0x800007e4]:addi sp, sp, 4076<br> [0x800007e8]:andi sp, sp, 4092<br> [0x800007ec]:sub a4, a4, sp<br> [0x800007f0]:sd a4, 0(ra)<br>         |
|  29|[0x800032f0]<br>0x0000000000000013|- rs1 : x21<br>                     |[0x800007fc]:c.jr s5<br> [0x80000804]:xori s5, s5, 3<br> [0x80000808]:auipc sp, 0<br> [0x8000080c]:addi sp, sp, 4076<br> [0x80000810]:andi sp, sp, 4092<br> [0x80000814]:sub s5, s5, sp<br> [0x80000818]:sd s5, 8(ra)<br>         |
|  30|[0x800032f8]<br>0x0000000000000013|- rs1 : x24<br>                     |[0x80000824]:c.jr s8<br> [0x8000082c]:xori s8, s8, 3<br> [0x80000830]:auipc sp, 0<br> [0x80000834]:addi sp, sp, 4076<br> [0x80000838]:andi sp, sp, 4092<br> [0x8000083c]:sub s8, s8, sp<br> [0x80000840]:sd s8, 16(ra)<br>        |
|  31|[0x80003300]<br>0x0000000000000013|- rs1 : x10<br>                     |[0x8000084c]:c.jr a0<br> [0x80000854]:xori a0, a0, 3<br> [0x80000858]:auipc sp, 0<br> [0x8000085c]:addi sp, sp, 4076<br> [0x80000860]:andi sp, sp, 4092<br> [0x80000864]:sub a0, a0, sp<br> [0x80000868]:sd a0, 24(ra)<br>        |
