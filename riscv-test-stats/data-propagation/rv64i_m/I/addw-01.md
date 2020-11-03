
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001500')]      |
| SIG_REGION                | [('0x80004204', '0x800047f0', '189 dwords')]      |
| COV_LABELS                | addw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addw-01.S/addw-01.S    |
| Total Number of coverpoints| 374     |
| Total Signature Updates   | 188      |
| Total Coverpoints Covered | 374      |
| STAT1                     | 185      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014d4]:addw a2, a0, a1
      [0x800014d8]:sd a2, 1320(ra)
 -- Signature Address: 0x800047d8 Data: 0xFFFFFFFFF8000000
 -- Redundant Coverpoints hit by the op
      - opcode : addw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs2_val == -134217729




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014e8]:addw a2, a0, a1
      [0x800014ec]:sd a2, 1328(ra)
 -- Signature Address: 0x800047e0 Data: 0x0000000000000400
 -- Redundant Coverpoints hit by the op
      - opcode : addw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1152921504606846976
      - rs1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014f8]:addw a2, a0, a1
      [0x800014fc]:sd a2, 1336(ra)
 -- Signature Address: 0x800047e8 Data: 0x000000000001FEFF
 -- Redundant Coverpoints hit by the op
      - opcode : addw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -257
      - rs1_val == 131072






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

|s.no|            signature             |                                                                                              coverpoints                                                                                               |                                code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000020|- opcode : addw<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 16<br> - rs1_val == 16<br>               |[0x800003a4]:addw ra, ra, ra<br> [0x800003a8]:sd ra, 0(t0)<br>      |
|   2|[0x80004218]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x0<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                                                |[0x800003bc]:addw fp, fp, zero<br> [0x800003c0]:sd fp, 8(t0)<br>    |
|   3|[0x80004220]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x31<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>  |[0x800003d4]:addw a2, t6, a2<br> [0x800003d8]:sd a2, 16(t0)<br>     |
|   4|[0x80004228]<br>0xFFFFFFFFEFFFFFFE|- rs1 : x14<br> - rs2 : x14<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == -134217729<br> - rs1_val == -134217729<br>                                         |[0x800003e8]:addw s4, a4, a4<br> [0x800003ec]:sd s4, 24(t0)<br>     |
|   5|[0x80004230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x3<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -1152921504606846977<br> |[0x80000404]:addw a4, s4, gp<br> [0x80000408]:sd a4, 32(t0)<br>     |
|   6|[0x80004238]<br>0x0000000000080000|- rs1 : x21<br> - rs2 : x23<br> - rd : x24<br> - rs1_val == 524288<br>                                                                                                                                  |[0x80000414]:addw s8, s5, s7<br> [0x80000418]:sd s8, 40(t0)<br>     |
|   7|[0x80004240]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x16<br> - rd : x3<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 1125899906842624<br>                                                   |[0x80000430]:addw gp, a3, a6<br> [0x80000434]:sd gp, 48(t0)<br>     |
|   8|[0x80004248]<br>0xFFFFFFFFF8000000|- rs1 : x12<br> - rs2 : x28<br> - rd : x11<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br>                                                                                                     |[0x80000444]:addw a1, a2, t3<br> [0x80000448]:sd a1, 56(t0)<br>     |
|   9|[0x80004250]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x7<br> - rs2 : x25<br> - rd : x30<br> - rs2_val == -18014398509481985<br> - rs1_val == -18014398509481985<br>                                                                                   |[0x80000464]:addw t5, t2, s9<br> [0x80000468]:sd t5, 64(t0)<br>     |
|  10|[0x80004258]<br>0x0000000000000007|- rs1 : x16<br> - rs2 : x31<br> - rd : x13<br> - rs1_val == 2<br>                                                                                                                                       |[0x80000474]:addw a3, a6, t6<br> [0x80000478]:sd a3, 72(t0)<br>     |
|  11|[0x80004260]<br>0x0000000000000007|- rs1 : x17<br> - rs2 : x11<br> - rd : x18<br> - rs1_val == 4<br>                                                                                                                                       |[0x80000484]:addw s2, a7, a1<br> [0x80000488]:sd s2, 80(t0)<br>     |
|  12|[0x80004268]<br>0x000000005555555D|- rs1 : x9<br> - rs2 : x20<br> - rd : x21<br> - rs2_val == 6148914691236517205<br> - rs1_val == 8<br>                                                                                                   |[0x800004b0]:addw s5, s1, s4<br> [0x800004b4]:sd s5, 88(t0)<br>     |
|  13|[0x80004270]<br>0x0000000000000090|- rs1 : x23<br> - rs2 : x9<br> - rd : x4<br> - rs2_val == 128<br>                                                                                                                                       |[0x800004c0]:addw tp, s7, s1<br> [0x800004c4]:sd tp, 96(t0)<br>     |
|  14|[0x80004278]<br>0x000000000000001F|- rs1 : x3<br> - rs2 : x21<br> - rd : x26<br> - rs2_val == -1099511627777<br> - rs1_val == 32<br>                                                                                                       |[0x800004d8]:addw s10, gp, s5<br> [0x800004dc]:sd s10, 104(t0)<br>  |
|  15|[0x80004280]<br>0x0000000000000040|- rs1 : x18<br> - rs2 : x4<br> - rd : x31<br> - rs1_val == 64<br>                                                                                                                                       |[0x800004ec]:addw t6, s2, tp<br> [0x800004f0]:sd t6, 112(t0)<br>    |
|  16|[0x80004288]<br>0x0000000000000080|- rs1 : x19<br> - rs2 : x13<br> - rd : x23<br> - rs2_val == 274877906944<br> - rs1_val == 128<br>                                                                                                       |[0x80000500]:addw s7, s3, a3<br> [0x80000504]:sd s7, 120(t0)<br>    |
|  17|[0x80004290]<br>0xFFFFFFFFFFE000FF|- rs1 : x26<br> - rs2 : x24<br> - rd : x29<br> - rs2_val == -2097153<br> - rs1_val == 256<br>                                                                                                           |[0x80000514]:addw t4, s10, s8<br> [0x80000518]:sd t4, 128(t0)<br>   |
|  18|[0x80004298]<br>0x0000000000000200|- rs1 : x2<br> - rs2 : x29<br> - rd : x9<br> - rs2_val == 137438953472<br> - rs1_val == 512<br>                                                                                                         |[0x80000528]:addw s1, sp, t4<br> [0x8000052c]:sd s1, 136(t0)<br>    |
|  19|[0x800042a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x30<br> - rd : x15<br> - rs2_val == 1152921504606846976<br>                                                                                                                      |[0x8000053c]:addw a5, zero, t5<br> [0x80000540]:sd a5, 144(t0)<br>  |
|  20|[0x800042a8]<br>0x0000000000000800|- rs1 : x4<br> - rs2 : x6<br> - rd : x10<br> - rs1_val == 2048<br>                                                                                                                                      |[0x80000554]:addw a0, tp, t1<br> [0x80000558]:sd a0, 152(t0)<br>    |
|  21|[0x800042b0]<br>0x0000000000801000|- rs1 : x6<br> - rs2 : x18<br> - rd : x27<br> - rs2_val == 8388608<br> - rs1_val == 4096<br>                                                                                                            |[0x8000056c]:addw s11, t1, s2<br> [0x80000570]:sd s11, 0(ra)<br>    |
|  22|[0x800042b8]<br>0x0000000000002000|- rs1 : x5<br> - rs2 : x2<br> - rd : x19<br> - rs2_val == 140737488355328<br> - rs1_val == 8192<br>                                                                                                     |[0x80000580]:addw s3, t0, sp<br> [0x80000584]:sd s3, 8(ra)<br>      |
|  23|[0x800042c0]<br>0x0000000000006000|- rs1 : x15<br> - rs2 : x8<br> - rd : x6<br> - rs2_val == 8192<br> - rs1_val == 16384<br>                                                                                                               |[0x80000590]:addw t1, a5, fp<br> [0x80000594]:sd t1, 16(ra)<br>     |
|  24|[0x800042c8]<br>0x0000000000008007|- rs1 : x22<br> - rs2 : x27<br> - rd : x2<br> - rs1_val == 32768<br>                                                                                                                                    |[0x800005a0]:addw sp, s6, s11<br> [0x800005a4]:sd sp, 24(ra)<br>    |
|  25|[0x800042d0]<br>0x000000000000FFFF|- rs1 : x28<br> - rs2 : x22<br> - rd : x5<br> - rs2_val == -68719476737<br> - rs1_val == 65536<br>                                                                                                      |[0x800005b8]:addw t0, t3, s6<br> [0x800005bc]:sd t0, 32(ra)<br>     |
|  26|[0x800042d8]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x17<br> - rd : x0<br> - rs2_val == -257<br> - rs1_val == 131072<br>                                                                                                             |[0x800005c8]:addw zero, s9, a7<br> [0x800005cc]:sd zero, 40(ra)<br> |
|  27|[0x800042e0]<br>0x0000000000040000|- rs1 : x11<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 2305843009213693952<br> - rs1_val == 262144<br>                                                                                             |[0x800005dc]:addw t3, a1, s10<br> [0x800005e0]:sd t3, 48(ra)<br>    |
|  28|[0x800042e8]<br>0x0000000000500000|- rs1 : x27<br> - rs2 : x19<br> - rd : x25<br> - rs2_val == 4194304<br> - rs1_val == 1048576<br>                                                                                                        |[0x800005ec]:addw s9, s11, s3<br> [0x800005f0]:sd s9, 56(ra)<br>    |
|  29|[0x800042f0]<br>0x00000000000FFFFF|- rs1 : x10<br> - rs2 : x5<br> - rd : x7<br> - rs2_val == -1048577<br> - rs1_val == 2097152<br>                                                                                                         |[0x80000600]:addw t2, a0, t0<br> [0x80000604]:sd t2, 64(ra)<br>     |
|  30|[0x800042f8]<br>0x0000000000420000|- rs1 : x24<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 131072<br> - rs1_val == 4194304<br>                                                                                                         |[0x80000610]:addw a6, s8, a5<br> [0x80000614]:sd a6, 72(ra)<br>     |
|  31|[0x80004300]<br>0x0000000000800800|- rs1 : x29<br> - rs2 : x7<br> - rd : x17<br> - rs2_val == 2048<br> - rs1_val == 8388608<br>                                                                                                            |[0x80000624]:addw a7, t4, t2<br> [0x80000628]:sd a7, 80(ra)<br>     |
|  32|[0x80004308]<br>0x0000000056555555|- rs1 : x30<br> - rs2 : x10<br> - rd : x22<br> - rs1_val == 16777216<br>                                                                                                                                |[0x80000650]:addw s6, t5, a0<br> [0x80000654]:sd s6, 88(ra)<br>     |
|  33|[0x80004310]<br>0x0000000001FFFFFF|- rs2_val == -281474976710657<br> - rs1_val == 33554432<br>                                                                                                                                             |[0x80000668]:addw a2, a0, a1<br> [0x8000066c]:sd a2, 96(ra)<br>     |
|  34|[0x80004318]<br>0x0000000003FFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 67108864<br>                                                                                                                                              |[0x80000680]:addw a2, a0, a1<br> [0x80000684]:sd a2, 104(ra)<br>    |
|  35|[0x80004320]<br>0x0000000007FFFFFF|- rs2_val == -140737488355329<br> - rs1_val == 134217728<br>                                                                                                                                            |[0x80000698]:addw a2, a0, a1<br> [0x8000069c]:sd a2, 112(ra)<br>    |
|  36|[0x80004328]<br>0x000000000FFFFDFF|- rs2_val == -513<br> - rs1_val == 268435456<br>                                                                                                                                                        |[0x800006a8]:addw a2, a0, a1<br> [0x800006ac]:sd a2, 120(ra)<br>    |
|  37|[0x80004330]<br>0x000000001FFFFFFF|- rs1_val == 536870912<br>                                                                                                                                                                              |[0x800006c0]:addw a2, a0, a1<br> [0x800006c4]:sd a2, 128(ra)<br>    |
|  38|[0x80004338]<br>0x000000003FFFFFFF|- rs2_val == -576460752303423489<br> - rs1_val == 1073741824<br>                                                                                                                                        |[0x800006d8]:addw a2, a0, a1<br> [0x800006dc]:sd a2, 136(ra)<br>    |
|  39|[0x80004340]<br>0xFFFFFFFF80000000|- rs2_val == 288230376151711744<br> - rs1_val == 2147483648<br>                                                                                                                                         |[0x800006f0]:addw a2, a0, a1<br> [0x800006f4]:sd a2, 144(ra)<br>    |
|  40|[0x80004348]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br> - rs1_val == 4294967296<br>                                                                                                                                                      |[0x80000708]:addw a2, a0, a1<br> [0x8000070c]:sd a2, 152(ra)<br>    |
|  41|[0x80004350]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br> - rs1_val == 8589934592<br>                                                                                                                                                        |[0x8000071c]:addw a2, a0, a1<br> [0x80000720]:sd a2, 160(ra)<br>    |
|  42|[0x80004358]<br>0x0000000000800000|- rs1_val == 17179869184<br>                                                                                                                                                                            |[0x80000730]:addw a2, a0, a1<br> [0x80000734]:sd a2, 168(ra)<br>    |
|  43|[0x80004360]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br> - rs1_val == 34359738368<br>                                                                                                                                                 |[0x80000748]:addw a2, a0, a1<br> [0x8000074c]:sd a2, 176(ra)<br>    |
|  44|[0x80004368]<br>0x0000000000000000|- rs2_val == 4398046511104<br> - rs1_val == 68719476736<br>                                                                                                                                             |[0x80000760]:addw a2, a0, a1<br> [0x80000764]:sd a2, 184(ra)<br>    |
|  45|[0x80004370]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == 137438953472<br>                                                                                                                                        |[0x8000077c]:addw a2, a0, a1<br> [0x80000780]:sd a2, 192(ra)<br>    |
|  46|[0x80004378]<br>0x0000000000000009|- rs1_val == 274877906944<br>                                                                                                                                                                           |[0x80000790]:addw a2, a0, a1<br> [0x80000794]:sd a2, 200(ra)<br>    |
|  47|[0x80004380]<br>0x0000000000000009|- rs1_val == 549755813888<br>                                                                                                                                                                           |[0x800007a4]:addw a2, a0, a1<br> [0x800007a8]:sd a2, 208(ra)<br>    |
|  48|[0x80004388]<br>0x0000000000000000|- rs2_val == 562949953421312<br> - rs1_val == 1099511627776<br>                                                                                                                                         |[0x800007bc]:addw a2, a0, a1<br> [0x800007c0]:sd a2, 216(ra)<br>    |
|  49|[0x80004390]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == 2199023255552<br>                                                                                                                                                                          |[0x800007d0]:addw a2, a0, a1<br> [0x800007d4]:sd a2, 224(ra)<br>    |
|  50|[0x80004398]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == 4398046511104<br>                                                                                                                                                                          |[0x800007e4]:addw a2, a0, a1<br> [0x800007e8]:sd a2, 232(ra)<br>    |
|  51|[0x800043a0]<br>0x0000000000000010|- rs1_val == 8796093022208<br>                                                                                                                                                                          |[0x800007f8]:addw a2, a0, a1<br> [0x800007fc]:sd a2, 240(ra)<br>    |
|  52|[0x800043a8]<br>0x0000000000000000|- rs2_val == 34359738368<br> - rs1_val == 17592186044416<br>                                                                                                                                            |[0x80000810]:addw a2, a0, a1<br> [0x80000814]:sd a2, 248(ra)<br>    |
|  53|[0x800043b0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                         |[0x80000828]:addw a2, a0, a1<br> [0x8000082c]:sd a2, 256(ra)<br>    |
|  54|[0x800043b8]<br>0x0000000000000200|- rs2_val == 512<br> - rs1_val == 70368744177664<br>                                                                                                                                                    |[0x8000083c]:addw a2, a0, a1<br> [0x80000840]:sd a2, 264(ra)<br>    |
|  55|[0x800043c0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                        |[0x80000850]:addw a2, a0, a1<br> [0x80000854]:sd a2, 272(ra)<br>    |
|  56|[0x800043c8]<br>0x0000000000200000|- rs2_val == 2097152<br> - rs1_val == 281474976710656<br>                                                                                                                                               |[0x80000864]:addw a2, a0, a1<br> [0x80000868]:sd a2, 280(ra)<br>    |
|  57|[0x800043d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 562949953421312<br>                                                                                                                                                                        |[0x80000880]:addw a2, a0, a1<br> [0x80000884]:sd a2, 288(ra)<br>    |
|  58|[0x800043d8]<br>0x0000000000000000|- rs2_val == 4294967296<br> - rs1_val == 2251799813685248<br>                                                                                                                                           |[0x80000898]:addw a2, a0, a1<br> [0x8000089c]:sd a2, 296(ra)<br>    |
|  59|[0x800043e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br> - rs1_val == 4503599627370496<br>                                                                                                                                   |[0x800008b4]:addw a2, a0, a1<br> [0x800008b8]:sd a2, 304(ra)<br>    |
|  60|[0x800043e8]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br> - rs1_val == 9007199254740992<br>                                                                                                                                                 |[0x800008c8]:addw a2, a0, a1<br> [0x800008cc]:sd a2, 312(ra)<br>    |
|  61|[0x800043f0]<br>0x0000000000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 18014398509481984<br>                                                                                                                                 |[0x800008e0]:addw a2, a0, a1<br> [0x800008e4]:sd a2, 320(ra)<br>    |
|  62|[0x800043f8]<br>0x0000000000000000|- rs2_val == 9007199254740992<br> - rs1_val == 36028797018963968<br>                                                                                                                                    |[0x800008f8]:addw a2, a0, a1<br> [0x800008fc]:sd a2, 328(ra)<br>    |
|  63|[0x80004400]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -17179869185<br> - rs1_val == 72057594037927936<br>                                                                                                                                        |[0x80000914]:addw a2, a0, a1<br> [0x80000918]:sd a2, 336(ra)<br>    |
|  64|[0x80004408]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br> - rs1_val == 144115188075855872<br>                                                                                                                                            |[0x8000092c]:addw a2, a0, a1<br> [0x80000930]:sd a2, 344(ra)<br>    |
|  65|[0x80004410]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 288230376151711744<br>                                                                                                                                                                     |[0x80000948]:addw a2, a0, a1<br> [0x8000094c]:sd a2, 352(ra)<br>    |
|  66|[0x80004418]<br>0x0000000000000010|- rs1_val == 576460752303423488<br>                                                                                                                                                                     |[0x8000095c]:addw a2, a0, a1<br> [0x80000960]:sd a2, 360(ra)<br>    |
|  67|[0x80004420]<br>0x0000000040000000|- rs2_val == 1073741824<br> - rs1_val == 1152921504606846976<br>                                                                                                                                        |[0x80000970]:addw a2, a0, a1<br> [0x80000974]:sd a2, 368(ra)<br>    |
|  68|[0x80004428]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -562949953421313<br> - rs1_val == 2305843009213693952<br>                                                                                                                                  |[0x8000098c]:addw a2, a0, a1<br> [0x80000990]:sd a2, 376(ra)<br>    |
|  69|[0x80004430]<br>0x0000000000040000|- rs2_val == 262144<br> - rs1_val == 4611686018427387904<br>                                                                                                                                            |[0x800009a0]:addw a2, a0, a1<br> [0x800009a4]:sd a2, 384(ra)<br>    |
|  70|[0x80004438]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                                                                                     |[0x800009b4]:addw a2, a0, a1<br> [0x800009b8]:sd a2, 392(ra)<br>    |
|  71|[0x80004440]<br>0x0000000000FFFFFD|- rs2_val == 16777216<br> - rs1_val == -3<br>                                                                                                                                                           |[0x800009c4]:addw a2, a0, a1<br> [0x800009c8]:sd a2, 400(ra)<br>    |
|  72|[0x80004448]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -5<br>                                                                                                                                                                                     |[0x800009dc]:addw a2, a0, a1<br> [0x800009e0]:sd a2, 408(ra)<br>    |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 549755813888<br> - rs1_val == -9<br>                                                                                                                                                       |[0x800009f0]:addw a2, a0, a1<br> [0x800009f4]:sd a2, 416(ra)<br>    |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFFF1|- rs2_val == 2<br> - rs1_val == -17<br>                                                                                                                                                                 |[0x80000a00]:addw a2, a0, a1<br> [0x80000a04]:sd a2, 424(ra)<br>    |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == 8589934592<br> - rs1_val == -33<br>                                                                                                                                                        |[0x80000a14]:addw a2, a0, a1<br> [0x80000a18]:sd a2, 432(ra)<br>    |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -65<br>                                                                                                                                                                                    |[0x80000a24]:addw a2, a0, a1<br> [0x80000a28]:sd a2, 440(ra)<br>    |
|  77|[0x80004470]<br>0x00000000007FFF7F|- rs1_val == -129<br>                                                                                                                                                                                   |[0x80000a34]:addw a2, a0, a1<br> [0x80000a38]:sd a2, 448(ra)<br>    |
|  78|[0x80004478]<br>0x000000000000FEFF|- rs2_val == 65536<br> - rs1_val == -257<br>                                                                                                                                                            |[0x80000a44]:addw a2, a0, a1<br> [0x80000a48]:sd a2, 456(ra)<br>    |
|  79|[0x80004480]<br>0xFFFFFFFFFFF7FDFE|- rs2_val == -524289<br> - rs1_val == -513<br>                                                                                                                                                          |[0x80000a58]:addw a2, a0, a1<br> [0x80000a5c]:sd a2, 464(ra)<br>    |
|  80|[0x80004488]<br>0xFFFFFFFFFFFFFBFE|- rs2_val == -144115188075855873<br> - rs1_val == -1025<br>                                                                                                                                             |[0x80000a70]:addw a2, a0, a1<br> [0x80000a74]:sd a2, 472(ra)<br>    |
|  81|[0x80004490]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -1125899906842625<br>                                                                                                                                                                      |[0x80000a90]:addw a2, a0, a1<br> [0x80000a94]:sd a2, 480(ra)<br>    |
|  82|[0x80004498]<br>0x000000000000FFFF|- rs2_val == -2251799813685249<br>                                                                                                                                                                      |[0x80000aa8]:addw a2, a0, a1<br> [0x80000aac]:sd a2, 488(ra)<br>    |
|  83|[0x800044a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                                                                     |[0x80000ac4]:addw a2, a0, a1<br> [0x80000ac8]:sd a2, 496(ra)<br>    |
|  84|[0x800044a8]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -288230376151711745<br>                                                                                                                                                                    |[0x80000adc]:addw a2, a0, a1<br> [0x80000ae0]:sd a2, 504(ra)<br>    |
|  85|[0x800044b0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -1152921504606846977<br> - rs1_val == -2305843009213693953<br>                                                                                                                             |[0x80000afc]:addw a2, a0, a1<br> [0x80000b00]:sd a2, 512(ra)<br>    |
|  86|[0x800044b8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                                                                                   |[0x80000b18]:addw a2, a0, a1<br> [0x80000b1c]:sd a2, 520(ra)<br>    |
|  87|[0x800044c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                                                                   |[0x80000b34]:addw a2, a0, a1<br> [0x80000b38]:sd a2, 528(ra)<br>    |
|  88|[0x800044c8]<br>0xFFFFFFFFAAAAAAA9|- rs2_val == -6148914691236517206<br> - rs1_val == -4503599627370497<br>                                                                                                                                |[0x80000b68]:addw a2, a0, a1<br> [0x80000b6c]:sd a2, 536(ra)<br>    |
|  89|[0x800044d0]<br>0xFFFFFFFFFFFFF7FE|- rs2_val == -9007199254740993<br> - rs1_val == -2049<br>                                                                                                                                               |[0x80000b84]:addw a2, a0, a1<br> [0x80000b88]:sd a2, 544(ra)<br>    |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                                                  |[0x80000b9c]:addw a2, a0, a1<br> [0x80000ba0]:sd a2, 552(ra)<br>    |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFFDFFE|- rs2_val == -4294967297<br> - rs1_val == -8193<br>                                                                                                                                                     |[0x80000bb8]:addw a2, a0, a1<br> [0x80000bbc]:sd a2, 560(ra)<br>    |
|  92|[0x800044e8]<br>0xFFFFFFFFFFFFBFBE|- rs2_val == -65<br> - rs1_val == -16385<br>                                                                                                                                                            |[0x80000bcc]:addw a2, a0, a1<br> [0x80000bd0]:sd a2, 568(ra)<br>    |
|  93|[0x800044f0]<br>0x00000000001F7FFF|- rs1_val == -32769<br>                                                                                                                                                                                 |[0x80000be0]:addw a2, a0, a1<br> [0x80000be4]:sd a2, 576(ra)<br>    |
|  94|[0x800044f8]<br>0xFFFFFFFFFFFF1FFF|- rs1_val == -65537<br>                                                                                                                                                                                 |[0x80000bf4]:addw a2, a0, a1<br> [0x80000bf8]:sd a2, 584(ra)<br>    |
|  95|[0x80004500]<br>0xFFFFFFFFFBFDFFFE|- rs2_val == -67108865<br> - rs1_val == -131073<br>                                                                                                                                                     |[0x80000c0c]:addw a2, a0, a1<br> [0x80000c10]:sd a2, 592(ra)<br>    |
|  96|[0x80004508]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -262145<br>                                                                                                                                                                                |[0x80000c20]:addw a2, a0, a1<br> [0x80000c24]:sd a2, 600(ra)<br>    |
|  97|[0x80004510]<br>0xFFFFFFFFFFEFFFFE|- rs1_val == -524289<br>                                                                                                                                                                                |[0x80000c38]:addw a2, a0, a1<br> [0x80000c3c]:sd a2, 608(ra)<br>    |
|  98|[0x80004518]<br>0xFFFFFFFFFFEFFFFE|- rs1_val == -1048577<br>                                                                                                                                                                               |[0x80000c54]:addw a2, a0, a1<br> [0x80000c58]:sd a2, 616(ra)<br>    |
|  99|[0x80004520]<br>0xFFFFFFFFFEDFFFFE|- rs2_val == -16777217<br> - rs1_val == -2097153<br>                                                                                                                                                    |[0x80000c6c]:addw a2, a0, a1<br> [0x80000c70]:sd a2, 624(ra)<br>    |
| 100|[0x80004528]<br>0xFFFFFFFFFFBFFFFE|- rs1_val == -4194305<br>                                                                                                                                                                               |[0x80000c88]:addw a2, a0, a1<br> [0x80000c8c]:sd a2, 632(ra)<br>    |
| 101|[0x80004530]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                               |[0x80000c9c]:addw a2, a0, a1<br> [0x80000ca0]:sd a2, 640(ra)<br>    |
| 102|[0x80004538]<br>0xFFFFFFFFFEFFFDFE|- rs1_val == -16777217<br>                                                                                                                                                                              |[0x80000cb0]:addw a2, a0, a1<br> [0x80000cb4]:sd a2, 648(ra)<br>    |
| 103|[0x80004540]<br>0xFFFFFFFFFDFFBFFE|- rs2_val == -16385<br> - rs1_val == -33554433<br>                                                                                                                                                      |[0x80000cc8]:addw a2, a0, a1<br> [0x80000ccc]:sd a2, 656(ra)<br>    |
| 104|[0x80004548]<br>0xFFFFFFFFFC000007|- rs2_val == 8<br> - rs1_val == -67108865<br>                                                                                                                                                           |[0x80000cdc]:addw a2, a0, a1<br> [0x80000ce0]:sd a2, 664(ra)<br>    |
| 105|[0x80004550]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 18014398509481984<br> - rs1_val == -268435457<br>                                                                                                                                          |[0x80000cf4]:addw a2, a0, a1<br> [0x80000cf8]:sd a2, 672(ra)<br>    |
| 106|[0x80004558]<br>0xFFFFFFFFDFFFFFFE|- rs1_val == -536870913<br>                                                                                                                                                                             |[0x80000d10]:addw a2, a0, a1<br> [0x80000d14]:sd a2, 680(ra)<br>    |
| 107|[0x80004560]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                            |[0x80000d28]:addw a2, a0, a1<br> [0x80000d2c]:sd a2, 688(ra)<br>    |
| 108|[0x80004568]<br>0x000000007FFFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -2147483649<br>                                                                                                                                         |[0x80000d44]:addw a2, a0, a1<br> [0x80000d48]:sd a2, 696(ra)<br>    |
| 109|[0x80004570]<br>0x00000000000000FF|- rs2_val == 256<br> - rs1_val == -4294967297<br>                                                                                                                                                       |[0x80000d5c]:addw a2, a0, a1<br> [0x80000d60]:sd a2, 704(ra)<br>    |
| 110|[0x80004578]<br>0xFFFFFFFFDFFFFFFE|- rs2_val == -536870913<br> - rs1_val == -8589934593<br>                                                                                                                                                |[0x80000d78]:addw a2, a0, a1<br> [0x80000d7c]:sd a2, 712(ra)<br>    |
| 111|[0x80004580]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -35184372088833<br> - rs1_val == -17179869185<br>                                                                                                                                          |[0x80000d98]:addw a2, a0, a1<br> [0x80000d9c]:sd a2, 720(ra)<br>    |
| 112|[0x80004588]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -274877906945<br> - rs1_val == -34359738369<br>                                                                                                                                            |[0x80000db8]:addw a2, a0, a1<br> [0x80000dbc]:sd a2, 728(ra)<br>    |
| 113|[0x80004590]<br>0xFFFFFFFFFFFFFFDE|- rs2_val == -33<br> - rs1_val == -68719476737<br>                                                                                                                                                      |[0x80000dd0]:addw a2, a0, a1<br> [0x80000dd4]:sd a2, 736(ra)<br>    |
| 114|[0x80004598]<br>0xFFFFFFFFFFFDFFFE|- rs1_val == -137438953473<br>                                                                                                                                                                          |[0x80000dec]:addw a2, a0, a1<br> [0x80000df0]:sd a2, 744(ra)<br>    |
| 115|[0x800045a0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -274877906945<br>                                                                                                                                                                          |[0x80000e0c]:addw a2, a0, a1<br> [0x80000e10]:sd a2, 752(ra)<br>    |
| 116|[0x800045a8]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -549755813889<br>                                                                                                                                                                          |[0x80000e2c]:addw a2, a0, a1<br> [0x80000e30]:sd a2, 760(ra)<br>    |
| 117|[0x800045b0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -1099511627777<br>                                                                                                                                                                         |[0x80000e4c]:addw a2, a0, a1<br> [0x80000e50]:sd a2, 768(ra)<br>    |
| 118|[0x800045b8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -2199023255553<br>                                                                                                                                            |[0x80000e68]:addw a2, a0, a1<br> [0x80000e6c]:sd a2, 776(ra)<br>    |
| 119|[0x800045c0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -8796093022209<br> - rs1_val == -4398046511105<br>                                                                                                                                         |[0x80000e88]:addw a2, a0, a1<br> [0x80000e8c]:sd a2, 784(ra)<br>    |
| 120|[0x800045c8]<br>0x0000000000000004|- rs1_val == -8796093022209<br>                                                                                                                                                                         |[0x80000ea0]:addw a2, a0, a1<br> [0x80000ea4]:sd a2, 792(ra)<br>    |
| 121|[0x800045d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                                        |[0x80000ebc]:addw a2, a0, a1<br> [0x80000ec0]:sd a2, 800(ra)<br>    |
| 122|[0x800045d8]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -35184372088833<br>                                                                                                                                                                        |[0x80000edc]:addw a2, a0, a1<br> [0x80000ee0]:sd a2, 808(ra)<br>    |
| 123|[0x800045e0]<br>0xFFFFFFFFFFFFFF7E|- rs1_val == -70368744177665<br>                                                                                                                                                                        |[0x80000ef4]:addw a2, a0, a1<br> [0x80000ef8]:sd a2, 816(ra)<br>    |
| 124|[0x800045e8]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -140737488355329<br>                                                                                                                                                                       |[0x80000f14]:addw a2, a0, a1<br> [0x80000f18]:sd a2, 824(ra)<br>    |
| 125|[0x800045f0]<br>0x00000000007FFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                                       |[0x80000f2c]:addw a2, a0, a1<br> [0x80000f30]:sd a2, 832(ra)<br>    |
| 126|[0x800045f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                                      |[0x80000f48]:addw a2, a0, a1<br> [0x80000f4c]:sd a2, 840(ra)<br>    |
| 127|[0x80004600]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 70368744177664<br> - rs1_val == -9007199254740993<br>                                                                                                                                      |[0x80000f64]:addw a2, a0, a1<br> [0x80000f68]:sd a2, 848(ra)<br>    |
| 128|[0x80004608]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -36028797018963969<br>                                                                                                                                                                     |[0x80000f84]:addw a2, a0, a1<br> [0x80000f88]:sd a2, 856(ra)<br>    |
| 129|[0x80004610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                                     |[0x80000f9c]:addw a2, a0, a1<br> [0x80000fa0]:sd a2, 864(ra)<br>    |
| 130|[0x80004618]<br>0xFFFFFFFFFFFFEFFE|- rs2_val == -4097<br> - rs1_val == -144115188075855873<br>                                                                                                                                             |[0x80000fb8]:addw a2, a0, a1<br> [0x80000fbc]:sd a2, 872(ra)<br>    |
| 131|[0x80004620]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -288230376151711745<br>                                                                                                                                                                    |[0x80000fd8]:addw a2, a0, a1<br> [0x80000fdc]:sd a2, 880(ra)<br>    |
| 132|[0x80004628]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -576460752303423489<br>                                                                                                                                                                    |[0x80000ff8]:addw a2, a0, a1<br> [0x80000ffc]:sd a2, 888(ra)<br>    |
| 133|[0x80004630]<br>0x00000000000FFFFF|- rs2_val == 1048576<br> - rs1_val == -4611686018427387905<br>                                                                                                                                          |[0x80001010]:addw a2, a0, a1<br> [0x80001014]:sd a2, 896(ra)<br>    |
| 134|[0x80004638]<br>0x0000000055555555|- rs1_val == 6148914691236517205<br>                                                                                                                                                                    |[0x80001040]:addw a2, a0, a1<br> [0x80001044]:sd a2, 904(ra)<br>    |
| 135|[0x80004640]<br>0xFFFFFFFFAAA9AAA9|- rs2_val == -65537<br> - rs1_val == -6148914691236517206<br>                                                                                                                                           |[0x80001070]:addw a2, a0, a1<br> [0x80001074]:sd a2, 912(ra)<br>    |
| 136|[0x80004648]<br>0x000000000000000D|- rs2_val == 4<br>                                                                                                                                                                                      |[0x80001080]:addw a2, a0, a1<br> [0x80001084]:sd a2, 920(ra)<br>    |
| 137|[0x80004650]<br>0x0000000000000820|- rs2_val == 32<br>                                                                                                                                                                                     |[0x80001094]:addw a2, a0, a1<br> [0x80001098]:sd a2, 928(ra)<br>    |
| 138|[0x80004658]<br>0x000000000000003D|- rs2_val == 64<br>                                                                                                                                                                                     |[0x800010a4]:addw a2, a0, a1<br> [0x800010a8]:sd a2, 936(ra)<br>    |
| 139|[0x80004660]<br>0x0000000000000400|- rs2_val == 1024<br>                                                                                                                                                                                   |[0x800010b8]:addw a2, a0, a1<br> [0x800010bc]:sd a2, 944(ra)<br>    |
| 140|[0x80004668]<br>0xFFFFFFFFFFFF0FFF|- rs2_val == 4096<br>                                                                                                                                                                                   |[0x800010cc]:addw a2, a0, a1<br> [0x800010d0]:sd a2, 952(ra)<br>    |
| 141|[0x80004670]<br>0x0000000000004000|- rs2_val == 16384<br>                                                                                                                                                                                  |[0x800010dc]:addw a2, a0, a1<br> [0x800010e0]:sd a2, 960(ra)<br>    |
| 142|[0x80004678]<br>0xFFFFFFFFFE007FFF|- rs2_val == 32768<br>                                                                                                                                                                                  |[0x800010f0]:addw a2, a0, a1<br> [0x800010f4]:sd a2, 968(ra)<br>    |
| 143|[0x80004680]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 524288<br>                                                                                                                                                                                 |[0x80001104]:addw a2, a0, a1<br> [0x80001108]:sd a2, 976(ra)<br>    |
| 144|[0x80004688]<br>0x0000000002010000|- rs2_val == 33554432<br>                                                                                                                                                                               |[0x80001114]:addw a2, a0, a1<br> [0x80001118]:sd a2, 984(ra)<br>    |
| 145|[0x80004690]<br>0x0000000004000000|- rs2_val == 67108864<br>                                                                                                                                                                               |[0x80001128]:addw a2, a0, a1<br> [0x8000112c]:sd a2, 992(ra)<br>    |
| 146|[0x80004698]<br>0x0000000008000000|- rs2_val == 134217728<br>                                                                                                                                                                              |[0x8000113c]:addw a2, a0, a1<br> [0x80001140]:sd a2, 1000(ra)<br>   |
| 147|[0x800046a0]<br>0x0000000010008000|- rs2_val == 268435456<br>                                                                                                                                                                              |[0x8000114c]:addw a2, a0, a1<br> [0x80001150]:sd a2, 1008(ra)<br>   |
| 148|[0x800046a8]<br>0x0000000020100000|- rs2_val == 536870912<br>                                                                                                                                                                              |[0x8000115c]:addw a2, a0, a1<br> [0x80001160]:sd a2, 1016(ra)<br>   |
| 149|[0x800046b0]<br>0xFFFFFFFF80000002|- rs2_val == 2147483648<br>                                                                                                                                                                             |[0x80001170]:addw a2, a0, a1<br> [0x80001174]:sd a2, 1024(ra)<br>   |
| 150|[0x800046b8]<br>0x0000000000100000|- rs2_val == 68719476736<br>                                                                                                                                                                            |[0x80001184]:addw a2, a0, a1<br> [0x80001188]:sd a2, 1032(ra)<br>   |
| 151|[0x800046c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 1099511627776<br>                                                                                                                                                                          |[0x800011a0]:addw a2, a0, a1<br> [0x800011a4]:sd a2, 1040(ra)<br>   |
| 152|[0x800046c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2199023255552<br>                                                                                                                                                                          |[0x800011bc]:addw a2, a0, a1<br> [0x800011c0]:sd a2, 1048(ra)<br>   |
| 153|[0x800046d0]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 8796093022208<br>                                                                                                                                                                          |[0x800011d4]:addw a2, a0, a1<br> [0x800011d8]:sd a2, 1056(ra)<br>   |
| 154|[0x800046d8]<br>0x0000000000000000|- rs2_val == 1125899906842624<br>                                                                                                                                                                       |[0x800011ec]:addw a2, a0, a1<br> [0x800011f0]:sd a2, 1064(ra)<br>   |
| 155|[0x800046e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2251799813685248<br>                                                                                                                                                                       |[0x80001208]:addw a2, a0, a1<br> [0x8000120c]:sd a2, 1072(ra)<br>   |
| 156|[0x800046e8]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 4503599627370496<br>                                                                                                                                                                       |[0x80001220]:addw a2, a0, a1<br> [0x80001224]:sd a2, 1080(ra)<br>   |
| 157|[0x800046f0]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                      |[0x80001238]:addw a2, a0, a1<br> [0x8000123c]:sd a2, 1088(ra)<br>   |
| 158|[0x800046f8]<br>0x0000000000000001|- rs1_val == 1<br> - rs2_val == 144115188075855872<br>                                                                                                                                                  |[0x8000124c]:addw a2, a0, a1<br> [0x80001250]:sd a2, 1096(ra)<br>   |
| 159|[0x80004700]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == 576460752303423488<br>                                                                                                                                                                     |[0x80001260]:addw a2, a0, a1<br> [0x80001264]:sd a2, 1104(ra)<br>   |
| 160|[0x80004708]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -2<br>                                                                                                                                                                                     |[0x80001278]:addw a2, a0, a1<br> [0x8000127c]:sd a2, 1112(ra)<br>   |
| 161|[0x80004710]<br>0xFFFFFFFFFDFFFFFC|- rs2_val == -3<br>                                                                                                                                                                                     |[0x8000128c]:addw a2, a0, a1<br> [0x80001290]:sd a2, 1120(ra)<br>   |
| 162|[0x80004718]<br>0x0000000000000002|- rs2_val == -5<br>                                                                                                                                                                                     |[0x8000129c]:addw a2, a0, a1<br> [0x800012a0]:sd a2, 1128(ra)<br>   |
| 163|[0x80004720]<br>0xFFFFFFFFFFFFFFF6|- rs2_val == -9<br>                                                                                                                                                                                     |[0x800012b4]:addw a2, a0, a1<br> [0x800012b8]:sd a2, 1136(ra)<br>   |
| 164|[0x80004728]<br>0xFFFFFFFFFFFF7BFE|- rs2_val == -1025<br>                                                                                                                                                                                  |[0x800012c8]:addw a2, a0, a1<br> [0x800012cc]:sd a2, 1144(ra)<br>   |
| 165|[0x80004730]<br>0xFFFFFFFFFFFFF7F8|- rs2_val == -2049<br>                                                                                                                                                                                  |[0x800012dc]:addw a2, a0, a1<br> [0x800012e0]:sd a2, 1152(ra)<br>   |
| 166|[0x80004738]<br>0xFFFFFFFFF7FF7FFE|- rs2_val == -32769<br>                                                                                                                                                                                 |[0x800012f4]:addw a2, a0, a1<br> [0x800012f8]:sd a2, 1160(ra)<br>   |
| 167|[0x80004740]<br>0xFFFFFFFFFFFBFEFE|- rs2_val == -262145<br>                                                                                                                                                                                |[0x80001308]:addw a2, a0, a1<br> [0x8000130c]:sd a2, 1168(ra)<br>   |
| 168|[0x80004748]<br>0xFFFFFFFFFFFFFF7E|- rs1_val == -562949953421313<br>                                                                                                                                                                       |[0x80001320]:addw a2, a0, a1<br> [0x80001324]:sd a2, 1176(ra)<br>   |
| 169|[0x80004750]<br>0x000000001FBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                               |[0x80001334]:addw a2, a0, a1<br> [0x80001338]:sd a2, 1184(ra)<br>   |
| 170|[0x80004758]<br>0xFFFFFFFFFF8003FF|- rs2_val == -8388609<br> - rs1_val == 1024<br>                                                                                                                                                         |[0x80001348]:addw a2, a0, a1<br> [0x8000134c]:sd a2, 1192(ra)<br>   |
| 171|[0x80004760]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                             |[0x80001360]:addw a2, a0, a1<br> [0x80001364]:sd a2, 1200(ra)<br>   |
| 172|[0x80004768]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                            |[0x80001378]:addw a2, a0, a1<br> [0x8000137c]:sd a2, 1208(ra)<br>   |
| 173|[0x80004770]<br>0xFFFFFFFF8000000F|- rs2_val == -2147483649<br>                                                                                                                                                                            |[0x80001390]:addw a2, a0, a1<br> [0x80001394]:sd a2, 1216(ra)<br>   |
| 174|[0x80004778]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -8589934593<br>                                                                                                                                                                            |[0x800013b0]:addw a2, a0, a1<br> [0x800013b4]:sd a2, 1224(ra)<br>   |
| 175|[0x80004780]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                                                                           |[0x800013cc]:addw a2, a0, a1<br> [0x800013d0]:sd a2, 1232(ra)<br>   |
| 176|[0x80004788]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                                                                          |[0x800013e8]:addw a2, a0, a1<br> [0x800013ec]:sd a2, 1240(ra)<br>   |
| 177|[0x80004790]<br>0xFFFFFFFFFF7FFFFE|- rs2_val == -549755813889<br>                                                                                                                                                                          |[0x80001404]:addw a2, a0, a1<br> [0x80001408]:sd a2, 1248(ra)<br>   |
| 178|[0x80004798]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2199023255553<br>                                                                                                                                                                         |[0x80001424]:addw a2, a0, a1<br> [0x80001428]:sd a2, 1256(ra)<br>   |
| 179|[0x800047a0]<br>0xFFFFFFFFFBFFFFFE|- rs2_val == -4398046511105<br>                                                                                                                                                                         |[0x80001440]:addw a2, a0, a1<br> [0x80001444]:sd a2, 1264(ra)<br>   |
| 180|[0x800047a8]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 17592186044416<br>                                                                                                                                                                         |[0x80001454]:addw a2, a0, a1<br> [0x80001458]:sd a2, 1272(ra)<br>   |
| 181|[0x800047b0]<br>0x0000000020000000|- rs2_val == 35184372088832<br>                                                                                                                                                                         |[0x80001468]:addw a2, a0, a1<br> [0x8000146c]:sd a2, 1280(ra)<br>   |
| 182|[0x800047b8]<br>0x000000000003FFFF|- rs2_val == -70368744177665<br>                                                                                                                                                                        |[0x80001480]:addw a2, a0, a1<br> [0x80001484]:sd a2, 1288(ra)<br>   |
| 183|[0x800047c0]<br>0x0000000020000000|- rs2_val == 281474976710656<br>                                                                                                                                                                        |[0x80001494]:addw a2, a0, a1<br> [0x80001498]:sd a2, 1296(ra)<br>   |
| 184|[0x800047c8]<br>0x0000000000003FFF|- rs1_val == -1125899906842625<br>                                                                                                                                                                      |[0x800014ac]:addw a2, a0, a1<br> [0x800014b0]:sd a2, 1304(ra)<br>   |
| 185|[0x800047d0]<br>0x0000000000000010|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                                                                                   |[0x800014c0]:addw a2, a0, a1<br> [0x800014c4]:sd a2, 1312(ra)<br>   |
