
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
| SIG_REGION                | [('0x80003208', '0x80003638', '134 dwords')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 155     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 134      |
| STAT1                     | 134      |
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

|s.no|            signature             |                                                       coverpoints                                                       |                              code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFE03|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -512<br> |[0x8000039c]:c.addi16sp 32<br> [0x8000039e]:sd sp, 0(ra)<br>    |
|   2|[0x80003210]<br>0x00000000000001F3|- rs1_val > 0 and imm_val > 0<br> - imm_val == 496<br>                                                                   |[0x800003a6]:c.addi16sp 31<br> [0x800003a8]:sd sp, 8(ra)<br>    |
|   3|[0x80003218]<br>0x8000000000000050|- rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                  |[0x800003b4]:c.addi16sp 5<br> [0x800003b6]:sd sp, 16(ra)<br>    |
|   4|[0x80003220]<br>0x00000000000000F0|- rs1_val == 0<br>                                                                                                       |[0x800003be]:c.addi16sp 15<br> [0x800003c0]:sd sp, 24(ra)<br>   |
|   5|[0x80003228]<br>0x800000000000003F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br> - imm_val == 64<br>                                |[0x800003d0]:c.addi16sp 4<br> [0x800003d2]:sd sp, 32(ra)<br>    |
|   6|[0x80003230]<br>0xFFFFFFFFFFFFFFE1|- rs1_val == 1<br> - imm_val == -32<br>                                                                                  |[0x800003da]:c.addi16sp 62<br> [0x800003dc]:sd sp, 40(ra)<br>   |
|   7|[0x80003238]<br>0x0000000000000020|- rs1_val == imm_val<br> - rs1_val == 16<br> - imm_val == 16<br>                                                         |[0x800003e4]:c.addi16sp 1<br> [0x800003e6]:sd sp, 48(ra)<br>    |
|   8|[0x80003240]<br>0xFFFFFFFFFBFFFF9F|- rs1_val < 0 and imm_val < 0<br> - rs1_val == -67108865<br>                                                             |[0x800003f2]:c.addi16sp 58<br> [0x800003f4]:sd sp, 56(ra)<br>   |
|   9|[0x80003248]<br>0x0000000000004020|- rs1_val == 16384<br> - imm_val == 32<br>                                                                               |[0x800003fc]:c.addi16sp 2<br> [0x800003fe]:sd sp, 64(ra)<br>    |
|  10|[0x80003250]<br>0xAAAAAAAAAAAAAB2A|- rs1_val == -6148914691236517206<br> - imm_val == 128<br>                                                               |[0x80000422]:c.addi16sp 8<br> [0x80000424]:sd sp, 72(ra)<br>    |
|  11|[0x80003258]<br>0xFFFFFFFF800000FF|- rs1_val == -2147483649<br> - imm_val == 256<br>                                                                        |[0x80000434]:c.addi16sp 16<br> [0x80000436]:sd sp, 80(ra)<br>   |
|  12|[0x80003260]<br>0xF7FFFFFFFFFFFFCF|- rs1_val == -576460752303423489<br> - imm_val == -48<br>                                                                |[0x80000446]:c.addi16sp 61<br> [0x80000448]:sd sp, 88(ra)<br>   |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFF9F|- rs1_val == -17<br> - imm_val == -80<br>                                                                                |[0x80000450]:c.addi16sp 59<br> [0x80000452]:sd sp, 96(ra)<br>   |
|  14|[0x80003270]<br>0xFFFFFFFFFEFFFF6F|- rs1_val == -16777217<br> - imm_val == -144<br>                                                                         |[0x8000045e]:c.addi16sp 55<br> [0x80000460]:sd sp, 104(ra)<br>  |
|  15|[0x80003278]<br>0x0FFFFFFFFFFFFEF0|- rs1_val == 1152921504606846976<br> - imm_val == -272<br>                                                               |[0x8000046c]:c.addi16sp 47<br> [0x8000046e]:sd sp, 112(ra)<br>  |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFF4F|- rs1_val == -513<br> - imm_val == 336<br>                                                                               |[0x80000476]:c.addi16sp 21<br> [0x80000478]:sd sp, 120(ra)<br>  |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFFE96|- imm_val == -352<br>                                                                                                    |[0x80000480]:c.addi16sp 42<br> [0x80000482]:sd sp, 128(ra)<br>  |
|  18|[0x80003290]<br>0x00000000000001F2|- rs1_val == 2<br>                                                                                                       |[0x8000048a]:c.addi16sp 31<br> [0x8000048c]:sd sp, 136(ra)<br>  |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFE04|- rs1_val == 4<br>                                                                                                       |[0x80000494]:c.addi16sp 32<br> [0x80000496]:sd sp, 144(ra)<br>  |
|  20|[0x800032a0]<br>0xFFFFFFFFFFFFFFD8|- rs1_val == 8<br>                                                                                                       |[0x8000049e]:c.addi16sp 61<br> [0x800004a0]:sd sp, 152(ra)<br>  |
|  21|[0x800032a8]<br>0x00000000000000A0|- rs1_val == 32<br>                                                                                                      |[0x800004a8]:c.addi16sp 8<br> [0x800004aa]:sd sp, 160(ra)<br>   |
|  22|[0x800032b0]<br>0xFFFFFFFFFFFFFFA0|- rs1_val == 64<br>                                                                                                      |[0x800004b2]:c.addi16sp 54<br> [0x800004b4]:sd sp, 168(ra)<br>  |
|  23|[0x800032b8]<br>0x00000000000000D0|- rs1_val == 128<br>                                                                                                     |[0x800004bc]:c.addi16sp 5<br> [0x800004be]:sd sp, 176(ra)<br>   |
|  24|[0x800032c0]<br>0x0000000000000150|- rs1_val == 256<br>                                                                                                     |[0x800004c6]:c.addi16sp 5<br> [0x800004c8]:sd sp, 184(ra)<br>   |
|  25|[0x800032c8]<br>0x00000000000001E0|- rs1_val == 512<br>                                                                                                     |[0x800004d0]:c.addi16sp 62<br> [0x800004d2]:sd sp, 192(ra)<br>  |
|  26|[0x800032d0]<br>0x00000000000005F0|- rs1_val == 1024<br>                                                                                                    |[0x800004da]:c.addi16sp 31<br> [0x800004dc]:sd sp, 200(ra)<br>  |
|  27|[0x800032d8]<br>0x0000000000000780|- rs1_val == 2048<br>                                                                                                    |[0x800004e8]:c.addi16sp 56<br> [0x800004ea]:sd sp, 208(ra)<br>  |
|  28|[0x800032e0]<br>0x0000000000001050|- rs1_val == 4096<br>                                                                                                    |[0x800004f2]:c.addi16sp 5<br> [0x800004f4]:sd sp, 216(ra)<br>   |
|  29|[0x800032e8]<br>0x0000000000002040|- rs1_val == 8192<br>                                                                                                    |[0x800004fc]:c.addi16sp 4<br> [0x800004fe]:sd sp, 224(ra)<br>   |
|  30|[0x800032f0]<br>0x0000000000008070|- rs1_val == 32768<br>                                                                                                   |[0x80000506]:c.addi16sp 7<br> [0x80000508]:sd sp, 232(ra)<br>   |
|  31|[0x800032f8]<br>0x0000000000010040|- rs1_val == 65536<br>                                                                                                   |[0x80000510]:c.addi16sp 4<br> [0x80000512]:sd sp, 240(ra)<br>   |
|  32|[0x80003300]<br>0x0000000000020090|- rs1_val == 131072<br>                                                                                                  |[0x8000051a]:c.addi16sp 9<br> [0x8000051c]:sd sp, 248(ra)<br>   |
|  33|[0x80003308]<br>0x000000000003FEF0|- rs1_val == 262144<br>                                                                                                  |[0x80000524]:c.addi16sp 47<br> [0x80000526]:sd sp, 256(ra)<br>  |
|  34|[0x80003310]<br>0x000000000007FFC0|- rs1_val == 524288<br>                                                                                                  |[0x8000052e]:c.addi16sp 60<br> [0x80000530]:sd sp, 264(ra)<br>  |
|  35|[0x80003318]<br>0x00000000000FFE00|- rs1_val == 1048576<br>                                                                                                 |[0x80000538]:c.addi16sp 32<br> [0x8000053a]:sd sp, 272(ra)<br>  |
|  36|[0x80003320]<br>0x00000000001FFFB0|- rs1_val == 2097152<br>                                                                                                 |[0x80000542]:c.addi16sp 59<br> [0x80000544]:sd sp, 280(ra)<br>  |
|  37|[0x80003328]<br>0x00000000003FFFE0|- rs1_val == 4194304<br>                                                                                                 |[0x8000054c]:c.addi16sp 62<br> [0x8000054e]:sd sp, 288(ra)<br>  |
|  38|[0x80003330]<br>0x00000000007FFFF0|- rs1_val == 8388608<br>                                                                                                 |[0x80000556]:c.addi16sp 63<br> [0x80000558]:sd sp, 296(ra)<br>  |
|  39|[0x80003338]<br>0x0000000001000100|- rs1_val == 16777216<br>                                                                                                |[0x80000560]:c.addi16sp 16<br> [0x80000562]:sd sp, 304(ra)<br>  |
|  40|[0x80003340]<br>0x0000000002000030|- rs1_val == 33554432<br>                                                                                                |[0x8000056a]:c.addi16sp 3<br> [0x8000056c]:sd sp, 312(ra)<br>   |
|  41|[0x80003348]<br>0x00000000040000F0|- rs1_val == 67108864<br>                                                                                                |[0x80000574]:c.addi16sp 15<br> [0x80000576]:sd sp, 320(ra)<br>  |
|  42|[0x80003350]<br>0x0000000007FFFFA0|- rs1_val == 134217728<br>                                                                                               |[0x8000057e]:c.addi16sp 58<br> [0x80000580]:sd sp, 328(ra)<br>  |
|  43|[0x80003358]<br>0x000000000FFFFFF0|- rs1_val == 268435456<br>                                                                                               |[0x80000588]:c.addi16sp 63<br> [0x8000058a]:sd sp, 336(ra)<br>  |
|  44|[0x80003360]<br>0x0000000020000020|- rs1_val == 536870912<br>                                                                                               |[0x80000592]:c.addi16sp 2<br> [0x80000594]:sd sp, 344(ra)<br>   |
|  45|[0x80003368]<br>0x000000003FFFFF60|- rs1_val == 1073741824<br>                                                                                              |[0x8000059c]:c.addi16sp 54<br> [0x8000059e]:sd sp, 352(ra)<br>  |
|  46|[0x80003370]<br>0x000000007FFFFFE0|- rs1_val == 2147483648<br>                                                                                              |[0x800005aa]:c.addi16sp 62<br> [0x800005ac]:sd sp, 360(ra)<br>  |
|  47|[0x80003378]<br>0x00000000FFFFFE00|- rs1_val == 4294967296<br>                                                                                              |[0x800005b8]:c.addi16sp 32<br> [0x800005ba]:sd sp, 368(ra)<br>  |
|  48|[0x80003380]<br>0x0000000200000040|- rs1_val == 8589934592<br>                                                                                              |[0x800005c6]:c.addi16sp 4<br> [0x800005c8]:sd sp, 376(ra)<br>   |
|  49|[0x80003388]<br>0x00000003FFFFFF80|- rs1_val == 17179869184<br>                                                                                             |[0x800005d4]:c.addi16sp 56<br> [0x800005d6]:sd sp, 384(ra)<br>  |
|  50|[0x80003390]<br>0x0000000800000090|- rs1_val == 34359738368<br>                                                                                             |[0x800005e2]:c.addi16sp 9<br> [0x800005e4]:sd sp, 392(ra)<br>   |
|  51|[0x80003398]<br>0x0000001000000020|- rs1_val == 68719476736<br>                                                                                             |[0x800005f0]:c.addi16sp 2<br> [0x800005f2]:sd sp, 400(ra)<br>   |
|  52|[0x800033a0]<br>0x0000002000000080|- rs1_val == 137438953472<br>                                                                                            |[0x800005fe]:c.addi16sp 8<br> [0x80000600]:sd sp, 408(ra)<br>   |
|  53|[0x800033a8]<br>0x0000004000000070|- rs1_val == 274877906944<br>                                                                                            |[0x8000060c]:c.addi16sp 7<br> [0x8000060e]:sd sp, 416(ra)<br>   |
|  54|[0x800033b0]<br>0x0000007FFFFFFE00|- rs1_val == 549755813888<br>                                                                                            |[0x8000061a]:c.addi16sp 32<br> [0x8000061c]:sd sp, 424(ra)<br>  |
|  55|[0x800033b8]<br>0x000000FFFFFFFF70|- rs1_val == 1099511627776<br>                                                                                           |[0x80000628]:c.addi16sp 55<br> [0x8000062a]:sd sp, 432(ra)<br>  |
|  56|[0x800033c0]<br>0x000001FFFFFFFEA0|- rs1_val == 2199023255552<br>                                                                                           |[0x80000636]:c.addi16sp 42<br> [0x80000638]:sd sp, 440(ra)<br>  |
|  57|[0x800033c8]<br>0x00000400000001F0|- rs1_val == 4398046511104<br>                                                                                           |[0x80000644]:c.addi16sp 31<br> [0x80000646]:sd sp, 448(ra)<br>  |
|  58|[0x800033d0]<br>0x0000080000000010|- rs1_val == 8796093022208<br>                                                                                           |[0x80000652]:c.addi16sp 1<br> [0x80000654]:sd sp, 456(ra)<br>   |
|  59|[0x800033d8]<br>0x0000100000000060|- rs1_val == 17592186044416<br>                                                                                          |[0x80000660]:c.addi16sp 6<br> [0x80000662]:sd sp, 464(ra)<br>   |
|  60|[0x800033e0]<br>0x0000200000000080|- rs1_val == 35184372088832<br>                                                                                          |[0x8000066e]:c.addi16sp 8<br> [0x80000670]:sd sp, 472(ra)<br>   |
|  61|[0x800033e8]<br>0x00004000000001F0|- rs1_val == 70368744177664<br>                                                                                          |[0x8000067c]:c.addi16sp 31<br> [0x8000067e]:sd sp, 480(ra)<br>  |
|  62|[0x800033f0]<br>0x0000800000000020|- rs1_val == 140737488355328<br>                                                                                         |[0x8000068a]:c.addi16sp 2<br> [0x8000068c]:sd sp, 488(ra)<br>   |
|  63|[0x800033f8]<br>0x0001000000000150|- rs1_val == 281474976710656<br>                                                                                         |[0x80000698]:c.addi16sp 21<br> [0x8000069a]:sd sp, 496(ra)<br>  |
|  64|[0x80003400]<br>0x0001FFFFFFFFFF90|- rs1_val == 562949953421312<br>                                                                                         |[0x800006a6]:c.addi16sp 57<br> [0x800006a8]:sd sp, 504(ra)<br>  |
|  65|[0x80003408]<br>0x0004000000000150|- rs1_val == 1125899906842624<br>                                                                                        |[0x800006b4]:c.addi16sp 21<br> [0x800006b6]:sd sp, 512(ra)<br>  |
|  66|[0x80003410]<br>0x0007FFFFFFFFFEA0|- rs1_val == 2251799813685248<br>                                                                                        |[0x800006c2]:c.addi16sp 42<br> [0x800006c4]:sd sp, 520(ra)<br>  |
|  67|[0x80003418]<br>0x000FFFFFFFFFFFB0|- rs1_val == 4503599627370496<br>                                                                                        |[0x800006d0]:c.addi16sp 59<br> [0x800006d2]:sd sp, 528(ra)<br>  |
|  68|[0x80003420]<br>0x0020000000000050|- rs1_val == 9007199254740992<br>                                                                                        |[0x800006de]:c.addi16sp 5<br> [0x800006e0]:sd sp, 536(ra)<br>   |
|  69|[0x80003428]<br>0x0040000000000030|- rs1_val == 18014398509481984<br>                                                                                       |[0x800006ec]:c.addi16sp 3<br> [0x800006ee]:sd sp, 544(ra)<br>   |
|  70|[0x80003430]<br>0x007FFFFFFFFFFEF0|- rs1_val == 36028797018963968<br>                                                                                       |[0x800006fa]:c.addi16sp 47<br> [0x800006fc]:sd sp, 552(ra)<br>  |
|  71|[0x80003438]<br>0x00FFFFFFFFFFFE00|- rs1_val == 72057594037927936<br>                                                                                       |[0x80000708]:c.addi16sp 32<br> [0x8000070a]:sd sp, 560(ra)<br>  |
|  72|[0x80003440]<br>0xFFFFFDFFFFFFFFAF|- rs1_val == -2199023255553<br>                                                                                          |[0x8000071a]:c.addi16sp 59<br> [0x8000071c]:sd sp, 568(ra)<br>  |
|  73|[0x80003448]<br>0xFFFFFC00000001EF|- rs1_val == -4398046511105<br>                                                                                          |[0x8000072c]:c.addi16sp 31<br> [0x8000072e]:sd sp, 576(ra)<br>  |
|  74|[0x80003450]<br>0xFFFFF7FFFFFFFE9F|- rs1_val == -8796093022209<br>                                                                                          |[0x8000073e]:c.addi16sp 42<br> [0x80000740]:sd sp, 584(ra)<br>  |
|  75|[0x80003458]<br>0xFFFFEFFFFFFFFF9F|- rs1_val == -17592186044417<br>                                                                                         |[0x80000750]:c.addi16sp 58<br> [0x80000752]:sd sp, 592(ra)<br>  |
|  76|[0x80003460]<br>0xFFFFE0000000008F|- rs1_val == -35184372088833<br>                                                                                         |[0x80000762]:c.addi16sp 9<br> [0x80000764]:sd sp, 600(ra)<br>   |
|  77|[0x80003468]<br>0xFFFFC0000000014F|- rs1_val == -70368744177665<br>                                                                                         |[0x80000774]:c.addi16sp 21<br> [0x80000776]:sd sp, 608(ra)<br>  |
|  78|[0x80003470]<br>0xFFFF80000000007F|- rs1_val == -140737488355329<br>                                                                                        |[0x80000786]:c.addi16sp 8<br> [0x80000788]:sd sp, 616(ra)<br>   |
|  79|[0x80003478]<br>0xFFFEFFFFFFFFFE9F|- rs1_val == -281474976710657<br>                                                                                        |[0x80000798]:c.addi16sp 42<br> [0x8000079a]:sd sp, 624(ra)<br>  |
|  80|[0x80003480]<br>0xFFFE00000000006F|- rs1_val == -562949953421313<br>                                                                                        |[0x800007aa]:c.addi16sp 7<br> [0x800007ac]:sd sp, 632(ra)<br>   |
|  81|[0x80003488]<br>0xFFFBFFFFFFFFFDFF|- rs1_val == -1125899906842625<br>                                                                                       |[0x800007bc]:c.addi16sp 32<br> [0x800007be]:sd sp, 640(ra)<br>  |
|  82|[0x80003490]<br>0xFFF800000000004F|- rs1_val == -2251799813685249<br>                                                                                       |[0x800007ce]:c.addi16sp 5<br> [0x800007d0]:sd sp, 648(ra)<br>   |
|  83|[0x80003498]<br>0xFFF000000000003F|- rs1_val == -4503599627370497<br>                                                                                       |[0x800007e0]:c.addi16sp 4<br> [0x800007e2]:sd sp, 656(ra)<br>   |
|  84|[0x800034a0]<br>0xFFE000000000006F|- rs1_val == -9007199254740993<br>                                                                                       |[0x800007f2]:c.addi16sp 7<br> [0x800007f4]:sd sp, 664(ra)<br>   |
|  85|[0x800034a8]<br>0xFFC00000000001EF|- rs1_val == -18014398509481985<br>                                                                                      |[0x80000804]:c.addi16sp 31<br> [0x80000806]:sd sp, 672(ra)<br>  |
|  86|[0x800034b0]<br>0xFF7FFFFFFFFFFF9F|- rs1_val == -36028797018963969<br>                                                                                      |[0x80000816]:c.addi16sp 58<br> [0x80000818]:sd sp, 680(ra)<br>  |
|  87|[0x800034b8]<br>0xFF0000000000005F|- rs1_val == -72057594037927937<br>                                                                                      |[0x80000828]:c.addi16sp 6<br> [0x8000082a]:sd sp, 688(ra)<br>   |
|  88|[0x800034c0]<br>0xFE000000000001EF|- rs1_val == -144115188075855873<br>                                                                                     |[0x8000083a]:c.addi16sp 31<br> [0x8000083c]:sd sp, 696(ra)<br>  |
|  89|[0x800034c8]<br>0xFBFFFFFFFFFFFDFF|- rs1_val == -288230376151711745<br>                                                                                     |[0x8000084c]:c.addi16sp 32<br> [0x8000084e]:sd sp, 704(ra)<br>  |
|  90|[0x800034d0]<br>0xF00000000000004F|- rs1_val == -1152921504606846977<br>                                                                                    |[0x8000085e]:c.addi16sp 5<br> [0x80000860]:sd sp, 712(ra)<br>   |
|  91|[0x800034d8]<br>0xDFFFFFFFFFFFFEEF|- rs1_val == -2305843009213693953<br>                                                                                    |[0x80000870]:c.addi16sp 47<br> [0x80000872]:sd sp, 720(ra)<br>  |
|  92|[0x800034e0]<br>0xC00000000000002F|- rs1_val == -4611686018427387905<br>                                                                                    |[0x80000882]:c.addi16sp 3<br> [0x80000884]:sd sp, 728(ra)<br>   |
|  93|[0x800034e8]<br>0x5555555555555545|- rs1_val == 6148914691236517205<br>                                                                                     |[0x800008a8]:c.addi16sp 63<br> [0x800008aa]:sd sp, 736(ra)<br>  |
|  94|[0x800034f0]<br>0x0200000000000050|- rs1_val == 144115188075855872<br>                                                                                      |[0x800008b6]:c.addi16sp 5<br> [0x800008b8]:sd sp, 744(ra)<br>   |
|  95|[0x800034f8]<br>0x0400000000000070|- rs1_val == 288230376151711744<br>                                                                                      |[0x800008c4]:c.addi16sp 7<br> [0x800008c6]:sd sp, 752(ra)<br>   |
|  96|[0x80003500]<br>0x0800000000000150|- rs1_val == 576460752303423488<br>                                                                                      |[0x800008d2]:c.addi16sp 21<br> [0x800008d4]:sd sp, 760(ra)<br>  |
|  97|[0x80003508]<br>0x20000000000000F0|- rs1_val == 2305843009213693952<br>                                                                                     |[0x800008e0]:c.addi16sp 15<br> [0x800008e2]:sd sp, 768(ra)<br>  |
|  98|[0x80003510]<br>0x4000000000000060|- rs1_val == 4611686018427387904<br>                                                                                     |[0x800008ee]:c.addi16sp 6<br> [0x800008f0]:sd sp, 776(ra)<br>   |
|  99|[0x80003518]<br>0x000000000000005E|- rs1_val == -2<br>                                                                                                      |[0x800008f8]:c.addi16sp 6<br> [0x800008fa]:sd sp, 784(ra)<br>   |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFAD|- rs1_val == -3<br>                                                                                                      |[0x80000902]:c.addi16sp 59<br> [0x80000904]:sd sp, 792(ra)<br>  |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFFF7B|- rs1_val == -5<br>                                                                                                      |[0x8000090c]:c.addi16sp 56<br> [0x8000090e]:sd sp, 800(ra)<br>  |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFE97|- rs1_val == -9<br>                                                                                                      |[0x80000916]:c.addi16sp 42<br> [0x80000918]:sd sp, 808(ra)<br>  |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFAF|- rs1_val == -33<br>                                                                                                     |[0x80000920]:c.addi16sp 61<br> [0x80000922]:sd sp, 816(ra)<br>  |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFF6F|- rs1_val == -65<br>                                                                                                     |[0x8000092a]:c.addi16sp 59<br> [0x8000092c]:sd sp, 824(ra)<br>  |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFEEF|- rs1_val == -129<br>                                                                                                    |[0x80000934]:c.addi16sp 55<br> [0x80000936]:sd sp, 832(ra)<br>  |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFDEF|- rs1_val == -257<br>                                                                                                    |[0x8000093e]:c.addi16sp 47<br> [0x80000940]:sd sp, 840(ra)<br>  |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFD4F|- rs1_val == -1025<br>                                                                                                   |[0x80000948]:c.addi16sp 21<br> [0x8000094a]:sd sp, 848(ra)<br>  |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFF7BF|- rs1_val == -2049<br>                                                                                                   |[0x80000956]:c.addi16sp 60<br> [0x80000958]:sd sp, 856(ra)<br>  |
| 109|[0x80003568]<br>0xFFFFFFFFFFFFF14F|- rs1_val == -4097<br>                                                                                                   |[0x80000964]:c.addi16sp 21<br> [0x80000966]:sd sp, 864(ra)<br>  |
| 110|[0x80003570]<br>0xFFFFFFFFFFFFDEEF|- rs1_val == -8193<br>                                                                                                   |[0x80000972]:c.addi16sp 47<br> [0x80000974]:sd sp, 872(ra)<br>  |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFC01F|- rs1_val == -16385<br>                                                                                                  |[0x80000980]:c.addi16sp 2<br> [0x80000982]:sd sp, 880(ra)<br>   |
| 112|[0x80003580]<br>0xFFFFFFFFFFFF805F|- rs1_val == -32769<br>                                                                                                  |[0x8000098e]:c.addi16sp 6<br> [0x80000990]:sd sp, 888(ra)<br>   |
| 113|[0x80003588]<br>0xFFFFFFFFFFFEFFEF|- rs1_val == -65537<br>                                                                                                  |[0x8000099c]:c.addi16sp 63<br> [0x8000099e]:sd sp, 896(ra)<br>  |
| 114|[0x80003590]<br>0xFFFFFFFFFFFE004F|- rs1_val == -131073<br>                                                                                                 |[0x800009aa]:c.addi16sp 5<br> [0x800009ac]:sd sp, 904(ra)<br>   |
| 115|[0x80003598]<br>0xFFFFFFFFFFFBFDFF|- rs1_val == -262145<br>                                                                                                 |[0x800009b8]:c.addi16sp 32<br> [0x800009ba]:sd sp, 912(ra)<br>  |
| 116|[0x800035a0]<br>0xFFFFFFFFFFF7FF9F|- rs1_val == -524289<br>                                                                                                 |[0x800009c6]:c.addi16sp 58<br> [0x800009c8]:sd sp, 920(ra)<br>  |
| 117|[0x800035a8]<br>0xFFFFFFFFFFEFFEFF|- rs1_val == -1048577<br>                                                                                                |[0x800009d4]:c.addi16sp 48<br> [0x800009d6]:sd sp, 928(ra)<br>  |
| 118|[0x800035b0]<br>0xFFFFFFFFFFE0003F|- rs1_val == -2097153<br>                                                                                                |[0x800009e2]:c.addi16sp 4<br> [0x800009e4]:sd sp, 936(ra)<br>   |
| 119|[0x800035b8]<br>0xFFFFFFFFFFC000FF|- rs1_val == -4194305<br>                                                                                                |[0x800009f0]:c.addi16sp 16<br> [0x800009f2]:sd sp, 944(ra)<br>  |
| 120|[0x800035c0]<br>0xFFFFFFFFFF7FFFBF|- rs1_val == -8388609<br>                                                                                                |[0x800009fe]:c.addi16sp 60<br> [0x80000a00]:sd sp, 952(ra)<br>  |
| 121|[0x800035c8]<br>0xFFFFFFFFFDFFFFDF|- rs1_val == -33554433<br>                                                                                               |[0x80000a0c]:c.addi16sp 62<br> [0x80000a0e]:sd sp, 960(ra)<br>  |
| 122|[0x800035d0]<br>0xFFFFFFFFF800014F|- rs1_val == -134217729<br>                                                                                              |[0x80000a1a]:c.addi16sp 21<br> [0x80000a1c]:sd sp, 968(ra)<br>  |
| 123|[0x800035d8]<br>0xFFFFFFFFEFFFFF7F|- rs1_val == -268435457<br>                                                                                              |[0x80000a28]:c.addi16sp 56<br> [0x80000a2a]:sd sp, 976(ra)<br>  |
| 124|[0x800035e0]<br>0xFFFFFFFFE000014F|- rs1_val == -536870913<br>                                                                                              |[0x80000a36]:c.addi16sp 21<br> [0x80000a38]:sd sp, 984(ra)<br>  |
| 125|[0x800035e8]<br>0xFFFFFFFFC000007F|- rs1_val == -1073741825<br>                                                                                             |[0x80000a44]:c.addi16sp 8<br> [0x80000a46]:sd sp, 992(ra)<br>   |
| 126|[0x800035f0]<br>0xFFFFFFFF000001EF|- rs1_val == -4294967297<br>                                                                                             |[0x80000a56]:c.addi16sp 31<br> [0x80000a58]:sd sp, 1000(ra)<br> |
| 127|[0x800035f8]<br>0xFFFFFFFE0000014F|- rs1_val == -8589934593<br>                                                                                             |[0x80000a68]:c.addi16sp 21<br> [0x80000a6a]:sd sp, 1008(ra)<br> |
| 128|[0x80003600]<br>0xFFFFFFFC0000014F|- rs1_val == -17179869185<br>                                                                                            |[0x80000a7a]:c.addi16sp 21<br> [0x80000a7c]:sd sp, 1016(ra)<br> |
| 129|[0x80003608]<br>0xFFFFFFF80000000F|- rs1_val == -34359738369<br>                                                                                            |[0x80000a8c]:c.addi16sp 1<br> [0x80000a8e]:sd sp, 1024(ra)<br>  |
| 130|[0x80003610]<br>0xFFFFFFF0000001EF|- rs1_val == -68719476737<br>                                                                                            |[0x80000a9e]:c.addi16sp 31<br> [0x80000aa0]:sd sp, 1032(ra)<br> |
| 131|[0x80003618]<br>0xFFFFFFDFFFFFFFEF|- rs1_val == -137438953473<br>                                                                                           |[0x80000ab0]:c.addi16sp 63<br> [0x80000ab2]:sd sp, 1040(ra)<br> |
| 132|[0x80003620]<br>0xFFFFFFBFFFFFFFBF|- rs1_val == -274877906945<br>                                                                                           |[0x80000ac2]:c.addi16sp 60<br> [0x80000ac4]:sd sp, 1048(ra)<br> |
| 133|[0x80003628]<br>0xFFFFFF7FFFFFFFEF|- rs1_val == -549755813889<br>                                                                                           |[0x80000ad4]:c.addi16sp 63<br> [0x80000ad6]:sd sp, 1056(ra)<br> |
| 134|[0x80003630]<br>0xFFFFFF000000004F|- rs1_val == -1099511627777<br>                                                                                          |[0x80000ae6]:c.addi16sp 5<br> [0x80000ae8]:sd sp, 1064(ra)<br>  |
