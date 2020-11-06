
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001380')]      |
| SIG_REGION                | [('0x80004208', '0x800047d0', '185 dwords')]      |
| COV_LABELS                | cand      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cand-01.S/cand-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 185      |
| STAT1                     | 183      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010ea]:c.and a0, a1
      [0x800010ec]:sd a0, 1272(ra)
 -- Signature Address: 0x80004700 Data: 0x0008000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : c.and
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -2049
      - rs1_val == 2251799813685248




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000136c]:c.and a0, a1
      [0x8000136e]:sd a0, 1472(ra)
 -- Signature Address: 0x800047c8 Data: 0xFFFFDFFFFFFFF7FF
 -- Redundant Coverpoints hit by the op
      - opcode : c.and
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -35184372088833
      - rs1_val == -2049






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

|s.no|            signature             |                                                                coverpoints                                                                |                             code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004208]<br>0x0000000000000100|- opcode : c.and<br> - rs1 : x9<br> - rs2 : x15<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 256<br>                                |[0x800003a0]:c.and s1, a5<br> [0x800003a2]:sd s1, 0(ra)<br>    |
|   2|[0x80004210]<br>0xFFFFFFFFFFFFF7FF|- rs1 : x13<br> - rs2 : x13<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -2049<br> - rs1_val == -2049<br>                           |[0x800003ba]:c.and a3, a3<br> [0x800003bc]:sd a3, 8(ra)<br>    |
|   3|[0x80004218]<br>0x8000000000000000|- rs1 : x8<br> - rs2 : x9<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -257<br> - rs1_val == -9223372036854775808<br>                  |[0x800003cc]:c.and s0, s1<br> [0x800003ce]:sd fp, 16(ra)<br>   |
|   4|[0x80004220]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val == 32<br>                                                                      |[0x800003da]:c.and a2, s0<br> [0x800003dc]:sd a2, 24(ra)<br>   |
|   5|[0x80004228]<br>0x77FFFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x11<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -576460752303423489<br> - rs1_val == 9223372036854775807<br> |[0x800003f8]:c.and a4, a1<br> [0x800003fa]:sd a4, 32(ra)<br>   |
|   6|[0x80004230]<br>0x0000000000000001|- rs1 : x10<br> - rs2 : x14<br> - rs1_val == 1<br> - rs2_val == -36028797018963969<br>                                                     |[0x8000040e]:c.and a0, a4<br> [0x80000410]:sd a0, 40(ra)<br>   |
|   7|[0x80004238]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                      |[0x80000428]:c.and a5, a0<br> [0x8000042a]:sd a5, 48(ra)<br>   |
|   8|[0x80004240]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x12<br> - rs2_val == 0<br> - rs1_val == -576460752303423489<br>                                                    |[0x8000043e]:c.and a1, a2<br> [0x80000440]:sd a1, 56(ra)<br>   |
|   9|[0x80004248]<br>0x7FFFFFFFFFBFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -4194305<br>                                            |[0x80000458]:c.and a0, a1<br> [0x8000045a]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0x0000000000000001|- rs2_val == 1<br> - rs1_val == -1073741825<br>                                                                                            |[0x8000046a]:c.and a0, a1<br> [0x8000046c]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0x0000000000000002|- rs2_val == 2<br> - rs1_val == 2<br>                                                                                                      |[0x80000478]:c.and a0, a1<br> [0x8000047a]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0x0000000000000004|- rs2_val == -33554433<br> - rs1_val == 4<br>                                                                                              |[0x8000048a]:c.and a0, a1<br> [0x8000048c]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0x0000000000000000|- rs2_val == 9007199254740992<br> - rs1_val == 8<br>                                                                                       |[0x8000049c]:c.and a0, a1<br> [0x8000049e]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0x0000000000000010|- rs2_val == -1025<br> - rs1_val == 16<br>                                                                                                 |[0x800004aa]:c.and a0, a1<br> [0x800004ac]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0x0000000000000020|- rs2_val == -4097<br> - rs1_val == 32<br>                                                                                                 |[0x800004bc]:c.and a0, a1<br> [0x800004be]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0x0000000000000000|- rs2_val == 1024<br> - rs1_val == 64<br>                                                                                                  |[0x800004ca]:c.and a0, a1<br> [0x800004cc]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0x0000000000000080|- rs2_val == -2097153<br> - rs1_val == 128<br>                                                                                             |[0x800004dc]:c.and a0, a1<br> [0x800004de]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0x0000000000000100|- rs2_val == -513<br> - rs1_val == 256<br>                                                                                                 |[0x800004ea]:c.and a0, a1<br> [0x800004ec]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0x0000000000000200|- rs2_val == -72057594037927937<br> - rs1_val == 512<br>                                                                                   |[0x80000500]:c.and a0, a1<br> [0x80000502]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0x0000000000000400|- rs2_val == -1048577<br> - rs1_val == 1024<br>                                                                                            |[0x80000512]:c.and a0, a1<br> [0x80000514]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0x0000000000000000|- rs2_val == 137438953472<br> - rs1_val == 2048<br>                                                                                        |[0x80000528]:c.and a0, a1<br> [0x8000052a]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0x0000000000001000|- rs1_val == 4096<br>                                                                                                                      |[0x80000536]:c.and a0, a1<br> [0x80000538]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0x0000000000002000|- rs2_val == -2147483649<br> - rs1_val == 8192<br>                                                                                         |[0x8000054c]:c.and a0, a1<br> [0x8000054e]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0x0000000000000000|- rs2_val == 70368744177664<br> - rs1_val == 16384<br>                                                                                     |[0x8000055e]:c.and a0, a1<br> [0x80000560]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0x0000000000008000|- rs2_val == -129<br> - rs1_val == 32768<br>                                                                                               |[0x8000056c]:c.and a0, a1<br> [0x8000056e]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0x0000000000010000|- rs2_val == -65<br> - rs1_val == 65536<br>                                                                                                |[0x8000057a]:c.and a0, a1<br> [0x8000057c]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0x0000000000020000|- rs2_val == -2<br> - rs1_val == 131072<br>                                                                                                |[0x80000588]:c.and a0, a1<br> [0x8000058a]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0x0000000000040000|- rs2_val == -144115188075855873<br> - rs1_val == 262144<br>                                                                               |[0x8000059e]:c.and a0, a1<br> [0x800005a0]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0x0000000000000000|- rs2_val == 2097152<br> - rs1_val == 524288<br>                                                                                           |[0x800005ac]:c.and a0, a1<br> [0x800005ae]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0x0000000000100000|- rs1_val == 1048576<br>                                                                                                                   |[0x800005ba]:c.and a0, a1<br> [0x800005bc]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0x0000000000000000|- rs2_val == 16<br> - rs1_val == 2097152<br>                                                                                               |[0x800005c8]:c.and a0, a1<br> [0x800005ca]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0x0000000000000000|- rs2_val == 576460752303423488<br> - rs1_val == 4194304<br>                                                                               |[0x800005da]:c.and a0, a1<br> [0x800005dc]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0x0000000000800000|- rs2_val == -32769<br> - rs1_val == 8388608<br>                                                                                           |[0x800005ec]:c.and a0, a1<br> [0x800005ee]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                  |[0x800005fe]:c.and a0, a1<br> [0x80000600]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0x0000000000000000|- rs2_val == 72057594037927936<br> - rs1_val == 33554432<br>                                                                               |[0x80000610]:c.and a0, a1<br> [0x80000612]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0x0000000004000000|- rs1_val == 67108864<br>                                                                                                                  |[0x80000622]:c.and a0, a1<br> [0x80000624]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0x0000000008000000|- rs1_val == 134217728<br>                                                                                                                 |[0x80000630]:c.and a0, a1<br> [0x80000632]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0x0000000010000000|- rs2_val == -1152921504606846977<br> - rs1_val == 268435456<br>                                                                           |[0x80000646]:c.and a0, a1<br> [0x80000648]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                 |[0x80000654]:c.and a0, a1<br> [0x80000656]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0x0000000000000000|- rs2_val == 536870912<br> - rs1_val == 1073741824<br>                                                                                     |[0x80000662]:c.and a0, a1<br> [0x80000664]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0x0000000000000000|- rs2_val == 33554432<br> - rs1_val == 2147483648<br>                                                                                      |[0x80000674]:c.and a0, a1<br> [0x80000676]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                |[0x8000068a]:c.and a0, a1<br> [0x8000068c]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0x0000000200000000|- rs2_val == -18014398509481985<br> - rs1_val == 8589934592<br>                                                                            |[0x800006a4]:c.and a0, a1<br> [0x800006a6]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                               |[0x800006ba]:c.and a0, a1<br> [0x800006bc]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                               |[0x800006d0]:c.and a0, a1<br> [0x800006d2]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0x0000001000000000|- rs2_val == -17<br> - rs1_val == 68719476736<br>                                                                                          |[0x800006e2]:c.and a0, a1<br> [0x800006e4]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0x0000002000000000|- rs2_val == -4503599627370497<br> - rs1_val == 137438953472<br>                                                                           |[0x800006fc]:c.and a0, a1<br> [0x800006fe]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0x0000004000000000|- rs2_val == -549755813889<br> - rs1_val == 274877906944<br>                                                                               |[0x80000716]:c.and a0, a1<br> [0x80000718]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                              |[0x80000728]:c.and a0, a1<br> [0x8000072a]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0x0000010000000000|- rs1_val == 1099511627776<br>                                                                                                             |[0x8000073a]:c.and a0, a1<br> [0x8000073c]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                             |[0x8000074c]:c.and a0, a1<br> [0x8000074e]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0x0000040000000000|- rs2_val == 4398046511104<br> - rs1_val == 4398046511104<br>                                                                              |[0x80000762]:c.and a0, a1<br> [0x80000764]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0x0000080000000000|- rs2_val == -3<br> - rs1_val == 8796093022208<br>                                                                                         |[0x80000774]:c.and a0, a1<br> [0x80000776]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                            |[0x80000786]:c.and a0, a1<br> [0x80000788]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0x0000000000000000|- rs2_val == 281474976710656<br> - rs1_val == 35184372088832<br>                                                                           |[0x8000079c]:c.and a0, a1<br> [0x8000079e]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                            |[0x800007b2]:c.and a0, a1<br> [0x800007b4]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0x0000000000000000|- rs2_val == 65536<br> - rs1_val == 140737488355328<br>                                                                                    |[0x800007c4]:c.and a0, a1<br> [0x800007c6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0001000000000000|- rs1_val == 281474976710656<br>                                                                                                           |[0x800007d6]:c.and a0, a1<br> [0x800007d8]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                           |[0x800007e8]:c.and a0, a1<br> [0x800007ea]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                          |[0x800007fe]:c.and a0, a1<br> [0x80000800]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0x0008000000000000|- rs2_val == -4398046511105<br> - rs1_val == 2251799813685248<br>                                                                          |[0x80000818]:c.and a0, a1<br> [0x8000081a]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0x0010000000000000|- rs2_val == -35184372088833<br> - rs1_val == 4503599627370496<br>                                                                         |[0x80000832]:c.and a0, a1<br> [0x80000834]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0x0020000000000000|- rs1_val == 9007199254740992<br>                                                                                                          |[0x80000844]:c.and a0, a1<br> [0x80000846]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0x0040000000000000|- rs2_val == -1073741825<br> - rs1_val == 18014398509481984<br>                                                                            |[0x8000085a]:c.and a0, a1<br> [0x8000085c]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0x0080000000000000|- rs1_val == 36028797018963968<br>                                                                                                         |[0x80000874]:c.and a0, a1<br> [0x80000876]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0x0000000000000000|- rs2_val == 17592186044416<br> - rs1_val == 72057594037927936<br>                                                                         |[0x8000088a]:c.and a0, a1<br> [0x8000088c]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                        |[0x8000089c]:c.and a0, a1<br> [0x8000089e]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0x0000000000000000|- rs2_val == 1099511627776<br> - rs1_val == 288230376151711744<br>                                                                         |[0x800008b2]:c.and a0, a1<br> [0x800008b4]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0x0800000000000000|- rs2_val == -9<br> - rs1_val == 576460752303423488<br>                                                                                    |[0x800008c4]:c.and a0, a1<br> [0x800008c6]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0x1000000000000000|- rs2_val == -68719476737<br> - rs1_val == 1152921504606846976<br>                                                                         |[0x800008de]:c.and a0, a1<br> [0x800008e0]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0x2000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                       |[0x800008f0]:c.and a0, a1<br> [0x800008f2]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0x4000000000000000|- rs2_val == -34359738369<br> - rs1_val == 4611686018427387904<br>                                                                         |[0x8000090a]:c.and a0, a1<br> [0x8000090c]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0x0000200000000000|- rs2_val == 35184372088832<br> - rs1_val == -2<br>                                                                                        |[0x8000091c]:c.and a0, a1<br> [0x8000091e]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0x0100000000000000|- rs1_val == -3<br>                                                                                                                        |[0x8000092e]:c.and a0, a1<br> [0x80000930]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0x0000000000000040|- rs2_val == 64<br> - rs1_val == -5<br>                                                                                                    |[0x8000093c]:c.and a0, a1<br> [0x8000093e]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0x0000000004000000|- rs2_val == 67108864<br> - rs1_val == -9<br>                                                                                              |[0x8000094a]:c.and a0, a1<br> [0x8000094c]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0xBFFFFFFFFFFFFFEF|- rs2_val == -4611686018427387905<br> - rs1_val == -17<br>                                                                                 |[0x80000960]:c.and a0, a1<br> [0x80000962]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0xFFFFFFFFFFFFFF5F|- rs1_val == -33<br>                                                                                                                       |[0x8000096e]:c.and a0, a1<br> [0x80000970]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0xFDFFFFFFFFFFFFBF|- rs1_val == -65<br>                                                                                                                       |[0x80000984]:c.and a0, a1<br> [0x80000986]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0xFFFFFFFFFFFFFF7D|- rs1_val == -129<br>                                                                                                                      |[0x80000992]:c.and a0, a1<br> [0x80000994]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0xFFFFFFFFFFFFFEFC|- rs1_val == -257<br>                                                                                                                      |[0x800009a0]:c.and a0, a1<br> [0x800009a2]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0xFFFFFFFFFFFFFDFC|- rs1_val == -513<br>                                                                                                                      |[0x800009ae]:c.and a0, a1<br> [0x800009b0]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0x0000000010000000|- rs2_val == 268435456<br> - rs1_val == -1025<br>                                                                                          |[0x800009bc]:c.and a0, a1<br> [0x800009be]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0xFBFFFFEFFFFFFFFF|- rs2_val == -288230376151711745<br> - rs1_val == -68719476737<br>                                                                         |[0x800009da]:c.and a0, a1<br> [0x800009dc]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0x0000000000200000|- rs2_val == -2305843009213693953<br>                                                                                                      |[0x800009f0]:c.and a0, a1<br> [0x800009f2]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0x5555555555555554|- rs2_val == 6148914691236517205<br>                                                                                                       |[0x80000a1a]:c.and a0, a1<br> [0x80000a1c]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0x0000000020000000|- rs2_val == -6148914691236517206<br>                                                                                                      |[0x80000a44]:c.and a0, a1<br> [0x80000a46]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0xFFFFFFFFFFFFEFFB|- rs2_val == -5<br> - rs1_val == -4097<br>                                                                                                 |[0x80000a56]:c.and a0, a1<br> [0x80000a58]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0x0000000000400000|- rs2_val == 4194304<br> - rs1_val == -8193<br>                                                                                            |[0x80000a68]:c.and a0, a1<br> [0x80000a6a]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0xF7FFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                    |[0x80000a82]:c.and a0, a1<br> [0x80000a84]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0xFFFF7FFFFFFF7FFF|- rs2_val == -140737488355329<br> - rs1_val == -32769<br>                                                                                  |[0x80000a9c]:c.and a0, a1<br> [0x80000a9e]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0x0000000001000000|- rs2_val == 16777216<br> - rs1_val == -65537<br>                                                                                          |[0x80000aae]:c.and a0, a1<br> [0x80000ab0]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0xFFFFFFFFFFFCFFFF|- rs2_val == -65537<br> - rs1_val == -131073<br>                                                                                           |[0x80000ac4]:c.and a0, a1<br> [0x80000ac6]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0xFFF7FFFFFFFBFFFF|- rs2_val == -2251799813685249<br> - rs1_val == -262145<br>                                                                                |[0x80000ade]:c.and a0, a1<br> [0x80000ae0]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0x0000000000001000|- rs2_val == 4096<br> - rs1_val == -524289<br>                                                                                             |[0x80000af0]:c.and a0, a1<br> [0x80000af2]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0x0000001000000000|- rs2_val == 68719476736<br> - rs1_val == -1048577<br>                                                                                     |[0x80000b06]:c.and a0, a1<br> [0x80000b08]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFFDFFFEF|- rs1_val == -2097153<br>                                                                                                                  |[0x80000b18]:c.and a0, a1<br> [0x80000b1a]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFF7FEFFF|- rs1_val == -8388609<br>                                                                                                                  |[0x80000b2e]:c.and a0, a1<br> [0x80000b30]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0x0000000000000000|- rs1_val == -16777217<br>                                                                                                                 |[0x80000b40]:c.and a0, a1<br> [0x80000b42]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0x0002000000000000|- rs2_val == 562949953421312<br> - rs1_val == -33554433<br>                                                                                |[0x80000b56]:c.and a0, a1<br> [0x80000b58]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br> - rs1_val == -67108865<br>                                                                                      |[0x80000b6c]:c.and a0, a1<br> [0x80000b6e]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0x0000000001000000|- rs1_val == -134217729<br>                                                                                                                |[0x80000b7e]:c.and a0, a1<br> [0x80000b80]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0x0010000000000000|- rs2_val == 4503599627370496<br> - rs1_val == -268435457<br>                                                                              |[0x80000b94]:c.and a0, a1<br> [0x80000b96]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0x0000010000000000|- rs1_val == -536870913<br>                                                                                                                |[0x80000baa]:c.and a0, a1<br> [0x80000bac]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFB7FFFFFFF|- rs2_val == -17179869185<br> - rs1_val == -2147483649<br>                                                                                 |[0x80000bc8]:c.and a0, a1<br> [0x80000bca]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0x0000000400000000|- rs2_val == 17179869184<br> - rs1_val == -4294967297<br>                                                                                  |[0x80000be2]:c.and a0, a1<br> [0x80000be4]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0x0000001000000000|- rs1_val == -8589934593<br>                                                                                                               |[0x80000bfc]:c.and a0, a1<br> [0x80000bfe]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0x0000004000000000|- rs2_val == 274877906944<br> - rs1_val == -17179869185<br>                                                                                |[0x80000c16]:c.and a0, a1<br> [0x80000c18]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0x0040000000000000|- rs2_val == 18014398509481984<br> - rs1_val == -34359738369<br>                                                                           |[0x80000c30]:c.and a0, a1<br> [0x80000c32]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0xFFFFFFDFFFFFFFFA|- rs1_val == -137438953473<br>                                                                                                             |[0x80000c46]:c.and a0, a1<br> [0x80000c48]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0x0001000000000000|- rs1_val == -274877906945<br>                                                                                                             |[0x80000c60]:c.and a0, a1<br> [0x80000c62]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0x0000001000000000|- rs1_val == -549755813889<br>                                                                                                             |[0x80000c7a]:c.and a0, a1<br> [0x80000c7c]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0xFFBFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                            |[0x80000c98]:c.and a0, a1<br> [0x80000c9a]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0x0000000200000000|- rs2_val == 8589934592<br> - rs1_val == -2199023255553<br>                                                                                |[0x80000cb2]:c.and a0, a1<br> [0x80000cb4]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0x0000020000000000|- rs2_val == 2199023255552<br> - rs1_val == -4398046511105<br>                                                                             |[0x80000ccc]:c.and a0, a1<br> [0x80000cce]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0xFF7FF7FFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                            |[0x80000cea]:c.and a0, a1<br> [0x80000cec]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0xFFFFEFFFFFFFBFFF|- rs2_val == -16385<br> - rs1_val == -17592186044417<br>                                                                                   |[0x80000d04]:c.and a0, a1<br> [0x80000d06]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0xFFFFDF7FFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                           |[0x80000d22]:c.and a0, a1<br> [0x80000d24]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFBFBFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                           |[0x80000d40]:c.and a0, a1<br> [0x80000d42]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFFF7FFFFFFF7FFF|- rs1_val == -140737488355329<br>                                                                                                          |[0x80000d5a]:c.and a0, a1<br> [0x80000d5c]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0x0000000000000006|- rs1_val == -281474976710657<br>                                                                                                          |[0x80000d70]:c.and a0, a1<br> [0x80000d72]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0x0000000020000000|- rs1_val == -562949953421313<br>                                                                                                          |[0x80000d86]:c.and a0, a1<br> [0x80000d88]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0xFFFBFFFFFFFFFFFC|- rs1_val == -1125899906842625<br>                                                                                                         |[0x80000d9c]:c.and a0, a1<br> [0x80000d9e]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                         |[0x80000db2]:c.and a0, a1<br> [0x80000db4]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0x0200000000000000|- rs2_val == 144115188075855872<br> - rs1_val == -4503599627370497<br>                                                                     |[0x80000dcc]:c.and a0, a1<br> [0x80000dce]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0x0080000000000000|- rs2_val == 36028797018963968<br> - rs1_val == -9007199254740993<br>                                                                      |[0x80000de6]:c.and a0, a1<br> [0x80000de8]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0xFF7FFFFFFFFDFFFF|- rs2_val == -131073<br> - rs1_val == -36028797018963969<br>                                                                               |[0x80000e00]:c.and a0, a1<br> [0x80000e02]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0xAAAAAAAAAAAAAAAA|- rs1_val == -72057594037927937<br>                                                                                                        |[0x80000e32]:c.and a0, a1<br> [0x80000e34]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0x0000000004000000|- rs1_val == -144115188075855873<br>                                                                                                       |[0x80000e48]:c.and a0, a1<br> [0x80000e4a]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0xFB7FFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                       |[0x80000e66]:c.and a0, a1<br> [0x80000e68]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0xFFDFFFFFFFFFFF7F|- rs2_val == -9007199254740993<br>                                                                                                         |[0x80000e7c]:c.and a0, a1<br> [0x80000e7e]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xEFFFFFFFFF7FFFFF|- rs2_val == -8388609<br> - rs1_val == -1152921504606846977<br>                                                                            |[0x80000e96]:c.and a0, a1<br> [0x80000e98]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0x0000000000000006|- rs1_val == -2305843009213693953<br>                                                                                                      |[0x80000eac]:c.and a0, a1<br> [0x80000eae]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0x0000000000000006|- rs1_val == -4611686018427387905<br>                                                                                                      |[0x80000ec2]:c.and a0, a1<br> [0x80000ec4]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0x0000000000000000|- rs2_val == 34359738368<br> - rs1_val == 6148914691236517205<br>                                                                          |[0x80000ef0]:c.and a0, a1<br> [0x80000ef2]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0x0000000000000000|- rs1_val == -6148914691236517206<br>                                                                                                      |[0x80000f1e]:c.and a0, a1<br> [0x80000f20]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0x0000000000000000|- rs2_val == 4<br>                                                                                                                         |[0x80000f30]:c.and a0, a1<br> [0x80000f32]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0x0000000000000008|- rs2_val == 8<br>                                                                                                                         |[0x80000f46]:c.and a0, a1<br> [0x80000f48]:sd a0, 1096(ra)<br> |
| 139|[0x80004658]<br>0x0000000000000080|- rs2_val == 128<br>                                                                                                                       |[0x80000f54]:c.and a0, a1<br> [0x80000f56]:sd a0, 1104(ra)<br> |
| 140|[0x80004660]<br>0x0000000000000200|- rs2_val == 512<br>                                                                                                                       |[0x80000f66]:c.and a0, a1<br> [0x80000f68]:sd a0, 1112(ra)<br> |
| 141|[0x80004668]<br>0x0000000000000000|- rs2_val == 2048<br>                                                                                                                      |[0x80000f7c]:c.and a0, a1<br> [0x80000f7e]:sd a0, 1120(ra)<br> |
| 142|[0x80004670]<br>0x0000000000000000|- rs2_val == 8192<br>                                                                                                                      |[0x80000f8e]:c.and a0, a1<br> [0x80000f90]:sd a0, 1128(ra)<br> |
| 143|[0x80004678]<br>0x0000000000000000|- rs2_val == 16384<br>                                                                                                                     |[0x80000f9c]:c.and a0, a1<br> [0x80000f9e]:sd a0, 1136(ra)<br> |
| 144|[0x80004680]<br>0x0000000000000000|- rs2_val == 32768<br>                                                                                                                     |[0x80000faa]:c.and a0, a1<br> [0x80000fac]:sd a0, 1144(ra)<br> |
| 145|[0x80004688]<br>0x0000000000020000|- rs2_val == 131072<br>                                                                                                                    |[0x80000fc0]:c.and a0, a1<br> [0x80000fc2]:sd a0, 1152(ra)<br> |
| 146|[0x80004690]<br>0x0000000000000000|- rs2_val == 262144<br>                                                                                                                    |[0x80000fce]:c.and a0, a1<br> [0x80000fd0]:sd a0, 1160(ra)<br> |
| 147|[0x80004698]<br>0x0000000000080000|- rs2_val == 524288<br>                                                                                                                    |[0x80000fe0]:c.and a0, a1<br> [0x80000fe2]:sd a0, 1168(ra)<br> |
| 148|[0x800046a0]<br>0x0000000000100000|- rs2_val == 1048576<br>                                                                                                                   |[0x80000ff6]:c.and a0, a1<br> [0x80000ff8]:sd a0, 1176(ra)<br> |
| 149|[0x800046a8]<br>0x0000000000000000|- rs2_val == 8388608<br>                                                                                                                   |[0x80001008]:c.and a0, a1<br> [0x8000100a]:sd a0, 1184(ra)<br> |
| 150|[0x800046b0]<br>0x0000000000000000|- rs2_val == 134217728<br>                                                                                                                 |[0x8000101a]:c.and a0, a1<br> [0x8000101c]:sd a0, 1192(ra)<br> |
| 151|[0x800046b8]<br>0x0000000000000000|- rs2_val == 1073741824<br>                                                                                                                |[0x80001028]:c.and a0, a1<br> [0x8000102a]:sd a0, 1200(ra)<br> |
| 152|[0x800046c0]<br>0x0000000000000000|- rs2_val == 2147483648<br>                                                                                                                |[0x8000103a]:c.and a0, a1<br> [0x8000103c]:sd a0, 1208(ra)<br> |
| 153|[0x800046c8]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                |[0x80001054]:c.and a0, a1<br> [0x80001056]:sd a0, 1216(ra)<br> |
| 154|[0x800046d0]<br>0x0000008000000000|- rs2_val == 549755813888<br> - rs1_val == -18014398509481985<br>                                                                          |[0x8000106e]:c.and a0, a1<br> [0x80001070]:sd a0, 1224(ra)<br> |
| 155|[0x800046d8]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                        |[0x80001088]:c.and a0, a1<br> [0x8000108a]:sd a0, 1232(ra)<br> |
| 156|[0x800046e0]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                       |[0x8000109a]:c.and a0, a1<br> [0x8000109c]:sd a0, 1240(ra)<br> |
| 157|[0x800046e8]<br>0x0000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                       |[0x800010b0]:c.and a0, a1<br> [0x800010b2]:sd a0, 1248(ra)<br> |
| 158|[0x800046f0]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                       |[0x800010c6]:c.and a0, a1<br> [0x800010c8]:sd a0, 1256(ra)<br> |
| 159|[0x800046f8]<br>0x0000000000000009|- rs2_val == -33<br>                                                                                                                       |[0x800010d4]:c.and a0, a1<br> [0x800010d6]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0xFFFFFFBFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                     |[0x80001104]:c.and a0, a1<br> [0x80001106]:sd a0, 1280(ra)<br> |
| 161|[0x80004710]<br>0xFEFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                   |[0x8000111e]:c.and a0, a1<br> [0x80001120]:sd a0, 1288(ra)<br> |
| 162|[0x80004718]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                   |[0x80001134]:c.and a0, a1<br> [0x80001136]:sd a0, 1296(ra)<br> |
| 163|[0x80004720]<br>0x5555555555155555|- rs2_val == -4194305<br>                                                                                                                  |[0x80001162]:c.and a0, a1<br> [0x80001164]:sd a0, 1304(ra)<br> |
| 164|[0x80004728]<br>0xFEFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                 |[0x8000117c]:c.and a0, a1<br> [0x8000117e]:sd a0, 1312(ra)<br> |
| 165|[0x80004730]<br>0x0000000000000800|- rs2_val == -134217729<br>                                                                                                                |[0x80001192]:c.and a0, a1<br> [0x80001194]:sd a0, 1320(ra)<br> |
| 166|[0x80004738]<br>0xFFFBFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                |[0x800011ac]:c.and a0, a1<br> [0x800011ae]:sd a0, 1328(ra)<br> |
| 167|[0x80004740]<br>0x0000000000000007|- rs2_val == -536870913<br>                                                                                                                |[0x800011be]:c.and a0, a1<br> [0x800011c0]:sd a0, 1336(ra)<br> |
| 168|[0x80004748]<br>0x0000000010000000|- rs2_val == -4294967297<br>                                                                                                               |[0x800011d4]:c.and a0, a1<br> [0x800011d6]:sd a0, 1344(ra)<br> |
| 169|[0x80004750]<br>0x0000000000800000|- rs2_val == -8589934593<br>                                                                                                               |[0x800011ea]:c.and a0, a1<br> [0x800011ec]:sd a0, 1352(ra)<br> |
| 170|[0x80004758]<br>0xFFFFBFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                             |[0x80001208]:c.and a0, a1<br> [0x8000120a]:sd a0, 1360(ra)<br> |
| 171|[0x80004760]<br>0x0000000004000000|- rs2_val == -274877906945<br>                                                                                                             |[0x8000121e]:c.and a0, a1<br> [0x80001220]:sd a0, 1368(ra)<br> |
| 172|[0x80004768]<br>0x5555545555555555|- rs2_val == -1099511627777<br>                                                                                                            |[0x80001250]:c.and a0, a1<br> [0x80001252]:sd a0, 1376(ra)<br> |
| 173|[0x80004770]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                          |[0x80001266]:c.and a0, a1<br> [0x80001268]:sd a0, 1384(ra)<br> |
| 174|[0x80004778]<br>0xFFFFFDFFFFFF7FFF|- rs2_val == -2199023255553<br>                                                                                                            |[0x80001280]:c.and a0, a1<br> [0x80001282]:sd a0, 1392(ra)<br> |
| 175|[0x80004780]<br>0x0000000000000000|- rs2_val == 8796093022208<br>                                                                                                             |[0x80001296]:c.and a0, a1<br> [0x80001298]:sd a0, 1400(ra)<br> |
| 176|[0x80004788]<br>0x0020000000000000|- rs2_val == -8796093022209<br>                                                                                                            |[0x800012b0]:c.and a0, a1<br> [0x800012b2]:sd a0, 1408(ra)<br> |
| 177|[0x80004790]<br>0x0000080000000000|- rs2_val == -17592186044417<br>                                                                                                           |[0x800012ca]:c.and a0, a1<br> [0x800012cc]:sd a0, 1416(ra)<br> |
| 178|[0x80004798]<br>0x0000000000002000|- rs2_val == -70368744177665<br>                                                                                                           |[0x800012e0]:c.and a0, a1<br> [0x800012e2]:sd a0, 1424(ra)<br> |
| 179|[0x800047a0]<br>0x0000000000000000|- rs2_val == 140737488355328<br>                                                                                                           |[0x800012f2]:c.and a0, a1<br> [0x800012f4]:sd a0, 1432(ra)<br> |
| 180|[0x800047a8]<br>0x0000000000002000|- rs2_val == -281474976710657<br>                                                                                                          |[0x80001308]:c.and a0, a1<br> [0x8000130a]:sd a0, 1440(ra)<br> |
| 181|[0x800047b0]<br>0xFFFDFFFEFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                          |[0x80001326]:c.and a0, a1<br> [0x80001328]:sd a0, 1448(ra)<br> |
| 182|[0x800047b8]<br>0xFFFBFFFFFF7FFFFF|- rs2_val == -1125899906842625<br>                                                                                                         |[0x80001340]:c.and a0, a1<br> [0x80001342]:sd a0, 1456(ra)<br> |
| 183|[0x800047c0]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                          |[0x80001352]:c.and a0, a1<br> [0x80001354]:sd a0, 1464(ra)<br> |
