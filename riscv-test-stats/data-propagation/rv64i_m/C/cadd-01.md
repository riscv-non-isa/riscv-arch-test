
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
| SIG_REGION                | [('0x80004208', '0x800047c8', '184 dwords')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 334     |
| Total Coverpoints Hit     | 334      |
| Total Signature Updates   | 184      |
| STAT1                     | 183      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001364]:c.add a0, a1
      [0x80001366]:sd a0, 1264(ra)
 -- Signature Address: 0x800047b8 Data: 0xFFFFFFFFFFC00003
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -4194305
      - rs1_val == 4






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

|s.no|            signature             |                                                                coverpoints                                                                |                              code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004208]<br>0x0000004000001000|- opcode : c.add<br> - rs1 : x2<br> - rs2 : x10<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 274877906944<br> - rs1_val == 4096<br> |[0x800003a4]:c.add sp, a0<br> [0x800003a6]:sd sp, 0(t2)<br>     |
|   2|[0x80004210]<br>0x0000000000000008|- rs1 : x20<br> - rs2 : x20<br> - rs1 == rs2<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                     |[0x800003b6]:c.add s4, s4<br> [0x800003b8]:sd s4, 8(t2)<br>     |
|   3|[0x80004218]<br>0x8000000080000000|- rs1 : x30<br> - rs2 : x5<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 2147483648<br> - rs1_val == -9223372036854775808<br>           |[0x800003cc]:c.add t5, t0<br> [0x800003ce]:sd t5, 16(t2)<br>    |
|   4|[0x80004220]<br>0x0200000000000000|- rs1 : x26<br> - rs2 : x29<br> - rs1_val == 0<br> - rs2_val == 144115188075855872<br>                                                     |[0x800003de]:c.add s10, t4<br> [0x800003e0]:sd s10, 24(t2)<br>  |
|   5|[0x80004228]<br>0x8000000000007FFF|- rs1 : x6<br> - rs2 : x19<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 32768<br> - rs1_val == 9223372036854775807<br>                |[0x800003f4]:c.add t1, s3<br> [0x800003f6]:sd t1, 32(t2)<br>    |
|   6|[0x80004230]<br>0xFFF0000000000000|- rs1 : x18<br> - rs2 : x22<br> - rs1_val == 1<br> - rs2_val < 0<br> - rs2_val == -4503599627370497<br>                                    |[0x8000040a]:c.add s2, s6<br> [0x8000040c]:sd s2, 40(t2)<br>    |
|   7|[0x80004238]<br>0x8000000200000000|- rs1 : x4<br> - rs2 : x31<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 8589934592<br>           |[0x80000420]:c.add tp, t6<br> [0x80000422]:sd tp, 48(t2)<br>    |
|   8|[0x80004240]<br>0xFDFFFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x24<br> - rs2_val == 0<br> - rs1_val == -144115188075855873<br>                                                    |[0x80000436]:c.add s3, s8<br> [0x80000438]:sd s3, 56(t2)<br>    |
|   9|[0x80004248]<br>0x7FFF7FFFFFFFFFFE|- rs1 : x27<br> - rs2 : x17<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -140737488355329<br>    |[0x80000454]:c.add s11, a7<br> [0x80000456]:sd s11, 64(t2)<br>  |
|  10|[0x80004250]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x9<br> - rs2_val == 1<br>                                                                                           |[0x8000046a]:c.add.hint.s1<br> [0x8000046c]:sd zero, 72(t2)<br> |
|  11|[0x80004258]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x1<br> - rs2 : x15<br> - rs2_val == -3<br> - rs1_val == 2<br>                                                                      |[0x80000478]:c.add ra, a5<br> [0x8000047a]:sd ra, 80(t2)<br>    |
|  12|[0x80004260]<br>0x0400000000000008|- rs1 : x3<br> - rs2 : x1<br> - rs2_val == 288230376151711744<br> - rs1_val == 8<br>                                                       |[0x8000048a]:c.add gp, ra<br> [0x8000048c]:sd gp, 88(t2)<br>    |
|  13|[0x80004268]<br>0xFFFFFFFFFFFFC00F|- rs1 : x23<br> - rs2 : x6<br> - rs2_val == -16385<br> - rs1_val == 16<br>                                                                 |[0x8000049c]:c.add s7, t1<br> [0x8000049e]:sd s7, 96(t2)<br>    |
|  14|[0x80004270]<br>0xE00000000000001F|- rs1 : x25<br> - rs2 : x30<br> - rs2_val == -2305843009213693953<br> - rs1_val == 32<br>                                                  |[0x800004b2]:c.add s9, t5<br> [0x800004b4]:sd s9, 104(t2)<br>   |
|  15|[0x80004278]<br>0x1000000000000040|- rs1 : x10<br> - rs2 : x26<br> - rs2_val == 1152921504606846976<br> - rs1_val == 64<br>                                                   |[0x800004c4]:c.add a0, s10<br> [0x800004c6]:sd a0, 112(t2)<br>  |
|  16|[0x80004280]<br>0xFC0000000000007F|- rs1 : x15<br> - rs2 : x27<br> - rs2_val == -288230376151711745<br> - rs1_val == 128<br>                                                  |[0x800004da]:c.add a5, s11<br> [0x800004dc]:sd a5, 120(t2)<br>  |
|  17|[0x80004288]<br>0x0000100000000100|- rs1 : x13<br> - rs2 : x3<br> - rs2_val == 17592186044416<br> - rs1_val == 256<br>                                                        |[0x800004ec]:c.add a3, gp<br> [0x800004ee]:sd a3, 128(t2)<br>   |
|  18|[0x80004290]<br>0xFFFFFE00000001FF|- rs1 : x21<br> - rs2 : x11<br> - rs2_val == -2199023255553<br> - rs1_val == 512<br>                                                       |[0x80000502]:c.add s5, a1<br> [0x80000504]:sd s5, 136(t2)<br>   |
|  19|[0x80004298]<br>0x0000020000000400|- rs1 : x17<br> - rs2 : x18<br> - rs2_val == 2199023255552<br> - rs1_val == 1024<br>                                                       |[0x80000514]:c.add a7, s2<br> [0x80000516]:sd a7, 144(t2)<br>   |
|  20|[0x800042a0]<br>0x0000080000000800|- rs1 : x22<br> - rs2 : x8<br> - rs2_val == 8796093022208<br> - rs1_val == 2048<br>                                                        |[0x8000052a]:c.add s6, fp<br> [0x8000052c]:sd s6, 152(t2)<br>   |
|  21|[0x800042a8]<br>0x0000000000002800|- rs1 : x28<br> - rs2 : x25<br> - rs2_val == 2048<br> - rs1_val == 8192<br>                                                                |[0x8000053c]:c.add t3, s9<br> [0x8000053e]:sd t3, 160(t2)<br>   |
|  22|[0x800042b0]<br>0xFFFFFFFFFFFF3FFF|- rs1 : x9<br> - rs2 : x2<br> - rs2_val == -65537<br> - rs1_val == 16384<br>                                                               |[0x8000054e]:c.add s1, sp<br> [0x80000550]:sd s1, 168(t2)<br>   |
|  23|[0x800042b8]<br>0x0000000000008200|- rs1 : x24<br> - rs2 : x23<br> - rs2_val == 512<br> - rs1_val == 32768<br>                                                                |[0x8000055c]:c.add s8, s7<br> [0x8000055e]:sd s8, 176(t2)<br>   |
|  24|[0x800042c0]<br>0xFFFFFFF80000FFFF|- rs1 : x12<br> - rs2 : x4<br> - rs2_val == -34359738369<br> - rs1_val == 65536<br>                                                        |[0x80000572]:c.add a2, tp<br> [0x80000574]:sd a2, 184(t2)<br>   |
|  25|[0x800042c8]<br>0x800000000001FFFF|- rs1 : x5<br> - rs2 : x13<br> - rs1_val == 131072<br>                                                                                     |[0x80000590]:c.add t0, a3<br> [0x80000592]:sd t0, 0(ra)<br>     |
|  26|[0x800042d0]<br>0xE00000000003FFFF|- rs1 : x14<br> - rs2 : x12<br> - rs1_val == 262144<br>                                                                                    |[0x800005a6]:c.add a4, a2<br> [0x800005a8]:sd a4, 8(ra)<br>     |
|  27|[0x800042d8]<br>0x0000000000080020|- rs1 : x7<br> - rs2 : x21<br> - rs2_val == 32<br> - rs1_val == 524288<br>                                                                 |[0x800005b4]:c.add t2, s5<br> [0x800005b6]:sd t2, 16(ra)<br>    |
|  28|[0x800042e0]<br>0xFF000000000FFFFF|- rs1 : x8<br> - rs2 : x16<br> - rs2_val == -72057594037927937<br> - rs1_val == 1048576<br>                                                |[0x800005ca]:c.add fp, a6<br> [0x800005cc]:sd fp, 24(ra)<br>    |
|  29|[0x800042e8]<br>0xFFFFFFFFF81FFFFF|- rs1 : x16<br> - rs2 : x14<br> - rs2_val == -134217729<br> - rs1_val == 2097152<br>                                                       |[0x800005dc]:c.add a6, a4<br> [0x800005de]:sd a6, 32(ra)<br>    |
|  30|[0x800042f0]<br>0x00000000003F7FFF|- rs1 : x11<br> - rs2 : x28<br> - rs2_val == -32769<br> - rs1_val == 4194304<br>                                                           |[0x800005ee]:c.add a1, t3<br> [0x800005f0]:sd a1, 40(ra)<br>    |
|  31|[0x800042f8]<br>0xFFF80000007FFFFF|- rs1 : x31<br> - rs2 : x7<br> - rs2_val == -2251799813685249<br> - rs1_val == 8388608<br>                                                 |[0x80000604]:c.add t6, t2<br> [0x80000606]:sd t6, 48(ra)<br>    |
|  32|[0x80004300]<br>0x0000000000FBFFFF|- rs1 : x29<br> - rs2_val == -262145<br> - rs1_val == 16777216<br>                                                                         |[0x80000616]:c.add t4, a2<br> [0x80000618]:sd t4, 56(ra)<br>    |
|  33|[0x80004308]<br>0x0000000002010000|- rs2_val == 65536<br> - rs1_val == 33554432<br>                                                                                           |[0x80000624]:c.add a0, a1<br> [0x80000626]:sd a0, 64(ra)<br>    |
|  34|[0x80004310]<br>0xFFFFFE0003FFFFFF|- rs1_val == 67108864<br>                                                                                                                  |[0x8000063a]:c.add a0, a1<br> [0x8000063c]:sd a0, 72(ra)<br>    |
|  35|[0x80004318]<br>0x0000000008000008|- rs2_val == 8<br> - rs1_val == 134217728<br>                                                                                              |[0x80000648]:c.add a0, a1<br> [0x8000064a]:sd a0, 80(ra)<br>    |
|  36|[0x80004320]<br>0x0000001010000000|- rs2_val == 68719476736<br> - rs1_val == 268435456<br>                                                                                    |[0x8000065a]:c.add a0, a1<br> [0x8000065c]:sd a0, 88(ra)<br>    |
|  37|[0x80004328]<br>0xFF0000001FFFFFFF|- rs1_val == 536870912<br>                                                                                                                 |[0x80000670]:c.add a0, a1<br> [0x80000672]:sd a0, 96(ra)<br>    |
|  38|[0x80004330]<br>0x000000003FFFFF7F|- rs2_val == -129<br> - rs1_val == 1073741824<br>                                                                                          |[0x8000067e]:c.add a0, a1<br> [0x80000680]:sd a0, 104(ra)<br>   |
|  39|[0x80004338]<br>0x000000007EFFFFFF|- rs2_val == -16777217<br> - rs1_val == 2147483648<br>                                                                                     |[0x80000694]:c.add a0, a1<br> [0x80000696]:sd a0, 112(ra)<br>   |
|  40|[0x80004340]<br>0x00000000FFFFFFF6|- rs1_val == 4294967296<br>                                                                                                                |[0x800006a6]:c.add a0, a1<br> [0x800006a8]:sd a0, 120(ra)<br>   |
|  41|[0x80004348]<br>0xFFFF0003FFFFFFFF|- rs2_val == -281474976710657<br> - rs1_val == 17179869184<br>                                                                             |[0x800006c0]:c.add a0, a1<br> [0x800006c2]:sd a0, 128(ra)<br>   |
|  42|[0x80004350]<br>0x0000000800000002|- rs2_val == 2<br> - rs1_val == 34359738368<br>                                                                                            |[0x800006d2]:c.add a0, a1<br> [0x800006d4]:sd a0, 136(ra)<br>   |
|  43|[0x80004358]<br>0x0000001010000000|- rs2_val == 268435456<br> - rs1_val == 68719476736<br>                                                                                    |[0x800006e4]:c.add a0, a1<br> [0x800006e6]:sd a0, 144(ra)<br>   |
|  44|[0x80004360]<br>0x00000017FFFFFFFF|- rs1_val == 137438953472<br>                                                                                                              |[0x800006fe]:c.add a0, a1<br> [0x80000700]:sd a0, 152(ra)<br>   |
|  45|[0x80004368]<br>0x0000004000004000|- rs2_val == 16384<br> - rs1_val == 274877906944<br>                                                                                       |[0x80000710]:c.add a0, a1<br> [0x80000712]:sd a0, 160(ra)<br>   |
|  46|[0x80004370]<br>0x0002008000000000|- rs2_val == 562949953421312<br> - rs1_val == 549755813888<br>                                                                             |[0x80000726]:c.add a0, a1<br> [0x80000728]:sd a0, 168(ra)<br>   |
|  47|[0x80004378]<br>0x000000FFFFFFFFF9|- rs1_val == 1099511627776<br>                                                                                                             |[0x80000738]:c.add a0, a1<br> [0x8000073a]:sd a0, 176(ra)<br>   |
|  48|[0x80004380]<br>0x0100020000000000|- rs2_val == 72057594037927936<br> - rs1_val == 2199023255552<br>                                                                          |[0x8000074e]:c.add a0, a1<br> [0x80000750]:sd a0, 184(ra)<br>   |
|  49|[0x80004388]<br>0x000003FFFFFBFFFF|- rs1_val == 4398046511104<br>                                                                                                             |[0x80000764]:c.add a0, a1<br> [0x80000766]:sd a0, 192(ra)<br>   |
|  50|[0x80004390]<br>0x000007FFFFFFFFFF|- rs1_val == 8796093022208<br>                                                                                                             |[0x80000776]:c.add a0, a1<br> [0x80000778]:sd a0, 200(ra)<br>   |
|  51|[0x80004398]<br>0x0000100000000080|- rs2_val == 128<br> - rs1_val == 17592186044416<br>                                                                                       |[0x80000788]:c.add a0, a1<br> [0x8000078a]:sd a0, 208(ra)<br>   |
|  52|[0x800043a0]<br>0x00000FFFFFFFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 35184372088832<br>                                                                           |[0x800007a2]:c.add a0, a1<br> [0x800007a4]:sd a0, 216(ra)<br>   |
|  53|[0x800043a8]<br>0x00003BFFFFFFFFFF|- rs2_val == -4398046511105<br> - rs1_val == 70368744177664<br>                                                                            |[0x800007bc]:c.add a0, a1<br> [0x800007be]:sd a0, 224(ra)<br>   |
|  54|[0x800043b0]<br>0x00007FFFFFFFFDFF|- rs2_val == -513<br> - rs1_val == 140737488355328<br>                                                                                     |[0x800007ce]:c.add a0, a1<br> [0x800007d0]:sd a0, 232(ra)<br>   |
|  55|[0x800043b8]<br>0x8001000000000000|- rs1_val == 281474976710656<br>                                                                                                           |[0x800007e4]:c.add a0, a1<br> [0x800007e6]:sd a0, 240(ra)<br>   |
|  56|[0x800043c0]<br>0x0001FFFFFFFFDFFF|- rs2_val == -8193<br> - rs1_val == 562949953421312<br>                                                                                    |[0x800007fa]:c.add a0, a1<br> [0x800007fc]:sd a0, 248(ra)<br>   |
|  57|[0x800043c8]<br>0x0004000000000040|- rs2_val == 64<br> - rs1_val == 1125899906842624<br>                                                                                      |[0x8000080c]:c.add a0, a1<br> [0x8000080e]:sd a0, 256(ra)<br>   |
|  58|[0x800043d0]<br>0x0008000002000000|- rs2_val == 33554432<br> - rs1_val == 2251799813685248<br>                                                                                |[0x8000081e]:c.add a0, a1<br> [0x80000820]:sd a0, 264(ra)<br>   |
|  59|[0x800043d8]<br>0xF00FFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br> - rs1_val == 4503599627370496<br>                                                                    |[0x80000838]:c.add a0, a1<br> [0x8000083a]:sd a0, 272(ra)<br>   |
|  60|[0x800043e0]<br>0x001FFFBFFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 9007199254740992<br>                                                                           |[0x80000852]:c.add a0, a1<br> [0x80000854]:sd a0, 280(ra)<br>   |
|  61|[0x800043e8]<br>0x0040800000000000|- rs2_val == 140737488355328<br> - rs1_val == 18014398509481984<br>                                                                        |[0x80000868]:c.add a0, a1<br> [0x8000086a]:sd a0, 288(ra)<br>   |
|  62|[0x800043f0]<br>0x0080000100000000|- rs2_val == 4294967296<br> - rs1_val == 36028797018963968<br>                                                                             |[0x8000087e]:c.add a0, a1<br> [0x80000880]:sd a0, 296(ra)<br>   |
|  63|[0x800043f8]<br>0x0100000000000020|- rs1_val == 72057594037927936<br>                                                                                                         |[0x80000890]:c.add a0, a1<br> [0x80000892]:sd a0, 304(ra)<br>   |
|  64|[0x80004400]<br>0x0200000000000400|- rs2_val == 1024<br> - rs1_val == 144115188075855872<br>                                                                                  |[0x800008a2]:c.add a0, a1<br> [0x800008a4]:sd a0, 312(ra)<br>   |
|  65|[0x80004408]<br>0x0400008000000000|- rs2_val == 549755813888<br> - rs1_val == 288230376151711744<br>                                                                          |[0x800008b8]:c.add a0, a1<br> [0x800008ba]:sd a0, 320(ra)<br>   |
|  66|[0x80004410]<br>0x07FFF7FFFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 576460752303423488<br>                                                                        |[0x800008d2]:c.add a0, a1<br> [0x800008d4]:sd a0, 328(ra)<br>   |
|  67|[0x80004418]<br>0x0FFFFBFFFFFFFFFF|- rs1_val == 1152921504606846976<br>                                                                                                       |[0x800008ec]:c.add a0, a1<br> [0x800008ee]:sd a0, 336(ra)<br>   |
|  68|[0x80004420]<br>0x1FFFFFFFFFFFEFFF|- rs2_val == -4097<br> - rs1_val == 2305843009213693952<br>                                                                                |[0x80000902]:c.add a0, a1<br> [0x80000904]:sd a0, 344(ra)<br>   |
|  69|[0x80004428]<br>0x3FFFFF7FFFFFFFFF|- rs2_val == -549755813889<br> - rs1_val == 4611686018427387904<br>                                                                        |[0x8000091c]:c.add a0, a1<br> [0x8000091e]:sd a0, 352(ra)<br>   |
|  70|[0x80004430]<br>0xFFFFFFFFFFFDFFFD|- rs2_val == -131073<br> - rs1_val == -2<br>                                                                                               |[0x8000092e]:c.add a0, a1<br> [0x80000930]:sd a0, 360(ra)<br>   |
|  71|[0x80004438]<br>0x0000000000000002|- rs1_val == -3<br>                                                                                                                        |[0x8000093c]:c.add a0, a1<br> [0x8000093e]:sd a0, 368(ra)<br>   |
|  72|[0x80004440]<br>0x0000003FFFFFFFFB|- rs1_val == -5<br>                                                                                                                        |[0x8000094e]:c.add a0, a1<br> [0x80000950]:sd a0, 376(ra)<br>   |
|  73|[0x80004448]<br>0xFFFFFFFFF7FFFFF6|- rs1_val == -9<br>                                                                                                                        |[0x80000960]:c.add a0, a1<br> [0x80000962]:sd a0, 384(ra)<br>   |
|  74|[0x80004450]<br>0x000000000000FFEF|- rs1_val == -17<br>                                                                                                                       |[0x8000096e]:c.add a0, a1<br> [0x80000970]:sd a0, 392(ra)<br>   |
|  75|[0x80004458]<br>0xFFFFFFFFFFFFFFBE|- rs2_val == -33<br> - rs1_val == -33<br>                                                                                                  |[0x8000097c]:c.add a0, a1<br> [0x8000097e]:sd a0, 400(ra)<br>   |
|  76|[0x80004460]<br>0xFFFFFFFFFFFFFBBE|- rs2_val == -1025<br> - rs1_val == -65<br>                                                                                                |[0x8000098a]:c.add a0, a1<br> [0x8000098c]:sd a0, 408(ra)<br>   |
|  77|[0x80004468]<br>0xFFBFFFEFFFFFFFFE|- rs2_val == -18014398509481985<br> - rs1_val == -68719476737<br>                                                                          |[0x800009a8]:c.add a0, a1<br> [0x800009aa]:sd a0, 416(ra)<br>   |
|  78|[0x80004470]<br>0xFF7FFFFFFFFFFBFE|- rs2_val == -36028797018963969<br> - rs1_val == -1025<br>                                                                                 |[0x800009be]:c.add a0, a1<br> [0x800009c0]:sd a0, 424(ra)<br>   |
|  79|[0x80004478]<br>0xFE0000003FFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                       |[0x800009d4]:c.add a0, a1<br> [0x800009d6]:sd a0, 432(ra)<br>   |
|  80|[0x80004480]<br>0xF800000000001FFF|- rs2_val == -576460752303423489<br>                                                                                                       |[0x800009ea]:c.add a0, a1<br> [0x800009ec]:sd a0, 440(ra)<br>   |
|  81|[0x80004488]<br>0xC00001FFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                      |[0x80000a04]:c.add a0, a1<br> [0x80000a06]:sd a0, 448(ra)<br>   |
|  82|[0x80004490]<br>0x5555955555555555|- rs2_val == 6148914691236517205<br>                                                                                                       |[0x80000a32]:c.add a0, a1<br> [0x80000a34]:sd a0, 456(ra)<br>   |
|  83|[0x80004498]<br>0xAAAAAAAAAACAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                      |[0x80000a5c]:c.add a0, a1<br> [0x80000a5e]:sd a0, 464(ra)<br>   |
|  84|[0x800044a0]<br>0x7FFFFFFFFFFFFF7E|- rs1_val == -129<br>                                                                                                                      |[0x80000a72]:c.add a0, a1<br> [0x80000a74]:sd a0, 472(ra)<br>   |
|  85|[0x800044a8]<br>0xFFFFFDFFFFFFFEFE|- rs1_val == -257<br>                                                                                                                      |[0x80000a88]:c.add a0, a1<br> [0x80000a8a]:sd a0, 480(ra)<br>   |
|  86|[0x800044b0]<br>0xFFFFFFFFFFFFFDFB|- rs1_val == -513<br>                                                                                                                      |[0x80000a96]:c.add a0, a1<br> [0x80000a98]:sd a0, 488(ra)<br>   |
|  87|[0x800044b8]<br>0xFFFFFFFFFFFFF805|- rs1_val == -2049<br>                                                                                                                     |[0x80000aa8]:c.add a0, a1<br> [0x80000aaa]:sd a0, 496(ra)<br>   |
|  88|[0x800044c0]<br>0x7FFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                     |[0x80000abe]:c.add a0, a1<br> [0x80000ac0]:sd a0, 504(ra)<br>   |
|  89|[0x800044c8]<br>0xFFFFFFFFFFFFDBFE|- rs1_val == -8193<br>                                                                                                                     |[0x80000ad0]:c.add a0, a1<br> [0x80000ad2]:sd a0, 512(ra)<br>   |
|  90|[0x800044d0]<br>0xFFFFFFBFFFFFBFFE|- rs1_val == -16385<br>                                                                                                                    |[0x80000aea]:c.add a0, a1<br> [0x80000aec]:sd a0, 520(ra)<br>   |
|  91|[0x800044d8]<br>0xFFFFFFFFFFFF87FF|- rs1_val == -32769<br>                                                                                                                    |[0x80000b00]:c.add a0, a1<br> [0x80000b02]:sd a0, 528(ra)<br>   |
|  92|[0x800044e0]<br>0xFFFFFFFFFFFCFFFE|- rs1_val == -65537<br>                                                                                                                    |[0x80000b16]:c.add a0, a1<br> [0x80000b18]:sd a0, 536(ra)<br>   |
|  93|[0x800044e8]<br>0xFFFFFFFFFBFDFFFE|- rs2_val == -67108865<br> - rs1_val == -131073<br>                                                                                        |[0x80000b2c]:c.add a0, a1<br> [0x80000b2e]:sd a0, 544(ra)<br>   |
|  94|[0x800044f0]<br>0x0000000FFFFBFFFF|- rs1_val == -262145<br>                                                                                                                   |[0x80000b42]:c.add a0, a1<br> [0x80000b44]:sd a0, 552(ra)<br>   |
|  95|[0x800044f8]<br>0xFFF7FFFFFFF7FFFE|- rs1_val == -524289<br>                                                                                                                   |[0x80000b5c]:c.add a0, a1<br> [0x80000b5e]:sd a0, 560(ra)<br>   |
|  96|[0x80004500]<br>0x007FFFFFFFEFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -1048577<br>                                                                               |[0x80000b72]:c.add a0, a1<br> [0x80000b74]:sd a0, 568(ra)<br>   |
|  97|[0x80004508]<br>0xFFFFFFFFEFDFFFFE|- rs2_val == -268435457<br> - rs1_val == -2097153<br>                                                                                      |[0x80000b88]:c.add a0, a1<br> [0x80000b8a]:sd a0, 576(ra)<br>   |
|  98|[0x80004510]<br>0x0000FFFFFFBFFFFF|- rs2_val == 281474976710656<br> - rs1_val == -4194305<br>                                                                                 |[0x80000b9e]:c.add a0, a1<br> [0x80000ba0]:sd a0, 584(ra)<br>   |
|  99|[0x80004518]<br>0x00FFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                  |[0x80000bb4]:c.add a0, a1<br> [0x80000bb6]:sd a0, 592(ra)<br>   |
| 100|[0x80004520]<br>0xFFFFFFFFFF00FFFF|- rs1_val == -16777217<br>                                                                                                                 |[0x80000bc6]:c.add a0, a1<br> [0x80000bc8]:sd a0, 600(ra)<br>   |
| 101|[0x80004528]<br>0x0FFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                 |[0x80000bdc]:c.add a0, a1<br> [0x80000bde]:sd a0, 608(ra)<br>   |
| 102|[0x80004530]<br>0x0000001FFBFFFFFF|- rs2_val == 137438953472<br> - rs1_val == -67108865<br>                                                                                   |[0x80000bf2]:c.add a0, a1<br> [0x80000bf4]:sd a0, 616(ra)<br>   |
| 103|[0x80004538]<br>0xFFFFFFFFF8000003|- rs1_val == -134217729<br>                                                                                                                |[0x80000c04]:c.add a0, a1<br> [0x80000c06]:sd a0, 624(ra)<br>   |
| 104|[0x80004540]<br>0x000000000FFFFFFF|- rs2_val == 536870912<br> - rs1_val == -268435457<br>                                                                                     |[0x80000c16]:c.add a0, a1<br> [0x80000c18]:sd a0, 632(ra)<br>   |
| 105|[0x80004548]<br>0xFFFFFFFFDFBFFFFE|- rs2_val == -4194305<br> - rs1_val == -536870913<br>                                                                                      |[0x80000c2c]:c.add a0, a1<br> [0x80000c2e]:sd a0, 640(ra)<br>   |
| 106|[0x80004550]<br>0xFFFFFFFFC0000001|- rs1_val == -1073741825<br>                                                                                                               |[0x80000c3e]:c.add a0, a1<br> [0x80000c40]:sd a0, 648(ra)<br>   |
| 107|[0x80004558]<br>0xFFEFFFFF7FFFFFFE|- rs1_val == -2147483649<br>                                                                                                               |[0x80000c5c]:c.add a0, a1<br> [0x80000c5e]:sd a0, 656(ra)<br>   |
| 108|[0x80004560]<br>0x000FFFFEFFFFFFFF|- rs2_val == 4503599627370496<br> - rs1_val == -4294967297<br>                                                                             |[0x80000c76]:c.add a0, a1<br> [0x80000c78]:sd a0, 664(ra)<br>   |
| 109|[0x80004568]<br>0xFFFFFFFE00007FFF|- rs1_val == -8589934593<br>                                                                                                               |[0x80000c8c]:c.add a0, a1<br> [0x80000c8e]:sd a0, 672(ra)<br>   |
| 110|[0x80004570]<br>0xAAAAAAA6AAAAAAA9|- rs1_val == -17179869185<br>                                                                                                              |[0x80000cbe]:c.add a0, a1<br> [0x80000cc0]:sd a0, 680(ra)<br>   |
| 111|[0x80004578]<br>0xFFFFFFF7FFFFFDFE|- rs1_val == -34359738369<br>                                                                                                              |[0x80000cd4]:c.add a0, a1<br> [0x80000cd6]:sd a0, 688(ra)<br>   |
| 112|[0x80004580]<br>0xFFFFFFBFFFFFFFFE|- rs2_val == -137438953473<br> - rs1_val == -137438953473<br>                                                                              |[0x80000cf2]:c.add a0, a1<br> [0x80000cf4]:sd a0, 696(ra)<br>   |
| 113|[0x80004588]<br>0xFFFFFFC00007FFFF|- rs2_val == 524288<br> - rs1_val == -274877906945<br>                                                                                     |[0x80000d08]:c.add a0, a1<br> [0x80000d0a]:sd a0, 704(ra)<br>   |
| 114|[0x80004590]<br>0xFFFFFF7FFEFFFFFE|- rs1_val == -549755813889<br>                                                                                                             |[0x80000d22]:c.add a0, a1<br> [0x80000d24]:sd a0, 712(ra)<br>   |
| 115|[0x80004598]<br>0xFFFFFEFFFFFFEFFE|- rs1_val == -1099511627777<br>                                                                                                            |[0x80000d3c]:c.add a0, a1<br> [0x80000d3e]:sd a0, 720(ra)<br>   |
| 116|[0x800045a0]<br>0xFFFFFDFFFF7FFFFE|- rs2_val == -8388609<br> - rs1_val == -2199023255553<br>                                                                                  |[0x80000d56]:c.add a0, a1<br> [0x80000d58]:sd a0, 728(ra)<br>   |
| 117|[0x800045a8]<br>0xFFFFFC7FFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                            |[0x80000d70]:c.add a0, a1<br> [0x80000d72]:sd a0, 736(ra)<br>   |
| 118|[0x800045b0]<br>0xFFFFF80000000001|- rs1_val == -8796093022209<br>                                                                                                            |[0x80000d86]:c.add a0, a1<br> [0x80000d88]:sd a0, 744(ra)<br>   |
| 119|[0x800045b8]<br>0xFFFF9FFFFFFFFFFE|- rs2_val == -70368744177665<br> - rs1_val == -35184372088833<br>                                                                          |[0x80000da4]:c.add a0, a1<br> [0x80000da6]:sd a0, 752(ra)<br>   |
| 120|[0x800045c0]<br>0xFFFFBFFFFFFFFF7E|- rs1_val == -70368744177665<br>                                                                                                           |[0x80000dba]:c.add a0, a1<br> [0x80000dbc]:sd a0, 760(ra)<br>   |
| 121|[0x800045c8]<br>0xFFFF000000000004|- rs1_val == -281474976710657<br>                                                                                                          |[0x80000dd0]:c.add a0, a1<br> [0x80000dd2]:sd a0, 768(ra)<br>   |
| 122|[0x800045d0]<br>0xFFFE00000003FFFF|- rs2_val == 262144<br> - rs1_val == -562949953421313<br>                                                                                  |[0x80000de6]:c.add a0, a1<br> [0x80000de8]:sd a0, 776(ra)<br>   |
| 123|[0x800045d8]<br>0x7FFBFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                         |[0x80000e00]:c.add a0, a1<br> [0x80000e02]:sd a0, 784(ra)<br>   |
| 124|[0x800045e0]<br>0xFFF7FFFFFFFFFFF5|- rs1_val == -2251799813685249<br>                                                                                                         |[0x80000e16]:c.add a0, a1<br> [0x80000e18]:sd a0, 792(ra)<br>   |
| 125|[0x800045e8]<br>0xFF800FFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                        |[0x80000e30]:c.add a0, a1<br> [0x80000e32]:sd a0, 800(ra)<br>   |
| 126|[0x800045f0]<br>0xFF0000000FFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                        |[0x80000e46]:c.add a0, a1<br> [0x80000e48]:sd a0, 808(ra)<br>   |
| 127|[0x800045f8]<br>0xFBFFFFFFFFEFFFFE|- rs2_val == -1048577<br> - rs1_val == -288230376151711745<br>                                                                             |[0x80000e60]:c.add a0, a1<br> [0x80000e62]:sd a0, 816(ra)<br>   |
| 128|[0x80004600]<br>0xF80000FFFFFFFFFF|- rs2_val == 1099511627776<br> - rs1_val == -576460752303423489<br>                                                                        |[0x80000e7a]:c.add a0, a1<br> [0x80000e7c]:sd a0, 824(ra)<br>   |
| 129|[0x80004608]<br>0xFFDFFFFFFFFFFFF5|- rs2_val == -9007199254740993<br>                                                                                                         |[0x80000e90]:c.add a0, a1<br> [0x80000e92]:sd a0, 832(ra)<br>   |
| 130|[0x80004610]<br>0xF000000000001FFF|- rs2_val == 8192<br> - rs1_val == -1152921504606846977<br>                                                                                |[0x80000ea6]:c.add a0, a1<br> [0x80000ea8]:sd a0, 840(ra)<br>   |
| 131|[0x80004618]<br>0xDFFFFFFFFDFFFFFE|- rs2_val == -33554433<br> - rs1_val == -2305843009213693953<br>                                                                           |[0x80000ec0]:c.add a0, a1<br> [0x80000ec2]:sd a0, 848(ra)<br>   |
| 132|[0x80004620]<br>0xBFFFFFBFFFFFFFFE|- rs1_val == -4611686018427387905<br>                                                                                                      |[0x80000ede]:c.add a0, a1<br> [0x80000ee0]:sd a0, 856(ra)<br>   |
| 133|[0x80004628]<br>0x5555515555555554|- rs1_val == 6148914691236517205<br>                                                                                                       |[0x80000f10]:c.add a0, a1<br> [0x80000f12]:sd a0, 864(ra)<br>   |
| 134|[0x80004630]<br>0xAA6AAAAAAAAAAAA9|- rs1_val == -6148914691236517206<br>                                                                                                      |[0x80000f42]:c.add a0, a1<br> [0x80000f44]:sd a0, 872(ra)<br>   |
| 135|[0x80004638]<br>0x0000000000040010|- rs2_val == 16<br>                                                                                                                        |[0x80000f50]:c.add a0, a1<br> [0x80000f52]:sd a0, 880(ra)<br>   |
| 136|[0x80004640]<br>0xFFFF8000000000FF|- rs2_val == 256<br>                                                                                                                       |[0x80000f66]:c.add a0, a1<br> [0x80000f68]:sd a0, 888(ra)<br>   |
| 137|[0x80004648]<br>0x0000004000001000|- rs2_val == 4096<br>                                                                                                                      |[0x80000f78]:c.add a0, a1<br> [0x80000f7a]:sd a0, 896(ra)<br>   |
| 138|[0x80004650]<br>0xFFFFFFFFE001FFFF|- rs2_val == 131072<br>                                                                                                                    |[0x80000f8a]:c.add a0, a1<br> [0x80000f8c]:sd a0, 904(ra)<br>   |
| 139|[0x80004658]<br>0x0000000000110000|- rs2_val == 1048576<br>                                                                                                                   |[0x80000f98]:c.add a0, a1<br> [0x80000f9a]:sd a0, 912(ra)<br>   |
| 140|[0x80004660]<br>0x0000000000204000|- rs2_val == 2097152<br>                                                                                                                   |[0x80000fa6]:c.add a0, a1<br> [0x80000fa8]:sd a0, 920(ra)<br>   |
| 141|[0x80004668]<br>0xFFE00000003FFFFF|- rs2_val == 4194304<br> - rs1_val == -9007199254740993<br>                                                                                |[0x80000fbc]:c.add a0, a1<br> [0x80000fbe]:sd a0, 928(ra)<br>   |
| 142|[0x80004670]<br>0x0000000001800000|- rs2_val == 8388608<br>                                                                                                                   |[0x80000fca]:c.add a0, a1<br> [0x80000fcc]:sd a0, 936(ra)<br>   |
| 143|[0x80004678]<br>0x0002000001000000|- rs2_val == 16777216<br>                                                                                                                  |[0x80000fdc]:c.add a0, a1<br> [0x80000fde]:sd a0, 944(ra)<br>   |
| 144|[0x80004680]<br>0x0000000001FFFFFF|- rs2_val == 67108864<br>                                                                                                                  |[0x80000fee]:c.add a0, a1<br> [0x80000ff0]:sd a0, 952(ra)<br>   |
| 145|[0x80004688]<br>0x0000000008000100|- rs2_val == 134217728<br>                                                                                                                 |[0x80000ffc]:c.add a0, a1<br> [0x80000ffe]:sd a0, 960(ra)<br>   |
| 146|[0x80004690]<br>0x0000000040000006|- rs2_val == 1073741824<br>                                                                                                                |[0x8000100a]:c.add a0, a1<br> [0x8000100c]:sd a0, 968(ra)<br>   |
| 147|[0x80004698]<br>0x0000000200000010|- rs2_val == 8589934592<br>                                                                                                                |[0x8000101c]:c.add a0, a1<br> [0x8000101e]:sd a0, 976(ra)<br>   |
| 148|[0x800046a0]<br>0x00000003FFFFFEFF|- rs2_val == 17179869184<br>                                                                                                               |[0x8000102e]:c.add a0, a1<br> [0x80001030]:sd a0, 984(ra)<br>   |
| 149|[0x800046a8]<br>0x0000000880000000|- rs2_val == 34359738368<br>                                                                                                               |[0x80001044]:c.add a0, a1<br> [0x80001046]:sd a0, 992(ra)<br>   |
| 150|[0x800046b0]<br>0x0000040200000000|- rs2_val == 4398046511104<br>                                                                                                             |[0x8000105a]:c.add a0, a1<br> [0x8000105c]:sd a0, 1000(ra)<br>  |
| 151|[0x800046b8]<br>0x0000200000000800|- rs2_val == 35184372088832<br>                                                                                                            |[0x80001070]:c.add a0, a1<br> [0x80001072]:sd a0, 1008(ra)<br>  |
| 152|[0x800046c0]<br>0xAAEAAAAAAAAAAAAA|- rs2_val == 18014398509481984<br>                                                                                                         |[0x8000109e]:c.add a0, a1<br> [0x800010a0]:sd a0, 1016(ra)<br>  |
| 153|[0x800046c8]<br>0x001FFFFFFFFFFFF6|- rs2_val == 9007199254740992<br>                                                                                                          |[0x800010b0]:c.add a0, a1<br> [0x800010b2]:sd a0, 1024(ra)<br>  |
| 154|[0x800046d0]<br>0x07FFFFEFFFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                        |[0x800010ca]:c.add a0, a1<br> [0x800010cc]:sd a0, 1032(ra)<br>  |
| 155|[0x800046d8]<br>0x2000008000000000|- rs2_val == 2305843009213693952<br>                                                                                                       |[0x800010e0]:c.add a0, a1<br> [0x800010e2]:sd a0, 1040(ra)<br>  |
| 156|[0x800046e0]<br>0x4000000000000200|- rs2_val == 4611686018427387904<br>                                                                                                       |[0x800010f2]:c.add a0, a1<br> [0x800010f4]:sd a0, 1048(ra)<br>  |
| 157|[0x800046e8]<br>0xFFFFFFFFFFFFFFDD|- rs2_val == -2<br>                                                                                                                        |[0x80001100]:c.add a0, a1<br> [0x80001102]:sd a0, 1056(ra)<br>  |
| 158|[0x800046f0]<br>0xFFFFFFFFFFFEFFFA|- rs2_val == -5<br>                                                                                                                        |[0x80001112]:c.add a0, a1<br> [0x80001114]:sd a0, 1064(ra)<br>  |
| 159|[0x800046f8]<br>0xFFFFFFFBFFFFFFF6|- rs2_val == -9<br>                                                                                                                        |[0x80001128]:c.add a0, a1<br> [0x8000112a]:sd a0, 1072(ra)<br>  |
| 160|[0x80004700]<br>0x00000000FFFFFFEF|- rs2_val == -17<br>                                                                                                                       |[0x8000113a]:c.add a0, a1<br> [0x8000113c]:sd a0, 1080(ra)<br>  |
| 161|[0x80004708]<br>0xFFFFFFFFDFFFFFBE|- rs2_val == -65<br>                                                                                                                       |[0x8000114c]:c.add a0, a1<br> [0x8000114e]:sd a0, 1088(ra)<br>  |
| 162|[0x80004710]<br>0xF7FFFFFFFFFFFEFE|- rs2_val == -257<br>                                                                                                                      |[0x80001162]:c.add a0, a1<br> [0x80001164]:sd a0, 1096(ra)<br>  |
| 163|[0x80004718]<br>0x0007BFFFFFFFFFFF|- rs2_val == 2251799813685248<br>                                                                                                          |[0x8000117c]:c.add a0, a1<br> [0x8000117e]:sd a0, 1104(ra)<br>  |
| 164|[0x80004720]<br>0x0000000003FFF7FF|- rs2_val == -2049<br>                                                                                                                     |[0x8000118e]:c.add a0, a1<br> [0x80001190]:sd a0, 1112(ra)<br>  |
| 165|[0x80004728]<br>0x0000003FFFF7FFFF|- rs2_val == -524289<br>                                                                                                                   |[0x800011a4]:c.add a0, a1<br> [0x800011a6]:sd a0, 1120(ra)<br>  |
| 166|[0x80004730]<br>0x03FFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                  |[0x800011ba]:c.add a0, a1<br> [0x800011bc]:sd a0, 1128(ra)<br>  |
| 167|[0x80004738]<br>0xFFFFFFFFE07FFFFF|- rs2_val == -536870913<br>                                                                                                                |[0x800011cc]:c.add a0, a1<br> [0x800011ce]:sd a0, 1136(ra)<br>  |
| 168|[0x80004740]<br>0xFFFFFFFFBFBFFFFE|- rs2_val == -1073741825<br>                                                                                                               |[0x800011e2]:c.add a0, a1<br> [0x800011e4]:sd a0, 1144(ra)<br>  |
| 169|[0x80004748]<br>0xFFFFFFFF7FFFFFF5|- rs2_val == -2147483649<br>                                                                                                               |[0x800011f8]:c.add a0, a1<br> [0x800011fa]:sd a0, 1152(ra)<br>  |
| 170|[0x80004750]<br>0xFFFFFFFF1FFFFFFF|- rs2_val == -4294967297<br>                                                                                                               |[0x8000120e]:c.add a0, a1<br> [0x80001210]:sd a0, 1160(ra)<br>  |
| 171|[0x80004758]<br>0x000007FDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                               |[0x80001228]:c.add a0, a1<br> [0x8000122a]:sd a0, 1168(ra)<br>  |
| 172|[0x80004760]<br>0x5555555155555554|- rs2_val == -17179869185<br>                                                                                                              |[0x8000125a]:c.add a0, a1<br> [0x8000125c]:sd a0, 1176(ra)<br>  |
| 173|[0x80004768]<br>0xFFFFFFEFFFFFFFDE|- rs2_val == -68719476737<br>                                                                                                              |[0x80001270]:c.add a0, a1<br> [0x80001272]:sd a0, 1184(ra)<br>  |
| 174|[0x80004770]<br>0xBFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                            |[0x8000128a]:c.add a0, a1<br> [0x8000128c]:sd a0, 1192(ra)<br>  |
| 175|[0x80004778]<br>0x0003FFFFFFF7FFFF|- rs2_val == 1125899906842624<br>                                                                                                          |[0x800012a0]:c.add a0, a1<br> [0x800012a2]:sd a0, 1200(ra)<br>  |
| 176|[0x80004780]<br>0xFFFFDFF7FFFFFFFE|- rs2_val == -35184372088833<br>                                                                                                           |[0x800012be]:c.add a0, a1<br> [0x800012c0]:sd a0, 1208(ra)<br>  |
| 177|[0x80004788]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 70368744177664<br>                                                                                                            |[0x800012d8]:c.add a0, a1<br> [0x800012da]:sd a0, 1216(ra)<br>  |
| 178|[0x80004790]<br>0x00007FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                          |[0x800012f2]:c.add a0, a1<br> [0x800012f4]:sd a0, 1224(ra)<br>  |
| 179|[0x80004798]<br>0xFFFDFFFFFFFFFDFE|- rs2_val == -562949953421313<br>                                                                                                          |[0x80001308]:c.add a0, a1<br> [0x8000130a]:sd a0, 1232(ra)<br>  |
| 180|[0x800047a0]<br>0xFFFBFEFFFFFFFFFE|- rs2_val == -1125899906842625<br>                                                                                                         |[0x80001326]:c.add a0, a1<br> [0x80001328]:sd a0, 1240(ra)<br>  |
| 181|[0x800047a8]<br>0xFFF000000000001F|- rs1_val == -4503599627370497<br>                                                                                                         |[0x8000133c]:c.add a0, a1<br> [0x8000133e]:sd a0, 1248(ra)<br>  |
| 182|[0x800047b0]<br>0xFFC0000007FFFFFF|- rs1_val == -18014398509481985<br>                                                                                                        |[0x80001352]:c.add a0, a1<br> [0x80001354]:sd a0, 1256(ra)<br>  |
| 183|[0x800047c0]<br>0xFFFFF00000000000|- rs1_val == -17592186044417<br>                                                                                                           |[0x8000137a]:c.add a0, a1<br> [0x8000137c]:sd a0, 1272(ra)<br>  |
