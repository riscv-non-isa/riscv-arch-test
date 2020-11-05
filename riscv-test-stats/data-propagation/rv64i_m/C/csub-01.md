
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001360')]      |
| SIG_REGION                | [('0x80004208', '0x800047d0', '185 dwords')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 185      |
| STAT1                     | 184      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001106]:c.sub a0, a1
      [0x80001108]:sd a0, 1240(ra)
 -- Signature Address: 0x800046e0 Data: 0xDFFFFDFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 2305843009213693952
      - rs1_val == -2199023255553






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

|s.no|            signature             |                                                               coverpoints                                                               |                             code                              |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004208]<br>0xFFFFFFFFFFF6FFFF|- opcode : c.sub<br> - rs1 : x12<br> - rs2 : x15<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 524288<br> - rs1_val == -65537<br>  |[0x800003a4]:c.sub a2, a5<br> [0x800003a6]:sd a2, 0(ra)<br>    |
|   2|[0x80004210]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x9<br> - rs1 == rs2<br> - rs2_val == 2305843009213693952<br> - rs1_val == 2305843009213693952<br>                 |[0x800003ba]:c.sub s1, s1<br> [0x800003bc]:sd s1, 8(ra)<br>    |
|   3|[0x80004218]<br>0x800000000000000A|- rs1 : x11<br> - rs2 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs1_val == -9223372036854775808<br>                  |[0x800003cc]:c.sub a1, a0<br> [0x800003ce]:sd a1, 16(ra)<br>   |
|   4|[0x80004220]<br>0x0000800000000001|- rs1 : x15<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val == -140737488355329<br>                                                      |[0x800003e2]:c.sub a5, s0<br> [0x800003e4]:sd a5, 24(ra)<br>   |
|   5|[0x80004228]<br>0x7FFFFFFFFFFFF7FF|- rs1 : x10<br> - rs2 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 2048<br> - rs1_val == 9223372036854775807<br>              |[0x800003fc]:c.sub a0, a2<br> [0x800003fe]:sd a0, 32(ra)<br>   |
|   6|[0x80004230]<br>0x0000100000000002|- rs1 : x13<br> - rs2 : x11<br> - rs1_val == 1<br> - rs2_val == -17592186044417<br>                                                      |[0x80000412]:c.sub a3, a1<br> [0x80000414]:sd a3, 40(ra)<br>   |
|   7|[0x80004238]<br>0x7EFFFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x14<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -72057594037927937<br> |[0x8000042c]:c.sub s0, a4<br> [0x8000042e]:sd fp, 48(ra)<br>   |
|   8|[0x80004240]<br>0xFFFFBFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x13<br> - rs2_val == 0<br> - rs1_val == -70368744177665<br>                                                      |[0x80000442]:c.sub a4, a3<br> [0x80000444]:sd a4, 56(ra)<br>   |
|   9|[0x80004248]<br>0x8000000000100001|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 1048576<br>                                           |[0x80000458]:c.sub a0, a1<br> [0x8000045a]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 1<br> - rs1_val == -2<br>                                                                                                   |[0x80000466]:c.sub a0, a1<br> [0x80000468]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0x0008000000000003|- rs2_val == -2251799813685249<br> - rs1_val == 2<br>                                                                                    |[0x8000047c]:c.sub a0, a1<br> [0x8000047e]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0xFFE0000000000004|- rs2_val == 9007199254740992<br> - rs1_val == 4<br>                                                                                     |[0x8000048e]:c.sub a0, a1<br> [0x80000490]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0x0000000040000009|- rs2_val == -1073741825<br> - rs1_val == 8<br>                                                                                          |[0x800004a0]:c.sub a0, a1<br> [0x800004a2]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0x0000002000000011|- rs2_val == -137438953473<br> - rs1_val == 16<br>                                                                                       |[0x800004b6]:c.sub a0, a1<br> [0x800004b8]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0xFFFFFE0000000020|- rs2_val == 2199023255552<br> - rs1_val == 32<br>                                                                                       |[0x800004c8]:c.sub a0, a1<br> [0x800004ca]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0xFFFFFFFFFF800040|- rs2_val == 8388608<br> - rs1_val == 64<br>                                                                                             |[0x800004d6]:c.sub a0, a1<br> [0x800004d8]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0x0000000000000077|- rs1_val == 128<br>                                                                                                                     |[0x800004e4]:c.sub a0, a1<br> [0x800004e6]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0x0000000010000101|- rs2_val == -268435457<br> - rs1_val == 256<br>                                                                                         |[0x800004f6]:c.sub a0, a1<br> [0x800004f8]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0x0000000800000201|- rs2_val == -34359738369<br> - rs1_val == 512<br>                                                                                       |[0x8000050c]:c.sub a0, a1<br> [0x8000050e]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0x0000008000000401|- rs2_val == -549755813889<br> - rs1_val == 1024<br>                                                                                     |[0x80000522]:c.sub a0, a1<br> [0x80000524]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0x0000000000002801|- rs2_val == -8193<br> - rs1_val == 2048<br>                                                                                             |[0x80000538]:c.sub a0, a1<br> [0x8000053a]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0x0002000000001001|- rs2_val == -562949953421313<br> - rs1_val == 4096<br>                                                                                  |[0x8000054e]:c.sub a0, a1<br> [0x80000550]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0xFFFFFFFFF0002000|- rs2_val == 268435456<br> - rs1_val == 8192<br>                                                                                         |[0x8000055c]:c.sub a0, a1<br> [0x8000055e]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0x8000000000004000|- rs1_val == 16384<br>                                                                                                                   |[0x8000056e]:c.sub a0, a1<br> [0x80000570]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0x0040000000008001|- rs2_val == -18014398509481985<br> - rs1_val == 32768<br>                                                                               |[0x80000584]:c.sub a0, a1<br> [0x80000586]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0x000000000000C000|- rs2_val == 16384<br> - rs1_val == 65536<br>                                                                                            |[0x80000592]:c.sub a0, a1<br> [0x80000594]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0x0000004000020001|- rs2_val == -274877906945<br> - rs1_val == 131072<br>                                                                                   |[0x800005a8]:c.sub a0, a1<br> [0x800005aa]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0x0200000000040001|- rs2_val == -144115188075855873<br> - rs1_val == 262144<br>                                                                             |[0x800005be]:c.sub a0, a1<br> [0x800005c0]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0x0000000000080005|- rs2_val == -5<br> - rs1_val == 524288<br>                                                                                              |[0x800005cc]:c.sub a0, a1<br> [0x800005ce]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0x0001000000200001|- rs2_val == -281474976710657<br> - rs1_val == 2097152<br>                                                                               |[0x800005e2]:c.sub a0, a1<br> [0x800005e4]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0x0000000008400001|- rs2_val == -134217729<br> - rs1_val == 4194304<br>                                                                                     |[0x800005f4]:c.sub a0, a1<br> [0x800005f6]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0x00000000007FFFE0|- rs2_val == 32<br> - rs1_val == 8388608<br>                                                                                             |[0x80000602]:c.sub a0, a1<br> [0x80000604]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0xFFF0000001000000|- rs2_val == 4503599627370496<br> - rs1_val == 16777216<br>                                                                              |[0x80000614]:c.sub a0, a1<br> [0x80000616]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0xAAAAAAAAACAAAAAB|- rs2_val == 6148914691236517205<br> - rs1_val == 33554432<br>                                                                           |[0x8000063e]:c.sub a0, a1<br> [0x80000640]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0xFFFFF00004000000|- rs2_val == 17592186044416<br> - rs1_val == 67108864<br>                                                                                |[0x80000650]:c.sub a0, a1<br> [0x80000652]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0x0000000007FE0000|- rs2_val == 131072<br> - rs1_val == 134217728<br>                                                                                       |[0x8000065e]:c.sub a0, a1<br> [0x80000660]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0x0800000010000001|- rs2_val == -576460752303423489<br> - rs1_val == 268435456<br>                                                                          |[0x80000674]:c.sub a0, a1<br> [0x80000676]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0x0000000020000009|- rs2_val == -9<br> - rs1_val == 536870912<br>                                                                                           |[0x80000682]:c.sub a0, a1<br> [0x80000684]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0xF000000040000000|- rs2_val == 1152921504606846976<br> - rs1_val == 1073741824<br>                                                                         |[0x80000694]:c.sub a0, a1<br> [0x80000696]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0x0080000080000001|- rs2_val == -36028797018963969<br> - rs1_val == 2147483648<br>                                                                          |[0x800006ae]:c.sub a0, a1<br> [0x800006b0]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0x00000000C0000000|- rs2_val == 1073741824<br> - rs1_val == 4294967296<br>                                                                                  |[0x800006c0]:c.sub a0, a1<br> [0x800006c2]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0x0000000208000001|- rs1_val == 8589934592<br>                                                                                                              |[0x800006d6]:c.sub a0, a1<br> [0x800006d8]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0x00000003FFFFFE00|- rs2_val == 512<br> - rs1_val == 17179869184<br>                                                                                        |[0x800006e8]:c.sub a0, a1<br> [0x800006ea]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0x00000007FE000000|- rs2_val == 33554432<br> - rs1_val == 34359738368<br>                                                                                   |[0x800006fa]:c.sub a0, a1<br> [0x800006fc]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0xFFF0001000000000|- rs1_val == 68719476736<br>                                                                                                             |[0x80000710]:c.sub a0, a1<br> [0x80000712]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0x1000002000000001|- rs2_val == -1152921504606846977<br> - rs1_val == 137438953472<br>                                                                      |[0x8000072a]:c.sub a0, a1<br> [0x8000072c]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0x0000003FFFFFFC00|- rs2_val == 1024<br> - rs1_val == 274877906944<br>                                                                                      |[0x8000073c]:c.sub a0, a1<br> [0x8000073e]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0x0000007FFFFFFE00|- rs1_val == 549755813888<br>                                                                                                            |[0x8000074e]:c.sub a0, a1<br> [0x80000750]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0x000000FFFFFFFFFB|- rs1_val == 1099511627776<br>                                                                                                           |[0x80000760]:c.sub a0, a1<br> [0x80000762]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0xFFC0020000000000|- rs2_val == 18014398509481984<br> - rs1_val == 2199023255552<br>                                                                        |[0x80000776]:c.sub a0, a1<br> [0x80000778]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0x0020040000000001|- rs2_val == -9007199254740993<br> - rs1_val == 4398046511104<br>                                                                        |[0x80000790]:c.sub a0, a1<br> [0x80000792]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0x8000080000000000|- rs1_val == 8796093022208<br>                                                                                                           |[0x800007a6]:c.sub a0, a1<br> [0x800007a8]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0x0800100000000001|- rs1_val == 17592186044416<br>                                                                                                          |[0x800007c0]:c.sub a0, a1<br> [0x800007c2]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0x0002200000000001|- rs1_val == 35184372088832<br>                                                                                                          |[0x800007da]:c.sub a0, a1<br> [0x800007dc]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0x00003FFFFFFFFFFA|- rs1_val == 70368744177664<br>                                                                                                          |[0x800007ec]:c.sub a0, a1<br> [0x800007ee]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0xFFFF800000000000|- rs2_val == 281474976710656<br> - rs1_val == 140737488355328<br>                                                                        |[0x80000802]:c.sub a0, a1<br> [0x80000804]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0x0000FFFFFFFFFE00|- rs1_val == 281474976710656<br>                                                                                                         |[0x80000814]:c.sub a0, a1<br> [0x80000816]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0082000000000001|- rs1_val == 562949953421312<br>                                                                                                         |[0x8000082e]:c.sub a0, a1<br> [0x80000830]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0x0004000000000801|- rs2_val == -2049<br> - rs1_val == 1125899906842624<br>                                                                                 |[0x80000844]:c.sub a0, a1<br> [0x80000846]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0x0007FF0000000000|- rs2_val == 1099511627776<br> - rs1_val == 2251799813685248<br>                                                                         |[0x8000085a]:c.sub a0, a1<br> [0x8000085c]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0x0010800000000001|- rs1_val == 4503599627370496<br>                                                                                                        |[0x80000874]:c.sub a0, a1<br> [0x80000876]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0x001FFFF800000000|- rs2_val == 34359738368<br> - rs1_val == 9007199254740992<br>                                                                           |[0x8000088a]:c.sub a0, a1<br> [0x8000088c]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0x0040000000010001|- rs2_val == -65537<br> - rs1_val == 18014398509481984<br>                                                                               |[0x800008a0]:c.sub a0, a1<br> [0x800008a2]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0x0080000800000001|- rs1_val == 36028797018963968<br>                                                                                                       |[0x800008ba]:c.sub a0, a1<br> [0x800008bc]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0xFF00000000000000|- rs2_val == 144115188075855872<br> - rs1_val == 72057594037927936<br>                                                                   |[0x800008d0]:c.sub a0, a1<br> [0x800008d2]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0x0280000000000001|- rs1_val == 144115188075855872<br>                                                                                                      |[0x800008ea]:c.sub a0, a1<br> [0x800008ec]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0x0404000000000001|- rs2_val == -1125899906842625<br> - rs1_val == 288230376151711744<br>                                                                   |[0x80000904]:c.sub a0, a1<br> [0x80000906]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0x07FFFFFFFFF00000|- rs2_val == 1048576<br> - rs1_val == 576460752303423488<br>                                                                             |[0x80000916]:c.sub a0, a1<br> [0x80000918]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0x5000000000000001|- rs2_val == -4611686018427387905<br> - rs1_val == 1152921504606846976<br>                                                               |[0x80000930]:c.sub a0, a1<br> [0x80000932]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0x4000000000040001|- rs2_val == -262145<br> - rs1_val == 4611686018427387904<br>                                                                            |[0x80000946]:c.sub a0, a1<br> [0x80000948]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0x00000003FFFFFFFE|- rs2_val == -17179869185<br> - rs1_val == -3<br>                                                                                        |[0x8000095c]:c.sub a0, a1<br> [0x8000095e]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0xFFFFF7FFFFFFFFFB|- rs2_val == 8796093022208<br> - rs1_val == -5<br>                                                                                       |[0x8000096e]:c.sub a0, a1<br> [0x80000970]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0x0FFFFFFFFFFFFFF8|- rs1_val == -9<br>                                                                                                                      |[0x80000984]:c.sub a0, a1<br> [0x80000986]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0x0000000007FFFFF0|- rs1_val == -17<br>                                                                                                                     |[0x80000996]:c.sub a0, a1<br> [0x80000998]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0xFFFFFFFFFFF7FFDF|- rs1_val == -33<br>                                                                                                                     |[0x800009a4]:c.sub a0, a1<br> [0x800009a6]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0xFFFFFFFFFFFFFFC9|- rs1_val == -65<br>                                                                                                                     |[0x800009b2]:c.sub a0, a1<br> [0x800009b4]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0xFFFFFFFDFFFFFF7F|- rs2_val == 8589934592<br> - rs1_val == -129<br>                                                                                        |[0x800009c4]:c.sub a0, a1<br> [0x800009c6]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0x000000000000FF00|- rs1_val == -257<br>                                                                                                                    |[0x800009d6]:c.sub a0, a1<br> [0x800009d8]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0x0100000000004001|- rs2_val == -72057594037927937<br>                                                                                                      |[0x800009ec]:c.sub a0, a1<br> [0x800009ee]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0x0400000000000001|- rs2_val == -288230376151711745<br>                                                                                                     |[0x80000a02]:c.sub a0, a1<br> [0x80000a04]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0x2000000000000000|- rs2_val == -2305843009213693953<br>                                                                                                    |[0x80000a18]:c.sub a0, a1<br> [0x80000a1a]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0x5545555555555555|- rs2_val == -6148914691236517206<br> - rs1_val == -4503599627370497<br>                                                                 |[0x80000a4a]:c.sub a0, a1<br> [0x80000a4c]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0x7FFFFFFFFFFFFE00|- rs1_val == -513<br>                                                                                                                    |[0x80000a60]:c.sub a0, a1<br> [0x80000a62]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0x00007FFFFFFFFC00|- rs1_val == -1025<br>                                                                                                                   |[0x80000a76]:c.sub a0, a1<br> [0x80000a78]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0xFFFFFFFFFFFFF900|- rs2_val == -257<br> - rs1_val == -2049<br>                                                                                             |[0x80000a88]:c.sub a0, a1<br> [0x80000a8a]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0xFBFFFFFFFFFFEFFF|- rs2_val == 288230376151711744<br> - rs1_val == -4097<br>                                                                               |[0x80000a9e]:c.sub a0, a1<br> [0x80000aa0]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0x00000007FFFFE000|- rs1_val == -8193<br>                                                                                                                   |[0x80000ab8]:c.sub a0, a1<br> [0x80000aba]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0xFFFFFFFFFBFFBFFF|- rs2_val == 67108864<br> - rs1_val == -16385<br>                                                                                        |[0x80000aca]:c.sub a0, a1<br> [0x80000acc]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0x007FFFFFFFFF8000|- rs1_val == -32769<br>                                                                                                                  |[0x80000ae4]:c.sub a0, a1<br> [0x80000ae6]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0xFFFFFFFFFBFDFFFF|- rs1_val == -131073<br>                                                                                                                 |[0x80000af6]:c.sub a0, a1<br> [0x80000af8]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0x00000007FFFC0000|- rs1_val == -262145<br>                                                                                                                 |[0x80000b10]:c.sub a0, a1<br> [0x80000b12]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0xFFFFFFFFFFF80002|- rs2_val == -3<br> - rs1_val == -524289<br>                                                                                             |[0x80000b22]:c.sub a0, a1<br> [0x80000b24]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0x3FFFFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                |[0x80000b38]:c.sub a0, a1<br> [0x80000b3a]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0x001FFFFFFFE00000|- rs1_val == -2097153<br>                                                                                                                |[0x80000b52]:c.sub a0, a1<br> [0x80000b54]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0xFFFFBFFFFFBFFFFF|- rs2_val == 70368744177664<br> - rs1_val == -4194305<br>                                                                                |[0x80000b68]:c.sub a0, a1<br> [0x80000b6a]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFB7FFFFF|- rs1_val == -8388609<br>                                                                                                                |[0x80000b7a]:c.sub a0, a1<br> [0x80000b7c]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFF000004|- rs1_val == -16777217<br>                                                                                                               |[0x80000b8c]:c.sub a0, a1<br> [0x80000b8e]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFE800000|- rs2_val == -8388609<br> - rs1_val == -33554433<br>                                                                                     |[0x80000ba2]:c.sub a0, a1<br> [0x80000ba4]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0xFFFFFFFFFBFDFFFF|- rs1_val == -67108865<br>                                                                                                               |[0x80000bb4]:c.sub a0, a1<br> [0x80000bb6]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0x0007FFFFF8000000|- rs1_val == -134217729<br>                                                                                                              |[0x80000bce]:c.sub a0, a1<br> [0x80000bd0]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0x7FFFFFFFF0000000|- rs1_val == -268435457<br>                                                                                                              |[0x80000be8]:c.sub a0, a1<br> [0x80000bea]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0xFFFFFFFBDFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -536870913<br>                                                                                 |[0x80000bfe]:c.sub a0, a1<br> [0x80000c00]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0x0000007FC0000000|- rs1_val == -1073741825<br>                                                                                                             |[0x80000c18]:c.sub a0, a1<br> [0x80000c1a]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0xFFFFEFFF7FFFFFFF|- rs1_val == -2147483649<br>                                                                                                             |[0x80000c32]:c.sub a0, a1<br> [0x80000c34]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFEFFFFFFF8|- rs1_val == -4294967297<br>                                                                                                             |[0x80000c48]:c.sub a0, a1<br> [0x80000c4a]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0xFFFFFFFE20000000|- rs2_val == -536870913<br> - rs1_val == -8589934593<br>                                                                                 |[0x80000c62]:c.sub a0, a1<br> [0x80000c64]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0xFF7FFFFBFFFFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -17179869185<br>                                                                         |[0x80000c7c]:c.sub a0, a1<br> [0x80000c7e]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0xFFFFFFF7FEFFFFFF|- rs2_val == 16777216<br> - rs1_val == -34359738369<br>                                                                                  |[0x80000c92]:c.sub a0, a1<br> [0x80000c94]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0xFFEFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                            |[0x80000cac]:c.sub a0, a1<br> [0x80000cae]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0xFFFFFFE000080000|- rs2_val == -524289<br> - rs1_val == -137438953473<br>                                                                                  |[0x80000cc6]:c.sub a0, a1<br> [0x80000cc8]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0xFFFFFDBFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                           |[0x80000ce0]:c.sub a0, a1<br> [0x80000ce2]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0xFFFFFF8000000007|- rs1_val == -549755813889<br>                                                                                                           |[0x80000cf6]:c.sub a0, a1<br> [0x80000cf8]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0x00001F0000000000|- rs2_val == -35184372088833<br> - rs1_val == -1099511627777<br>                                                                         |[0x80000d14]:c.sub a0, a1<br> [0x80000d16]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0xFFFFBDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                          |[0x80000d2e]:c.sub a0, a1<br> [0x80000d30]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0xFFFFFBFFFFFFFFFC|- rs1_val == -4398046511105<br>                                                                                                          |[0x80000d44]:c.sub a0, a1<br> [0x80000d46]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0xFFFFF7DFFFFFFFFF|- rs2_val == 137438953472<br> - rs1_val == -8796093022209<br>                                                                            |[0x80000d5e]:c.sub a0, a1<br> [0x80000d60]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0x3FFFF00000000000|- rs1_val == -17592186044417<br>                                                                                                         |[0x80000d7c]:c.sub a0, a1<br> [0x80000d7e]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0x000FE00000000000|- rs2_val == -4503599627370497<br> - rs1_val == -35184372088833<br>                                                                      |[0x80000d9a]:c.sub a0, a1<br> [0x80000d9c]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFFF808000000000|- rs1_val == -140737488355329<br>                                                                                                        |[0x80000db8]:c.sub a0, a1<br> [0x80000dba]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFFEFFFFFFFFFFFA|- rs1_val == -281474976710657<br>                                                                                                        |[0x80000dce]:c.sub a0, a1<br> [0x80000dd0]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0xFFFDFFFFFFFFFEFF|- rs2_val == 256<br> - rs1_val == -562949953421313<br>                                                                                   |[0x80000de4]:c.sub a0, a1<br> [0x80000de6]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0x03FC000000000000|- rs1_val == -1125899906842625<br>                                                                                                       |[0x80000e02]:c.sub a0, a1<br> [0x80000e04]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0xFFF8020000000000|- rs2_val == -2199023255553<br> - rs1_val == -2251799813685249<br>                                                                       |[0x80000e20]:c.sub a0, a1<br> [0x80000e22]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0xBFDFFFFFFFFFFFFF|- rs2_val == 4611686018427387904<br> - rs1_val == -9007199254740993<br>                                                                  |[0x80000e3a]:c.sub a0, a1<br> [0x80000e3c]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0xFFC1000000000000|- rs1_val == -18014398509481985<br>                                                                                                      |[0x80000e58]:c.sub a0, a1<br> [0x80000e5a]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0xBF7FFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                      |[0x80000e72]:c.sub a0, a1<br> [0x80000e74]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0xFDFFFFFFFFFFFFF9|- rs1_val == -144115188075855873<br>                                                                                                     |[0x80000e88]:c.sub a0, a1<br> [0x80000e8a]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0xFC00040000000000|- rs2_val == -4398046511105<br> - rs1_val == -288230376151711745<br>                                                                     |[0x80000ea6]:c.sub a0, a1<br> [0x80000ea8]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0xF808000000000000|- rs1_val == -576460752303423489<br>                                                                                                     |[0x80000ec4]:c.sub a0, a1<br> [0x80000ec6]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0xEFFF7FFFFFFFFFFF|- rs2_val == 140737488355328<br> - rs1_val == -1152921504606846977<br>                                                                   |[0x80000ede]:c.sub a0, a1<br> [0x80000ee0]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0xDFFFFFFFFFFFFFF8|- rs1_val == -2305843009213693953<br>                                                                                                    |[0x80000ef4]:c.sub a0, a1<br> [0x80000ef6]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xC000004000000000|- rs1_val == -4611686018427387905<br>                                                                                                    |[0x80000f12]:c.sub a0, a1<br> [0x80000f14]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0x5555555555555553|- rs2_val == 2<br> - rs1_val == 6148914691236517205<br>                                                                                  |[0x80000f3c]:c.sub a0, a1<br> [0x80000f3e]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0xAAAAAAAAAAAAAAA7|- rs1_val == -6148914691236517206<br>                                                                                                    |[0x80000f66]:c.sub a0, a1<br> [0x80000f68]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0x00000000000000FC|- rs2_val == 4<br>                                                                                                                       |[0x80000f74]:c.sub a0, a1<br> [0x80000f76]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0x00000000000003F8|- rs2_val == 8<br>                                                                                                                       |[0x80000f82]:c.sub a0, a1<br> [0x80000f84]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0x007FFFFFFFFFFFF0|- rs2_val == 16<br>                                                                                                                      |[0x80000f94]:c.sub a0, a1<br> [0x80000f96]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0xFFFFFFFFF7FFFFBF|- rs2_val == 64<br>                                                                                                                      |[0x80000fa6]:c.sub a0, a1<br> [0x80000fa8]:sd a0, 1096(ra)<br> |
| 139|[0x80004658]<br>0xFFFFFFFFFFFFFF78|- rs2_val == 128<br>                                                                                                                     |[0x80000fb4]:c.sub a0, a1<br> [0x80000fb6]:sd a0, 1104(ra)<br> |
| 140|[0x80004660]<br>0xFFFFFFFFFFFFF040|- rs2_val == 4096<br>                                                                                                                    |[0x80000fc2]:c.sub a0, a1<br> [0x80000fc4]:sd a0, 1112(ra)<br> |
| 141|[0x80004668]<br>0xFFFEFFFFFFFFDFFF|- rs2_val == 8192<br>                                                                                                                    |[0x80000fd8]:c.sub a0, a1<br> [0x80000fda]:sd a0, 1120(ra)<br> |
| 142|[0x80004670]<br>0xF7FFFFFFFFFF7FFF|- rs2_val == 32768<br>                                                                                                                   |[0x80000fee]:c.sub a0, a1<br> [0x80000ff0]:sd a0, 1128(ra)<br> |
| 143|[0x80004678]<br>0xFFF7FFFFFFFEFFFF|- rs2_val == 65536<br>                                                                                                                   |[0x80001004]:c.sub a0, a1<br> [0x80001006]:sd a0, 1136(ra)<br> |
| 144|[0x80004680]<br>0x0000000003FC0000|- rs2_val == 262144<br>                                                                                                                  |[0x80001012]:c.sub a0, a1<br> [0x80001014]:sd a0, 1144(ra)<br> |
| 145|[0x80004688]<br>0xFFFFFFFBFFDFFFFF|- rs2_val == 2097152<br>                                                                                                                 |[0x80001028]:c.sub a0, a1<br> [0x8000102a]:sd a0, 1152(ra)<br> |
| 146|[0x80004690]<br>0x00000001FFC00000|- rs2_val == 4194304<br>                                                                                                                 |[0x8000103a]:c.sub a0, a1<br> [0x8000103c]:sd a0, 1160(ra)<br> |
| 147|[0x80004698]<br>0x00000001F8000000|- rs2_val == 134217728<br>                                                                                                               |[0x8000104c]:c.sub a0, a1<br> [0x8000104e]:sd a0, 1168(ra)<br> |
| 148|[0x800046a0]<br>0x03FFFFFFE0000000|- rs2_val == 536870912<br>                                                                                                               |[0x8000105e]:c.sub a0, a1<br> [0x80001060]:sd a0, 1176(ra)<br> |
| 149|[0x800046a8]<br>0x3FFFFFFF80000000|- rs2_val == 2147483648<br>                                                                                                              |[0x80001074]:c.sub a0, a1<br> [0x80001076]:sd a0, 1184(ra)<br> |
| 150|[0x800046b0]<br>0xFFFFFFFF00000000|- rs2_val == 4294967296<br>                                                                                                              |[0x80001086]:c.sub a0, a1<br> [0x80001088]:sd a0, 1192(ra)<br> |
| 151|[0x800046b8]<br>0xFFFFFFEFFFBFFFFF|- rs2_val == 68719476736<br>                                                                                                             |[0x8000109c]:c.sub a0, a1<br> [0x8000109e]:sd a0, 1200(ra)<br> |
| 152|[0x800046c0]<br>0xFFFFFFC000002000|- rs2_val == 274877906944<br>                                                                                                            |[0x800010ae]:c.sub a0, a1<br> [0x800010b0]:sd a0, 1208(ra)<br> |
| 153|[0x800046c8]<br>0xFFFFDF7FFFFFFFFF|- rs2_val == 549755813888<br>                                                                                                            |[0x800010c8]:c.sub a0, a1<br> [0x800010ca]:sd a0, 1216(ra)<br> |
| 154|[0x800046d0]<br>0xFEFFFFFFFFFFFFF8|- rs2_val == 72057594037927936<br>                                                                                                       |[0x800010da]:c.sub a0, a1<br> [0x800010dc]:sd a0, 1224(ra)<br> |
| 155|[0x800046d8]<br>0xF800000000000005|- rs2_val == 576460752303423488<br>                                                                                                      |[0x800010ec]:c.sub a0, a1<br> [0x800010ee]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0xE000000000000001|- rs2_val == -2<br>                                                                                                                      |[0x8000111c]:c.sub a0, a1<br> [0x8000111e]:sd a0, 1248(ra)<br> |
| 157|[0x800046f0]<br>0x0000000008000011|- rs2_val == -17<br>                                                                                                                     |[0x8000112a]:c.sub a0, a1<br> [0x8000112c]:sd a0, 1256(ra)<br> |
| 158|[0x800046f8]<br>0x0000000000200021|- rs2_val == -33<br>                                                                                                                     |[0x80001138]:c.sub a0, a1<br> [0x8000113a]:sd a0, 1264(ra)<br> |
| 159|[0x80004700]<br>0x0000000000010041|- rs2_val == -65<br>                                                                                                                     |[0x80001146]:c.sub a0, a1<br> [0x80001148]:sd a0, 1272(ra)<br> |
| 160|[0x80004708]<br>0xFFF0000000000080|- rs2_val == -129<br>                                                                                                                    |[0x8000115c]:c.sub a0, a1<br> [0x8000115e]:sd a0, 1280(ra)<br> |
| 161|[0x80004710]<br>0xFFFFFFFFE0000200|- rs2_val == -513<br>                                                                                                                    |[0x8000116e]:c.sub a0, a1<br> [0x80001170]:sd a0, 1288(ra)<br> |
| 162|[0x80004718]<br>0x0002000000000401|- rs2_val == -1025<br>                                                                                                                   |[0x80001180]:c.sub a0, a1<br> [0x80001182]:sd a0, 1296(ra)<br> |
| 163|[0x80004720]<br>0x0000000000001801|- rs2_val == -4097<br>                                                                                                                   |[0x80001196]:c.sub a0, a1<br> [0x80001198]:sd a0, 1304(ra)<br> |
| 164|[0x80004728]<br>0xFFFFFFFFFFFF8000|- rs2_val == -32769<br>                                                                                                                  |[0x800011ac]:c.sub a0, a1<br> [0x800011ae]:sd a0, 1312(ra)<br> |
| 165|[0x80004730]<br>0x0000000000000000|- rs2_val == -131073<br>                                                                                                                 |[0x800011c2]:c.sub a0, a1<br> [0x800011c4]:sd a0, 1320(ra)<br> |
| 166|[0x80004738]<br>0x0040000000100001|- rs2_val == -1048577<br>                                                                                                                |[0x800011d8]:c.sub a0, a1<br> [0x800011da]:sd a0, 1328(ra)<br> |
| 167|[0x80004740]<br>0x00000000001FFFF9|- rs2_val == -2097153<br>                                                                                                                |[0x800011ea]:c.sub a0, a1<br> [0x800011ec]:sd a0, 1336(ra)<br> |
| 168|[0x80004748]<br>0x0000000000400004|- rs2_val == -4194305<br>                                                                                                                |[0x800011fc]:c.sub a0, a1<br> [0x800011fe]:sd a0, 1344(ra)<br> |
| 169|[0x80004750]<br>0xFFFFFFFC01000000|- rs2_val == -16777217<br>                                                                                                               |[0x80001216]:c.sub a0, a1<br> [0x80001218]:sd a0, 1352(ra)<br> |
| 170|[0x80004758]<br>0x0000000002000401|- rs2_val == -33554433<br>                                                                                                               |[0x80001228]:c.sub a0, a1<br> [0x8000122a]:sd a0, 1360(ra)<br> |
| 171|[0x80004760]<br>0x0000000004000002|- rs2_val == -67108865<br>                                                                                                               |[0x8000123a]:c.sub a0, a1<br> [0x8000123c]:sd a0, 1368(ra)<br> |
| 172|[0x80004768]<br>0x0000000080000021|- rs2_val == -2147483649<br>                                                                                                             |[0x80001250]:c.sub a0, a1<br> [0x80001252]:sd a0, 1376(ra)<br> |
| 173|[0x80004770]<br>0x0000000100000001|- rs2_val == -4294967297<br>                                                                                                             |[0x80001266]:c.sub a0, a1<br> [0x80001268]:sd a0, 1384(ra)<br> |
| 174|[0x80004778]<br>0x0000000600000001|- rs2_val == -8589934593<br>                                                                                                             |[0x80001280]:c.sub a0, a1<br> [0x80001282]:sd a0, 1392(ra)<br> |
| 175|[0x80004780]<br>0x0000001000000003|- rs2_val == -68719476737<br>                                                                                                            |[0x80001296]:c.sub a0, a1<br> [0x80001298]:sd a0, 1400(ra)<br> |
| 176|[0x80004788]<br>0x000000FFFFFFFFFA|- rs2_val == -1099511627777<br>                                                                                                          |[0x800012ac]:c.sub a0, a1<br> [0x800012ae]:sd a0, 1408(ra)<br> |
| 177|[0x80004790]<br>0xFFFFFC2000000000|- rs2_val == 4398046511104<br>                                                                                                           |[0x800012c2]:c.sub a0, a1<br> [0x800012c4]:sd a0, 1416(ra)<br> |
| 178|[0x80004798]<br>0x0000080000000081|- rs2_val == -8796093022209<br>                                                                                                          |[0x800012d8]:c.sub a0, a1<br> [0x800012da]:sd a0, 1424(ra)<br> |
| 179|[0x800047a0]<br>0xFFFFE00000000020|- rs2_val == 35184372088832<br>                                                                                                          |[0x800012ea]:c.sub a0, a1<br> [0x800012ec]:sd a0, 1432(ra)<br> |
| 180|[0x800047a8]<br>0x0020400000000001|- rs2_val == -70368744177665<br>                                                                                                         |[0x80001304]:c.sub a0, a1<br> [0x80001306]:sd a0, 1440(ra)<br> |
| 181|[0x800047b0]<br>0x0FFE000000000000|- rs2_val == 562949953421312<br>                                                                                                         |[0x8000131a]:c.sub a0, a1<br> [0x8000131c]:sd a0, 1448(ra)<br> |
| 182|[0x800047b8]<br>0xBFFC000000000000|- rs2_val == 1125899906842624<br>                                                                                                        |[0x80001330]:c.sub a0, a1<br> [0x80001332]:sd a0, 1456(ra)<br> |
| 183|[0x800047c0]<br>0xFFF7FFFFFFFFFDFF|- rs2_val == 2251799813685248<br>                                                                                                        |[0x80001342]:c.sub a0, a1<br> [0x80001344]:sd a0, 1464(ra)<br> |
| 184|[0x800047c8]<br>0x2000000000004001|- rs2_val == -16385<br>                                                                                                                  |[0x80001358]:c.sub a0, a1<br> [0x8000135a]:sd a0, 1472(ra)<br> |
