
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000840')]      |
| SIG_REGION                | [('0x80003208', '0x80003300', '31 dwords')]      |
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

|s.no|            signature             |            coverpoints             |                                                                                                              code                                                                                                              |
|---:|----------------------------------|------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000013|- opcode : c.jr<br> - rs1 : x31<br> |[0x800003a0]:c.jr t6<br> [0x800003a8]:xori t6, t6, 3<br> [0x800003ac]:auipc fp, 0<br> [0x800003b0]:addi fp, fp, 4076<br> [0x800003b4]:c.andi s0, 60<br> [0x800003b6]:sub t6, t6, fp<br> [0x800003ba]:sd t6, 0(t0)<br>           |
|   2|[0x80003210]<br>0x0000000000000011|- rs1 : x12<br>                     |[0x800003c6]:c.jr a2<br> [0x800003ce]:xori a2, a2, 3<br> [0x800003d2]:auipc fp, 0<br> [0x800003d6]:addi fp, fp, 4076<br> [0x800003da]:c.andi s0, 60<br> [0x800003dc]:c.sub a2, s0<br> [0x800003de]:sd a2, 8(t0)<br>             |
|   3|[0x80003218]<br>0x0000000000000011|- rs1 : x13<br>                     |[0x800003ea]:c.jr a3<br> [0x800003f2]:xori a3, a3, 3<br> [0x800003f6]:auipc fp, 0<br> [0x800003fa]:addi fp, fp, 4076<br> [0x800003fe]:c.andi s0, 60<br> [0x80000400]:c.sub a3, s0<br> [0x80000402]:sd a3, 16(t0)<br>            |
|   4|[0x80003220]<br>0x0000000000000011|- rs1 : x18<br>                     |[0x8000040e]:c.jr s2<br> [0x80000416]:xori s2, s2, 3<br> [0x8000041a]:auipc fp, 0<br> [0x8000041e]:addi fp, fp, 4076<br> [0x80000422]:c.andi s0, 60<br> [0x80000424]:sub s2, s2, fp<br> [0x80000428]:sd s2, 24(t0)<br>          |
|   5|[0x80003228]<br>0x0000000000000013|- rs1 : x11<br>                     |[0x80000434]:c.jr a1<br> [0x8000043c]:xori a1, a1, 3<br> [0x80000440]:auipc fp, 0<br> [0x80000444]:addi fp, fp, 4076<br> [0x80000448]:c.andi s0, 60<br> [0x8000044a]:c.sub a1, s0<br> [0x8000044c]:sd a1, 32(t0)<br>            |
|   6|[0x80003230]<br>0x0000000000000013|- rs1 : x14<br>                     |[0x80000458]:c.jr a4<br> [0x80000460]:xori a4, a4, 3<br> [0x80000464]:auipc fp, 0<br> [0x80000468]:addi fp, fp, 4076<br> [0x8000046c]:c.andi s0, 60<br> [0x8000046e]:c.sub a4, s0<br> [0x80000470]:sd a4, 40(t0)<br>            |
|   7|[0x80003238]<br>0x0000000000000013|- rs1 : x19<br>                     |[0x8000047c]:c.jr s3<br> [0x80000484]:xori s3, s3, 3<br> [0x80000488]:auipc fp, 0<br> [0x8000048c]:addi fp, fp, 4076<br> [0x80000490]:c.andi s0, 60<br> [0x80000492]:sub s3, s3, fp<br> [0x80000496]:sd s3, 48(t0)<br>          |
|   8|[0x80003240]<br>0x0000000000000011|- rs1 : x28<br>                     |[0x800004a2]:c.jr t3<br> [0x800004aa]:xori t3, t3, 3<br> [0x800004ae]:auipc fp, 0<br> [0x800004b2]:addi fp, fp, 4076<br> [0x800004b6]:c.andi s0, 60<br> [0x800004b8]:sub t3, t3, fp<br> [0x800004bc]:sd t3, 56(t0)<br>          |
|   9|[0x80003248]<br>0x0000000000000013|- rs1 : x1<br>                      |[0x800004c8]:c.jr ra<br> [0x800004d0]:xori ra, ra, 3<br> [0x800004d4]:auipc fp, 0<br> [0x800004d8]:addi fp, fp, 4076<br> [0x800004dc]:c.andi s0, 60<br> [0x800004de]:sub ra, ra, fp<br> [0x800004e2]:sd ra, 64(t0)<br>          |
|  10|[0x80003250]<br>0x0000000000000011|- rs1 : x2<br>                      |[0x800004ee]:c.jr sp<br> [0x800004f6]:xori sp, sp, 3<br> [0x800004fa]:auipc fp, 0<br> [0x800004fe]:addi fp, fp, 4076<br> [0x80000502]:c.andi s0, 60<br> [0x80000504]:sub sp, sp, fp<br> [0x80000508]:sd sp, 72(t0)<br>          |
|  11|[0x80003258]<br>0x0000000000000013|- rs1 : x3<br>                      |[0x80000514]:c.jr gp<br> [0x8000051c]:xori gp, gp, 3<br> [0x80000520]:auipc fp, 0<br> [0x80000524]:addi fp, fp, 4076<br> [0x80000528]:c.andi s0, 60<br> [0x8000052a]:sub gp, gp, fp<br> [0x8000052e]:sd gp, 80(t0)<br>          |
|  12|[0x80003260]<br>0x0000000000000011|- rs1 : x30<br>                     |[0x8000053a]:c.jr t5<br> [0x80000542]:xori t5, t5, 3<br> [0x80000546]:auipc fp, 0<br> [0x8000054a]:addi fp, fp, 4076<br> [0x8000054e]:c.andi s0, 60<br> [0x80000550]:sub t5, t5, fp<br> [0x80000554]:sd t5, 88(t0)<br>          |
|  13|[0x80003268]<br>0x0000000000000013|- rs1 : x6<br>                      |[0x80000560]:c.jr t1<br> [0x80000568]:xori t1, t1, 3<br> [0x8000056c]:auipc fp, 0<br> [0x80000570]:addi fp, fp, 4076<br> [0x80000574]:c.andi s0, 60<br> [0x80000576]:sub t1, t1, fp<br> [0x8000057a]:sd t1, 96(t0)<br>          |
|  14|[0x80003270]<br>0x0000000000000011|- rs1 : x17<br>                     |[0x80000586]:c.jr a7<br> [0x8000058e]:xori a7, a7, 3<br> [0x80000592]:auipc fp, 0<br> [0x80000596]:addi fp, fp, 4076<br> [0x8000059a]:c.andi s0, 60<br> [0x8000059c]:sub a7, a7, fp<br> [0x800005a0]:sd a7, 104(t0)<br>         |
|  15|[0x80003278]<br>0x0000000000000013|- rs1 : x23<br>                     |[0x800005ac]:c.jr s7<br> [0x800005b4]:xori s7, s7, 3<br> [0x800005b8]:auipc fp, 0<br> [0x800005bc]:addi fp, fp, 4076<br> [0x800005c0]:c.andi s0, 60<br> [0x800005c2]:sub s7, s7, fp<br> [0x800005c6]:sd s7, 112(t0)<br>         |
|  16|[0x80003280]<br>0x0000000000000011|- rs1 : x15<br>                     |[0x800005d2]:c.jr a5<br> [0x800005da]:xori a5, a5, 3<br> [0x800005de]:auipc fp, 0<br> [0x800005e2]:addi fp, fp, 4076<br> [0x800005e6]:c.andi s0, 60<br> [0x800005e8]:c.sub a5, s0<br> [0x800005ea]:sd a5, 120(t0)<br>           |
|  17|[0x80003288]<br>0x0000000000000011|- rs1 : x4<br>                      |[0x800005f6]:c.jr tp<br> [0x800005fe]:xori tp, tp, 3<br> [0x80000602]:auipc fp, 0<br> [0x80000606]:addi fp, fp, 4076<br> [0x8000060a]:c.andi s0, 60<br> [0x8000060c]:sub tp, tp, fp<br> [0x80000610]:sd tp, 128(t0)<br>         |
|  18|[0x80003290]<br>0x0000000000000013|- rs1 : x16<br>                     |[0x8000061c]:c.jr a6<br> [0x80000624]:xori a6, a6, 3<br> [0x80000628]:auipc fp, 0<br> [0x8000062c]:addi fp, fp, 4076<br> [0x80000630]:c.andi s0, 60<br> [0x80000632]:sub a6, a6, fp<br> [0x80000636]:sd a6, 136(t0)<br>         |
|  19|[0x80003298]<br>0x0000000000000011|- rs1 : x26<br>                     |[0x80000642]:c.jr s10<br> [0x8000064a]:xori s10, s10, 3<br> [0x8000064e]:auipc fp, 0<br> [0x80000652]:addi fp, fp, 4076<br> [0x80000656]:c.andi s0, 60<br> [0x80000658]:sub s10, s10, fp<br> [0x8000065c]:sd s10, 144(t0)<br>   |
|  20|[0x800032a0]<br>0x0000000000000013|- rs1 : x7<br>                      |[0x80000668]:c.jr t2<br> [0x80000670]:xori t2, t2, 3<br> [0x80000674]:auipc fp, 0<br> [0x80000678]:addi fp, fp, 4076<br> [0x8000067c]:c.andi s0, 60<br> [0x8000067e]:sub t2, t2, fp<br> [0x80000682]:sd t2, 152(t0)<br>         |
|  21|[0x800032a8]<br>0x0000000000000011|- rs1 : x25<br>                     |[0x8000068e]:c.jr s9<br> [0x80000696]:xori s9, s9, 3<br> [0x8000069a]:auipc fp, 0<br> [0x8000069e]:addi fp, fp, 4076<br> [0x800006a2]:c.andi s0, 60<br> [0x800006a4]:sub s9, s9, fp<br> [0x800006a8]:sd s9, 160(t0)<br>         |
|  22|[0x800032b0]<br>0x0000000000000013|- rs1 : x21<br>                     |[0x800006b4]:c.jr s5<br> [0x800006bc]:xori s5, s5, 3<br> [0x800006c0]:auipc fp, 0<br> [0x800006c4]:addi fp, fp, 4076<br> [0x800006c8]:c.andi s0, 60<br> [0x800006ca]:sub s5, s5, fp<br> [0x800006ce]:sd s5, 168(t0)<br>         |
|  23|[0x800032b8]<br>0x0000000000000011|- rs1 : x22<br>                     |[0x800006da]:c.jr s6<br> [0x800006e2]:xori s6, s6, 3<br> [0x800006e6]:auipc fp, 0<br> [0x800006ea]:addi fp, fp, 4076<br> [0x800006ee]:c.andi s0, 60<br> [0x800006f0]:sub s6, s6, fp<br> [0x800006f4]:sd s6, 176(t0)<br>         |
|  24|[0x800032c0]<br>0x0000000000000013|- rs1 : x24<br>                     |[0x80000700]:c.jr s8<br> [0x80000708]:xori s8, s8, 3<br> [0x8000070c]:auipc fp, 0<br> [0x80000710]:addi fp, fp, 4076<br> [0x80000714]:c.andi s0, 60<br> [0x80000716]:sub s8, s8, fp<br> [0x8000071a]:sd s8, 184(t0)<br>         |
|  25|[0x800032c8]<br>0x0000000000000011|- rs1 : x20<br>                     |[0x80000726]:c.jr s4<br> [0x8000072e]:xori s4, s4, 3<br> [0x80000732]:auipc fp, 0<br> [0x80000736]:addi fp, fp, 4076<br> [0x8000073a]:c.andi s0, 60<br> [0x8000073c]:sub s4, s4, fp<br> [0x80000740]:sd s4, 192(t0)<br>         |
|  26|[0x800032d0]<br>0x0000000000000013|- rs1 : x9<br>                      |[0x8000074c]:c.jr s1<br> [0x80000754]:xori s1, s1, 3<br> [0x80000758]:auipc fp, 0<br> [0x8000075c]:addi fp, fp, 4076<br> [0x80000760]:c.andi s0, 60<br> [0x80000762]:c.sub s1, s0<br> [0x80000764]:sd s1, 200(t0)<br>           |
|  27|[0x800032d8]<br>0x0000000000000013|- rs1 : x29<br>                     |[0x80000770]:c.jr t4<br> [0x80000778]:xori t4, t4, 3<br> [0x8000077c]:auipc sp, 0<br> [0x80000780]:addi sp, sp, 4076<br> [0x80000784]:andi sp, sp, 4092<br> [0x80000788]:sub t4, t4, sp<br> [0x8000078c]:sd t4, 208(t0)<br>     |
|  28|[0x800032e0]<br>0x0000000000000013|- rs1 : x27<br>                     |[0x800007a0]:c.jr s11<br> [0x800007a8]:xori s11, s11, 3<br> [0x800007ac]:auipc sp, 0<br> [0x800007b0]:addi sp, sp, 4076<br> [0x800007b4]:andi sp, sp, 4092<br> [0x800007b8]:sub s11, s11, sp<br> [0x800007bc]:sd s11, 0(ra)<br> |
|  29|[0x800032e8]<br>0x0000000000000013|- rs1 : x5<br>                      |[0x800007c8]:c.jr t0<br> [0x800007d0]:xori t0, t0, 3<br> [0x800007d4]:auipc sp, 0<br> [0x800007d8]:addi sp, sp, 4076<br> [0x800007dc]:andi sp, sp, 4092<br> [0x800007e0]:sub t0, t0, sp<br> [0x800007e4]:sd t0, 8(ra)<br>       |
|  30|[0x800032f0]<br>0x0000000000000013|- rs1 : x8<br>                      |[0x800007f0]:c.jr fp<br> [0x800007f8]:xori fp, fp, 3<br> [0x800007fc]:auipc sp, 0<br> [0x80000800]:addi sp, sp, 4076<br> [0x80000804]:andi sp, sp, 4092<br> [0x80000808]:sub fp, fp, sp<br> [0x8000080c]:sd fp, 16(ra)<br>      |
|  31|[0x800032f8]<br>0x0000000000000013|- rs1 : x10<br>                     |[0x80000818]:c.jr a0<br> [0x80000820]:xori a0, a0, 3<br> [0x80000824]:auipc sp, 0<br> [0x80000828]:addi sp, sp, 4076<br> [0x8000082c]:andi sp, sp, 4092<br> [0x80000830]:sub a0, a0, sp<br> [0x80000834]:sd a0, 24(ra)<br>      |