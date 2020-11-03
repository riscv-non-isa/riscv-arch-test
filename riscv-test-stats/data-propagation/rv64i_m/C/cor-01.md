
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800012e0')]      |
| SIG_REGION                | [('0x80004204', '0x800047b0', '181 dwords')]      |
| COV_LABELS                | cor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |
| Total Number of coverpoints| 287     |
| Total Signature Updates   | 180      |
| Total Coverpoints Covered | 287      |
| STAT1                     | 180      |
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

|s.no|            signature             |                                                                  coverpoints                                                                  |                             code                             |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000200000000|- opcode : c.or<br> - rs1 : x11<br> - rs2 : x11<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 8589934592<br> - rs1_val == 8589934592<br> |[0x800003a4]:c.or a1, a1<br> [0x800003a6]:sd a1, 0(ra)<br>    |
|   2|[0x80004218]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs2_val == -4503599627370497<br> - rs1_val == -8388609<br>                 |[0x800003be]:c.or a4, s0<br> [0x800003c0]:sd a4, 8(ra)<br>    |
|   3|[0x80004220]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x8<br> - rs2 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -3<br> - rs1_val == -9223372036854775808<br>                       |[0x800003d0]:c.or s0, a0<br> [0x800003d2]:sd fp, 16(ra)<br>   |
|   4|[0x80004228]<br>0x0000000000000009|- rs1 : x12<br> - rs2 : x14<br> - rs1_val == 0<br>                                                                                             |[0x800003de]:c.or a2, a4<br> [0x800003e0]:sd a2, 24(ra)<br>   |
|   5|[0x80004230]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 4611686018427387904<br> - rs1_val == 9223372036854775807<br>      |[0x800003f8]:c.or a3, s1<br> [0x800003fa]:sd a3, 32(ra)<br>   |
|   6|[0x80004238]<br>0x0000000800000001|- rs1 : x9<br> - rs2 : x12<br> - rs1_val == 1<br> - rs2_val == 34359738368<br>                                                                 |[0x8000040a]:c.or s1, a2<br> [0x8000040c]:sd s1, 40(ra)<br>   |
|   7|[0x80004240]<br>0xFFFFFFFFFFEFFFFF|- rs1 : x15<br> - rs2 : x13<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -1048577<br>                |[0x80000420]:c.or a5, a3<br> [0x80000422]:sd a5, 48(ra)<br>   |
|   8|[0x80004248]<br>0x0000004000000000|- rs1 : x10<br> - rs2 : x15<br> - rs2_val == 0<br> - rs1_val == 274877906944<br>                                                               |[0x80000432]:c.or a0, a5<br> [0x80000434]:sd a0, 56(ra)<br>   |
|   9|[0x80004250]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -17592186044417<br>                                         |[0x80000450]:c.or a0, a1<br> [0x80000452]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 1<br> - rs1_val == -9<br>                                                                                                         |[0x8000045e]:c.or a0, a1<br> [0x80000460]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 2<br>                                                                                                                             |[0x8000046c]:c.or a0, a1<br> [0x8000046e]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0x0000000000020004|- rs2_val == 131072<br> - rs1_val == 4<br>                                                                                                     |[0x8000047a]:c.or a0, a1<br> [0x8000047c]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0x0002000000000008|- rs2_val == 562949953421312<br> - rs1_val == 8<br>                                                                                            |[0x8000048c]:c.or a0, a1<br> [0x8000048e]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000000200000010|- rs1_val == 16<br>                                                                                                                            |[0x8000049e]:c.or a0, a1<br> [0x800004a0]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000008000000020|- rs2_val == 549755813888<br> - rs1_val == 32<br>                                                                                              |[0x800004b0]:c.or a0, a1<br> [0x800004b2]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br> - rs1_val == 64<br>                                                                                          |[0x800004c6]:c.or a0, a1<br> [0x800004c8]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br> - rs1_val == 128<br>                                                                                                       |[0x800004d4]:c.or a0, a1<br> [0x800004d6]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000008100|- rs2_val == 32768<br> - rs1_val == 256<br>                                                                                                    |[0x800004e2]:c.or a0, a1<br> [0x800004e4]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000000000000201|- rs1_val == 512<br>                                                                                                                           |[0x800004f0]:c.or a0, a1<br> [0x800004f2]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0x0000000000000404|- rs2_val == 4<br> - rs1_val == 1024<br>                                                                                                       |[0x800004fe]:c.or a0, a1<br> [0x80000500]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == 2048<br>                                                                                                                          |[0x80000510]:c.or a0, a1<br> [0x80000512]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0002000000001000|- rs1_val == 4096<br>                                                                                                                          |[0x80000522]:c.or a0, a1<br> [0x80000524]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0x0000004000002000|- rs2_val == 274877906944<br> - rs1_val == 8192<br>                                                                                            |[0x80000534]:c.or a0, a1<br> [0x80000536]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br> - rs1_val == 16384<br>                                                                                              |[0x80000546]:c.or a0, a1<br> [0x80000548]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br> - rs1_val == 32768<br>                                                                                       |[0x8000055c]:c.or a0, a1<br> [0x8000055e]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br> - rs1_val == 65536<br>                                                                                           |[0x80000572]:c.or a0, a1<br> [0x80000574]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x0000400000020000|- rs2_val == 70368744177664<br> - rs1_val == 131072<br>                                                                                        |[0x80000584]:c.or a0, a1<br> [0x80000586]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0000000000048000|- rs1_val == 262144<br>                                                                                                                        |[0x80000592]:c.or a0, a1<br> [0x80000594]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0x0400000000080000|- rs2_val == 288230376151711744<br> - rs1_val == 524288<br>                                                                                    |[0x800005a4]:c.or a0, a1<br> [0x800005a6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0x0000000000110000|- rs2_val == 65536<br> - rs1_val == 1048576<br>                                                                                                |[0x800005b2]:c.or a0, a1<br> [0x800005b4]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br> - rs1_val == 2097152<br>                                                                                               |[0x800005c4]:c.or a0, a1<br> [0x800005c6]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x0000004000400000|- rs1_val == 4194304<br>                                                                                                                       |[0x800005d6]:c.or a0, a1<br> [0x800005d8]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0x0000000000800002|- rs2_val == 2<br> - rs1_val == 8388608<br>                                                                                                    |[0x800005e4]:c.or a0, a1<br> [0x800005e6]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000000001000000|- rs2_val == 16777216<br> - rs1_val == 16777216<br>                                                                                            |[0x800005f2]:c.or a0, a1<br> [0x800005f4]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0x0000000002000400|- rs2_val == 1024<br> - rs1_val == 33554432<br>                                                                                                |[0x80000600]:c.or a0, a1<br> [0x80000602]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x8000000004000000|- rs1_val == 67108864<br>                                                                                                                      |[0x80000612]:c.or a0, a1<br> [0x80000614]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br> - rs1_val == 134217728<br>                                                                                               |[0x80000620]:c.or a0, a1<br> [0x80000622]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == 268435456<br>                                                                                                                     |[0x8000062e]:c.or a0, a1<br> [0x80000630]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0x5555555575555555|- rs2_val == 6148914691236517205<br> - rs1_val == 536870912<br>                                                                                |[0x80000658]:c.or a0, a1<br> [0x8000065a]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br> - rs1_val == 1073741824<br>                                                                               |[0x8000066e]:c.or a0, a1<br> [0x80000670]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000081000000|- rs1_val == 2147483648<br>                                                                                                                    |[0x80000680]:c.or a0, a1<br> [0x80000682]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == 4294967296<br>                                                                                                                    |[0x8000069a]:c.or a0, a1<br> [0x8000069c]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x0000000400000400|- rs1_val == 17179869184<br>                                                                                                                   |[0x800006ac]:c.or a0, a1<br> [0x800006ae]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x1000000800000000|- rs2_val == 1152921504606846976<br> - rs1_val == 34359738368<br>                                                                              |[0x800006c2]:c.or a0, a1<br> [0x800006c4]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == 68719476736<br>                                                                                                                   |[0x800006dc]:c.or a0, a1<br> [0x800006de]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x1000002000000000|- rs1_val == 137438953472<br>                                                                                                                  |[0x800006f2]:c.or a0, a1<br> [0x800006f4]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0020008000000000|- rs2_val == 9007199254740992<br> - rs1_val == 549755813888<br>                                                                                |[0x80000708]:c.or a0, a1<br> [0x8000070a]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000010004000000|- rs2_val == 67108864<br> - rs1_val == 1099511627776<br>                                                                                       |[0x8000071a]:c.or a0, a1<br> [0x8000071c]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br> - rs1_val == 2199023255552<br>                                                                                          |[0x80000730]:c.or a0, a1<br> [0x80000732]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 4398046511104<br>                                                                                 |[0x8000074a]:c.or a0, a1<br> [0x8000074c]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0x0080080000000000|- rs2_val == 36028797018963968<br> - rs1_val == 8796093022208<br>                                                                              |[0x80000760]:c.or a0, a1<br> [0x80000762]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br> - rs1_val == 17592186044416<br>                                                                           |[0x8000077a]:c.or a0, a1<br> [0x8000077c]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0x0000200000010000|- rs1_val == 35184372088832<br>                                                                                                                |[0x8000078c]:c.or a0, a1<br> [0x8000078e]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0x0000400000008000|- rs1_val == 70368744177664<br>                                                                                                                |[0x8000079e]:c.or a0, a1<br> [0x800007a0]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x4000800000000000|- rs1_val == 140737488355328<br>                                                                                                               |[0x800007b4]:c.or a0, a1<br> [0x800007b6]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 281474976710656<br>                                                                               |[0x800007ce]:c.or a0, a1<br> [0x800007d0]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0002000000020000|- rs1_val == 562949953421312<br>                                                                                                               |[0x800007e0]:c.or a0, a1<br> [0x800007e2]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0x0004000000200000|- rs2_val == 2097152<br> - rs1_val == 1125899906842624<br>                                                                                     |[0x800007f2]:c.or a0, a1<br> [0x800007f4]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0x0008000000001000|- rs2_val == 4096<br> - rs1_val == 2251799813685248<br>                                                                                        |[0x80000804]:c.or a0, a1<br> [0x80000806]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0x0010000000000010|- rs2_val == 16<br> - rs1_val == 4503599627370496<br>                                                                                          |[0x80000816]:c.or a0, a1<br> [0x80000818]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0060000000000000|- rs2_val == 18014398509481984<br> - rs1_val == 9007199254740992<br>                                                                           |[0x8000082c]:c.or a0, a1<br> [0x8000082e]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br> - rs1_val == 18014398509481984<br>                                                                                 |[0x80000842]:c.or a0, a1<br> [0x80000844]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br> - rs1_val == 36028797018963968<br>                                                                                   |[0x80000858]:c.or a0, a1<br> [0x8000085a]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0xC100000000000000|- rs1_val == 72057594037927936<br>                                                                                                             |[0x8000086e]:c.or a0, a1<br> [0x80000870]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0x0200000100000000|- rs2_val == 4294967296<br> - rs1_val == 144115188075855872<br>                                                                                |[0x80000884]:c.or a0, a1<br> [0x80000886]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0x0400001000000000|- rs2_val == 68719476736<br> - rs1_val == 288230376151711744<br>                                                                               |[0x8000089a]:c.or a0, a1<br> [0x8000089c]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == 576460752303423488<br>                                                                                                            |[0x800008b0]:c.or a0, a1<br> [0x800008b2]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br> - rs1_val == 1152921504606846976<br>                                                                        |[0x800008ca]:c.or a0, a1<br> [0x800008cc]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 2305843009213693952<br>                                                                                                           |[0x800008dc]:c.or a0, a1<br> [0x800008de]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0x4000000000001000|- rs1_val == 4611686018427387904<br>                                                                                                           |[0x800008ee]:c.or a0, a1<br> [0x800008f0]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                            |[0x80000900]:c.or a0, a1<br> [0x80000902]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 8192<br> - rs1_val == -3<br>                                                                                                      |[0x8000090e]:c.or a0, a1<br> [0x80000910]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -16777217<br> - rs1_val == -5<br>                                                                                                 |[0x80000920]:c.or a0, a1<br> [0x80000922]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                           |[0x8000092e]:c.or a0, a1<br> [0x80000930]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == -33<br>                                                                                     |[0x80000944]:c.or a0, a1<br> [0x80000946]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 4194304<br> - rs1_val == -65<br>                                                                                                  |[0x80000952]:c.or a0, a1<br> [0x80000954]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == 2048<br> - rs1_val == -129<br>                                                                                                    |[0x80000964]:c.or a0, a1<br> [0x80000966]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == -257<br>                                                                                      |[0x8000097a]:c.or a0, a1<br> [0x8000097c]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                          |[0x80000988]:c.or a0, a1<br> [0x8000098a]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -17<br> - rs1_val == -1025<br>                                                                                                    |[0x80000996]:c.or a0, a1<br> [0x80000998]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -2049<br>                                                                                                                         |[0x800009a8]:c.or a0, a1<br> [0x800009aa]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                            |[0x800009be]:c.or a0, a1<br> [0x800009c0]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                            |[0x800009d8]:c.or a0, a1<br> [0x800009da]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                           |[0x800009f2]:c.or a0, a1<br> [0x800009f4]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                          |[0x80000a08]:c.or a0, a1<br> [0x80000a0a]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br> - rs1_val == -6148914691236517206<br>                                                                    |[0x80000a3a]:c.or a0, a1<br> [0x80000a3c]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -6148914691236517206<br> - rs1_val == -281474976710657<br>                                                                        |[0x80000a6c]:c.or a0, a1<br> [0x80000a6e]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                         |[0x80000a7e]:c.or a0, a1<br> [0x80000a80]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                         |[0x80000a94]:c.or a0, a1<br> [0x80000a96]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                        |[0x80000aaa]:c.or a0, a1<br> [0x80000aac]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                        |[0x80000ac0]:c.or a0, a1<br> [0x80000ac2]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -281474976710657<br> - rs1_val == -65537<br>                                                                                      |[0x80000ada]:c.or a0, a1<br> [0x80000adc]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                       |[0x80000af4]:c.or a0, a1<br> [0x80000af6]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -262145<br>                                                                                     |[0x80000b0a]:c.or a0, a1<br> [0x80000b0c]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == 1048576<br> - rs1_val == -524289<br>                                                                                              |[0x80000b1c]:c.or a0, a1<br> [0x80000b1e]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == 536870912<br> - rs1_val == -2097153<br>                                                                                           |[0x80000b2e]:c.or a0, a1<br> [0x80000b30]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == -4194305<br>                                                                                   |[0x80000b48]:c.or a0, a1<br> [0x80000b4a]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                     |[0x80000b5a]:c.or a0, a1<br> [0x80000b5c]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8589934593<br> - rs1_val == -33554433<br>                                                                                        |[0x80000b74]:c.or a0, a1<br> [0x80000b76]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == 2251799813685248<br> - rs1_val == -67108865<br>                                                                                   |[0x80000b8a]:c.or a0, a1<br> [0x80000b8c]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                    |[0x80000ba0]:c.or a0, a1<br> [0x80000ba2]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                    |[0x80000bb6]:c.or a0, a1<br> [0x80000bb8]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8388609<br> - rs1_val == -536870913<br>                                                                                          |[0x80000bcc]:c.or a0, a1<br> [0x80000bce]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == 8388608<br> - rs1_val == -1073741825<br>                                                                                          |[0x80000bde]:c.or a0, a1<br> [0x80000be0]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == 4503599627370496<br> - rs1_val == -2147483649<br>                                                                                 |[0x80000bf8]:c.or a0, a1<br> [0x80000bfa]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -65537<br> - rs1_val == -4294967297<br>                                                                                           |[0x80000c12]:c.or a0, a1<br> [0x80000c14]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == 256<br> - rs1_val == -8589934593<br>                                                                                              |[0x80000c28]:c.or a0, a1<br> [0x80000c2a]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == -17179869185<br>                                                                                     |[0x80000c42]:c.or a0, a1<br> [0x80000c44]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                  |[0x80000c60]:c.or a0, a1<br> [0x80000c62]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                  |[0x80000c76]:c.or a0, a1<br> [0x80000c78]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                 |[0x80000c8c]:c.or a0, a1<br> [0x80000c8e]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == 262144<br> - rs1_val == -274877906945<br>                                                                                         |[0x80000ca2]:c.or a0, a1<br> [0x80000ca4]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -257<br> - rs1_val == -549755813889<br>                                                                                           |[0x80000cb8]:c.or a0, a1<br> [0x80000cba]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                |[0x80000cce]:c.or a0, a1<br> [0x80000cd0]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                |[0x80000cec]:c.or a0, a1<br> [0x80000cee]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                |[0x80000d0a]:c.or a0, a1<br> [0x80000d0c]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1099511627777<br> - rs1_val == -8796093022209<br>                                                                                |[0x80000d28]:c.or a0, a1<br> [0x80000d2a]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == 33554432<br> - rs1_val == -35184372088833<br>                                                                                     |[0x80000d3e]:c.or a0, a1<br> [0x80000d40]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0xFFFFBFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                               |[0x80000d54]:c.or a0, a1<br> [0x80000d56]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2147483649<br> - rs1_val == -140737488355329<br>                                                                                 |[0x80000d72]:c.or a0, a1<br> [0x80000d74]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                              |[0x80000d88]:c.or a0, a1<br> [0x80000d8a]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8193<br> - rs1_val == -1125899906842625<br>                                                                                      |[0x80000da2]:c.or a0, a1<br> [0x80000da4]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == -2251799813685249<br>                                                                            |[0x80000dc0]:c.or a0, a1<br> [0x80000dc2]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == 1073741824<br> - rs1_val == -36028797018963969<br>                                                                                |[0x80000dd6]:c.or a0, a1<br> [0x80000dd8]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                            |[0x80000df4]:c.or a0, a1<br> [0x80000df6]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == 268435456<br> - rs1_val == -144115188075855873<br>                                                                                |[0x80000e0a]:c.or a0, a1<br> [0x80000e0c]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                           |[0x80000e28]:c.or a0, a1<br> [0x80000e2a]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br> - rs1_val == -18014398509481985<br>                                                                         |[0x80000e46]:c.or a0, a1<br> [0x80000e48]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -68719476737<br> - rs1_val == -576460752303423489<br>                                                                             |[0x80000e64]:c.or a0, a1<br> [0x80000e66]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                          |[0x80000e7e]:c.or a0, a1<br> [0x80000e80]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == 72057594037927936<br> - rs1_val == -2305843009213693953<br>                                                                       |[0x80000e98]:c.or a0, a1<br> [0x80000e9a]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0xBFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                          |[0x80000eb2]:c.or a0, a1<br> [0x80000eb4]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -5<br> - rs1_val == 6148914691236517205<br>                                                                                       |[0x80000edc]:c.or a0, a1<br> [0x80000ede]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0x000000000000000E|- rs2_val == 8<br>                                                                                                                             |[0x80000eea]:c.or a0, a1<br> [0x80000eec]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 32<br>                                                                                                                            |[0x80000ef8]:c.or a0, a1<br> [0x80000efa]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0x0000000001000040|- rs2_val == 64<br>                                                                                                                            |[0x80000f06]:c.or a0, a1<br> [0x80000f08]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0x0000100000000080|- rs2_val == 128<br>                                                                                                                           |[0x80000f18]:c.or a0, a1<br> [0x80000f1a]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == 512<br>                                                                                                                           |[0x80000f2e]:c.or a0, a1<br> [0x80000f30]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0x0020000000004000|- rs2_val == 16384<br>                                                                                                                         |[0x80000f40]:c.or a0, a1<br> [0x80000f42]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xC000000008000000|- rs2_val == 134217728<br>                                                                                                                     |[0x80000f52]:c.or a0, a1<br> [0x80000f54]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 2147483648<br>                                                                                                                    |[0x80000f68]:c.or a0, a1<br> [0x80000f6a]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == 17179869184<br>                                                                                                                   |[0x80000f7a]:c.or a0, a1<br> [0x80000f7c]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 137438953472<br>                                                                                                                  |[0x80000f8c]:c.or a0, a1<br> [0x80000f8e]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0x0000010000400000|- rs2_val == 1099511627776<br>                                                                                                                 |[0x80000f9e]:c.or a0, a1<br> [0x80000fa0]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0x0000820000000000|- rs2_val == 2199023255552<br>                                                                                                                 |[0x80000fb4]:c.or a0, a1<br> [0x80000fb6]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0x0001040000000000|- rs2_val == 4398046511104<br>                                                                                                                 |[0x80000fca]:c.or a0, a1<br> [0x80000fcc]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == 8796093022208<br>                                                                                                                 |[0x80000fe0]:c.or a0, a1<br> [0x80000fe2]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == 17592186044416<br>                                                                                                                |[0x80000ff2]:c.or a0, a1<br> [0x80000ff4]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x0200000000000100|- rs2_val == 144115188075855872<br>                                                                                                            |[0x80001004]:c.or a0, a1<br> [0x80001006]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0x0800020000000000|- rs2_val == 576460752303423488<br>                                                                                                            |[0x8000101a]:c.or a0, a1<br> [0x8000101c]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0x2000000000004000|- rs2_val == 2305843009213693952<br>                                                                                                           |[0x8000102c]:c.or a0, a1<br> [0x8000102e]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2<br>                                                                                                                            |[0x8000103e]:c.or a0, a1<br> [0x80001040]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                                                                           |[0x8000104c]:c.or a0, a1<br> [0x8000104e]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -65<br>                                                                                                                           |[0x80001062]:c.or a0, a1<br> [0x80001064]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                          |[0x80001070]:c.or a0, a1<br> [0x80001072]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                         |[0x8000107e]:c.or a0, a1<br> [0x80001080]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                         |[0x80001090]:c.or a0, a1<br> [0x80001092]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -32769<br>                                                                                                                        |[0x800010be]:c.or a0, a1<br> [0x800010c0]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                       |[0x800010d4]:c.or a0, a1<br> [0x800010d6]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0x5555755555555555|- rs2_val == 35184372088832<br>                                                                                                                |[0x80001102]:c.or a0, a1<br> [0x80001104]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -262145<br>                                                                                                                       |[0x8000111c]:c.or a0, a1<br> [0x8000111e]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                       |[0x8000112e]:c.or a0, a1<br> [0x80001130]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                      |[0x80001144]:c.or a0, a1<br> [0x80001146]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4194305<br>                                                                                                                      |[0x80001156]:c.or a0, a1<br> [0x80001158]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                     |[0x8000116c]:c.or a0, a1<br> [0x8000116e]:sd a0, 1312(ra)<br> |
| 166|[0x80004738]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -268435457<br>                                                                                                                    |[0x8000117e]:c.or a0, a1<br> [0x80001180]:sd a0, 1320(ra)<br> |
| 167|[0x80004740]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                    |[0x80001194]:c.or a0, a1<br> [0x80001196]:sd a0, 1328(ra)<br> |
| 168|[0x80004748]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                   |[0x800011ae]:c.or a0, a1<br> [0x800011b0]:sd a0, 1336(ra)<br> |
| 169|[0x80004750]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                  |[0x800011c4]:c.or a0, a1<br> [0x800011c6]:sd a0, 1344(ra)<br> |
| 170|[0x80004758]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                 |[0x800011de]:c.or a0, a1<br> [0x800011e0]:sd a0, 1352(ra)<br> |
| 171|[0x80004760]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                                 |[0x800011f8]:c.or a0, a1<br> [0x800011fa]:sd a0, 1360(ra)<br> |
| 172|[0x80004768]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                 |[0x80001216]:c.or a0, a1<br> [0x80001218]:sd a0, 1368(ra)<br> |
| 173|[0x80004770]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                |[0x80001230]:c.or a0, a1<br> [0x80001232]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                               |[0x80001246]:c.or a0, a1<br> [0x80001248]:sd a0, 1384(ra)<br> |
| 175|[0x80004780]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                               |[0x80001264]:c.or a0, a1<br> [0x80001266]:sd a0, 1392(ra)<br> |
| 176|[0x80004788]<br>0x0000800000000007|- rs2_val == 140737488355328<br>                                                                                                               |[0x80001276]:c.or a0, a1<br> [0x80001278]:sd a0, 1400(ra)<br> |
| 177|[0x80004790]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 281474976710656<br>                                                                                                               |[0x80001288]:c.or a0, a1<br> [0x8000128a]:sd a0, 1408(ra)<br> |
| 178|[0x80004798]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                             |[0x800012a6]:c.or a0, a1<br> [0x800012a8]:sd a0, 1416(ra)<br> |
| 179|[0x800047a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                             |[0x800012c0]:c.or a0, a1<br> [0x800012c2]:sd a0, 1424(ra)<br> |
| 180|[0x800047a8]<br>0x0000000200080000|- rs2_val == 524288<br>                                                                                                                        |[0x800012d2]:c.or a0, a1<br> [0x800012d4]:sd a0, 1432(ra)<br> |
