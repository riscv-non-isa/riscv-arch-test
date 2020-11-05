
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000790')]      |
| SIG_REGION                | [('0x80003204', '0x800033a0', '103 words')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 100      |
| STAT1                     | 100      |
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

|s.no|        signature         |                                                             coverpoints                                                              |                             code                             |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0x08000010|- opcode : c.xor<br> - rs1 : x9<br> - rs2 : x13<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 134217728<br> - rs1_val == 16<br> |[0x80000108]:c.xor s1, a3<br> [0x8000010a]:sw s1, 0(ra)<br>   |
|   2|[0x80003214]<br>0x00000000|- rs1 : x14<br> - rs2 : x14<br> - rs1 == rs2<br> - rs2_val < 0<br>                                                                    |[0x8000011a]:c.xor a4, a4<br> [0x8000011c]:sw a4, 4(ra)<br>   |
|   3|[0x80003218]<br>0x80040000|- rs1 : x10<br> - rs2 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 262144<br> - rs1_val == -2147483648<br>                  |[0x80000128]:c.xor a0, a1<br> [0x8000012a]:sw a0, 8(ra)<br>   |
|   4|[0x8000321c]<br>0xFFFFFFF7|- rs1 : x13<br> - rs2 : x10<br> - rs1_val == 0<br> - rs2_val == -9<br>                                                                |[0x80000136]:c.xor a3, a0<br> [0x80000138]:sw a3, 12(ra)<br>  |
|   5|[0x80003220]<br>0x2AAAAAAA|- rs1 : x15<br> - rs2 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1431655765<br> - rs1_val == 2147483647<br>               |[0x8000014c]:c.xor a5, s0<br> [0x8000014e]:sw a5, 16(ra)<br>  |
|   6|[0x80003224]<br>0xFFFFFFFB|- rs1 : x8<br> - rs2 : x15<br> - rs1_val == 1<br>                                                                                     |[0x8000015a]:c.xor s0, a5<br> [0x8000015c]:sw fp, 20(ra)<br>  |
|   7|[0x80003228]<br>0x7FDFFFFF|- rs1 : x11<br> - rs2 : x12<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2097153<br>                |[0x8000016c]:c.xor a1, a2<br> [0x8000016e]:sw a1, 24(ra)<br>  |
|   8|[0x8000322c]<br>0xFFBFFFFF|- rs1 : x12<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == -4194305<br>                                                           |[0x8000017e]:c.xor a2, s1<br> [0x80000180]:sw a2, 28(ra)<br>  |
|   9|[0x80003230]<br>0x80000080|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -129<br>                                                    |[0x80000190]:c.xor a0, a1<br> [0x80000192]:sw a0, 32(ra)<br>  |
|  10|[0x80003234]<br>0xFFFFFBFE|- rs2_val == 1<br> - rs1_val == -1025<br>                                                                                             |[0x8000019e]:c.xor a0, a1<br> [0x800001a0]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0xC0000002|- rs1_val == 2<br>                                                                                                                    |[0x800001ac]:c.xor a0, a1<br> [0x800001ae]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0x00000024|- rs2_val == 32<br> - rs1_val == 4<br>                                                                                                |[0x800001ba]:c.xor a0, a1<br> [0x800001bc]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0xFFF7FFF7|- rs2_val == -524289<br> - rs1_val == 8<br>                                                                                           |[0x800001cc]:c.xor a0, a1<br> [0x800001ce]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0x00200020|- rs2_val == 2097152<br> - rs1_val == 32<br>                                                                                          |[0x800001da]:c.xor a0, a1<br> [0x800001dc]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0x7FFFFFBF|- rs1_val == 64<br>                                                                                                                   |[0x800001ec]:c.xor a0, a1<br> [0x800001ee]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x00000088|- rs2_val == 8<br> - rs1_val == 128<br>                                                                                               |[0x800001fa]:c.xor a0, a1<br> [0x800001fc]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x3FFFFEFF|- rs1_val == 256<br>                                                                                                                  |[0x8000020c]:c.xor a0, a1<br> [0x8000020e]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0xFFDFFDFF|- rs2_val == -2097153<br> - rs1_val == 512<br>                                                                                        |[0x8000021e]:c.xor a0, a1<br> [0x80000220]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0xFFFFFBFF|- rs1_val == 1024<br>                                                                                                                 |[0x8000022c]:c.xor a0, a1<br> [0x8000022e]:sw a0, 72(ra)<br>  |
|  20|[0x8000325c]<br>0x00040800|- rs1_val == 2048<br>                                                                                                                 |[0x8000023e]:c.xor a0, a1<br> [0x80000240]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x3FFFEFFF|- rs1_val == 4096<br>                                                                                                                 |[0x80000250]:c.xor a0, a1<br> [0x80000252]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0xFFFFDFFF|- rs1_val == 8192<br>                                                                                                                 |[0x8000025e]:c.xor a0, a1<br> [0x80000260]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0x00004008|- rs1_val == 16384<br>                                                                                                                |[0x8000026c]:c.xor a0, a1<br> [0x8000026e]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0xFFEF7FFF|- rs2_val == -1048577<br> - rs1_val == 32768<br>                                                                                      |[0x8000027e]:c.xor a0, a1<br> [0x80000280]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x00110000|- rs2_val == 1048576<br> - rs1_val == 65536<br>                                                                                       |[0x8000028c]:c.xor a0, a1<br> [0x8000028e]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0xFFBDFFFF|- rs2_val == -4194305<br> - rs1_val == 131072<br>                                                                                     |[0x8000029e]:c.xor a0, a1<br> [0x800002a0]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0x00240000|- rs1_val == 262144<br>                                                                                                               |[0x800002ac]:c.xor a0, a1<br> [0x800002ae]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0xFFF7FFF7|- rs1_val == 524288<br>                                                                                                               |[0x800002ba]:c.xor a0, a1<br> [0x800002bc]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0xFFAFFFFF|- rs1_val == 1048576<br>                                                                                                              |[0x800002cc]:c.xor a0, a1<br> [0x800002ce]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0xFFFFFFFF|- rs1_val == 2097152<br>                                                                                                              |[0x800002de]:c.xor a0, a1<br> [0x800002e0]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0xFFBFFBFF|- rs2_val == -1025<br> - rs1_val == 4194304<br>                                                                                       |[0x800002ec]:c.xor a0, a1<br> [0x800002ee]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x00C00000|- rs2_val == 4194304<br> - rs1_val == 8388608<br>                                                                                     |[0x800002fa]:c.xor a0, a1<br> [0x800002fc]:sw a0, 124(ra)<br> |
|  33|[0x80003290]<br>0xFE7FFFFF|- rs2_val == -8388609<br> - rs1_val == 16777216<br>                                                                                   |[0x8000030c]:c.xor a0, a1<br> [0x8000030e]:sw a0, 128(ra)<br> |
|  34|[0x80003294]<br>0xFDFFFFFE|- rs2_val == -2<br> - rs1_val == 33554432<br>                                                                                         |[0x8000031a]:c.xor a0, a1<br> [0x8000031c]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x04000020|- rs1_val == 67108864<br>                                                                                                             |[0x80000328]:c.xor a0, a1<br> [0x8000032a]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0x08000004|- rs2_val == 4<br> - rs1_val == 134217728<br>                                                                                         |[0x80000336]:c.xor a0, a1<br> [0x80000338]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0x10010000|- rs2_val == 65536<br> - rs1_val == 268435456<br>                                                                                     |[0x80000344]:c.xor a0, a1<br> [0x80000346]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0xDFF7FFFF|- rs1_val == 536870912<br>                                                                                                            |[0x80000356]:c.xor a0, a1<br> [0x80000358]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0x40000008|- rs1_val == 1073741824<br>                                                                                                           |[0x80000364]:c.xor a0, a1<br> [0x80000366]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0xFFFFFFF6|- rs1_val == -2<br>                                                                                                                   |[0x80000372]:c.xor a0, a1<br> [0x80000374]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                                   |[0x80000380]:c.xor a0, a1<br> [0x80000382]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0xFFFFFFF8|- rs1_val == -5<br>                                                                                                                   |[0x8000038e]:c.xor a0, a1<br> [0x80000390]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0x0000000C|- rs2_val == -5<br> - rs1_val == -9<br>                                                                                               |[0x8000039c]:c.xor a0, a1<br> [0x8000039e]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0x00000010|- rs1_val == -17<br>                                                                                                                  |[0x800003aa]:c.xor a0, a1<br> [0x800003ac]:sw a0, 172(ra)<br> |
|  45|[0x800032c0]<br>0x00000060|- rs2_val == -65<br> - rs1_val == -33<br>                                                                                             |[0x800003b8]:c.xor a0, a1<br> [0x800003ba]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0x000000C0|- rs2_val == -129<br> - rs1_val == -65<br>                                                                                            |[0x800003c6]:c.xor a0, a1<br> [0x800003c8]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0x00020100|- rs2_val == -131073<br> - rs1_val == -257<br>                                                                                        |[0x800003d8]:c.xor a0, a1<br> [0x800003da]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0xFEBFFFFF|- rs2_val == -16777217<br>                                                                                                            |[0x800003ea]:c.xor a0, a1<br> [0x800003ec]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0xFDFFFFF8|- rs2_val == -33554433<br>                                                                                                            |[0x800003fc]:c.xor a0, a1<br> [0x800003fe]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0x04004000|- rs2_val == -67108865<br> - rs1_val == -16385<br>                                                                                    |[0x80000412]:c.xor a0, a1<br> [0x80000414]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0xF7FFEFFF|- rs2_val == -134217729<br>                                                                                                           |[0x80000424]:c.xor a0, a1<br> [0x80000426]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0x10000400|- rs2_val == -268435457<br>                                                                                                           |[0x80000436]:c.xor a0, a1<br> [0x80000438]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0xDDFFFFFF|- rs2_val == -536870913<br>                                                                                                           |[0x80000448]:c.xor a0, a1<br> [0x8000044a]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0xBFEFFFFF|- rs2_val == -1073741825<br>                                                                                                          |[0x8000045a]:c.xor a0, a1<br> [0x8000045c]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0xAAAAAAAB|- rs2_val == -1431655766<br>                                                                                                          |[0x8000046c]:c.xor a0, a1<br> [0x8000046e]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0xFFF7FDFF|- rs2_val == 524288<br> - rs1_val == -513<br>                                                                                         |[0x8000047a]:c.xor a0, a1<br> [0x8000047c]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0x00000C00|- rs1_val == -2049<br>                                                                                                                |[0x8000048c]:c.xor a0, a1<br> [0x8000048e]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0x00401000|- rs1_val == -4097<br>                                                                                                                |[0x800004a2]:c.xor a0, a1<br> [0x800004a4]:sw a0, 228(ra)<br> |
|  59|[0x800032f8]<br>0xFFFFD7FF|- rs2_val == 2048<br> - rs1_val == -8193<br>                                                                                          |[0x800004b8]:c.xor a0, a1<br> [0x800004ba]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0xFFFF3FFF|- rs2_val == 16384<br> - rs1_val == -32769<br>                                                                                        |[0x800004ca]:c.xor a0, a1<br> [0x800004cc]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0xEFFEFFFF|- rs2_val == 268435456<br> - rs1_val == -65537<br>                                                                                    |[0x800004dc]:c.xor a0, a1<br> [0x800004de]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0xFFFDFFF8|- rs1_val == -131073<br>                                                                                                              |[0x800004ee]:c.xor a0, a1<br> [0x800004f0]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0xFFFBFFFF|- rs1_val == -262145<br>                                                                                                              |[0x80000500]:c.xor a0, a1<br> [0x80000502]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0xFFF7BFFF|- rs1_val == -524289<br>                                                                                                              |[0x80000512]:c.xor a0, a1<br> [0x80000514]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0x00300000|- rs1_val == -1048577<br>                                                                                                             |[0x80000528]:c.xor a0, a1<br> [0x8000052a]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0x01800000|- rs1_val == -8388609<br>                                                                                                             |[0x8000053e]:c.xor a0, a1<br> [0x80000540]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0x01200000|- rs1_val == -16777217<br>                                                                                                            |[0x80000554]:c.xor a0, a1<br> [0x80000556]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xFDFFFDFF|- rs2_val == 512<br> - rs1_val == -33554433<br>                                                                                       |[0x80000566]:c.xor a0, a1<br> [0x80000568]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0x04000002|- rs2_val == -3<br> - rs1_val == -67108865<br>                                                                                        |[0x80000578]:c.xor a0, a1<br> [0x8000057a]:sw a0, 272(ra)<br> |
|  70|[0x80003324]<br>0xF7FFFFEF|- rs2_val == 16<br> - rs1_val == -134217729<br>                                                                                       |[0x8000058a]:c.xor a0, a1<br> [0x8000058c]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0xEFFFDFFF|- rs2_val == 8192<br> - rs1_val == -268435457<br>                                                                                     |[0x8000059c]:c.xor a0, a1<br> [0x8000059e]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0x20080000|- rs1_val == -536870913<br>                                                                                                           |[0x800005b2]:c.xor a0, a1<br> [0x800005b4]:sw a0, 284(ra)<br> |
|  73|[0x80003330]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                          |[0x800005c4]:c.xor a0, a1<br> [0x800005c6]:sw a0, 288(ra)<br> |
|  74|[0x80003334]<br>0x55555552|- rs1_val == 1431655765<br>                                                                                                           |[0x800005d6]:c.xor a0, a1<br> [0x800005d8]:sw a0, 292(ra)<br> |
|  75|[0x80003338]<br>0x5D555555|- rs1_val == -1431655766<br>                                                                                                          |[0x800005ec]:c.xor a0, a1<br> [0x800005ee]:sw a0, 296(ra)<br> |
|  76|[0x8000333c]<br>0x3FFFFFFD|- rs2_val == 2<br>                                                                                                                    |[0x800005fe]:c.xor a0, a1<br> [0x80000600]:sw a0, 300(ra)<br> |
|  77|[0x80003340]<br>0xFFFFFFBD|- rs2_val == 64<br>                                                                                                                   |[0x8000060c]:c.xor a0, a1<br> [0x8000060e]:sw a0, 304(ra)<br> |
|  78|[0x80003344]<br>0x00000089|- rs2_val == 128<br>                                                                                                                  |[0x8000061a]:c.xor a0, a1<br> [0x8000061c]:sw a0, 308(ra)<br> |
|  79|[0x80003348]<br>0x00000180|- rs2_val == 256<br>                                                                                                                  |[0x80000628]:c.xor a0, a1<br> [0x8000062a]:sw a0, 312(ra)<br> |
|  80|[0x8000334c]<br>0xF7FFFBFF|- rs2_val == 1024<br>                                                                                                                 |[0x8000063a]:c.xor a0, a1<br> [0x8000063c]:sw a0, 316(ra)<br> |
|  81|[0x80003350]<br>0x00201000|- rs2_val == 4096<br>                                                                                                                 |[0x80000648]:c.xor a0, a1<br> [0x8000064a]:sw a0, 320(ra)<br> |
|  82|[0x80003354]<br>0x00808000|- rs2_val == 32768<br>                                                                                                                |[0x80000656]:c.xor a0, a1<br> [0x80000658]:sw a0, 324(ra)<br> |
|  83|[0x80003358]<br>0xFFFDFF7F|- rs2_val == 131072<br>                                                                                                               |[0x80000664]:c.xor a0, a1<br> [0x80000666]:sw a0, 328(ra)<br> |
|  84|[0x8000335c]<br>0x00800400|- rs2_val == 8388608<br>                                                                                                              |[0x80000672]:c.xor a0, a1<br> [0x80000674]:sw a0, 332(ra)<br> |
|  85|[0x80003360]<br>0xFEBFFFFF|- rs2_val == 16777216<br>                                                                                                             |[0x80000684]:c.xor a0, a1<br> [0x80000686]:sw a0, 336(ra)<br> |
|  86|[0x80003364]<br>0x02800000|- rs2_val == 33554432<br>                                                                                                             |[0x80000692]:c.xor a0, a1<br> [0x80000694]:sw a0, 340(ra)<br> |
|  87|[0x80003368]<br>0x04008000|- rs2_val == 67108864<br>                                                                                                             |[0x800006a0]:c.xor a0, a1<br> [0x800006a2]:sw a0, 344(ra)<br> |
|  88|[0x8000336c]<br>0x20000006|- rs2_val == 536870912<br>                                                                                                            |[0x800006ae]:c.xor a0, a1<br> [0x800006b0]:sw a0, 348(ra)<br> |
|  89|[0x80003370]<br>0x40000800|- rs2_val == 1073741824<br>                                                                                                           |[0x800006c0]:c.xor a0, a1<br> [0x800006c2]:sw a0, 352(ra)<br> |
|  90|[0x80003374]<br>0x00000010|- rs2_val == -17<br>                                                                                                                  |[0x800006ce]:c.xor a0, a1<br> [0x800006d0]:sw a0, 356(ra)<br> |
|  91|[0x80003378]<br>0xFF7FFFDF|- rs2_val == -33<br>                                                                                                                  |[0x800006dc]:c.xor a0, a1<br> [0x800006de]:sw a0, 360(ra)<br> |
|  92|[0x8000337c]<br>0x7FFFFEFF|- rs2_val == -257<br>                                                                                                                 |[0x800006ea]:c.xor a0, a1<br> [0x800006ec]:sw a0, 364(ra)<br> |
|  93|[0x80003380]<br>0x00000208|- rs2_val == -513<br>                                                                                                                 |[0x800006f8]:c.xor a0, a1<br> [0x800006fa]:sw a0, 368(ra)<br> |
|  94|[0x80003384]<br>0x00800800|- rs2_val == -2049<br>                                                                                                                |[0x8000070e]:c.xor a0, a1<br> [0x80000710]:sw a0, 372(ra)<br> |
|  95|[0x80003388]<br>0xFFFFEFFD|- rs2_val == -4097<br>                                                                                                                |[0x80000720]:c.xor a0, a1<br> [0x80000722]:sw a0, 376(ra)<br> |
|  96|[0x8000338c]<br>0xFFFFBFFC|- rs2_val == -16385<br>                                                                                                               |[0x80000732]:c.xor a0, a1<br> [0x80000734]:sw a0, 380(ra)<br> |
|  97|[0x80003390]<br>0xFFEEFFFF|- rs2_val == -65537<br>                                                                                                               |[0x80000744]:c.xor a0, a1<br> [0x80000746]:sw a0, 384(ra)<br> |
|  98|[0x80003394]<br>0x00044000|- rs2_val == -262145<br>                                                                                                              |[0x8000075a]:c.xor a0, a1<br> [0x8000075c]:sw a0, 388(ra)<br> |
|  99|[0x80003398]<br>0xFBFFDFFF|- rs2_val == -8193<br>                                                                                                                |[0x8000076c]:c.xor a0, a1<br> [0x8000076e]:sw a0, 392(ra)<br> |
| 100|[0x8000339c]<br>0x3FFF7FFF|- rs2_val == -32769<br>                                                                                                               |[0x8000077e]:c.xor a0, a1<br> [0x80000780]:sw a0, 396(ra)<br> |
