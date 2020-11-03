
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800012d0')]      |
| SIG_REGION                | [('0x80004204', '0x800047a0', '179 dwords')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 334     |
| Total Signature Updates   | 178      |
| Total Coverpoints Covered | 334      |
| STAT1                     | 177      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001032]:c.add a0, a1
      [0x80001034]:sd a0, 1032(ra)
 -- Signature Address: 0x800046b8 Data: 0x01FFFFFFFFFFBFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 144115188075855872
      - rs1_val == -16385






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

|s.no|            signature             |                                                                          coverpoints                                                                           |                              code                               |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80004210]<br>0x0400000000000000|- opcode : c.add<br> - rs1 : x11<br> - rs2 : x11<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 144115188075855872<br> - rs1_val == 144115188075855872<br> |[0x800003a8]:c.add a1, a1<br> [0x800003aa]:sd a1, 0(tp)<br>      |
|   2|[0x80004218]<br>0x3FFFFFFFFFFFFFF9|- rs1 : x29<br> - rs2 : x21<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs1_val == 4611686018427387904<br>                                                         |[0x800003ba]:c.add t4, s5<br> [0x800003bc]:sd t4, 8(tp)<br>      |
|   3|[0x80004220]<br>0x8000000000000008|- rs1 : x20<br> - rs2 : x14<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 8<br> - rs1_val == -9223372036854775808<br>                                        |[0x800003cc]:c.add s4, a4<br> [0x800003ce]:sd s4, 16(tp)<br>     |
|   4|[0x80004228]<br>0xFFBFFFFFFFFFFFFF|- rs1 : x6<br> - rs2 : x30<br> - rs1_val == 0<br> - rs2_val == -18014398509481985<br>                                                                           |[0x800003e2]:c.add t1, t5<br> [0x800003e4]:sd t1, 24(tp)<br>     |
|   5|[0x80004230]<br>0x8007FFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 2251799813685248<br> - rs1_val == 9223372036854775807<br>                           |[0x800003fc]:c.add fp, ra<br> [0x800003fe]:sd fp, 32(tp)<br>     |
|   6|[0x80004238]<br>0xC000000000000000|- rs1 : x23<br> - rs2 : x7<br> - rs1_val == 1<br> - rs2_val == -4611686018427387905<br>                                                                         |[0x80000412]:c.add s7, t2<br> [0x80000414]:sd s7, 40(tp)<br>     |
|   7|[0x80004240]<br>0x7FFFEFFFFFFFFFFF|- rs1 : x1<br> - rs2 : x31<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -17592186044417<br>                           |[0x8000042c]:c.add ra, t6<br> [0x8000042e]:sd ra, 48(tp)<br>     |
|   8|[0x80004248]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x24<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == -3<br>                                                                                           |[0x8000043a]:c.add s8, s1<br> [0x8000043c]:sd s8, 56(tp)<br>     |
|   9|[0x80004250]<br>0x800000000000FFFF|- rs1 : x16<br> - rs2 : x27<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 65536<br>                                    |[0x80000450]:c.add a6, s11<br> [0x80000452]:sd a6, 64(tp)<br>    |
|  10|[0x80004258]<br>0xFFFFFFFE00000000|- rs1 : x17<br> - rs2 : x26<br> - rs2_val == 1<br> - rs1_val == -8589934593<br>                                                                                 |[0x80000466]:c.add a7, s10<br> [0x80000468]:sd a7, 72(tp)<br>    |
|  11|[0x80004260]<br>0xFFFFFC0000000001|- rs1 : x21<br> - rs2 : x17<br> - rs2_val == -4398046511105<br> - rs1_val == 2<br>                                                                              |[0x8000047c]:c.add s5, a7<br> [0x8000047e]:sd s5, 80(tp)<br>     |
|  12|[0x80004268]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rs2 : x3<br> - rs2_val == -5<br> - rs1_val == 4<br>                                                                                           |[0x8000048a]:c.add s2, gp<br> [0x8000048c]:sd s2, 88(tp)<br>     |
|  13|[0x80004270]<br>0x0000000000010008|- rs1 : x3<br> - rs2 : x24<br> - rs2_val == 65536<br> - rs1_val == 8<br>                                                                                        |[0x80000498]:c.add gp, s8<br> [0x8000049a]:sd gp, 96(tp)<br>     |
|  14|[0x80004278]<br>0x0000000002000010|- rs1 : x26<br> - rs2 : x19<br> - rs2_val == 33554432<br> - rs1_val == 16<br>                                                                                   |[0x800004a6]:c.add s10, s3<br> [0x800004a8]:sd s10, 104(tp)<br>  |
|  15|[0x80004280]<br>0xFC0000000000001F|- rs1 : x5<br> - rs2 : x15<br> - rs2_val == -288230376151711745<br> - rs1_val == 32<br>                                                                         |[0x800004bc]:c.add t0, a5<br> [0x800004be]:sd t0, 112(tp)<br>    |
|  16|[0x80004288]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x10<br> - rs2_val == 256<br>                                                                                                             |[0x800004ca]:c.add.hint.a0<br> [0x800004cc]:sd zero, 120(tp)<br> |
|  17|[0x80004290]<br>0xFF0000000000007F|- rs1 : x13<br> - rs2 : x29<br> - rs2_val == -72057594037927937<br> - rs1_val == 128<br>                                                                        |[0x800004e0]:c.add a3, t4<br> [0x800004e2]:sd a3, 128(tp)<br>    |
|  18|[0x80004298]<br>0xFFFFFFFFFFF800FF|- rs1 : x10<br> - rs2 : x20<br> - rs2_val == -524289<br> - rs1_val == 256<br>                                                                                   |[0x800004f2]:c.add a0, s4<br> [0x800004f4]:sd a0, 136(tp)<br>    |
|  19|[0x800042a0]<br>0xFFFFFFFFFFFFF9FF|- rs1 : x28<br> - rs2 : x25<br> - rs2_val == -2049<br> - rs1_val == 512<br>                                                                                     |[0x80000504]:c.add t3, s9<br> [0x80000506]:sd t3, 144(tp)<br>    |
|  20|[0x800042a8]<br>0xFFFFFFFFFF8003FF|- rs1 : x31<br> - rs2 : x2<br> - rs2_val == -8388609<br> - rs1_val == 1024<br>                                                                                  |[0x80000516]:c.add t6, sp<br> [0x80000518]:sd t6, 152(tp)<br>    |
|  21|[0x800042b0]<br>0x0008000000000800|- rs1 : x30<br> - rs2 : x5<br> - rs1_val == 2048<br>                                                                                                            |[0x80000534]:c.add t5, t0<br> [0x80000536]:sd t5, 0(ra)<br>      |
|  22|[0x800042b8]<br>0xFFFFFFFFFFFFCFFF|- rs1 : x27<br> - rs2 : x28<br> - rs2_val == -16385<br> - rs1_val == 4096<br>                                                                                   |[0x80000546]:c.add s11, t3<br> [0x80000548]:sd s11, 8(ra)<br>    |
|  23|[0x800042c0]<br>0xFFFF800000001FFF|- rs1 : x7<br> - rs2 : x4<br> - rs2_val == -140737488355329<br> - rs1_val == 8192<br>                                                                           |[0x8000055c]:c.add t2, tp<br> [0x8000055e]:sd t2, 16(ra)<br>     |
|  24|[0x800042c8]<br>0x000000000000C000|- rs1 : x2<br> - rs2 : x23<br> - rs2_val == 32768<br> - rs1_val == 16384<br>                                                                                    |[0x8000056a]:c.add sp, s7<br> [0x8000056c]:sd sp, 24(ra)<br>     |
|  25|[0x800042d0]<br>0x0000040000008000|- rs1 : x12<br> - rs2 : x6<br> - rs2_val == 4398046511104<br> - rs1_val == 32768<br>                                                                            |[0x8000057c]:c.add a2, t1<br> [0x8000057e]:sd a2, 32(ra)<br>     |
|  26|[0x800042d8]<br>0xC00000000001FFFF|- rs1 : x22<br> - rs2 : x8<br> - rs1_val == 131072<br>                                                                                                          |[0x80000592]:c.add s6, fp<br> [0x80000594]:sd s6, 40(ra)<br>     |
|  27|[0x800042e0]<br>0x000000000003FFF9|- rs1 : x9<br> - rs2 : x18<br> - rs1_val == 262144<br>                                                                                                          |[0x800005a0]:c.add s1, s2<br> [0x800005a2]:sd s1, 48(ra)<br>     |
|  28|[0x800042e8]<br>0xFE0000000007FFFF|- rs1 : x15<br> - rs2 : x22<br> - rs2_val == -144115188075855873<br> - rs1_val == 524288<br>                                                                    |[0x800005b6]:c.add a5, s6<br> [0x800005b8]:sd a5, 56(ra)<br>     |
|  29|[0x800042f0]<br>0x0000000000100080|- rs1 : x25<br> - rs2 : x13<br> - rs2_val == 128<br> - rs1_val == 1048576<br>                                                                                   |[0x800005c4]:c.add s9, a3<br> [0x800005c6]:sd s9, 64(ra)<br>     |
|  30|[0x800042f8]<br>0xFF000000001FFFFF|- rs1 : x4<br> - rs2 : x16<br> - rs1_val == 2097152<br>                                                                                                         |[0x800005da]:c.add tp, a6<br> [0x800005dc]:sd tp, 72(ra)<br>     |
|  31|[0x80004300]<br>0xE0000000003FFFFF|- rs1 : x19<br> - rs2 : x12<br> - rs2_val == -2305843009213693953<br> - rs1_val == 4194304<br>                                                                  |[0x800005f0]:c.add s3, a2<br> [0x800005f2]:sd s3, 80(ra)<br>     |
|  32|[0x80004308]<br>0x0008000000800000|- rs1 : x14<br> - rs1_val == 8388608<br>                                                                                                                        |[0x80000602]:c.add a4, s4<br> [0x80000604]:sd a4, 88(ra)<br>     |
|  33|[0x80004310]<br>0x0000000001000007|- rs1_val == 16777216<br>                                                                                                                                       |[0x80000610]:c.add a0, a1<br> [0x80000612]:sd a0, 96(ra)<br>     |
|  34|[0x80004318]<br>0x0000000001FFFDFF|- rs2_val == -513<br> - rs1_val == 33554432<br>                                                                                                                 |[0x8000061e]:c.add a0, a1<br> [0x80000620]:sd a0, 104(ra)<br>    |
|  35|[0x80004320]<br>0x0000000003FFFFF8|- rs1_val == 67108864<br>                                                                                                                                       |[0x8000062c]:c.add a0, a1<br> [0x8000062e]:sd a0, 112(ra)<br>    |
|  36|[0x80004328]<br>0x0000008008000000|- rs2_val == 549755813888<br> - rs1_val == 134217728<br>                                                                                                        |[0x8000063e]:c.add a0, a1<br> [0x80000640]:sd a0, 120(ra)<br>    |
|  37|[0x80004330]<br>0x0000080010000000|- rs2_val == 8796093022208<br> - rs1_val == 268435456<br>                                                                                                       |[0x80000650]:c.add a0, a1<br> [0x80000652]:sd a0, 128(ra)<br>    |
|  38|[0x80004338]<br>0xFFFFFF001FFFFFFF|- rs2_val == -1099511627777<br> - rs1_val == 536870912<br>                                                                                                      |[0x80000666]:c.add a0, a1<br> [0x80000668]:sd a0, 136(ra)<br>    |
|  39|[0x80004340]<br>0x0000000041000000|- rs2_val == 16777216<br> - rs1_val == 1073741824<br>                                                                                                           |[0x80000674]:c.add a0, a1<br> [0x80000676]:sd a0, 144(ra)<br>    |
|  40|[0x80004348]<br>0x0800000080000000|- rs2_val == 576460752303423488<br> - rs1_val == 2147483648<br>                                                                                                 |[0x8000068a]:c.add a0, a1<br> [0x8000068c]:sd a0, 152(ra)<br>    |
|  41|[0x80004350]<br>0x0000000100400000|- rs2_val == 4194304<br> - rs1_val == 4294967296<br>                                                                                                            |[0x8000069c]:c.add a0, a1<br> [0x8000069e]:sd a0, 160(ra)<br>    |
|  42|[0x80004358]<br>0xFFFFFFC1FFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 8589934592<br>                                                                                                      |[0x800006b6]:c.add a0, a1<br> [0x800006b8]:sd a0, 168(ra)<br>    |
|  43|[0x80004360]<br>0x0000004400000000|- rs2_val == 274877906944<br> - rs1_val == 17179869184<br>                                                                                                      |[0x800006cc]:c.add a0, a1<br> [0x800006ce]:sd a0, 176(ra)<br>    |
|  44|[0x80004368]<br>0xFFFFFC07FFFFFFFF|- rs1_val == 34359738368<br>                                                                                                                                    |[0x800006e6]:c.add a0, a1<br> [0x800006e8]:sd a0, 184(ra)<br>    |
|  45|[0x80004370]<br>0x2000001000000000|- rs2_val == 2305843009213693952<br> - rs1_val == 68719476736<br>                                                                                               |[0x800006fc]:c.add a0, a1<br> [0x800006fe]:sd a0, 192(ra)<br>    |
|  46|[0x80004378]<br>0x0000001FFFFFFFF8|- rs1_val == 137438953472<br>                                                                                                                                   |[0x8000070e]:c.add a0, a1<br> [0x80000710]:sd a0, 200(ra)<br>    |
|  47|[0x80004380]<br>0xFFFFF83FFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 274877906944<br>                                                                                                   |[0x80000728]:c.add a0, a1<br> [0x8000072a]:sd a0, 208(ra)<br>    |
|  48|[0x80004388]<br>0xFFFFF07FFFFFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 549755813888<br>                                                                                                  |[0x80000742]:c.add a0, a1<br> [0x80000744]:sd a0, 216(ra)<br>    |
|  49|[0x80004390]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 1099511627776<br>                                                                                                  |[0x8000075c]:c.add a0, a1<br> [0x8000075e]:sd a0, 224(ra)<br>    |
|  50|[0x80004398]<br>0x00000A0000000000|- rs1_val == 2199023255552<br>                                                                                                                                  |[0x80000772]:c.add a0, a1<br> [0x80000774]:sd a0, 232(ra)<br>    |
|  51|[0x800043a0]<br>0x0001040000000000|- rs2_val == 281474976710656<br> - rs1_val == 4398046511104<br>                                                                                                 |[0x80000788]:c.add a0, a1<br> [0x8000078a]:sd a0, 240(ra)<br>    |
|  52|[0x800043a8]<br>0x55555D5555555555|- rs2_val == 6148914691236517205<br> - rs1_val == 8796093022208<br>                                                                                             |[0x800007b6]:c.add a0, a1<br> [0x800007b8]:sd a0, 248(ra)<br>    |
|  53|[0x800043b0]<br>0x0000300000000000|- rs2_val == 35184372088832<br> - rs1_val == 17592186044416<br>                                                                                                 |[0x800007cc]:c.add a0, a1<br> [0x800007ce]:sd a0, 256(ra)<br>    |
|  54|[0x800043b8]<br>0x00001FFFFFFFFFF7|- rs2_val == -9<br> - rs1_val == 35184372088832<br>                                                                                                             |[0x800007de]:c.add a0, a1<br> [0x800007e0]:sd a0, 264(ra)<br>    |
|  55|[0x800043c0]<br>0x0000400800000000|- rs2_val == 34359738368<br> - rs1_val == 70368744177664<br>                                                                                                    |[0x800007f4]:c.add a0, a1<br> [0x800007f6]:sd a0, 272(ra)<br>    |
|  56|[0x800043c8]<br>0x00007FFFFFFFFFDF|- rs2_val == -33<br> - rs1_val == 140737488355328<br>                                                                                                           |[0x80000806]:c.add a0, a1<br> [0x80000808]:sd a0, 280(ra)<br>    |
|  57|[0x800043d0]<br>0x0000FFFFFFFFFFF9|- rs1_val == 281474976710656<br>                                                                                                                                |[0x80000818]:c.add a0, a1<br> [0x8000081a]:sd a0, 288(ra)<br>    |
|  58|[0x800043d8]<br>0x0001FFFFFFFFFF7F|- rs2_val == -129<br> - rs1_val == 562949953421312<br>                                                                                                          |[0x8000082a]:c.add a0, a1<br> [0x8000082c]:sd a0, 296(ra)<br>    |
|  59|[0x800043e0]<br>0x0003FFFFFFFFFEFF|- rs2_val == -257<br> - rs1_val == 1125899906842624<br>                                                                                                         |[0x8000083c]:c.add a0, a1<br> [0x8000083e]:sd a0, 304(ra)<br>    |
|  60|[0x800043e8]<br>0x0007EFFFFFFFFFFF|- rs1_val == 2251799813685248<br>                                                                                                                               |[0x80000856]:c.add a0, a1<br> [0x80000858]:sd a0, 312(ra)<br>    |
|  61|[0x800043f0]<br>0x000FFFF7FFFFFFFF|- rs2_val == -34359738369<br> - rs1_val == 4503599627370496<br>                                                                                                 |[0x80000870]:c.add a0, a1<br> [0x80000872]:sd a0, 320(ra)<br>    |
|  62|[0x800043f8]<br>0x0020000001000000|- rs1_val == 9007199254740992<br>                                                                                                                               |[0x80000882]:c.add a0, a1<br> [0x80000884]:sd a0, 328(ra)<br>    |
|  63|[0x80004400]<br>0x003FFFFFEFFFFFFF|- rs2_val == -268435457<br> - rs1_val == 18014398509481984<br>                                                                                                  |[0x80000898]:c.add a0, a1<br> [0x8000089a]:sd a0, 336(ra)<br>    |
|  64|[0x80004408]<br>0x007FFFFDFFFFFFFF|- rs2_val == -8589934593<br> - rs1_val == 36028797018963968<br>                                                                                                 |[0x800008b2]:c.add a0, a1<br> [0x800008b4]:sd a0, 344(ra)<br>    |
|  65|[0x80004410]<br>0x00FFFFDFFFFFFFFF|- rs2_val == -137438953473<br> - rs1_val == 72057594037927936<br>                                                                                               |[0x800008cc]:c.add a0, a1<br> [0x800008ce]:sd a0, 352(ra)<br>    |
|  66|[0x80004418]<br>0xE3FFFFFFFFFFFFFF|- rs1_val == 288230376151711744<br>                                                                                                                             |[0x800008e6]:c.add a0, a1<br> [0x800008e8]:sd a0, 360(ra)<br>    |
|  67|[0x80004420]<br>0x07FFFFEFFFFFFFFF|- rs2_val == -68719476737<br> - rs1_val == 576460752303423488<br>                                                                                               |[0x80000900]:c.add a0, a1<br> [0x80000902]:sd a0, 368(ra)<br>    |
|  68|[0x80004428]<br>0x0FFFFFFFBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 1152921504606846976<br>                                                                                               |[0x80000916]:c.add a0, a1<br> [0x80000918]:sd a0, 376(ra)<br>    |
|  69|[0x80004430]<br>0x2000000000000010|- rs2_val == 16<br> - rs1_val == 2305843009213693952<br>                                                                                                        |[0x80000928]:c.add a0, a1<br> [0x8000092a]:sd a0, 384(ra)<br>    |
|  70|[0x80004438]<br>0x000000000000003E|- rs2_val == 64<br> - rs1_val == -2<br>                                                                                                                         |[0x80000936]:c.add a0, a1<br> [0x80000938]:sd a0, 392(ra)<br>    |
|  71|[0x80004440]<br>0x00000001FFFFFFFB|- rs2_val == 8589934592<br> - rs1_val == -5<br>                                                                                                                 |[0x80000948]:c.add a0, a1<br> [0x8000094a]:sd a0, 400(ra)<br>    |
|  72|[0x80004448]<br>0xFFFFDFFFFFFFFFF6|- rs2_val == -35184372088833<br> - rs1_val == -9<br>                                                                                                            |[0x8000095e]:c.add a0, a1<br> [0x80000960]:sd a0, 408(ra)<br>    |
|  73|[0x80004450]<br>0x000000007FFFFFEF|- rs2_val == 2147483648<br> - rs1_val == -17<br>                                                                                                                |[0x80000970]:c.add a0, a1<br> [0x80000972]:sd a0, 416(ra)<br>    |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFBDE|- rs2_val == -1025<br> - rs1_val == -33<br>                                                                                                                     |[0x8000097e]:c.add a0, a1<br> [0x80000980]:sd a0, 424(ra)<br>    |
|  75|[0x80004460]<br>0xFFDFFFFFFFFFFFBE|- rs2_val == -9007199254740993<br> - rs1_val == -65<br>                                                                                                         |[0x80000994]:c.add a0, a1<br> [0x80000996]:sd a0, 432(ra)<br>    |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFF76|- rs1_val == -129<br>                                                                                                                                           |[0x800009a2]:c.add a0, a1<br> [0x800009a4]:sd a0, 440(ra)<br>    |
|  77|[0x80004470]<br>0xFF800000001FFFFF|- rs2_val == -36028797018963969<br>                                                                                                                             |[0x800009b8]:c.add a0, a1<br> [0x800009ba]:sd a0, 448(ra)<br>    |
|  78|[0x80004478]<br>0xF6FFFFFFFFFFFFFE|- rs2_val == -576460752303423489<br> - rs1_val == -72057594037927937<br>                                                                                        |[0x800009d6]:c.add a0, a1<br> [0x800009d8]:sd a0, 456(ra)<br>    |
|  79|[0x80004480]<br>0xF0000FFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                           |[0x800009f0]:c.add a0, a1<br> [0x800009f2]:sd a0, 464(ra)<br>    |
|  80|[0x80004488]<br>0xAAAAAA9AAAAAAAA9|- rs2_val == -6148914691236517206<br> - rs1_val == -68719476737<br>                                                                                             |[0x80000a22]:c.add a0, a1<br> [0x80000a24]:sd a0, 472(ra)<br>    |
|  81|[0x80004490]<br>0x000000000000FEFF|- rs1_val == -257<br>                                                                                                                                           |[0x80000a30]:c.add a0, a1<br> [0x80000a32]:sd a0, 480(ra)<br>    |
|  82|[0x80004498]<br>0xFFFFFFFFFFFBFDFE|- rs2_val == -262145<br> - rs1_val == -513<br>                                                                                                                  |[0x80000a42]:c.add a0, a1<br> [0x80000a44]:sd a0, 488(ra)<br>    |
|  83|[0x800044a0]<br>0x0FFFFFFFFFFFFBFF|- rs2_val == 1152921504606846976<br> - rs1_val == -1025<br>                                                                                                     |[0x80000a54]:c.add a0, a1<br> [0x80000a56]:sd a0, 496(ra)<br>    |
|  84|[0x800044a8]<br>0xFFFFDFFFFFFFF7FE|- rs1_val == -2049<br>                                                                                                                                          |[0x80000a6e]:c.add a0, a1<br> [0x80000a70]:sd a0, 504(ra)<br>    |
|  85|[0x800044b0]<br>0x000000003FFFEFFF|- rs2_val == 1073741824<br> - rs1_val == -4097<br>                                                                                                              |[0x80000a80]:c.add a0, a1<br> [0x80000a82]:sd a0, 512(ra)<br>    |
|  86|[0x800044b8]<br>0xFFFFFFFFFFFFDFF5|- rs1_val == -8193<br>                                                                                                                                          |[0x80000a92]:c.add a0, a1<br> [0x80000a94]:sd a0, 520(ra)<br>    |
|  87|[0x800044c0]<br>0x0000FFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                         |[0x80000aa8]:c.add a0, a1<br> [0x80000aaa]:sd a0, 528(ra)<br>    |
|  88|[0x800044c8]<br>0xFFEFFFFFFFFF7FFE|- rs2_val == -4503599627370497<br> - rs1_val == -32769<br>                                                                                                      |[0x80000ac2]:c.add a0, a1<br> [0x80000ac4]:sd a0, 536(ra)<br>    |
|  89|[0x800044d0]<br>0xFFFFFFFFDFFEFFFE|- rs2_val == -536870913<br> - rs1_val == -65537<br>                                                                                                             |[0x80000ad8]:c.add a0, a1<br> [0x80000ada]:sd a0, 544(ra)<br>    |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFDFBFE|- rs1_val == -131073<br>                                                                                                                                        |[0x80000aea]:c.add a0, a1<br> [0x80000aec]:sd a0, 552(ra)<br>    |
|  91|[0x800044e0]<br>0x00003FFFFFFBFFFF|- rs2_val == 70368744177664<br> - rs1_val == -262145<br>                                                                                                        |[0x80000b00]:c.add a0, a1<br> [0x80000b02]:sd a0, 560(ra)<br>    |
|  92|[0x800044e8]<br>0xFFFFFFFFFBF7FFFE|- rs2_val == -67108865<br> - rs1_val == -524289<br>                                                                                                             |[0x80000b16]:c.add a0, a1<br> [0x80000b18]:sd a0, 568(ra)<br>    |
|  93|[0x800044f0]<br>0xFFFFFFFFFFEEFFFE|- rs2_val == -65537<br> - rs1_val == -1048577<br>                                                                                                               |[0x80000b2c]:c.add a0, a1<br> [0x80000b2e]:sd a0, 576(ra)<br>    |
|  94|[0x800044f8]<br>0xFFFFFFFFF7DFFFFE|- rs2_val == -134217729<br> - rs1_val == -2097153<br>                                                                                                           |[0x80000b42]:c.add a0, a1<br> [0x80000b44]:sd a0, 584(ra)<br>    |
|  95|[0x80004500]<br>0xFFFFFFFFFFC3FFFF|- rs2_val == 262144<br> - rs1_val == -4194305<br>                                                                                                               |[0x80000b54]:c.add a0, a1<br> [0x80000b56]:sd a0, 592(ra)<br>    |
|  96|[0x80004508]<br>0xFFFFFFFFBF7FFFFE|- rs1_val == -8388609<br>                                                                                                                                       |[0x80000b6a]:c.add a0, a1<br> [0x80000b6c]:sd a0, 600(ra)<br>    |
|  97|[0x80004510]<br>0x000FFFFFFEFFFFFF|- rs2_val == 4503599627370496<br> - rs1_val == -16777217<br>                                                                                                    |[0x80000b80]:c.add a0, a1<br> [0x80000b82]:sd a0, 608(ra)<br>    |
|  98|[0x80004518]<br>0xFFFFFFFFFDFFFFEE|- rs2_val == -17<br> - rs1_val == -33554433<br>                                                                                                                 |[0x80000b92]:c.add a0, a1<br> [0x80000b94]:sd a0, 616(ra)<br>    |
|  99|[0x80004520]<br>0xFFFFFFFFFC7FFFFF|- rs2_val == 8388608<br> - rs1_val == -67108865<br>                                                                                                             |[0x80000ba4]:c.add a0, a1<br> [0x80000ba6]:sd a0, 624(ra)<br>    |
| 100|[0x80004528]<br>0x003FFFFFF7FFFFFF|- rs2_val == 18014398509481984<br> - rs1_val == -134217729<br>                                                                                                  |[0x80000bba]:c.add a0, a1<br> [0x80000bbc]:sd a0, 632(ra)<br>    |
| 101|[0x80004530]<br>0x0003FFFFEFFFFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -268435457<br>                                                                                                   |[0x80000bd0]:c.add a0, a1<br> [0x80000bd2]:sd a0, 640(ra)<br>    |
| 102|[0x80004538]<br>0xFF7FFFFFDFFFFFFE|- rs1_val == -536870913<br>                                                                                                                                     |[0x80000bea]:c.add a0, a1<br> [0x80000bec]:sd a0, 648(ra)<br>    |
| 103|[0x80004540]<br>0xFFFFFFFFBBFFFFFE|- rs1_val == -1073741825<br>                                                                                                                                    |[0x80000c00]:c.add a0, a1<br> [0x80000c02]:sd a0, 656(ra)<br>    |
| 104|[0x80004548]<br>0xFFFFFFFF803FFFFF|- rs1_val == -2147483649<br>                                                                                                                                    |[0x80000c16]:c.add a0, a1<br> [0x80000c18]:sd a0, 664(ra)<br>    |
| 105|[0x80004550]<br>0xFFFFFFFF00000007|- rs1_val == -4294967297<br>                                                                                                                                    |[0x80000c2c]:c.add a0, a1<br> [0x80000c2e]:sd a0, 672(ra)<br>    |
| 106|[0x80004558]<br>0xFFFFFFFC0003FFFF|- rs1_val == -17179869185<br>                                                                                                                                   |[0x80000c42]:c.add a0, a1<br> [0x80000c44]:sd a0, 680(ra)<br>    |
| 107|[0x80004560]<br>0xFFFFFFF80003FFFF|- rs1_val == -34359738369<br>                                                                                                                                   |[0x80000c58]:c.add a0, a1<br> [0x80000c5a]:sd a0, 688(ra)<br>    |
| 108|[0x80004568]<br>0x00000FDFFFFFFFFF|- rs2_val == 17592186044416<br> - rs1_val == -137438953473<br>                                                                                                  |[0x80000c72]:c.add a0, a1<br> [0x80000c74]:sd a0, 696(ra)<br>    |
| 109|[0x80004570]<br>0xFFFFFFBFFFFFFEFE|- rs1_val == -274877906945<br>                                                                                                                                  |[0x80000c88]:c.add a0, a1<br> [0x80000c8a]:sd a0, 704(ra)<br>    |
| 110|[0x80004578]<br>0xFFFFFF8000003FFF|- rs2_val == 16384<br> - rs1_val == -549755813889<br>                                                                                                           |[0x80000c9e]:c.add a0, a1<br> [0x80000ca0]:sd a0, 712(ra)<br>    |
| 111|[0x80004580]<br>0xFFFFFF0000000000|- rs1_val == -1099511627777<br>                                                                                                                                 |[0x80000cb4]:c.add a0, a1<br> [0x80000cb6]:sd a0, 720(ra)<br>    |
| 112|[0x80004588]<br>0x0FFFFDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                 |[0x80000cce]:c.add a0, a1<br> [0x80000cd0]:sd a0, 728(ra)<br>    |
| 113|[0x80004590]<br>0xDFFFFBFFFFFFFFFE|- rs1_val == -4398046511105<br>                                                                                                                                 |[0x80000cec]:c.add a0, a1<br> [0x80000cee]:sd a0, 736(ra)<br>    |
| 114|[0x80004598]<br>0xFFFFF80000000002|- rs1_val == -8796093022209<br>                                                                                                                                 |[0x80000d02]:c.add a0, a1<br> [0x80000d04]:sd a0, 744(ra)<br>    |
| 115|[0x800045a0]<br>0xFFFFDDFFFFFFFFFE|- rs1_val == -35184372088833<br>                                                                                                                                |[0x80000d20]:c.add a0, a1<br> [0x80000d22]:sd a0, 752(ra)<br>    |
| 116|[0x800045a8]<br>0xFFFFBFFFFFFFFF7E|- rs1_val == -70368744177665<br>                                                                                                                                |[0x80000d36]:c.add a0, a1<br> [0x80000d38]:sd a0, 760(ra)<br>    |
| 117|[0x800045b0]<br>0xFFFF7FFFFFFFFFFC|- rs2_val == -3<br> - rs1_val == -140737488355329<br>                                                                                                           |[0x80000d4c]:c.add a0, a1<br> [0x80000d4e]:sd a0, 768(ra)<br>    |
| 118|[0x800045b8]<br>0xFFFEFFFFFFFFFFF9|- rs1_val == -281474976710657<br>                                                                                                                               |[0x80000d62]:c.add a0, a1<br> [0x80000d64]:sd a0, 776(ra)<br>    |
| 119|[0x800045c0]<br>0xFFFDFFFFFFFEFFFE|- rs1_val == -562949953421313<br>                                                                                                                               |[0x80000d7c]:c.add a0, a1<br> [0x80000d7e]:sd a0, 784(ra)<br>    |
| 120|[0x800045c8]<br>0xFF3FFFFFFFFFFFFE|- rs1_val == -36028797018963969<br>                                                                                                                             |[0x80000d9a]:c.add a0, a1<br> [0x80000d9c]:sd a0, 792(ra)<br>    |
| 121|[0x800045d0]<br>0xFE00007FFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                            |[0x80000db4]:c.add a0, a1<br> [0x80000db6]:sd a0, 800(ra)<br>    |
| 122|[0x800045d8]<br>0xFBFFBFFFFFFFFFFE|- rs2_val == -70368744177665<br> - rs1_val == -288230376151711745<br>                                                                                           |[0x80000dd2]:c.add a0, a1<br> [0x80000dd4]:sd a0, 808(ra)<br>    |
| 123|[0x800045e0]<br>0xF7FFFFFFFDFFFFFE|- rs2_val == -33554433<br> - rs1_val == -576460752303423489<br>                                                                                                 |[0x80000dec]:c.add a0, a1<br> [0x80000dee]:sd a0, 816(ra)<br>    |
| 124|[0x800045e8]<br>0xF000000000000006|- rs1_val == -1152921504606846977<br>                                                                                                                           |[0x80000e02]:c.add a0, a1<br> [0x80000e04]:sd a0, 824(ra)<br>    |
| 125|[0x800045f0]<br>0xE003FFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                           |[0x80000e1c]:c.add a0, a1<br> [0x80000e1e]:sd a0, 832(ra)<br>    |
| 126|[0x800045f8]<br>0xC00000000001FFFF|- rs2_val == 131072<br> - rs1_val == -4611686018427387905<br>                                                                                                   |[0x80000e32]:c.add a0, a1<br> [0x80000e34]:sd a0, 840(ra)<br>    |
| 127|[0x80004600]<br>0x5555555555355554|- rs2_val == -2097153<br> - rs1_val == 6148914691236517205<br>                                                                                                  |[0x80000e60]:c.add a0, a1<br> [0x80000e62]:sd a0, 848(ra)<br>    |
| 128|[0x80004608]<br>0xAAEAAAAAAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                           |[0x80000e8e]:c.add a0, a1<br> [0x80000e90]:sd a0, 856(ra)<br>    |
| 129|[0x80004610]<br>0x0000000000040002|- rs2_val == 2<br>                                                                                                                                              |[0x80000e9c]:c.add a0, a1<br> [0x80000e9e]:sd a0, 864(ra)<br>    |
| 130|[0x80004618]<br>0x0100000000000004|- rs2_val == 4<br>                                                                                                                                              |[0x80000eae]:c.add a0, a1<br> [0x80000eb0]:sd a0, 872(ra)<br>    |
| 131|[0x80004620]<br>0x0000000000000040|- rs2_val == 32<br>                                                                                                                                             |[0x80000ebc]:c.add a0, a1<br> [0x80000ebe]:sd a0, 880(ra)<br>    |
| 132|[0x80004628]<br>0x00000000000001EF|- rs2_val == 512<br>                                                                                                                                            |[0x80000eca]:c.add a0, a1<br> [0x80000ecc]:sd a0, 888(ra)<br>    |
| 133|[0x80004630]<br>0xF0000000000003FF|- rs2_val == 1024<br>                                                                                                                                           |[0x80000ee0]:c.add a0, a1<br> [0x80000ee2]:sd a0, 896(ra)<br>    |
| 134|[0x80004638]<br>0x00000000000007FA|- rs2_val == 2048<br>                                                                                                                                           |[0x80000ef2]:c.add a0, a1<br> [0x80000ef4]:sd a0, 904(ra)<br>    |
| 135|[0x80004640]<br>0x0000000800001000|- rs2_val == 4096<br>                                                                                                                                           |[0x80000f04]:c.add a0, a1<br> [0x80000f06]:sd a0, 912(ra)<br>    |
| 136|[0x80004648]<br>0x0000004000002000|- rs2_val == 8192<br>                                                                                                                                           |[0x80000f16]:c.add a0, a1<br> [0x80000f18]:sd a0, 920(ra)<br>    |
| 137|[0x80004650]<br>0xFFE000000007FFFF|- rs2_val == 524288<br> - rs1_val == -9007199254740993<br>                                                                                                      |[0x80000f2c]:c.add a0, a1<br> [0x80000f2e]:sd a0, 928(ra)<br>    |
| 138|[0x80004658]<br>0xFFFFE000000FFFFF|- rs2_val == 1048576<br>                                                                                                                                        |[0x80000f42]:c.add a0, a1<br> [0x80000f44]:sd a0, 936(ra)<br>    |
| 139|[0x80004660]<br>0x0010000000200000|- rs2_val == 2097152<br>                                                                                                                                        |[0x80000f54]:c.add a0, a1<br> [0x80000f56]:sd a0, 944(ra)<br>    |
| 140|[0x80004668]<br>0x0000000004000006|- rs2_val == 67108864<br>                                                                                                                                       |[0x80000f62]:c.add a0, a1<br> [0x80000f64]:sd a0, 952(ra)<br>    |
| 141|[0x80004670]<br>0x0000400008000000|- rs2_val == 134217728<br>                                                                                                                                      |[0x80000f74]:c.add a0, a1<br> [0x80000f76]:sd a0, 960(ra)<br>    |
| 142|[0x80004678]<br>0xFFFFFE000FFFFFFF|- rs2_val == 268435456<br>                                                                                                                                      |[0x80000f8a]:c.add a0, a1<br> [0x80000f8c]:sd a0, 968(ra)<br>    |
| 143|[0x80004680]<br>0x000000001FFDFFFF|- rs2_val == 536870912<br>                                                                                                                                      |[0x80000f9c]:c.add a0, a1<br> [0x80000f9e]:sd a0, 976(ra)<br>    |
| 144|[0x80004688]<br>0x0000040100000000|- rs2_val == 4294967296<br>                                                                                                                                     |[0x80000fb2]:c.add a0, a1<br> [0x80000fb4]:sd a0, 984(ra)<br>    |
| 145|[0x80004690]<br>0x0000004400000000|- rs2_val == 17179869184<br>                                                                                                                                    |[0x80000fc8]:c.add a0, a1<br> [0x80000fca]:sd a0, 992(ra)<br>    |
| 146|[0x80004698]<br>0xFE00000FFFFFFFFF|- rs2_val == 68719476736<br>                                                                                                                                    |[0x80000fe2]:c.add a0, a1<br> [0x80000fe4]:sd a0, 1000(ra)<br>   |
| 147|[0x800046a0]<br>0x0080000400000000|- rs2_val == 36028797018963968<br>                                                                                                                              |[0x80000ff8]:c.add a0, a1<br> [0x80000ffa]:sd a0, 1008(ra)<br>   |
| 148|[0x800046a8]<br>0x001FFFFFFFFFFFF9|- rs2_val == 9007199254740992<br>                                                                                                                               |[0x8000100a]:c.add a0, a1<br> [0x8000100c]:sd a0, 1016(ra)<br>   |
| 149|[0x800046b0]<br>0x0100000000000010|- rs2_val == 72057594037927936<br>                                                                                                                              |[0x8000101c]:c.add a0, a1<br> [0x8000101e]:sd a0, 1024(ra)<br>   |
| 150|[0x800046c0]<br>0x03FFFFFEFFFFFFFF|- rs2_val == 288230376151711744<br>                                                                                                                             |[0x8000104c]:c.add a0, a1<br> [0x8000104e]:sd a0, 1040(ra)<br>   |
| 151|[0x800046c8]<br>0x4010000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                            |[0x80001062]:c.add a0, a1<br> [0x80001064]:sd a0, 1048(ra)<br>   |
| 152|[0x800046d0]<br>0xFFFFFFFFFFFFFFF5|- rs2_val == -2<br>                                                                                                                                             |[0x80001070]:c.add a0, a1<br> [0x80001072]:sd a0, 1056(ra)<br>   |
| 153|[0x800046d8]<br>0xFFFFFFDFFFFFFFBE|- rs2_val == -65<br>                                                                                                                                            |[0x80001086]:c.add a0, a1<br> [0x80001088]:sd a0, 1064(ra)<br>   |
| 154|[0x800046e0]<br>0xFFFFFFFFFFFBEFFE|- rs2_val == -4097<br>                                                                                                                                          |[0x8000109c]:c.add a0, a1<br> [0x8000109e]:sd a0, 1072(ra)<br>   |
| 155|[0x800046e8]<br>0x0000003FFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                          |[0x800010b2]:c.add a0, a1<br> [0x800010b4]:sd a0, 1080(ra)<br>   |
| 156|[0x800046f0]<br>0x000000FFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                         |[0x800010c8]:c.add a0, a1<br> [0x800010ca]:sd a0, 1088(ra)<br>   |
| 157|[0x800046f8]<br>0xFFFFFFFFFFFDFFF6|- rs2_val == -131073<br>                                                                                                                                        |[0x800010da]:c.add a0, a1<br> [0x800010dc]:sd a0, 1096(ra)<br>   |
| 158|[0x80004700]<br>0xFFFFFFFFFFEFBFFE|- rs2_val == -1048577<br>                                                                                                                                       |[0x800010f0]:c.add a0, a1<br> [0x800010f2]:sd a0, 1104(ra)<br>   |
| 159|[0x80004708]<br>0x7FF7FFFFFFFFFFFE|- rs2_val == -2251799813685249<br>                                                                                                                              |[0x8000110e]:c.add a0, a1<br> [0x80001110]:sd a0, 1112(ra)<br>   |
| 160|[0x80004710]<br>0x000FFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                                       |[0x80001124]:c.add a0, a1<br> [0x80001126]:sd a0, 1120(ra)<br>   |
| 161|[0x80004718]<br>0x001FFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                      |[0x8000113a]:c.add a0, a1<br> [0x8000113c]:sd a0, 1128(ra)<br>   |
| 162|[0x80004720]<br>0x000003FF7FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                                    |[0x80001154]:c.add a0, a1<br> [0x80001156]:sd a0, 1136(ra)<br>   |
| 163|[0x80004728]<br>0xFFFFFDFEFFFFFFFE|- rs2_val == -4294967297<br>                                                                                                                                    |[0x80001172]:c.add a0, a1<br> [0x80001174]:sd a0, 1144(ra)<br>   |
| 164|[0x80004730]<br>0xFFFBFFFFFFFFFFF7|- rs1_val == -1125899906842625<br>                                                                                                                              |[0x80001188]:c.add a0, a1<br> [0x8000118a]:sd a0, 1152(ra)<br>   |
| 165|[0x80004738]<br>0xFFFBFFFBFFFFFFFE|- rs2_val == -17179869185<br>                                                                                                                                   |[0x800011a6]:c.add a0, a1<br> [0x800011a8]:sd a0, 1160(ra)<br>   |
| 166|[0x80004740]<br>0x0000002000000008|- rs2_val == 137438953472<br>                                                                                                                                   |[0x800011b8]:c.add a0, a1<br> [0x800011ba]:sd a0, 1168(ra)<br>   |
| 167|[0x80004748]<br>0x0002800000000000|- rs2_val == 562949953421312<br>                                                                                                                                |[0x800011ce]:c.add a0, a1<br> [0x800011d0]:sd a0, 1176(ra)<br>   |
| 168|[0x80004750]<br>0xFFF801FFFFFFFFFF|- rs2_val == 2199023255552<br> - rs1_val == -2251799813685249<br>                                                                                               |[0x800011e8]:c.add a0, a1<br> [0x800011ea]:sd a0, 1184(ra)<br>   |
| 169|[0x80004758]<br>0x07FFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                                  |[0x80001202]:c.add a0, a1<br> [0x80001204]:sd a0, 1192(ra)<br>   |
| 170|[0x80004760]<br>0x00007F7FFFFFFFFF|- rs2_val == 140737488355328<br>                                                                                                                                |[0x8000121c]:c.add a0, a1<br> [0x8000121e]:sd a0, 1200(ra)<br>   |
| 171|[0x80004768]<br>0xFFFEFFFFFFFDFFFE|- rs2_val == -281474976710657<br>                                                                                                                               |[0x80001236]:c.add a0, a1<br> [0x80001238]:sd a0, 1208(ra)<br>   |
| 172|[0x80004770]<br>0xFFFE00000001FFFF|- rs2_val == -562949953421313<br>                                                                                                                               |[0x8000124c]:c.add a0, a1<br> [0x8000124e]:sd a0, 1216(ra)<br>   |
| 173|[0x80004778]<br>0xFFFBFFFFFFFFDFFE|- rs2_val == -1125899906842625<br>                                                                                                                              |[0x80001266]:c.add a0, a1<br> [0x80001268]:sd a0, 1224(ra)<br>   |
| 174|[0x80004780]<br>0xFFEF7FFFFFFFFFFE|- rs1_val == -4503599627370497<br>                                                                                                                              |[0x80001284]:c.add a0, a1<br> [0x80001286]:sd a0, 1232(ra)<br>   |
| 175|[0x80004788]<br>0xFF7FFFFFFFFFFFFE|- rs1_val == -18014398509481985<br>                                                                                                                             |[0x800012a2]:c.add a0, a1<br> [0x800012a4]:sd a0, 1240(ra)<br>   |
| 176|[0x80004790]<br>0x0200010000000000|- rs2_val == 1099511627776<br>                                                                                                                                  |[0x800012b8]:c.add a0, a1<br> [0x800012ba]:sd a0, 1248(ra)<br>   |
| 177|[0x80004798]<br>0x0000000000000140|- rs1_val == 64<br>                                                                                                                                             |[0x800012c6]:c.add a0, a1<br> [0x800012c8]:sd a0, 1256(ra)<br>   |
