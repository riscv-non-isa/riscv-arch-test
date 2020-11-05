
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
| SIG_REGION                | [('0x80003204', '0x80003638', '134 dwords')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 155     |
| Total Coverpoints Hit     | 155      |
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

|s.no|            signature             |                                                                       coverpoints                                                                        |                              code                              |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003210]<br>0x0001FFFFFFFFFE00|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == 562949953421312<br> |[0x800003a0]:c.addi16sp 32<br> [0x800003a2]:sd sp, 0(ra)<br>    |
|   2|[0x80003218]<br>0x40000000000001F0|- rs1_val > 0 and imm_val > 0<br> - imm_val == 496<br> - rs1_val == 4611686018427387904<br>                                                               |[0x800003ae]:c.addi16sp 31<br> [0x800003b0]:sd sp, 8(ra)<br>    |
|   3|[0x80003220]<br>0x80000000000001F0|- rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                   |[0x800003bc]:c.addi16sp 31<br> [0x800003be]:sd sp, 16(ra)<br>   |
|   4|[0x80003228]<br>0x0000000000000080|- rs1_val == 0<br> - imm_val == 128<br>                                                                                                                   |[0x800003c6]:c.addi16sp 8<br> [0x800003c8]:sd sp, 24(ra)<br>    |
|   5|[0x80003230]<br>0x800000000000014F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br> - imm_val == 336<br>                                                                |[0x800003d8]:c.addi16sp 21<br> [0x800003da]:sd sp, 32(ra)<br>   |
|   6|[0x80003238]<br>0xFFFFFFFFFFFFFEF1|- rs1_val == 1<br> - imm_val == -272<br>                                                                                                                  |[0x800003e2]:c.addi16sp 47<br> [0x800003e4]:sd sp, 40(ra)<br>   |
|   7|[0x80003240]<br>0x0000000000000100|- rs1_val == imm_val<br> - rs1_val == 128<br>                                                                                                             |[0x800003ec]:c.addi16sp 8<br> [0x800003ee]:sd sp, 48(ra)<br>    |
|   8|[0x80003248]<br>0xFFFFFFFFFFFFFDFB|- rs1_val < 0 and imm_val < 0<br> - rs1_val == -5<br>                                                                                                     |[0x800003f6]:c.addi16sp 32<br> [0x800003f8]:sd sp, 56(ra)<br>   |
|   9|[0x80003250]<br>0x0100000000000010|- rs1_val == 72057594037927936<br> - imm_val == 16<br>                                                                                                    |[0x80000404]:c.addi16sp 1<br> [0x80000406]:sd sp, 64(ra)<br>    |
|  10|[0x80003258]<br>0x1000000000000020|- rs1_val == 1152921504606846976<br> - imm_val == 32<br>                                                                                                  |[0x80000412]:c.addi16sp 2<br> [0x80000414]:sd sp, 72(ra)<br>    |
|  11|[0x80003260]<br>0xFFFFFFF00000003F|- rs1_val == -68719476737<br> - imm_val == 64<br>                                                                                                         |[0x80000424]:c.addi16sp 4<br> [0x80000426]:sd sp, 80(ra)<br>    |
|  12|[0x80003268]<br>0x0000000000000106|- imm_val == 256<br>                                                                                                                                      |[0x8000042e]:c.addi16sp 16<br> [0x80000430]:sd sp, 88(ra)<br>   |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFFFE7|- imm_val == -32<br>                                                                                                                                      |[0x80000438]:c.addi16sp 62<br> [0x8000043a]:sd sp, 96(ra)<br>   |
|  14|[0x80003278]<br>0x00000000FFFFFFD0|- rs1_val == 4294967296<br> - imm_val == -48<br>                                                                                                          |[0x80000446]:c.addi16sp 61<br> [0x80000448]:sd sp, 104(ra)<br>  |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFFFAD|- rs1_val == -3<br> - imm_val == -80<br>                                                                                                                  |[0x80000450]:c.addi16sp 59<br> [0x80000452]:sd sp, 112(ra)<br>  |
|  16|[0x80003288]<br>0x000000001FFFFF70|- rs1_val == 536870912<br> - imm_val == -144<br>                                                                                                          |[0x8000045a]:c.addi16sp 55<br> [0x8000045c]:sd sp, 120(ra)<br>  |
|  17|[0x80003290]<br>0xFFFFFFFFFFDFFE9F|- rs1_val == -2097153<br> - imm_val == -352<br>                                                                                                           |[0x80000468]:c.addi16sp 42<br> [0x8000046a]:sd sp, 128(ra)<br>  |
|  18|[0x80003298]<br>0x0000000000000102|- rs1_val == 2<br>                                                                                                                                        |[0x80000472]:c.addi16sp 16<br> [0x80000474]:sd sp, 136(ra)<br>  |
|  19|[0x800032a0]<br>0xFFFFFFFFFFFFFEA4|- rs1_val == 4<br>                                                                                                                                        |[0x8000047c]:c.addi16sp 42<br> [0x8000047e]:sd sp, 144(ra)<br>  |
|  20|[0x800032a8]<br>0xFFFFFFFFFFFFFFA8|- rs1_val == 8<br>                                                                                                                                        |[0x80000486]:c.addi16sp 58<br> [0x80000488]:sd sp, 152(ra)<br>  |
|  21|[0x800032b0]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == 16<br>                                                                                                                                       |[0x80000490]:c.addi16sp 62<br> [0x80000492]:sd sp, 160(ra)<br>  |
|  22|[0x800032b8]<br>0x00000000000000B0|- rs1_val == 32<br>                                                                                                                                       |[0x8000049a]:c.addi16sp 9<br> [0x8000049c]:sd sp, 168(ra)<br>   |
|  23|[0x800032c0]<br>0x0000000000000010|- rs1_val == 64<br>                                                                                                                                       |[0x800004a4]:c.addi16sp 61<br> [0x800004a6]:sd sp, 176(ra)<br>  |
|  24|[0x800032c8]<br>0x0000000000000000|- rs1_val == 256<br>                                                                                                                                      |[0x800004ae]:c.addi16sp 48<br> [0x800004b0]:sd sp, 184(ra)<br>  |
|  25|[0x800032d0]<br>0x00000000000003F0|- rs1_val == 512<br>                                                                                                                                      |[0x800004b8]:c.addi16sp 31<br> [0x800004ba]:sd sp, 192(ra)<br>  |
|  26|[0x800032d8]<br>0x00000000000005F0|- rs1_val == 1024<br>                                                                                                                                     |[0x800004c2]:c.addi16sp 31<br> [0x800004c4]:sd sp, 200(ra)<br>  |
|  27|[0x800032e0]<br>0x0000000000000840|- rs1_val == 2048<br>                                                                                                                                     |[0x800004d0]:c.addi16sp 4<br> [0x800004d2]:sd sp, 208(ra)<br>   |
|  28|[0x800032e8]<br>0x0000000000001030|- rs1_val == 4096<br>                                                                                                                                     |[0x800004da]:c.addi16sp 3<br> [0x800004dc]:sd sp, 216(ra)<br>   |
|  29|[0x800032f0]<br>0x0000000000002030|- rs1_val == 8192<br>                                                                                                                                     |[0x800004e4]:c.addi16sp 3<br> [0x800004e6]:sd sp, 224(ra)<br>   |
|  30|[0x800032f8]<br>0x0000000000004090|- rs1_val == 16384<br>                                                                                                                                    |[0x800004ee]:c.addi16sp 9<br> [0x800004f0]:sd sp, 232(ra)<br>   |
|  31|[0x80003300]<br>0x0000000000007F90|- rs1_val == 32768<br>                                                                                                                                    |[0x800004f8]:c.addi16sp 57<br> [0x800004fa]:sd sp, 240(ra)<br>  |
|  32|[0x80003308]<br>0x000000000000FF60|- rs1_val == 65536<br>                                                                                                                                    |[0x80000502]:c.addi16sp 54<br> [0x80000504]:sd sp, 248(ra)<br>  |
|  33|[0x80003310]<br>0x0000000000020090|- rs1_val == 131072<br>                                                                                                                                   |[0x8000050c]:c.addi16sp 9<br> [0x8000050e]:sd sp, 256(ra)<br>   |
|  34|[0x80003318]<br>0x0000000000040060|- rs1_val == 262144<br>                                                                                                                                   |[0x80000516]:c.addi16sp 6<br> [0x80000518]:sd sp, 264(ra)<br>   |
|  35|[0x80003320]<br>0x000000000007FFE0|- rs1_val == 524288<br>                                                                                                                                   |[0x80000520]:c.addi16sp 62<br> [0x80000522]:sd sp, 272(ra)<br>  |
|  36|[0x80003328]<br>0x0000000000100030|- rs1_val == 1048576<br>                                                                                                                                  |[0x8000052a]:c.addi16sp 3<br> [0x8000052c]:sd sp, 280(ra)<br>   |
|  37|[0x80003330]<br>0x00000000001FFFE0|- rs1_val == 2097152<br>                                                                                                                                  |[0x80000534]:c.addi16sp 62<br> [0x80000536]:sd sp, 288(ra)<br>  |
|  38|[0x80003338]<br>0x00000000003FFF70|- rs1_val == 4194304<br>                                                                                                                                  |[0x8000053e]:c.addi16sp 55<br> [0x80000540]:sd sp, 296(ra)<br>  |
|  39|[0x80003340]<br>0x00000000007FFFE0|- rs1_val == 8388608<br>                                                                                                                                  |[0x80000548]:c.addi16sp 62<br> [0x8000054a]:sd sp, 304(ra)<br>  |
|  40|[0x80003348]<br>0x0000000000FFFF70|- rs1_val == 16777216<br>                                                                                                                                 |[0x80000552]:c.addi16sp 55<br> [0x80000554]:sd sp, 312(ra)<br>  |
|  41|[0x80003350]<br>0x0000000001FFFFB0|- rs1_val == 33554432<br>                                                                                                                                 |[0x8000055c]:c.addi16sp 59<br> [0x8000055e]:sd sp, 320(ra)<br>  |
|  42|[0x80003358]<br>0x00000000040001F0|- rs1_val == 67108864<br>                                                                                                                                 |[0x80000566]:c.addi16sp 31<br> [0x80000568]:sd sp, 328(ra)<br>  |
|  43|[0x80003360]<br>0x0000000008000150|- rs1_val == 134217728<br>                                                                                                                                |[0x80000570]:c.addi16sp 21<br> [0x80000572]:sd sp, 336(ra)<br>  |
|  44|[0x80003368]<br>0x0000000010000050|- rs1_val == 268435456<br>                                                                                                                                |[0x8000057a]:c.addi16sp 5<br> [0x8000057c]:sd sp, 344(ra)<br>   |
|  45|[0x80003370]<br>0x000000003FFFFFF0|- rs1_val == 1073741824<br>                                                                                                                               |[0x80000584]:c.addi16sp 63<br> [0x80000586]:sd sp, 352(ra)<br>  |
|  46|[0x80003378]<br>0x00000000800000F0|- rs1_val == 2147483648<br>                                                                                                                               |[0x80000592]:c.addi16sp 15<br> [0x80000594]:sd sp, 360(ra)<br>  |
|  47|[0x80003380]<br>0x00000002000000F0|- rs1_val == 8589934592<br>                                                                                                                               |[0x800005a0]:c.addi16sp 15<br> [0x800005a2]:sd sp, 368(ra)<br>  |
|  48|[0x80003388]<br>0x0000000400000040|- rs1_val == 17179869184<br>                                                                                                                              |[0x800005ae]:c.addi16sp 4<br> [0x800005b0]:sd sp, 376(ra)<br>   |
|  49|[0x80003390]<br>0x0000000800000040|- rs1_val == 34359738368<br>                                                                                                                              |[0x800005bc]:c.addi16sp 4<br> [0x800005be]:sd sp, 384(ra)<br>   |
|  50|[0x80003398]<br>0x0000000FFFFFFFA0|- rs1_val == 68719476736<br>                                                                                                                              |[0x800005ca]:c.addi16sp 58<br> [0x800005cc]:sd sp, 392(ra)<br>  |
|  51|[0x800033a0]<br>0x0000002000000150|- rs1_val == 137438953472<br>                                                                                                                             |[0x800005d8]:c.addi16sp 21<br> [0x800005da]:sd sp, 400(ra)<br>  |
|  52|[0x800033a8]<br>0x00000040000001F0|- rs1_val == 274877906944<br>                                                                                                                             |[0x800005e6]:c.addi16sp 31<br> [0x800005e8]:sd sp, 408(ra)<br>  |
|  53|[0x800033b0]<br>0x0000007FFFFFFF70|- rs1_val == 549755813888<br>                                                                                                                             |[0x800005f4]:c.addi16sp 55<br> [0x800005f6]:sd sp, 416(ra)<br>  |
|  54|[0x800033b8]<br>0x0000010000000060|- rs1_val == 1099511627776<br>                                                                                                                            |[0x80000602]:c.addi16sp 6<br> [0x80000604]:sd sp, 424(ra)<br>   |
|  55|[0x800033c0]<br>0x000001FFFFFFFFC0|- rs1_val == 2199023255552<br>                                                                                                                            |[0x80000610]:c.addi16sp 60<br> [0x80000612]:sd sp, 432(ra)<br>  |
|  56|[0x800033c8]<br>0x0000040000000070|- rs1_val == 4398046511104<br>                                                                                                                            |[0x8000061e]:c.addi16sp 7<br> [0x80000620]:sd sp, 440(ra)<br>   |
|  57|[0x800033d0]<br>0x000007FFFFFFFF00|- rs1_val == 8796093022208<br>                                                                                                                            |[0x8000062c]:c.addi16sp 48<br> [0x8000062e]:sd sp, 448(ra)<br>  |
|  58|[0x800033d8]<br>0x00000FFFFFFFFFA0|- rs1_val == 17592186044416<br>                                                                                                                           |[0x8000063a]:c.addi16sp 58<br> [0x8000063c]:sd sp, 456(ra)<br>  |
|  59|[0x800033e0]<br>0x0000200000000090|- rs1_val == 35184372088832<br>                                                                                                                           |[0x80000648]:c.addi16sp 9<br> [0x8000064a]:sd sp, 464(ra)<br>   |
|  60|[0x800033e8]<br>0x0000400000000040|- rs1_val == 70368744177664<br>                                                                                                                           |[0x80000656]:c.addi16sp 4<br> [0x80000658]:sd sp, 472(ra)<br>   |
|  61|[0x800033f0]<br>0x00007FFFFFFFFFD0|- rs1_val == 140737488355328<br>                                                                                                                          |[0x80000664]:c.addi16sp 61<br> [0x80000666]:sd sp, 480(ra)<br>  |
|  62|[0x800033f8]<br>0x0000FFFFFFFFFF60|- rs1_val == 281474976710656<br>                                                                                                                          |[0x80000672]:c.addi16sp 54<br> [0x80000674]:sd sp, 488(ra)<br>  |
|  63|[0x80003400]<br>0x00040000000000F0|- rs1_val == 1125899906842624<br>                                                                                                                         |[0x80000680]:c.addi16sp 15<br> [0x80000682]:sd sp, 496(ra)<br>  |
|  64|[0x80003408]<br>0x0008000000000050|- rs1_val == 2251799813685248<br>                                                                                                                         |[0x8000068e]:c.addi16sp 5<br> [0x80000690]:sd sp, 504(ra)<br>   |
|  65|[0x80003410]<br>0x000FFFFFFFFFFEA0|- rs1_val == 4503599627370496<br>                                                                                                                         |[0x8000069c]:c.addi16sp 42<br> [0x8000069e]:sd sp, 512(ra)<br>  |
|  66|[0x80003418]<br>0x0020000000000020|- rs1_val == 9007199254740992<br>                                                                                                                         |[0x800006aa]:c.addi16sp 2<br> [0x800006ac]:sd sp, 520(ra)<br>   |
|  67|[0x80003420]<br>0x0040000000000020|- rs1_val == 18014398509481984<br>                                                                                                                        |[0x800006b8]:c.addi16sp 2<br> [0x800006ba]:sd sp, 528(ra)<br>   |
|  68|[0x80003428]<br>0x007FFFFFFFFFFEA0|- rs1_val == 36028797018963968<br>                                                                                                                        |[0x800006c6]:c.addi16sp 42<br> [0x800006c8]:sd sp, 536(ra)<br>  |
|  69|[0x80003430]<br>0x0200000000000060|- rs1_val == 144115188075855872<br>                                                                                                                       |[0x800006d4]:c.addi16sp 6<br> [0x800006d6]:sd sp, 544(ra)<br>   |
|  70|[0x80003438]<br>0x03FFFFFFFFFFFFD0|- rs1_val == 288230376151711744<br>                                                                                                                       |[0x800006e2]:c.addi16sp 61<br> [0x800006e4]:sd sp, 552(ra)<br>  |
|  71|[0x80003440]<br>0xFFFFFE000000001F|- rs1_val == -2199023255553<br>                                                                                                                           |[0x800006f4]:c.addi16sp 2<br> [0x800006f6]:sd sp, 560(ra)<br>   |
|  72|[0x80003448]<br>0xFFFFFC000000004F|- rs1_val == -4398046511105<br>                                                                                                                           |[0x80000706]:c.addi16sp 5<br> [0x80000708]:sd sp, 568(ra)<br>   |
|  73|[0x80003450]<br>0xFFFFF7FFFFFFFF6F|- rs1_val == -8796093022209<br>                                                                                                                           |[0x80000718]:c.addi16sp 55<br> [0x8000071a]:sd sp, 576(ra)<br>  |
|  74|[0x80003458]<br>0xFFFFF000000001EF|- rs1_val == -17592186044417<br>                                                                                                                          |[0x8000072a]:c.addi16sp 31<br> [0x8000072c]:sd sp, 584(ra)<br>  |
|  75|[0x80003460]<br>0xFFFFDFFFFFFFFF6F|- rs1_val == -35184372088833<br>                                                                                                                          |[0x8000073c]:c.addi16sp 55<br> [0x8000073e]:sd sp, 592(ra)<br>  |
|  76|[0x80003468]<br>0xFFFFC0000000006F|- rs1_val == -70368744177665<br>                                                                                                                          |[0x8000074e]:c.addi16sp 7<br> [0x80000750]:sd sp, 600(ra)<br>   |
|  77|[0x80003470]<br>0xFFFF7FFFFFFFFFDF|- rs1_val == -140737488355329<br>                                                                                                                         |[0x80000760]:c.addi16sp 62<br> [0x80000762]:sd sp, 608(ra)<br>  |
|  78|[0x80003478]<br>0xFFFEFFFFFFFFFF6F|- rs1_val == -281474976710657<br>                                                                                                                         |[0x80000772]:c.addi16sp 55<br> [0x80000774]:sd sp, 616(ra)<br>  |
|  79|[0x80003480]<br>0xFFFE00000000002F|- rs1_val == -562949953421313<br>                                                                                                                         |[0x80000784]:c.addi16sp 3<br> [0x80000786]:sd sp, 624(ra)<br>   |
|  80|[0x80003488]<br>0xFFFC00000000006F|- rs1_val == -1125899906842625<br>                                                                                                                        |[0x80000796]:c.addi16sp 7<br> [0x80000798]:sd sp, 632(ra)<br>   |
|  81|[0x80003490]<br>0xFFF800000000002F|- rs1_val == -2251799813685249<br>                                                                                                                        |[0x800007a8]:c.addi16sp 3<br> [0x800007aa]:sd sp, 640(ra)<br>   |
|  82|[0x80003498]<br>0xFFF000000000001F|- rs1_val == -4503599627370497<br>                                                                                                                        |[0x800007ba]:c.addi16sp 2<br> [0x800007bc]:sd sp, 648(ra)<br>   |
|  83|[0x800034a0]<br>0xFFDFFFFFFFFFFF8F|- rs1_val == -9007199254740993<br>                                                                                                                        |[0x800007cc]:c.addi16sp 57<br> [0x800007ce]:sd sp, 656(ra)<br>  |
|  84|[0x800034a8]<br>0xFFBFFFFFFFFFFFCF|- rs1_val == -18014398509481985<br>                                                                                                                       |[0x800007de]:c.addi16sp 61<br> [0x800007e0]:sd sp, 664(ra)<br>  |
|  85|[0x800034b0]<br>0xFF7FFFFFFFFFFF6F|- rs1_val == -36028797018963969<br>                                                                                                                       |[0x800007f0]:c.addi16sp 55<br> [0x800007f2]:sd sp, 672(ra)<br>  |
|  86|[0x800034b8]<br>0xFF0000000000008F|- rs1_val == -72057594037927937<br>                                                                                                                       |[0x80000802]:c.addi16sp 9<br> [0x80000804]:sd sp, 680(ra)<br>   |
|  87|[0x800034c0]<br>0xFE0000000000004F|- rs1_val == -144115188075855873<br>                                                                                                                      |[0x80000814]:c.addi16sp 5<br> [0x80000816]:sd sp, 688(ra)<br>   |
|  88|[0x800034c8]<br>0xFBFFFFFFFFFFFF6F|- rs1_val == -288230376151711745<br>                                                                                                                      |[0x80000826]:c.addi16sp 55<br> [0x80000828]:sd sp, 696(ra)<br>  |
|  89|[0x800034d0]<br>0xF7FFFFFFFFFFFDFF|- rs1_val == -576460752303423489<br>                                                                                                                      |[0x80000838]:c.addi16sp 32<br> [0x8000083a]:sd sp, 704(ra)<br>  |
|  90|[0x800034d8]<br>0xEFFFFFFFFFFFFFDF|- rs1_val == -1152921504606846977<br>                                                                                                                     |[0x8000084a]:c.addi16sp 62<br> [0x8000084c]:sd sp, 712(ra)<br>  |
|  91|[0x800034e0]<br>0xDFFFFFFFFFFFFFBF|- rs1_val == -2305843009213693953<br>                                                                                                                     |[0x8000085c]:c.addi16sp 60<br> [0x8000085e]:sd sp, 720(ra)<br>  |
|  92|[0x800034e8]<br>0xBFFFFFFFFFFFFF7F|- rs1_val == -4611686018427387905<br>                                                                                                                     |[0x8000086e]:c.addi16sp 56<br> [0x80000870]:sd sp, 728(ra)<br>  |
|  93|[0x800034f0]<br>0x55555555555553F5|- rs1_val == 6148914691236517205<br>                                                                                                                      |[0x80000894]:c.addi16sp 42<br> [0x80000896]:sd sp, 736(ra)<br>  |
|  94|[0x800034f8]<br>0xAAAAAAAAAAAAAA6A|- rs1_val == -6148914691236517206<br>                                                                                                                     |[0x800008ba]:c.addi16sp 60<br> [0x800008bc]:sd sp, 744(ra)<br>  |
|  95|[0x80003500]<br>0x08000000000000F0|- rs1_val == 576460752303423488<br>                                                                                                                       |[0x800008c8]:c.addi16sp 15<br> [0x800008ca]:sd sp, 752(ra)<br>  |
|  96|[0x80003508]<br>0x1FFFFFFFFFFFFF80|- rs1_val == 2305843009213693952<br>                                                                                                                      |[0x800008d6]:c.addi16sp 56<br> [0x800008d8]:sd sp, 760(ra)<br>  |
|  97|[0x80003510]<br>0x000000000000006E|- rs1_val == -2<br>                                                                                                                                       |[0x800008e0]:c.addi16sp 7<br> [0x800008e2]:sd sp, 768(ra)<br>   |
|  98|[0x80003518]<br>0x00000000000001E7|- rs1_val == -9<br>                                                                                                                                       |[0x800008ea]:c.addi16sp 31<br> [0x800008ec]:sd sp, 776(ra)<br>  |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -17<br>                                                                                                                                      |[0x800008f4]:c.addi16sp 63<br> [0x800008f6]:sd sp, 784(ra)<br>  |
| 100|[0x80003528]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -33<br>                                                                                                                                      |[0x800008fe]:c.addi16sp 62<br> [0x80000900]:sd sp, 792(ra)<br>  |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFFF1F|- rs1_val == -65<br>                                                                                                                                      |[0x80000908]:c.addi16sp 54<br> [0x8000090a]:sd sp, 800(ra)<br>  |
| 102|[0x80003538]<br>0xFFFFFFFFFFFFFF8F|- rs1_val == -129<br>                                                                                                                                     |[0x80000912]:c.addi16sp 1<br> [0x80000914]:sd sp, 808(ra)<br>   |
| 103|[0x80003540]<br>0xFFFFFFFFFFFFFD9F|- rs1_val == -257<br>                                                                                                                                     |[0x8000091c]:c.addi16sp 42<br> [0x8000091e]:sd sp, 816(ra)<br>  |
| 104|[0x80003548]<br>0xFFFFFFFFFFFFFD5F|- rs1_val == -513<br>                                                                                                                                     |[0x80000926]:c.addi16sp 54<br> [0x80000928]:sd sp, 824(ra)<br>  |
| 105|[0x80003550]<br>0xFFFFFFFFFFFFFB7F|- rs1_val == -1025<br>                                                                                                                                    |[0x80000930]:c.addi16sp 56<br> [0x80000932]:sd sp, 832(ra)<br>  |
| 106|[0x80003558]<br>0xFFFFFFFFFFFFF69F|- rs1_val == -2049<br>                                                                                                                                    |[0x8000093e]:c.addi16sp 42<br> [0x80000940]:sd sp, 840(ra)<br>  |
| 107|[0x80003560]<br>0xFFFFFFFFFFFFF1EF|- rs1_val == -4097<br>                                                                                                                                    |[0x8000094c]:c.addi16sp 31<br> [0x8000094e]:sd sp, 848(ra)<br>  |
| 108|[0x80003568]<br>0xFFFFFFFFFFFFE08F|- rs1_val == -8193<br>                                                                                                                                    |[0x8000095a]:c.addi16sp 9<br> [0x8000095c]:sd sp, 856(ra)<br>   |
| 109|[0x80003570]<br>0xFFFFFFFFFFFFC02F|- rs1_val == -16385<br>                                                                                                                                   |[0x80000968]:c.addi16sp 3<br> [0x8000096a]:sd sp, 864(ra)<br>   |
| 110|[0x80003578]<br>0xFFFFFFFFFFFF81EF|- rs1_val == -32769<br>                                                                                                                                   |[0x80000976]:c.addi16sp 31<br> [0x80000978]:sd sp, 872(ra)<br>  |
| 111|[0x80003580]<br>0xFFFFFFFFFFFEFEEF|- rs1_val == -65537<br>                                                                                                                                   |[0x80000984]:c.addi16sp 47<br> [0x80000986]:sd sp, 880(ra)<br>  |
| 112|[0x80003588]<br>0xFFFFFFFFFFFDFF6F|- rs1_val == -131073<br>                                                                                                                                  |[0x80000992]:c.addi16sp 55<br> [0x80000994]:sd sp, 888(ra)<br>  |
| 113|[0x80003590]<br>0xFFFFFFFFFFFBFF5F|- rs1_val == -262145<br>                                                                                                                                  |[0x800009a0]:c.addi16sp 54<br> [0x800009a2]:sd sp, 896(ra)<br>  |
| 114|[0x80003598]<br>0xFFFFFFFFFFF8007F|- rs1_val == -524289<br>                                                                                                                                  |[0x800009ae]:c.addi16sp 8<br> [0x800009b0]:sd sp, 904(ra)<br>   |
| 115|[0x800035a0]<br>0xFFFFFFFFFFEFFFBF|- rs1_val == -1048577<br>                                                                                                                                 |[0x800009bc]:c.addi16sp 60<br> [0x800009be]:sd sp, 912(ra)<br>  |
| 116|[0x800035a8]<br>0xFFFFFFFFFFC0000F|- rs1_val == -4194305<br>                                                                                                                                 |[0x800009ca]:c.addi16sp 1<br> [0x800009cc]:sd sp, 920(ra)<br>   |
| 117|[0x800035b0]<br>0xFFFFFFFFFF80005F|- rs1_val == -8388609<br>                                                                                                                                 |[0x800009d8]:c.addi16sp 6<br> [0x800009da]:sd sp, 928(ra)<br>   |
| 118|[0x800035b8]<br>0xFFFFFFFFFEFFFFCF|- rs1_val == -16777217<br>                                                                                                                                |[0x800009e6]:c.addi16sp 61<br> [0x800009e8]:sd sp, 936(ra)<br>  |
| 119|[0x800035c0]<br>0xFFFFFFFFFDFFFF7F|- rs1_val == -33554433<br>                                                                                                                                |[0x800009f4]:c.addi16sp 56<br> [0x800009f6]:sd sp, 944(ra)<br>  |
| 120|[0x800035c8]<br>0xFFFFFFFFFBFFFF8F|- rs1_val == -67108865<br>                                                                                                                                |[0x80000a02]:c.addi16sp 57<br> [0x80000a04]:sd sp, 952(ra)<br>  |
| 121|[0x800035d0]<br>0xFFFFFFFFF7FFFE9F|- rs1_val == -134217729<br>                                                                                                                               |[0x80000a10]:c.addi16sp 42<br> [0x80000a12]:sd sp, 960(ra)<br>  |
| 122|[0x800035d8]<br>0xFFFFFFFFF000007F|- rs1_val == -268435457<br>                                                                                                                               |[0x80000a1e]:c.addi16sp 8<br> [0x80000a20]:sd sp, 968(ra)<br>   |
| 123|[0x800035e0]<br>0xFFFFFFFFE000003F|- rs1_val == -536870913<br>                                                                                                                               |[0x80000a2c]:c.addi16sp 4<br> [0x80000a2e]:sd sp, 976(ra)<br>   |
| 124|[0x800035e8]<br>0xFFFFFFFFC000002F|- rs1_val == -1073741825<br>                                                                                                                              |[0x80000a3a]:c.addi16sp 3<br> [0x80000a3c]:sd sp, 984(ra)<br>   |
| 125|[0x800035f0]<br>0xFFFFFFFF8000006F|- rs1_val == -2147483649<br>                                                                                                                              |[0x80000a4c]:c.addi16sp 7<br> [0x80000a4e]:sd sp, 992(ra)<br>   |
| 126|[0x800035f8]<br>0xFFFFFFFF0000005F|- rs1_val == -4294967297<br>                                                                                                                              |[0x80000a5e]:c.addi16sp 6<br> [0x80000a60]:sd sp, 1000(ra)<br>  |
| 127|[0x80003600]<br>0xFFFFFFFE0000004F|- rs1_val == -8589934593<br>                                                                                                                              |[0x80000a70]:c.addi16sp 5<br> [0x80000a72]:sd sp, 1008(ra)<br>  |
| 128|[0x80003608]<br>0xFFFFFFFC0000007F|- rs1_val == -17179869185<br>                                                                                                                             |[0x80000a82]:c.addi16sp 8<br> [0x80000a84]:sd sp, 1016(ra)<br>  |
| 129|[0x80003610]<br>0xFFFFFFF7FFFFFFDF|- rs1_val == -34359738369<br>                                                                                                                             |[0x80000a94]:c.addi16sp 62<br> [0x80000a96]:sd sp, 1024(ra)<br> |
| 130|[0x80003618]<br>0xFFFFFFDFFFFFFFAF|- rs1_val == -137438953473<br>                                                                                                                            |[0x80000aa6]:c.addi16sp 59<br> [0x80000aa8]:sd sp, 1032(ra)<br> |
| 131|[0x80003620]<br>0xFFFFFFBFFFFFFEEF|- rs1_val == -274877906945<br>                                                                                                                            |[0x80000ab8]:c.addi16sp 47<br> [0x80000aba]:sd sp, 1040(ra)<br> |
| 132|[0x80003628]<br>0xFFFFFF7FFFFFFF7F|- rs1_val == -549755813889<br>                                                                                                                            |[0x80000aca]:c.addi16sp 56<br> [0x80000acc]:sd sp, 1048(ra)<br> |
| 133|[0x80003630]<br>0xFFFFFEFFFFFFFDFF|- rs1_val == -1099511627777<br>                                                                                                                           |[0x80000adc]:c.addi16sp 32<br> [0x80000ade]:sd sp, 1056(ra)<br> |
