
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800014f0')]      |
| SIG_REGION                | [('0x80004204', '0x800047d8', '186 dwords')]      |
| COV_LABELS                | mul      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mul-01.S/mul-01.S    |
| Total Number of coverpoints| 374     |
| Total Signature Updates   | 185      |
| Total Coverpoints Covered | 374      |
| STAT1                     | 182      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001488]:mul a2, a0, a1
      [0x8000148c]:sd a2, 1296(t1)
 -- Signature Address: 0x800047b0 Data: 0x8000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -131073
      - rs1_val == -9223372036854775808




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014cc]:mul a2, a0, a1
      [0x800014d0]:sd a2, 1320(t1)
 -- Signature Address: 0x800047c8 Data: 0x1000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 72057594037927936
      - rs1_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014e0]:mul a2, a0, a1
      [0x800014e4]:sd a2, 1328(t1)
 -- Signature Address: 0x800047d0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 562949953421312
      - rs1_val == 4194304






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

|s.no|            signature             |                                                                                                   coverpoints                                                                                                    |                               code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000400040001|- opcode : mul<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -131073<br> - rs1_val == -131073<br>             |[0x800003a8]:mul s5, s10, s10<br> [0x800003ac]:sd s5, 0(tp)<br>    |
|   2|[0x80004218]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x11<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -513<br>                                                    |[0x800003b8]:mul s3, a0, a1<br> [0x800003bc]:sd s3, 8(tp)<br>      |
|   3|[0x80004220]<br>0xFFFFFFFFFFFF0000|- rs1 : x30<br> - rs2 : x7<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 65536<br> - rs1_val == 9223372036854775807<br>               |[0x800003d0]:mul t5, t5, t2<br> [0x800003d4]:sd t5, 16(tp)<br>     |
|   4|[0x80004228]<br>0x0000000000200000|- rs1 : x20<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs1_val == 1<br> - rs2_val == 2097152<br>                                                                                                   |[0x800003e0]:mul t1, s4, t1<br> [0x800003e4]:sd t1, 24(tp)<br>     |
|   5|[0x80004230]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -9223372036854775808<br> |[0x800003f8]:mul a6, a6, a6<br> [0x800003fc]:sd a6, 32(tp)<br>     |
|   6|[0x80004238]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x18<br> - rd : x29<br> - rs2_val == 0<br> - rs1_val == -2097153<br>                                                                                                                       |[0x8000040c]:mul t4, s11, s2<br> [0x80000410]:sd t4, 40(tp)<br>    |
|   7|[0x80004240]<br>0x8000000000000081|- rs1 : x28<br> - rs2 : x23<br> - rd : x27<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -129<br>                                      |[0x80000424]:mul s11, t3, s7<br> [0x80000428]:sd s11, 48(tp)<br>   |
|   8|[0x80004248]<br>0x0000000000001000|- rs1 : x12<br> - rs2 : x8<br> - rd : x11<br> - rs2_val == 1<br> - rs1_val == 4096<br>                                                                                                                            |[0x80000434]:mul a1, a2, fp<br> [0x80000438]:sd a1, 56(tp)<br>     |
|   9|[0x80004250]<br>0xFF90000000000000|- rs1 : x14<br> - rs2 : x31<br> - rd : x24<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 4503599627370496<br>                                                                                                |[0x80000448]:mul s8, a4, t6<br> [0x8000044c]:sd s8, 64(tp)<br>     |
|  10|[0x80004258]<br>0x0000000001002001|- rs1 : x17<br> - rs2 : x28<br> - rd : x18<br> - rs2_val == -4097<br> - rs1_val == -4097<br>                                                                                                                      |[0x80000460]:mul s2, a7, t3<br> [0x80000464]:sd s2, 72(tp)<br>     |
|  11|[0x80004260]<br>0x0000000000000010|- rs1 : x7<br> - rs2 : x9<br> - rd : x15<br> - rs2_val == 8<br> - rs1_val == 2<br>                                                                                                                                |[0x80000470]:mul a5, t2, s1<br> [0x80000474]:sd a5, 80(tp)<br>     |
|  12|[0x80004268]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x23<br> - rs2_val == -72057594037927937<br>                                                                                                                                 |[0x80000488]:mul s7, zero, t4<br> [0x8000048c]:sd s7, 88(tp)<br>   |
|  13|[0x80004270]<br>0xFFFFFFFFFFFFFFB0|- rs1 : x2<br> - rs2 : x15<br> - rd : x1<br> - rs1_val == 8<br>                                                                                                                                                   |[0x80000498]:mul ra, sp, a5<br> [0x8000049c]:sd ra, 96(tp)<br>     |
|  14|[0x80004278]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x0<br> - rd : x12<br> - rs1_val == 16<br>                                                                                                                                                  |[0x800004ac]:mul a2, gp, zero<br> [0x800004b0]:sd a2, 104(tp)<br>  |
|  15|[0x80004280]<br>0x0000000400000000|- rs1 : x24<br> - rs2 : x17<br> - rd : x26<br> - rs2_val == 536870912<br> - rs1_val == 32<br>                                                                                                                     |[0x800004bc]:mul s10, s8, a7<br> [0x800004c0]:sd s10, 112(tp)<br>  |
|  16|[0x80004288]<br>0xFFFFFFFFFFFFFE00|- rs1 : x6<br> - rs2 : x25<br> - rd : x14<br> - rs1_val == 64<br>                                                                                                                                                 |[0x800004cc]:mul a4, t1, s9<br> [0x800004d0]:sd a4, 120(tp)<br>    |
|  17|[0x80004290]<br>0x0000000000200000|- rs1 : x23<br> - rs2 : x2<br> - rd : x31<br> - rs2_val == 16384<br> - rs1_val == 128<br>                                                                                                                         |[0x800004dc]:mul t6, s7, sp<br> [0x800004e0]:sd t6, 128(tp)<br>    |
|  18|[0x80004298]<br>0x0100000000000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 281474976710656<br> - rs1_val == 256<br>                                                                                                              |[0x800004f0]:mul s6, a5, s5<br> [0x800004f4]:sd s6, 136(tp)<br>    |
|  19|[0x800042a0]<br>0x0000004000000000|- rs1 : x1<br> - rs2 : x3<br> - rd : x13<br> - rs1_val == 512<br>                                                                                                                                                 |[0x80000508]:mul a3, ra, gp<br> [0x8000050c]:sd a3, 0(t1)<br>      |
|  20|[0x800042a8]<br>0x0001000000000000|- rs1 : x8<br> - rs2 : x10<br> - rd : x3<br> - rs2_val == 274877906944<br> - rs1_val == 1024<br>                                                                                                                  |[0x8000051c]:mul gp, fp, a0<br> [0x80000520]:sd gp, 8(t1)<br>      |
|  21|[0x800042b0]<br>0xFFFFFFFFFBFFF800|- rs1 : x22<br> - rs2 : x27<br> - rd : x5<br> - rs2_val == -32769<br> - rs1_val == 2048<br>                                                                                                                       |[0x80000534]:mul t0, s6, s11<br> [0x80000538]:sd t0, 16(t1)<br>    |
|  22|[0x800042b8]<br>0xFFFFFFFFFFFFE000|- rs1 : x5<br> - rs2 : x1<br> - rd : x10<br> - rs2_val == -288230376151711745<br> - rs1_val == 8192<br>                                                                                                           |[0x8000054c]:mul a0, t0, ra<br> [0x80000550]:sd a0, 24(t1)<br>     |
|  23|[0x800042c0]<br>0xFFFFFFFFFFFF8000|- rs1 : x18<br> - rs2 : x22<br> - rd : x25<br> - rs2_val == -2<br> - rs1_val == 16384<br>                                                                                                                         |[0x8000055c]:mul s9, s2, s6<br> [0x80000560]:sd s9, 32(t1)<br>     |
|  24|[0x800042c8]<br>0x0000010000000000|- rs1 : x9<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 33554432<br> - rs1_val == 32768<br>                                                                                                                    |[0x8000056c]:mul s4, s1, s3<br> [0x80000570]:sd s4, 40(t1)<br>     |
|  25|[0x800042d0]<br>0xFFFFFEFFFFFF0000|- rs1 : x4<br> - rs2 : x12<br> - rd : x7<br> - rs2_val == -16777217<br> - rs1_val == 65536<br>                                                                                                                    |[0x80000580]:mul t2, tp, a2<br> [0x80000584]:sd t2, 48(t1)<br>     |
|  26|[0x800042d8]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x20<br> - rd : x17<br> - rs2_val == 4503599627370496<br> - rs1_val == 131072<br>                                                                                                          |[0x80000594]:mul a7, a1, s4<br> [0x80000598]:sd a7, 56(t1)<br>     |
|  27|[0x800042e0]<br>0xDFFFFFFFFFFC0000|- rs1 : x13<br> - rs2 : x24<br> - rd : x4<br> - rs2_val == -8796093022209<br> - rs1_val == 262144<br>                                                                                                             |[0x800005ac]:mul tp, a3, s8<br> [0x800005b0]:sd tp, 64(t1)<br>     |
|  28|[0x800042e8]<br>0xFFFFFBFFFFF80000|- rs1 : x31<br> - rs2 : x30<br> - rd : x9<br> - rs2_val == -8388609<br> - rs1_val == 524288<br>                                                                                                                   |[0x800005c0]:mul s1, t6, t5<br> [0x800005c4]:sd s1, 72(t1)<br>     |
|  29|[0x800042f0]<br>0x0002000000000000|- rs1 : x25<br> - rs2 : x5<br> - rd : x28<br> - rs1_val == 1048576<br>                                                                                                                                            |[0x800005d0]:mul t3, s9, t0<br> [0x800005d4]:sd t3, 80(t1)<br>     |
|  30|[0x800042f8]<br>0xBFFFFFFFFFE00000|- rs1 : x19<br> - rs2 : x4<br> - rd : x2<br> - rs2_val == -2199023255553<br> - rs1_val == 2097152<br>                                                                                                             |[0x800005e8]:mul sp, s3, tp<br> [0x800005ec]:sd sp, 88(t1)<br>     |
|  31|[0x80004300]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x13<br> - rd : x0<br> - rs2_val == 562949953421312<br> - rs1_val == 4194304<br>                                                                                                           |[0x800005fc]:mul zero, s5, a3<br> [0x80000600]:sd zero, 96(t1)<br> |
|  32|[0x80004308]<br>0x0000100000000000|- rs1 : x29<br> - rs2 : x14<br> - rd : x8<br> - rs1_val == 8388608<br>                                                                                                                                            |[0x8000060c]:mul fp, t4, a4<br> [0x80000610]:sd fp, 104(t1)<br>    |
|  33|[0x80004310]<br>0x0004000000000000|- rs2_val == 67108864<br> - rs1_val == 16777216<br>                                                                                                                                                               |[0x8000061c]:mul a2, a0, a1<br> [0x80000620]:sd a2, 112(t1)<br>    |
|  34|[0x80004318]<br>0x0000000000000000|- rs2_val == 4398046511104<br> - rs1_val == 33554432<br>                                                                                                                                                          |[0x80000630]:mul a2, a0, a1<br> [0x80000634]:sd a2, 120(t1)<br>    |
|  35|[0x80004320]<br>0xFFFFFFFFFC000000|- rs2_val == -549755813889<br> - rs1_val == 67108864<br>                                                                                                                                                          |[0x80000648]:mul a2, a0, a1<br> [0x8000064c]:sd a2, 128(t1)<br>    |
|  36|[0x80004328]<br>0xFFFFFFFFF8000000|- rs1_val == 134217728<br>                                                                                                                                                                                        |[0x80000660]:mul a2, a0, a1<br> [0x80000664]:sd a2, 136(t1)<br>    |
|  37|[0x80004330]<br>0xFFFFFFFFD0000000|- rs2_val == -3<br> - rs1_val == 268435456<br>                                                                                                                                                                    |[0x80000670]:mul a2, a0, a1<br> [0x80000674]:sd a2, 144(t1)<br>    |
|  38|[0x80004338]<br>0xFFFFFFFFE0000000|- rs1_val == 536870912<br>                                                                                                                                                                                        |[0x80000688]:mul a2, a0, a1<br> [0x8000068c]:sd a2, 152(t1)<br>    |
|  39|[0x80004340]<br>0xBFFFFFFFC0000000|- rs2_val == -4294967297<br> - rs1_val == 1073741824<br>                                                                                                                                                          |[0x800006a0]:mul a2, a0, a1<br> [0x800006a4]:sd a2, 160(t1)<br>    |
|  40|[0x80004348]<br>0x8000000000000000|- rs2_val == 4294967296<br> - rs1_val == 2147483648<br>                                                                                                                                                           |[0x800006b8]:mul a2, a0, a1<br> [0x800006bc]:sd a2, 168(t1)<br>    |
|  41|[0x80004350]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                                                                       |[0x800006d0]:mul a2, a0, a1<br> [0x800006d4]:sd a2, 176(t1)<br>    |
|  42|[0x80004358]<br>0x0000000000000000|- rs2_val == 144115188075855872<br> - rs1_val == 8589934592<br>                                                                                                                                                   |[0x800006e8]:mul a2, a0, a1<br> [0x800006ec]:sd a2, 184(t1)<br>    |
|  43|[0x80004360]<br>0xFFFFFFBC00000000|- rs2_val == -17<br> - rs1_val == 17179869184<br>                                                                                                                                                                 |[0x800006fc]:mul a2, a0, a1<br> [0x80000700]:sd a2, 192(t1)<br>    |
|  44|[0x80004368]<br>0xEFFFFFF800000000|- rs2_val == -33554433<br> - rs1_val == 34359738368<br>                                                                                                                                                           |[0x80000714]:mul a2, a0, a1<br> [0x80000718]:sd a2, 200(t1)<br>    |
|  45|[0x80004370]<br>0xFFFFFFF000000000|- rs2_val == -34359738369<br> - rs1_val == 68719476736<br>                                                                                                                                                        |[0x80000730]:mul a2, a0, a1<br> [0x80000734]:sd a2, 208(t1)<br>    |
|  46|[0x80004378]<br>0x0100000000000000|- rs2_val == 524288<br> - rs1_val == 137438953472<br>                                                                                                                                                             |[0x80000744]:mul a2, a0, a1<br> [0x80000748]:sd a2, 216(t1)<br>    |
|  47|[0x80004380]<br>0xFFFFFF8000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                     |[0x80000758]:mul a2, a0, a1<br> [0x8000075c]:sd a2, 224(t1)<br>    |
|  48|[0x80004388]<br>0x0000000000000000|- rs2_val == 72057594037927936<br> - rs1_val == 549755813888<br>                                                                                                                                                  |[0x80000770]:mul a2, a0, a1<br> [0x80000774]:sd a2, 232(t1)<br>    |
|  49|[0x80004390]<br>0xFFFF7F0000000000|- rs2_val == -129<br> - rs1_val == 1099511627776<br>                                                                                                                                                              |[0x80000784]:mul a2, a0, a1<br> [0x80000788]:sd a2, 240(t1)<br>    |
|  50|[0x80004398]<br>0xFFFFFE0000000000|- rs2_val == -68719476737<br> - rs1_val == 2199023255552<br>                                                                                                                                                      |[0x800007a0]:mul a2, a0, a1<br> [0x800007a4]:sd a2, 248(t1)<br>    |
|  51|[0x800043a0]<br>0x0200000000000000|- rs2_val == 32768<br> - rs1_val == 4398046511104<br>                                                                                                                                                             |[0x800007b4]:mul a2, a0, a1<br> [0x800007b8]:sd a2, 256(t1)<br>    |
|  52|[0x800043a8]<br>0xFBFFF80000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                                    |[0x800007cc]:mul a2, a0, a1<br> [0x800007d0]:sd a2, 264(t1)<br>    |
|  53|[0x800043b0]<br>0x0200000000000000|- rs2_val == 8192<br> - rs1_val == 17592186044416<br>                                                                                                                                                             |[0x800007e0]:mul a2, a0, a1<br> [0x800007e4]:sd a2, 272(t1)<br>    |
|  54|[0x800043b8]<br>0x0040000000000000|- rs2_val == 512<br> - rs1_val == 35184372088832<br>                                                                                                                                                              |[0x800007f4]:mul a2, a0, a1<br> [0x800007f8]:sd a2, 280(t1)<br>    |
|  55|[0x800043c0]<br>0xFFFFC00000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                                   |[0x8000080c]:mul a2, a0, a1<br> [0x80000810]:sd a2, 288(t1)<br>    |
|  56|[0x800043c8]<br>0xFFFF800000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                                  |[0x80000824]:mul a2, a0, a1<br> [0x80000828]:sd a2, 296(t1)<br>    |
|  57|[0x800043d0]<br>0xFFFF000000000000|- rs2_val == -268435457<br> - rs1_val == 281474976710656<br>                                                                                                                                                      |[0x8000083c]:mul a2, a0, a1<br> [0x80000840]:sd a2, 304(t1)<br>    |
|  58|[0x800043d8]<br>0x0000000000000000|- rs2_val == 18014398509481984<br> - rs1_val == 562949953421312<br>                                                                                                                                               |[0x80000854]:mul a2, a0, a1<br> [0x80000858]:sd a2, 312(t1)<br>    |
|  59|[0x800043e0]<br>0x0000000000000000|- rs2_val == 68719476736<br> - rs1_val == 1125899906842624<br>                                                                                                                                                    |[0x8000086c]:mul a2, a0, a1<br> [0x80000870]:sd a2, 320(t1)<br>    |
|  60|[0x800043e8]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                                 |[0x80000884]:mul a2, a0, a1<br> [0x80000888]:sd a2, 328(t1)<br>    |
|  61|[0x800043f0]<br>0x0000000000000000|- rs2_val == 1099511627776<br> - rs1_val == 9007199254740992<br>                                                                                                                                                  |[0x8000089c]:mul a2, a0, a1<br> [0x800008a0]:sd a2, 336(t1)<br>    |
|  62|[0x800043f8]<br>0xFFC0000000000000|- rs2_val == -134217729<br> - rs1_val == 18014398509481984<br>                                                                                                                                                    |[0x800008b4]:mul a2, a0, a1<br> [0x800008b8]:sd a2, 344(t1)<br>    |
|  63|[0x80004400]<br>0x0000000000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 36028797018963968<br>                                                                                                                                           |[0x800008cc]:mul a2, a0, a1<br> [0x800008d0]:sd a2, 352(t1)<br>    |
|  64|[0x80004408]<br>0xFF00000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                                |[0x800008e8]:mul a2, a0, a1<br> [0x800008ec]:sd a2, 360(t1)<br>    |
|  65|[0x80004410]<br>0xFE00000000000000|- rs2_val == -36028797018963969<br> - rs1_val == 144115188075855872<br>                                                                                                                                           |[0x80000904]:mul a2, a0, a1<br> [0x80000908]:sd a2, 368(t1)<br>    |
|  66|[0x80004418]<br>0xFC00000000000000|- rs2_val == -140737488355329<br> - rs1_val == 288230376151711744<br>                                                                                                                                             |[0x80000920]:mul a2, a0, a1<br> [0x80000924]:sd a2, 376(t1)<br>    |
|  67|[0x80004420]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                               |[0x80000938]:mul a2, a0, a1<br> [0x8000093c]:sd a2, 384(t1)<br>    |
|  68|[0x80004428]<br>0xF000000000000000|- rs2_val == -33<br> - rs1_val == 1152921504606846976<br>                                                                                                                                                         |[0x8000094c]:mul a2, a0, a1<br> [0x80000950]:sd a2, 392(t1)<br>    |
|  69|[0x80004430]<br>0x0000000000000000|- rs2_val == 34359738368<br> - rs1_val == 2305843009213693952<br>                                                                                                                                                 |[0x80000964]:mul a2, a0, a1<br> [0x80000968]:sd a2, 400(t1)<br>    |
|  70|[0x80004438]<br>0xC000000000000000|- rs2_val == -2049<br> - rs1_val == 4611686018427387904<br>                                                                                                                                                       |[0x8000097c]:mul a2, a0, a1<br> [0x80000980]:sd a2, 408(t1)<br>    |
|  71|[0x80004440]<br>0xF800000000000000|- rs2_val == 288230376151711744<br> - rs1_val == -2<br>                                                                                                                                                           |[0x80000990]:mul a2, a0, a1<br> [0x80000994]:sd a2, 416(t1)<br>    |
|  72|[0x80004448]<br>0x00000C0000000003|- rs2_val == -4398046511105<br> - rs1_val == -3<br>                                                                                                                                                               |[0x800009a8]:mul a2, a0, a1<br> [0x800009ac]:sd a2, 424(t1)<br>    |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFD8|- rs1_val == -5<br>                                                                                                                                                                                               |[0x800009b8]:mul a2, a0, a1<br> [0x800009bc]:sd a2, 432(t1)<br>    |
|  74|[0x80004458]<br>0x0000000012000009|- rs1_val == -9<br>                                                                                                                                                                                               |[0x800009cc]:mul a2, a0, a1<br> [0x800009d0]:sd a2, 440(t1)<br>    |
|  75|[0x80004460]<br>0x0000000000004411|- rs2_val == -1025<br> - rs1_val == -17<br>                                                                                                                                                                       |[0x800009dc]:mul a2, a0, a1<br> [0x800009e0]:sd a2, 448(t1)<br>    |
|  76|[0x80004468]<br>0xFFFFFFFBE0000000|- rs1_val == -33<br>                                                                                                                                                                                              |[0x800009ec]:mul a2, a0, a1<br> [0x800009f0]:sd a2, 456(t1)<br>    |
|  77|[0x80004470]<br>0x0000000020800041|- rs1_val == -65<br>                                                                                                                                                                                              |[0x80000a00]:mul a2, a0, a1<br> [0x80000a04]:sd a2, 464(t1)<br>    |
|  78|[0x80004478]<br>0xFFFFFBFC00000000|- rs2_val == 17179869184<br> - rs1_val == -257<br>                                                                                                                                                                |[0x80000a14]:mul a2, a0, a1<br> [0x80000a18]:sd a2, 472(t1)<br>    |
|  79|[0x80004480]<br>0x0001008000000201|- rs1_val == -513<br>                                                                                                                                                                                             |[0x80000a2c]:mul a2, a0, a1<br> [0x80000a30]:sd a2, 480(t1)<br>    |
|  80|[0x80004488]<br>0x1004000000000401|- rs2_val == -1125899906842625<br> - rs1_val == -1025<br>                                                                                                                                                         |[0x80000a44]:mul a2, a0, a1<br> [0x80000a48]:sd a2, 488(t1)<br>    |
|  81|[0x80004490]<br>0xFFFFFFFFFFF00000|- rs2_val == -2251799813685249<br>                                                                                                                                                                                |[0x80000a5c]:mul a2, a0, a1<br> [0x80000a60]:sd a2, 496(t1)<br>    |
|  82|[0x80004498]<br>0xFF9FFFFFFFFFFFFA|- rs2_val == -4503599627370497<br>                                                                                                                                                                                |[0x80000a74]:mul a2, a0, a1<br> [0x80000a78]:sd a2, 504(t1)<br>    |
|  83|[0x800044a0]<br>0xFFE0000000000000|- rs2_val == -9007199254740993<br>                                                                                                                                                                                |[0x80000a90]:mul a2, a0, a1<br> [0x80000a94]:sd a2, 512(t1)<br>    |
|  84|[0x800044a8]<br>0x0040000000200001|- rs2_val == -18014398509481985<br>                                                                                                                                                                               |[0x80000aac]:mul a2, a0, a1<br> [0x80000ab0]:sd a2, 520(t1)<br>    |
|  85|[0x800044b0]<br>0xFFFFFFFFFE000000|- rs2_val == -144115188075855873<br>                                                                                                                                                                              |[0x80000ac4]:mul a2, a0, a1<br> [0x80000ac8]:sd a2, 528(t1)<br>    |
|  86|[0x800044b8]<br>0x0800000000008001|- rs2_val == -576460752303423489<br> - rs1_val == -32769<br>                                                                                                                                                      |[0x80000ae0]:mul a2, a0, a1<br> [0x80000ae4]:sd a2, 536(t1)<br>    |
|  87|[0x800044c0]<br>0xFFFFFFFC00000000|- rs2_val == -1152921504606846977<br>                                                                                                                                                                             |[0x80000afc]:mul a2, a0, a1<br> [0x80000b00]:sd a2, 544(t1)<br>    |
|  88|[0x800044c8]<br>0xA000000000000005|- rs2_val == -2305843009213693953<br>                                                                                                                                                                             |[0x80000b14]:mul a2, a0, a1<br> [0x80000b18]:sd a2, 552(t1)<br>    |
|  89|[0x800044d0]<br>0xC000000000000003|- rs2_val == -4611686018427387905<br>                                                                                                                                                                             |[0x80000b2c]:mul a2, a0, a1<br> [0x80000b30]:sd a2, 560(t1)<br>    |
|  90|[0x800044d8]<br>0x000000000AAAAAAB|- rs2_val == 6148914691236517205<br> - rs1_val == -536870913<br>                                                                                                                                                  |[0x80000b5c]:mul a2, a0, a1<br> [0x80000b60]:sd a2, 568(t1)<br>    |
|  91|[0x800044e0]<br>0x5555555555500000|- rs2_val == -6148914691236517206<br>                                                                                                                                                                             |[0x80000b88]:mul a2, a0, a1<br> [0x80000b8c]:sd a2, 576(t1)<br>    |
|  92|[0x800044e8]<br>0xF800000000000000|- rs2_val == 576460752303423488<br> - rs1_val == -2049<br>                                                                                                                                                        |[0x80000ba0]:mul a2, a0, a1<br> [0x80000ba4]:sd a2, 584(t1)<br>    |
|  93|[0x800044f0]<br>0x4000000000000000|- rs1_val == -8193<br>                                                                                                                                                                                            |[0x80000bb8]:mul a2, a0, a1<br> [0x80000bbc]:sd a2, 592(t1)<br>    |
|  94|[0x800044f8]<br>0x0020000000004001|- rs1_val == -16385<br>                                                                                                                                                                                           |[0x80000bd4]:mul a2, a0, a1<br> [0x80000bd8]:sd a2, 600(t1)<br>    |
|  95|[0x80004500]<br>0xFFFFFFFFFF7FFFC0|- rs2_val == 64<br>                                                                                                                                                                                               |[0x80000be8]:mul a2, a0, a1<br> [0x80000bec]:sd a2, 608(t1)<br>    |
|  96|[0x80004508]<br>0x000000000028000A|- rs1_val == -262145<br>                                                                                                                                                                                          |[0x80000bfc]:mul a2, a0, a1<br> [0x80000c00]:sd a2, 616(t1)<br>    |
|  97|[0x80004510]<br>0xFFFFFFFFFFD7FFFB|- rs1_val == -524289<br>                                                                                                                                                                                          |[0x80000c10]:mul a2, a0, a1<br> [0x80000c14]:sd a2, 624(t1)<br>    |
|  98|[0x80004518]<br>0x4000040000100001|- rs1_val == -1048577<br>                                                                                                                                                                                         |[0x80000c2c]:mul a2, a0, a1<br> [0x80000c30]:sd a2, 632(t1)<br>    |
|  99|[0x80004520]<br>0x0000000000C00003|- rs1_val == -4194305<br>                                                                                                                                                                                         |[0x80000c40]:mul a2, a0, a1<br> [0x80000c44]:sd a2, 640(t1)<br>    |
| 100|[0x80004528]<br>0x0200000400800001|- rs2_val == -17179869185<br> - rs1_val == -8388609<br>                                                                                                                                                           |[0x80000c5c]:mul a2, a0, a1<br> [0x80000c60]:sd a2, 648(t1)<br>    |
| 101|[0x80004530]<br>0xFFFEFFFFFF000000|- rs2_val == 16777216<br> - rs1_val == -16777217<br>                                                                                                                                                              |[0x80000c70]:mul a2, a0, a1<br> [0x80000c74]:sd a2, 656(t1)<br>    |
| 102|[0x80004538]<br>0xFFFFFFFFDFFFFFF0|- rs2_val == 16<br> - rs1_val == -33554433<br>                                                                                                                                                                    |[0x80000c84]:mul a2, a0, a1<br> [0x80000c88]:sd a2, 664(t1)<br>    |
| 103|[0x80004540]<br>0xFFC0000000000000|- rs1_val == -67108865<br>                                                                                                                                                                                        |[0x80000c9c]:mul a2, a0, a1<br> [0x80000ca0]:sd a2, 672(t1)<br>    |
| 104|[0x80004548]<br>0x0000100008020001|- rs1_val == -134217729<br>                                                                                                                                                                                       |[0x80000cb4]:mul a2, a0, a1<br> [0x80000cb8]:sd a2, 680(t1)<br>    |
| 105|[0x80004550]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                       |[0x80000cc8]:mul a2, a0, a1<br> [0x80000ccc]:sd a2, 688(t1)<br>    |
| 106|[0x80004558]<br>0xFBFFFFFFF0000000|- rs2_val == 268435456<br> - rs1_val == -1073741825<br>                                                                                                                                                           |[0x80000cdc]:mul a2, a0, a1<br> [0x80000ce0]:sd a2, 696(t1)<br>    |
| 107|[0x80004560]<br>0xFFF8000000000000|- rs2_val == 2251799813685248<br> - rs1_val == -2147483649<br>                                                                                                                                                    |[0x80000cf8]:mul a2, a0, a1<br> [0x80000cfc]:sd a2, 704(t1)<br>    |
| 108|[0x80004568]<br>0x0000000300000001|- rs2_val == -8589934593<br> - rs1_val == -4294967297<br>                                                                                                                                                         |[0x80000d18]:mul a2, a0, a1<br> [0x80000d1c]:sd a2, 712(t1)<br>    |
| 109|[0x80004570]<br>0x0000000400000001|- rs1_val == -8589934593<br>                                                                                                                                                                                      |[0x80000d38]:mul a2, a0, a1<br> [0x80000d3c]:sd a2, 720(t1)<br>    |
| 110|[0x80004578]<br>0xFFFF000000000000|- rs1_val == -17179869185<br>                                                                                                                                                                                     |[0x80000d54]:mul a2, a0, a1<br> [0x80000d58]:sd a2, 728(t1)<br>    |
| 111|[0x80004580]<br>0x0000004800000009|- rs2_val == -9<br> - rs1_val == -34359738369<br>                                                                                                                                                                 |[0x80000d6c]:mul a2, a0, a1<br> [0x80000d70]:sd a2, 736(t1)<br>    |
| 112|[0x80004588]<br>0x0200001000200001|- rs2_val == -2097153<br> - rs1_val == -68719476737<br>                                                                                                                                                           |[0x80000d88]:mul a2, a0, a1<br> [0x80000d8c]:sd a2, 744(t1)<br>    |
| 113|[0x80004590]<br>0x0000002000000001|- rs1_val == -137438953473<br>                                                                                                                                                                                    |[0x80000da0]:mul a2, a0, a1<br> [0x80000da4]:sd a2, 752(t1)<br>    |
| 114|[0x80004598]<br>0x0000014000000005|- rs2_val == -5<br> - rs1_val == -274877906945<br>                                                                                                                                                                |[0x80000db8]:mul a2, a0, a1<br> [0x80000dbc]:sd a2, 760(t1)<br>    |
| 115|[0x800045a0]<br>0x0001008000000201|- rs1_val == -549755813889<br>                                                                                                                                                                                    |[0x80000dd0]:mul a2, a0, a1<br> [0x80000dd4]:sd a2, 768(t1)<br>    |
| 116|[0x800045a8]<br>0x4000010000400001|- rs2_val == -4194305<br> - rs1_val == -1099511627777<br>                                                                                                                                                         |[0x80000dec]:mul a2, a0, a1<br> [0x80000df0]:sd a2, 776(t1)<br>    |
| 117|[0x800045b0]<br>0x00000C0000000006|- rs1_val == -2199023255553<br>                                                                                                                                                                                   |[0x80000e04]:mul a2, a0, a1<br> [0x80000e08]:sd a2, 784(t1)<br>    |
| 118|[0x800045b8]<br>0x0000040001000001|- rs1_val == -4398046511105<br>                                                                                                                                                                                   |[0x80000e20]:mul a2, a0, a1<br> [0x80000e24]:sd a2, 792(t1)<br>    |
| 119|[0x800045c0]<br>0x0040080000000801|- rs1_val == -8796093022209<br>                                                                                                                                                                                   |[0x80000e3c]:mul a2, a0, a1<br> [0x80000e40]:sd a2, 800(t1)<br>    |
| 120|[0x800045c8]<br>0xFFFFFFFF00000000|- rs1_val == -17592186044417<br>                                                                                                                                                                                  |[0x80000e58]:mul a2, a0, a1<br> [0x80000e5c]:sd a2, 808(t1)<br>    |
| 121|[0x800045d0]<br>0x0000200200000001|- rs1_val == -35184372088833<br>                                                                                                                                                                                  |[0x80000e78]:mul a2, a0, a1<br> [0x80000e7c]:sd a2, 816(t1)<br>    |
| 122|[0x800045d8]<br>0x0010400000000041|- rs2_val == -65<br> - rs1_val == -70368744177665<br>                                                                                                                                                             |[0x80000e90]:mul a2, a0, a1<br> [0x80000e94]:sd a2, 824(t1)<br>    |
| 123|[0x800045e0]<br>0xFFE0000000000000|- rs2_val == 9007199254740992<br> - rs1_val == -140737488355329<br>                                                                                                                                               |[0x80000eac]:mul a2, a0, a1<br> [0x80000eb0]:sd a2, 832(t1)<br>    |
| 124|[0x800045e8]<br>0x0001008000000001|- rs1_val == -281474976710657<br>                                                                                                                                                                                 |[0x80000ecc]:mul a2, a0, a1<br> [0x80000ed0]:sd a2, 840(t1)<br>    |
| 125|[0x800045f0]<br>0x0001555555555556|- rs1_val == -562949953421313<br>                                                                                                                                                                                 |[0x80000f00]:mul a2, a0, a1<br> [0x80000f04]:sd a2, 848(t1)<br>    |
| 126|[0x800045f8]<br>0x0108000000000001|- rs1_val == -2251799813685249<br>                                                                                                                                                                                |[0x80000f20]:mul a2, a0, a1<br> [0x80000f24]:sd a2, 856(t1)<br>    |
| 127|[0x80004600]<br>0x8000000000000000|- rs1_val == -4503599627370497<br>                                                                                                                                                                                |[0x80000f3c]:mul a2, a0, a1<br> [0x80000f40]:sd a2, 864(t1)<br>    |
| 128|[0x80004608]<br>0x0020400000000001|- rs2_val == -70368744177665<br> - rs1_val == -9007199254740993<br>                                                                                                                                               |[0x80000f5c]:mul a2, a0, a1<br> [0x80000f60]:sd a2, 872(t1)<br>    |
| 129|[0x80004610]<br>0x0041000000000001|- rs2_val == -281474976710657<br> - rs1_val == -18014398509481985<br>                                                                                                                                             |[0x80000f7c]:mul a2, a0, a1<br> [0x80000f80]:sd a2, 880(t1)<br>    |
| 130|[0x80004618]<br>0x2002000000000001|- rs2_val == -562949953421313<br> - rs1_val == -2305843009213693953<br>                                                                                                                                           |[0x80000f9c]:mul a2, a0, a1<br> [0x80000fa0]:sd a2, 888(t1)<br>    |
| 131|[0x80004620]<br>0xFFFFFFFFFFFFF000|- rs2_val == 4096<br> - rs1_val == -36028797018963969<br>                                                                                                                                                         |[0x80000fb4]:mul a2, a0, a1<br> [0x80000fb8]:sd a2, 896(t1)<br>    |
| 132|[0x80004628]<br>0xFFC0000000000000|- rs1_val == -72057594037927937<br>                                                                                                                                                                               |[0x80000fd0]:mul a2, a0, a1<br> [0x80000fd4]:sd a2, 904(t1)<br>    |
| 133|[0x80004630]<br>0x0600000000000001|- rs1_val == -144115188075855873<br>                                                                                                                                                                              |[0x80000ff0]:mul a2, a0, a1<br> [0x80000ff4]:sd a2, 912(t1)<br>    |
| 134|[0x80004638]<br>0xFFF8000000000000|- rs1_val == -288230376151711745<br>                                                                                                                                                                              |[0x8000100c]:mul a2, a0, a1<br> [0x80001010]:sd a2, 920(t1)<br>    |
| 135|[0x80004640]<br>0x0800080000000001|- rs1_val == -576460752303423489<br>                                                                                                                                                                              |[0x8000102c]:mul a2, a0, a1<br> [0x80001030]:sd a2, 928(t1)<br>    |
| 136|[0x80004648]<br>0xFFFFFFFFFFFFFF00|- rs2_val == 256<br> - rs1_val == -1152921504606846977<br>                                                                                                                                                        |[0x80001044]:mul a2, a0, a1<br> [0x80001048]:sd a2, 936(t1)<br>    |
| 137|[0x80004650]<br>0x800000000000000A|- rs1_val == -4611686018427387905<br>                                                                                                                                                                             |[0x8000105c]:mul a2, a0, a1<br> [0x80001060]:sd a2, 944(t1)<br>    |
| 138|[0x80004658]<br>0x000000000AAAAAAB|- rs2_val == -536870913<br> - rs1_val == 6148914691236517205<br>                                                                                                                                                  |[0x8000108c]:mul a2, a0, a1<br> [0x80001090]:sd a2, 952(t1)<br>    |
| 139|[0x80004660]<br>0xAAAAAAAAAAAAA800|- rs2_val == 1024<br> - rs1_val == -6148914691236517206<br>                                                                                                                                                       |[0x800010b8]:mul a2, a0, a1<br> [0x800010bc]:sd a2, 960(t1)<br>    |
| 140|[0x80004668]<br>0x0000000000040000|- rs2_val == 2<br>                                                                                                                                                                                                |[0x800010c8]:mul a2, a0, a1<br> [0x800010cc]:sd a2, 968(t1)<br>    |
| 141|[0x80004670]<br>0x0002000000000000|- rs2_val == 4<br>                                                                                                                                                                                                |[0x800010dc]:mul a2, a0, a1<br> [0x800010e0]:sd a2, 976(t1)<br>    |
| 142|[0x80004678]<br>0xFFFFFFFFFFFFFF00|- rs2_val == 32<br>                                                                                                                                                                                               |[0x800010ec]:mul a2, a0, a1<br> [0x800010f0]:sd a2, 984(t1)<br>    |
| 143|[0x80004680]<br>0x0000000000004000|- rs2_val == 128<br>                                                                                                                                                                                              |[0x800010fc]:mul a2, a0, a1<br> [0x80001100]:sd a2, 992(t1)<br>    |
| 144|[0x80004688]<br>0x0000000400000000|- rs2_val == 2048<br>                                                                                                                                                                                             |[0x80001110]:mul a2, a0, a1<br> [0x80001114]:sd a2, 1000(t1)<br>   |
| 145|[0x80004690]<br>0x0000000000000000|- rs2_val == 131072<br>                                                                                                                                                                                           |[0x80001124]:mul a2, a0, a1<br> [0x80001128]:sd a2, 1008(t1)<br>   |
| 146|[0x80004698]<br>0xFFFFFBFFFFFC0000|- rs2_val == 262144<br>                                                                                                                                                                                           |[0x80001138]:mul a2, a0, a1<br> [0x8000113c]:sd a2, 1016(t1)<br>   |
| 147|[0x800046a0]<br>0x0000000000100000|- rs2_val == 1048576<br>                                                                                                                                                                                          |[0x80001148]:mul a2, a0, a1<br> [0x8000114c]:sd a2, 1024(t1)<br>   |
| 148|[0x800046a8]<br>0xFFFFFFFFFFC00000|- rs2_val == 4194304<br>                                                                                                                                                                                          |[0x80001160]:mul a2, a0, a1<br> [0x80001164]:sd a2, 1032(t1)<br>   |
| 149|[0x800046b0]<br>0xFFFFFFFDFF800000|- rs2_val == 8388608<br>                                                                                                                                                                                          |[0x80001170]:mul a2, a0, a1<br> [0x80001174]:sd a2, 1040(t1)<br>   |
| 150|[0x800046b8]<br>0x0000000000000000|- rs2_val == 134217728<br>                                                                                                                                                                                        |[0x80001184]:mul a2, a0, a1<br> [0x80001188]:sd a2, 1048(t1)<br>   |
| 151|[0x800046c0]<br>0xFFEC000000000000|- rs2_val == 1125899906842624<br>                                                                                                                                                                                 |[0x80001198]:mul a2, a0, a1<br> [0x8000119c]:sd a2, 1056(t1)<br>   |
| 152|[0x800046c8]<br>0x0000000000000000|- rs2_val == 36028797018963968<br>                                                                                                                                                                                |[0x800011b0]:mul a2, a0, a1<br> [0x800011b4]:sd a2, 1064(t1)<br>   |
| 153|[0x800046d0]<br>0xF000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                                                                              |[0x800011cc]:mul a2, a0, a1<br> [0x800011d0]:sd a2, 1072(t1)<br>   |
| 154|[0x800046d8]<br>0x0000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                                                                              |[0x800011e0]:mul a2, a0, a1<br> [0x800011e4]:sd a2, 1080(t1)<br>   |
| 155|[0x800046e0]<br>0xBFC0000000000000|- rs2_val == -257<br>                                                                                                                                                                                             |[0x800011f4]:mul a2, a0, a1<br> [0x800011f8]:sd a2, 1088(t1)<br>   |
| 156|[0x800046e8]<br>0x0000000080042001|- rs2_val == -8193<br>                                                                                                                                                                                            |[0x8000120c]:mul a2, a0, a1<br> [0x80001210]:sd a2, 1096(t1)<br>   |
| 157|[0x800046f0]<br>0x0000010004004001|- rs2_val == -16385<br>                                                                                                                                                                                           |[0x80001224]:mul a2, a0, a1<br> [0x80001228]:sd a2, 1104(t1)<br>   |
| 158|[0x800046f8]<br>0xFFE0000000000000|- rs2_val == -65537<br>                                                                                                                                                                                           |[0x8000123c]:mul a2, a0, a1<br> [0x80001240]:sd a2, 1112(t1)<br>   |
| 159|[0x80004700]<br>0x4000100000040001|- rs2_val == -262145<br>                                                                                                                                                                                          |[0x80001258]:mul a2, a0, a1<br> [0x8000125c]:sd a2, 1120(t1)<br>   |
| 160|[0x80004708]<br>0xFFFF7FFFF0000000|- rs2_val == -524289<br>                                                                                                                                                                                          |[0x8000126c]:mul a2, a0, a1<br> [0x80001270]:sd a2, 1128(t1)<br>   |
| 161|[0x80004710]<br>0xFFFFFFFF7FFFF800|- rs2_val == -1048577<br>                                                                                                                                                                                         |[0x80001284]:mul a2, a0, a1<br> [0x80001288]:sd a2, 1136(t1)<br>   |
| 162|[0x80004718]<br>0xE000000000000000|- rs2_val == -67108865<br>                                                                                                                                                                                        |[0x8000129c]:mul a2, a0, a1<br> [0x800012a0]:sd a2, 1144(t1)<br>   |
| 163|[0x80004720]<br>0x0000104000000001|- rs2_val == -17592186044417<br>                                                                                                                                                                                  |[0x800012bc]:mul a2, a0, a1<br> [0x800012c0]:sd a2, 1152(t1)<br>   |
| 164|[0x80004728]<br>0xFFFFFFFFC0000000|- rs2_val == 1073741824<br>                                                                                                                                                                                       |[0x800012d4]:mul a2, a0, a1<br> [0x800012d8]:sd a2, 1160(t1)<br>   |
| 165|[0x80004730]<br>0x0004000040100001|- rs2_val == -1073741825<br>                                                                                                                                                                                      |[0x800012ec]:mul a2, a0, a1<br> [0x800012f0]:sd a2, 1168(t1)<br>   |
| 166|[0x80004738]<br>0xFFBFFFFF80000000|- rs2_val == 2147483648<br>                                                                                                                                                                                       |[0x80001304]:mul a2, a0, a1<br> [0x80001308]:sd a2, 1176(t1)<br>   |
| 167|[0x80004740]<br>0x0040000080800001|- rs2_val == -2147483649<br>                                                                                                                                                                                      |[0x80001320]:mul a2, a0, a1<br> [0x80001324]:sd a2, 1184(t1)<br>   |
| 168|[0x80004748]<br>0xFFFFE00000000000|- rs2_val == 35184372088832<br> - rs1_val == -1125899906842625<br>                                                                                                                                                |[0x8000133c]:mul a2, a0, a1<br> [0x80001340]:sd a2, 1192(t1)<br>   |
| 169|[0x80004750]<br>0xFFFFFFFE00000000|- rs2_val == 8589934592<br>                                                                                                                                                                                       |[0x80001358]:mul a2, a0, a1<br> [0x8000135c]:sd a2, 1200(t1)<br>   |
| 170|[0x80004758]<br>0xFFFFFFE000000000|- rs2_val == 137438953472<br>                                                                                                                                                                                     |[0x80001374]:mul a2, a0, a1<br> [0x80001378]:sd a2, 1208(t1)<br>   |
| 171|[0x80004760]<br>0xFFFC000000000000|- rs2_val == -137438953473<br>                                                                                                                                                                                    |[0x80001390]:mul a2, a0, a1<br> [0x80001394]:sd a2, 1216(t1)<br>   |
| 172|[0x80004768]<br>0xFFFFFFFC00000000|- rs2_val == -274877906945<br>                                                                                                                                                                                    |[0x800013ac]:mul a2, a0, a1<br> [0x800013b0]:sd a2, 1224(t1)<br>   |
| 173|[0x80004770]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                                                                                     |[0x800013c0]:mul a2, a0, a1<br> [0x800013c4]:sd a2, 1232(t1)<br>   |
| 174|[0x80004778]<br>0x0000060000000006|- rs2_val == -1099511627777<br>                                                                                                                                                                                   |[0x800013d8]:mul a2, a0, a1<br> [0x800013dc]:sd a2, 1240(t1)<br>   |
| 175|[0x80004780]<br>0xFFFFFE0000000000|- rs2_val == 2199023255552<br>                                                                                                                                                                                    |[0x800013f4]:mul a2, a0, a1<br> [0x800013f8]:sd a2, 1248(t1)<br>   |
| 176|[0x80004788]<br>0xFFFFF80000000000|- rs2_val == 8796093022208<br>                                                                                                                                                                                    |[0x80001410]:mul a2, a0, a1<br> [0x80001414]:sd a2, 1256(t1)<br>   |
| 177|[0x80004790]<br>0x0010000000000000|- rs2_val == 17592186044416<br>                                                                                                                                                                                   |[0x80001424]:mul a2, a0, a1<br> [0x80001428]:sd a2, 1264(t1)<br>   |
| 178|[0x80004798]<br>0x0100200000000801|- rs2_val == -35184372088833<br>                                                                                                                                                                                  |[0x80001440]:mul a2, a0, a1<br> [0x80001444]:sd a2, 1272(t1)<br>   |
| 179|[0x800047a0]<br>0xFFFFC00000000000|- rs2_val == 70368744177664<br>                                                                                                                                                                                   |[0x80001458]:mul a2, a0, a1<br> [0x8000145c]:sd a2, 1280(t1)<br>   |
| 180|[0x800047a8]<br>0x0000000000000000|- rs2_val == 140737488355328<br>                                                                                                                                                                                  |[0x80001470]:mul a2, a0, a1<br> [0x80001474]:sd a2, 1288(t1)<br>   |
| 181|[0x800047b8]<br>0x8000000000000000|- rs1_val == -65537<br>                                                                                                                                                                                           |[0x800014a0]:mul a2, a0, a1<br> [0x800014a4]:sd a2, 1304(t1)<br>   |
| 182|[0x800047c0]<br>0xFBFFFFFFFFFFFFFC|- rs1_val == 4<br>                                                                                                                                                                                                |[0x800014b8]:mul a2, a0, a1<br> [0x800014bc]:sd a2, 1312(t1)<br>   |
