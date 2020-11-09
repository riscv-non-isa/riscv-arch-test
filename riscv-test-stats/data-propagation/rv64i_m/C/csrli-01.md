
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000af0')]      |
| SIG_REGION                | [('0x80003208', '0x80003630', '133 dwords')]      |
| COV_LABELS                | csrli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrli-01.S/csrli-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 160      |
| Total Signature Updates   | 133      |
| STAT1                     | 133      |
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
|   1|[0x80003208]<br>0x01FFFFFFFFFFFFFF|- opcode : c.srli<br> - rs1 : x11<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -17<br>                                              |[0x8000039c]:c.srli a1, 7<br> [0x8000039e]:sd a1, 0(ra)<br>     |
|   2|[0x80003210]<br>0x0000000000800000|- rs1 : x12<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 17592186044416<br> - imm_val == 21<br>                                     |[0x800003aa]:c.srli a2, 21<br> [0x800003ac]:sd a2, 8(ra)<br>    |
|   3|[0x80003218]<br>0x0000000000000000|- rs1 : x9<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                                 |[0x800003b4]:c.srli s1, 3<br> [0x800003b6]:sd s1, 16(ra)<br>    |
|   4|[0x80003220]<br>0x2000000000000000|- rs1 : x10<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 2<br> |[0x800003c2]:c.srli a0, 2<br> [0x800003c4]:sd a0, 24(ra)<br>    |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x13<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - imm_val == 42<br>                                                   |[0x800003cc]:c.srli a3, 42<br> [0x800003ce]:sd a3, 32(ra)<br>   |
|   6|[0x80003230]<br>0x007FFFFFFFFFFFFF|- rs1 : x14<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 8<br> |[0x800003de]:c.srli a4, 8<br> [0x800003e0]:sd a4, 40(ra)<br>    |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x15<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                    |[0x800003e8]:c.srli a5, 2<br> [0x800003ea]:sd a5, 48(ra)<br>    |
|   8|[0x80003240]<br>0x7FFFFFFFFFFFFFBF|- rs1 : x8<br> - rs1_val == -129<br> - imm_val == 1<br>                                                                                      |[0x800003f2]:c.srli s0, 1<br> [0x800003f4]:sd fp, 56(ra)<br>    |
|   9|[0x80003248]<br>0x0FFFFFFFFFFFF7FF|- rs1_val == -32769<br> - imm_val == 4<br>                                                                                                   |[0x80000400]:c.srli a0, 4<br> [0x80000402]:sd a0, 64(ra)<br>    |
|  10|[0x80003250]<br>0x0000FFFFFFFFFFFF|- imm_val == 16<br>                                                                                                                          |[0x8000040a]:c.srli a0, 16<br> [0x8000040c]:sd a0, 72(ra)<br>   |
|  11|[0x80003258]<br>0x0000000000004000|- rs1_val == 70368744177664<br> - imm_val == 32<br>                                                                                          |[0x80000418]:c.srli a0, 32<br> [0x8000041a]:sd a0, 80(ra)<br>   |
|  12|[0x80003260]<br>0x0000000000000000|- rs1_val == 1099511627776<br> - imm_val == 62<br>                                                                                           |[0x80000426]:c.srli a0, 62<br> [0x80000428]:sd a0, 88(ra)<br>   |
|  13|[0x80003268]<br>0x0000000000000000|- rs1_val == 32768<br> - imm_val == 61<br>                                                                                                   |[0x80000430]:c.srli a0, 61<br> [0x80000432]:sd a0, 96(ra)<br>   |
|  14|[0x80003270]<br>0x0000000000000000|- rs1_val == 2<br> - imm_val == 59<br>                                                                                                       |[0x8000043a]:c.srli a0, 59<br> [0x8000043c]:sd a0, 104(ra)<br>  |
|  15|[0x80003278]<br>0x00000000000001FF|- rs1_val == -3<br> - imm_val == 55<br>                                                                                                      |[0x80000444]:c.srli a0, 55<br> [0x80000446]:sd a0, 112(ra)<br>  |
|  16|[0x80003280]<br>0x000000000001FF7F|- rs1_val == -18014398509481985<br> - imm_val == 47<br>                                                                                      |[0x80000456]:c.srli a0, 47<br> [0x80000458]:sd a0, 120(ra)<br>  |
|  17|[0x80003288]<br>0x0000000000004000|- rs1_val == 35184372088832<br> - imm_val == 31<br>                                                                                          |[0x80000464]:c.srli a0, 31<br> [0x80000466]:sd a0, 128(ra)<br>  |
|  18|[0x80003290]<br>0x0000000000000000|- rs1_val == 4<br>                                                                                                                           |[0x8000046e]:c.srli a0, 4<br> [0x80000470]:sd a0, 136(ra)<br>   |
|  19|[0x80003298]<br>0x0000000000000000|- rs1_val == 8<br>                                                                                                                           |[0x80000478]:c.srli a0, 18<br> [0x8000047a]:sd a0, 144(ra)<br>  |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                          |[0x80000482]:c.srli a0, 16<br> [0x80000484]:sd a0, 152(ra)<br>  |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                                                          |[0x8000048c]:c.srli a0, 32<br> [0x8000048e]:sd a0, 160(ra)<br>  |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1_val == 64<br>                                                                                                                          |[0x80000496]:c.srli a0, 7<br> [0x80000498]:sd a0, 168(ra)<br>   |
|  23|[0x800032b8]<br>0x0000000000000002|- rs1_val == 128<br>                                                                                                                         |[0x800004a0]:c.srli a0, 6<br> [0x800004a2]:sd a0, 176(ra)<br>   |
|  24|[0x800032c0]<br>0x0000000000000020|- rs1_val == 256<br>                                                                                                                         |[0x800004aa]:c.srli a0, 3<br> [0x800004ac]:sd a0, 184(ra)<br>   |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1_val == 512<br>                                                                                                                         |[0x800004b4]:c.srli a0, 17<br> [0x800004b6]:sd a0, 192(ra)<br>  |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1_val == 1024<br>                                                                                                                        |[0x800004be]:c.srli a0, 18<br> [0x800004c0]:sd a0, 200(ra)<br>  |
|  27|[0x800032d8]<br>0x0000000000000000|- rs1_val == 2048<br>                                                                                                                        |[0x800004cc]:c.srli a0, 15<br> [0x800004ce]:sd a0, 208(ra)<br>  |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1_val == 4096<br>                                                                                                                        |[0x800004d6]:c.srli a0, 14<br> [0x800004d8]:sd a0, 216(ra)<br>  |
|  29|[0x800032e8]<br>0x0000000000000002|- rs1_val == 8192<br>                                                                                                                        |[0x800004e0]:c.srli a0, 12<br> [0x800004e2]:sd a0, 224(ra)<br>  |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                                                       |[0x800004ea]:c.srli a0, 47<br> [0x800004ec]:sd a0, 232(ra)<br>  |
|  31|[0x800032f8]<br>0x0000000000001000|- rs1_val == 65536<br>                                                                                                                       |[0x800004f4]:c.srli a0, 4<br> [0x800004f6]:sd a0, 240(ra)<br>   |
|  32|[0x80003300]<br>0x0000000000001000|- rs1_val == 131072<br>                                                                                                                      |[0x800004fe]:c.srli a0, 5<br> [0x80000500]:sd a0, 248(ra)<br>   |
|  33|[0x80003308]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                      |[0x80000508]:c.srli a0, 63<br> [0x8000050a]:sd a0, 256(ra)<br>  |
|  34|[0x80003310]<br>0x0000000000000800|- rs1_val == 524288<br>                                                                                                                      |[0x80000512]:c.srli a0, 8<br> [0x80000514]:sd a0, 264(ra)<br>   |
|  35|[0x80003318]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                     |[0x8000051c]:c.srli a0, 63<br> [0x8000051e]:sd a0, 272(ra)<br>  |
|  36|[0x80003320]<br>0x0000000000000040|- rs1_val == 2097152<br>                                                                                                                     |[0x80000526]:c.srli a0, 15<br> [0x80000528]:sd a0, 280(ra)<br>  |
|  37|[0x80003328]<br>0x0000000000100000|- rs1_val == 4194304<br>                                                                                                                     |[0x80000530]:c.srli a0, 2<br> [0x80000532]:sd a0, 288(ra)<br>   |
|  38|[0x80003330]<br>0x0000000000000004|- rs1_val == 8388608<br>                                                                                                                     |[0x8000053a]:c.srli a0, 21<br> [0x8000053c]:sd a0, 296(ra)<br>  |
|  39|[0x80003338]<br>0x0000000000001000|- rs1_val == 16777216<br>                                                                                                                    |[0x80000544]:c.srli a0, 12<br> [0x80000546]:sd a0, 304(ra)<br>  |
|  40|[0x80003340]<br>0x0000000000000400|- rs1_val == 33554432<br>                                                                                                                    |[0x8000054e]:c.srli a0, 15<br> [0x80000550]:sd a0, 312(ra)<br>  |
|  41|[0x80003348]<br>0x0000000000000200|- rs1_val == 67108864<br>                                                                                                                    |[0x80000558]:c.srli a0, 17<br> [0x8000055a]:sd a0, 320(ra)<br>  |
|  42|[0x80003350]<br>0x0000000000200000|- rs1_val == 134217728<br>                                                                                                                   |[0x80000562]:c.srli a0, 6<br> [0x80000564]:sd a0, 328(ra)<br>   |
|  43|[0x80003358]<br>0x0000000000080000|- rs1_val == 268435456<br>                                                                                                                   |[0x8000056c]:c.srli a0, 9<br> [0x8000056e]:sd a0, 336(ra)<br>   |
|  44|[0x80003360]<br>0x0000000008000000|- rs1_val == 536870912<br>                                                                                                                   |[0x80000576]:c.srli a0, 2<br> [0x80000578]:sd a0, 344(ra)<br>   |
|  45|[0x80003368]<br>0x0000000020000000|- rs1_val == 1073741824<br>                                                                                                                  |[0x80000580]:c.srli a0, 1<br> [0x80000582]:sd a0, 352(ra)<br>   |
|  46|[0x80003370]<br>0x0000000010000000|- rs1_val == 2147483648<br>                                                                                                                  |[0x8000058e]:c.srli a0, 3<br> [0x80000590]:sd a0, 360(ra)<br>   |
|  47|[0x80003378]<br>0x0000000004000000|- rs1_val == 4294967296<br>                                                                                                                  |[0x8000059c]:c.srli a0, 6<br> [0x8000059e]:sd a0, 368(ra)<br>   |
|  48|[0x80003380]<br>0x0000000002000000|- rs1_val == 8589934592<br>                                                                                                                  |[0x800005aa]:c.srli a0, 8<br> [0x800005ac]:sd a0, 376(ra)<br>   |
|  49|[0x80003388]<br>0x0000000000200000|- rs1_val == 17179869184<br>                                                                                                                 |[0x800005b8]:c.srli a0, 13<br> [0x800005ba]:sd a0, 384(ra)<br>  |
|  50|[0x80003390]<br>0x0000000000000008|- rs1_val == 34359738368<br>                                                                                                                 |[0x800005c6]:c.srli a0, 32<br> [0x800005c8]:sd a0, 392(ra)<br>  |
|  51|[0x80003398]<br>0x0000000010000000|- rs1_val == 68719476736<br>                                                                                                                 |[0x800005d4]:c.srli a0, 8<br> [0x800005d6]:sd a0, 400(ra)<br>   |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                |[0x800005e2]:c.srli a0, 63<br> [0x800005e4]:sd a0, 408(ra)<br>  |
|  53|[0x800033a8]<br>0x0000000000200000|- rs1_val == 274877906944<br>                                                                                                                |[0x800005f0]:c.srli a0, 17<br> [0x800005f2]:sd a0, 416(ra)<br>  |
|  54|[0x800033b0]<br>0x0000000800000000|- rs1_val == 549755813888<br>                                                                                                                |[0x800005fe]:c.srli a0, 4<br> [0x80000600]:sd a0, 424(ra)<br>   |
|  55|[0x800033b8]<br>0x0000010000000000|- rs1_val == 2199023255552<br>                                                                                                               |[0x8000060c]:c.srli a0, 1<br> [0x8000060e]:sd a0, 432(ra)<br>   |
|  56|[0x800033c0]<br>0x0000000000800000|- rs1_val == 4398046511104<br>                                                                                                               |[0x8000061a]:c.srli a0, 19<br> [0x8000061c]:sd a0, 440(ra)<br>  |
|  57|[0x800033c8]<br>0x0000000000000002|- rs1_val == 8796093022208<br>                                                                                                               |[0x80000628]:c.srli a0, 42<br> [0x8000062a]:sd a0, 448(ra)<br>  |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                             |[0x80000636]:c.srli a0, 62<br> [0x80000638]:sd a0, 456(ra)<br>  |
|  59|[0x800033d8]<br>0x0000000200000000|- rs1_val == 281474976710656<br>                                                                                                             |[0x80000644]:c.srli a0, 15<br> [0x80000646]:sd a0, 464(ra)<br>  |
|  60|[0x800033e0]<br>0x0000080000000000|- rs1_val == 562949953421312<br>                                                                                                             |[0x80000652]:c.srli a0, 6<br> [0x80000654]:sd a0, 472(ra)<br>   |
|  61|[0x800033e8]<br>0x0000000400000000|- rs1_val == 1125899906842624<br>                                                                                                            |[0x80000660]:c.srli a0, 16<br> [0x80000662]:sd a0, 480(ra)<br>  |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                            |[0x8000066e]:c.srli a0, 55<br> [0x80000670]:sd a0, 488(ra)<br>  |
|  63|[0x800033f8]<br>0x0000200000000000|- rs1_val == 4503599627370496<br>                                                                                                            |[0x8000067c]:c.srli a0, 7<br> [0x8000067e]:sd a0, 496(ra)<br>   |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                            |[0x8000068a]:c.srli a0, 63<br> [0x8000068c]:sd a0, 504(ra)<br>  |
|  65|[0x80003408]<br>0x0000040000000000|- rs1_val == 18014398509481984<br>                                                                                                           |[0x80000698]:c.srli a0, 12<br> [0x8000069a]:sd a0, 512(ra)<br>  |
|  66|[0x80003410]<br>0x0000001000000000|- rs1_val == 36028797018963968<br>                                                                                                           |[0x800006a6]:c.srli a0, 19<br> [0x800006a8]:sd a0, 520(ra)<br>  |
|  67|[0x80003418]<br>0x0001000000000000|- rs1_val == 72057594037927936<br>                                                                                                           |[0x800006b4]:c.srli a0, 8<br> [0x800006b6]:sd a0, 528(ra)<br>   |
|  68|[0x80003420]<br>0x0000000000000400|- rs1_val == 144115188075855872<br>                                                                                                          |[0x800006c2]:c.srli a0, 47<br> [0x800006c4]:sd a0, 536(ra)<br>  |
|  69|[0x80003428]<br>0x0002000000000000|- rs1_val == 288230376151711744<br>                                                                                                          |[0x800006d0]:c.srli a0, 9<br> [0x800006d2]:sd a0, 544(ra)<br>   |
|  70|[0x80003430]<br>0x0100000000000000|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800006de]:c.srli a0, 3<br> [0x800006e0]:sd a0, 552(ra)<br>   |
|  71|[0x80003438]<br>0x00000000FFFFF7FF|- rs1_val == -8796093022209<br>                                                                                                              |[0x800006f0]:c.srli a0, 32<br> [0x800006f2]:sd a0, 560(ra)<br>  |
|  72|[0x80003440]<br>0x00007FFFF7FFFFFF|- rs1_val == -17592186044417<br>                                                                                                             |[0x80000702]:c.srli a0, 17<br> [0x80000704]:sd a0, 568(ra)<br>  |
|  73|[0x80003448]<br>0x00000000003FFFF7|- rs1_val == -35184372088833<br>                                                                                                             |[0x80000714]:c.srli a0, 42<br> [0x80000716]:sd a0, 576(ra)<br>  |
|  74|[0x80003450]<br>0x0000000000000003|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000726]:c.srli a0, 62<br> [0x80000728]:sd a0, 584(ra)<br>  |
|  75|[0x80003458]<br>0x0001FFFEFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000738]:c.srli a0, 15<br> [0x8000073a]:sd a0, 592(ra)<br>  |
|  76|[0x80003460]<br>0x00001FFFDFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                            |[0x8000074a]:c.srli a0, 19<br> [0x8000074c]:sd a0, 600(ra)<br>  |
|  77|[0x80003468]<br>0x00001FFFBFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                            |[0x8000075c]:c.srli a0, 19<br> [0x8000075e]:sd a0, 608(ra)<br>  |
|  78|[0x80003470]<br>0x0000000000000007|- rs1_val == -1125899906842625<br>                                                                                                           |[0x8000076e]:c.srli a0, 61<br> [0x80000770]:sd a0, 616(ra)<br>  |
|  79|[0x80003478]<br>0x07FFBFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000780]:c.srli a0, 5<br> [0x80000782]:sd a0, 624(ra)<br>   |
|  80|[0x80003480]<br>0x0FFEFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                           |[0x80000792]:c.srli a0, 4<br> [0x80000794]:sd a0, 632(ra)<br>   |
|  81|[0x80003488]<br>0x00007FEFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                           |[0x800007a4]:c.srli a0, 17<br> [0x800007a6]:sd a0, 640(ra)<br>  |
|  82|[0x80003490]<br>0x00FF7FFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                          |[0x800007b6]:c.srli a0, 8<br> [0x800007b8]:sd a0, 648(ra)<br>   |
|  83|[0x80003498]<br>0x001FDFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                          |[0x800007c8]:c.srli a0, 11<br> [0x800007ca]:sd a0, 656(ra)<br>  |
|  84|[0x800034a0]<br>0x001FBFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                         |[0x800007da]:c.srli a0, 11<br> [0x800007dc]:sd a0, 664(ra)<br>  |
|  85|[0x800034a8]<br>0x0007DFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                         |[0x800007ec]:c.srli a0, 13<br> [0x800007ee]:sd a0, 672(ra)<br>  |
|  86|[0x800034b0]<br>0x0007BFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                         |[0x800007fe]:c.srli a0, 13<br> [0x80000800]:sd a0, 680(ra)<br>  |
|  87|[0x800034b8]<br>0x00000001DFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000810]:c.srli a0, 31<br> [0x80000812]:sd a0, 688(ra)<br>  |
|  88|[0x800034c0]<br>0x037FFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000822]:c.srli a0, 6<br> [0x80000824]:sd a0, 696(ra)<br>   |
|  89|[0x800034c8]<br>0x05FFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x80000834]:c.srli a0, 5<br> [0x80000836]:sd a0, 704(ra)<br>   |
|  90|[0x800034d0]<br>0x0000000000000002|- rs1_val == 6148914691236517205<br>                                                                                                         |[0x8000085a]:c.srli a0, 61<br> [0x8000085c]:sd a0, 712(ra)<br>  |
|  91|[0x800034d8]<br>0x0000155555555555|- rs1_val == -6148914691236517206<br>                                                                                                        |[0x80000880]:c.srli a0, 19<br> [0x80000882]:sd a0, 720(ra)<br>  |
|  92|[0x800034e0]<br>0x0000000000000020|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x8000088e]:c.srli a0, 55<br> [0x80000890]:sd a0, 728(ra)<br>  |
|  93|[0x800034e8]<br>0x0800000000000000|- rs1_val == 2305843009213693952<br>                                                                                                         |[0x8000089c]:c.srli a0, 2<br> [0x8000089e]:sd a0, 736(ra)<br>   |
|  94|[0x800034f0]<br>0x0000080000000000|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800008aa]:c.srli a0, 19<br> [0x800008ac]:sd a0, 744(ra)<br>  |
|  95|[0x800034f8]<br>0x0FFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                          |[0x800008b4]:c.srli a0, 4<br> [0x800008b6]:sd a0, 752(ra)<br>   |
|  96|[0x80003500]<br>0x00001FFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                          |[0x800008be]:c.srli a0, 19<br> [0x800008c0]:sd a0, 760(ra)<br>  |
|  97|[0x80003508]<br>0x00001FFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                          |[0x800008c8]:c.srli a0, 19<br> [0x800008ca]:sd a0, 768(ra)<br>  |
|  98|[0x80003510]<br>0x01FFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                         |[0x800008d2]:c.srli a0, 7<br> [0x800008d4]:sd a0, 776(ra)<br>   |
|  99|[0x80003518]<br>0x000000000000001F|- rs1_val == -65<br>                                                                                                                         |[0x800008dc]:c.srli a0, 59<br> [0x800008de]:sd a0, 784(ra)<br>  |
| 100|[0x80003520]<br>0x7FFFFFFFFFFFFF7F|- rs1_val == -257<br>                                                                                                                        |[0x800008e6]:c.srli a0, 1<br> [0x800008e8]:sd a0, 792(ra)<br>   |
| 101|[0x80003528]<br>0x1FFFFFFFFFFFFFBF|- rs1_val == -513<br>                                                                                                                        |[0x800008f0]:c.srli a0, 3<br> [0x800008f2]:sd a0, 800(ra)<br>   |
| 102|[0x80003530]<br>0x001FFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                       |[0x800008fa]:c.srli a0, 11<br> [0x800008fc]:sd a0, 808(ra)<br>  |
| 103|[0x80003538]<br>0x3FFFFFFFFFFFFDFF|- rs1_val == -2049<br>                                                                                                                       |[0x80000908]:c.srli a0, 2<br> [0x8000090a]:sd a0, 816(ra)<br>   |
| 104|[0x80003540]<br>0x0007FFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                       |[0x80000916]:c.srli a0, 13<br> [0x80000918]:sd a0, 824(ra)<br>  |
| 105|[0x80003548]<br>0x1FFFFFFFFFFFFBFF|- rs1_val == -8193<br>                                                                                                                       |[0x80000924]:c.srli a0, 3<br> [0x80000926]:sd a0, 832(ra)<br>   |
| 106|[0x80003550]<br>0x03FFFFFFFFFFFEFF|- rs1_val == -16385<br>                                                                                                                      |[0x80000932]:c.srli a0, 6<br> [0x80000934]:sd a0, 840(ra)<br>   |
| 107|[0x80003558]<br>0x000000000001FFFF|- rs1_val == -65537<br>                                                                                                                      |[0x80000940]:c.srli a0, 47<br> [0x80000942]:sd a0, 848(ra)<br>  |
| 108|[0x80003560]<br>0x00003FFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                     |[0x8000094e]:c.srli a0, 18<br> [0x80000950]:sd a0, 856(ra)<br>  |
| 109|[0x80003568]<br>0x000000000001FFFF|- rs1_val == -262145<br>                                                                                                                     |[0x8000095c]:c.srli a0, 47<br> [0x8000095e]:sd a0, 864(ra)<br>  |
| 110|[0x80003570]<br>0x0000000000000001|- rs1_val == -524289<br>                                                                                                                     |[0x8000096a]:c.srli a0, 63<br> [0x8000096c]:sd a0, 872(ra)<br>  |
| 111|[0x80003578]<br>0x1FFFFFFFFFFDFFFF|- rs1_val == -1048577<br>                                                                                                                    |[0x80000978]:c.srli a0, 3<br> [0x8000097a]:sd a0, 880(ra)<br>   |
| 112|[0x80003580]<br>0x003FFFFFFFFFF7FF|- rs1_val == -2097153<br>                                                                                                                    |[0x80000986]:c.srli a0, 10<br> [0x80000988]:sd a0, 888(ra)<br>  |
| 113|[0x80003588]<br>0x00000000FFFFFFFF|- rs1_val == -4194305<br>                                                                                                                    |[0x80000994]:c.srli a0, 32<br> [0x80000996]:sd a0, 896(ra)<br>  |
| 114|[0x80003590]<br>0x0000FFFFFFFFFF7F|- rs1_val == -8388609<br>                                                                                                                    |[0x800009a2]:c.srli a0, 16<br> [0x800009a4]:sd a0, 904(ra)<br>  |
| 115|[0x80003598]<br>0x07FFFFFFFFF7FFFF|- rs1_val == -16777217<br>                                                                                                                   |[0x800009b0]:c.srli a0, 5<br> [0x800009b2]:sd a0, 912(ra)<br>   |
| 116|[0x800035a0]<br>0x000007FFFFFFFFEF|- rs1_val == -33554433<br>                                                                                                                   |[0x800009be]:c.srli a0, 21<br> [0x800009c0]:sd a0, 920(ra)<br>  |
| 117|[0x800035a8]<br>0x0000000000000003|- rs1_val == -67108865<br>                                                                                                                   |[0x800009cc]:c.srli a0, 62<br> [0x800009ce]:sd a0, 928(ra)<br>  |
| 118|[0x800035b0]<br>0x0000000000000007|- rs1_val == -134217729<br>                                                                                                                  |[0x800009da]:c.srli a0, 61<br> [0x800009dc]:sd a0, 936(ra)<br>  |
| 119|[0x800035b8]<br>0x00000000000001FF|- rs1_val == -268435457<br>                                                                                                                  |[0x800009e8]:c.srli a0, 55<br> [0x800009ea]:sd a0, 944(ra)<br>  |
| 120|[0x800035c0]<br>0x001FFFFFFFFBFFFF|- rs1_val == -536870913<br>                                                                                                                  |[0x800009f6]:c.srli a0, 11<br> [0x800009f8]:sd a0, 952(ra)<br>  |
| 121|[0x800035c8]<br>0x0000000000000003|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000a04]:c.srli a0, 62<br> [0x80000a06]:sd a0, 960(ra)<br>  |
| 122|[0x800035d0]<br>0x7FFFFFFFBFFFFFFF|- rs1_val == -2147483649<br>                                                                                                                 |[0x80000a16]:c.srli a0, 1<br> [0x80000a18]:sd a0, 968(ra)<br>   |
| 123|[0x800035d8]<br>0x0FFFFFFFEFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000a28]:c.srli a0, 4<br> [0x80000a2a]:sd a0, 976(ra)<br>   |
| 124|[0x800035e0]<br>0x000FFFFFFFDFFFFF|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000a3a]:c.srli a0, 12<br> [0x80000a3c]:sd a0, 984(ra)<br>  |
| 125|[0x800035e8]<br>0x0003FFFFFFEFFFFF|- rs1_val == -17179869185<br>                                                                                                                |[0x80000a4c]:c.srli a0, 14<br> [0x80000a4e]:sd a0, 992(ra)<br>  |
| 126|[0x800035f0]<br>0x000000000000001F|- rs1_val == -34359738369<br>                                                                                                                |[0x80000a5e]:c.srli a0, 59<br> [0x80000a60]:sd a0, 1000(ra)<br> |
| 127|[0x800035f8]<br>0x000FFFFFFEFFFFFF|- rs1_val == -68719476737<br>                                                                                                                |[0x80000a70]:c.srli a0, 12<br> [0x80000a72]:sd a0, 1008(ra)<br> |
| 128|[0x80003600]<br>0x00003FFFFFF7FFFF|- rs1_val == -137438953473<br>                                                                                                               |[0x80000a82]:c.srli a0, 18<br> [0x80000a84]:sd a0, 1016(ra)<br> |
| 129|[0x80003608]<br>0x0000000000000003|- rs1_val == -274877906945<br>                                                                                                               |[0x80000a94]:c.srli a0, 62<br> [0x80000a96]:sd a0, 1024(ra)<br> |
| 130|[0x80003610]<br>0x0000000000000001|- rs1_val == -549755813889<br>                                                                                                               |[0x80000aa6]:c.srli a0, 63<br> [0x80000aa8]:sd a0, 1032(ra)<br> |
| 131|[0x80003618]<br>0x7FFFFF7FFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                              |[0x80000ab8]:c.srli a0, 1<br> [0x80000aba]:sd a0, 1040(ra)<br>  |
| 132|[0x80003620]<br>0x07FFFFEFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                              |[0x80000aca]:c.srli a0, 5<br> [0x80000acc]:sd a0, 1048(ra)<br>  |
| 133|[0x80003628]<br>0x00001FFFFF7FFFFF|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000adc]:c.srli a0, 19<br> [0x80000ade]:sd a0, 1056(ra)<br> |
