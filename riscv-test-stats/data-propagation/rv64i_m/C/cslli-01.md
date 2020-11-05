
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000b00')]      |
| SIG_REGION                | [('0x80003204', '0x80003648', '136 dwords')]      |
| COV_LABELS                | cslli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 160      |
| Total Signature Updates   | 135      |
| STAT1                     | 135      |
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

|s.no|            signature             |                                                                 coverpoints                                                                 |                              code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFF00000000|- opcode : c.slli<br> - rd : x13<br> - rs1_val < 0 and imm_val < xlen<br> - imm_val == 32<br>                                                |[0x8000039c]:c.slli a3, 32<br> [0x8000039e]:sd a3, 0(ra)<br>    |
|   2|[0x80003218]<br>0x0000000000000000|- rd : x9<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 70368744177664<br> - imm_val == 55<br>                                       |[0x800003aa]:c.slli s1, 55<br> [0x800003ac]:sd s1, 8(ra)<br>    |
|   3|[0x80003220]<br>0x00000000000000A0|- rd : x15<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                                 |[0x800003b4]:c.slli a5, 5<br> [0x800003b6]:sd a5, 16(ra)<br>    |
|   4|[0x80003228]<br>0x0000000000000000|- rd : x14<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                     |[0x800003c2]:c.slli a4, 9<br> [0x800003c4]:sd a4, 24(ra)<br>    |
|   5|[0x80003230]<br>0x0000000000000000|- rd : x11<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - imm_val == 47<br>                                                    |[0x800003cc]:c.slli a1, 47<br> [0x800003ce]:sd a1, 32(ra)<br>   |
|   6|[0x80003238]<br>0xF800000000000000|- rd : x10<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 59<br> |[0x800003de]:c.slli a0, 59<br> [0x800003e0]:sd a0, 40(ra)<br>   |
|   7|[0x80003240]<br>0x0800000000000000|- rd : x8<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                      |[0x800003e8]:c.slli fp, 59<br> [0x800003ea]:sd fp, 48(ra)<br>   |
|   8|[0x80003248]<br>0x4000000000000000|- rd : x12<br> - rs1_val == 2305843009213693952<br> - imm_val == 1<br>                                                                       |[0x800003f6]:c.slli a2, 1<br> [0x800003f8]:sd a2, 56(ra)<br>    |
|   9|[0x80003250]<br>0xFFFFFFBFFFFFFFFC|- rs1_val == -68719476737<br> - imm_val == 2<br>                                                                                             |[0x80000408]:c.slli a0, 2<br> [0x8000040a]:sd a0, 64(ra)<br>    |
|  10|[0x80003258]<br>0x0000000000000000|- imm_val == 4<br>                                                                                                                           |[0x80000412]:c.slli a0, 4<br> [0x80000414]:sd a0, 72(ra)<br>    |
|  11|[0x80003260]<br>0xFFFFFFF7FFFFFF00|- rs1_val == -134217729<br> - imm_val == 8<br>                                                                                               |[0x80000420]:c.slli a0, 8<br> [0x80000422]:sd a0, 80(ra)<br>    |
|  12|[0x80003268]<br>0x0100000000000000|- rs1_val == 1099511627776<br> - imm_val == 16<br>                                                                                           |[0x8000042e]:c.slli a0, 16<br> [0x80000430]:sd a0, 88(ra)<br>   |
|  13|[0x80003270]<br>0x0000000000000000|- rs1_val == 562949953421312<br> - imm_val == 62<br>                                                                                         |[0x8000043c]:c.slli a0, 62<br> [0x8000043e]:sd a0, 96(ra)<br>   |
|  14|[0x80003278]<br>0xE000000000000000|- rs1_val == -1125899906842625<br> - imm_val == 61<br>                                                                                       |[0x8000044e]:c.slli a0, 61<br> [0x80000450]:sd a0, 104(ra)<br>  |
|  15|[0x80003280]<br>0xFFFFFFFF80000000|- rs1_val == -4503599627370497<br> - imm_val == 31<br>                                                                                       |[0x80000460]:c.slli a0, 31<br> [0x80000462]:sd a0, 112(ra)<br>  |
|  16|[0x80003288]<br>0xFFFBFFFFFFE00000|- rs1_val == -536870913<br> - imm_val == 21<br>                                                                                              |[0x8000046e]:c.slli a0, 21<br> [0x80000470]:sd a0, 120(ra)<br>  |
|  17|[0x80003290]<br>0x0000240000000000|- imm_val == 42<br>                                                                                                                          |[0x80000478]:c.slli a0, 42<br> [0x8000047a]:sd a0, 128(ra)<br>  |
|  18|[0x80003298]<br>0x0000000000000800|- rs1_val == 2<br>                                                                                                                           |[0x80000482]:c.slli a0, 10<br> [0x80000484]:sd a0, 136(ra)<br>  |
|  19|[0x800032a0]<br>0x2000000000000000|- rs1_val == 4<br>                                                                                                                           |[0x8000048c]:c.slli a0, 59<br> [0x8000048e]:sd a0, 144(ra)<br>  |
|  20|[0x800032a8]<br>0x0000000000200000|- rs1_val == 8<br>                                                                                                                           |[0x80000496]:c.slli a0, 18<br> [0x80000498]:sd a0, 152(ra)<br>  |
|  21|[0x800032b0]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                          |[0x800004a0]:c.slli a0, 63<br> [0x800004a2]:sd a0, 160(ra)<br>  |
|  22|[0x800032b8]<br>0x0000000000020000|- rs1_val == 32<br>                                                                                                                          |[0x800004aa]:c.slli a0, 12<br> [0x800004ac]:sd a0, 168(ra)<br>  |
|  23|[0x800032c0]<br>0x0000000002000000|- rs1_val == 64<br>                                                                                                                          |[0x800004b4]:c.slli a0, 19<br> [0x800004b6]:sd a0, 176(ra)<br>  |
|  24|[0x800032c8]<br>0x0002000000000000|- rs1_val == 128<br>                                                                                                                         |[0x800004be]:c.slli a0, 42<br> [0x800004c0]:sd a0, 184(ra)<br>  |
|  25|[0x800032d0]<br>0x0000000000004000|- rs1_val == 256<br>                                                                                                                         |[0x800004c8]:c.slli a0, 6<br> [0x800004ca]:sd a0, 192(ra)<br>   |
|  26|[0x800032d8]<br>0x0000000040000000|- rs1_val == 512<br>                                                                                                                         |[0x800004d2]:c.slli a0, 21<br> [0x800004d4]:sd a0, 200(ra)<br>  |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1_val == 1024<br>                                                                                                                        |[0x800004dc]:c.slli a0, 59<br> [0x800004de]:sd a0, 208(ra)<br>  |
|  28|[0x800032e8]<br>0x0400000000000000|- rs1_val == 2048<br>                                                                                                                        |[0x800004ea]:c.slli a0, 47<br> [0x800004ec]:sd a0, 216(ra)<br>  |
|  29|[0x800032f0]<br>0x0000000020000000|- rs1_val == 4096<br>                                                                                                                        |[0x800004f4]:c.slli a0, 17<br> [0x800004f6]:sd a0, 224(ra)<br>  |
|  30|[0x800032f8]<br>0x0000000000080000|- rs1_val == 8192<br>                                                                                                                        |[0x800004fe]:c.slli a0, 6<br> [0x80000500]:sd a0, 232(ra)<br>   |
|  31|[0x80003300]<br>0x0000000000020000|- rs1_val == 16384<br>                                                                                                                       |[0x80000508]:c.slli a0, 3<br> [0x8000050a]:sd a0, 240(ra)<br>   |
|  32|[0x80003308]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                                                       |[0x80000512]:c.slli a0, 59<br> [0x80000514]:sd a0, 248(ra)<br>  |
|  33|[0x80003310]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                       |[0x8000051c]:c.slli a0, 63<br> [0x8000051e]:sd a0, 256(ra)<br>  |
|  34|[0x80003318]<br>0x0000000200000000|- rs1_val == 131072<br>                                                                                                                      |[0x80000526]:c.slli a0, 16<br> [0x80000528]:sd a0, 264(ra)<br>  |
|  35|[0x80003320]<br>0x0004000000000000|- rs1_val == 262144<br>                                                                                                                      |[0x80000530]:c.slli a0, 32<br> [0x80000532]:sd a0, 272(ra)<br>  |
|  36|[0x80003328]<br>0x0000000004000000|- rs1_val == 524288<br>                                                                                                                      |[0x8000053a]:c.slli a0, 7<br> [0x8000053c]:sd a0, 280(ra)<br>   |
|  37|[0x80003330]<br>0x0010000000000000|- rs1_val == 1048576<br>                                                                                                                     |[0x80000544]:c.slli a0, 32<br> [0x80000546]:sd a0, 288(ra)<br>  |
|  38|[0x80003338]<br>0x0000000001000000|- rs1_val == 2097152<br>                                                                                                                     |[0x8000054e]:c.slli a0, 3<br> [0x80000550]:sd a0, 296(ra)<br>   |
|  39|[0x80003340]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                     |[0x80000558]:c.slli a0, 55<br> [0x8000055a]:sd a0, 304(ra)<br>  |
|  40|[0x80003348]<br>0x0000000004000000|- rs1_val == 8388608<br>                                                                                                                     |[0x80000562]:c.slli a0, 3<br> [0x80000564]:sd a0, 312(ra)<br>   |
|  41|[0x80003350]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                    |[0x8000056c]:c.slli a0, 42<br> [0x8000056e]:sd a0, 320(ra)<br>  |
|  42|[0x80003358]<br>0x0000000400000000|- rs1_val == 33554432<br>                                                                                                                    |[0x80000576]:c.slli a0, 9<br> [0x80000578]:sd a0, 328(ra)<br>   |
|  43|[0x80003360]<br>0x0000000800000000|- rs1_val == 67108864<br>                                                                                                                    |[0x80000580]:c.slli a0, 9<br> [0x80000582]:sd a0, 336(ra)<br>   |
|  44|[0x80003368]<br>0x0000000100000000|- rs1_val == 134217728<br>                                                                                                                   |[0x8000058a]:c.slli a0, 5<br> [0x8000058c]:sd a0, 344(ra)<br>   |
|  45|[0x80003370]<br>0x0000020000000000|- rs1_val == 268435456<br>                                                                                                                   |[0x80000594]:c.slli a0, 13<br> [0x80000596]:sd a0, 352(ra)<br>  |
|  46|[0x80003378]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                   |[0x8000059e]:c.slli a0, 47<br> [0x800005a0]:sd a0, 360(ra)<br>  |
|  47|[0x80003380]<br>0x0002000000000000|- rs1_val == 1073741824<br>                                                                                                                  |[0x800005a8]:c.slli a0, 19<br> [0x800005aa]:sd a0, 368(ra)<br>  |
|  48|[0x80003388]<br>0x0000200000000000|- rs1_val == 2147483648<br>                                                                                                                  |[0x800005b6]:c.slli a0, 14<br> [0x800005b8]:sd a0, 376(ra)<br>  |
|  49|[0x80003390]<br>0x0000000800000000|- rs1_val == 4294967296<br>                                                                                                                  |[0x800005c4]:c.slli a0, 3<br> [0x800005c6]:sd a0, 384(ra)<br>   |
|  50|[0x80003398]<br>0x0008000000000000|- rs1_val == 8589934592<br>                                                                                                                  |[0x800005d2]:c.slli a0, 18<br> [0x800005d4]:sd a0, 392(ra)<br>  |
|  51|[0x800033a0]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                 |[0x800005e0]:c.slli a0, 63<br> [0x800005e2]:sd a0, 400(ra)<br>  |
|  52|[0x800033a8]<br>0x0000008000000000|- rs1_val == 34359738368<br>                                                                                                                 |[0x800005ee]:c.slli a0, 4<br> [0x800005f0]:sd a0, 408(ra)<br>   |
|  53|[0x800033b0]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                 |[0x800005fc]:c.slli a0, 55<br> [0x800005fe]:sd a0, 416(ra)<br>  |
|  54|[0x800033b8]<br>0x0000004000000000|- rs1_val == 137438953472<br>                                                                                                                |[0x8000060a]:c.slli a0, 1<br> [0x8000060c]:sd a0, 424(ra)<br>   |
|  55|[0x800033c0]<br>0x0000010000000000|- rs1_val == 274877906944<br>                                                                                                                |[0x80000618]:c.slli a0, 2<br> [0x8000061a]:sd a0, 432(ra)<br>   |
|  56|[0x800033c8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                |[0x80000626]:c.slli a0, 55<br> [0x80000628]:sd a0, 440(ra)<br>  |
|  57|[0x800033d0]<br>0x0080000000000000|- rs1_val == 2199023255552<br>                                                                                                               |[0x80000634]:c.slli a0, 14<br> [0x80000636]:sd a0, 448(ra)<br>  |
|  58|[0x800033d8]<br>0x0010000000000000|- rs1_val == 4398046511104<br>                                                                                                               |[0x80000642]:c.slli a0, 10<br> [0x80000644]:sd a0, 456(ra)<br>  |
|  59|[0x800033e0]<br>0x0080000000000000|- rs1_val == 8796093022208<br>                                                                                                               |[0x80000650]:c.slli a0, 12<br> [0x80000652]:sd a0, 464(ra)<br>  |
|  60|[0x800033e8]<br>0x0010000000000000|- rs1_val == 17592186044416<br>                                                                                                              |[0x8000065e]:c.slli a0, 8<br> [0x80000660]:sd a0, 472(ra)<br>   |
|  61|[0x800033f0]<br>0x0004000000000000|- rs1_val == 35184372088832<br>                                                                                                              |[0x8000066c]:c.slli a0, 5<br> [0x8000066e]:sd a0, 480(ra)<br>   |
|  62|[0x800033f8]<br>0x0200000000000000|- rs1_val == 140737488355328<br>                                                                                                             |[0x8000067a]:c.slli a0, 10<br> [0x8000067c]:sd a0, 488(ra)<br>  |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                             |[0x80000688]:c.slli a0, 62<br> [0x8000068a]:sd a0, 496(ra)<br>  |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                            |[0x80000696]:c.slli a0, 21<br> [0x80000698]:sd a0, 504(ra)<br>  |
|  65|[0x80003410]<br>0x0400000000000000|- rs1_val == 2251799813685248<br>                                                                                                            |[0x800006a4]:c.slli a0, 7<br> [0x800006a6]:sd a0, 512(ra)<br>   |
|  66|[0x80003418]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                            |[0x800006b2]:c.slli a0, 61<br> [0x800006b4]:sd a0, 520(ra)<br>  |
|  67|[0x80003420]<br>0x0800000000000000|- rs1_val == 9007199254740992<br>                                                                                                            |[0x800006c0]:c.slli a0, 6<br> [0x800006c2]:sd a0, 528(ra)<br>   |
|  68|[0x80003428]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                           |[0x800006ce]:c.slli a0, 16<br> [0x800006d0]:sd a0, 536(ra)<br>  |
|  69|[0x80003430]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                           |[0x800006dc]:c.slli a0, 62<br> [0x800006de]:sd a0, 544(ra)<br>  |
|  70|[0x80003438]<br>0x1000000000000000|- rs1_val == 72057594037927936<br>                                                                                                           |[0x800006ea]:c.slli a0, 4<br> [0x800006ec]:sd a0, 552(ra)<br>   |
|  71|[0x80003440]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                          |[0x800006f8]:c.slli a0, 61<br> [0x800006fa]:sd a0, 560(ra)<br>  |
|  72|[0x80003448]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                          |[0x80000706]:c.slli a0, 16<br> [0x80000708]:sd a0, 568(ra)<br>  |
|  73|[0x80003450]<br>0xFFFFFFFF00000000|- rs1_val == -8796093022209<br>                                                                                                              |[0x80000718]:c.slli a0, 32<br> [0x8000071a]:sd a0, 576(ra)<br>  |
|  74|[0x80003458]<br>0xFF7FFFFFFFFFF800|- rs1_val == -17592186044417<br>                                                                                                             |[0x8000072a]:c.slli a0, 11<br> [0x8000072c]:sd a0, 584(ra)<br>  |
|  75|[0x80003460]<br>0xF800000000000000|- rs1_val == -35184372088833<br>                                                                                                             |[0x8000073c]:c.slli a0, 59<br> [0x8000073e]:sd a0, 592(ra)<br>  |
|  76|[0x80003468]<br>0xF800000000000000|- rs1_val == -70368744177665<br>                                                                                                             |[0x8000074e]:c.slli a0, 59<br> [0x80000750]:sd a0, 600(ra)<br>  |
|  77|[0x80003470]<br>0xFFFFFFFFFFFE0000|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000760]:c.slli a0, 17<br> [0x80000762]:sd a0, 608(ra)<br>  |
|  78|[0x80003478]<br>0xFFFFFFFF80000000|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000772]:c.slli a0, 31<br> [0x80000774]:sd a0, 616(ra)<br>  |
|  79|[0x80003480]<br>0xBFFFFFFFFFFFE000|- rs1_val == -562949953421313<br>                                                                                                            |[0x80000784]:c.slli a0, 13<br> [0x80000786]:sd a0, 624(ra)<br>  |
|  80|[0x80003488]<br>0xFFFFFC0000000000|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000796]:c.slli a0, 42<br> [0x80000798]:sd a0, 632(ra)<br>  |
|  81|[0x80003490]<br>0xFFFFFFFFFFFF8000|- rs1_val == -9007199254740993<br>                                                                                                           |[0x800007a8]:c.slli a0, 15<br> [0x800007aa]:sd a0, 640(ra)<br>  |
|  82|[0x80003498]<br>0xFFFFFFFFFFFFC000|- rs1_val == -18014398509481985<br>                                                                                                          |[0x800007ba]:c.slli a0, 14<br> [0x800007bc]:sd a0, 648(ra)<br>  |
|  83|[0x800034a0]<br>0xFFFFFFFF80000000|- rs1_val == -36028797018963969<br>                                                                                                          |[0x800007cc]:c.slli a0, 31<br> [0x800007ce]:sd a0, 656(ra)<br>  |
|  84|[0x800034a8]<br>0xC000000000000000|- rs1_val == -72057594037927937<br>                                                                                                          |[0x800007de]:c.slli a0, 62<br> [0x800007e0]:sd a0, 664(ra)<br>  |
|  85|[0x800034b0]<br>0xFFFFFFFFFFE00000|- rs1_val == -144115188075855873<br>                                                                                                         |[0x800007f0]:c.slli a0, 21<br> [0x800007f2]:sd a0, 672(ra)<br>  |
|  86|[0x800034b8]<br>0x8000000000000000|- rs1_val == -288230376151711745<br>                                                                                                         |[0x80000802]:c.slli a0, 63<br> [0x80000804]:sd a0, 680(ra)<br>  |
|  87|[0x800034c0]<br>0x8000000000000000|- rs1_val == -576460752303423489<br>                                                                                                         |[0x80000814]:c.slli a0, 63<br> [0x80000816]:sd a0, 688(ra)<br>  |
|  88|[0x800034c8]<br>0xF800000000000000|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000826]:c.slli a0, 59<br> [0x80000828]:sd a0, 696(ra)<br>  |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFC000|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000838]:c.slli a0, 14<br> [0x8000083a]:sd a0, 704(ra)<br>  |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x8000084a]:c.slli a0, 10<br> [0x8000084c]:sd a0, 712(ra)<br>  |
|  91|[0x800034e0]<br>0xAAAAAAAAAAAAAA80|- rs1_val == 6148914691236517205<br>                                                                                                         |[0x80000870]:c.slli a0, 7<br> [0x80000872]:sd a0, 720(ra)<br>   |
|  92|[0x800034e8]<br>0x5555555555555554|- rs1_val == -6148914691236517206<br>                                                                                                        |[0x80000896]:c.slli a0, 1<br> [0x80000898]:sd a0, 728(ra)<br>   |
|  93|[0x800034f0]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800008a4]:c.slli a0, 8<br> [0x800008a6]:sd a0, 736(ra)<br>   |
|  94|[0x800034f8]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800008b2]:c.slli a0, 63<br> [0x800008b4]:sd a0, 744(ra)<br>  |
|  95|[0x80003500]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800008c0]:c.slli a0, 15<br> [0x800008c2]:sd a0, 752(ra)<br>  |
|  96|[0x80003508]<br>0x0000000000000000|- rs1_val == -2<br>                                                                                                                          |[0x800008ca]:c.slli a0, 63<br> [0x800008cc]:sd a0, 760(ra)<br>  |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFFD00|- rs1_val == -3<br>                                                                                                                          |[0x800008d4]:c.slli a0, 8<br> [0x800008d6]:sd a0, 768(ra)<br>   |
|  98|[0x80003518]<br>0xFFFFFFFFFFFD8000|- rs1_val == -5<br>                                                                                                                          |[0x800008de]:c.slli a0, 15<br> [0x800008e0]:sd a0, 776(ra)<br>  |
|  99|[0x80003520]<br>0xFFFFFFFB80000000|- rs1_val == -9<br>                                                                                                                          |[0x800008e8]:c.slli a0, 31<br> [0x800008ea]:sd a0, 784(ra)<br>  |
| 100|[0x80003528]<br>0xFFFFFFFFFFFFFFDE|- rs1_val == -17<br>                                                                                                                         |[0x800008f2]:c.slli a0, 1<br> [0x800008f4]:sd a0, 792(ra)<br>   |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFFBE0|- rs1_val == -33<br>                                                                                                                         |[0x800008fc]:c.slli a0, 5<br> [0x800008fe]:sd a0, 800(ra)<br>   |
| 102|[0x80003538]<br>0xFFFFFFBF00000000|- rs1_val == -65<br>                                                                                                                         |[0x80000906]:c.slli a0, 32<br> [0x80000908]:sd a0, 808(ra)<br>  |
| 103|[0x80003540]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -129<br>                                                                                                                        |[0x80000910]:c.slli a0, 1<br> [0x80000912]:sd a0, 816(ra)<br>   |
| 104|[0x80003548]<br>0xFFFFFFFFFF7F8000|- rs1_val == -257<br>                                                                                                                        |[0x8000091a]:c.slli a0, 15<br> [0x8000091c]:sd a0, 824(ra)<br>  |
| 105|[0x80003550]<br>0xFFFFFFFFFFFBFE00|- rs1_val == -513<br>                                                                                                                        |[0x80000924]:c.slli a0, 9<br> [0x80000926]:sd a0, 832(ra)<br>   |
| 106|[0x80003558]<br>0xFFFFFDFF80000000|- rs1_val == -1025<br>                                                                                                                       |[0x8000092e]:c.slli a0, 31<br> [0x80000930]:sd a0, 840(ra)<br>  |
| 107|[0x80003560]<br>0xFBFF800000000000|- rs1_val == -2049<br>                                                                                                                       |[0x8000093c]:c.slli a0, 47<br> [0x8000093e]:sd a0, 848(ra)<br>  |
| 108|[0x80003568]<br>0xFFFFFFFFF7FF8000|- rs1_val == -4097<br>                                                                                                                       |[0x8000094a]:c.slli a0, 15<br> [0x8000094c]:sd a0, 856(ra)<br>  |
| 109|[0x80003570]<br>0xFFFFFFFFFFFBFFE0|- rs1_val == -8193<br>                                                                                                                       |[0x80000958]:c.slli a0, 5<br> [0x8000095a]:sd a0, 864(ra)<br>   |
| 110|[0x80003578]<br>0xFFFFDFFF80000000|- rs1_val == -16385<br>                                                                                                                      |[0x80000966]:c.slli a0, 31<br> [0x80000968]:sd a0, 872(ra)<br>  |
| 111|[0x80003580]<br>0xBFFF800000000000|- rs1_val == -32769<br>                                                                                                                      |[0x80000974]:c.slli a0, 47<br> [0x80000976]:sd a0, 880(ra)<br>  |
| 112|[0x80003588]<br>0xFFFFFFFFFFFDFFFE|- rs1_val == -65537<br>                                                                                                                      |[0x80000982]:c.slli a0, 1<br> [0x80000984]:sd a0, 888(ra)<br>   |
| 113|[0x80003590]<br>0xFFFFFFFFF7FFFC00|- rs1_val == -131073<br>                                                                                                                     |[0x80000990]:c.slli a0, 10<br> [0x80000992]:sd a0, 896(ra)<br>  |
| 114|[0x80003598]<br>0xFFFFFFFFFF7FFFE0|- rs1_val == -262145<br>                                                                                                                     |[0x8000099e]:c.slli a0, 5<br> [0x800009a0]:sd a0, 904(ra)<br>   |
| 115|[0x800035a0]<br>0xFFFFFFFFFFBFFFF8|- rs1_val == -524289<br>                                                                                                                     |[0x800009ac]:c.slli a0, 3<br> [0x800009ae]:sd a0, 912(ra)<br>   |
| 116|[0x800035a8]<br>0x8000000000000000|- rs1_val == -1048577<br>                                                                                                                    |[0x800009ba]:c.slli a0, 63<br> [0x800009bc]:sd a0, 920(ra)<br>  |
| 117|[0x800035b0]<br>0xFFEFFFFF80000000|- rs1_val == -2097153<br>                                                                                                                    |[0x800009c8]:c.slli a0, 31<br> [0x800009ca]:sd a0, 928(ra)<br>  |
| 118|[0x800035b8]<br>0xFFFFFFFF7FFFFE00|- rs1_val == -4194305<br>                                                                                                                    |[0x800009d6]:c.slli a0, 9<br> [0x800009d8]:sd a0, 936(ra)<br>   |
| 119|[0x800035c0]<br>0xFFFFFFDFFFFFC000|- rs1_val == -8388609<br>                                                                                                                    |[0x800009e4]:c.slli a0, 14<br> [0x800009e6]:sd a0, 944(ra)<br>  |
| 120|[0x800035c8]<br>0xFFFFFFEFFFFFF000|- rs1_val == -16777217<br>                                                                                                                   |[0x800009f2]:c.slli a0, 12<br> [0x800009f4]:sd a0, 952(ra)<br>  |
| 121|[0x800035d0]<br>0xFFFFFFEFFFFFF800|- rs1_val == -33554433<br>                                                                                                                   |[0x80000a00]:c.slli a0, 11<br> [0x80000a02]:sd a0, 960(ra)<br>  |
| 122|[0x800035d8]<br>0xFFFFFFFDFFFFFF80|- rs1_val == -67108865<br>                                                                                                                   |[0x80000a0e]:c.slli a0, 7<br> [0x80000a10]:sd a0, 968(ra)<br>   |
| 123|[0x800035e0]<br>0xFFFFDFFFFFFE0000|- rs1_val == -268435457<br>                                                                                                                  |[0x80000a1c]:c.slli a0, 17<br> [0x80000a1e]:sd a0, 976(ra)<br>  |
| 124|[0x800035e8]<br>0xC000000000000000|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000a2a]:c.slli a0, 62<br> [0x80000a2c]:sd a0, 984(ra)<br>  |
| 125|[0x800035f0]<br>0xFFFFFFFBFFFFFFF8|- rs1_val == -2147483649<br>                                                                                                                 |[0x80000a3c]:c.slli a0, 3<br> [0x80000a3e]:sd a0, 992(ra)<br>   |
| 126|[0x800035f8]<br>0xFFFFDFFFFFFFE000|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000a4e]:c.slli a0, 13<br> [0x80000a50]:sd a0, 1000(ra)<br> |
| 127|[0x80003600]<br>0xFFFFDFFFFFFFF000|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000a60]:c.slli a0, 12<br> [0x80000a62]:sd a0, 1008(ra)<br> |
| 128|[0x80003608]<br>0xFFFFF7FFFFFFFE00|- rs1_val == -17179869185<br>                                                                                                                |[0x80000a72]:c.slli a0, 9<br> [0x80000a74]:sd a0, 1016(ra)<br>  |
| 129|[0x80003610]<br>0xFFFFEFFFFFFFFE00|- rs1_val == -34359738369<br>                                                                                                                |[0x80000a84]:c.slli a0, 9<br> [0x80000a86]:sd a0, 1024(ra)<br>  |
| 130|[0x80003618]<br>0xFFFF800000000000|- rs1_val == -137438953473<br>                                                                                                               |[0x80000a96]:c.slli a0, 47<br> [0x80000a98]:sd a0, 1032(ra)<br> |
| 131|[0x80003620]<br>0xFFFFFFFF00000000|- rs1_val == -274877906945<br>                                                                                                               |[0x80000aa8]:c.slli a0, 32<br> [0x80000aaa]:sd a0, 1040(ra)<br> |
| 132|[0x80003628]<br>0xFFFFFFFF00000000|- rs1_val == -549755813889<br>                                                                                                               |[0x80000aba]:c.slli a0, 32<br> [0x80000abc]:sd a0, 1048(ra)<br> |
| 133|[0x80003630]<br>0x8000000000000000|- rs1_val == -1099511627777<br>                                                                                                              |[0x80000acc]:c.slli a0, 63<br> [0x80000ace]:sd a0, 1056(ra)<br> |
| 134|[0x80003638]<br>0xFFFF800000000000|- rs1_val == -2199023255553<br>                                                                                                              |[0x80000ade]:c.slli a0, 47<br> [0x80000ae0]:sd a0, 1064(ra)<br> |
| 135|[0x80003640]<br>0xFFFBFFFFFFFFFF00|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000af0]:c.slli a0, 8<br> [0x80000af2]:sd a0, 1072(ra)<br>  |
