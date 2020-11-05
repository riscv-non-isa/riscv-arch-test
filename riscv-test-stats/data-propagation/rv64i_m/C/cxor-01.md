
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800013d0')]      |
| SIG_REGION                | [('0x80004204', '0x80004808', '192 dwords')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 191      |
| STAT1                     | 190      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013c0]:c.xor a0, a1
      [0x800013c2]:sd a0, 1520(ra)
 -- Signature Address: 0x80004800 Data: 0xFFFFFFFFFFFFFFE9
 -- Redundant Coverpoints hit by the op
      - opcode : c.xor
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs1_val == 16






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

|s.no|            signature             |                                                                         coverpoints                                                                          |                             code                              |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004210]<br>0xF7FBFFFFFFFFFFFF|- opcode : c.xor<br> - rs1 : x9<br> - rs2 : x12<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 1125899906842624<br> - rs1_val == -576460752303423489<br> |[0x800003ac]:c.xor s1, a2<br> [0x800003ae]:sd s1, 0(ra)<br>    |
|   2|[0x80004218]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x14<br> - rs1 == rs2<br> - rs2_val == 16<br> - rs1_val == 16<br>                                                                      |[0x800003ba]:c.xor a4, a4<br> [0x800003bc]:sd a4, 8(ra)<br>    |
|   3|[0x80004220]<br>0x7FFBFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs2_val == -1125899906842625<br> - rs1_val == -9223372036854775808<br>     |[0x800003d4]:c.xor s0, a1<br> [0x800003d6]:sd fp, 16(ra)<br>   |
|   4|[0x80004228]<br>0xFFFFFFFFFFFFFFF9|- rs1 : x15<br> - rs2 : x10<br> - rs1_val == 0<br>                                                                                                            |[0x800003e2]:c.xor a5, a0<br> [0x800003e4]:sd a5, 24(ra)<br>   |
|   5|[0x80004230]<br>0x8000000000000000|- rs1 : x12<br> - rs2 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                         |[0x800003f8]:c.xor a2, a3<br> [0x800003fa]:sd a2, 32(ra)<br>   |
|   6|[0x80004238]<br>0xFFFFFFFFFFFFFBFE|- rs1 : x11<br> - rs2 : x8<br> - rs1_val == 1<br> - rs2_val == -1025<br>                                                                                      |[0x80000406]:c.xor a1, s0<br> [0x80000408]:sd a1, 40(ra)<br>   |
|   7|[0x80004240]<br>0x7BFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x9<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -288230376151711745<br>                     |[0x80000420]:c.xor a3, s1<br> [0x80000422]:sd a3, 48(ra)<br>   |
|   8|[0x80004248]<br>0x0000000000000040|- rs1 : x10<br> - rs2 : x15<br> - rs2_val == 0<br> - rs1_val == 64<br>                                                                                        |[0x8000042e]:c.xor a0, a5<br> [0x80000430]:sd a0, 56(ra)<br>   |
|   9|[0x80004250]<br>0x8400000000000000|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                                                         |[0x8000044c]:c.xor a0, a1<br> [0x8000044e]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0x0002000000000001|- rs2_val == 1<br> - rs1_val == 562949953421312<br>                                                                                                           |[0x8000045e]:c.xor a0, a1<br> [0x80000460]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0xFFEFFFFFFFFFFFFD|- rs2_val == -4503599627370497<br> - rs1_val == 2<br>                                                                                                         |[0x80000474]:c.xor a0, a1<br> [0x80000476]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0xFF7FFFFFFFFFFFFB|- rs2_val == -36028797018963969<br> - rs1_val == 4<br>                                                                                                        |[0x8000048a]:c.xor a0, a1<br> [0x8000048c]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0x0002000000000008|- rs2_val == 562949953421312<br> - rs1_val == 8<br>                                                                                                           |[0x8000049c]:c.xor a0, a1<br> [0x8000049e]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000000000000420|- rs2_val == 1024<br> - rs1_val == 32<br>                                                                                                                     |[0x800004aa]:c.xor a0, a1<br> [0x800004ac]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000000010000080|- rs2_val == 268435456<br> - rs1_val == 128<br>                                                                                                               |[0x800004b8]:c.xor a0, a1<br> [0x800004ba]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0xFFFFFFF7FFFFFEFF|- rs2_val == -34359738369<br> - rs1_val == 256<br>                                                                                                            |[0x800004ce]:c.xor a0, a1<br> [0x800004d0]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0x0000000000000000|- rs2_val == 512<br> - rs1_val == 512<br>                                                                                                                     |[0x800004dc]:c.xor a0, a1<br> [0x800004de]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0xFFFFFEFFFFFFFBFF|- rs2_val == -1099511627777<br> - rs1_val == 1024<br>                                                                                                         |[0x800004f2]:c.xor a0, a1<br> [0x800004f4]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0100000000000800|- rs2_val == 72057594037927936<br> - rs1_val == 2048<br>                                                                                                      |[0x80000508]:c.xor a0, a1<br> [0x8000050a]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0xFFFFFFFFFFFFEFFD|- rs2_val == -3<br> - rs1_val == 4096<br>                                                                                                                     |[0x80000516]:c.xor a0, a1<br> [0x80000518]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0xFFFFFFFFBFFFDFFF|- rs2_val == -1073741825<br> - rs1_val == 8192<br>                                                                                                            |[0x80000528]:c.xor a0, a1<br> [0x8000052a]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0000000000104000|- rs2_val == 1048576<br> - rs1_val == 16384<br>                                                                                                               |[0x80000536]:c.xor a0, a1<br> [0x80000538]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0xFFFFFFFFFFFF7FFC|- rs1_val == 32768<br>                                                                                                                                        |[0x80000544]:c.xor a0, a1<br> [0x80000546]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0xFFFFFFDFFFFEFFFF|- rs2_val == -137438953473<br> - rs1_val == 65536<br>                                                                                                         |[0x8000055a]:c.xor a0, a1<br> [0x8000055c]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x0000000000020400|- rs1_val == 131072<br>                                                                                                                                       |[0x80000568]:c.xor a0, a1<br> [0x8000056a]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0x0000000040040000|- rs2_val == 1073741824<br> - rs1_val == 262144<br>                                                                                                           |[0x80000576]:c.xor a0, a1<br> [0x80000578]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x0100000000080000|- rs1_val == 524288<br>                                                                                                                                       |[0x80000588]:c.xor a0, a1<br> [0x8000058a]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0xFFFFFFFDFFEFFFFF|- rs2_val == -8589934593<br> - rs1_val == 1048576<br>                                                                                                         |[0x8000059e]:c.xor a0, a1<br> [0x800005a0]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0xFFFFFFF7FFDFFFFF|- rs1_val == 2097152<br>                                                                                                                                      |[0x800005b4]:c.xor a0, a1<br> [0x800005b6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0xFFFFFFFFFFBFFFFA|- rs1_val == 4194304<br>                                                                                                                                      |[0x800005c2]:c.xor a0, a1<br> [0x800005c4]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x0000080000800000|- rs2_val == 8796093022208<br> - rs1_val == 8388608<br>                                                                                                       |[0x800005d4]:c.xor a0, a1<br> [0x800005d6]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0xFFFFFFFFBEFFFFFF|- rs1_val == 16777216<br>                                                                                                                                     |[0x800005e6]:c.xor a0, a1<br> [0x800005e8]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0xFFFFFFFFFDFF7FFF|- rs2_val == -32769<br> - rs1_val == 33554432<br>                                                                                                             |[0x800005f8]:c.xor a0, a1<br> [0x800005fa]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000100004000000|- rs2_val == 17592186044416<br> - rs1_val == 67108864<br>                                                                                                     |[0x8000060a]:c.xor a0, a1<br> [0x8000060c]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0x0001000008000000|- rs2_val == 281474976710656<br> - rs1_val == 134217728<br>                                                                                                   |[0x8000061c]:c.xor a0, a1<br> [0x8000061e]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000400010000000|- rs2_val == 70368744177664<br> - rs1_val == 268435456<br>                                                                                                    |[0x8000062e]:c.xor a0, a1<br> [0x80000630]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0000000020000008|- rs2_val == 8<br> - rs1_val == 536870912<br>                                                                                                                 |[0x8000063c]:c.xor a0, a1<br> [0x8000063e]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0x0000000040002000|- rs2_val == 8192<br> - rs1_val == 1073741824<br>                                                                                                             |[0x8000064a]:c.xor a0, a1<br> [0x8000064c]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0xFFFFFFFD7FFFFFFF|- rs1_val == 2147483648<br>                                                                                                                                   |[0x80000664]:c.xor a0, a1<br> [0x80000666]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0x0000000100000040|- rs2_val == 64<br> - rs1_val == 4294967296<br>                                                                                                               |[0x80000676]:c.xor a0, a1<br> [0x80000678]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000200000080|- rs2_val == 128<br> - rs1_val == 8589934592<br>                                                                                                              |[0x80000688]:c.xor a0, a1<br> [0x8000068a]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0xFFBFFFFBFFFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == 17179869184<br>                                                                                              |[0x800006a2]:c.xor a0, a1<br> [0x800006a4]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0xFFFDFFF7FFFFFFFF|- rs2_val == -562949953421313<br> - rs1_val == 34359738368<br>                                                                                                |[0x800006bc]:c.xor a0, a1<br> [0x800006be]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x0000005000000000|- rs2_val == 274877906944<br> - rs1_val == 68719476736<br>                                                                                                    |[0x800006d2]:c.xor a0, a1<br> [0x800006d4]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0x0000002000000007|- rs1_val == 137438953472<br>                                                                                                                                 |[0x800006e4]:c.xor a0, a1<br> [0x800006e6]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000204000000000|- rs2_val == 35184372088832<br> - rs1_val == 274877906944<br>                                                                                                 |[0x800006fa]:c.xor a0, a1<br> [0x800006fc]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0xFFFFFF7F7FFFFFFF|- rs2_val == -2147483649<br> - rs1_val == 549755813888<br>                                                                                                    |[0x80000714]:c.xor a0, a1<br> [0x80000716]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000010000000001|- rs1_val == 1099511627776<br>                                                                                                                                |[0x80000726]:c.xor a0, a1<br> [0x80000728]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0xDFFFFDFFFFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == 2199023255552<br>                                                                                          |[0x80000740]:c.xor a0, a1<br> [0x80000742]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0x0000050000000000|- rs2_val == 1099511627776<br> - rs1_val == 4398046511104<br>                                                                                                 |[0x80000756]:c.xor a0, a1<br> [0x80000758]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0xFFFFF7FFFBFFFFFF|- rs2_val == -67108865<br> - rs1_val == 8796093022208<br>                                                                                                     |[0x8000076c]:c.xor a0, a1<br> [0x8000076e]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0x0000100000000004|- rs2_val == 4<br> - rs1_val == 17592186044416<br>                                                                                                            |[0x8000077e]:c.xor a0, a1<br> [0x80000780]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0x0000200000000080|- rs1_val == 35184372088832<br>                                                                                                                               |[0x80000790]:c.xor a0, a1<br> [0x80000792]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0xFFFFBFFFDFFFFFFF|- rs2_val == -536870913<br> - rs1_val == 70368744177664<br>                                                                                                   |[0x800007a6]:c.xor a0, a1<br> [0x800007a8]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0xFFFF7FFFFFFFFFFA|- rs1_val == 140737488355328<br>                                                                                                                              |[0x800007b8]:c.xor a0, a1<br> [0x800007ba]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0xFFFEFFBFFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 281474976710656<br>                                                                                               |[0x800007d2]:c.xor a0, a1<br> [0x800007d4]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0004000000002000|- rs1_val == 1125899906842624<br>                                                                                                                             |[0x800007e4]:c.xor a0, a1<br> [0x800007e6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0xFFF7FFFFFFFF7FFF|- rs1_val == 2251799813685248<br>                                                                                                                             |[0x800007fa]:c.xor a0, a1<br> [0x800007fc]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0xFFEFFFFFFFFFFFDF|- rs2_val == -33<br> - rs1_val == 4503599627370496<br>                                                                                                        |[0x8000080c]:c.xor a0, a1<br> [0x8000080e]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0x0020000000020000|- rs2_val == 131072<br> - rs1_val == 9007199254740992<br>                                                                                                     |[0x8000081e]:c.xor a0, a1<br> [0x80000820]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0040000000000040|- rs1_val == 18014398509481984<br>                                                                                                                            |[0x80000830]:c.xor a0, a1<br> [0x80000832]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0xFF7FFFFF7FFFFFFF|- rs1_val == 36028797018963968<br>                                                                                                                            |[0x8000084a]:c.xor a0, a1<br> [0x8000084c]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0x0100000000020000|- rs1_val == 72057594037927936<br>                                                                                                                            |[0x8000085c]:c.xor a0, a1<br> [0x8000085e]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0xFDFFFFFFFFFFFDFF|- rs2_val == -513<br> - rs1_val == 144115188075855872<br>                                                                                                     |[0x8000086e]:c.xor a0, a1<br> [0x80000870]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0x0400000000000080|- rs1_val == 288230376151711744<br>                                                                                                                           |[0x80000880]:c.xor a0, a1<br> [0x80000882]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0x0800000000000010|- rs1_val == 576460752303423488<br>                                                                                                                           |[0x80000892]:c.xor a0, a1<br> [0x80000894]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x1010000000000000|- rs2_val == 4503599627370496<br> - rs1_val == 1152921504606846976<br>                                                                                        |[0x800008a8]:c.xor a0, a1<br> [0x800008aa]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0xA000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                          |[0x800008be]:c.xor a0, a1<br> [0x800008c0]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x4000000000000003|- rs1_val == 4611686018427387904<br>                                                                                                                          |[0x800008d0]:c.xor a0, a1<br> [0x800008d2]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0xFFFFFFFBFFFFFFFE|- rs2_val == 17179869184<br> - rs1_val == -2<br>                                                                                                              |[0x800008e2]:c.xor a0, a1<br> [0x800008e4]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0x3FFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                           |[0x800008f4]:c.xor a0, a1<br> [0x800008f6]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0x0000000000000002|- rs1_val == -5<br>                                                                                                                                           |[0x80000902]:c.xor a0, a1<br> [0x80000904]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFEFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                           |[0x80000914]:c.xor a0, a1<br> [0x80000916]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFFE7|- rs1_val == -17<br>                                                                                                                                          |[0x80000922]:c.xor a0, a1<br> [0x80000924]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFDDF|- rs1_val == -33<br>                                                                                                                                          |[0x80000930]:c.xor a0, a1<br> [0x80000932]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFDFFFFFFFFBF|- rs2_val == 2199023255552<br> - rs1_val == -65<br>                                                                                                           |[0x80000942]:c.xor a0, a1<br> [0x80000944]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0x2000000000000080|- rs1_val == -129<br>                                                                                                                                         |[0x80000958]:c.xor a0, a1<br> [0x8000095a]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFEFFFFEFF|- rs1_val == -257<br>                                                                                                                                         |[0x80000966]:c.xor a0, a1<br> [0x80000968]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xDFFFFFFFFFFFFDFF|- rs2_val == 2305843009213693952<br> - rs1_val == -513<br>                                                                                                    |[0x80000978]:c.xor a0, a1<br> [0x8000097a]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0x8000000000000400|- rs1_val == -1025<br>                                                                                                                                        |[0x8000098e]:c.xor a0, a1<br> [0x80000990]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0x7FFFFFFFFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                        |[0x800009a4]:c.xor a0, a1<br> [0x800009a6]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFFFFFFFFFFFFEFBF|- rs1_val == -4097<br>                                                                                                                                        |[0x800009b6]:c.xor a0, a1<br> [0x800009b8]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0x0000020000002000|- rs2_val == -2199023255553<br> - rs1_val == -8193<br>                                                                                                        |[0x800009d0]:c.xor a0, a1<br> [0x800009d2]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0x0000000040004000|- rs1_val == -16385<br>                                                                                                                                       |[0x800009e6]:c.xor a0, a1<br> [0x800009e8]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0x0000000000000000|- rs1_val == -32769<br>                                                                                                                                       |[0x800009fc]:c.xor a0, a1<br> [0x800009fe]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0x8100000000000000|- rs2_val == -72057594037927937<br>                                                                                                                           |[0x80000a1a]:c.xor a0, a1<br> [0x80000a1c]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0xFDFFFFFFF7FFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                          |[0x80000a30]:c.xor a0, a1<br> [0x80000a32]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                          |[0x80000a4a]:c.xor a0, a1<br> [0x80000a4c]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0xF7FFFFF7FFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                          |[0x80000a64]:c.xor a0, a1<br> [0x80000a66]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0x1000040000000000|- rs2_val == -1152921504606846977<br> - rs1_val == -4398046511105<br>                                                                                         |[0x80000a82]:c.xor a0, a1<br> [0x80000a84]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xBFFFFFFFFFFEFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                         |[0x80000a98]:c.xor a0, a1<br> [0x80000a9a]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0x5555557555555555|- rs2_val == 6148914691236517205<br>                                                                                                                          |[0x80000ac6]:c.xor a0, a1<br> [0x80000ac8]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xAAAAAAAAAABAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                         |[0x80000af0]:c.xor a0, a1<br> [0x80000af2]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFF7FFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                       |[0x80000b06]:c.xor a0, a1<br> [0x80000b08]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0x0000000100020000|- rs2_val == -4294967297<br> - rs1_val == -131073<br>                                                                                                         |[0x80000b20]:c.xor a0, a1<br> [0x80000b22]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0x4000000000040000|- rs1_val == -262145<br>                                                                                                                                      |[0x80000b3a]:c.xor a0, a1<br> [0x80000b3c]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0x0000000000880000|- rs2_val == -8388609<br> - rs1_val == -524289<br>                                                                                                            |[0x80000b50]:c.xor a0, a1<br> [0x80000b52]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0x0080000000100000|- rs1_val == -1048577<br>                                                                                                                                     |[0x80000b6a]:c.xor a0, a1<br> [0x80000b6c]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0x0000400000200000|- rs2_val == -70368744177665<br> - rs1_val == -2097153<br>                                                                                                    |[0x80000b84]:c.xor a0, a1<br> [0x80000b86]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0xFFFFFFFFFFBFF7FF|- rs2_val == 2048<br> - rs1_val == -4194305<br>                                                                                                               |[0x80000b9a]:c.xor a0, a1<br> [0x80000b9c]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFF7FFFFFF7FFFFF|- rs2_val == 2251799813685248<br> - rs1_val == -8388609<br>                                                                                                   |[0x80000bb0]:c.xor a0, a1<br> [0x80000bb2]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0x0000000101000000|- rs1_val == -16777217<br>                                                                                                                                    |[0x80000bca]:c.xor a0, a1<br> [0x80000bcc]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0x0000800002000000|- rs2_val == -140737488355329<br> - rs1_val == -33554433<br>                                                                                                  |[0x80000be4]:c.xor a0, a1<br> [0x80000be6]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0x0000000004000003|- rs1_val == -67108865<br>                                                                                                                                    |[0x80000bf6]:c.xor a0, a1<br> [0x80000bf8]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFBFFF7FFFFFF|- rs2_val == 4398046511104<br> - rs1_val == -134217729<br>                                                                                                    |[0x80000c0c]:c.xor a0, a1<br> [0x80000c0e]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFDFFFEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                   |[0x80000c22]:c.xor a0, a1<br> [0x80000c24]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0x0000000020000004|- rs2_val == -5<br> - rs1_val == -536870913<br>                                                                                                               |[0x80000c34]:c.xor a0, a1<br> [0x80000c36]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0x0000000040080000|- rs2_val == -524289<br> - rs1_val == -1073741825<br>                                                                                                         |[0x80000c4a]:c.xor a0, a1<br> [0x80000c4c]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0xFFFFFFFF7FFBFFFF|- rs2_val == 262144<br> - rs1_val == -2147483649<br>                                                                                                          |[0x80000c60]:c.xor a0, a1<br> [0x80000c62]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0x0000000100080000|- rs1_val == -4294967297<br>                                                                                                                                  |[0x80000c7a]:c.xor a0, a1<br> [0x80000c7c]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0x0000000200002000|- rs2_val == -8193<br> - rs1_val == -8589934593<br>                                                                                                           |[0x80000c94]:c.xor a0, a1<br> [0x80000c96]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0x0008000400000000|- rs2_val == -2251799813685249<br> - rs1_val == -17179869185<br>                                                                                              |[0x80000cb2]:c.xor a0, a1<br> [0x80000cb4]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0xFFEFFFF7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                 |[0x80000ccc]:c.xor a0, a1<br> [0x80000cce]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0xFFFFFFEFFFDFFFFF|- rs2_val == 2097152<br> - rs1_val == -68719476737<br>                                                                                                        |[0x80000ce2]:c.xor a0, a1<br> [0x80000ce4]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0x0000002080000000|- rs1_val == -137438953473<br>                                                                                                                                |[0x80000d00]:c.xor a0, a1<br> [0x80000d02]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0x0000004020000000|- rs1_val == -274877906945<br>                                                                                                                                |[0x80000d1a]:c.xor a0, a1<br> [0x80000d1c]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0x0000008000000007|- rs1_val == -549755813889<br>                                                                                                                                |[0x80000d30]:c.xor a0, a1<br> [0x80000d32]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0x7FFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                               |[0x80000d4a]:c.xor a0, a1<br> [0x80000d4c]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0xFFFFFDFFFFFFFDFF|- rs1_val == -2199023255553<br>                                                                                                                               |[0x80000d60]:c.xor a0, a1<br> [0x80000d62]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFF77FFFFFFFFFF|- rs2_val == 140737488355328<br> - rs1_val == -8796093022209<br>                                                                                              |[0x80000d7a]:c.xor a0, a1<br> [0x80000d7c]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFF7FEFFFFFFFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -17592186044417<br>                                                                                           |[0x80000d94]:c.xor a0, a1<br> [0x80000d96]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0x0000200400000000|- rs2_val == -17179869185<br> - rs1_val == -35184372088833<br>                                                                                                |[0x80000db2]:c.xor a0, a1<br> [0x80000db4]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0x0000408000000000|- rs2_val == -549755813889<br> - rs1_val == -70368744177665<br>                                                                                               |[0x80000dd0]:c.xor a0, a1<br> [0x80000dd2]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0x0000800000080000|- rs1_val == -140737488355329<br>                                                                                                                             |[0x80000dea]:c.xor a0, a1<br> [0x80000dec]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFFEFFFFFFFFFFFC|- rs1_val == -281474976710657<br>                                                                                                                             |[0x80000e00]:c.xor a0, a1<br> [0x80000e02]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0x1002000000000000|- rs1_val == -562949953421313<br>                                                                                                                             |[0x80000e1e]:c.xor a0, a1<br> [0x80000e20]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0xFFFBFFFFFFFFDFFF|- rs1_val == -1125899906842625<br>                                                                                                                            |[0x80000e34]:c.xor a0, a1<br> [0x80000e36]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0x0008000100000000|- rs1_val == -2251799813685249<br>                                                                                                                            |[0x80000e52]:c.xor a0, a1<br> [0x80000e54]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xFFEFFBFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                            |[0x80000e6c]:c.xor a0, a1<br> [0x80000e6e]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0xFF9FFFFFFFFFFFFF|- rs2_val == 18014398509481984<br> - rs1_val == -9007199254740993<br>                                                                                         |[0x80000e86]:c.xor a0, a1<br> [0x80000e88]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0xFFBFFFFFFFFBFFFF|- rs1_val == -18014398509481985<br>                                                                                                                           |[0x80000e9c]:c.xor a0, a1<br> [0x80000e9e]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0x0080000000000040|- rs2_val == -65<br> - rs1_val == -36028797018963969<br>                                                                                                      |[0x80000eb2]:c.xor a0, a1<br> [0x80000eb4]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0x0100000000000005|- rs1_val == -72057594037927937<br>                                                                                                                           |[0x80000ec8]:c.xor a0, a1<br> [0x80000eca]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0xFDFFFFFFFFF7FFFF|- rs2_val == 524288<br> - rs1_val == -144115188075855873<br>                                                                                                  |[0x80000ede]:c.xor a0, a1<br> [0x80000ee0]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0xEFFFFFFBFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                         |[0x80000ef8]:c.xor a0, a1<br> [0x80000efa]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0xDFFFFFFFEFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                         |[0x80000f0e]:c.xor a0, a1<br> [0x80000f10]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 4611686018427387904<br> - rs1_val == -4611686018427387905<br>                                                                                    |[0x80000f28]:c.xor a0, a1<br> [0x80000f2a]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0xAAAAAAAAAAAAA8AA|- rs1_val == 6148914691236517205<br>                                                                                                                          |[0x80000f52]:c.xor a0, a1<br> [0x80000f54]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0xAAAAAAAABAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                         |[0x80000f7c]:c.xor a0, a1<br> [0x80000f7e]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xFFFFFFF7FFFFFFFD|- rs2_val == 2<br>                                                                                                                                            |[0x80000f92]:c.xor a0, a1<br> [0x80000f94]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0x0000000000000220|- rs2_val == 32<br>                                                                                                                                           |[0x80000fa0]:c.xor a0, a1<br> [0x80000fa2]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFFBFFFFFFFFFEFF|- rs2_val == 256<br>                                                                                                                                          |[0x80000fb6]:c.xor a0, a1<br> [0x80000fb8]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0x0000010000001000|- rs2_val == 4096<br>                                                                                                                                         |[0x80000fc8]:c.xor a0, a1<br> [0x80000fca]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0x0800000000004000|- rs2_val == 16384<br>                                                                                                                                        |[0x80000fda]:c.xor a0, a1<br> [0x80000fdc]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0xFFFBFFFFFFFF7FFF|- rs2_val == 32768<br>                                                                                                                                        |[0x80000ff0]:c.xor a0, a1<br> [0x80000ff2]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFFBFFFEFFFF|- rs2_val == 65536<br>                                                                                                                                        |[0x80001006]:c.xor a0, a1<br> [0x80001008]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0x0000000000400005|- rs2_val == 4194304<br>                                                                                                                                      |[0x80001014]:c.xor a0, a1<br> [0x80001016]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0x0000000000800008|- rs2_val == 8388608<br>                                                                                                                                      |[0x80001022]:c.xor a0, a1<br> [0x80001024]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0xFFFFFBFFFEFFFFFF|- rs2_val == 16777216<br>                                                                                                                                     |[0x80001038]:c.xor a0, a1<br> [0x8000103a]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0xFFFFFFFFFDBFFFFF|- rs2_val == 33554432<br>                                                                                                                                     |[0x8000104a]:c.xor a0, a1<br> [0x8000104c]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0xFFFFFFFFFBFFFFFB|- rs2_val == 67108864<br>                                                                                                                                     |[0x80001058]:c.xor a0, a1<br> [0x8000105a]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0xFEFFFFFFF7FFFFFF|- rs2_val == 134217728<br>                                                                                                                                    |[0x8000106e]:c.xor a0, a1<br> [0x80001070]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0xFFDFFFFFDFFFFFFF|- rs2_val == 536870912<br>                                                                                                                                    |[0x80001084]:c.xor a0, a1<br> [0x80001086]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0xFFFFFFFF7FFFFFFE|- rs2_val == 2147483648<br>                                                                                                                                   |[0x80001096]:c.xor a0, a1<br> [0x80001098]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0x0000000110000000|- rs2_val == 4294967296<br>                                                                                                                                   |[0x800010a8]:c.xor a0, a1<br> [0x800010aa]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0xFFFDFFFDFFFFFFFF|- rs2_val == 8589934592<br>                                                                                                                                   |[0x800010c2]:c.xor a0, a1<br> [0x800010c4]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0x0001000800000000|- rs2_val == 34359738368<br>                                                                                                                                  |[0x800010d8]:c.xor a0, a1<br> [0x800010da]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0x0000001000000001|- rs2_val == 68719476736<br>                                                                                                                                  |[0x800010ea]:c.xor a0, a1<br> [0x800010ec]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0xFFFFFFDFFFFFFFDF|- rs2_val == 137438953472<br>                                                                                                                                 |[0x800010fc]:c.xor a0, a1<br> [0x800010fe]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                           |[0x8000110e]:c.xor a0, a1<br> [0x80001110]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0xFBDFFFFFFFFFFFFF|- rs2_val == 9007199254740992<br>                                                                                                                             |[0x80001128]:c.xor a0, a1<br> [0x8000112a]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0x0400100000000000|- rs2_val == 288230376151711744<br>                                                                                                                           |[0x8000113e]:c.xor a0, a1<br> [0x80001140]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0xF7FFFFFFFFF7FFFF|- rs2_val == 576460752303423488<br>                                                                                                                           |[0x80001154]:c.xor a0, a1<br> [0x80001156]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0xEFFFFFFFFFFFFFF9|- rs2_val == 1152921504606846976<br>                                                                                                                          |[0x80001166]:c.xor a0, a1<br> [0x80001168]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0x0080000000000001|- rs2_val == -2<br>                                                                                                                                           |[0x8000117c]:c.xor a0, a1<br> [0x8000117e]:sd a0, 1312(ra)<br> |
| 166|[0x80004738]<br>0xFFFFFFFFFFF7FFF7|- rs2_val == -9<br>                                                                                                                                           |[0x8000118a]:c.xor a0, a1<br> [0x8000118c]:sd a0, 1320(ra)<br> |
| 167|[0x80004740]<br>0xFEFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                          |[0x8000119c]:c.xor a0, a1<br> [0x8000119e]:sd a0, 1328(ra)<br> |
| 168|[0x80004748]<br>0x0000000000000000|- rs2_val == -129<br>                                                                                                                                         |[0x800011aa]:c.xor a0, a1<br> [0x800011ac]:sd a0, 1336(ra)<br> |
| 169|[0x80004750]<br>0xFFEFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                         |[0x800011bc]:c.xor a0, a1<br> [0x800011be]:sd a0, 1344(ra)<br> |
| 170|[0x80004758]<br>0xBFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                        |[0x800011d2]:c.xor a0, a1<br> [0x800011d4]:sd a0, 1352(ra)<br> |
| 171|[0x80004760]<br>0x0004000000001000|- rs2_val == -4097<br>                                                                                                                                        |[0x800011ec]:c.xor a0, a1<br> [0x800011ee]:sd a0, 1360(ra)<br> |
| 172|[0x80004768]<br>0x0000000000000000|- rs2_val == -16385<br>                                                                                                                                       |[0x80001202]:c.xor a0, a1<br> [0x80001204]:sd a0, 1368(ra)<br> |
| 173|[0x80004770]<br>0xFFFFFFFBFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                       |[0x80001218]:c.xor a0, a1<br> [0x8000121a]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0xDFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                      |[0x8000122e]:c.xor a0, a1<br> [0x80001230]:sd a0, 1384(ra)<br> |
| 175|[0x80004780]<br>0x0000800000040000|- rs2_val == -262145<br>                                                                                                                                      |[0x80001248]:c.xor a0, a1<br> [0x8000124a]:sd a0, 1392(ra)<br> |
| 176|[0x80004788]<br>0xFFFFFFFFFFBFFFF6|- rs2_val == -4194305<br>                                                                                                                                     |[0x8000125a]:c.xor a0, a1<br> [0x8000125c]:sd a0, 1400(ra)<br> |
| 177|[0x80004790]<br>0x0000040001000000|- rs2_val == -16777217<br>                                                                                                                                    |[0x80001274]:c.xor a0, a1<br> [0x80001276]:sd a0, 1408(ra)<br> |
| 178|[0x80004798]<br>0xFF7FFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                    |[0x8000128a]:c.xor a0, a1<br> [0x8000128c]:sd a0, 1416(ra)<br> |
| 179|[0x800047a0]<br>0xEFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                                     |[0x800012a0]:c.xor a0, a1<br> [0x800012a2]:sd a0, 1424(ra)<br> |
| 180|[0x800047a8]<br>0xFFFFFFFFF7FFFEFF|- rs2_val == -134217729<br>                                                                                                                                   |[0x800012b2]:c.xor a0, a1<br> [0x800012b4]:sd a0, 1432(ra)<br> |
| 181|[0x800047b0]<br>0x0000200010000000|- rs2_val == -268435457<br>                                                                                                                                   |[0x800012cc]:c.xor a0, a1<br> [0x800012ce]:sd a0, 1440(ra)<br> |
| 182|[0x800047b8]<br>0xFBFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                                 |[0x800012e6]:c.xor a0, a1<br> [0x800012e8]:sd a0, 1448(ra)<br> |
| 183|[0x800047c0]<br>0x0008008000000000|- rs2_val == 549755813888<br>                                                                                                                                 |[0x800012fc]:c.xor a0, a1<br> [0x800012fe]:sd a0, 1456(ra)<br> |
| 184|[0x800047c8]<br>0xFFFFFBFFFFFFFFFC|- rs2_val == -4398046511105<br>                                                                                                                               |[0x80001312]:c.xor a0, a1<br> [0x80001314]:sd a0, 1464(ra)<br> |
| 185|[0x800047d0]<br>0xFFFFF7FBFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                               |[0x8000132c]:c.xor a0, a1<br> [0x8000132e]:sd a0, 1472(ra)<br> |
| 186|[0x800047d8]<br>0xFFFFEFBFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                              |[0x80001346]:c.xor a0, a1<br> [0x80001348]:sd a0, 1480(ra)<br> |
| 187|[0x800047e0]<br>0x3FFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                             |[0x80001360]:c.xor a0, a1<br> [0x80001362]:sd a0, 1488(ra)<br> |
| 188|[0x800047e8]<br>0x0200200000000000|- rs2_val == -35184372088833<br>                                                                                                                              |[0x8000137e]:c.xor a0, a1<br> [0x80001380]:sd a0, 1496(ra)<br> |
| 189|[0x800047f0]<br>0x0000008000100000|- rs2_val == -1048577<br>                                                                                                                                     |[0x80001398]:c.xor a0, a1<br> [0x8000139a]:sd a0, 1504(ra)<br> |
| 190|[0x800047f8]<br>0xFFDFFDFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                            |[0x800013b2]:c.xor a0, a1<br> [0x800013b4]:sd a0, 1512(ra)<br> |
