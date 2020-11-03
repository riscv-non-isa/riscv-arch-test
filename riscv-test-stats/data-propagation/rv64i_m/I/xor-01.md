
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800015a0')]      |
| SIG_REGION                | [('0x80004204', '0x80004800', '191 dwords')]      |
| COV_LABELS                | xor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xor-01.S/xor-01.S    |
| Total Number of coverpoints| 374     |
| Total Signature Updates   | 190      |
| Total Coverpoints Covered | 374      |
| STAT1                     | 187      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000079c]:xor a2, a0, a1
      [0x800007a0]:sd a2, 248(tp)
 -- Signature Address: 0x80004388 Data: 0x0000020000000080
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 128
      - rs1_val == 2199023255552




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001574]:xor a2, a0, a1
      [0x80001578]:sd a2, 1368(tp)
 -- Signature Address: 0x800047e8 Data: 0x0000000000800004
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 8388608
      - rs1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001584]:xor a2, a0, a1
      [0x80001588]:sd a2, 1376(tp)
 -- Signature Address: 0x800047f0 Data: 0x0000000000001040
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 4096
      - rs1_val == 64






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

|s.no|            signature             |                                                                                            coverpoints                                                                                             |                               code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000000|- opcode : xor<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                                 |[0x800003a4]:xor s8, s8, s8<br> [0x800003a8]:sd s8, 0(a7)<br>      |
|   2|[0x80004218]<br>0x0000000001000000|- rs1 : x29<br> - rs2 : x30<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 16777216<br>                                                         |[0x800003b4]:xor t4, t4, t5<br> [0x800003b8]:sd t4, 8(a7)<br>      |
|   3|[0x80004220]<br>0x8000000000004000|- rs1 : x11<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -16385<br> - rs1_val == 9223372036854775807<br> |[0x800003d0]:xor fp, a1, fp<br> [0x800003d4]:sd fp, 16(a7)<br>     |
|   4|[0x80004228]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x7<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 2199023255552<br> - rs1_val == 2199023255552<br>                                |[0x800003e4]:xor t2, s9, s9<br> [0x800003e8]:sd t2, 24(a7)<br>     |
|   5|[0x80004230]<br>0x8000000000100000|- rs1 : x27<br> - rs2 : x20<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 1048576<br>         |[0x800003f8]:xor t5, s11, s4<br> [0x800003fc]:sd t5, 32(a7)<br>    |
|   6|[0x80004238]<br>0x5555555555555555|- rs1 : x26<br> - rs2 : x23<br> - rd : x31<br> - rs2_val == 0<br> - rs1_val == 6148914691236517205<br>                                                                                              |[0x80000424]:xor t6, s10, s7<br> [0x80000428]:sd t6, 40(a7)<br>    |
|   7|[0x80004240]<br>0x7FDFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x9<br> - rd : x1<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 9007199254740992<br>                                                |[0x80000440]:xor ra, a3, s1<br> [0x80000444]:sd ra, 48(a7)<br>     |
|   8|[0x80004248]<br>0x0000000000000101|- rs1 : x28<br> - rs2 : x6<br> - rd : x11<br> - rs2_val == 1<br> - rs1_val == 256<br>                                                                                                               |[0x80000450]:xor a1, t3, t1<br> [0x80000454]:sd a1, 56(a7)<br>     |
|   9|[0x80004250]<br>0xFFFFFF7FFFEFFFFF|- rs1 : x2<br> - rs2 : x16<br> - rd : x14<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1048576<br> - rs1_val == -549755813889<br>                                                             |[0x80000468]:xor a4, sp, a6<br> [0x8000046c]:sd a4, 64(a7)<br>     |
|  10|[0x80004258]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x2<br> - rd : x6<br> - rs2_val == 524288<br> - rs1_val == 524288<br>                                                                                                        |[0x80000478]:xor t1, a5, sp<br> [0x8000047c]:sd t1, 72(a7)<br>     |
|  11|[0x80004260]<br>0x0000000000000082|- rs1 : x8<br> - rs2 : x12<br> - rd : x23<br> - rs2_val == 128<br> - rs1_val == 2<br>                                                                                                               |[0x80000488]:xor s7, fp, a2<br> [0x8000048c]:sd s7, 80(a7)<br>     |
|  12|[0x80004268]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x4<br> - rd : x0<br> - rs2_val == 8388608<br> - rs1_val == 4<br>                                                                                                            |[0x80000498]:xor zero, t5, tp<br> [0x8000049c]:sd zero, 88(a7)<br> |
|  13|[0x80004270]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x18<br> - rs2 : x10<br> - rd : x26<br> - rs1_val == 8<br>                                                                                                                                   |[0x800004a8]:xor s10, s2, a0<br> [0x800004ac]:sd s10, 96(a7)<br>   |
|  14|[0x80004278]<br>0x0000000004000010|- rs1 : x9<br> - rs2 : x7<br> - rd : x5<br> - rs2_val == 67108864<br> - rs1_val == 16<br>                                                                                                           |[0x800004b8]:xor t0, s1, t2<br> [0x800004bc]:sd t0, 104(a7)<br>    |
|  15|[0x80004280]<br>0xFFFFFFF7FFFFFFDF|- rs1 : x6<br> - rs2 : x22<br> - rd : x4<br> - rs2_val == -34359738369<br> - rs1_val == 32<br>                                                                                                      |[0x800004d0]:xor tp, t1, s6<br> [0x800004d4]:sd tp, 112(a7)<br>    |
|  16|[0x80004288]<br>0x0000000000000040|- rs1 : x4<br> - rs2 : x0<br> - rd : x3<br> - rs1_val == 64<br>                                                                                                                                     |[0x800004e4]:xor gp, tp, zero<br> [0x800004e8]:sd gp, 120(a7)<br>  |
|  17|[0x80004290]<br>0x2000000000000000|- rs1 : x0<br> - rs2 : x19<br> - rd : x21<br> - rs2_val == 2305843009213693952<br>                                                                                                                  |[0x80000500]:xor s5, zero, s3<br> [0x80000504]:sd s5, 0(tp)<br>    |
|  18|[0x80004298]<br>0x0800000000000200|- rs1 : x20<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 576460752303423488<br> - rs1_val == 512<br>                                                                                             |[0x80000514]:xor t3, s4, s10<br> [0x80000518]:sd t3, 8(tp)<br>     |
|  19|[0x800042a0]<br>0x0000040000000400|- rs1 : x16<br> - rs2 : x14<br> - rd : x19<br> - rs2_val == 4398046511104<br> - rs1_val == 1024<br>                                                                                                 |[0x80000528]:xor s3, a6, a4<br> [0x8000052c]:sd s3, 16(tp)<br>     |
|  20|[0x800042a8]<br>0xFFFFFFFFFFFFF77F|- rs1 : x22<br> - rs2 : x28<br> - rd : x20<br> - rs2_val == -129<br> - rs1_val == 2048<br>                                                                                                          |[0x8000053c]:xor s4, s6, t3<br> [0x80000540]:sd s4, 24(tp)<br>     |
|  21|[0x800042b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x31<br> - rd : x16<br> - rs2_val == -4097<br> - rs1_val == 4096<br>                                                                                                         |[0x80000550]:xor a6, s3, t6<br> [0x80000554]:sd a6, 32(tp)<br>     |
|  22|[0x800042b8]<br>0x0000000000002004|- rs1 : x23<br> - rs2 : x5<br> - rd : x22<br> - rs2_val == 4<br> - rs1_val == 8192<br>                                                                                                              |[0x80000560]:xor s6, s7, t0<br> [0x80000564]:sd s6, 40(tp)<br>     |
|  23|[0x800042c0]<br>0x0000040000004000|- rs1 : x1<br> - rs2 : x21<br> - rd : x13<br> - rs1_val == 16384<br>                                                                                                                                |[0x80000574]:xor a3, ra, s5<br> [0x80000578]:sd a3, 48(tp)<br>     |
|  24|[0x800042c8]<br>0x0000000000009000|- rs1 : x12<br> - rs2 : x18<br> - rd : x9<br> - rs2_val == 4096<br> - rs1_val == 32768<br>                                                                                                          |[0x80000584]:xor s1, a2, s2<br> [0x80000588]:sd s1, 56(tp)<br>     |
|  25|[0x800042d0]<br>0x0080000000010000|- rs1 : x14<br> - rs2 : x11<br> - rd : x2<br> - rs2_val == 36028797018963968<br> - rs1_val == 65536<br>                                                                                             |[0x80000598]:xor sp, a4, a1<br> [0x8000059c]:sd sp, 64(tp)<br>     |
|  26|[0x800042d8]<br>0xFFFFFFFFFFFDFFBF|- rs1 : x21<br> - rs2 : x15<br> - rd : x25<br> - rs2_val == -65<br> - rs1_val == 131072<br>                                                                                                         |[0x800005a8]:xor s9, s5, a5<br> [0x800005ac]:sd s9, 72(tp)<br>     |
|  27|[0x800042e0]<br>0x0000000000040002|- rs1 : x3<br> - rs2 : x13<br> - rd : x15<br> - rs2_val == 2<br> - rs1_val == 262144<br>                                                                                                            |[0x800005b8]:xor a5, gp, a3<br> [0x800005bc]:sd a5, 80(tp)<br>     |
|  28|[0x800042e8]<br>0xFFFFFFFDFFDFFFFF|- rs1 : x17<br> - rs2 : x29<br> - rd : x12<br> - rs2_val == -8589934593<br> - rs1_val == 2097152<br>                                                                                                |[0x800005d0]:xor a2, a7, t4<br> [0x800005d4]:sd a2, 88(tp)<br>     |
|  29|[0x800042f0]<br>0xFFFEFFFFFFBFFFFF|- rs1 : x5<br> - rs2 : x3<br> - rd : x27<br> - rs2_val == -281474976710657<br> - rs1_val == 4194304<br>                                                                                             |[0x800005e8]:xor s11, t0, gp<br> [0x800005ec]:sd s11, 96(tp)<br>   |
|  30|[0x800042f8]<br>0x0000001000800000|- rs1 : x31<br> - rs2 : x1<br> - rd : x17<br> - rs2_val == 68719476736<br> - rs1_val == 8388608<br>                                                                                                 |[0x800005fc]:xor a7, t6, ra<br> [0x80000600]:sd a7, 104(tp)<br>    |
|  31|[0x80004300]<br>0xC000000001000000|- rs1 : x10<br> - rs2 : x17<br> - rd : x18<br> - rs1_val == 16777216<br>                                                                                                                            |[0x80000610]:xor s2, a0, a7<br> [0x80000614]:sd s2, 112(tp)<br>    |
|  32|[0x80004308]<br>0x0000000002000001|- rs1 : x7<br> - rs2 : x27<br> - rd : x10<br> - rs1_val == 33554432<br>                                                                                                                             |[0x80000620]:xor a0, t2, s11<br> [0x80000624]:sd a0, 120(tp)<br>   |
|  33|[0x80004310]<br>0xFFFFFFEFFBFFFFFF|- rs2_val == -68719476737<br> - rs1_val == 67108864<br>                                                                                                                                             |[0x80000638]:xor a2, a0, a1<br> [0x8000063c]:sd a2, 128(tp)<br>    |
|  34|[0x80004318]<br>0x0000800008000000|- rs2_val == 140737488355328<br> - rs1_val == 134217728<br>                                                                                                                                         |[0x8000064c]:xor a2, a0, a1<br> [0x80000650]:sd a2, 136(tp)<br>    |
|  35|[0x80004320]<br>0x0000004010000000|- rs2_val == 274877906944<br> - rs1_val == 268435456<br>                                                                                                                                            |[0x80000660]:xor a2, a0, a1<br> [0x80000664]:sd a2, 144(tp)<br>    |
|  36|[0x80004328]<br>0xFFFFF7FFDFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 536870912<br>                                                                                                                                          |[0x80000678]:xor a2, a0, a1<br> [0x8000067c]:sd a2, 152(tp)<br>    |
|  37|[0x80004330]<br>0xFFFEFFFFBFFFFFFF|- rs1_val == 1073741824<br>                                                                                                                                                                         |[0x80000690]:xor a2, a0, a1<br> [0x80000694]:sd a2, 160(tp)<br>    |
|  38|[0x80004338]<br>0x0000000080000002|- rs1_val == 2147483648<br>                                                                                                                                                                         |[0x800006a4]:xor a2, a0, a1<br> [0x800006a8]:sd a2, 168(tp)<br>    |
|  39|[0x80004340]<br>0xFFFFFFBEFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 4294967296<br>                                                                                                                                          |[0x800006c0]:xor a2, a0, a1<br> [0x800006c4]:sd a2, 176(tp)<br>    |
|  40|[0x80004348]<br>0x0000000A00000000|- rs2_val == 34359738368<br> - rs1_val == 8589934592<br>                                                                                                                                            |[0x800006d8]:xor a2, a0, a1<br> [0x800006dc]:sd a2, 184(tp)<br>    |
|  41|[0x80004350]<br>0x1000000400000000|- rs2_val == 1152921504606846976<br> - rs1_val == 17179869184<br>                                                                                                                                   |[0x800006f0]:xor a2, a0, a1<br> [0x800006f4]:sd a2, 192(tp)<br>    |
|  42|[0x80004358]<br>0xDFFFFFF7FFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == 34359738368<br>                                                                                                                                  |[0x8000070c]:xor a2, a0, a1<br> [0x80000710]:sd a2, 200(tp)<br>    |
|  43|[0x80004360]<br>0xFFFBFFEFFFFFFFFF|- rs2_val == -1125899906842625<br> - rs1_val == 68719476736<br>                                                                                                                                     |[0x80000728]:xor a2, a0, a1<br> [0x8000072c]:sd a2, 208(tp)<br>    |
|  44|[0x80004368]<br>0x0000002000040000|- rs2_val == 262144<br> - rs1_val == 137438953472<br>                                                                                                                                               |[0x8000073c]:xor a2, a0, a1<br> [0x80000740]:sd a2, 216(tp)<br>    |
|  45|[0x80004370]<br>0xFFEFFFBFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == 274877906944<br>                                                                                                                                    |[0x80000758]:xor a2, a0, a1<br> [0x8000075c]:sd a2, 224(tp)<br>    |
|  46|[0x80004378]<br>0xFFFFFF7FFFFDFFFF|- rs2_val == -131073<br> - rs1_val == 549755813888<br>                                                                                                                                              |[0x80000770]:xor a2, a0, a1<br> [0x80000774]:sd a2, 232(tp)<br>    |
|  47|[0x80004380]<br>0x0000011000000000|- rs1_val == 1099511627776<br>                                                                                                                                                                      |[0x80000788]:xor a2, a0, a1<br> [0x8000078c]:sd a2, 240(tp)<br>    |
|  48|[0x80004390]<br>0xFFFFFBFEFFFFFFFF|- rs2_val == -4294967297<br> - rs1_val == 4398046511104<br>                                                                                                                                         |[0x800007b8]:xor a2, a0, a1<br> [0x800007bc]:sd a2, 256(tp)<br>    |
|  49|[0x80004398]<br>0xFFFFB7FFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == 8796093022208<br>                                                                                                                                     |[0x800007d4]:xor a2, a0, a1<br> [0x800007d8]:sd a2, 264(tp)<br>    |
|  50|[0x800043a0]<br>0x0000100000000020|- rs2_val == 32<br> - rs1_val == 17592186044416<br>                                                                                                                                                 |[0x800007e8]:xor a2, a0, a1<br> [0x800007ec]:sd a2, 272(tp)<br>    |
|  51|[0x800043a8]<br>0xFFF7DFFFFFFFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == 35184372088832<br>                                                                                                                                  |[0x80000804]:xor a2, a0, a1<br> [0x80000808]:sd a2, 280(tp)<br>    |
|  52|[0x800043b0]<br>0xFFF7BFFFFFFFFFFF|- rs1_val == 70368744177664<br>                                                                                                                                                                     |[0x80000820]:xor a2, a0, a1<br> [0x80000824]:sd a2, 288(tp)<br>    |
|  53|[0x800043b8]<br>0xFFFF7BFFFFFFFFFF|- rs2_val == -4398046511105<br> - rs1_val == 140737488355328<br>                                                                                                                                    |[0x8000083c]:xor a2, a0, a1<br> [0x80000840]:sd a2, 296(tp)<br>    |
|  54|[0x800043c0]<br>0x0001000400000000|- rs2_val == 17179869184<br> - rs1_val == 281474976710656<br>                                                                                                                                       |[0x80000854]:xor a2, a0, a1<br> [0x80000858]:sd a2, 304(tp)<br>    |
|  55|[0x800043c8]<br>0x0002200000000000|- rs2_val == 35184372088832<br> - rs1_val == 562949953421312<br>                                                                                                                                    |[0x8000086c]:xor a2, a0, a1<br> [0x80000870]:sd a2, 312(tp)<br>    |
|  56|[0x800043d0]<br>0xFFFBFFFFFFF7FFFF|- rs2_val == -524289<br> - rs1_val == 1125899906842624<br>                                                                                                                                          |[0x80000884]:xor a2, a0, a1<br> [0x80000888]:sd a2, 320(tp)<br>    |
|  57|[0x800043d8]<br>0xFFF7FFFFFFDFFFFF|- rs2_val == -2097153<br> - rs1_val == 2251799813685248<br>                                                                                                                                         |[0x8000089c]:xor a2, a0, a1<br> [0x800008a0]:sd a2, 328(tp)<br>    |
|  58|[0x800043e0]<br>0xFFEFFFFFFFFFDFFF|- rs2_val == -8193<br> - rs1_val == 4503599627370496<br>                                                                                                                                            |[0x800008b4]:xor a2, a0, a1<br> [0x800008b8]:sd a2, 336(tp)<br>    |
|  59|[0x800043e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == 18014398509481984<br>                                                                                                                              |[0x800008d0]:xor a2, a0, a1<br> [0x800008d4]:sd a2, 344(tp)<br>    |
|  60|[0x800043f0]<br>0xFF7FBFFFFFFFFFFF|- rs1_val == 36028797018963968<br>                                                                                                                                                                  |[0x800008ec]:xor a2, a0, a1<br> [0x800008f0]:sd a2, 352(tp)<br>    |
|  61|[0x800043f8]<br>0xC100000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                  |[0x80000904]:xor a2, a0, a1<br> [0x80000908]:sd a2, 360(tp)<br>    |
|  62|[0x80004400]<br>0xFDFFFFFFFFFFFFFA|- rs1_val == 144115188075855872<br>                                                                                                                                                                 |[0x80000918]:xor a2, a0, a1<br> [0x8000091c]:sd a2, 368(tp)<br>    |
|  63|[0x80004408]<br>0x0480000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                 |[0x80000930]:xor a2, a0, a1<br> [0x80000934]:sd a2, 376(tp)<br>    |
|  64|[0x80004410]<br>0xF7FFDFFFFFFFFFFF|- rs2_val == -35184372088833<br> - rs1_val == 576460752303423488<br>                                                                                                                                |[0x8000094c]:xor a2, a0, a1<br> [0x80000950]:sd a2, 384(tp)<br>    |
|  65|[0x80004418]<br>0x1000000000000080|- rs1_val == 1152921504606846976<br>                                                                                                                                                                |[0x80000960]:xor a2, a0, a1<br> [0x80000964]:sd a2, 392(tp)<br>    |
|  66|[0x80004420]<br>0xDFFFFFFFFFFF7FFF|- rs2_val == -32769<br> - rs1_val == 2305843009213693952<br>                                                                                                                                        |[0x80000978]:xor a2, a0, a1<br> [0x8000097c]:sd a2, 400(tp)<br>    |
|  67|[0x80004428]<br>0xBFFFFFFEFFFFFFFF|- rs1_val == 4611686018427387904<br>                                                                                                                                                                |[0x80000994]:xor a2, a0, a1<br> [0x80000998]:sd a2, 408(tp)<br>    |
|  68|[0x80004430]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                 |[0x800009a4]:xor a2, a0, a1<br> [0x800009a8]:sd a2, 416(tp)<br>    |
|  69|[0x80004438]<br>0xDFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                 |[0x800009b8]:xor a2, a0, a1<br> [0x800009bc]:sd a2, 424(tp)<br>    |
|  70|[0x80004440]<br>0xFFFFFFBFFFFFFFFB|- rs1_val == -5<br>                                                                                                                                                                                 |[0x800009cc]:xor a2, a0, a1<br> [0x800009d0]:sd a2, 432(tp)<br>    |
|  71|[0x80004448]<br>0x0000200000000008|- rs1_val == -9<br>                                                                                                                                                                                 |[0x800009e4]:xor a2, a0, a1<br> [0x800009e8]:sd a2, 440(tp)<br>    |
|  72|[0x80004450]<br>0x0008000000000010|- rs1_val == -17<br>                                                                                                                                                                                |[0x800009fc]:xor a2, a0, a1<br> [0x80000a00]:sd a2, 448(tp)<br>    |
|  73|[0x80004458]<br>0xFFFFFFFDFFFFFFDF|- rs2_val == 8589934592<br> - rs1_val == -33<br>                                                                                                                                                    |[0x80000a10]:xor a2, a0, a1<br> [0x80000a14]:sd a2, 456(tp)<br>    |
|  74|[0x80004460]<br>0xFFFFF7FFFFFFFFBF|- rs2_val == 8796093022208<br> - rs1_val == -65<br>                                                                                                                                                 |[0x80000a24]:xor a2, a0, a1<br> [0x80000a28]:sd a2, 464(tp)<br>    |
|  75|[0x80004468]<br>0xFFFFFFFFFEFFFF7F|- rs1_val == -129<br>                                                                                                                                                                               |[0x80000a34]:xor a2, a0, a1<br> [0x80000a38]:sd a2, 472(tp)<br>    |
|  76|[0x80004470]<br>0xFFFFFFFBFFFFFEFF|- rs1_val == -257<br>                                                                                                                                                                               |[0x80000a48]:xor a2, a0, a1<br> [0x80000a4c]:sd a2, 480(tp)<br>    |
|  77|[0x80004478]<br>0x0000020000000200|- rs2_val == -2199023255553<br> - rs1_val == -513<br>                                                                                                                                               |[0x80000a60]:xor a2, a0, a1<br> [0x80000a64]:sd a2, 488(tp)<br>    |
|  78|[0x80004480]<br>0xFFFDFFFFFFFFFBFF|- rs2_val == 562949953421312<br> - rs1_val == -1025<br>                                                                                                                                             |[0x80000a74]:xor a2, a0, a1<br> [0x80000a78]:sd a2, 496(tp)<br>    |
|  79|[0x80004488]<br>0xFFFFFFF7FFFFF7FF|- rs1_val == -2049<br>                                                                                                                                                                              |[0x80000a8c]:xor a2, a0, a1<br> [0x80000a90]:sd a2, 504(tp)<br>    |
|  80|[0x80004490]<br>0xFFDFFFFFFF7FFFFF|- rs2_val == -9007199254740993<br>                                                                                                                                                                  |[0x80000aa4]:xor a2, a0, a1<br> [0x80000aa8]:sd a2, 512(tp)<br>    |
|  81|[0x80004498]<br>0x0080000000040000|- rs2_val == -36028797018963969<br> - rs1_val == -262145<br>                                                                                                                                        |[0x80000ac0]:xor a2, a0, a1<br> [0x80000ac4]:sd a2, 520(tp)<br>    |
|  82|[0x800044a0]<br>0x0100000000000000|- rs2_val == -72057594037927937<br>                                                                                                                                                                 |[0x80000ad8]:xor a2, a0, a1<br> [0x80000adc]:sd a2, 528(tp)<br>    |
|  83|[0x800044a8]<br>0x0220000000000000|- rs2_val == -144115188075855873<br> - rs1_val == -9007199254740993<br>                                                                                                                             |[0x80000af8]:xor a2, a0, a1<br> [0x80000afc]:sd a2, 536(tp)<br>    |
|  84|[0x800044b0]<br>0x0400400000000000|- rs2_val == -288230376151711745<br> - rs1_val == -70368744177665<br>                                                                                                                               |[0x80000b18]:xor a2, a0, a1<br> [0x80000b1c]:sd a2, 544(tp)<br>    |
|  85|[0x800044b8]<br>0x0801000000000000|- rs2_val == -576460752303423489<br> - rs1_val == -281474976710657<br>                                                                                                                              |[0x80000b38]:xor a2, a0, a1<br> [0x80000b3c]:sd a2, 552(tp)<br>    |
|  86|[0x800044c0]<br>0x1000000000000010|- rs2_val == -1152921504606846977<br>                                                                                                                                                               |[0x80000b50]:xor a2, a0, a1<br> [0x80000b54]:sd a2, 560(tp)<br>    |
|  87|[0x800044c8]<br>0xBFFFFFDFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                                                               |[0x80000b6c]:xor a2, a0, a1<br> [0x80000b70]:sd a2, 568(tp)<br>    |
|  88|[0x800044d0]<br>0x5555575555555555|- rs2_val == 6148914691236517205<br>                                                                                                                                                                |[0x80000b9c]:xor a2, a0, a1<br> [0x80000ba0]:sd a2, 576(tp)<br>    |
|  89|[0x800044d8]<br>0xAAAAAAAAABAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                                                               |[0x80000bc8]:xor a2, a0, a1<br> [0x80000bcc]:sd a2, 584(tp)<br>    |
|  90|[0x800044e0]<br>0xFFBFFFFFFFFFEFFF|- rs2_val == 18014398509481984<br> - rs1_val == -4097<br>                                                                                                                                           |[0x80000be0]:xor a2, a0, a1<br> [0x80000be4]:sd a2, 592(tp)<br>    |
|  91|[0x800044e8]<br>0x0001000000002000|- rs1_val == -8193<br>                                                                                                                                                                              |[0x80000bfc]:xor a2, a0, a1<br> [0x80000c00]:sd a2, 600(tp)<br>    |
|  92|[0x800044f0]<br>0x0000000800004000|- rs1_val == -16385<br>                                                                                                                                                                             |[0x80000c18]:xor a2, a0, a1<br> [0x80000c1c]:sd a2, 608(tp)<br>    |
|  93|[0x800044f8]<br>0xFFFFDFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                                                             |[0x80000c30]:xor a2, a0, a1<br> [0x80000c34]:sd a2, 616(tp)<br>    |
|  94|[0x80004500]<br>0x0000020000010000|- rs1_val == -65537<br>                                                                                                                                                                             |[0x80000c4c]:xor a2, a0, a1<br> [0x80000c50]:sd a2, 624(tp)<br>    |
|  95|[0x80004508]<br>0xFFFEFFFFFFFDFFFF|- rs2_val == 281474976710656<br> - rs1_val == -131073<br>                                                                                                                                           |[0x80000c64]:xor a2, a0, a1<br> [0x80000c68]:sd a2, 632(tp)<br>    |
|  96|[0x80004510]<br>0xFFFFFDFFFFF7FFFF|- rs1_val == -524289<br>                                                                                                                                                                            |[0x80000c7c]:xor a2, a0, a1<br> [0x80000c80]:sd a2, 640(tp)<br>    |
|  97|[0x80004518]<br>0xFFFFFFFFFFEFDFFF|- rs2_val == 8192<br> - rs1_val == -1048577<br>                                                                                                                                                     |[0x80000c90]:xor a2, a0, a1<br> [0x80000c94]:sd a2, 648(tp)<br>    |
|  98|[0x80004520]<br>0xFFFFBFFFFFDFFFFF|- rs2_val == 70368744177664<br> - rs1_val == -2097153<br>                                                                                                                                           |[0x80000ca8]:xor a2, a0, a1<br> [0x80000cac]:sd a2, 656(tp)<br>    |
|  99|[0x80004528]<br>0xFFFFFEFFFFBFFFFF|- rs2_val == 1099511627776<br> - rs1_val == -4194305<br>                                                                                                                                            |[0x80000cc0]:xor a2, a0, a1<br> [0x80000cc4]:sd a2, 664(tp)<br>    |
| 100|[0x80004530]<br>0xFFFFBFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                           |[0x80000cd8]:xor a2, a0, a1<br> [0x80000cdc]:sd a2, 672(tp)<br>    |
| 101|[0x80004538]<br>0xFFFBFFFFFEFFFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -16777217<br>                                                                                                                                        |[0x80000cf0]:xor a2, a0, a1<br> [0x80000cf4]:sd a2, 680(tp)<br>    |
| 102|[0x80004540]<br>0xDFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                          |[0x80000d08]:xor a2, a0, a1<br> [0x80000d0c]:sd a2, 688(tp)<br>    |
| 103|[0x80004548]<br>0xFFFFFFFFFBFFDFFF|- rs1_val == -67108865<br>                                                                                                                                                                          |[0x80000d1c]:xor a2, a0, a1<br> [0x80000d20]:sd a2, 696(tp)<br>    |
| 104|[0x80004550]<br>0xFFFF7FFFF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                         |[0x80000d34]:xor a2, a0, a1<br> [0x80000d38]:sd a2, 704(tp)<br>    |
| 105|[0x80004558]<br>0xFFFFFFFFEFFFFFFE|- rs1_val == -268435457<br>                                                                                                                                                                         |[0x80000d48]:xor a2, a0, a1<br> [0x80000d4c]:sd a2, 712(tp)<br>    |
| 106|[0x80004560]<br>0x0000000020000010|- rs2_val == -17<br> - rs1_val == -536870913<br>                                                                                                                                                    |[0x80000d5c]:xor a2, a0, a1<br> [0x80000d60]:sd a2, 720(tp)<br>    |
| 107|[0x80004568]<br>0xFFFFFFFFBFFF7FFF|- rs2_val == 32768<br> - rs1_val == -1073741825<br>                                                                                                                                                 |[0x80000d70]:xor a2, a0, a1<br> [0x80000d74]:sd a2, 728(tp)<br>    |
| 108|[0x80004570]<br>0xFFFFFFFF7FFDFFFF|- rs2_val == 131072<br> - rs1_val == -2147483649<br>                                                                                                                                                |[0x80000d88]:xor a2, a0, a1<br> [0x80000d8c]:sd a2, 736(tp)<br>    |
| 109|[0x80004578]<br>0xFFFFFFBEFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                                                        |[0x80000da4]:xor a2, a0, a1<br> [0x80000da8]:sd a2, 744(tp)<br>    |
| 110|[0x80004580]<br>0x7FFFFFFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                                                        |[0x80000dc0]:xor a2, a0, a1<br> [0x80000dc4]:sd a2, 752(tp)<br>    |
| 111|[0x80004588]<br>0x0000002400000000|- rs2_val == -137438953473<br> - rs1_val == -17179869185<br>                                                                                                                                        |[0x80000de0]:xor a2, a0, a1<br> [0x80000de4]:sd a2, 760(tp)<br>    |
| 112|[0x80004590]<br>0xFFFFFFF7FFFFDFFF|- rs1_val == -34359738369<br>                                                                                                                                                                       |[0x80000df8]:xor a2, a0, a1<br> [0x80000dfc]:sd a2, 768(tp)<br>    |
| 113|[0x80004598]<br>0x0000001001000000|- rs2_val == -16777217<br> - rs1_val == -68719476737<br>                                                                                                                                            |[0x80000e14]:xor a2, a0, a1<br> [0x80000e18]:sd a2, 776(tp)<br>    |
| 114|[0x800045a0]<br>0x0200002000000000|- rs1_val == -137438953473<br>                                                                                                                                                                      |[0x80000e34]:xor a2, a0, a1<br> [0x80000e38]:sd a2, 784(tp)<br>    |
| 115|[0x800045a8]<br>0xFFFFFFBFFFFFF7FF|- rs2_val == 2048<br> - rs1_val == -274877906945<br>                                                                                                                                                |[0x80000e50]:xor a2, a0, a1<br> [0x80000e54]:sd a2, 792(tp)<br>    |
| 116|[0x800045b0]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                                     |[0x80000e68]:xor a2, a0, a1<br> [0x80000e6c]:sd a2, 800(tp)<br>    |
| 117|[0x800045b8]<br>0x0004020000000000|- rs1_val == -2199023255553<br>                                                                                                                                                                     |[0x80000e88]:xor a2, a0, a1<br> [0x80000e8c]:sd a2, 808(tp)<br>    |
| 118|[0x800045c0]<br>0xFFFFFBFFFFFFFFFE|- rs1_val == -4398046511105<br>                                                                                                                                                                     |[0x80000ea0]:xor a2, a0, a1<br> [0x80000ea4]:sd a2, 816(tp)<br>    |
| 119|[0x800045c8]<br>0xFFFFF77FFFFFFFFF|- rs2_val == 549755813888<br> - rs1_val == -8796093022209<br>                                                                                                                                       |[0x80000ebc]:xor a2, a0, a1<br> [0x80000ec0]:sd a2, 824(tp)<br>    |
| 120|[0x800045d0]<br>0x0000100002000000|- rs2_val == -33554433<br> - rs1_val == -17592186044417<br>                                                                                                                                         |[0x80000ed8]:xor a2, a0, a1<br> [0x80000edc]:sd a2, 832(tp)<br>    |
| 121|[0x800045d8]<br>0xFBFFDFFFFFFFFFFF|- rs2_val == 288230376151711744<br> - rs1_val == -35184372088833<br>                                                                                                                                |[0x80000ef4]:xor a2, a0, a1<br> [0x80000ef8]:sd a2, 840(tp)<br>    |
| 122|[0x800045e0]<br>0x0000800400000000|- rs2_val == -17179869185<br> - rs1_val == -140737488355329<br>                                                                                                                                     |[0x80000f14]:xor a2, a0, a1<br> [0x80000f18]:sd a2, 848(tp)<br>    |
| 123|[0x800045e8]<br>0x0002000002000000|- rs1_val == -562949953421313<br>                                                                                                                                                                   |[0x80000f30]:xor a2, a0, a1<br> [0x80000f34]:sd a2, 856(tp)<br>    |
| 124|[0x800045f0]<br>0x0108000000000000|- rs1_val == -2251799813685249<br>                                                                                                                                                                  |[0x80000f50]:xor a2, a0, a1<br> [0x80000f54]:sd a2, 864(tp)<br>    |
| 125|[0x800045f8]<br>0xFBEFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                                  |[0x80000f6c]:xor a2, a0, a1<br> [0x80000f70]:sd a2, 872(tp)<br>    |
| 126|[0x80004600]<br>0xFFBFFFFFFFFFFFFC|- rs1_val == -18014398509481985<br>                                                                                                                                                                 |[0x80000f84]:xor a2, a0, a1<br> [0x80000f88]:sd a2, 880(tp)<br>    |
| 127|[0x80004608]<br>0xFF7FFFFFFFFFFFFB|- rs1_val == -36028797018963969<br>                                                                                                                                                                 |[0x80000f9c]:xor a2, a0, a1<br> [0x80000fa0]:sd a2, 888(tp)<br>    |
| 128|[0x80004610]<br>0x0002000008000000|- rs2_val == -562949953421313<br>                                                                                                                                                                   |[0x80000fb8]:xor a2, a0, a1<br> [0x80000fbc]:sd a2, 896(tp)<br>    |
| 129|[0x80004618]<br>0x0108000000000000|- rs1_val == -72057594037927937<br>                                                                                                                                                                 |[0x80000fd8]:xor a2, a0, a1<br> [0x80000fdc]:sd a2, 904(tp)<br>    |
| 130|[0x80004620]<br>0x0200020000000000|- rs1_val == -144115188075855873<br>                                                                                                                                                                |[0x80000ff8]:xor a2, a0, a1<br> [0x80000ffc]:sd a2, 912(tp)<br>    |
| 131|[0x80004628]<br>0x0000000000000000|- rs1_val == -288230376151711745<br>                                                                                                                                                                |[0x80001018]:xor a2, a0, a1<br> [0x8000101c]:sd a2, 920(tp)<br>    |
| 132|[0x80004630]<br>0x5D55555555555555|- rs1_val == -576460752303423489<br>                                                                                                                                                                |[0x8000104c]:xor a2, a0, a1<br> [0x80001050]:sd a2, 928(tp)<br>    |
| 133|[0x80004638]<br>0xEF7FFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                               |[0x80001068]:xor a2, a0, a1<br> [0x8000106c]:sd a2, 936(tp)<br>    |
| 134|[0x80004640]<br>0xDFFFFFFFFFFFFFFC|- rs1_val == -2305843009213693953<br>                                                                                                                                                               |[0x80001080]:xor a2, a0, a1<br> [0x80001084]:sd a2, 944(tp)<br>    |
| 135|[0x80004648]<br>0x4000000000000200|- rs2_val == -513<br> - rs1_val == -4611686018427387905<br>                                                                                                                                         |[0x80001098]:xor a2, a0, a1<br> [0x8000109c]:sd a2, 952(tp)<br>    |
| 136|[0x80004650]<br>0x55D5555555555555|- rs1_val == -6148914691236517206<br>                                                                                                                                                               |[0x800010cc]:xor a2, a0, a1<br> [0x800010d0]:sd a2, 960(tp)<br>    |
| 137|[0x80004658]<br>0xFFFFFFFFFFFEFFF7|- rs2_val == 8<br>                                                                                                                                                                                  |[0x800010e0]:xor a2, a0, a1<br> [0x800010e4]:sd a2, 968(tp)<br>    |
| 138|[0x80004660]<br>0xF7FFFFFFFFFFFFEF|- rs2_val == 16<br>                                                                                                                                                                                 |[0x800010f8]:xor a2, a0, a1<br> [0x800010fc]:sd a2, 976(tp)<br>    |
| 139|[0x80004668]<br>0xFFFFFFEFFFFFFFBF|- rs2_val == 64<br>                                                                                                                                                                                 |[0x80001110]:xor a2, a0, a1<br> [0x80001114]:sd a2, 984(tp)<br>    |
| 140|[0x80004670]<br>0x0000000000000120|- rs2_val == 256<br>                                                                                                                                                                                |[0x80001120]:xor a2, a0, a1<br> [0x80001124]:sd a2, 992(tp)<br>    |
| 141|[0x80004678]<br>0x0200000000000200|- rs2_val == 512<br>                                                                                                                                                                                |[0x80001134]:xor a2, a0, a1<br> [0x80001138]:sd a2, 1000(tp)<br>   |
| 142|[0x80004680]<br>0xAAAAAAAAAAAAAEAA|- rs2_val == 1024<br>                                                                                                                                                                               |[0x80001160]:xor a2, a0, a1<br> [0x80001164]:sd a2, 1008(tp)<br>   |
| 143|[0x80004688]<br>0xFFFFEFFFFFFFBFFF|- rs2_val == 16384<br>                                                                                                                                                                              |[0x80001178]:xor a2, a0, a1<br> [0x8000117c]:sd a2, 1016(tp)<br>   |
| 144|[0x80004690]<br>0x0000000100010000|- rs2_val == 65536<br>                                                                                                                                                                              |[0x8000118c]:xor a2, a0, a1<br> [0x80001190]:sd a2, 1024(tp)<br>   |
| 145|[0x80004698]<br>0xFFFFFFFFFFDFDFFF|- rs2_val == 2097152<br>                                                                                                                                                                            |[0x800011a0]:xor a2, a0, a1<br> [0x800011a4]:sd a2, 1032(tp)<br>   |
| 146|[0x800046a0]<br>0x0000000000402000|- rs2_val == 4194304<br>                                                                                                                                                                            |[0x800011b0]:xor a2, a0, a1<br> [0x800011b4]:sd a2, 1040(tp)<br>   |
| 147|[0x800046a8]<br>0xFFFFFFFFEDFFFFFF|- rs2_val == 33554432<br>                                                                                                                                                                           |[0x800011c4]:xor a2, a0, a1<br> [0x800011c8]:sd a2, 1048(tp)<br>   |
| 148|[0x800046b0]<br>0xFFFBFFFFF7FFFFFF|- rs2_val == 134217728<br> - rs1_val == -1125899906842625<br>                                                                                                                                       |[0x800011dc]:xor a2, a0, a1<br> [0x800011e0]:sd a2, 1056(tp)<br>   |
| 149|[0x800046b8]<br>0xFFFFFF7FEFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                          |[0x800011f4]:xor a2, a0, a1<br> [0x800011f8]:sd a2, 1064(tp)<br>   |
| 150|[0x800046c0]<br>0xFFFFBFFFDFFFFFFF|- rs2_val == 536870912<br>                                                                                                                                                                          |[0x8000120c]:xor a2, a0, a1<br> [0x80001210]:sd a2, 1072(tp)<br>   |
| 151|[0x800046c8]<br>0x0000000040200000|- rs2_val == 1073741824<br>                                                                                                                                                                         |[0x8000121c]:xor a2, a0, a1<br> [0x80001220]:sd a2, 1080(tp)<br>   |
| 152|[0x800046d0]<br>0x0200000080000000|- rs2_val == 2147483648<br>                                                                                                                                                                         |[0x80001234]:xor a2, a0, a1<br> [0x80001238]:sd a2, 1088(tp)<br>   |
| 153|[0x800046d8]<br>0x0000000110000000|- rs2_val == 4294967296<br>                                                                                                                                                                         |[0x80001248]:xor a2, a0, a1<br> [0x8000124c]:sd a2, 1096(tp)<br>   |
| 154|[0x800046e0]<br>0x0000000000000000|- rs2_val == 2251799813685248<br>                                                                                                                                                                   |[0x80001260]:xor a2, a0, a1<br> [0x80001264]:sd a2, 1104(tp)<br>   |
| 155|[0x800046e8]<br>0xFFEFFF7FFFFFFFFF|- rs2_val == 4503599627370496<br>                                                                                                                                                                   |[0x8000127c]:xor a2, a0, a1<br> [0x80001280]:sd a2, 1112(tp)<br>   |
| 156|[0x800046f0]<br>0xFFDFFFFEFFFFFFFF|- rs2_val == 9007199254740992<br>                                                                                                                                                                   |[0x80001298]:xor a2, a0, a1<br> [0x8000129c]:sd a2, 1120(tp)<br>   |
| 157|[0x800046f8]<br>0xFEFFFFFFFFDFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                  |[0x800012b0]:xor a2, a0, a1<br> [0x800012b4]:sd a2, 1128(tp)<br>   |
| 158|[0x80004700]<br>0xFDFFFFFFFFFFFBFF|- rs2_val == 144115188075855872<br>                                                                                                                                                                 |[0x800012c4]:xor a2, a0, a1<br> [0x800012c8]:sd a2, 1136(tp)<br>   |
| 159|[0x80004708]<br>0xBFFFFFFFFBFFFFFF|- rs2_val == 4611686018427387904<br>                                                                                                                                                                |[0x800012dc]:xor a2, a0, a1<br> [0x800012e0]:sd a2, 1144(tp)<br>   |
| 160|[0x80004710]<br>0x0000000004000001|- rs2_val == -2<br>                                                                                                                                                                                 |[0x800012f0]:xor a2, a0, a1<br> [0x800012f4]:sd a2, 1152(tp)<br>   |
| 161|[0x80004718]<br>0x0000004000000002|- rs2_val == -3<br>                                                                                                                                                                                 |[0x80001308]:xor a2, a0, a1<br> [0x8000130c]:sd a2, 1160(tp)<br>   |
| 162|[0x80004720]<br>0x5555555555555551|- rs2_val == -5<br>                                                                                                                                                                                 |[0x80001334]:xor a2, a0, a1<br> [0x80001338]:sd a2, 1168(tp)<br>   |
| 163|[0x80004728]<br>0x0000020000000008|- rs2_val == -9<br>                                                                                                                                                                                 |[0x8000134c]:xor a2, a0, a1<br> [0x80001350]:sd a2, 1176(tp)<br>   |
| 164|[0x80004730]<br>0x0004000000000020|- rs2_val == -33<br>                                                                                                                                                                                |[0x80001364]:xor a2, a0, a1<br> [0x80001368]:sd a2, 1184(tp)<br>   |
| 165|[0x80004738]<br>0xFFFFFFFFFFBFFEFF|- rs2_val == -257<br>                                                                                                                                                                               |[0x80001374]:xor a2, a0, a1<br> [0x80001378]:sd a2, 1192(tp)<br>   |
| 166|[0x80004740]<br>0xFFFFFFFFFFFFFBF8|- rs2_val == -1025<br>                                                                                                                                                                              |[0x80001384]:xor a2, a0, a1<br> [0x80001388]:sd a2, 1200(tp)<br>   |
| 167|[0x80004748]<br>0x0000000000080800|- rs2_val == -2049<br>                                                                                                                                                                              |[0x8000139c]:xor a2, a0, a1<br> [0x800013a0]:sd a2, 1208(tp)<br>   |
| 168|[0x80004750]<br>0x0040000000010000|- rs2_val == -65537<br>                                                                                                                                                                             |[0x800013b8]:xor a2, a0, a1<br> [0x800013bc]:sd a2, 1216(tp)<br>   |
| 169|[0x80004758]<br>0x0000001000040000|- rs2_val == -262145<br>                                                                                                                                                                            |[0x800013d4]:xor a2, a0, a1<br> [0x800013d8]:sd a2, 1224(tp)<br>   |
| 170|[0x80004760]<br>0xFFFFFFFFFFEFFFFC|- rs2_val == -1048577<br>                                                                                                                                                                           |[0x800013e8]:xor a2, a0, a1<br> [0x800013ec]:sd a2, 1232(tp)<br>   |
| 171|[0x80004768]<br>0xFFFFFFFFFDBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                           |[0x800013fc]:xor a2, a0, a1<br> [0x80001400]:sd a2, 1240(tp)<br>   |
| 172|[0x80004770]<br>0xF7FFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                                                           |[0x80001414]:xor a2, a0, a1<br> [0x80001418]:sd a2, 1248(tp)<br>   |
| 173|[0x80004778]<br>0x0000000404000000|- rs2_val == -67108865<br>                                                                                                                                                                          |[0x80001430]:xor a2, a0, a1<br> [0x80001434]:sd a2, 1256(tp)<br>   |
| 174|[0x80004780]<br>0xFFFFFFFFF7FBFFFF|- rs2_val == -134217729<br>                                                                                                                                                                         |[0x80001444]:xor a2, a0, a1<br> [0x80001448]:sd a2, 1264(tp)<br>   |
| 175|[0x80004788]<br>0xFFFFEFBFFFFFFFFF|- rs2_val == 17592186044416<br>                                                                                                                                                                     |[0x80001460]:xor a2, a0, a1<br> [0x80001464]:sd a2, 1272(tp)<br>   |
| 176|[0x80004790]<br>0xFFFFFFFFEFFFFFF6|- rs2_val == -268435457<br>                                                                                                                                                                         |[0x80001474]:xor a2, a0, a1<br> [0x80001478]:sd a2, 1280(tp)<br>   |
| 177|[0x80004798]<br>0x0000000024000000|- rs2_val == -536870913<br>                                                                                                                                                                         |[0x8000148c]:xor a2, a0, a1<br> [0x80001490]:sd a2, 1288(tp)<br>   |
| 178|[0x800047a0]<br>0x0000002000020000|- rs2_val == 137438953472<br>                                                                                                                                                                       |[0x800014a0]:xor a2, a0, a1<br> [0x800014a4]:sd a2, 1296(tp)<br>   |
| 179|[0x800047a8]<br>0xFFFFFF7FFFFFFEFF|- rs2_val == -549755813889<br>                                                                                                                                                                      |[0x800014b8]:xor a2, a0, a1<br> [0x800014bc]:sd a2, 1304(tp)<br>   |
| 180|[0x800047b0]<br>0x2000010000000000|- rs2_val == -1099511627777<br>                                                                                                                                                                     |[0x800014d8]:xor a2, a0, a1<br> [0x800014dc]:sd a2, 1312(tp)<br>   |
| 181|[0x800047b8]<br>0x0000000080000006|- rs2_val == -2147483649<br>                                                                                                                                                                        |[0x800014f0]:xor a2, a0, a1<br> [0x800014f4]:sd a2, 1320(tp)<br>   |
| 182|[0x800047c0]<br>0xFFFFEBFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                                                                    |[0x8000150c]:xor a2, a0, a1<br> [0x80001510]:sd a2, 1328(tp)<br>   |
| 183|[0x800047c8]<br>0xFFFFFFFFBFFFFFEF|- rs2_val == -1073741825<br>                                                                                                                                                                        |[0x80001520]:xor a2, a0, a1<br> [0x80001524]:sd a2, 1336(tp)<br>   |
| 184|[0x800047d0]<br>0xF7FF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                                                                   |[0x8000153c]:xor a2, a0, a1<br> [0x80001540]:sd a2, 1344(tp)<br>   |
| 185|[0x800047d8]<br>0x7FFFFFFFFFFFFFF9|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                                                                               |[0x80001550]:xor a2, a0, a1<br> [0x80001554]:sd a2, 1352(tp)<br>   |
| 186|[0x800047e0]<br>0x0000020000000001|- rs1_val == 1<br>                                                                                                                                                                                  |[0x80001564]:xor a2, a0, a1<br> [0x80001568]:sd a2, 1360(tp)<br>   |
| 187|[0x800047f8]<br>0x2000000000000080|- rs1_val == 128<br>                                                                                                                                                                                |[0x80001598]:xor a2, a0, a1<br> [0x8000159c]:sd a2, 1384(tp)<br>   |
