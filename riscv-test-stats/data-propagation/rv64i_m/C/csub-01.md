
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001360')]      |
| SIG_REGION                | [('0x80004204', '0x800047e8', '188 dwords')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 287     |
| Total Signature Updates   | 187      |
| Total Coverpoints Covered | 287      |
| STAT1                     | 185      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001042]:c.sub a0, a1
      [0x80001044]:sd a0, 1208(ra)
 -- Signature Address: 0x800046c8 Data: 0x1FFF000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 281474976710656
      - rs1_val == 2305843009213693952




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001358]:c.sub a0, a1
      [0x8000135a]:sd a0, 1488(ra)
 -- Signature Address: 0x800047e0 Data: 0x0000FFFFFFFFFFFA
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs1_val == 281474976710656






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

|s.no|            signature             |                                                                      coverpoints                                                                       |                             code                              |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000000|- opcode : c.sub<br> - rs1 : x9<br> - rs2 : x9<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 281474976710656<br> - rs1_val == 281474976710656<br> |[0x800003a4]:c.sub s1, s1<br> [0x800003a6]:sd s1, 0(ra)<br>    |
|   2|[0x80004218]<br>0xFFFFFFFFC0080000|- rs1 : x14<br> - rs2 : x15<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs2_val == -524289<br> - rs1_val == -1073741825<br>                                |[0x800003ba]:c.sub a4, a5<br> [0x800003bc]:sd a4, 8(ra)<br>    |
|   3|[0x80004220]<br>0x8000000000010001|- rs1 : x12<br> - rs2 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -65537<br> - rs1_val == -9223372036854775808<br>                           |[0x800003d0]:c.sub a2, a0<br> [0x800003d2]:sd a2, 16(ra)<br>   |
|   4|[0x80004228]<br>0xFFFFFFFFFFFFC000|- rs1 : x10<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val == 16384<br>                                                                                |[0x800003de]:c.sub a0, s0<br> [0x800003e0]:sd a0, 24(ra)<br>   |
|   5|[0x80004230]<br>0x8800000000000000|- rs1 : x11<br> - rs2 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -576460752303423489<br> - rs1_val == 9223372036854775807<br>              |[0x800003fc]:c.sub a1, a4<br> [0x800003fe]:sd a1, 32(ra)<br>   |
|   6|[0x80004238]<br>0xFFFFFFFFFFE00001|- rs1 : x8<br> - rs2 : x11<br> - rs1_val == 1<br> - rs2_val == 2097152<br>                                                                              |[0x8000040a]:c.sub s0, a1<br> [0x8000040c]:sd fp, 40(ra)<br>   |
|   7|[0x80004240]<br>0x8008000000000000|- rs1 : x15<br> - rs2 : x13<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 2251799813685248<br>                 |[0x80000420]:c.sub a5, a3<br> [0x80000422]:sd a5, 48(ra)<br>   |
|   8|[0x80004248]<br>0xFFFFFFFFFFFEFFFF|- rs1 : x13<br> - rs2 : x12<br> - rs2_val == 0<br> - rs1_val == -65537<br>                                                                              |[0x80000432]:c.sub a3, a2<br> [0x80000434]:sd a3, 56(ra)<br>   |
|   9|[0x80004250]<br>0x7FFFFFFFFFFFFFFA|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                                                   |[0x80000448]:c.sub a0, a1<br> [0x8000044a]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0xEFFFFFFFFFFFFFFE|- rs2_val == 1<br> - rs1_val == -1152921504606846977<br>                                                                                                |[0x8000045e]:c.sub a0, a1<br> [0x80000460]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0xF800000000000002|- rs2_val == 576460752303423488<br> - rs1_val == 2<br>                                                                                                  |[0x80000470]:c.sub a0, a1<br> [0x80000472]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0x0000000000000001|- rs1_val == 4<br>                                                                                                                                      |[0x8000047e]:c.sub a0, a1<br> [0x80000480]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0xFFFFFFFFFFFFE008|- rs2_val == 8192<br> - rs1_val == 8<br>                                                                                                                |[0x8000048c]:c.sub a0, a1<br> [0x8000048e]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000000000040011|- rs2_val == -262145<br> - rs1_val == 16<br>                                                                                                            |[0x8000049e]:c.sub a0, a1<br> [0x800004a0]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000000000000010|- rs2_val == 16<br> - rs1_val == 32<br>                                                                                                                 |[0x800004ac]:c.sub a0, a1<br> [0x800004ae]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0xFFFFC00000000040|- rs2_val == 70368744177664<br> - rs1_val == 64<br>                                                                                                     |[0x800004be]:c.sub a0, a1<br> [0x800004c0]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0xFFFFFFFFFFFFFC80|- rs2_val == 1024<br> - rs1_val == 128<br>                                                                                                              |[0x800004cc]:c.sub a0, a1<br> [0x800004ce]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000000101|- rs1_val == 256<br>                                                                                                                                    |[0x800004da]:c.sub a0, a1<br> [0x800004dc]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000010000000201|- rs2_val == -1099511627777<br> - rs1_val == 512<br>                                                                                                    |[0x800004f0]:c.sub a0, a1<br> [0x800004f2]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0x00000000000003F0|- rs1_val == 1024<br>                                                                                                                                   |[0x800004fe]:c.sub a0, a1<br> [0x80000500]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0000000000000000|- rs2_val == 2048<br> - rs1_val == 2048<br>                                                                                                             |[0x80000514]:c.sub a0, a1<br> [0x80000516]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0000000000000F80|- rs2_val == 128<br> - rs1_val == 4096<br>                                                                                                              |[0x80000522]:c.sub a0, a1<br> [0x80000524]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0x0000000200002001|- rs2_val == -8589934593<br> - rs1_val == 8192<br>                                                                                                      |[0x80000538]:c.sub a0, a1<br> [0x8000053a]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0x0010000000004001|- rs2_val == -4503599627370497<br> - rs1_val == 16384<br>                                                                                               |[0x8000054e]:c.sub a0, a1<br> [0x80000550]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0xFFFFFFFFF8008000|- rs2_val == 134217728<br> - rs1_val == 32768<br>                                                                                                       |[0x8000055c]:c.sub a0, a1<br> [0x8000055e]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0x4000000000010001|- rs2_val == -4611686018427387905<br> - rs1_val == 65536<br>                                                                                            |[0x80000572]:c.sub a0, a1<br> [0x80000574]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x2000000000020001|- rs2_val == -2305843009213693953<br> - rs1_val == 131072<br>                                                                                           |[0x80000588]:c.sub a0, a1<br> [0x8000058a]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0001000000040001|- rs2_val == -281474976710657<br> - rs1_val == 262144<br>                                                                                               |[0x8000059e]:c.sub a0, a1<br> [0x800005a0]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0x0000002000080001|- rs2_val == -137438953473<br> - rs1_val == 524288<br>                                                                                                  |[0x800005b4]:c.sub a0, a1<br> [0x800005b6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0x0400000000100001|- rs2_val == -288230376151711745<br> - rs1_val == 1048576<br>                                                                                           |[0x800005ca]:c.sub a0, a1<br> [0x800005cc]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0xFFFFFFFFFC200000|- rs2_val == 67108864<br> - rs1_val == 2097152<br>                                                                                                      |[0x800005d8]:c.sub a0, a1<br> [0x800005da]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x00000000003FFFF9|- rs1_val == 4194304<br>                                                                                                                                |[0x800005e6]:c.sub a0, a1<br> [0x800005e8]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0xFFFFFFFFFC800000|- rs1_val == 8388608<br>                                                                                                                                |[0x800005f4]:c.sub a0, a1<br> [0x800005f6]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000000001200001|- rs2_val == -2097153<br> - rs1_val == 16777216<br>                                                                                                     |[0x80000606]:c.sub a0, a1<br> [0x80000608]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0x0000000402000001|- rs2_val == -17179869185<br> - rs1_val == 33554432<br>                                                                                                 |[0x8000061c]:c.sub a0, a1<br> [0x8000061e]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000003FFFFF9|- rs1_val == 67108864<br>                                                                                                                               |[0x8000062a]:c.sub a0, a1<br> [0x8000062c]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0000000007FFFFFE|- rs2_val == 2<br> - rs1_val == 134217728<br>                                                                                                           |[0x80000638]:c.sub a0, a1<br> [0x8000063a]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0xFE00000010000000|- rs2_val == 144115188075855872<br> - rs1_val == 268435456<br>                                                                                          |[0x8000064a]:c.sub a0, a1<br> [0x8000064c]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0x0000000022000001|- rs2_val == -33554433<br> - rs1_val == 536870912<br>                                                                                                   |[0x8000065c]:c.sub a0, a1<br> [0x8000065e]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0x4000000040000001|- rs1_val == 1073741824<br>                                                                                                                             |[0x80000672]:c.sub a0, a1<br> [0x80000674]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000100000001|- rs2_val == -2147483649<br> - rs1_val == 2147483648<br>                                                                                                |[0x8000068c]:c.sub a0, a1<br> [0x8000068e]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0x0000000100040001|- rs1_val == 4294967296<br>                                                                                                                             |[0x800006a2]:c.sub a0, a1<br> [0x800006a4]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x00000001FFFE0000|- rs2_val == 131072<br> - rs1_val == 8589934592<br>                                                                                                     |[0x800006b4]:c.sub a0, a1<br> [0x800006b6]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x00000003FE000000|- rs2_val == 33554432<br> - rs1_val == 17179869184<br>                                                                                                  |[0x800006c6]:c.sub a0, a1<br> [0x800006c8]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0xFFF0000800000000|- rs2_val == 4503599627370496<br> - rs1_val == 34359738368<br>                                                                                          |[0x800006dc]:c.sub a0, a1<br> [0x800006de]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000000FFFFFFFF9|- rs1_val == 68719476736<br>                                                                                                                            |[0x800006ee]:c.sub a0, a1<br> [0x800006f0]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0xFFFFF02000000000|- rs2_val == 17592186044416<br> - rs1_val == 137438953472<br>                                                                                           |[0x80000704]:c.sub a0, a1<br> [0x80000706]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0100004000000001|- rs2_val == -72057594037927937<br> - rs1_val == 274877906944<br>                                                                                       |[0x8000071e]:c.sub a0, a1<br> [0x80000720]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0x0000009000000001|- rs2_val == -68719476737<br> - rs1_val == 549755813888<br>                                                                                             |[0x80000738]:c.sub a0, a1<br> [0x8000073a]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0xFFFFC10000000000|- rs1_val == 1099511627776<br>                                                                                                                          |[0x8000074e]:c.sub a0, a1<br> [0x80000750]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0x4000020000000001|- rs1_val == 2199023255552<br>                                                                                                                          |[0x80000768]:c.sub a0, a1<br> [0x8000076a]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0x000003FFFFFFFFF9|- rs1_val == 4398046511104<br>                                                                                                                          |[0x8000077a]:c.sub a0, a1<br> [0x8000077c]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0x0000080001000001|- rs2_val == -16777217<br> - rs1_val == 8796093022208<br>                                                                                               |[0x80000790]:c.sub a0, a1<br> [0x80000792]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0x4000100000000000|- rs1_val == 17592186044416<br>                                                                                                                         |[0x800007a6]:c.sub a0, a1<br> [0x800007a8]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x8000200000000000|- rs1_val == 35184372088832<br>                                                                                                                         |[0x800007bc]:c.sub a0, a1<br> [0x800007be]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0xC000400000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 70368744177664<br>                                                                                    |[0x800007d2]:c.sub a0, a1<br> [0x800007d4]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x00007FFFFFFFFE00|- rs2_val == 512<br> - rs1_val == 140737488355328<br>                                                                                                   |[0x800007e4]:c.sub a0, a1<br> [0x800007e6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0x0001FFFFFFE00000|- rs1_val == 562949953421312<br>                                                                                                                        |[0x800007f6]:c.sub a0, a1<br> [0x800007f8]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0x0804000000000001|- rs1_val == 1125899906842624<br>                                                                                                                       |[0x80000810]:c.sub a0, a1<br> [0x80000812]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0xFFD0000000000000|- rs2_val == 18014398509481984<br> - rs1_val == 4503599627370496<br>                                                                                    |[0x80000826]:c.sub a0, a1<br> [0x80000828]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0220000000000001|- rs2_val == -144115188075855873<br> - rs1_val == 9007199254740992<br>                                                                                  |[0x80000840]:c.sub a0, a1<br> [0x80000842]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0xFE40000000000000|- rs1_val == 18014398509481984<br>                                                                                                                      |[0x80000856]:c.sub a0, a1<br> [0x80000858]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0x0080004000000001|- rs2_val == -274877906945<br> - rs1_val == 36028797018963968<br>                                                                                       |[0x80000870]:c.sub a0, a1<br> [0x80000872]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0x00FFFFFF00000000|- rs2_val == 4294967296<br> - rs1_val == 72057594037927936<br>                                                                                          |[0x80000886]:c.sub a0, a1<br> [0x80000888]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0x0200800000000001|- rs2_val == -140737488355329<br> - rs1_val == 144115188075855872<br>                                                                                   |[0x800008a0]:c.sub a0, a1<br> [0x800008a2]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0x0000000000000000|- rs2_val == 288230376151711744<br> - rs1_val == 288230376151711744<br>                                                                                 |[0x800008b6]:c.sub a0, a1<br> [0x800008b8]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x07FFFFFFFFFC0000|- rs2_val == 262144<br> - rs1_val == 576460752303423488<br>                                                                                             |[0x800008c8]:c.sub a0, a1<br> [0x800008ca]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0x1000008000000001|- rs2_val == -549755813889<br> - rs1_val == 1152921504606846976<br>                                                                                     |[0x800008e2]:c.sub a0, a1<br> [0x800008e4]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x1FFFFFFFFFFFFFF0|- rs1_val == 2305843009213693952<br>                                                                                                                    |[0x800008f4]:c.sub a0, a1<br> [0x800008f6]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0xC000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                    |[0x8000090a]:c.sub a0, a1<br> [0x8000090c]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0x000000007FFFFFFF|- rs1_val == -2<br>                                                                                                                                     |[0x80000920]:c.sub a0, a1<br> [0x80000922]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFF7FFFFFFD|- rs2_val == 2147483648<br> - rs1_val == -3<br>                                                                                                         |[0x80000932]:c.sub a0, a1<br> [0x80000934]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0x000000000000FFFC|- rs1_val == -5<br>                                                                                                                                     |[0x80000944]:c.sub a0, a1<br> [0x80000946]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFFD7|- rs2_val == 32<br> - rs1_val == -9<br>                                                                                                                 |[0x80000952]:c.sub a0, a1<br> [0x80000954]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0x0000000000000070|- rs2_val == -129<br> - rs1_val == -17<br>                                                                                                              |[0x80000960]:c.sub a0, a1<br> [0x80000962]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFFFBFFFFFFDF|- rs2_val == 17179869184<br> - rs1_val == -33<br>                                                                                                       |[0x80000972]:c.sub a0, a1<br> [0x80000974]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0x000003FFFFFFFFC0|- rs2_val == -4398046511105<br> - rs1_val == -65<br>                                                                                                    |[0x80000988]:c.sub a0, a1<br> [0x8000098a]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFFFFFFF81|- rs2_val == -2<br> - rs1_val == -129<br>                                                                                                               |[0x80000996]:c.sub a0, a1<br> [0x80000998]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -257<br>                                                                                                                                   |[0x800009a4]:c.sub a0, a1<br> [0x800009a6]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0xFFFFFFFFFEFFFDFF|- rs2_val == 16777216<br> - rs1_val == -513<br>                                                                                                         |[0x800009b2]:c.sub a0, a1<br> [0x800009b4]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0x003FFFFFFFFFE000|- rs2_val == -18014398509481985<br> - rs1_val == -8193<br>                                                                                              |[0x800009cc]:c.sub a0, a1<br> [0x800009ce]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0x0080000000000000|- rs2_val == -36028797018963969<br>                                                                                                                     |[0x800009e2]:c.sub a0, a1<br> [0x800009e4]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0x0FFFFFFFFFFFFFFA|- rs2_val == -1152921504606846977<br>                                                                                                                   |[0x800009f8]:c.sub a0, a1<br> [0x800009fa]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0xAAAAAAACAAAAAAAB|- rs2_val == 6148914691236517205<br>                                                                                                                    |[0x80000a26]:c.sub a0, a1<br> [0x80000a28]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0x5559555555555556|- rs2_val == -6148914691236517206<br>                                                                                                                   |[0x80000a54]:c.sub a0, a1<br> [0x80000a56]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0xFFFFFFFFFFFFFBDF|- rs1_val == -1025<br>                                                                                                                                  |[0x80000a62]:c.sub a0, a1<br> [0x80000a64]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0xF7FFFFFFFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                  |[0x80000a78]:c.sub a0, a1<br> [0x80000a7a]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0xFFFFFFFFFFFFEDFF|- rs1_val == -4097<br>                                                                                                                                  |[0x80000a8a]:c.sub a0, a1<br> [0x80000a8c]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0xFFFFFFFFFFFFBFFD|- rs1_val == -16385<br>                                                                                                                                 |[0x80000a9c]:c.sub a0, a1<br> [0x80000a9e]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFFFFFFFFFFBF7FFF|- rs2_val == 4194304<br> - rs1_val == -32769<br>                                                                                                        |[0x80000aae]:c.sub a0, a1<br> [0x80000ab0]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xFFFFFFFFFBFDFFFF|- rs1_val == -131073<br>                                                                                                                                |[0x80000ac0]:c.sub a0, a1<br> [0x80000ac2]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0xFFFFFFFFFFFC0006|- rs1_val == -262145<br>                                                                                                                                |[0x80000ad2]:c.sub a0, a1<br> [0x80000ad4]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == 524288<br> - rs1_val == -524289<br>                                                                                                        |[0x80000ae4]:c.sub a0, a1<br> [0x80000ae6]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFFFFFFFEFFFF7|- rs2_val == 8<br> - rs1_val == -1048577<br>                                                                                                            |[0x80000af6]:c.sub a0, a1<br> [0x80000af8]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFDFFFFFFDFFFFF|- rs2_val == 562949953421312<br> - rs1_val == -2097153<br>                                                                                              |[0x80000b0c]:c.sub a0, a1<br> [0x80000b0e]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFF7FFBFFFFF|- rs2_val == 34359738368<br> - rs1_val == -4194305<br>                                                                                                  |[0x80000b22]:c.sub a0, a1<br> [0x80000b24]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFF820000|- rs2_val == -131073<br> - rs1_val == -8388609<br>                                                                                                      |[0x80000b38]:c.sub a0, a1<br> [0x80000b3a]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0xFFFFFFFFFEFFFBFF|- rs1_val == -16777217<br>                                                                                                                              |[0x80000b4a]:c.sub a0, a1<br> [0x80000b4c]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0xFFFFFFFFFDFFFFF9|- rs1_val == -33554433<br>                                                                                                                              |[0x80000b5c]:c.sub a0, a1<br> [0x80000b5e]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0x0000003FFC000000|- rs1_val == -67108865<br>                                                                                                                              |[0x80000b76]:c.sub a0, a1<br> [0x80000b78]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFF77FFFFFF|- rs1_val == -134217729<br>                                                                                                                             |[0x80000b8c]:c.sub a0, a1<br> [0x80000b8e]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0xFFFFFDFFEFFFFFFF|- rs2_val == 2199023255552<br> - rs1_val == -268435457<br>                                                                                              |[0x80000ba2]:c.sub a0, a1<br> [0x80000ba4]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0x3FFFFFFFE0000000|- rs1_val == -536870913<br>                                                                                                                             |[0x80000bbc]:c.sub a0, a1<br> [0x80000bbe]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0xFFFFFFEF7FFFFFFF|- rs2_val == 68719476736<br> - rs1_val == -2147483649<br>                                                                                               |[0x80000bd6]:c.sub a0, a1<br> [0x80000bd8]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFEFFFFFFF7|- rs1_val == -4294967297<br>                                                                                                                            |[0x80000bec]:c.sub a0, a1<br> [0x80000bee]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFFE00001000|- rs2_val == -4097<br> - rs1_val == -8589934593<br>                                                                                                     |[0x80000c06]:c.sub a0, a1<br> [0x80000c08]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFFFFFFC00000800|- rs2_val == -2049<br> - rs1_val == -17179869185<br>                                                                                                    |[0x80000c20]:c.sub a0, a1<br> [0x80000c22]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFFFFFF7FFBFFFFF|- rs1_val == -34359738369<br>                                                                                                                           |[0x80000c36]:c.sub a0, a1<br> [0x80000c38]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0x7FFFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                           |[0x80000c50]:c.sub a0, a1<br> [0x80000c52]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0x0FFFFFE000000000|- rs1_val == -137438953473<br>                                                                                                                          |[0x80000c6e]:c.sub a0, a1<br> [0x80000c70]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0xFFFFFFBFFFDFFFFF|- rs1_val == -274877906945<br>                                                                                                                          |[0x80000c84]:c.sub a0, a1<br> [0x80000c86]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0xFFFFFF7FFFFFFFFC|- rs1_val == -549755813889<br>                                                                                                                          |[0x80000c9a]:c.sub a0, a1<br> [0x80000c9c]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0xFFFFFEFFBFFFFFFF|- rs2_val == 1073741824<br> - rs1_val == -1099511627777<br>                                                                                             |[0x80000cb0]:c.sub a0, a1<br> [0x80000cb2]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0xFFFFFDFFBFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                         |[0x80000cc6]:c.sub a0, a1<br> [0x80000cc8]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFC0000040000|- rs1_val == -4398046511105<br>                                                                                                                         |[0x80000ce0]:c.sub a0, a1<br> [0x80000ce2]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0xFFFFF7FFFFFFFF7F|- rs1_val == -8796093022209<br>                                                                                                                         |[0x80000cf6]:c.sub a0, a1<br> [0x80000cf8]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0xFFFFF00008000000|- rs2_val == -134217729<br> - rs1_val == -17592186044417<br>                                                                                            |[0x80000d10]:c.sub a0, a1<br> [0x80000d12]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0x003FE00000000000|- rs1_val == -35184372088833<br>                                                                                                                        |[0x80000d2e]:c.sub a0, a1<br> [0x80000d30]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0xFFFDBFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                        |[0x80000d48]:c.sub a0, a1<br> [0x80000d4a]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFF7FFDFFFFFFFF|- rs2_val == 8589934592<br> - rs1_val == -140737488355329<br>                                                                                           |[0x80000d62]:c.sub a0, a1<br> [0x80000d64]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFF000000000200|- rs2_val == -513<br> - rs1_val == -281474976710657<br>                                                                                                 |[0x80000d78]:c.sub a0, a1<br> [0x80000d7a]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0x003E000000000000|- rs1_val == -562949953421313<br>                                                                                                                       |[0x80000d96]:c.sub a0, a1<br> [0x80000d98]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0xFBFBFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                      |[0x80000db0]:c.sub a0, a1<br> [0x80000db2]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0xFFF7FFFFFFFEFFFF|- rs2_val == 65536<br> - rs1_val == -2251799813685249<br>                                                                                               |[0x80000dc6]:c.sub a0, a1<br> [0x80000dc8]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFEFFFFFFFFF7FFF|- rs2_val == 32768<br> - rs1_val == -4503599627370497<br>                                                                                               |[0x80000ddc]:c.sub a0, a1<br> [0x80000dde]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0xFFDFFFFFFFFFFFF8|- rs1_val == -9007199254740993<br>                                                                                                                      |[0x80000df2]:c.sub a0, a1<br> [0x80000df4]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0xFFC0000000000000|- rs1_val == -36028797018963969<br>                                                                                                                     |[0x80000e10]:c.sub a0, a1<br> [0x80000e12]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFAFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                     |[0x80000e2a]:c.sub a0, a1<br> [0x80000e2c]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xFE00000000400000|- rs2_val == -4194305<br> - rs1_val == -144115188075855873<br>                                                                                          |[0x80000e44]:c.sub a0, a1<br> [0x80000e46]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0xF3FFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                    |[0x80000e5e]:c.sub a0, a1<br> [0x80000e60]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0x0020000000000005|- rs2_val == -9007199254740993<br>                                                                                                                      |[0x80000e74]:c.sub a0, a1<br> [0x80000e76]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0xF800000000000010|- rs2_val == -17<br> - rs1_val == -576460752303423489<br>                                                                                               |[0x80000e8a]:c.sub a0, a1<br> [0x80000e8c]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0xE000010000000000|- rs1_val == -2305843009213693953<br>                                                                                                                   |[0x80000ea8]:c.sub a0, a1<br> [0x80000eaa]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0xBFFFFF7FFFFFFFFF|- rs2_val == 549755813888<br> - rs1_val == -4611686018427387905<br>                                                                                     |[0x80000ec2]:c.sub a0, a1<br> [0x80000ec4]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0x5555555555595556|- rs1_val == 6148914691236517205<br>                                                                                                                    |[0x80000ef0]:c.sub a0, a1<br> [0x80000ef2]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0xAAAAAAAAAACAAAAB|- rs1_val == -6148914691236517206<br>                                                                                                                   |[0x80000f1e]:c.sub a0, a1<br> [0x80000f20]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0x0001FFFFFFFFFFFC|- rs2_val == 4<br>                                                                                                                                      |[0x80000f30]:c.sub a0, a1<br> [0x80000f32]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0xFFFFFFFFFFBFFFBF|- rs2_val == 64<br>                                                                                                                                     |[0x80000f42]:c.sub a0, a1<br> [0x80000f44]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0x0000000000000300|- rs2_val == 256<br>                                                                                                                                    |[0x80000f50]:c.sub a0, a1<br> [0x80000f52]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xFFFFFFFFFFFFF005|- rs2_val == 4096<br>                                                                                                                                   |[0x80000f5e]:c.sub a0, a1<br> [0x80000f60]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0x000007FFFFF00000|- rs2_val == 1048576<br>                                                                                                                                |[0x80000f70]:c.sub a0, a1<br> [0x80000f72]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFFFFFFFFF808000|- rs2_val == 8388608<br>                                                                                                                                |[0x80000f7e]:c.sub a0, a1<br> [0x80000f80]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0xFFFFFFFFEFF7FFFF|- rs2_val == 268435456<br>                                                                                                                              |[0x80000f90]:c.sub a0, a1<br> [0x80000f92]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0xFFFFFFFFE1000000|- rs2_val == 536870912<br>                                                                                                                              |[0x80000f9e]:c.sub a0, a1<br> [0x80000fa0]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0xFFFFFFE000000000|- rs2_val == 137438953472<br>                                                                                                                           |[0x80000fb0]:c.sub a0, a1<br> [0x80000fb2]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFBFFFFFFDFF|- rs2_val == 274877906944<br>                                                                                                                           |[0x80000fc2]:c.sub a0, a1<br> [0x80000fc4]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xFFFFFEFFFFFFFFBF|- rs2_val == 1099511627776<br>                                                                                                                          |[0x80000fd4]:c.sub a0, a1<br> [0x80000fd6]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFBEFFFFFFFFF|- rs2_val == 4398046511104<br>                                                                                                                          |[0x80000fee]:c.sub a0, a1<br> [0x80000ff0]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x7FFFF80000000000|- rs2_val == 8796093022208<br>                                                                                                                          |[0x80001004]:c.sub a0, a1<br> [0x80001006]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0xFFFFE00080000000|- rs2_val == 35184372088832<br>                                                                                                                         |[0x8000101a]:c.sub a0, a1<br> [0x8000101c]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0xFFFF800000040000|- rs2_val == 140737488355328<br>                                                                                                                        |[0x8000102c]:c.sub a0, a1<br> [0x8000102e]:sd a0, 1200(ra)<br> |
| 152|[0x800046d0]<br>0xFFFBFFFFFFFFBFFF|- rs2_val == 1125899906842624<br>                                                                                                                       |[0x80001058]:c.sub a0, a1<br> [0x8000105a]:sd a0, 1216(ra)<br> |
| 153|[0x800046d8]<br>0x0038000000000000|- rs2_val == 2251799813685248<br>                                                                                                                       |[0x8000106e]:c.sub a0, a1<br> [0x80001070]:sd a0, 1224(ra)<br> |
| 154|[0x800046e0]<br>0xFFE0200000000000|- rs2_val == 9007199254740992<br>                                                                                                                       |[0x80001084]:c.sub a0, a1<br> [0x80001086]:sd a0, 1232(ra)<br> |
| 155|[0x800046e8]<br>0xFF80000000080000|- rs2_val == 36028797018963968<br>                                                                                                                      |[0x80001096]:c.sub a0, a1<br> [0x80001098]:sd a0, 1240(ra)<br> |
| 156|[0x800046f0]<br>0xFEFFDFFFFFFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                      |[0x800010b0]:c.sub a0, a1<br> [0x800010b2]:sd a0, 1248(ra)<br> |
| 157|[0x800046f8]<br>0xF000000000000400|- rs2_val == 1152921504606846976<br>                                                                                                                    |[0x800010c2]:c.sub a0, a1<br> [0x800010c4]:sd a0, 1256(ra)<br> |
| 158|[0x80004700]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                                    |[0x800010d4]:c.sub a0, a1<br> [0x800010d6]:sd a0, 1264(ra)<br> |
| 159|[0x80004708]<br>0x0000000000000001|- rs2_val == -3<br>                                                                                                                                     |[0x800010e2]:c.sub a0, a1<br> [0x800010e4]:sd a0, 1272(ra)<br> |
| 160|[0x80004710]<br>0x0000000000000006|- rs2_val == -5<br>                                                                                                                                     |[0x800010f0]:c.sub a0, a1<br> [0x800010f2]:sd a0, 1280(ra)<br> |
| 161|[0x80004718]<br>0xAAAAAAAAAAAAAAB3|- rs2_val == -9<br>                                                                                                                                     |[0x8000111a]:c.sub a0, a1<br> [0x8000111c]:sd a0, 1288(ra)<br> |
| 162|[0x80004720]<br>0xE000000000000020|- rs2_val == -33<br>                                                                                                                                    |[0x80001130]:c.sub a0, a1<br> [0x80001132]:sd a0, 1296(ra)<br> |
| 163|[0x80004728]<br>0xFFFFFFF000000040|- rs2_val == -65<br>                                                                                                                                    |[0x80001146]:c.sub a0, a1<br> [0x80001148]:sd a0, 1304(ra)<br> |
| 164|[0x80004730]<br>0xFFFFFFE000000100|- rs2_val == -257<br>                                                                                                                                   |[0x8000115c]:c.sub a0, a1<br> [0x8000115e]:sd a0, 1312(ra)<br> |
| 165|[0x80004738]<br>0x0000000000001401|- rs2_val == -1025<br>                                                                                                                                  |[0x8000116a]:c.sub a0, a1<br> [0x8000116c]:sd a0, 1320(ra)<br> |
| 166|[0x80004740]<br>0x0000000000001FFD|- rs2_val == -8193<br>                                                                                                                                  |[0x8000117c]:c.sub a0, a1<br> [0x8000117e]:sd a0, 1328(ra)<br> |
| 167|[0x80004748]<br>0x4000000000004001|- rs2_val == -16385<br>                                                                                                                                 |[0x80001192]:c.sub a0, a1<br> [0x80001194]:sd a0, 1336(ra)<br> |
| 168|[0x80004750]<br>0xFFFFFFFC00008000|- rs2_val == -32769<br>                                                                                                                                 |[0x800011ac]:c.sub a0, a1<br> [0x800011ae]:sd a0, 1344(ra)<br> |
| 169|[0x80004758]<br>0x0000000000100041|- rs2_val == -1048577<br>                                                                                                                               |[0x800011be]:c.sub a0, a1<br> [0x800011c0]:sd a0, 1352(ra)<br> |
| 170|[0x80004760]<br>0x0000000000400000|- rs2_val == -8388609<br>                                                                                                                               |[0x800011d4]:c.sub a0, a1<br> [0x800011d6]:sd a0, 1360(ra)<br> |
| 171|[0x80004768]<br>0x0000000004000007|- rs2_val == -67108865<br>                                                                                                                              |[0x800011e6]:c.sub a0, a1<br> [0x800011e8]:sd a0, 1368(ra)<br> |
| 172|[0x80004770]<br>0x000000000FFFFFF8|- rs2_val == -268435457<br>                                                                                                                             |[0x800011f8]:c.sub a0, a1<br> [0x800011fa]:sd a0, 1376(ra)<br> |
| 173|[0x80004778]<br>0x000000001FFF8000|- rs2_val == -536870913<br>                                                                                                                             |[0x8000120e]:c.sub a0, a1<br> [0x80001210]:sd a0, 1384(ra)<br> |
| 174|[0x80004780]<br>0x0000000040000401|- rs2_val == -1073741825<br>                                                                                                                            |[0x80001220]:c.sub a0, a1<br> [0x80001222]:sd a0, 1392(ra)<br> |
| 175|[0x80004788]<br>0x00000000FFFF8000|- rs2_val == -4294967297<br>                                                                                                                            |[0x8000123a]:c.sub a0, a1<br> [0x8000123c]:sd a0, 1400(ra)<br> |
| 176|[0x80004790]<br>0x0000000000000000|- rs2_val == -34359738369<br>                                                                                                                           |[0x80001258]:c.sub a0, a1<br> [0x8000125a]:sd a0, 1408(ra)<br> |
| 177|[0x80004798]<br>0x000001FFFFFE0000|- rs2_val == -2199023255553<br>                                                                                                                         |[0x80001272]:c.sub a0, a1<br> [0x80001274]:sd a0, 1416(ra)<br> |
| 178|[0x800047a0]<br>0x000007FFE0000000|- rs2_val == -8796093022209<br>                                                                                                                         |[0x8000128c]:c.sub a0, a1<br> [0x8000128e]:sd a0, 1424(ra)<br> |
| 179|[0x800047a8]<br>0x0000100000000201|- rs2_val == -17592186044417<br>                                                                                                                        |[0x800012a2]:c.sub a0, a1<br> [0x800012a4]:sd a0, 1432(ra)<br> |
| 180|[0x800047b0]<br>0x00001FFFFFFFE000|- rs2_val == -35184372088833<br>                                                                                                                        |[0x800012bc]:c.sub a0, a1<br> [0x800012be]:sd a0, 1440(ra)<br> |
| 181|[0x800047b8]<br>0x8000400000000000|- rs2_val == -70368744177665<br>                                                                                                                        |[0x800012da]:c.sub a0, a1<br> [0x800012dc]:sd a0, 1448(ra)<br> |
| 182|[0x800047c0]<br>0x0001F00000000000|- rs2_val == -562949953421313<br>                                                                                                                       |[0x800012f8]:c.sub a0, a1<br> [0x800012fa]:sd a0, 1456(ra)<br> |
| 183|[0x800047c8]<br>0x0008000000000001|- rs2_val == -1125899906842625<br>                                                                                                                      |[0x80001312]:c.sub a0, a1<br> [0x80001314]:sd a0, 1464(ra)<br> |
| 184|[0x800047d0]<br>0x0006000000000000|- rs2_val == -2251799813685249<br>                                                                                                                      |[0x80001330]:c.sub a0, a1<br> [0x80001332]:sd a0, 1472(ra)<br> |
| 185|[0x800047d8]<br>0xFFBFFFFFFFFFFFF7|- rs1_val == -18014398509481985<br>                                                                                                                     |[0x80001346]:c.sub a0, a1<br> [0x80001348]:sd a0, 1480(ra)<br> |
