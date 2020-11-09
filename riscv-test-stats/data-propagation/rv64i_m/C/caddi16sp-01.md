
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

|s.no|            signature             |                                                                         coverpoints                                                                          |                              code                              |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003208]<br>0xFBFFFFFFFFFFFDFF|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == -288230376151711745<br> |[0x800003a4]:c.addi16sp 32<br> [0x800003a6]:sd sp, 0(ra)<br>    |
|   2|[0x80003210]<br>0x00000000000001DF|- rs1_val < 0 and imm_val > 0<br> - imm_val == 496<br> - rs1_val == -17<br>                                                                                   |[0x800003ae]:c.addi16sp 31<br> [0x800003b0]:sd sp, 8(ra)<br>    |
|   3|[0x80003218]<br>0x7FFFFFFFFFFFFFF0|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                                         |[0x800003bc]:c.addi16sp 63<br> [0x800003be]:sd sp, 16(ra)<br>   |
|   4|[0x80003220]<br>0xFFFFFFFFFFFFFF90|- rs1_val == 0<br>                                                                                                                                            |[0x800003c6]:c.addi16sp 57<br> [0x800003c8]:sd sp, 24(ra)<br>   |
|   5|[0x80003228]<br>0x7FFFFFFFFFFFFE9F|- rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br> - imm_val == -352<br>                                 |[0x800003d8]:c.addi16sp 42<br> [0x800003da]:sd sp, 32(ra)<br>   |
|   6|[0x80003230]<br>0xFFFFFFFFFFFFFFB1|- rs1_val == 1<br> - imm_val == -80<br>                                                                                                                       |[0x800003e2]:c.addi16sp 59<br> [0x800003e4]:sd sp, 40(ra)<br>   |
|   7|[0x80003238]<br>0x0000000000000080|- rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br> - imm_val == 64<br>                                                            |[0x800003ec]:c.addi16sp 4<br> [0x800003ee]:sd sp, 48(ra)<br>    |
|   8|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- imm_val == 16<br>                                                                                                                                           |[0x800003f6]:c.addi16sp 1<br> [0x800003f8]:sd sp, 56(ra)<br>    |
|   9|[0x80003248]<br>0x0000000000000021|- imm_val == 32<br>                                                                                                                                           |[0x80000400]:c.addi16sp 2<br> [0x80000402]:sd sp, 64(ra)<br>    |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFE07F|- rs1_val == -8193<br> - imm_val == 128<br>                                                                                                                   |[0x8000040e]:c.addi16sp 8<br> [0x80000410]:sd sp, 72(ra)<br>    |
|  11|[0x80003258]<br>0x0000000000000106|- imm_val == 256<br>                                                                                                                                          |[0x80000418]:c.addi16sp 16<br> [0x8000041a]:sd sp, 80(ra)<br>   |
|  12|[0x80003260]<br>0x003FFFFFFFFFFFE0|- rs1_val == 18014398509481984<br> - imm_val == -32<br>                                                                                                       |[0x80000426]:c.addi16sp 62<br> [0x80000428]:sd sp, 88(ra)<br>   |
|  13|[0x80003268]<br>0xFFFFFFFFFFFDFFCF|- rs1_val == -131073<br> - imm_val == -48<br>                                                                                                                 |[0x80000434]:c.addi16sp 61<br> [0x80000436]:sd sp, 96(ra)<br>   |
|  14|[0x80003270]<br>0x0000003FFFFFFF70|- rs1_val == 274877906944<br> - imm_val == -144<br>                                                                                                           |[0x80000442]:c.addi16sp 55<br> [0x80000444]:sd sp, 104(ra)<br>  |
|  15|[0x80003278]<br>0x00000000001FFEF0|- rs1_val == 2097152<br> - imm_val == -272<br>                                                                                                                |[0x8000044c]:c.addi16sp 47<br> [0x8000044e]:sd sp, 112(ra)<br>  |
|  16|[0x80003280]<br>0x0000000008000150|- rs1_val == 134217728<br> - imm_val == 336<br>                                                                                                               |[0x80000456]:c.addi16sp 21<br> [0x80000458]:sd sp, 120(ra)<br>  |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFFEA2|- rs1_val == 2<br>                                                                                                                                            |[0x80000460]:c.addi16sp 42<br> [0x80000462]:sd sp, 128(ra)<br>  |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFFF64|- rs1_val == 4<br>                                                                                                                                            |[0x8000046a]:c.addi16sp 54<br> [0x8000046c]:sd sp, 136(ra)<br>  |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFF78|- rs1_val == 8<br>                                                                                                                                            |[0x80000474]:c.addi16sp 55<br> [0x80000476]:sd sp, 144(ra)<br>  |
|  20|[0x800032a0]<br>0xFFFFFFFFFFFFFFD0|- rs1_val == 16<br>                                                                                                                                           |[0x8000047e]:c.addi16sp 60<br> [0x80000480]:sd sp, 152(ra)<br>  |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == 32<br>                                                                                                                                           |[0x80000488]:c.addi16sp 61<br> [0x8000048a]:sd sp, 160(ra)<br>  |
|  22|[0x800032b0]<br>0x00000000000001D0|- rs1_val == 128<br>                                                                                                                                          |[0x80000492]:c.addi16sp 21<br> [0x80000494]:sd sp, 168(ra)<br>  |
|  23|[0x800032b8]<br>0x0000000000000150|- rs1_val == 256<br>                                                                                                                                          |[0x8000049c]:c.addi16sp 5<br> [0x8000049e]:sd sp, 176(ra)<br>   |
|  24|[0x800032c0]<br>0x0000000000000300|- rs1_val == 512<br>                                                                                                                                          |[0x800004a6]:c.addi16sp 16<br> [0x800004a8]:sd sp, 184(ra)<br>  |
|  25|[0x800032c8]<br>0x00000000000003A0|- rs1_val == 1024<br>                                                                                                                                         |[0x800004b0]:c.addi16sp 58<br> [0x800004b2]:sd sp, 192(ra)<br>  |
|  26|[0x800032d0]<br>0x0000000000000780|- rs1_val == 2048<br>                                                                                                                                         |[0x800004be]:c.addi16sp 56<br> [0x800004c0]:sd sp, 200(ra)<br>  |
|  27|[0x800032d8]<br>0x0000000000000EF0|- rs1_val == 4096<br>                                                                                                                                         |[0x800004c8]:c.addi16sp 47<br> [0x800004ca]:sd sp, 208(ra)<br>  |
|  28|[0x800032e0]<br>0x00000000000021F0|- rs1_val == 8192<br>                                                                                                                                         |[0x800004d2]:c.addi16sp 31<br> [0x800004d4]:sd sp, 216(ra)<br>  |
|  29|[0x800032e8]<br>0x0000000000003F90|- rs1_val == 16384<br>                                                                                                                                        |[0x800004dc]:c.addi16sp 57<br> [0x800004de]:sd sp, 224(ra)<br>  |
|  30|[0x800032f0]<br>0x00000000000081F0|- rs1_val == 32768<br>                                                                                                                                        |[0x800004e6]:c.addi16sp 31<br> [0x800004e8]:sd sp, 232(ra)<br>  |
|  31|[0x800032f8]<br>0x0000000000010070|- rs1_val == 65536<br>                                                                                                                                        |[0x800004f0]:c.addi16sp 7<br> [0x800004f2]:sd sp, 240(ra)<br>   |
|  32|[0x80003300]<br>0x000000000001FFC0|- rs1_val == 131072<br>                                                                                                                                       |[0x800004fa]:c.addi16sp 60<br> [0x800004fc]:sd sp, 248(ra)<br>  |
|  33|[0x80003308]<br>0x0000000000040100|- rs1_val == 262144<br>                                                                                                                                       |[0x80000504]:c.addi16sp 16<br> [0x80000506]:sd sp, 256(ra)<br>  |
|  34|[0x80003310]<br>0x000000000007FFD0|- rs1_val == 524288<br>                                                                                                                                       |[0x8000050e]:c.addi16sp 61<br> [0x80000510]:sd sp, 264(ra)<br>  |
|  35|[0x80003318]<br>0x0000000000100080|- rs1_val == 1048576<br>                                                                                                                                      |[0x80000518]:c.addi16sp 8<br> [0x8000051a]:sd sp, 272(ra)<br>   |
|  36|[0x80003320]<br>0x0000000000400100|- rs1_val == 4194304<br>                                                                                                                                      |[0x80000522]:c.addi16sp 16<br> [0x80000524]:sd sp, 280(ra)<br>  |
|  37|[0x80003328]<br>0x00000000007FFF70|- rs1_val == 8388608<br>                                                                                                                                      |[0x8000052c]:c.addi16sp 55<br> [0x8000052e]:sd sp, 288(ra)<br>  |
|  38|[0x80003330]<br>0x0000000000FFFF00|- rs1_val == 16777216<br>                                                                                                                                     |[0x80000536]:c.addi16sp 48<br> [0x80000538]:sd sp, 296(ra)<br>  |
|  39|[0x80003338]<br>0x0000000001FFFFE0|- rs1_val == 33554432<br>                                                                                                                                     |[0x80000540]:c.addi16sp 62<br> [0x80000542]:sd sp, 304(ra)<br>  |
|  40|[0x80003340]<br>0x00000000040000F0|- rs1_val == 67108864<br>                                                                                                                                     |[0x8000054a]:c.addi16sp 15<br> [0x8000054c]:sd sp, 312(ra)<br>  |
|  41|[0x80003348]<br>0x000000000FFFFFA0|- rs1_val == 268435456<br>                                                                                                                                    |[0x80000554]:c.addi16sp 58<br> [0x80000556]:sd sp, 320(ra)<br>  |
|  42|[0x80003350]<br>0x000000001FFFFEA0|- rs1_val == 536870912<br>                                                                                                                                    |[0x8000055e]:c.addi16sp 42<br> [0x80000560]:sd sp, 328(ra)<br>  |
|  43|[0x80003358]<br>0x0000000040000040|- rs1_val == 1073741824<br>                                                                                                                                   |[0x80000568]:c.addi16sp 4<br> [0x8000056a]:sd sp, 336(ra)<br>   |
|  44|[0x80003360]<br>0x000000007FFFFE00|- rs1_val == 2147483648<br>                                                                                                                                   |[0x80000576]:c.addi16sp 32<br> [0x80000578]:sd sp, 344(ra)<br>  |
|  45|[0x80003368]<br>0x0000000100000050|- rs1_val == 4294967296<br>                                                                                                                                   |[0x80000584]:c.addi16sp 5<br> [0x80000586]:sd sp, 352(ra)<br>   |
|  46|[0x80003370]<br>0x0000000200000070|- rs1_val == 8589934592<br>                                                                                                                                   |[0x80000592]:c.addi16sp 7<br> [0x80000594]:sd sp, 360(ra)<br>   |
|  47|[0x80003378]<br>0x0000000400000150|- rs1_val == 17179869184<br>                                                                                                                                  |[0x800005a0]:c.addi16sp 21<br> [0x800005a2]:sd sp, 368(ra)<br>  |
|  48|[0x80003380]<br>0x00000007FFFFFFA0|- rs1_val == 34359738368<br>                                                                                                                                  |[0x800005ae]:c.addi16sp 58<br> [0x800005b0]:sd sp, 376(ra)<br>  |
|  49|[0x80003388]<br>0x0000001000000100|- rs1_val == 68719476736<br>                                                                                                                                  |[0x800005bc]:c.addi16sp 16<br> [0x800005be]:sd sp, 384(ra)<br>  |
|  50|[0x80003390]<br>0x00000020000001F0|- rs1_val == 137438953472<br>                                                                                                                                 |[0x800005ca]:c.addi16sp 31<br> [0x800005cc]:sd sp, 392(ra)<br>  |
|  51|[0x80003398]<br>0x00000080000001F0|- rs1_val == 549755813888<br>                                                                                                                                 |[0x800005d8]:c.addi16sp 31<br> [0x800005da]:sd sp, 400(ra)<br>  |
|  52|[0x800033a0]<br>0x000000FFFFFFFF60|- rs1_val == 1099511627776<br>                                                                                                                                |[0x800005e6]:c.addi16sp 54<br> [0x800005e8]:sd sp, 408(ra)<br>  |
|  53|[0x800033a8]<br>0x0000020000000050|- rs1_val == 2199023255552<br>                                                                                                                                |[0x800005f4]:c.addi16sp 5<br> [0x800005f6]:sd sp, 416(ra)<br>   |
|  54|[0x800033b0]<br>0x000003FFFFFFFFF0|- rs1_val == 4398046511104<br>                                                                                                                                |[0x80000602]:c.addi16sp 63<br> [0x80000604]:sd sp, 424(ra)<br>  |
|  55|[0x800033b8]<br>0x000007FFFFFFFEA0|- rs1_val == 8796093022208<br>                                                                                                                                |[0x80000610]:c.addi16sp 42<br> [0x80000612]:sd sp, 432(ra)<br>  |
|  56|[0x800033c0]<br>0x0000100000000020|- rs1_val == 17592186044416<br>                                                                                                                               |[0x8000061e]:c.addi16sp 2<br> [0x80000620]:sd sp, 440(ra)<br>   |
|  57|[0x800033c8]<br>0x0000200000000020|- rs1_val == 35184372088832<br>                                                                                                                               |[0x8000062c]:c.addi16sp 2<br> [0x8000062e]:sd sp, 448(ra)<br>   |
|  58|[0x800033d0]<br>0x00003FFFFFFFFFC0|- rs1_val == 70368744177664<br>                                                                                                                               |[0x8000063a]:c.addi16sp 60<br> [0x8000063c]:sd sp, 456(ra)<br>  |
|  59|[0x800033d8]<br>0x00007FFFFFFFFE00|- rs1_val == 140737488355328<br>                                                                                                                              |[0x80000648]:c.addi16sp 32<br> [0x8000064a]:sd sp, 464(ra)<br>  |
|  60|[0x800033e0]<br>0x0000FFFFFFFFFFE0|- rs1_val == 281474976710656<br>                                                                                                                              |[0x80000656]:c.addi16sp 62<br> [0x80000658]:sd sp, 472(ra)<br>  |
|  61|[0x800033e8]<br>0x0001FFFFFFFFFE00|- rs1_val == 562949953421312<br>                                                                                                                              |[0x80000664]:c.addi16sp 32<br> [0x80000666]:sd sp, 480(ra)<br>  |
|  62|[0x800033f0]<br>0x0003FFFFFFFFFF80|- rs1_val == 1125899906842624<br>                                                                                                                             |[0x80000672]:c.addi16sp 56<br> [0x80000674]:sd sp, 488(ra)<br>  |
|  63|[0x800033f8]<br>0x0008000000000010|- rs1_val == 2251799813685248<br>                                                                                                                             |[0x80000680]:c.addi16sp 1<br> [0x80000682]:sd sp, 496(ra)<br>   |
|  64|[0x80003400]<br>0x000FFFFFFFFFFFC0|- rs1_val == 4503599627370496<br>                                                                                                                             |[0x8000068e]:c.addi16sp 60<br> [0x80000690]:sd sp, 504(ra)<br>  |
|  65|[0x80003408]<br>0x001FFFFFFFFFFFC0|- rs1_val == 9007199254740992<br>                                                                                                                             |[0x8000069c]:c.addi16sp 60<br> [0x8000069e]:sd sp, 512(ra)<br>  |
|  66|[0x80003410]<br>0x007FFFFFFFFFFF80|- rs1_val == 36028797018963968<br>                                                                                                                            |[0x800006aa]:c.addi16sp 56<br> [0x800006ac]:sd sp, 520(ra)<br>  |
|  67|[0x80003418]<br>0x00FFFFFFFFFFFFF0|- rs1_val == 72057594037927936<br>                                                                                                                            |[0x800006b8]:c.addi16sp 63<br> [0x800006ba]:sd sp, 528(ra)<br>  |
|  68|[0x80003420]<br>0x02000000000001F0|- rs1_val == 144115188075855872<br>                                                                                                                           |[0x800006c6]:c.addi16sp 31<br> [0x800006c8]:sd sp, 536(ra)<br>  |
|  69|[0x80003428]<br>0x03FFFFFFFFFFFEA0|- rs1_val == 288230376151711744<br>                                                                                                                           |[0x800006d4]:c.addi16sp 42<br> [0x800006d6]:sd sp, 544(ra)<br>  |
|  70|[0x80003430]<br>0x0800000000000150|- rs1_val == 576460752303423488<br>                                                                                                                           |[0x800006e2]:c.addi16sp 21<br> [0x800006e4]:sd sp, 552(ra)<br>  |
|  71|[0x80003438]<br>0x0FFFFFFFFFFFFF70|- rs1_val == 1152921504606846976<br>                                                                                                                          |[0x800006f0]:c.addi16sp 55<br> [0x800006f2]:sd sp, 560(ra)<br>  |
|  72|[0x80003440]<br>0xFFFFFDFFFFFFFEFF|- rs1_val == -2199023255553<br>                                                                                                                               |[0x80000702]:c.addi16sp 48<br> [0x80000704]:sd sp, 568(ra)<br>  |
|  73|[0x80003448]<br>0xFFFFFC000000003F|- rs1_val == -4398046511105<br>                                                                                                                               |[0x80000714]:c.addi16sp 4<br> [0x80000716]:sd sp, 576(ra)<br>   |
|  74|[0x80003450]<br>0xFFFFF8000000004F|- rs1_val == -8796093022209<br>                                                                                                                               |[0x80000726]:c.addi16sp 5<br> [0x80000728]:sd sp, 584(ra)<br>   |
|  75|[0x80003458]<br>0xFFFFEFFFFFFFFF7F|- rs1_val == -17592186044417<br>                                                                                                                              |[0x80000738]:c.addi16sp 56<br> [0x8000073a]:sd sp, 592(ra)<br>  |
|  76|[0x80003460]<br>0xFFFFDFFFFFFFFF9F|- rs1_val == -35184372088833<br>                                                                                                                              |[0x8000074a]:c.addi16sp 58<br> [0x8000074c]:sd sp, 600(ra)<br>  |
|  77|[0x80003468]<br>0xFFFFC0000000000F|- rs1_val == -70368744177665<br>                                                                                                                              |[0x8000075c]:c.addi16sp 1<br> [0x8000075e]:sd sp, 608(ra)<br>   |
|  78|[0x80003470]<br>0xFFFF7FFFFFFFFFDF|- rs1_val == -140737488355329<br>                                                                                                                             |[0x8000076e]:c.addi16sp 62<br> [0x80000770]:sd sp, 616(ra)<br>  |
|  79|[0x80003478]<br>0xFFFF00000000000F|- rs1_val == -281474976710657<br>                                                                                                                             |[0x80000780]:c.addi16sp 1<br> [0x80000782]:sd sp, 624(ra)<br>   |
|  80|[0x80003480]<br>0xFFFE0000000000FF|- rs1_val == -562949953421313<br>                                                                                                                             |[0x80000792]:c.addi16sp 16<br> [0x80000794]:sd sp, 632(ra)<br>  |
|  81|[0x80003488]<br>0xFFFC0000000001EF|- rs1_val == -1125899906842625<br>                                                                                                                            |[0x800007a4]:c.addi16sp 31<br> [0x800007a6]:sd sp, 640(ra)<br>  |
|  82|[0x80003490]<br>0xFFF7FFFFFFFFFF5F|- rs1_val == -2251799813685249<br>                                                                                                                            |[0x800007b6]:c.addi16sp 54<br> [0x800007b8]:sd sp, 648(ra)<br>  |
|  83|[0x80003498]<br>0xFFEFFFFFFFFFFF8F|- rs1_val == -4503599627370497<br>                                                                                                                            |[0x800007c8]:c.addi16sp 57<br> [0x800007ca]:sd sp, 656(ra)<br>  |
|  84|[0x800034a0]<br>0xFFDFFFFFFFFFFFDF|- rs1_val == -9007199254740993<br>                                                                                                                            |[0x800007da]:c.addi16sp 62<br> [0x800007dc]:sd sp, 664(ra)<br>  |
|  85|[0x800034a8]<br>0xFFC000000000004F|- rs1_val == -18014398509481985<br>                                                                                                                           |[0x800007ec]:c.addi16sp 5<br> [0x800007ee]:sd sp, 672(ra)<br>   |
|  86|[0x800034b0]<br>0xFF7FFFFFFFFFFFCF|- rs1_val == -36028797018963969<br>                                                                                                                           |[0x800007fe]:c.addi16sp 61<br> [0x80000800]:sd sp, 680(ra)<br>  |
|  87|[0x800034b8]<br>0xFEFFFFFFFFFFFFEF|- rs1_val == -72057594037927937<br>                                                                                                                           |[0x80000810]:c.addi16sp 63<br> [0x80000812]:sd sp, 688(ra)<br>  |
|  88|[0x800034c0]<br>0xFE0000000000004F|- rs1_val == -144115188075855873<br>                                                                                                                          |[0x80000822]:c.addi16sp 5<br> [0x80000824]:sd sp, 696(ra)<br>   |
|  89|[0x800034c8]<br>0xF80000000000006F|- rs1_val == -576460752303423489<br>                                                                                                                          |[0x80000834]:c.addi16sp 7<br> [0x80000836]:sd sp, 704(ra)<br>   |
|  90|[0x800034d0]<br>0xF0000000000000EF|- rs1_val == -1152921504606846977<br>                                                                                                                         |[0x80000846]:c.addi16sp 15<br> [0x80000848]:sd sp, 712(ra)<br>  |
|  91|[0x800034d8]<br>0xDFFFFFFFFFFFFF8F|- rs1_val == -2305843009213693953<br>                                                                                                                         |[0x80000858]:c.addi16sp 57<br> [0x8000085a]:sd sp, 720(ra)<br>  |
|  92|[0x800034e0]<br>0xC00000000000003F|- rs1_val == -4611686018427387905<br>                                                                                                                         |[0x8000086a]:c.addi16sp 4<br> [0x8000086c]:sd sp, 728(ra)<br>   |
|  93|[0x800034e8]<br>0x55555555555554F5|- rs1_val == 6148914691236517205<br>                                                                                                                          |[0x80000890]:c.addi16sp 58<br> [0x80000892]:sd sp, 736(ra)<br>  |
|  94|[0x800034f0]<br>0xAAAAAAAAAAAAAA0A|- rs1_val == -6148914691236517206<br>                                                                                                                         |[0x800008b6]:c.addi16sp 54<br> [0x800008b8]:sd sp, 744(ra)<br>  |
|  95|[0x800034f8]<br>0x2000000000000050|- rs1_val == 2305843009213693952<br>                                                                                                                          |[0x800008c4]:c.addi16sp 5<br> [0x800008c6]:sd sp, 752(ra)<br>   |
|  96|[0x80003500]<br>0x40000000000000F0|- rs1_val == 4611686018427387904<br>                                                                                                                          |[0x800008d2]:c.addi16sp 15<br> [0x800008d4]:sd sp, 760(ra)<br>  |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFF5E|- rs1_val == -2<br>                                                                                                                                           |[0x800008dc]:c.addi16sp 54<br> [0x800008de]:sd sp, 768(ra)<br>  |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFFDD|- rs1_val == -3<br>                                                                                                                                           |[0x800008e6]:c.addi16sp 62<br> [0x800008e8]:sd sp, 776(ra)<br>  |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFFFEB|- rs1_val == -5<br>                                                                                                                                           |[0x800008f0]:c.addi16sp 63<br> [0x800008f2]:sd sp, 784(ra)<br>  |
| 100|[0x80003520]<br>0x0000000000000067|- rs1_val == -9<br>                                                                                                                                           |[0x800008fa]:c.addi16sp 7<br> [0x800008fc]:sd sp, 792(ra)<br>   |
| 101|[0x80003528]<br>0x000000000000012F|- rs1_val == -33<br>                                                                                                                                          |[0x80000904]:c.addi16sp 21<br> [0x80000906]:sd sp, 800(ra)<br>  |
| 102|[0x80003530]<br>0x000000000000001F|- rs1_val == -65<br>                                                                                                                                          |[0x8000090e]:c.addi16sp 6<br> [0x80000910]:sd sp, 808(ra)<br>   |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFF1F|- rs1_val == -129<br>                                                                                                                                         |[0x80000918]:c.addi16sp 58<br> [0x8000091a]:sd sp, 816(ra)<br>  |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFF3F|- rs1_val == -257<br>                                                                                                                                         |[0x80000922]:c.addi16sp 4<br> [0x80000924]:sd sp, 824(ra)<br>   |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -513<br>                                                                                                                                         |[0x8000092c]:c.addi16sp 16<br> [0x8000092e]:sd sp, 832(ra)<br>  |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFF9FF|- rs1_val == -1025<br>                                                                                                                                        |[0x80000936]:c.addi16sp 32<br> [0x80000938]:sd sp, 840(ra)<br>  |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFF7CF|- rs1_val == -2049<br>                                                                                                                                        |[0x80000944]:c.addi16sp 61<br> [0x80000946]:sd sp, 848(ra)<br>  |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFF08F|- rs1_val == -4097<br>                                                                                                                                        |[0x80000952]:c.addi16sp 9<br> [0x80000954]:sd sp, 856(ra)<br>   |
| 109|[0x80003568]<br>0xFFFFFFFFFFFFC00F|- rs1_val == -16385<br>                                                                                                                                       |[0x80000960]:c.addi16sp 1<br> [0x80000962]:sd sp, 864(ra)<br>   |
| 110|[0x80003570]<br>0xFFFFFFFFFFFF800F|- rs1_val == -32769<br>                                                                                                                                       |[0x8000096e]:c.addi16sp 1<br> [0x80000970]:sd sp, 872(ra)<br>   |
| 111|[0x80003578]<br>0xFFFFFFFFFFFEFF5F|- rs1_val == -65537<br>                                                                                                                                       |[0x8000097c]:c.addi16sp 54<br> [0x8000097e]:sd sp, 880(ra)<br>  |
| 112|[0x80003580]<br>0xFFFFFFFFFFFC008F|- rs1_val == -262145<br>                                                                                                                                      |[0x8000098a]:c.addi16sp 9<br> [0x8000098c]:sd sp, 888(ra)<br>   |
| 113|[0x80003588]<br>0xFFFFFFFFFFF800EF|- rs1_val == -524289<br>                                                                                                                                      |[0x80000998]:c.addi16sp 15<br> [0x8000099a]:sd sp, 896(ra)<br>  |
| 114|[0x80003590]<br>0xFFFFFFFFFFEFFFDF|- rs1_val == -1048577<br>                                                                                                                                     |[0x800009a6]:c.addi16sp 62<br> [0x800009a8]:sd sp, 904(ra)<br>  |
| 115|[0x80003598]<br>0xFFFFFFFFFFDFFFBF|- rs1_val == -2097153<br>                                                                                                                                     |[0x800009b4]:c.addi16sp 60<br> [0x800009b6]:sd sp, 912(ra)<br>  |
| 116|[0x800035a0]<br>0xFFFFFFFFFFC001EF|- rs1_val == -4194305<br>                                                                                                                                     |[0x800009c2]:c.addi16sp 31<br> [0x800009c4]:sd sp, 920(ra)<br>  |
| 117|[0x800035a8]<br>0xFFFFFFFFFF7FFEEF|- rs1_val == -8388609<br>                                                                                                                                     |[0x800009d0]:c.addi16sp 47<br> [0x800009d2]:sd sp, 928(ra)<br>  |
| 118|[0x800035b0]<br>0xFFFFFFFFFEFFFFEF|- rs1_val == -16777217<br>                                                                                                                                    |[0x800009de]:c.addi16sp 63<br> [0x800009e0]:sd sp, 936(ra)<br>  |
| 119|[0x800035b8]<br>0xFFFFFFFFFE00005F|- rs1_val == -33554433<br>                                                                                                                                    |[0x800009ec]:c.addi16sp 6<br> [0x800009ee]:sd sp, 944(ra)<br>   |
| 120|[0x800035c0]<br>0xFFFFFFFFFC00008F|- rs1_val == -67108865<br>                                                                                                                                    |[0x800009fa]:c.addi16sp 9<br> [0x800009fc]:sd sp, 952(ra)<br>   |
| 121|[0x800035c8]<br>0xFFFFFFFFF7FFFF8F|- rs1_val == -134217729<br>                                                                                                                                   |[0x80000a08]:c.addi16sp 57<br> [0x80000a0a]:sd sp, 960(ra)<br>  |
| 122|[0x800035d0]<br>0xFFFFFFFFEFFFFDFF|- rs1_val == -268435457<br>                                                                                                                                   |[0x80000a16]:c.addi16sp 32<br> [0x80000a18]:sd sp, 968(ra)<br>  |
| 123|[0x800035d8]<br>0xFFFFFFFFE000006F|- rs1_val == -536870913<br>                                                                                                                                   |[0x80000a24]:c.addi16sp 7<br> [0x80000a26]:sd sp, 976(ra)<br>   |
| 124|[0x800035e0]<br>0xFFFFFFFFBFFFFF8F|- rs1_val == -1073741825<br>                                                                                                                                  |[0x80000a32]:c.addi16sp 57<br> [0x80000a34]:sd sp, 984(ra)<br>  |
| 125|[0x800035e8]<br>0xFFFFFFFF7FFFFEEF|- rs1_val == -2147483649<br>                                                                                                                                  |[0x80000a44]:c.addi16sp 47<br> [0x80000a46]:sd sp, 992(ra)<br>  |
| 126|[0x800035f0]<br>0xFFFFFFFEFFFFFF5F|- rs1_val == -4294967297<br>                                                                                                                                  |[0x80000a56]:c.addi16sp 54<br> [0x80000a58]:sd sp, 1000(ra)<br> |
| 127|[0x800035f8]<br>0xFFFFFFFDFFFFFF9F|- rs1_val == -8589934593<br>                                                                                                                                  |[0x80000a68]:c.addi16sp 58<br> [0x80000a6a]:sd sp, 1008(ra)<br> |
| 128|[0x80003600]<br>0xFFFFFFFC000000EF|- rs1_val == -17179869185<br>                                                                                                                                 |[0x80000a7a]:c.addi16sp 15<br> [0x80000a7c]:sd sp, 1016(ra)<br> |
| 129|[0x80003608]<br>0xFFFFFFF8000000EF|- rs1_val == -34359738369<br>                                                                                                                                 |[0x80000a8c]:c.addi16sp 15<br> [0x80000a8e]:sd sp, 1024(ra)<br> |
| 130|[0x80003610]<br>0xFFFFFFF00000001F|- rs1_val == -68719476737<br>                                                                                                                                 |[0x80000a9e]:c.addi16sp 2<br> [0x80000aa0]:sd sp, 1032(ra)<br>  |
| 131|[0x80003618]<br>0xFFFFFFE00000008F|- rs1_val == -137438953473<br>                                                                                                                                |[0x80000ab0]:c.addi16sp 9<br> [0x80000ab2]:sd sp, 1040(ra)<br>  |
| 132|[0x80003620]<br>0xFFFFFFC00000004F|- rs1_val == -274877906945<br>                                                                                                                                |[0x80000ac2]:c.addi16sp 5<br> [0x80000ac4]:sd sp, 1048(ra)<br>  |
| 133|[0x80003628]<br>0xFFFFFF7FFFFFFF6F|- rs1_val == -549755813889<br>                                                                                                                                |[0x80000ad4]:c.addi16sp 55<br> [0x80000ad6]:sd sp, 1056(ra)<br> |
| 134|[0x80003630]<br>0xFFFFFF00000000FF|- rs1_val == -1099511627777<br>                                                                                                                               |[0x80000ae6]:c.addi16sp 16<br> [0x80000ae8]:sd sp, 1064(ra)<br> |
