
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800013f0')]      |
| SIG_REGION                | [('0x80004208', '0x800047e8', '188 dwords')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 334     |
| Total Coverpoints Hit     | 334      |
| Total Signature Updates   | 188      |
| STAT1                     | 187      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013d4]:c.add a0, a1
      [0x800013d6]:sd a0, 1328(gp)
 -- Signature Address: 0x800047d8 Data: 0xFFFFFFFFFFFDFFDE
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -131073
      - rs1_val == -33






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

|s.no|            signature             |                                                                 coverpoints                                                                 |                              code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004208]<br>0x00000007FFEFFFFF|- opcode : c.add<br> - rs1 : x3<br> - rs2 : x4<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 34359738368<br> - rs1_val == -1048577<br> |[0x800003a8]:c.add gp, tp<br> [0x800003aa]:sd gp, 0(t1)<br>     |
|   2|[0x80004210]<br>0xFFFFFFFFFFFFFFBE|- rs1 : x24<br> - rs2 : x24<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -33<br> - rs1_val == -33<br>                                 |[0x800003ba]:c.add s8, s8<br> [0x800003bc]:sd s8, 8(t1)<br>     |
|   3|[0x80004218]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x19<br> - rs1_val == 0<br>                                                                                            |[0x800003cc]:c.add.hint.s3<br> [0x800003ce]:sd zero, 16(t1)<br> |
|   4|[0x80004220]<br>0x0200000000000000|- rs1 : x23<br> - rs2 : x25<br> - rs2_val == 144115188075855872<br>                                                                          |[0x800003de]:c.add s7, s9<br> [0x800003e0]:sd s7, 24(t1)<br>    |
|   5|[0x80004228]<br>0x7EFFFFFFFFFFFFFE|- rs1 : x19<br> - rs2 : x21<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -72057594037927937<br> - rs1_val == 9223372036854775807<br>    |[0x800003fc]:c.add s3, s5<br> [0x800003fe]:sd s3, 32(t1)<br>    |
|   6|[0x80004230]<br>0x0000001000000001|- rs1 : x20<br> - rs2 : x26<br> - rs1_val == 1<br> - rs2_val == 68719476736<br>                                                              |[0x8000040e]:c.add s4, s10<br> [0x80000410]:sd s4, 40(t1)<br>   |
|   7|[0x80004238]<br>0x8000000000000000|- rs1 : x14<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                        |[0x80000420]:c.add a4, a1<br> [0x80000422]:sd a4, 48(t1)<br>    |
|   8|[0x80004240]<br>0xFFFFFFFFF7FFFFFF|- rs1 : x22<br> - rs2 : x16<br> - rs2_val == 0<br> - rs1_val == -134217729<br>                                                               |[0x80000432]:c.add s6, a6<br> [0x80000434]:sd s6, 56(t1)<br>    |
|   9|[0x80004248]<br>0x7FFFFFFFFFFFDFFE|- rs1 : x27<br> - rs2 : x20<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -8193<br>                 |[0x8000044c]:c.add s11, s4<br> [0x8000044e]:sd s11, 64(t1)<br>  |
|  10|[0x80004250]<br>0x0000020000000001|- rs1 : x11<br> - rs2 : x10<br> - rs2_val == 1<br> - rs1_val == 2199023255552<br>                                                            |[0x8000045e]:c.add a1, a0<br> [0x80000460]:sd a1, 72(t1)<br>    |
|  11|[0x80004258]<br>0x0000001000000002|- rs1 : x2<br> - rs2 : x27<br> - rs1_val == 2<br>                                                                                            |[0x80000470]:c.add sp, s11<br> [0x80000472]:sd sp, 80(t1)<br>   |
|  12|[0x80004260]<br>0x0000000020000004|- rs1 : x29<br> - rs2 : x7<br> - rs2_val == 536870912<br> - rs1_val == 4<br>                                                                 |[0x8000047e]:c.add t4, t2<br> [0x80000480]:sd t4, 88(t1)<br>    |
|  13|[0x80004268]<br>0x000000000000000C|- rs1 : x1<br> - rs2 : x3<br> - rs2_val == 4<br> - rs1_val == 8<br>                                                                          |[0x8000048c]:c.add ra, gp<br> [0x8000048e]:sd ra, 96(t1)<br>    |
|  14|[0x80004270]<br>0x0400000000000010|- rs1 : x7<br> - rs2 : x30<br> - rs2_val == 288230376151711744<br> - rs1_val == 16<br>                                                       |[0x8000049e]:c.add t2, t5<br> [0x800004a0]:sd t2, 104(t1)<br>   |
|  15|[0x80004278]<br>0xFFFFC0000000001F|- rs1 : x12<br> - rs2 : x17<br> - rs2_val == -70368744177665<br> - rs1_val == 32<br>                                                         |[0x800004b4]:c.add a2, a7<br> [0x800004b6]:sd a2, 112(t1)<br>   |
|  16|[0x80004280]<br>0x8000000000000040|- rs1 : x5<br> - rs2 : x14<br> - rs1_val == 64<br>                                                                                           |[0x800004c6]:c.add t0, a4<br> [0x800004c8]:sd t0, 120(t1)<br>   |
|  17|[0x80004288]<br>0x000000000000005F|- rs1 : x17<br> - rs2 : x8<br> - rs1_val == 128<br>                                                                                          |[0x800004d4]:c.add a7, fp<br> [0x800004d6]:sd a7, 128(t1)<br>   |
|  18|[0x80004290]<br>0x0000000001000100|- rs1 : x18<br> - rs2 : x15<br> - rs2_val == 16777216<br> - rs1_val == 256<br>                                                               |[0x800004e2]:c.add s2, a5<br> [0x800004e4]:sd s2, 136(t1)<br>   |
|  19|[0x80004298]<br>0x0000080000000200|- rs1 : x16<br> - rs2 : x12<br> - rs2_val == 8796093022208<br> - rs1_val == 512<br>                                                          |[0x800004f4]:c.add a6, a2<br> [0x800004f6]:sd a6, 144(t1)<br>   |
|  20|[0x800042a0]<br>0x0000000000000400|- rs1 : x13<br> - rs2 : x9<br> - rs1_val == 1024<br>                                                                                         |[0x80000502]:c.add a3, s1<br> [0x80000504]:sd a3, 152(t1)<br>   |
|  21|[0x800042a8]<br>0xFFFFFFFFFFFFE7FF|- rs1 : x8<br> - rs2 : x22<br> - rs2_val == -8193<br> - rs1_val == 2048<br>                                                                  |[0x80000520]:c.add fp, s6<br> [0x80000522]:sd fp, 0(gp)<br>     |
|  22|[0x800042b0]<br>0x0020000000001000|- rs1 : x28<br> - rs2 : x31<br> - rs2_val == 9007199254740992<br> - rs1_val == 4096<br>                                                      |[0x80000532]:c.add t3, t6<br> [0x80000534]:sd t3, 8(gp)<br>     |
|  23|[0x800042b8]<br>0x0020000000002000|- rs1 : x15<br> - rs2 : x1<br> - rs1_val == 8192<br>                                                                                         |[0x80000544]:c.add a5, ra<br> [0x80000546]:sd a5, 16(gp)<br>    |
|  24|[0x800042c0]<br>0xFFFFFC0000003FFF|- rs1 : x6<br> - rs2 : x18<br> - rs2_val == -4398046511105<br> - rs1_val == 16384<br>                                                        |[0x8000055a]:c.add t1, s2<br> [0x8000055c]:sd t1, 24(gp)<br>    |
|  25|[0x800042c8]<br>0x0000000000008006|- rs1 : x10<br> - rs2 : x29<br> - rs1_val == 32768<br>                                                                                       |[0x80000568]:c.add a0, t4<br> [0x8000056a]:sd a0, 32(gp)<br>    |
|  26|[0x800042d0]<br>0xFFFF80000000FFFF|- rs1 : x26<br> - rs2 : x5<br> - rs2_val == -140737488355329<br> - rs1_val == 65536<br>                                                      |[0x8000057e]:c.add s10, t0<br> [0x80000580]:sd s10, 40(gp)<br>  |
|  27|[0x800042d8]<br>0x0000002000020000|- rs1 : x21<br> - rs2 : x28<br> - rs2_val == 137438953472<br> - rs1_val == 131072<br>                                                        |[0x80000590]:c.add s5, t3<br> [0x80000592]:sd s5, 48(gp)<br>    |
|  28|[0x800042e0]<br>0x0000000080040000|- rs1 : x25<br> - rs2 : x13<br> - rs2_val == 2147483648<br> - rs1_val == 262144<br>                                                          |[0x800005a2]:c.add s9, a3<br> [0x800005a4]:sd s9, 56(gp)<br>    |
|  29|[0x800042e8]<br>0x0000000000080800|- rs1 : x31<br> - rs2 : x23<br> - rs2_val == 2048<br> - rs1_val == 524288<br>                                                                |[0x800005b4]:c.add t6, s7<br> [0x800005b6]:sd t6, 64(gp)<br>    |
|  30|[0x800042f0]<br>0xFFFFFF00000FFFFF|- rs1 : x30<br> - rs2 : x2<br> - rs2_val == -1099511627777<br> - rs1_val == 1048576<br>                                                      |[0x800005ca]:c.add t5, sp<br> [0x800005cc]:sd t5, 72(gp)<br>    |
|  31|[0x800042f8]<br>0x0400000000200000|- rs1 : x4<br> - rs2 : x6<br> - rs1_val == 2097152<br>                                                                                       |[0x800005dc]:c.add tp, t1<br> [0x800005de]:sd tp, 80(gp)<br>    |
|  32|[0x80004300]<br>0x0000000000800000|- rs1 : x9<br> - rs2_val == 4194304<br> - rs1_val == 4194304<br>                                                                             |[0x800005ea]:c.add s1, s9<br> [0x800005ec]:sd s1, 88(gp)<br>    |
|  33|[0x80004308]<br>0xFFFFFFFFF87FFFFF|- rs2_val == -134217729<br> - rs1_val == 8388608<br>                                                                                         |[0x800005fc]:c.add a0, a1<br> [0x800005fe]:sd a0, 96(gp)<br>    |
|  34|[0x80004310]<br>0x5555555556555555|- rs2_val == 6148914691236517205<br> - rs1_val == 16777216<br>                                                                               |[0x80000626]:c.add a0, a1<br> [0x80000628]:sd a0, 104(gp)<br>   |
|  35|[0x80004318]<br>0x0000000004000000|- rs2_val == 33554432<br> - rs1_val == 33554432<br>                                                                                          |[0x80000634]:c.add a0, a1<br> [0x80000636]:sd a0, 112(gp)<br>   |
|  36|[0x80004320]<br>0x4000000004000000|- rs2_val == 4611686018427387904<br> - rs1_val == 67108864<br>                                                                               |[0x80000646]:c.add a0, a1<br> [0x80000648]:sd a0, 120(gp)<br>   |
|  37|[0x80004328]<br>0x0000000008000200|- rs2_val == 512<br> - rs1_val == 134217728<br>                                                                                              |[0x80000654]:c.add a0, a1<br> [0x80000656]:sd a0, 128(gp)<br>   |
|  38|[0x80004330]<br>0x0800000010000000|- rs2_val == 576460752303423488<br> - rs1_val == 268435456<br>                                                                               |[0x80000666]:c.add a0, a1<br> [0x80000668]:sd a0, 136(gp)<br>   |
|  39|[0x80004338]<br>0x000000001FFFFDFF|- rs2_val == -513<br> - rs1_val == 536870912<br>                                                                                             |[0x80000674]:c.add a0, a1<br> [0x80000676]:sd a0, 144(gp)<br>   |
|  40|[0x80004340]<br>0xE00000003FFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == 1073741824<br>                                                                            |[0x8000068a]:c.add a0, a1<br> [0x8000068c]:sd a0, 152(gp)<br>   |
|  41|[0x80004348]<br>0x0000000080002000|- rs2_val == 8192<br> - rs1_val == 2147483648<br>                                                                                            |[0x8000069c]:c.add a0, a1<br> [0x8000069e]:sd a0, 160(gp)<br>   |
|  42|[0x80004350]<br>0xFFF80000FFFFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == 4294967296<br>                                                                               |[0x800006b6]:c.add a0, a1<br> [0x800006b8]:sd a0, 168(gp)<br>   |
|  43|[0x80004358]<br>0x0000000200000002|- rs2_val == 2<br> - rs1_val == 8589934592<br>                                                                                               |[0x800006c8]:c.add a0, a1<br> [0x800006ca]:sd a0, 176(gp)<br>   |
|  44|[0x80004360]<br>0x00000003FFFDFFFF|- rs2_val == -131073<br> - rs1_val == 17179869184<br>                                                                                        |[0x800006de]:c.add a0, a1<br> [0x800006e0]:sd a0, 184(gp)<br>   |
|  45|[0x80004368]<br>0x1000000800000000|- rs2_val == 1152921504606846976<br> - rs1_val == 34359738368<br>                                                                            |[0x800006f4]:c.add a0, a1<br> [0x800006f6]:sd a0, 192(gp)<br>   |
|  46|[0x80004370]<br>0x0000000FFFFBFFFF|- rs2_val == -262145<br> - rs1_val == 68719476736<br>                                                                                        |[0x8000070a]:c.add a0, a1<br> [0x8000070c]:sd a0, 200(gp)<br>   |
|  47|[0x80004378]<br>0x0000002040000000|- rs2_val == 1073741824<br> - rs1_val == 137438953472<br>                                                                                    |[0x8000071c]:c.add a0, a1<br> [0x8000071e]:sd a0, 208(gp)<br>   |
|  48|[0x80004380]<br>0xFFFFF83FFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 274877906944<br>                                                                                |[0x80000736]:c.add a0, a1<br> [0x80000738]:sd a0, 216(gp)<br>   |
|  49|[0x80004388]<br>0x0000028000000000|- rs2_val == 2199023255552<br> - rs1_val == 549755813888<br>                                                                                 |[0x8000074c]:c.add a0, a1<br> [0x8000074e]:sd a0, 224(gp)<br>   |
|  50|[0x80004390]<br>0xE00000FFFFFFFFFF|- rs1_val == 1099511627776<br>                                                                                                               |[0x80000766]:c.add a0, a1<br> [0x80000768]:sd a0, 232(gp)<br>   |
|  51|[0x80004398]<br>0x0040040000000000|- rs2_val == 18014398509481984<br> - rs1_val == 4398046511104<br>                                                                            |[0x8000077c]:c.add a0, a1<br> [0x8000077e]:sd a0, 240(gp)<br>   |
|  52|[0x800043a0]<br>0x0000080020000000|- rs1_val == 8796093022208<br>                                                                                                               |[0x8000078e]:c.add a0, a1<br> [0x80000790]:sd a0, 248(gp)<br>   |
|  53|[0x800043a8]<br>0x0020100000000000|- rs1_val == 17592186044416<br>                                                                                                              |[0x800007a4]:c.add a0, a1<br> [0x800007a6]:sd a0, 256(gp)<br>   |
|  54|[0x800043b0]<br>0x0000200000000005|- rs1_val == 35184372088832<br>                                                                                                              |[0x800007b6]:c.add a0, a1<br> [0x800007b8]:sd a0, 264(gp)<br>   |
|  55|[0x800043b8]<br>0x0080400000000000|- rs2_val == 36028797018963968<br> - rs1_val == 70368744177664<br>                                                                           |[0x800007cc]:c.add a0, a1<br> [0x800007ce]:sd a0, 272(gp)<br>   |
|  56|[0x800043c0]<br>0x0000800020000000|- rs1_val == 140737488355328<br>                                                                                                             |[0x800007de]:c.add a0, a1<br> [0x800007e0]:sd a0, 280(gp)<br>   |
|  57|[0x800043c8]<br>0x0000FFFFFFFFFF7F|- rs2_val == -129<br> - rs1_val == 281474976710656<br>                                                                                       |[0x800007f0]:c.add a0, a1<br> [0x800007f2]:sd a0, 288(gp)<br>   |
|  58|[0x800043d0]<br>0x0002000000000004|- rs1_val == 562949953421312<br>                                                                                                             |[0x80000802]:c.add a0, a1<br> [0x80000804]:sd a0, 296(gp)<br>   |
|  59|[0x800043d8]<br>0x0006000000000000|- rs2_val == 562949953421312<br> - rs1_val == 1125899906842624<br>                                                                           |[0x80000818]:c.add a0, a1<br> [0x8000081a]:sd a0, 304(gp)<br>   |
|  60|[0x800043e0]<br>0x0008000010000000|- rs2_val == 268435456<br> - rs1_val == 2251799813685248<br>                                                                                 |[0x8000082a]:c.add a0, a1<br> [0x8000082c]:sd a0, 312(gp)<br>   |
|  61|[0x800043e8]<br>0x000FFFFFFFFFFFF9|- rs1_val == 4503599627370496<br>                                                                                                            |[0x8000083c]:c.add a0, a1<br> [0x8000083e]:sd a0, 320(gp)<br>   |
|  62|[0x800043f0]<br>0x0020200000000000|- rs2_val == 35184372088832<br> - rs1_val == 9007199254740992<br>                                                                            |[0x80000852]:c.add a0, a1<br> [0x80000854]:sd a0, 328(gp)<br>   |
|  63|[0x800043f8]<br>0x0840000000000000|- rs1_val == 18014398509481984<br>                                                                                                           |[0x80000868]:c.add a0, a1<br> [0x8000086a]:sd a0, 336(gp)<br>   |
|  64|[0x80004400]<br>0x007FBFFFFFFFFFFF|- rs1_val == 36028797018963968<br>                                                                                                           |[0x80000882]:c.add a0, a1<br> [0x80000884]:sd a0, 344(gp)<br>   |
|  65|[0x80004408]<br>0x0100000000000003|- rs1_val == 72057594037927936<br>                                                                                                           |[0x80000894]:c.add a0, a1<br> [0x80000896]:sd a0, 352(gp)<br>   |
|  66|[0x80004410]<br>0x0200000000800000|- rs2_val == 8388608<br> - rs1_val == 144115188075855872<br>                                                                                 |[0x800008a6]:c.add a0, a1<br> [0x800008a8]:sd a0, 360(gp)<br>   |
|  67|[0x80004418]<br>0x03FFFFFFFFFFFBFF|- rs2_val == -1025<br> - rs1_val == 288230376151711744<br>                                                                                   |[0x800008b8]:c.add a0, a1<br> [0x800008ba]:sd a0, 368(gp)<br>   |
|  68|[0x80004420]<br>0x07FFFFFFFFFFFDFF|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800008ca]:c.add a0, a1<br> [0x800008cc]:sd a0, 376(gp)<br>   |
|  69|[0x80004428]<br>0x1000000000000006|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800008dc]:c.add a0, a1<br> [0x800008de]:sd a0, 384(gp)<br>   |
|  70|[0x80004430]<br>0x2000008000000000|- rs2_val == 549755813888<br> - rs1_val == 2305843009213693952<br>                                                                           |[0x800008f2]:c.add a0, a1<br> [0x800008f4]:sd a0, 392(gp)<br>   |
|  71|[0x80004438]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x80000908]:c.add a0, a1<br> [0x8000090a]:sd a0, 400(gp)<br>   |
|  72|[0x80004440]<br>0x001FFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                          |[0x8000091a]:c.add a0, a1<br> [0x8000091c]:sd a0, 408(gp)<br>   |
|  73|[0x80004448]<br>0xFFFFFFFF7FFFFFFC|- rs2_val == -2147483649<br> - rs1_val == -3<br>                                                                                             |[0x80000930]:c.add a0, a1<br> [0x80000932]:sd a0, 416(gp)<br>   |
|  74|[0x80004450]<br>0x00000000007FFFFB|- rs1_val == -5<br>                                                                                                                          |[0x8000093e]:c.add a0, a1<br> [0x80000940]:sd a0, 424(gp)<br>   |
|  75|[0x80004458]<br>0xFFFFFFFDFFFFFFF6|- rs2_val == -8589934593<br> - rs1_val == -9<br>                                                                                             |[0x80000954]:c.add a0, a1<br> [0x80000956]:sd a0, 432(gp)<br>   |
|  76|[0x80004460]<br>0xFFFFEFFFFFFFFFEE|- rs2_val == -17592186044417<br> - rs1_val == -17<br>                                                                                        |[0x8000096a]:c.add a0, a1<br> [0x8000096c]:sd a0, 440(gp)<br>   |
|  77|[0x80004468]<br>0x03FFFFFFFFFFFFBF|- rs1_val == -65<br>                                                                                                                         |[0x8000097c]:c.add a0, a1<br> [0x8000097e]:sd a0, 448(gp)<br>   |
|  78|[0x80004470]<br>0x0000007FFFFFFF7F|- rs1_val == -129<br>                                                                                                                        |[0x8000098e]:c.add a0, a1<br> [0x80000990]:sd a0, 456(gp)<br>   |
|  79|[0x80004478]<br>0xFFFDFFFFFFFFFEFE|- rs2_val == -562949953421313<br> - rs1_val == -257<br>                                                                                      |[0x800009a4]:c.add a0, a1<br> [0x800009a6]:sd a0, 464(gp)<br>   |
|  80|[0x80004480]<br>0xBFFFFFFFFFFFFDFE|- rs2_val == -4611686018427387905<br> - rs1_val == -513<br>                                                                                  |[0x800009ba]:c.add a0, a1<br> [0x800009bc]:sd a0, 472(gp)<br>   |
|  81|[0x80004488]<br>0xFFFFFFFFFFFFFC04|- rs1_val == -1025<br>                                                                                                                       |[0x800009c8]:c.add a0, a1<br> [0x800009ca]:sd a0, 480(gp)<br>   |
|  82|[0x80004490]<br>0xFFC0000000000000|- rs2_val == -18014398509481985<br>                                                                                                          |[0x800009de]:c.add a0, a1<br> [0x800009e0]:sd a0, 488(gp)<br>   |
|  83|[0x80004498]<br>0xFF800000000003FF|- rs2_val == -36028797018963969<br>                                                                                                          |[0x800009f4]:c.add a0, a1<br> [0x800009f6]:sd a0, 496(gp)<br>   |
|  84|[0x800044a0]<br>0xFE000003FFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                         |[0x80000a0e]:c.add a0, a1<br> [0x80000a10]:sd a0, 504(gp)<br>   |
|  85|[0x800044a8]<br>0xFBFDFFFFFFFFFFFE|- rs2_val == -288230376151711745<br> - rs1_val == -562949953421313<br>                                                                       |[0x80000a2c]:c.add a0, a1<br> [0x80000a2e]:sd a0, 512(gp)<br>   |
|  86|[0x800044b0]<br>0xF8007FFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                         |[0x80000a46]:c.add a0, a1<br> [0x80000a48]:sd a0, 520(gp)<br>   |
|  87|[0x800044b8]<br>0xF000000000000006|- rs2_val == -1152921504606846977<br>                                                                                                        |[0x80000a5c]:c.add a0, a1<br> [0x80000a5e]:sd a0, 528(gp)<br>   |
|  88|[0x800044c0]<br>0xAAAAAAAAAAAAAAA6|- rs2_val == -6148914691236517206<br>                                                                                                        |[0x80000a86]:c.add a0, a1<br> [0x80000a88]:sd a0, 536(gp)<br>   |
|  89|[0x800044c8]<br>0x00000000000FF7FF|- rs2_val == 1048576<br> - rs1_val == -2049<br>                                                                                              |[0x80000a98]:c.add a0, a1<br> [0x80000a9a]:sd a0, 544(gp)<br>   |
|  90|[0x800044d0]<br>0xFFFFFFFFFFFFEEFE|- rs2_val == -257<br> - rs1_val == -4097<br>                                                                                                 |[0x80000aaa]:c.add a0, a1<br> [0x80000aac]:sd a0, 552(gp)<br>   |
|  91|[0x800044d8]<br>0xFFFFEFFFFFFFBFFE|- rs1_val == -16385<br>                                                                                                                      |[0x80000ac4]:c.add a0, a1<br> [0x80000ac6]:sd a0, 560(gp)<br>   |
|  92|[0x800044e0]<br>0x0000FFFFFFFF7FFF|- rs2_val == 281474976710656<br> - rs1_val == -32769<br>                                                                                     |[0x80000ada]:c.add a0, a1<br> [0x80000adc]:sd a0, 568(gp)<br>   |
|  93|[0x800044e8]<br>0xFFFFFFFFFFFF01FF|- rs1_val == -65537<br>                                                                                                                      |[0x80000aec]:c.add a0, a1<br> [0x80000aee]:sd a0, 576(gp)<br>   |
|  94|[0x800044f0]<br>0xFFFFFFFFFFFE3FFF|- rs2_val == 16384<br> - rs1_val == -131073<br>                                                                                              |[0x80000afe]:c.add a0, a1<br> [0x80000b00]:sd a0, 584(gp)<br>   |
|  95|[0x800044f8]<br>0xFFFFFFFFFFFC0006|- rs1_val == -262145<br>                                                                                                                     |[0x80000b10]:c.add a0, a1<br> [0x80000b12]:sd a0, 592(gp)<br>   |
|  96|[0x80004500]<br>0xFDFFFFFFFFF7FFFE|- rs1_val == -524289<br>                                                                                                                     |[0x80000b2a]:c.add a0, a1<br> [0x80000b2c]:sd a0, 600(gp)<br>   |
|  97|[0x80004508]<br>0xFFFFFFFFFFDFFFFC|- rs2_val == -3<br> - rs1_val == -2097153<br>                                                                                                |[0x80000b3c]:c.add a0, a1<br> [0x80000b3e]:sd a0, 608(gp)<br>   |
|  98|[0x80004510]<br>0xFFFFFFFFFFC3FFFF|- rs2_val == 262144<br> - rs1_val == -4194305<br>                                                                                            |[0x80000b4e]:c.add a0, a1<br> [0x80000b50]:sd a0, 616(gp)<br>   |
|  99|[0x80004518]<br>0xFFFFFFFFFF800007|- rs2_val == 8<br> - rs1_val == -8388609<br>                                                                                                 |[0x80000b60]:c.add a0, a1<br> [0x80000b62]:sd a0, 624(gp)<br>   |
| 100|[0x80004520]<br>0xFFFFFFFFFF001FFF|- rs1_val == -16777217<br>                                                                                                                   |[0x80000b72]:c.add a0, a1<br> [0x80000b74]:sd a0, 632(gp)<br>   |
| 101|[0x80004528]<br>0xFFFFFFFFFE000001|- rs1_val == -33554433<br>                                                                                                                   |[0x80000b84]:c.add a0, a1<br> [0x80000b86]:sd a0, 640(gp)<br>   |
| 102|[0x80004530]<br>0xFFFFFFFFFC0000FF|- rs2_val == 256<br> - rs1_val == -67108865<br>                                                                                              |[0x80000b96]:c.add a0, a1<br> [0x80000b98]:sd a0, 648(gp)<br>   |
| 103|[0x80004538]<br>0xFFFFFFFFEFFFFF7E|- rs1_val == -268435457<br>                                                                                                                  |[0x80000ba8]:c.add a0, a1<br> [0x80000baa]:sd a0, 656(gp)<br>   |
| 104|[0x80004540]<br>0xFFFFFFFFE7FFFFFF|- rs2_val == 134217728<br> - rs1_val == -536870913<br>                                                                                       |[0x80000bba]:c.add a0, a1<br> [0x80000bbc]:sd a0, 664(gp)<br>   |
| 105|[0x80004548]<br>0xFFFFFFFFC000FFFF|- rs2_val == 65536<br> - rs1_val == -1073741825<br>                                                                                          |[0x80000bcc]:c.add a0, a1<br> [0x80000bce]:sd a0, 672(gp)<br>   |
| 106|[0x80004550]<br>0xFFFFFFFF8000001F|- rs2_val == 32<br> - rs1_val == -2147483649<br>                                                                                             |[0x80000be2]:c.add a0, a1<br> [0x80000be4]:sd a0, 680(gp)<br>   |
| 107|[0x80004558]<br>0x00001FFEFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000bfc]:c.add a0, a1<br> [0x80000bfe]:sd a0, 688(gp)<br>   |
| 108|[0x80004560]<br>0xFFFFFFFD7FFFFFFE|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000c1a]:c.add a0, a1<br> [0x80000c1c]:sd a0, 696(gp)<br>   |
| 109|[0x80004568]<br>0xFFFFFFF7FFFFFFFE|- rs2_val == -17179869185<br> - rs1_val == -17179869185<br>                                                                                  |[0x80000c38]:c.add a0, a1<br> [0x80000c3a]:sd a0, 704(gp)<br>   |
| 110|[0x80004570]<br>0x00003FF7FFFFFFFF|- rs2_val == 70368744177664<br> - rs1_val == -34359738369<br>                                                                                |[0x80000c52]:c.add a0, a1<br> [0x80000c54]:sd a0, 712(gp)<br>   |
| 111|[0x80004578]<br>0x007FFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                |[0x80000c6c]:c.add a0, a1<br> [0x80000c6e]:sd a0, 720(gp)<br>   |
| 112|[0x80004580]<br>0x0000005FFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                               |[0x80000c86]:c.add a0, a1<br> [0x80000c88]:sd a0, 728(gp)<br>   |
| 113|[0x80004588]<br>0xFFFFFFBFFFFFBFFE|- rs2_val == -16385<br> - rs1_val == -274877906945<br>                                                                                       |[0x80000ca0]:c.add a0, a1<br> [0x80000ca2]:sd a0, 736(gp)<br>   |
| 114|[0x80004590]<br>0xFFFFFF8000007FFF|- rs2_val == 32768<br> - rs1_val == -549755813889<br>                                                                                        |[0x80000cb6]:c.add a0, a1<br> [0x80000cb8]:sd a0, 744(gp)<br>   |
| 115|[0x80004598]<br>0xFFFFFEFFFFFFFFF6|- rs2_val == -9<br> - rs1_val == -1099511627777<br>                                                                                          |[0x80000ccc]:c.add a0, a1<br> [0x80000cce]:sd a0, 752(gp)<br>   |
| 116|[0x800045a0]<br>0xFFEFFDFFFFFFFFFE|- rs2_val == -4503599627370497<br> - rs1_val == -2199023255553<br>                                                                           |[0x80000cea]:c.add a0, a1<br> [0x80000cec]:sd a0, 760(gp)<br>   |
| 117|[0x800045a8]<br>0x5555515555555554|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000d1c]:c.add a0, a1<br> [0x80000d1e]:sd a0, 768(gp)<br>   |
| 118|[0x800045b0]<br>0xFFFFF80003FFFFFF|- rs2_val == 67108864<br> - rs1_val == -8796093022209<br>                                                                                    |[0x80000d32]:c.add a0, a1<br> [0x80000d34]:sd a0, 776(gp)<br>   |
| 119|[0x800045b8]<br>0xFFFFEFFFF7FFFFFE|- rs1_val == -17592186044417<br>                                                                                                             |[0x80000d4c]:c.add a0, a1<br> [0x80000d4e]:sd a0, 784(gp)<br>   |
| 120|[0x800045c0]<br>0x03FFDFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                             |[0x80000d66]:c.add a0, a1<br> [0x80000d68]:sd a0, 792(gp)<br>   |
| 121|[0x800045c8]<br>0xFFFFB7FFFFFFFFFE|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000d84]:c.add a0, a1<br> [0x80000d86]:sd a0, 800(gp)<br>   |
| 122|[0x800045d0]<br>0xFFFD7FFFFFFFFFFE|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000da2]:c.add a0, a1<br> [0x80000da4]:sd a0, 808(gp)<br>   |
| 123|[0x800045d8]<br>0xFFFF001FFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000dbc]:c.add a0, a1<br> [0x80000dbe]:sd a0, 816(gp)<br>   |
| 124|[0x800045e0]<br>0xFFFC000000000007|- rs1_val == -1125899906842625<br>                                                                                                           |[0x80000dd2]:c.add a0, a1<br> [0x80000dd4]:sd a0, 824(gp)<br>   |
| 125|[0x800045e8]<br>0xEFF7FFFFFFFFFFFE|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000df0]:c.add a0, a1<br> [0x80000df2]:sd a0, 832(gp)<br>   |
| 126|[0x800045f0]<br>0xFFF3FFFFFFFFFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -4503599627370497<br>                                                                         |[0x80000e0a]:c.add a0, a1<br> [0x80000e0c]:sd a0, 840(gp)<br>   |
| 127|[0x800045f8]<br>0xFF80000003FFFFFF|- rs1_val == -36028797018963969<br>                                                                                                          |[0x80000e20]:c.add a0, a1<br> [0x80000e22]:sd a0, 848(gp)<br>   |
| 128|[0x80004600]<br>0xFEFFFFFFFFFFFEFE|- rs1_val == -72057594037927937<br>                                                                                                          |[0x80000e36]:c.add a0, a1<br> [0x80000e38]:sd a0, 856(gp)<br>   |
| 129|[0x80004608]<br>0xFDFFFFFFFFFFFEFE|- rs1_val == -144115188075855873<br>                                                                                                         |[0x80000e4c]:c.add a0, a1<br> [0x80000e4e]:sd a0, 864(gp)<br>   |
| 130|[0x80004610]<br>0xFBFFFFBFFFFFFFFE|- rs2_val == -274877906945<br> - rs1_val == -288230376151711745<br>                                                                          |[0x80000e6a]:c.add a0, a1<br> [0x80000e6c]:sd a0, 872(gp)<br>   |
| 131|[0x80004618]<br>0xFFDFBFFFFFFFFFFE|- rs2_val == -9007199254740993<br>                                                                                                           |[0x80000e88]:c.add a0, a1<br> [0x80000e8a]:sd a0, 880(gp)<br>   |
| 132|[0x80004620]<br>0xA2AAAAAAAAAAAAA9|- rs1_val == -576460752303423489<br>                                                                                                         |[0x80000eba]:c.add a0, a1<br> [0x80000ebc]:sd a0, 888(gp)<br>   |
| 133|[0x80004628]<br>0xEFFFFFFFFFFFFFDE|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000ed0]:c.add a0, a1<br> [0x80000ed2]:sd a0, 896(gp)<br>   |
| 134|[0x80004630]<br>0xEFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000eea]:c.add a0, a1<br> [0x80000eec]:sd a0, 904(gp)<br>   |
| 135|[0x80004638]<br>0xBFFFFFFBFFFFFFFE|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x80000f08]:c.add a0, a1<br> [0x80000f0a]:sd a0, 912(gp)<br>   |
| 136|[0x80004640]<br>0x9555555555555555|- rs1_val == 6148914691236517205<br>                                                                                                         |[0x80000f36]:c.add a0, a1<br> [0x80000f38]:sd a0, 920(gp)<br>   |
| 137|[0x80004648]<br>0xAAAAAABAAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                        |[0x80000f64]:c.add a0, a1<br> [0x80000f66]:sd a0, 928(gp)<br>   |
| 138|[0x80004650]<br>0xF00000000000000F|- rs2_val == 16<br>                                                                                                                          |[0x80000f7a]:c.add a0, a1<br> [0x80000f7c]:sd a0, 936(gp)<br>   |
| 139|[0x80004658]<br>0xFFFFFE000000003F|- rs2_val == 64<br>                                                                                                                          |[0x80000f90]:c.add a0, a1<br> [0x80000f92]:sd a0, 944(gp)<br>   |
| 140|[0x80004660]<br>0x0000000000400080|- rs2_val == 128<br>                                                                                                                         |[0x80000f9e]:c.add a0, a1<br> [0x80000fa0]:sd a0, 952(gp)<br>   |
| 141|[0x80004668]<br>0x0000020000000400|- rs2_val == 1024<br>                                                                                                                        |[0x80000fb0]:c.add a0, a1<br> [0x80000fb2]:sd a0, 960(gp)<br>   |
| 142|[0x80004670]<br>0x0000000000001400|- rs2_val == 4096<br>                                                                                                                        |[0x80000fbe]:c.add a0, a1<br> [0x80000fc0]:sd a0, 968(gp)<br>   |
| 143|[0x80004678]<br>0x5555555555575555|- rs2_val == 131072<br>                                                                                                                      |[0x80000fe8]:c.add a0, a1<br> [0x80000fea]:sd a0, 976(gp)<br>   |
| 144|[0x80004680]<br>0x0000000000480000|- rs2_val == 524288<br>                                                                                                                      |[0x80000ff6]:c.add a0, a1<br> [0x80000ff8]:sd a0, 984(gp)<br>   |
| 145|[0x80004688]<br>0xFFFFFFFE001FFFFF|- rs2_val == 2097152<br>                                                                                                                     |[0x8000100c]:c.add a0, a1<br> [0x8000100e]:sd a0, 992(gp)<br>   |
| 146|[0x80004690]<br>0x00000000FFFFFFBF|- rs2_val == 4294967296<br>                                                                                                                  |[0x8000101e]:c.add a0, a1<br> [0x80001020]:sd a0, 1000(gp)<br>  |
| 147|[0x80004698]<br>0x00000001FFBFFFFF|- rs2_val == 8589934592<br>                                                                                                                  |[0x80001034]:c.add a0, a1<br> [0x80001036]:sd a0, 1008(gp)<br>  |
| 148|[0x800046a0]<br>0xFFFFC003FFFFFFFF|- rs2_val == 17179869184<br>                                                                                                                 |[0x8000104e]:c.add a0, a1<br> [0x80001050]:sd a0, 1016(gp)<br>  |
| 149|[0x800046a8]<br>0xE000003FFFFFFFFF|- rs2_val == 274877906944<br>                                                                                                                |[0x80001068]:c.add a0, a1<br> [0x8000106a]:sd a0, 1024(gp)<br>  |
| 150|[0x800046b0]<br>0x000000FF7FFFFFFF|- rs2_val == 1099511627776<br>                                                                                                               |[0x80001082]:c.add a0, a1<br> [0x80001084]:sd a0, 1032(gp)<br>  |
| 151|[0x800046b8]<br>0x000003FFF7FFFFFF|- rs2_val == 4398046511104<br>                                                                                                               |[0x80001098]:c.add a0, a1<br> [0x8000109a]:sd a0, 1040(gp)<br>  |
| 152|[0x800046c0]<br>0xFFC00FFFFFFFFFFF|- rs2_val == 17592186044416<br> - rs1_val == -18014398509481985<br>                                                                          |[0x800010b2]:c.add a0, a1<br> [0x800010b4]:sd a0, 1048(gp)<br>  |
| 153|[0x800046c8]<br>0x00007FFFFBFFFFFF|- rs2_val == 140737488355328<br>                                                                                                             |[0x800010c8]:c.add a0, a1<br> [0x800010ca]:sd a0, 1056(gp)<br>  |
| 154|[0x800046d0]<br>0x0007FFFFFFFFFFFA|- rs2_val == 2251799813685248<br>                                                                                                            |[0x800010da]:c.add a0, a1<br> [0x800010dc]:sd a0, 1064(gp)<br>  |
| 155|[0x800046d8]<br>0x0010002000000000|- rs2_val == 4503599627370496<br>                                                                                                            |[0x800010f0]:c.add a0, a1<br> [0x800010f2]:sd a0, 1072(gp)<br>  |
| 156|[0x800046e0]<br>0x0100000000400000|- rs2_val == 72057594037927936<br>                                                                                                           |[0x80001102]:c.add a0, a1<br> [0x80001104]:sd a0, 1080(gp)<br>  |
| 157|[0x800046e8]<br>0x1FFFFFFEFFFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                         |[0x8000111c]:c.add a0, a1<br> [0x8000111e]:sd a0, 1088(gp)<br>  |
| 158|[0x800046f0]<br>0x0000000000000001|- rs2_val == -2<br>                                                                                                                          |[0x8000112a]:c.add a0, a1<br> [0x8000112c]:sd a0, 1096(gp)<br>  |
| 159|[0x800046f8]<br>0xFFFBFFFFFFFFFFFA|- rs2_val == -5<br>                                                                                                                          |[0x80001140]:c.add a0, a1<br> [0x80001142]:sd a0, 1104(gp)<br>  |
| 160|[0x80004700]<br>0x0000003FFFFFFFEF|- rs2_val == -17<br>                                                                                                                         |[0x80001152]:c.add a0, a1<br> [0x80001154]:sd a0, 1112(gp)<br>  |
| 161|[0x80004708]<br>0x00000003FFFFFFBF|- rs2_val == -65<br>                                                                                                                         |[0x80001164]:c.add a0, a1<br> [0x80001166]:sd a0, 1120(gp)<br>  |
| 162|[0x80004710]<br>0xFFFFFFFFF7FFF7FE|- rs2_val == -2049<br>                                                                                                                       |[0x8000117a]:c.add a0, a1<br> [0x8000117c]:sd a0, 1128(gp)<br>  |
| 163|[0x80004718]<br>0x000000007FFFEFFF|- rs2_val == -4097<br>                                                                                                                       |[0x80001190]:c.add a0, a1<br> [0x80001192]:sd a0, 1136(gp)<br>  |
| 164|[0x80004720]<br>0xFFFFFF7FFFFF7FFE|- rs2_val == -32769<br>                                                                                                                      |[0x800011aa]:c.add a0, a1<br> [0x800011ac]:sd a0, 1144(gp)<br>  |
| 165|[0x80004728]<br>0x03FFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                      |[0x800011c0]:c.add a0, a1<br> [0x800011c2]:sd a0, 1152(gp)<br>  |
| 166|[0x80004730]<br>0xFBFFFFFFFFF7FFFE|- rs2_val == -524289<br>                                                                                                                     |[0x800011da]:c.add a0, a1<br> [0x800011dc]:sd a0, 1160(gp)<br>  |
| 167|[0x80004738]<br>0xFFFFFFFFFFEFFFFA|- rs2_val == -1048577<br>                                                                                                                    |[0x800011ec]:c.add a0, a1<br> [0x800011ee]:sd a0, 1168(gp)<br>  |
| 168|[0x80004740]<br>0xFFFFFFFFFFDFBFFE|- rs2_val == -2097153<br>                                                                                                                    |[0x80001202]:c.add a0, a1<br> [0x80001204]:sd a0, 1176(gp)<br>  |
| 169|[0x80004748]<br>0xFFFFFFFFFFC00000|- rs2_val == -4194305<br>                                                                                                                    |[0x80001214]:c.add a0, a1<br> [0x80001216]:sd a0, 1184(gp)<br>  |
| 170|[0x80004750]<br>0x07FFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                    |[0x8000122a]:c.add a0, a1<br> [0x8000122c]:sd a0, 1192(gp)<br>  |
| 171|[0x80004758]<br>0x5555555554555554|- rs2_val == -16777217<br>                                                                                                                   |[0x80001258]:c.add a0, a1<br> [0x8000125a]:sd a0, 1200(gp)<br>  |
| 172|[0x80004760]<br>0xFFFFFFFEFDFFFFFE|- rs2_val == -33554433<br>                                                                                                                   |[0x80001272]:c.add a0, a1<br> [0x80001274]:sd a0, 1208(gp)<br>  |
| 173|[0x80004768]<br>0xFFFFEFFFFBFFFFFE|- rs2_val == -67108865<br>                                                                                                                   |[0x8000128c]:c.add a0, a1<br> [0x8000128e]:sd a0, 1216(gp)<br>  |
| 174|[0x80004770]<br>0xFFFFFFFFF0000006|- rs2_val == -268435457<br>                                                                                                                  |[0x8000129e]:c.add a0, a1<br> [0x800012a0]:sd a0, 1224(gp)<br>  |
| 175|[0x80004778]<br>0xFFFFFFFFE0000FFF|- rs2_val == -536870913<br>                                                                                                                  |[0x800012b0]:c.add a0, a1<br> [0x800012b2]:sd a0, 1232(gp)<br>  |
| 176|[0x80004780]<br>0xFFFFFFFFBFFFFFFC|- rs2_val == -1073741825<br>                                                                                                                 |[0x800012c2]:c.add a0, a1<br> [0x800012c4]:sd a0, 1240(gp)<br>  |
| 177|[0x80004788]<br>0xFDFFFFFEFFFFFFFE|- rs2_val == -4294967297<br>                                                                                                                 |[0x800012e0]:c.add a0, a1<br> [0x800012e2]:sd a0, 1248(gp)<br>  |
| 178|[0x80004790]<br>0x000FFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                |[0x800012fa]:c.add a0, a1<br> [0x800012fc]:sd a0, 1256(gp)<br>  |
| 179|[0x80004798]<br>0xFFFFFFF0000007FF|- rs2_val == -68719476737<br>                                                                                                                |[0x80001314]:c.add a0, a1<br> [0x80001316]:sd a0, 1264(gp)<br>  |
| 180|[0x800047a0]<br>0xFFFFFF807FFFFFFF|- rs2_val == -549755813889<br>                                                                                                               |[0x8000132e]:c.add a0, a1<br> [0x80001330]:sd a0, 1272(gp)<br>  |
| 181|[0x800047a8]<br>0xFFFEFDFFFFFFFFFE|- rs2_val == -2199023255553<br>                                                                                                              |[0x8000134c]:c.add a0, a1<br> [0x8000134e]:sd a0, 1280(gp)<br>  |
| 182|[0x800047b0]<br>0xDFFFDFFFFFFFFFFE|- rs2_val == -35184372088833<br>                                                                                                             |[0x8000136a]:c.add a0, a1<br> [0x8000136c]:sd a0, 1288(gp)<br>  |
| 183|[0x800047b8]<br>0xFFFF000000000008|- rs2_val == -281474976710657<br>                                                                                                            |[0x80001380]:c.add a0, a1<br> [0x80001382]:sd a0, 1296(gp)<br>  |
| 184|[0x800047c0]<br>0xFFFC000000000002|- rs2_val == -1125899906842625<br>                                                                                                           |[0x80001396]:c.add a0, a1<br> [0x80001398]:sd a0, 1304(gp)<br>  |
| 185|[0x800047c8]<br>0xFFE00000007FFFFF|- rs1_val == -9007199254740993<br>                                                                                                           |[0x800013ac]:c.add a0, a1<br> [0x800013ae]:sd a0, 1312(gp)<br>  |
| 186|[0x800047d0]<br>0xFFFFFFE003FFFFFF|- rs2_val == -137438953473<br>                                                                                                               |[0x800013c2]:c.add a0, a1<br> [0x800013c4]:sd a0, 1320(gp)<br>  |
| 187|[0x800047e0]<br>0x8000000000000005|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                        |[0x800013e6]:c.add a0, a1<br> [0x800013e8]:sd a0, 1336(gp)<br>  |
