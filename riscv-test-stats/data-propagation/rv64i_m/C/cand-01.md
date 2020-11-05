
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001390')]      |
| SIG_REGION                | [('0x80004204', '0x800047e0', '187 dwords')]      |
| COV_LABELS                | cand      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cand-01.S/cand-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 186      |
| STAT1                     | 186      |
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

|s.no|            signature             |                                                                       coverpoints                                                                        |                             code                              |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004210]<br>0xFFFFDFFFFFFFFFFF|- opcode : c.and<br> - rs1 : x14<br> - rs2 : x14<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -35184372088833<br> - rs1_val == -35184372088833<br> |[0x800003a8]:c.and a4, a4<br> [0x800003aa]:sd a4, 0(ra)<br>    |
|   2|[0x80004218]<br>0xEFFFFFFFFFFFFFFB|- rs1 : x13<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val == -1152921504606846977<br> - rs1_val == -5<br>                                                 |[0x800003be]:c.and a3, s0<br> [0x800003c0]:sd a3, 8(ra)<br>    |
|   3|[0x80004220]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs2_val == 32<br> - rs1_val == -9223372036854775808<br>                |[0x800003d0]:c.and s0, a0<br> [0x800003d2]:sd fp, 16(ra)<br>   |
|   4|[0x80004228]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x12<br> - rs1_val == 0<br> - rs2_val == -4398046511105<br>                                                                        |[0x800003e6]:c.and a1, a2<br> [0x800003e8]:sd a1, 24(ra)<br>   |
|   5|[0x80004230]<br>0x7FFFFDFFFFFFFFFF|- rs1 : x10<br> - rs2 : x15<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -2199023255553<br> - rs1_val == 9223372036854775807<br>                     |[0x80000404]:c.and a0, a5<br> [0x80000406]:sd a0, 32(ra)<br>   |
|   6|[0x80004238]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == 1<br> - rs2_val == 1073741824<br>                                                                             |[0x80000412]:c.and s1, a3<br> [0x80000414]:sd s1, 40(ra)<br>   |
|   7|[0x80004240]<br>0x8000000000000000|- rs1 : x15<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -2305843009213693953<br>               |[0x8000042c]:c.and a5, a1<br> [0x8000042e]:sd a5, 48(ra)<br>   |
|   8|[0x80004248]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == -257<br>                                                                                   |[0x8000043a]:c.and a2, s1<br> [0x8000043c]:sd a2, 56(ra)<br>   |
|   9|[0x80004250]<br>0x0000100000000000|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 17592186044416<br>                                                     |[0x80000454]:c.and a0, a1<br> [0x80000456]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0x0000000000000000|- rs2_val == 1<br> - rs1_val == 8796093022208<br>                                                                                                         |[0x80000466]:c.and a0, a1<br> [0x80000468]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0x0000000000000002|- rs1_val == 2<br>                                                                                                                                        |[0x8000047c]:c.and a0, a1<br> [0x8000047e]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0x0000000000000000|- rs2_val == 8796093022208<br> - rs1_val == 4<br>                                                                                                         |[0x8000048e]:c.and a0, a1<br> [0x80000490]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0x0000000000000000|- rs2_val == 268435456<br> - rs1_val == 8<br>                                                                                                             |[0x8000049c]:c.and a0, a1<br> [0x8000049e]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000000000000010|- rs2_val == -2<br> - rs1_val == 16<br>                                                                                                                   |[0x800004aa]:c.and a0, a1<br> [0x800004ac]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                                                                       |[0x800004bc]:c.and a0, a1<br> [0x800004be]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0x0000000000000000|- rs2_val == 18014398509481984<br> - rs1_val == 64<br>                                                                                                    |[0x800004ce]:c.and a0, a1<br> [0x800004d0]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0x0000000000000000|- rs2_val == 4503599627370496<br> - rs1_val == 128<br>                                                                                                    |[0x800004e0]:c.and a0, a1<br> [0x800004e2]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000000100|- rs2_val == -33554433<br> - rs1_val == 256<br>                                                                                                           |[0x800004f2]:c.and a0, a1<br> [0x800004f4]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000000000000000|- rs2_val == 16<br> - rs1_val == 512<br>                                                                                                                  |[0x80000500]:c.and a0, a1<br> [0x80000502]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0x0000000000000000|- rs2_val == 562949953421312<br> - rs1_val == 1024<br>                                                                                                    |[0x80000512]:c.and a0, a1<br> [0x80000514]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0000000000000000|- rs2_val == 262144<br> - rs1_val == 2048<br>                                                                                                             |[0x80000524]:c.and a0, a1<br> [0x80000526]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0000000000000000|- rs2_val == 131072<br> - rs1_val == 4096<br>                                                                                                             |[0x80000532]:c.and a0, a1<br> [0x80000534]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0x0000000000000000|- rs2_val == 256<br> - rs1_val == 8192<br>                                                                                                                |[0x80000540]:c.and a0, a1<br> [0x80000542]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0x0000000000004000|- rs1_val == 16384<br>                                                                                                                                    |[0x8000054e]:c.and a0, a1<br> [0x80000550]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x0000000000008000|- rs2_val == -1073741825<br> - rs1_val == 32768<br>                                                                                                       |[0x80000560]:c.and a0, a1<br> [0x80000562]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0x0000000000010000|- rs1_val == 65536<br>                                                                                                                                    |[0x8000056e]:c.and a0, a1<br> [0x80000570]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x0000000000020000|- rs2_val == -549755813889<br> - rs1_val == 131072<br>                                                                                                    |[0x80000584]:c.and a0, a1<br> [0x80000586]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                                   |[0x80000596]:c.and a0, a1<br> [0x80000598]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0x0000000000080000|- rs2_val == -513<br> - rs1_val == 524288<br>                                                                                                             |[0x800005a4]:c.and a0, a1<br> [0x800005a6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0x0000000000100000|- rs2_val == -2147483649<br> - rs1_val == 1048576<br>                                                                                                     |[0x800005ba]:c.and a0, a1<br> [0x800005bc]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x0000000000000000|- rs2_val == 8589934592<br> - rs1_val == 2097152<br>                                                                                                      |[0x800005cc]:c.and a0, a1<br> [0x800005ce]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x0000000000400000|- rs1_val == 4194304<br>                                                                                                                                  |[0x800005e2]:c.and a0, a1<br> [0x800005e4]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0x0000000000800000|- rs2_val == -72057594037927937<br> - rs1_val == 8388608<br>                                                                                              |[0x800005f8]:c.and a0, a1<br> [0x800005fa]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000000000000000|- rs2_val == 288230376151711744<br> - rs1_val == 16777216<br>                                                                                             |[0x8000060a]:c.and a0, a1<br> [0x8000060c]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                 |[0x80000618]:c.and a0, a1<br> [0x8000061a]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000000000000|- rs2_val == 137438953472<br> - rs1_val == 67108864<br>                                                                                                   |[0x8000062a]:c.and a0, a1<br> [0x8000062c]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0000000008000000|- rs2_val == -1099511627777<br> - rs1_val == 134217728<br>                                                                                                |[0x80000640]:c.and a0, a1<br> [0x80000642]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0x0000000000000000|- rs2_val == -268435457<br> - rs1_val == 268435456<br>                                                                                                    |[0x80000652]:c.and a0, a1<br> [0x80000654]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                |[0x80000664]:c.and a0, a1<br> [0x80000666]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0x0000000000000000|- rs2_val == 524288<br> - rs1_val == 1073741824<br>                                                                                                       |[0x80000672]:c.and a0, a1<br> [0x80000674]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000080000000|- rs2_val == -8388609<br> - rs1_val == 2147483648<br>                                                                                                     |[0x80000688]:c.and a0, a1<br> [0x8000068a]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0x0000000000000000|- rs2_val == 2048<br> - rs1_val == 4294967296<br>                                                                                                         |[0x8000069e]:c.and a0, a1<br> [0x800006a0]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x0000000000000000|- rs2_val == 16384<br> - rs1_val == 8589934592<br>                                                                                                        |[0x800006b0]:c.and a0, a1<br> [0x800006b2]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x0000000400000000|- rs2_val == -9007199254740993<br> - rs1_val == 17179869184<br>                                                                                           |[0x800006ca]:c.and a0, a1<br> [0x800006cc]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0x0000000000000000|- rs2_val == -34359738369<br> - rs1_val == 34359738368<br>                                                                                                |[0x800006e4]:c.and a0, a1<br> [0x800006e6]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000001000000000|- rs2_val == -288230376151711745<br> - rs1_val == 68719476736<br>                                                                                         |[0x800006fe]:c.and a0, a1<br> [0x80000700]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0000000000000000|- rs2_val == 4<br> - rs1_val == 137438953472<br>                                                                                                          |[0x80000710]:c.and a0, a1<br> [0x80000712]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                             |[0x80000722]:c.and a0, a1<br> [0x80000724]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0x0000008000000000|- rs2_val == -17<br> - rs1_val == 549755813888<br>                                                                                                        |[0x80000734]:c.and a0, a1<br> [0x80000736]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0x0000000000000000|- rs2_val == 576460752303423488<br> - rs1_val == 1099511627776<br>                                                                                        |[0x8000074a]:c.and a0, a1<br> [0x8000074c]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0x0000020000000000|- rs2_val == -4194305<br> - rs1_val == 2199023255552<br>                                                                                                  |[0x80000760]:c.and a0, a1<br> [0x80000762]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0x0000040000000000|- rs2_val == -8589934593<br> - rs1_val == 4398046511104<br>                                                                                               |[0x8000077a]:c.and a0, a1<br> [0x8000077c]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0x0000000000000000|- rs2_val == 512<br> - rs1_val == 35184372088832<br>                                                                                                      |[0x8000078c]:c.and a0, a1<br> [0x8000078e]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                           |[0x8000079e]:c.and a0, a1<br> [0x800007a0]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                          |[0x800007b0]:c.and a0, a1<br> [0x800007b2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0x0000000000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 281474976710656<br>                                                                                     |[0x800007c6]:c.and a0, a1<br> [0x800007c8]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0000000000000000|- rs2_val == 2305843009213693952<br> - rs1_val == 562949953421312<br>                                                                                     |[0x800007dc]:c.and a0, a1<br> [0x800007de]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                         |[0x800007ee]:c.and a0, a1<br> [0x800007f0]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0x0000000000000000|- rs2_val == 536870912<br> - rs1_val == 2251799813685248<br>                                                                                              |[0x80000800]:c.and a0, a1<br> [0x80000802]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0x0010000000000000|- rs2_val == -562949953421313<br> - rs1_val == 4503599627370496<br>                                                                                       |[0x8000081a]:c.and a0, a1<br> [0x8000081c]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0020000000000000|- rs2_val == -33<br> - rs1_val == 9007199254740992<br>                                                                                                    |[0x8000082c]:c.and a0, a1<br> [0x8000082e]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0x0040000000000000|- rs1_val == 18014398509481984<br>                                                                                                                        |[0x80000846]:c.and a0, a1<br> [0x80000848]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0x0080000000000000|- rs1_val == 36028797018963968<br>                                                                                                                        |[0x80000858]:c.and a0, a1<br> [0x8000085a]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0x0000000000000000|- rs2_val == 274877906944<br> - rs1_val == 72057594037927936<br>                                                                                          |[0x8000086e]:c.and a0, a1<br> [0x80000870]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0x0000000000000000|- rs2_val == 140737488355328<br> - rs1_val == 144115188075855872<br>                                                                                      |[0x80000884]:c.and a0, a1<br> [0x80000886]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0x0000000000000000|- rs2_val == 9007199254740992<br> - rs1_val == 288230376151711744<br>                                                                                     |[0x8000089a]:c.and a0, a1<br> [0x8000089c]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                       |[0x800008ac]:c.and a0, a1<br> [0x800008ae]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0x1000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                      |[0x800008c6]:c.and a0, a1<br> [0x800008c8]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x0000000000000000|- rs2_val == 1048576<br> - rs1_val == 2305843009213693952<br>                                                                                             |[0x800008d8]:c.and a0, a1<br> [0x800008da]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0x0000000000000000|- rs2_val == 8388608<br> - rs1_val == 4611686018427387904<br>                                                                                             |[0x800008ea]:c.and a0, a1<br> [0x800008ec]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0x0000000000000800|- rs1_val == -2<br>                                                                                                                                       |[0x800008fc]:c.and a0, a1<br> [0x800008fe]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFF7FFFFFFD|- rs1_val == -3<br>                                                                                                                                       |[0x80000912]:c.and a0, a1<br> [0x80000914]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0x0000000000000005|- rs1_val == -9<br>                                                                                                                                       |[0x80000920]:c.and a0, a1<br> [0x80000922]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xC000000000000000|- rs1_val == -17<br>                                                                                                                                      |[0x80000932]:c.and a0, a1<br> [0x80000934]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0x0000100000000000|- rs2_val == 17592186044416<br> - rs1_val == -33<br>                                                                                                      |[0x80000944]:c.and a0, a1<br> [0x80000946]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFFBA|- rs1_val == -65<br>                                                                                                                                      |[0x80000952]:c.and a0, a1<br> [0x80000954]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0xFFFFFFFF7FFFFF7F|- rs1_val == -129<br>                                                                                                                                     |[0x80000968]:c.and a0, a1<br> [0x8000096a]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFFFFFFDBF|- rs2_val == -65<br> - rs1_val == -513<br>                                                                                                                |[0x80000976]:c.and a0, a1<br> [0x80000978]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xFFFFFFFDFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                    |[0x8000098c]:c.and a0, a1<br> [0x8000098e]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0xFFBFFFFF7FFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == -2147483649<br>                                                                                          |[0x800009aa]:c.and a0, a1<br> [0x800009ac]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0xFF7FFFFFFFFFFFFB|- rs2_val == -36028797018963969<br>                                                                                                                       |[0x800009c0]:c.and a0, a1<br> [0x800009c2]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xC000000000000000|- rs2_val == -144115188075855873<br>                                                                                                                      |[0x800009da]:c.and a0, a1<br> [0x800009dc]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0x0200000000000000|- rs2_val == -576460752303423489<br>                                                                                                                      |[0x800009f4]:c.and a0, a1<br> [0x800009f6]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0x0000000000010000|- rs2_val == -2305843009213693953<br>                                                                                                                     |[0x80000a0a]:c.and a0, a1<br> [0x80000a0c]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0x0000100000000000|- rs2_val == -4611686018427387905<br>                                                                                                                     |[0x80000a24]:c.and a0, a1<br> [0x80000a26]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br> - rs1_val == -131073<br>                                                                                             |[0x80000a52]:c.and a0, a1<br> [0x80000a54]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                     |[0x80000a7c]:c.and a0, a1<br> [0x80000a7e]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0x0000000000080000|- rs1_val == -2049<br>                                                                                                                                    |[0x80000a8e]:c.and a0, a1<br> [0x80000a90]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0x0000000001000000|- rs2_val == 16777216<br> - rs1_val == -4097<br>                                                                                                          |[0x80000aa0]:c.and a0, a1<br> [0x80000aa2]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFFDDFF|- rs1_val == -8193<br>                                                                                                                                    |[0x80000ab2]:c.and a0, a1<br> [0x80000ab4]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0x0000000100000000|- rs2_val == 4294967296<br> - rs1_val == -16385<br>                                                                                                       |[0x80000ac8]:c.and a0, a1<br> [0x80000aca]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0x0000000002000000|- rs2_val == 33554432<br> - rs1_val == -32769<br>                                                                                                         |[0x80000ada]:c.and a0, a1<br> [0x80000adc]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0x0000000000400000|- rs2_val == 4194304<br> - rs1_val == -65537<br>                                                                                                          |[0x80000aec]:c.and a0, a1<br> [0x80000aee]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFFFFFEFFBFFFF|- rs1_val == -262145<br>                                                                                                                                  |[0x80000b02]:c.and a0, a1<br> [0x80000b04]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0x0000100000000000|- rs1_val == -524289<br>                                                                                                                                  |[0x80000b18]:c.and a0, a1<br> [0x80000b1a]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0x0000000000000005|- rs1_val == -1048577<br>                                                                                                                                 |[0x80000b2a]:c.and a0, a1<br> [0x80000b2c]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0x0000000000000040|- rs2_val == 64<br> - rs1_val == -2097153<br>                                                                                                             |[0x80000b3c]:c.and a0, a1<br> [0x80000b3e]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0xFFFF7FFFFFBFFFFF|- rs2_val == -140737488355329<br> - rs1_val == -4194305<br>                                                                                               |[0x80000b56]:c.and a0, a1<br> [0x80000b58]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0x0000000000000800|- rs1_val == -8388609<br>                                                                                                                                 |[0x80000b6c]:c.and a0, a1<br> [0x80000b6e]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0x0000000020000000|- rs1_val == -16777217<br>                                                                                                                                |[0x80000b7e]:c.and a0, a1<br> [0x80000b80]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFFFDFFBFFF|- rs2_val == -16385<br> - rs1_val == -33554433<br>                                                                                                        |[0x80000b94]:c.and a0, a1<br> [0x80000b96]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0x0000000020000000|- rs1_val == -67108865<br>                                                                                                                                |[0x80000ba6]:c.and a0, a1<br> [0x80000ba8]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0x0010000000000000|- rs1_val == -134217729<br>                                                                                                                               |[0x80000bbc]:c.and a0, a1<br> [0x80000bbe]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0x0000000000000001|- rs1_val == -268435457<br>                                                                                                                               |[0x80000bce]:c.and a0, a1<br> [0x80000bd0]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0x0000000000000006|- rs1_val == -536870913<br>                                                                                                                               |[0x80000be0]:c.and a0, a1<br> [0x80000be2]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFFFBFFFEFFF|- rs2_val == -4097<br> - rs1_val == -1073741825<br>                                                                                                       |[0x80000bf6]:c.and a0, a1<br> [0x80000bf8]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFFFFFFEFEFFFFFF|- rs2_val == -16777217<br> - rs1_val == -4294967297<br>                                                                                                   |[0x80000c10]:c.and a0, a1<br> [0x80000c12]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFBFFFFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                              |[0x80000c2e]:c.and a0, a1<br> [0x80000c30]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0xFFBFFFFBFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                             |[0x80000c4c]:c.and a0, a1<br> [0x80000c4e]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0x0000008000000000|- rs2_val == 549755813888<br> - rs1_val == -34359738369<br>                                                                                               |[0x80000c66]:c.and a0, a1<br> [0x80000c68]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0x0010000000000000|- rs1_val == -68719476737<br>                                                                                                                             |[0x80000c80]:c.and a0, a1<br> [0x80000c82]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0xBFFFFFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                            |[0x80000c9e]:c.and a0, a1<br> [0x80000ca0]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0xFFFFFFBFFFFFFFF6|- rs1_val == -274877906945<br>                                                                                                                            |[0x80000cb4]:c.and a0, a1<br> [0x80000cb6]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0x0000000800000000|- rs2_val == 34359738368<br> - rs1_val == -549755813889<br>                                                                                               |[0x80000cce]:c.and a0, a1<br> [0x80000cd0]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0x4000000000000000|- rs1_val == -1099511627777<br>                                                                                                                           |[0x80000ce8]:c.and a0, a1<br> [0x80000cea]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0x0400000000000000|- rs1_val == -2199023255553<br>                                                                                                                           |[0x80000d02]:c.and a0, a1<br> [0x80000d04]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0x0020000000000000|- rs1_val == -4398046511105<br>                                                                                                                           |[0x80000d1c]:c.and a0, a1<br> [0x80000d1e]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0x0000000000080000|- rs1_val == -8796093022209<br>                                                                                                                           |[0x80000d32]:c.and a0, a1<br> [0x80000d34]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0x0000000800000000|- rs1_val == -17592186044417<br>                                                                                                                          |[0x80000d4c]:c.and a0, a1<br> [0x80000d4e]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFFBFFFFFFEFFFF|- rs2_val == -65537<br> - rs1_val == -70368744177665<br>                                                                                                  |[0x80000d66]:c.and a0, a1<br> [0x80000d68]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFB7FFFFFFFFFFF|- rs2_val == -1125899906842625<br> - rs1_val == -140737488355329<br>                                                                                      |[0x80000d84]:c.and a0, a1<br> [0x80000d86]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0xFFF6FFFFFFFFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == -281474976710657<br>                                                                                      |[0x80000da2]:c.and a0, a1<br> [0x80000da4]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0x0020000000000000|- rs1_val == -562949953421313<br>                                                                                                                         |[0x80000dbc]:c.and a0, a1<br> [0x80000dbe]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0x0000000000000002|- rs2_val == 2<br> - rs1_val == -1125899906842625<br>                                                                                                     |[0x80000dd2]:c.and a0, a1<br> [0x80000dd4]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                        |[0x80000de8]:c.and a0, a1<br> [0x80000dea]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0x0000000000100000|- rs1_val == -36028797018963969<br>                                                                                                                       |[0x80000dfe]:c.and a0, a1<br> [0x80000e00]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0x0000004000000000|- rs1_val == -72057594037927937<br>                                                                                                                       |[0x80000e18]:c.and a0, a1<br> [0x80000e1a]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFDBFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                      |[0x80000e36]:c.and a0, a1<br> [0x80000e38]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xAAAAAAAAAAAAAAAA|- rs1_val == -288230376151711745<br>                                                                                                                      |[0x80000e68]:c.and a0, a1<br> [0x80000e6a]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0x2000000000000000|- rs1_val == -576460752303423489<br>                                                                                                                      |[0x80000e82]:c.and a0, a1<br> [0x80000e84]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0x0400000000000000|- rs1_val == -1152921504606846977<br>                                                                                                                     |[0x80000e9c]:c.and a0, a1<br> [0x80000e9e]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0xBFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == -4611686018427387905<br>                                                                                  |[0x80000eba]:c.and a0, a1<br> [0x80000ebc]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0x0000000000001000|- rs2_val == 4096<br> - rs1_val == 6148914691236517205<br>                                                                                                |[0x80000ee4]:c.and a0, a1<br> [0x80000ee6]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0x0000000000000000|- rs1_val == -6148914691236517206<br>                                                                                                                     |[0x80000f12]:c.and a0, a1<br> [0x80000f14]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0x0000000000000008|- rs2_val == 8<br>                                                                                                                                        |[0x80000f28]:c.and a0, a1<br> [0x80000f2a]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0x0000000000000080|- rs2_val == 128<br>                                                                                                                                      |[0x80000f3a]:c.and a0, a1<br> [0x80000f3c]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0x0000000000000000|- rs2_val == 1024<br>                                                                                                                                     |[0x80000f48]:c.and a0, a1<br> [0x80000f4a]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0x0000000000000000|- rs2_val == 32768<br>                                                                                                                                    |[0x80000f5a]:c.and a0, a1<br> [0x80000f5c]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0x0000000000000000|- rs2_val == 65536<br>                                                                                                                                    |[0x80000f68]:c.and a0, a1<br> [0x80000f6a]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0x0000000000200000|- rs2_val == 2097152<br>                                                                                                                                  |[0x80000f7a]:c.and a0, a1<br> [0x80000f7c]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0x0000000004000000|- rs2_val == 67108864<br>                                                                                                                                 |[0x80000fa4]:c.and a0, a1<br> [0x80000fa6]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0x0000000000000000|- rs2_val == 134217728<br>                                                                                                                                |[0x80000fb6]:c.and a0, a1<br> [0x80000fb8]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0x0000000000000000|- rs2_val == 2147483648<br>                                                                                                                               |[0x80000fcc]:c.and a0, a1<br> [0x80000fce]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0x0000000000000000|- rs2_val == 17179869184<br>                                                                                                                              |[0x80000fde]:c.and a0, a1<br> [0x80000fe0]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0x0000000000000000|- rs2_val == 68719476736<br>                                                                                                                              |[0x80000ff0]:c.and a0, a1<br> [0x80000ff2]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0x0000000000000000|- rs2_val == 1099511627776<br>                                                                                                                            |[0x80001002]:c.and a0, a1<br> [0x80001004]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                            |[0x8000101c]:c.and a0, a1<br> [0x8000101e]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0x0000000000000000|- rs2_val == 4398046511104<br>                                                                                                                            |[0x8000102e]:c.and a0, a1<br> [0x80001030]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x0000000000000000|- rs2_val == 35184372088832<br>                                                                                                                           |[0x80001040]:c.and a0, a1<br> [0x80001042]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                           |[0x80001052]:c.and a0, a1<br> [0x80001054]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                          |[0x8000106c]:c.and a0, a1<br> [0x8000106e]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0x0000000000000000|- rs2_val == 1125899906842624<br>                                                                                                                         |[0x8000107e]:c.and a0, a1<br> [0x80001080]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0x0000000000000000|- rs2_val == 2251799813685248<br>                                                                                                                         |[0x80001090]:c.and a0, a1<br> [0x80001092]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                        |[0x800010a6]:c.and a0, a1<br> [0x800010a8]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                        |[0x800010c0]:c.and a0, a1<br> [0x800010c2]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0x0000000000000000|- rs2_val == 144115188075855872<br>                                                                                                                       |[0x800010da]:c.and a0, a1<br> [0x800010dc]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                      |[0x800010f4]:c.and a0, a1<br> [0x800010f6]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0x0000000000000400|- rs2_val == -3<br>                                                                                                                                       |[0x80001102]:c.and a0, a1<br> [0x80001104]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0xFFFFFFFFFFFFFFF8|- rs2_val == -5<br>                                                                                                                                       |[0x80001110]:c.and a0, a1<br> [0x80001112]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0x0000020000000000|- rs2_val == -9<br>                                                                                                                                       |[0x80001122]:c.and a0, a1<br> [0x80001124]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0xFFFFFFBFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                     |[0x80001138]:c.and a0, a1<br> [0x8000113a]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0xFFFFFBFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                     |[0x8000114e]:c.and a0, a1<br> [0x80001150]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0x0008000000000000|- rs2_val == -1025<br>                                                                                                                                    |[0x80001160]:c.and a0, a1<br> [0x80001162]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0xFFFEFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                    |[0x8000117a]:c.and a0, a1<br> [0x8000117c]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0xC000000000000000|- rs2_val == -8193<br>                                                                                                                                    |[0x80001190]:c.and a0, a1<br> [0x80001192]:sd a0, 1312(ra)<br> |
| 166|[0x80004738]<br>0xFFFFFBFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                   |[0x800011aa]:c.and a0, a1<br> [0x800011ac]:sd a0, 1320(ra)<br> |
| 167|[0x80004740]<br>0xEFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                  |[0x800011c4]:c.and a0, a1<br> [0x800011c6]:sd a0, 1328(ra)<br> |
| 168|[0x80004748]<br>0x0000000000000004|- rs2_val == -262145<br>                                                                                                                                  |[0x800011d6]:c.and a0, a1<br> [0x800011d8]:sd a0, 1336(ra)<br> |
| 169|[0x80004750]<br>0x0000000000040000|- rs2_val == -524289<br>                                                                                                                                  |[0x800011e8]:c.and a0, a1<br> [0x800011ea]:sd a0, 1344(ra)<br> |
| 170|[0x80004758]<br>0xFFEFFFFFFFEFFFFF|- rs2_val == -1048577<br> - rs1_val == -4503599627370497<br>                                                                                              |[0x80001202]:c.and a0, a1<br> [0x80001204]:sd a0, 1352(ra)<br> |
| 171|[0x80004760]<br>0x0000000000040000|- rs2_val == -2097153<br>                                                                                                                                 |[0x80001214]:c.and a0, a1<br> [0x80001216]:sd a0, 1360(ra)<br> |
| 172|[0x80004768]<br>0xFFFFFEFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                |[0x8000122e]:c.and a0, a1<br> [0x80001230]:sd a0, 1368(ra)<br> |
| 173|[0x80004770]<br>0x0400000000000000|- rs2_val == -134217729<br>                                                                                                                               |[0x80001244]:c.and a0, a1<br> [0x80001246]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0x0000000040000000|- rs2_val == -536870913<br>                                                                                                                               |[0x80001256]:c.and a0, a1<br> [0x80001258]:sd a0, 1384(ra)<br> |
| 175|[0x80004780]<br>0xFFFFFFFEFFFFFBFF|- rs2_val == -4294967297<br>                                                                                                                              |[0x8000126c]:c.and a0, a1<br> [0x8000126e]:sd a0, 1392(ra)<br> |
| 176|[0x80004788]<br>0xFFFFFFFBEFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                             |[0x80001286]:c.and a0, a1<br> [0x80001288]:sd a0, 1400(ra)<br> |
| 177|[0x80004790]<br>0x0010000000000000|- rs2_val == -68719476737<br>                                                                                                                             |[0x800012a0]:c.and a0, a1<br> [0x800012a2]:sd a0, 1408(ra)<br> |
| 178|[0x80004798]<br>0x0000000800000000|- rs2_val == -137438953473<br>                                                                                                                            |[0x800012ba]:c.and a0, a1<br> [0x800012bc]:sd a0, 1416(ra)<br> |
| 179|[0x800047a0]<br>0x0000000000100000|- rs2_val == -274877906945<br>                                                                                                                            |[0x800012d0]:c.and a0, a1<br> [0x800012d2]:sd a0, 1424(ra)<br> |
| 180|[0x800047a8]<br>0xFFFFF7FFFFF7FFFF|- rs2_val == -8796093022209<br>                                                                                                                           |[0x800012ea]:c.and a0, a1<br> [0x800012ec]:sd a0, 1432(ra)<br> |
| 181|[0x800047b0]<br>0xFFFFEFFFFBFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                          |[0x80001304]:c.and a0, a1<br> [0x80001306]:sd a0, 1440(ra)<br> |
| 182|[0x800047b8]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                          |[0x80001322]:c.and a0, a1<br> [0x80001324]:sd a0, 1448(ra)<br> |
| 183|[0x800047c0]<br>0x0010000000000000|- rs2_val == -281474976710657<br>                                                                                                                         |[0x8000133c]:c.and a0, a1<br> [0x8000133e]:sd a0, 1456(ra)<br> |
| 184|[0x800047c8]<br>0x0000000000000020|- rs1_val == -9007199254740993<br>                                                                                                                        |[0x80001352]:c.and a0, a1<br> [0x80001354]:sd a0, 1464(ra)<br> |
| 185|[0x800047d0]<br>0xFFBFFEFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                       |[0x80001370]:c.and a0, a1<br> [0x80001372]:sd a0, 1472(ra)<br> |
| 186|[0x800047d8]<br>0x0000000000002000|- rs2_val == 8192<br>                                                                                                                                     |[0x80001386]:c.and a0, a1<br> [0x80001388]:sd a0, 1480(ra)<br> |
