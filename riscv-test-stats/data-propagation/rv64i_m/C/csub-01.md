
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800012d0')]      |
| SIG_REGION                | [('0x80004204', '0x80004790', '177 dwords')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 176      |
| STAT1                     | 175      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010a6]:c.sub a0, a1
      [0x800010a8]:sd a0, 1224(ra)
 -- Signature Address: 0x800046d8 Data: 0xFFFFFFFFFFF02000
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -8193
      - rs1_val == -1048577






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

|s.no|            signature             |                                                              coverpoints                                                              |                             code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004210]<br>0xFFFFFFFFFFFFEFF7|- opcode : c.sub<br> - rs1 : x10<br> - rs2 : x12<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 4096<br> - rs1_val == -9<br>      |[0x800003a0]:c.sub a0, a2<br> [0x800003a2]:sd a0, 0(ra)<br>    |
|   2|[0x80004218]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x11<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -8193<br> - rs1_val == -8193<br>                       |[0x800003ba]:c.sub a1, a1<br> [0x800003bc]:sd a1, 8(ra)<br>    |
|   3|[0x80004220]<br>0x8000800000000001|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -140737488355329<br> - rs1_val == -9223372036854775808<br> |[0x800003d4]:c.sub s1, a3<br> [0x800003d6]:sd s1, 16(ra)<br>   |
|   4|[0x80004228]<br>0x0800000000000001|- rs1 : x14<br> - rs2 : x10<br> - rs1_val == 0<br> - rs2_val == -576460752303423489<br>                                                |[0x800003ea]:c.sub a4, a0<br> [0x800003ec]:sd a4, 24(ra)<br>   |
|   5|[0x80004230]<br>0x8000000000000100|- rs1 : x15<br> - rs2 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -257<br> - rs1_val == 9223372036854775807<br>            |[0x80000400]:c.sub a5, a4<br> [0x80000402]:sd a5, 32(ra)<br>   |
|   6|[0x80004238]<br>0xFFFF000000000001|- rs1 : x12<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == 281474976710656<br>                                                     |[0x80000412]:c.sub a2, s1<br> [0x80000414]:sd a2, 40(ra)<br>   |
|   7|[0x80004240]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x15<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                  |[0x80000424]:c.sub a3, a5<br> [0x80000426]:sd a3, 48(ra)<br>   |
|   8|[0x80004248]<br>0xF7FFFFFFFFFFFFFF|- rs1 : x8<br> - rs2_val == 0<br> - rs1_val == -576460752303423489<br>                                                                 |[0x8000043a]:c.sub s0, a1<br> [0x8000043c]:sd fp, 56(ra)<br>   |
|   9|[0x80004250]<br>0x9000000000000001|- rs2 : x8<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 1152921504606846976<br>              |[0x80000454]:c.sub a1, s0<br> [0x80000456]:sd a1, 64(ra)<br>   |
|  10|[0x80004258]<br>0x00000000FFFFFFFF|- rs2_val == 1<br> - rs1_val == 4294967296<br>                                                                                         |[0x80000466]:c.sub a0, a1<br> [0x80000468]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0x0000000400000003|- rs2_val == -17179869185<br> - rs1_val == 2<br>                                                                                       |[0x8000047c]:c.sub a0, a1<br> [0x8000047e]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0xC000000000000004|- rs2_val == 4611686018427387904<br> - rs1_val == 4<br>                                                                                |[0x8000048e]:c.sub a0, a1<br> [0x80000490]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0x0008000000000009|- rs2_val == -2251799813685249<br> - rs1_val == 8<br>                                                                                  |[0x800004a4]:c.sub a0, a1<br> [0x800004a6]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0xFFFFFFFFFC000010|- rs2_val == 67108864<br> - rs1_val == 16<br>                                                                                          |[0x800004b2]:c.sub a0, a1<br> [0x800004b4]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0xFFFFFFFFFFFF0020|- rs2_val == 65536<br> - rs1_val == 32<br>                                                                                             |[0x800004c0]:c.sub a0, a1<br> [0x800004c2]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0xFFFE000000000040|- rs2_val == 562949953421312<br> - rs1_val == 64<br>                                                                                   |[0x800004d2]:c.sub a0, a1<br> [0x800004d4]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0xFFFFFFFFFFFFE080|- rs2_val == 8192<br> - rs1_val == 128<br>                                                                                             |[0x800004e0]:c.sub a0, a1<br> [0x800004e2]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000080000101|- rs2_val == -2147483649<br> - rs1_val == 256<br>                                                                                      |[0x800004f6]:c.sub a0, a1<br> [0x800004f8]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000080000000201|- rs2_val == -8796093022209<br> - rs1_val == 512<br>                                                                                   |[0x8000050c]:c.sub a0, a1<br> [0x8000050e]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0xFFFFFFFFFFFFE400|- rs1_val == 1024<br>                                                                                                                  |[0x8000051a]:c.sub a0, a1<br> [0x8000051c]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0000000000000809|- rs2_val == -9<br> - rs1_val == 2048<br>                                                                                              |[0x8000052c]:c.sub a0, a1<br> [0x8000052e]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0000000000000FF9|- rs1_val == 4096<br>                                                                                                                  |[0x8000053a]:c.sub a0, a1<br> [0x8000053c]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0x0000000000002021|- rs2_val == -33<br> - rs1_val == 8192<br>                                                                                             |[0x80000548]:c.sub a0, a1<br> [0x8000054a]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0x0000000010004001|- rs2_val == -268435457<br> - rs1_val == 16384<br>                                                                                     |[0x8000055a]:c.sub a0, a1<br> [0x8000055c]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x0000100000008001|- rs2_val == -17592186044417<br> - rs1_val == 32768<br>                                                                                |[0x80000570]:c.sub a0, a1<br> [0x80000572]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0xFFFFFFFFFFE10000|- rs2_val == 2097152<br> - rs1_val == 65536<br>                                                                                        |[0x8000057e]:c.sub a0, a1<br> [0x80000580]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x0000010000020001|- rs2_val == -1099511627777<br> - rs1_val == 131072<br>                                                                                |[0x80000594]:c.sub a0, a1<br> [0x80000596]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0xFFFFFFFFFFC40000|- rs2_val == 4194304<br> - rs1_val == 262144<br>                                                                                       |[0x800005a2]:c.sub a0, a1<br> [0x800005a4]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0xFFFFFFFFF8080000|- rs2_val == 134217728<br> - rs1_val == 524288<br>                                                                                     |[0x800005b0]:c.sub a0, a1<br> [0x800005b2]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0xFFC0000000100000|- rs2_val == 18014398509481984<br> - rs1_val == 1048576<br>                                                                            |[0x800005c2]:c.sub a0, a1<br> [0x800005c4]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x00000000001FFFE0|- rs2_val == 32<br> - rs1_val == 2097152<br>                                                                                           |[0x800005d0]:c.sub a0, a1<br> [0x800005d2]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x00000000003F8000|- rs2_val == 32768<br> - rs1_val == 4194304<br>                                                                                        |[0x800005de]:c.sub a0, a1<br> [0x800005e0]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0x0800000000800001|- rs1_val == 8388608<br>                                                                                                               |[0x800005f4]:c.sub a0, a1<br> [0x800005f6]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0xFFFFFFFFF9000000|- rs1_val == 16777216<br>                                                                                                              |[0x80000602]:c.sub a0, a1<br> [0x80000604]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0xFFFFF00002000000|- rs2_val == 17592186044416<br> - rs1_val == 33554432<br>                                                                              |[0x80000614]:c.sub a0, a1<br> [0x80000616]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000204000001|- rs2_val == -8589934593<br> - rs1_val == 67108864<br>                                                                                 |[0x8000062a]:c.sub a0, a1<br> [0x8000062c]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0000000008000003|- rs2_val == -3<br> - rs1_val == 134217728<br>                                                                                         |[0x80000638]:c.sub a0, a1<br> [0x8000063a]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0xC000000010000000|- rs1_val == 268435456<br>                                                                                                             |[0x8000064a]:c.sub a0, a1<br> [0x8000064c]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0x0008000020000001|- rs1_val == 536870912<br>                                                                                                             |[0x80000660]:c.sub a0, a1<br> [0x80000662]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0x000000003FF00000|- rs2_val == 1048576<br> - rs1_val == 1073741824<br>                                                                                   |[0x8000066e]:c.sub a0, a1<br> [0x80000670]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0020000080000001|- rs2_val == -9007199254740993<br> - rs1_val == 2147483648<br>                                                                         |[0x80000688]:c.sub a0, a1<br> [0x8000068a]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0x00000001FFFFF800|- rs2_val == 2048<br> - rs1_val == 8589934592<br>                                                                                      |[0x8000069e]:c.sub a0, a1<br> [0x800006a0]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x0040000400000001|- rs2_val == -18014398509481985<br> - rs1_val == 17179869184<br>                                                                       |[0x800006b8]:c.sub a0, a1<br> [0x800006ba]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x00000007FF000000|- rs2_val == 16777216<br> - rs1_val == 34359738368<br>                                                                                 |[0x800006ca]:c.sub a0, a1<br> [0x800006cc]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0x0000000FFF800000|- rs2_val == 8388608<br> - rs1_val == 68719476736<br>                                                                                  |[0x800006dc]:c.sub a0, a1<br> [0x800006de]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0xFFE0002000000000|- rs2_val == 9007199254740992<br> - rs1_val == 137438953472<br>                                                                        |[0x800006f2]:c.sub a0, a1<br> [0x800006f4]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0000003FFFFFFFFE|- rs2_val == 2<br> - rs1_val == 274877906944<br>                                                                                       |[0x80000704]:c.sub a0, a1<br> [0x80000706]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000008100000001|- rs2_val == -4294967297<br> - rs1_val == 549755813888<br>                                                                             |[0x8000071e]:c.sub a0, a1<br> [0x80000720]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0x0080010000000001|- rs2_val == -36028797018963969<br> - rs1_val == 1099511627776<br>                                                                     |[0x80000738]:c.sub a0, a1<br> [0x8000073a]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0x0000020008000001|- rs2_val == -134217729<br> - rs1_val == 2199023255552<br>                                                                             |[0x8000074e]:c.sub a0, a1<br> [0x80000750]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0x000003FFFFF80000|- rs2_val == 524288<br> - rs1_val == 4398046511104<br>                                                                                 |[0x80000760]:c.sub a0, a1<br> [0x80000762]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0x000007FFFFFFFF00|- rs2_val == 256<br> - rs1_val == 8796093022208<br>                                                                                    |[0x80000772]:c.sub a0, a1<br> [0x80000774]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0xFFFFD00000000000|- rs2_val == 70368744177664<br> - rs1_val == 17592186044416<br>                                                                        |[0x80000788]:c.sub a0, a1<br> [0x8000078a]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0x00001FF000000000|- rs2_val == 68719476736<br> - rs1_val == 35184372088832<br>                                                                           |[0x8000079e]:c.sub a0, a1<br> [0x800007a0]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x4000400000000001|- rs2_val == -4611686018427387905<br> - rs1_val == 70368744177664<br>                                                                  |[0x800007b8]:c.sub a0, a1<br> [0x800007ba]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0x0800800000000001|- rs1_val == 140737488355328<br>                                                                                                       |[0x800007d2]:c.sub a0, a1<br> [0x800007d4]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0001000000000008|- rs1_val == 281474976710656<br>                                                                                                       |[0x800007e4]:c.sub a0, a1<br> [0x800007e6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0x0001FFFFE0000000|- rs2_val == 536870912<br> - rs1_val == 562949953421312<br>                                                                            |[0x800007f6]:c.sub a0, a1<br> [0x800007f8]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0x0004800000000001|- rs1_val == 1125899906842624<br>                                                                                                      |[0x80000810]:c.sub a0, a1<br> [0x80000812]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0x0007F80000000000|- rs2_val == 8796093022208<br> - rs1_val == 2251799813685248<br>                                                                       |[0x80000826]:c.sub a0, a1<br> [0x80000828]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0010004000000001|- rs2_val == -274877906945<br> - rs1_val == 4503599627370496<br>                                                                       |[0x80000840]:c.sub a0, a1<br> [0x80000842]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0x2020000000000001|- rs2_val == -2305843009213693953<br> - rs1_val == 9007199254740992<br>                                                                |[0x8000085a]:c.sub a0, a1<br> [0x8000085c]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0x003FF00000000000|- rs1_val == 18014398509481984<br>                                                                                                     |[0x80000870]:c.sub a0, a1<br> [0x80000872]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0x007FFFFE00000000|- rs2_val == 8589934592<br> - rs1_val == 36028797018963968<br>                                                                         |[0x80000886]:c.sub a0, a1<br> [0x80000888]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0x00FFC00000000000|- rs1_val == 72057594037927936<br>                                                                                                     |[0x8000089c]:c.sub a0, a1<br> [0x8000089e]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0x0200000001000001|- rs2_val == -16777217<br> - rs1_val == 144115188075855872<br>                                                                         |[0x800008b2]:c.sub a0, a1<br> [0x800008b4]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x0400000040000001|- rs2_val == -1073741825<br> - rs1_val == 288230376151711744<br>                                                                       |[0x800008c8]:c.sub a0, a1<br> [0x800008ca]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0x07FFFFFFFFFFFFFC|- rs2_val == 4<br> - rs1_val == 576460752303423488<br>                                                                                 |[0x800008da]:c.sub a0, a1<br> [0x800008dc]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x2001000000000001|- rs2_val == -281474976710657<br> - rs1_val == 2305843009213693952<br>                                                                 |[0x800008f4]:c.sub a0, a1<br> [0x800008f6]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0x4000004000000001|- rs1_val == 4611686018427387904<br>                                                                                                   |[0x8000090e]:c.sub a0, a1<br> [0x80000910]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0x0001FFFFFFFFFFFF|- rs2_val == -562949953421313<br> - rs1_val == -2<br>                                                                                  |[0x80000924]:c.sub a0, a1<br> [0x80000926]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFFEFFFFFFD|- rs2_val == 268435456<br> - rs1_val == -3<br>                                                                                         |[0x80000932]:c.sub a0, a1<br> [0x80000934]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFF4|- rs1_val == -5<br>                                                                                                                    |[0x80000940]:c.sub a0, a1<br> [0x80000942]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xDFFFFFFFFFFFFFEF|- rs2_val == 2305843009213693952<br> - rs1_val == -17<br>                                                                              |[0x80000952]:c.sub a0, a1<br> [0x80000954]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0x3FFFFFFFFFFFFFDF|- rs1_val == -33<br>                                                                                                                   |[0x80000964]:c.sub a0, a1<br> [0x80000966]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0x0100000000200001|- rs2_val == -72057594037927937<br>                                                                                                    |[0x8000097a]:c.sub a0, a1<br> [0x8000097c]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0x01F8000000000000|- rs2_val == -144115188075855873<br> - rs1_val == -2251799813685249<br>                                                                |[0x80000998]:c.sub a0, a1<br> [0x8000099a]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0x0400000002000001|- rs2_val == -288230376151711745<br>                                                                                                   |[0x800009ae]:c.sub a0, a1<br> [0x800009b0]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0x0FFFFFF800000000|- rs2_val == -1152921504606846977<br> - rs1_val == -34359738369<br>                                                                    |[0x800009cc]:c.sub a0, a1<br> [0x800009ce]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br> - rs1_val == -6148914691236517206<br>                                                             |[0x80000a12]:c.sub a0, a1<br> [0x80000a14]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0x5555535555555555|- rs2_val == -6148914691236517206<br> - rs1_val == -2199023255553<br>                                                                  |[0x80000a44]:c.sub a0, a1<br> [0x80000a46]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFFFFFFFBFFFFFFBF|- rs2_val == 17179869184<br> - rs1_val == -65<br>                                                                                      |[0x80000a56]:c.sub a0, a1<br> [0x80000a58]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0x000000000007FF80|- rs2_val == -524289<br> - rs1_val == -129<br>                                                                                         |[0x80000a68]:c.sub a0, a1<br> [0x80000a6a]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0xFFFF7FFFFFFFFEFF|- rs2_val == 140737488355328<br> - rs1_val == -257<br>                                                                                 |[0x80000a7a]:c.sub a0, a1<br> [0x80000a7c]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0x000FFFFFFFFFFE00|- rs2_val == -4503599627370497<br> - rs1_val == -513<br>                                                                               |[0x80000a90]:c.sub a0, a1<br> [0x80000a92]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0xFFBFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                 |[0x80000aa2]:c.sub a0, a1<br> [0x80000aa4]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0xFFFFFFFFFFFF77FF|- rs1_val == -2049<br>                                                                                                                 |[0x80000ab4]:c.sub a0, a1<br> [0x80000ab6]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0x00001FFFFFFFF000|- rs2_val == -35184372088833<br> - rs1_val == -4097<br>                                                                                |[0x80000ace]:c.sub a0, a1<br> [0x80000ad0]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0xFFFFFFFFFFFFC100|- rs1_val == -16385<br>                                                                                                                |[0x80000ae0]:c.sub a0, a1<br> [0x80000ae2]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFEFFFFFFFFFF7FFF|- rs2_val == 72057594037927936<br> - rs1_val == -32769<br>                                                                             |[0x80000af6]:c.sub a0, a1<br> [0x80000af8]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0x00FFFFFFFFFF0000|- rs1_val == -65537<br>                                                                                                                |[0x80000b10]:c.sub a0, a1<br> [0x80000b12]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0x0000000000060000|- rs1_val == -131073<br>                                                                                                               |[0x80000b26]:c.sub a0, a1<br> [0x80000b28]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFFFFFFFC0004|- rs2_val == -5<br> - rs1_val == -262145<br>                                                                                           |[0x80000b38]:c.sub a0, a1<br> [0x80000b3a]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xAAAAAAAAAAA2AAAA|- rs1_val == -524289<br>                                                                                                               |[0x80000b66]:c.sub a0, a1<br> [0x80000b68]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFFFFFFFFF20000|- rs2_val == -131073<br> - rs1_val == -1048577<br>                                                                                     |[0x80000b7c]:c.sub a0, a1<br> [0x80000b7e]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFBFFFDFFFFF|- rs2_val == 274877906944<br> - rs1_val == -2097153<br>                                                                                |[0x80000b92]:c.sub a0, a1<br> [0x80000b94]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFFC00001|- rs2_val == -2<br> - rs1_val == -4194305<br>                                                                                          |[0x80000ba4]:c.sub a0, a1<br> [0x80000ba6]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0xFFFFFFF7FF7FFFFF|- rs2_val == 34359738368<br> - rs1_val == -8388609<br>                                                                                 |[0x80000bba]:c.sub a0, a1<br> [0x80000bbc]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0xFF7FFFFFFEFFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -16777217<br>                                                                          |[0x80000bd0]:c.sub a0, a1<br> [0x80000bd2]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0xFFFFFFFFFDFFFDFF|- rs2_val == 512<br> - rs1_val == -33554433<br>                                                                                        |[0x80000be2]:c.sub a0, a1<br> [0x80000be4]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                             |[0x80000bf4]:c.sub a0, a1<br> [0x80000bf6]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0x0000000018000000|- rs2_val == -536870913<br> - rs1_val == -134217729<br>                                                                                |[0x80000c0a]:c.sub a0, a1<br> [0x80000c0c]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0xAAAAAAAA9AAAAAAA|- rs1_val == -268435457<br>                                                                                                            |[0x80000c38]:c.sub a0, a1<br> [0x80000c3a]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0xFFFDFFFFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                            |[0x80000c4e]:c.sub a0, a1<br> [0x80000c50]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFFBFFF7FFF|- rs1_val == -1073741825<br>                                                                                                           |[0x80000c60]:c.sub a0, a1<br> [0x80000c62]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFF77FFFFFFF|- rs1_val == -2147483649<br>                                                                                                           |[0x80000c7a]:c.sub a0, a1<br> [0x80000c7c]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0x0000003F00000000|- rs1_val == -4294967297<br>                                                                                                           |[0x80000c98]:c.sub a0, a1<br> [0x80000c9a]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFFFFFFE08000000|- rs1_val == -8589934593<br>                                                                                                           |[0x80000cb2]:c.sub a0, a1<br> [0x80000cb4]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0xFFFFFFFC02000000|- rs2_val == -33554433<br> - rs1_val == -17179869185<br>                                                                               |[0x80000ccc]:c.sub a0, a1<br> [0x80000cce]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0xFFFFFFEFFFFDFFFF|- rs2_val == 131072<br> - rs1_val == -68719476737<br>                                                                                  |[0x80000ce2]:c.sub a0, a1<br> [0x80000ce4]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0xFFFFFFE000000040|- rs2_val == -65<br> - rs1_val == -137438953473<br>                                                                                    |[0x80000cf8]:c.sub a0, a1<br> [0x80000cfa]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0x00003FC000000000|- rs2_val == -70368744177665<br> - rs1_val == -274877906945<br>                                                                        |[0x80000d16]:c.sub a0, a1<br> [0x80000d18]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0xFFFFFF7FFFFEFFFF|- rs1_val == -549755813889<br>                                                                                                         |[0x80000d2c]:c.sub a0, a1<br> [0x80000d2e]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0xFFFFFF4000000000|- rs1_val == -1099511627777<br>                                                                                                        |[0x80000d4a]:c.sub a0, a1<br> [0x80000d4c]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFC0000000001|- rs1_val == -4398046511105<br>                                                                                                        |[0x80000d60]:c.sub a0, a1<br> [0x80000d62]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0x0000180000000000|- rs1_val == -8796093022209<br>                                                                                                        |[0x80000d7e]:c.sub a0, a1<br> [0x80000d80]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0xFFFFEFFFFFFFBFFF|- rs2_val == 16384<br> - rs1_val == -17592186044417<br>                                                                                |[0x80000d94]:c.sub a0, a1<br> [0x80000d96]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0xFF7FFFFFFFFFFFF6|- rs1_val == -36028797018963969<br>                                                                                                    |[0x80000daa]:c.sub a0, a1<br> [0x80000dac]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0xFEFFFFFFFFFFFFFD|- rs1_val == -72057594037927937<br>                                                                                                    |[0x80000dc0]:c.sub a0, a1<br> [0x80000dc2]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFDFFFFFFFFFBFFFF|- rs2_val == 262144<br> - rs1_val == -144115188075855873<br>                                                                           |[0x80000dd6]:c.sub a0, a1<br> [0x80000dd8]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFBFFFFF7FFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                   |[0x80000df0]:c.sub a0, a1<br> [0x80000df2]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0xF000000000200000|- rs2_val == -2097153<br> - rs1_val == -1152921504606846977<br>                                                                        |[0x80000e0a]:c.sub a0, a1<br> [0x80000e0c]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0xE000000000000009|- rs1_val == -2305843009213693953<br>                                                                                                  |[0x80000e20]:c.sub a0, a1<br> [0x80000e22]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0xBFFEFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                  |[0x80000e3a]:c.sub a0, a1<br> [0x80000e3c]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0x5555555355555555|- rs1_val == 6148914691236517205<br>                                                                                                   |[0x80000e68]:c.sub a0, a1<br> [0x80000e6a]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0x555555555555554D|- rs2_val == 8<br>                                                                                                                     |[0x80000e92]:c.sub a0, a1<br> [0x80000e94]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0x00000000FFFFFFF0|- rs2_val == 16<br>                                                                                                                    |[0x80000ea4]:c.sub a0, a1<br> [0x80000ea6]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFFFFFFFFFFFFFFE0|- rs2_val == 64<br>                                                                                                                    |[0x80000eb2]:c.sub a0, a1<br> [0x80000eb4]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0x000007FFFFFFFF80|- rs2_val == 128<br>                                                                                                                   |[0x80000ec4]:c.sub a0, a1<br> [0x80000ec6]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0x0FFFFFFFFFFFFC00|- rs2_val == 1024<br>                                                                                                                  |[0x80000ed6]:c.sub a0, a1<br> [0x80000ed8]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0xFFFFFFFFFDFFFFFD|- rs2_val == 33554432<br>                                                                                                              |[0x80000ee4]:c.sub a0, a1<br> [0x80000ee6]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0x00000000C0000000|- rs2_val == 1073741824<br>                                                                                                            |[0x80000ef6]:c.sub a0, a1<br> [0x80000ef8]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0xFFFFFFFF80000006|- rs2_val == 2147483648<br>                                                                                                            |[0x80000f08]:c.sub a0, a1<br> [0x80000f0a]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0xFFFFFFFF00100000|- rs2_val == 4294967296<br>                                                                                                            |[0x80000f1a]:c.sub a0, a1<br> [0x80000f1c]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0xFFFFFFDFFFFDFFFF|- rs2_val == 137438953472<br>                                                                                                          |[0x80000f30]:c.sub a0, a1<br> [0x80000f32]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0xFFFFFF8000000100|- rs2_val == 549755813888<br>                                                                                                          |[0x80000f42]:c.sub a0, a1<br> [0x80000f44]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0xFFFFFF0400000000|- rs2_val == 1099511627776<br>                                                                                                         |[0x80000f58]:c.sub a0, a1<br> [0x80000f5a]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0x07FFFE0000000000|- rs2_val == 2199023255552<br>                                                                                                         |[0x80000f6e]:c.sub a0, a1<br> [0x80000f70]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0xFFFFFBFFFFFFFFEF|- rs2_val == 4398046511104<br>                                                                                                         |[0x80000f80]:c.sub a0, a1<br> [0x80000f82]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xFFFFDEFFFFFFFFFF|- rs2_val == 35184372088832<br>                                                                                                        |[0x80000f9a]:c.sub a0, a1<br> [0x80000f9c]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0xFFFBFFFFFFFFFFF6|- rs2_val == 1125899906842624<br>                                                                                                      |[0x80000fac]:c.sub a0, a1<br> [0x80000fae]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFF8000000020000|- rs2_val == 2251799813685248<br>                                                                                                      |[0x80000fbe]:c.sub a0, a1<br> [0x80000fc0]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0xFFF0000000800000|- rs2_val == 4503599627370496<br>                                                                                                      |[0x80000fd0]:c.sub a0, a1<br> [0x80000fd2]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0xFD7FFFFFFFFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                    |[0x80000fea]:c.sub a0, a1<br> [0x80000fec]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0xFBFFFFFFFFFFFFF7|- rs2_val == 288230376151711744<br>                                                                                                    |[0x80000ffc]:c.sub a0, a1<br> [0x80000ffe]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xF800008000000000|- rs2_val == 576460752303423488<br>                                                                                                    |[0x80001012]:c.sub a0, a1<br> [0x80001014]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xF000000000008000|- rs2_val == 1152921504606846976<br>                                                                                                   |[0x80001024]:c.sub a0, a1<br> [0x80001026]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0x0000000000000017|- rs2_val == -17<br>                                                                                                                   |[0x80001032]:c.sub a0, a1<br> [0x80001034]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x0000000000002081|- rs2_val == -129<br>                                                                                                                  |[0x80001040]:c.sub a0, a1<br> [0x80001042]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0x0000000000000208|- rs2_val == -513<br>                                                                                                                  |[0x8000104e]:c.sub a0, a1<br> [0x80001050]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0x0800000000000401|- rs2_val == -1025<br>                                                                                                                 |[0x80001060]:c.sub a0, a1<br> [0x80001062]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0xFF80000000000800|- rs2_val == -2049<br>                                                                                                                 |[0x8000107a]:c.sub a0, a1<br> [0x8000107c]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0x0000000000000800|- rs2_val == -4097<br>                                                                                                                 |[0x80001090]:c.sub a0, a1<br> [0x80001092]:sd a0, 1216(ra)<br> |
| 154|[0x800046e0]<br>0x1000000000004001|- rs2_val == -16385<br>                                                                                                                |[0x800010bc]:c.sub a0, a1<br> [0x800010be]:sd a0, 1232(ra)<br> |
| 155|[0x800046e8]<br>0xFFFF800000008000|- rs2_val == -32769<br> - rs1_val == -140737488355329<br>                                                                              |[0x800010d6]:c.sub a0, a1<br> [0x800010d8]:sd a0, 1240(ra)<br> |
| 156|[0x800046f0]<br>0x0000400000010001|- rs2_val == -65537<br>                                                                                                                |[0x800010ec]:c.sub a0, a1<br> [0x800010ee]:sd a0, 1248(ra)<br> |
| 157|[0x800046f8]<br>0xFFFFFFF000040000|- rs2_val == -262145<br>                                                                                                               |[0x80001106]:c.sub a0, a1<br> [0x80001108]:sd a0, 1256(ra)<br> |
| 158|[0x80004700]<br>0xE000000000100000|- rs2_val == -1048577<br>                                                                                                              |[0x80001120]:c.sub a0, a1<br> [0x80001122]:sd a0, 1264(ra)<br> |
| 159|[0x80004708]<br>0xFFFFE00000400000|- rs2_val == -4194305<br> - rs1_val == -35184372088833<br>                                                                             |[0x8000113a]:c.sub a0, a1<br> [0x8000113c]:sd a0, 1272(ra)<br> |
| 160|[0x80004710]<br>0x00000000007FFFFD|- rs2_val == -8388609<br>                                                                                                              |[0x8000114c]:c.sub a0, a1<br> [0x8000114e]:sd a0, 1280(ra)<br> |
| 161|[0x80004718]<br>0x0001000004000001|- rs2_val == -67108865<br>                                                                                                             |[0x80001162]:c.sub a0, a1<br> [0x80001164]:sd a0, 1288(ra)<br> |
| 162|[0x80004720]<br>0x0000001000000008|- rs2_val == -68719476737<br>                                                                                                          |[0x80001178]:c.sub a0, a1<br> [0x8000117a]:sd a0, 1296(ra)<br> |
| 163|[0x80004728]<br>0x0000002004000001|- rs2_val == -137438953473<br>                                                                                                         |[0x8000118e]:c.sub a0, a1<br> [0x80001190]:sd a0, 1304(ra)<br> |
| 164|[0x80004730]<br>0xFFFFF88000000000|- rs2_val == -549755813889<br>                                                                                                         |[0x800011ac]:c.sub a0, a1<br> [0x800011ae]:sd a0, 1312(ra)<br> |
| 165|[0x80004738]<br>0x0000220000000001|- rs2_val == -2199023255553<br>                                                                                                        |[0x800011c6]:c.sub a0, a1<br> [0x800011c8]:sd a0, 1320(ra)<br> |
| 166|[0x80004740]<br>0x000003F800000000|- rs2_val == -4398046511105<br>                                                                                                        |[0x800011e4]:c.sub a0, a1<br> [0x800011e6]:sd a0, 1328(ra)<br> |
| 167|[0x80004748]<br>0xFFFFC00000000006|- rs1_val == -70368744177665<br>                                                                                                       |[0x800011fa]:c.sub a0, a1<br> [0x800011fc]:sd a0, 1336(ra)<br> |
| 168|[0x80004750]<br>0xFFFF000000000002|- rs1_val == -281474976710657<br>                                                                                                      |[0x80001210]:c.sub a0, a1<br> [0x80001212]:sd a0, 1344(ra)<br> |
| 169|[0x80004758]<br>0xFFFE000002000000|- rs1_val == -562949953421313<br>                                                                                                      |[0x8000122a]:c.sub a0, a1<br> [0x8000122c]:sd a0, 1352(ra)<br> |
| 170|[0x80004760]<br>0xFFFBFFDFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                     |[0x80001244]:c.sub a0, a1<br> [0x80001246]:sd a0, 1360(ra)<br> |
| 171|[0x80004768]<br>0x0004000000080001|- rs2_val == -1125899906842625<br>                                                                                                     |[0x8000125a]:c.sub a0, a1<br> [0x8000125c]:sd a0, 1368(ra)<br> |
| 172|[0x80004770]<br>0xFFF0000008000000|- rs1_val == -4503599627370497<br>                                                                                                     |[0x80001274]:c.sub a0, a1<br> [0x80001276]:sd a0, 1376(ra)<br> |
| 173|[0x80004778]<br>0xFFDFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                     |[0x8000128a]:c.sub a0, a1<br> [0x8000128c]:sd a0, 1384(ra)<br> |
| 174|[0x80004780]<br>0xFFBFFFFEFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                    |[0x800012a4]:c.sub a0, a1<br> [0x800012a6]:sd a0, 1392(ra)<br> |
| 175|[0x80004788]<br>0x00000007FFFFE000|- rs2_val == -34359738369<br>                                                                                                          |[0x800012be]:c.sub a0, a1<br> [0x800012c0]:sd a0, 1400(ra)<br> |
