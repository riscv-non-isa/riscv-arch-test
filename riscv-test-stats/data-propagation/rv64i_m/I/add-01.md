
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001510')]      |
| SIG_REGION                | [('0x80004208', '0x800047f0', '189 dwords')]      |
| COV_LABELS                | add      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/add-01.S/add-01.S    |
| Total Number of coverpoints| 374     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 189      |
| STAT1                     | 185      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a04]:add a2, a0, a1
      [0x80000a08]:sd a2, 408(gp)
 -- Signature Address: 0x80004448 Data: 0x07FFFFFFFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 576460752303423488
      - rs1_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ef4]:add a2, a0, a1
      [0x80000ef8]:sd a2, 824(gp)
 -- Signature Address: 0x800045e8 Data: 0xFFF7FFFFFFFFFFFC
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -3
      - rs1_val == -2251799813685249




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014bc]:add a2, a0, a1
      [0x800014c0]:sd a2, 1304(gp)
 -- Signature Address: 0x800047c8 Data: 0x7FF7FFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -2251799813685249
      - rs1_val == -9223372036854775808




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001508]:add a2, a0, a1
      [0x8000150c]:sd a2, 1336(gp)
 -- Signature Address: 0x800047e8 Data: 0x00000000001FFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -5
      - rs1_val == 2097152






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

|s.no|            signature             |                                                                                                       coverpoints                                                                                                        |                               code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80004208]<br>0xFFEFFFFFFFFFFFFE|- opcode : add<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -2251799813685249<br> - rs1_val == -2251799813685249<br> |[0x800003ac]:add a0, a2, a2<br> [0x800003b0]:sd a0, 0(ra)<br>      |
|   2|[0x80004210]<br>0x5555555555555555|- rs1 : x17<br> - rs2 : x7<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 6148914691236517205<br>                                              |[0x800003d8]:add s4, a7, t2<br> [0x800003dc]:sd s4, 8(ra)<br>      |
|   3|[0x80004218]<br>0xFFFFFFFFFFFFFFEE|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs2_val == -9<br> - rs1_val == -9<br>                                                                                                                |[0x800003f0]:add tp, tp, tp<br> [0x800003f4]:sd tp, 16(ra)<br>     |
|   4|[0x80004220]<br>0xFFFFFFFFFF800000|- rs1 : x21<br> - rs2 : x15<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -8388609<br>                                                                      |[0x80000404]:add s5, s5, a5<br> [0x80000408]:sd s5, 24(ra)<br>     |
|   5|[0x80004228]<br>0x8200000000000000|- rs1 : x15<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 144115188075855872<br>                                           |[0x8000041c]:add s9, a5, s9<br> [0x80000420]:sd s9, 32(ra)<br>     |
|   6|[0x80004230]<br>0xC000000000000000|- rs1 : x20<br> - rs2 : x23<br> - rd : x12<br> - rs2_val == 0<br>                                                                                                                                                         |[0x80000430]:add a2, s4, s7<br> [0x80000434]:sd a2, 40(ra)<br>     |
|   7|[0x80004238]<br>0x7FFFFFFFFF7FFFFE|- rs1 : x25<br> - rs2 : x17<br> - rd : x31<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -8388609<br>                                          |[0x8000044c]:add t6, s9, a7<br> [0x80000450]:sd t6, 48(ra)<br>     |
|   8|[0x80004240]<br>0xFFE0000000000000|- rs1 : x14<br> - rs2 : x6<br> - rd : x9<br> - rs2_val == 1<br> - rs1_val == -9007199254740993<br>                                                                                                                        |[0x80000464]:add s1, a4, t1<br> [0x80000468]:sd s1, 56(ra)<br>     |
|   9|[0x80004248]<br>0x0020000000040000|- rs1 : x10<br> - rs2 : x21<br> - rd : x16<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 262144<br> - rs1_val == 9007199254740992<br>                                                                                |[0x80000478]:add a6, a0, s5<br> [0x8000047c]:sd a6, 64(ra)<br>     |
|  10|[0x80004250]<br>0x0000000000040000|- rs1 : x11<br> - rs2 : x28<br> - rd : x7<br> - rs2_val == 131072<br> - rs1_val == 131072<br>                                                                                                                             |[0x80000488]:add t2, a1, t3<br> [0x8000048c]:sd t2, 72(ra)<br>     |
|  11|[0x80004258]<br>0x0001000000000002|- rs1 : x27<br> - rs2 : x14<br> - rd : x28<br> - rs2_val == 281474976710656<br> - rs1_val == 2<br>                                                                                                                        |[0x8000049c]:add t3, s11, a4<br> [0x800004a0]:sd t3, 80(ra)<br>    |
|  12|[0x80004260]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x19<br> - rs2 : x5<br> - rd : x29<br> - rs1_val == 4<br>                                                                                                                                                          |[0x800004ac]:add t4, s3, t0<br> [0x800004b0]:sd t4, 88(ra)<br>     |
|  13|[0x80004268]<br>0x0000000000000008|- rs1 : x6<br> - rs2 : x0<br> - rd : x19<br> - rs1_val == 8<br>                                                                                                                                                           |[0x800004c0]:add s3, t1, zero<br> [0x800004c4]:sd s3, 96(ra)<br>   |
|  14|[0x80004270]<br>0xFFFFFFFFFFFFE00F|- rs1 : x7<br> - rs2 : x18<br> - rd : x6<br> - rs2_val == -8193<br> - rs1_val == 16<br>                                                                                                                                   |[0x800004d4]:add t1, t2, s2<br> [0x800004d8]:sd t1, 104(ra)<br>    |
|  15|[0x80004278]<br>0x0000000000000017|- rs1 : x28<br> - rs2 : x31<br> - rd : x15<br> - rs1_val == 32<br>                                                                                                                                                        |[0x800004e4]:add a5, t3, t6<br> [0x800004e8]:sd a5, 112(ra)<br>    |
|  16|[0x80004280]<br>0x0000000400000040|- rs1 : x8<br> - rs2 : x24<br> - rd : x17<br> - rs2_val == 17179869184<br> - rs1_val == 64<br>                                                                                                                            |[0x800004f8]:add a7, fp, s8<br> [0x800004fc]:sd a7, 120(ra)<br>    |
|  17|[0x80004288]<br>0x0000000000010080|- rs1 : x30<br> - rs2 : x3<br> - rd : x27<br> - rs2_val == 65536<br> - rs1_val == 128<br>                                                                                                                                 |[0x80000508]:add s11, t5, gp<br> [0x8000050c]:sd s11, 128(ra)<br>  |
|  18|[0x80004290]<br>0xFFFFFFFFFFFFFFDF|- rs1 : x0<br> - rs2 : x11<br> - rd : x14<br> - rs2_val == -33<br>                                                                                                                                                        |[0x80000518]:add a4, zero, a1<br> [0x8000051c]:sd a4, 136(ra)<br>  |
|  19|[0x80004298]<br>0x0040000000000200|- rs1 : x3<br> - rs2 : x10<br> - rd : x30<br> - rs2_val == 18014398509481984<br> - rs1_val == 512<br>                                                                                                                     |[0x8000052c]:add t5, gp, a0<br> [0x80000530]:sd t5, 144(ra)<br>    |
|  20|[0x800042a0]<br>0xFFFC0000000003FF|- rs1 : x13<br> - rs2 : x8<br> - rd : x3<br> - rs2_val == -1125899906842625<br> - rs1_val == 1024<br>                                                                                                                     |[0x80000544]:add gp, a3, fp<br> [0x80000548]:sd gp, 152(ra)<br>    |
|  21|[0x800042a8]<br>0xFF800000000007FF|- rs1 : x16<br> - rs2 : x22<br> - rd : x2<br> - rs2_val == -36028797018963969<br> - rs1_val == 2048<br>                                                                                                                   |[0x80000560]:add sp, a6, s6<br> [0x80000564]:sd sp, 160(ra)<br>    |
|  22|[0x800042b0]<br>0x0000000000001080|- rs1 : x18<br> - rs2 : x20<br> - rd : x1<br> - rs2_val == 128<br> - rs1_val == 4096<br>                                                                                                                                  |[0x80000578]:add ra, s2, s4<br> [0x8000057c]:sd ra, 0(gp)<br>      |
|  23|[0x800042b8]<br>0xFFFFFFFFFE001FFF|- rs1 : x31<br> - rs2 : x9<br> - rd : x5<br> - rs2_val == -33554433<br> - rs1_val == 8192<br>                                                                                                                             |[0x8000058c]:add t0, t6, s1<br> [0x80000590]:sd t0, 8(gp)<br>      |
|  24|[0x800042c0]<br>0x0000000800004000|- rs1 : x23<br> - rs2 : x19<br> - rd : x22<br> - rs2_val == 34359738368<br> - rs1_val == 16384<br>                                                                                                                        |[0x800005a0]:add s6, s7, s3<br> [0x800005a4]:sd s6, 16(gp)<br>     |
|  25|[0x800042c8]<br>0x0000000000007FF8|- rs1 : x29<br> - rs2 : x26<br> - rd : x8<br> - rs1_val == 32768<br>                                                                                                                                                      |[0x800005b0]:add fp, t4, s10<br> [0x800005b4]:sd fp, 24(gp)<br>    |
|  26|[0x800042d0]<br>0x0000000040010000|- rs1 : x22<br> - rs2 : x2<br> - rd : x18<br> - rs2_val == 1073741824<br> - rs1_val == 65536<br>                                                                                                                          |[0x800005c0]:add s2, s6, sp<br> [0x800005c4]:sd s2, 32(gp)<br>     |
|  27|[0x800042d8]<br>0x000000000003FFBF|- rs1 : x9<br> - rs2 : x27<br> - rd : x11<br> - rs2_val == -65<br> - rs1_val == 262144<br>                                                                                                                                |[0x800005d0]:add a1, s1, s11<br> [0x800005d4]:sd a1, 40(gp)<br>    |
|  28|[0x800042e0]<br>0x0000000010080000|- rs1 : x5<br> - rs2 : x29<br> - rd : x26<br> - rs2_val == 268435456<br> - rs1_val == 524288<br>                                                                                                                          |[0x800005e0]:add s10, t0, t4<br> [0x800005e4]:sd s10, 48(gp)<br>   |
|  29|[0x800042e8]<br>0xFFFFFF80000FFFFF|- rs1 : x24<br> - rs2 : x13<br> - rd : x23<br> - rs2_val == -549755813889<br> - rs1_val == 1048576<br>                                                                                                                    |[0x800005f8]:add s7, s8, a3<br> [0x800005fc]:sd s7, 56(gp)<br>     |
|  30|[0x800042f0]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x30<br> - rd : x0<br> - rs2_val == -5<br> - rs1_val == 2097152<br>                                                                                                                                 |[0x80000608]:add zero, ra, t5<br> [0x8000060c]:sd zero, 64(gp)<br> |
|  31|[0x800042f8]<br>0x00000000003FF7FF|- rs1 : x26<br> - rs2 : x16<br> - rd : x13<br> - rs2_val == -2049<br> - rs1_val == 4194304<br>                                                                                                                            |[0x8000061c]:add a3, s10, a6<br> [0x80000620]:sd a3, 72(gp)<br>    |
|  32|[0x80004300]<br>0x0000000000800800|- rs1 : x2<br> - rs2 : x1<br> - rd : x24<br> - rs2_val == 2048<br> - rs1_val == 8388608<br>                                                                                                                               |[0x80000630]:add s8, sp, ra<br> [0x80000634]:sd s8, 80(gp)<br>     |
|  33|[0x80004308]<br>0xE000000000FFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == 16777216<br>                                                                                                                                                           |[0x80000648]:add a2, a0, a1<br> [0x8000064c]:sd a2, 88(gp)<br>     |
|  34|[0x80004310]<br>0x0000000001FFFFFD|- rs2_val == -3<br> - rs1_val == 33554432<br>                                                                                                                                                                             |[0x80000658]:add a2, a0, a1<br> [0x8000065c]:sd a2, 96(gp)<br>     |
|  35|[0x80004318]<br>0x0000000204000000|- rs2_val == 8589934592<br> - rs1_val == 67108864<br>                                                                                                                                                                     |[0x8000066c]:add a2, a0, a1<br> [0x80000670]:sd a2, 104(gp)<br>    |
|  36|[0x80004320]<br>0x0000000008800000|- rs2_val == 8388608<br> - rs1_val == 134217728<br>                                                                                                                                                                       |[0x8000067c]:add a2, a0, a1<br> [0x80000680]:sd a2, 112(gp)<br>    |
|  37|[0x80004328]<br>0x0000000010040000|- rs1_val == 268435456<br>                                                                                                                                                                                                |[0x8000068c]:add a2, a0, a1<br> [0x80000690]:sd a2, 120(gp)<br>    |
|  38|[0x80004330]<br>0xFFFFFF801FFFFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                |[0x800006a4]:add a2, a0, a1<br> [0x800006a8]:sd a2, 128(gp)<br>    |
|  39|[0x80004338]<br>0x0000000040000008|- rs2_val == 8<br> - rs1_val == 1073741824<br>                                                                                                                                                                            |[0x800006b4]:add a2, a0, a1<br> [0x800006b8]:sd a2, 136(gp)<br>    |
|  40|[0x80004340]<br>0x000000007FFFBFFF|- rs2_val == -16385<br> - rs1_val == 2147483648<br>                                                                                                                                                                       |[0x800006cc]:add a2, a0, a1<br> [0x800006d0]:sd a2, 144(gp)<br>    |
|  41|[0x80004348]<br>0x0000000100000010|- rs2_val == 16<br> - rs1_val == 4294967296<br>                                                                                                                                                                           |[0x800006e0]:add a2, a0, a1<br> [0x800006e4]:sd a2, 152(gp)<br>    |
|  42|[0x80004350]<br>0x00000001FFDFFFFF|- rs2_val == -2097153<br> - rs1_val == 8589934592<br>                                                                                                                                                                     |[0x800006f8]:add a2, a0, a1<br> [0x800006fc]:sd a2, 160(gp)<br>    |
|  43|[0x80004358]<br>0x0000001400000000|- rs2_val == 68719476736<br> - rs1_val == 17179869184<br>                                                                                                                                                                 |[0x80000710]:add a2, a0, a1<br> [0x80000714]:sd a2, 168(gp)<br>    |
|  44|[0x80004360]<br>0x000000077FFFFFFF|- rs2_val == -2147483649<br> - rs1_val == 34359738368<br>                                                                                                                                                                 |[0x8000072c]:add a2, a0, a1<br> [0x80000730]:sd a2, 176(gp)<br>    |
|  45|[0x80004368]<br>0xF000000FFFFFFFFF|- rs2_val == -1152921504606846977<br> - rs1_val == 68719476736<br>                                                                                                                                                        |[0x80000748]:add a2, a0, a1<br> [0x8000074c]:sd a2, 184(gp)<br>    |
|  46|[0x80004370]<br>0x0000001FFBFFFFFF|- rs2_val == -67108865<br> - rs1_val == 137438953472<br>                                                                                                                                                                  |[0x80000760]:add a2, a0, a1<br> [0x80000764]:sd a2, 192(gp)<br>    |
|  47|[0x80004378]<br>0x0000003FFFFFEFFF|- rs2_val == -4097<br> - rs1_val == 274877906944<br>                                                                                                                                                                      |[0x80000778]:add a2, a0, a1<br> [0x8000077c]:sd a2, 200(gp)<br>    |
|  48|[0x80004380]<br>0xF000007FFFFFFFFF|- rs1_val == 549755813888<br>                                                                                                                                                                                             |[0x80000794]:add a2, a0, a1<br> [0x80000798]:sd a2, 208(gp)<br>    |
|  49|[0x80004388]<br>0xFFFFC0FFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == 1099511627776<br>                                                                                                                                                           |[0x800007b0]:add a2, a0, a1<br> [0x800007b4]:sd a2, 216(gp)<br>    |
|  50|[0x80004390]<br>0xFFFFC1FFFFFFFFFF|- rs1_val == 2199023255552<br>                                                                                                                                                                                            |[0x800007cc]:add a2, a0, a1<br> [0x800007d0]:sd a2, 224(gp)<br>    |
|  51|[0x80004398]<br>0x0002040000000000|- rs2_val == 562949953421312<br> - rs1_val == 4398046511104<br>                                                                                                                                                           |[0x800007e4]:add a2, a0, a1<br> [0x800007e8]:sd a2, 232(gp)<br>    |
|  52|[0x800043a0]<br>0xAAAAB2AAAAAAAAAA|- rs2_val == -6148914691236517206<br> - rs1_val == 8796093022208<br>                                                                                                                                                      |[0x80000814]:add a2, a0, a1<br> [0x80000818]:sd a2, 240(gp)<br>    |
|  53|[0x800043a8]<br>0x0400100000000000|- rs2_val == 288230376151711744<br> - rs1_val == 17592186044416<br>                                                                                                                                                       |[0x8000082c]:add a2, a0, a1<br> [0x80000830]:sd a2, 248(gp)<br>    |
|  54|[0x800043b0]<br>0x0000200040000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                           |[0x80000840]:add a2, a0, a1<br> [0x80000844]:sd a2, 256(gp)<br>    |
|  55|[0x800043b8]<br>0x00003DFFFFFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 70368744177664<br>                                                                                                                                                           |[0x8000085c]:add a2, a0, a1<br> [0x80000860]:sd a2, 264(gp)<br>    |
|  56|[0x800043c0]<br>0x00007FFFBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 140737488355328<br>                                                                                                                                                             |[0x80000874]:add a2, a0, a1<br> [0x80000878]:sd a2, 272(gp)<br>    |
|  57|[0x800043c8]<br>0xF800FFFFFFFFFFFF|- rs2_val == -576460752303423489<br> - rs1_val == 281474976710656<br>                                                                                                                                                     |[0x80000890]:add a2, a0, a1<br> [0x80000894]:sd a2, 280(gp)<br>    |
|  58|[0x800043d0]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == 562949953421312<br>                                                                                                                                                                                          |[0x800008ac]:add a2, a0, a1<br> [0x800008b0]:sd a2, 288(gp)<br>    |
|  59|[0x800043d8]<br>0x0003FFFFFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 1125899906842624<br>                                                                                                                                                               |[0x800008c4]:add a2, a0, a1<br> [0x800008c8]:sd a2, 296(gp)<br>    |
|  60|[0x800043e0]<br>0x0808000000000000|- rs2_val == 576460752303423488<br> - rs1_val == 2251799813685248<br>                                                                                                                                                     |[0x800008dc]:add a2, a0, a1<br> [0x800008e0]:sd a2, 304(gp)<br>    |
|  61|[0x800043e8]<br>0x000FFFF7FFFFFFFF|- rs2_val == -34359738369<br> - rs1_val == 4503599627370496<br>                                                                                                                                                           |[0x800008f8]:add a2, a0, a1<br> [0x800008fc]:sd a2, 312(gp)<br>    |
|  62|[0x800043f0]<br>0x003FFFFFFFFFFEFF|- rs2_val == -257<br> - rs1_val == 18014398509481984<br>                                                                                                                                                                  |[0x8000090c]:add a2, a0, a1<br> [0x80000910]:sd a2, 320(gp)<br>    |
|  63|[0x800043f8]<br>0x0080000100000000|- rs2_val == 4294967296<br> - rs1_val == 36028797018963968<br>                                                                                                                                                            |[0x80000924]:add a2, a0, a1<br> [0x80000928]:sd a2, 328(gp)<br>    |
|  64|[0x80004400]<br>0x0100000000400000|- rs2_val == 4194304<br> - rs1_val == 72057594037927936<br>                                                                                                                                                               |[0x80000938]:add a2, a0, a1<br> [0x8000093c]:sd a2, 336(gp)<br>    |
|  65|[0x80004408]<br>0x0500000000000000|- rs2_val == 72057594037927936<br> - rs1_val == 288230376151711744<br>                                                                                                                                                    |[0x80000950]:add a2, a0, a1<br> [0x80000954]:sd a2, 344(gp)<br>    |
|  66|[0x80004410]<br>0x0800000002000000|- rs2_val == 33554432<br> - rs1_val == 576460752303423488<br>                                                                                                                                                             |[0x80000964]:add a2, a0, a1<br> [0x80000968]:sd a2, 352(gp)<br>    |
|  67|[0x80004418]<br>0x1000080000000000|- rs2_val == 8796093022208<br> - rs1_val == 1152921504606846976<br>                                                                                                                                                       |[0x8000097c]:add a2, a0, a1<br> [0x80000980]:sd a2, 360(gp)<br>    |
|  68|[0x80004420]<br>0x2000000100000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                      |[0x80000994]:add a2, a0, a1<br> [0x80000998]:sd a2, 368(gp)<br>    |
|  69|[0x80004428]<br>0x2FFFFFFFFFFFFFFF|- rs1_val == 4611686018427387904<br>                                                                                                                                                                                      |[0x800009b0]:add a2, a0, a1<br> [0x800009b4]:sd a2, 376(gp)<br>    |
|  70|[0x80004430]<br>0xFFFFFF7FFFFFFFFD|- rs1_val == -2<br>                                                                                                                                                                                                       |[0x800009c8]:add a2, a0, a1<br> [0x800009cc]:sd a2, 384(gp)<br>    |
|  71|[0x80004438]<br>0x00000007FFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                                       |[0x800009dc]:add a2, a0, a1<br> [0x800009e0]:sd a2, 392(gp)<br>    |
|  72|[0x80004440]<br>0x1FFFFFFFFFFFFFFB|- rs2_val == 2305843009213693952<br> - rs1_val == -5<br>                                                                                                                                                                  |[0x800009f0]:add a2, a0, a1<br> [0x800009f4]:sd a2, 400(gp)<br>    |
|  73|[0x80004450]<br>0x00000000007FFFEF|- rs1_val == -17<br>                                                                                                                                                                                                      |[0x80000a14]:add a2, a0, a1<br> [0x80000a18]:sd a2, 416(gp)<br>    |
|  74|[0x80004458]<br>0xFF7FFFFFFFFFFFDE|- rs1_val == -33<br>                                                                                                                                                                                                      |[0x80000a2c]:add a2, a0, a1<br> [0x80000a30]:sd a2, 424(gp)<br>    |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFBBE|- rs2_val == -1025<br> - rs1_val == -65<br>                                                                                                                                                                               |[0x80000a3c]:add a2, a0, a1<br> [0x80000a40]:sd a2, 432(gp)<br>    |
|  76|[0x80004468]<br>0x0000000000003F7F|- rs2_val == 16384<br> - rs1_val == -129<br>                                                                                                                                                                              |[0x80000a4c]:add a2, a0, a1<br> [0x80000a50]:sd a2, 440(gp)<br>    |
|  77|[0x80004470]<br>0xFFF0000000000000|- rs2_val == -4503599627370497<br>                                                                                                                                                                                        |[0x80000a64]:add a2, a0, a1<br> [0x80000a68]:sd a2, 448(gp)<br>    |
|  78|[0x80004478]<br>0xFFDFFFDFFFFFFFFE|- rs2_val == -9007199254740993<br> - rs1_val == -137438953473<br>                                                                                                                                                         |[0x80000a84]:add a2, a0, a1<br> [0x80000a88]:sd a2, 456(gp)<br>    |
|  79|[0x80004480]<br>0xFFC0000000000004|- rs2_val == -18014398509481985<br>                                                                                                                                                                                       |[0x80000a9c]:add a2, a0, a1<br> [0x80000aa0]:sd a2, 464(gp)<br>    |
|  80|[0x80004488]<br>0x0EFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                                                                                                       |[0x80000ab8]:add a2, a0, a1<br> [0x80000abc]:sd a2, 472(gp)<br>    |
|  81|[0x80004490]<br>0x01FFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                                                                                      |[0x80000ad4]:add a2, a0, a1<br> [0x80000ad8]:sd a2, 480(gp)<br>    |
|  82|[0x80004498]<br>0xFC00000000000001|- rs2_val == -288230376151711745<br>                                                                                                                                                                                      |[0x80000aec]:add a2, a0, a1<br> [0x80000af0]:sd a2, 488(gp)<br>    |
|  83|[0x800044a0]<br>0x9FFFFFFFFFFFFFFE|- rs2_val == -4611686018427387905<br> - rs1_val == -2305843009213693953<br>                                                                                                                                               |[0x80000b0c]:add a2, a0, a1<br> [0x80000b10]:sd a2, 496(gp)<br>    |
|  84|[0x800044a8]<br>0xFFFFFFFFFFFFFF0F|- rs1_val == -257<br>                                                                                                                                                                                                     |[0x80000b1c]:add a2, a0, a1<br> [0x80000b20]:sd a2, 504(gp)<br>    |
|  85|[0x800044b0]<br>0x7FFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                                                                                                     |[0x80000b30]:add a2, a0, a1<br> [0x80000b34]:sd a2, 512(gp)<br>    |
|  86|[0x800044b8]<br>0x000000003FFFFBFF|- rs1_val == -1025<br>                                                                                                                                                                                                    |[0x80000b40]:add a2, a0, a1<br> [0x80000b44]:sd a2, 520(gp)<br>    |
|  87|[0x800044c0]<br>0xFFFFFFFFFFFFF83F|- rs2_val == 64<br> - rs1_val == -2049<br>                                                                                                                                                                                |[0x80000b54]:add a2, a0, a1<br> [0x80000b58]:sd a2, 528(gp)<br>    |
|  88|[0x800044c8]<br>0x0000000000FFEFFF|- rs2_val == 16777216<br> - rs1_val == -4097<br>                                                                                                                                                                          |[0x80000b68]:add a2, a0, a1<br> [0x80000b6c]:sd a2, 536(gp)<br>    |
|  89|[0x800044d0]<br>0x0FFFFFFFFFFFDFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -8193<br>                                                                                                                                                               |[0x80000b80]:add a2, a0, a1<br> [0x80000b84]:sd a2, 544(gp)<br>    |
|  90|[0x800044d8]<br>0xFFFFFFFF7FFFBFFE|- rs1_val == -16385<br>                                                                                                                                                                                                   |[0x80000b9c]:add a2, a0, a1<br> [0x80000ba0]:sd a2, 552(gp)<br>    |
|  91|[0x800044e0]<br>0xF7FFFFFFFFFF7FFE|- rs1_val == -32769<br>                                                                                                                                                                                                   |[0x80000bb8]:add a2, a0, a1<br> [0x80000bbc]:sd a2, 560(gp)<br>    |
|  92|[0x800044e8]<br>0x00000000003EFFFF|- rs1_val == -65537<br>                                                                                                                                                                                                   |[0x80000bcc]:add a2, a0, a1<br> [0x80000bd0]:sd a2, 568(gp)<br>    |
|  93|[0x800044f0]<br>0xFBFFFFFFFFFDFFFE|- rs1_val == -131073<br>                                                                                                                                                                                                  |[0x80000be8]:add a2, a0, a1<br> [0x80000bec]:sd a2, 576(gp)<br>    |
|  94|[0x800044f8]<br>0xFFFFFFFFFFFB7FFE|- rs2_val == -32769<br> - rs1_val == -262145<br>                                                                                                                                                                          |[0x80000c00]:add a2, a0, a1<br> [0x80000c04]:sd a2, 584(gp)<br>    |
|  95|[0x80004500]<br>0xFFFFFFFFFFF7FFFE|- rs1_val == -524289<br>                                                                                                                                                                                                  |[0x80000c14]:add a2, a0, a1<br> [0x80000c18]:sd a2, 592(gp)<br>    |
|  96|[0x80004508]<br>0x1FFFFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                 |[0x80000c2c]:add a2, a0, a1<br> [0x80000c30]:sd a2, 600(gp)<br>    |
|  97|[0x80004510]<br>0xFFFFFFFFFFDFFFFB|- rs1_val == -2097153<br>                                                                                                                                                                                                 |[0x80000c40]:add a2, a0, a1<br> [0x80000c44]:sd a2, 608(gp)<br>    |
|  98|[0x80004518]<br>0xFFFFEFFFFFBFFFFE|- rs2_val == -17592186044417<br> - rs1_val == -4194305<br>                                                                                                                                                                |[0x80000c5c]:add a2, a0, a1<br> [0x80000c60]:sd a2, 616(gp)<br>    |
|  99|[0x80004520]<br>0xFFFDFFFFFEFFFFFE|- rs2_val == -562949953421313<br> - rs1_val == -16777217<br>                                                                                                                                                              |[0x80000c78]:add a2, a0, a1<br> [0x80000c7c]:sd a2, 624(gp)<br>    |
| 100|[0x80004528]<br>0xFFFFFFFFFDFFFFFD|- rs2_val == -2<br> - rs1_val == -33554433<br>                                                                                                                                                                            |[0x80000c8c]:add a2, a0, a1<br> [0x80000c90]:sd a2, 632(gp)<br>    |
| 101|[0x80004530]<br>0x0000000FFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                |[0x80000ca4]:add a2, a0, a1<br> [0x80000ca8]:sd a2, 640(gp)<br>    |
| 102|[0x80004538]<br>0xFFFFFFFFF7FFFFDE|- rs1_val == -134217729<br>                                                                                                                                                                                               |[0x80000cb8]:add a2, a0, a1<br> [0x80000cbc]:sd a2, 648(gp)<br>    |
| 103|[0x80004540]<br>0xFFFFFFFFEFF7FFFE|- rs2_val == -524289<br> - rs1_val == -268435457<br>                                                                                                                                                                      |[0x80000cd0]:add a2, a0, a1<br> [0x80000cd4]:sd a2, 656(gp)<br>    |
| 104|[0x80004548]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 536870912<br> - rs1_val == -536870913<br>                                                                                                                                                                    |[0x80000ce4]:add a2, a0, a1<br> [0x80000ce8]:sd a2, 664(gp)<br>    |
| 105|[0x80004550]<br>0xFFFFFFFFC07FFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                              |[0x80000cf8]:add a2, a0, a1<br> [0x80000cfc]:sd a2, 672(gp)<br>    |
| 106|[0x80004558]<br>0xFFFFFFFF80000006|- rs1_val == -2147483649<br>                                                                                                                                                                                              |[0x80000d10]:add a2, a0, a1<br> [0x80000d14]:sd a2, 680(gp)<br>    |
| 107|[0x80004560]<br>0xFFFFFFFF00000008|- rs1_val == -4294967297<br>                                                                                                                                                                                              |[0x80000d28]:add a2, a0, a1<br> [0x80000d2c]:sd a2, 688(gp)<br>    |
| 108|[0x80004568]<br>0xFFFFFFFDFFFFFFF7|- rs1_val == -8589934593<br>                                                                                                                                                                                              |[0x80000d40]:add a2, a0, a1<br> [0x80000d44]:sd a2, 696(gp)<br>    |
| 109|[0x80004570]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                                                                             |[0x80000d5c]:add a2, a0, a1<br> [0x80000d60]:sd a2, 704(gp)<br>    |
| 110|[0x80004578]<br>0xFFFFFFD7FFFFFFFE|- rs2_val == -137438953473<br> - rs1_val == -34359738369<br>                                                                                                                                                              |[0x80000d7c]:add a2, a0, a1<br> [0x80000d80]:sd a2, 712(gp)<br>    |
| 111|[0x80004580]<br>0xFFFFFFEFFFFFFDFE|- rs2_val == -513<br> - rs1_val == -68719476737<br>                                                                                                                                                                       |[0x80000d94]:add a2, a0, a1<br> [0x80000d98]:sd a2, 720(gp)<br>    |
| 112|[0x80004588]<br>0x000007BFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                                                            |[0x80000db0]:add a2, a0, a1<br> [0x80000db4]:sd a2, 728(gp)<br>    |
| 113|[0x80004590]<br>0xFFFFEF7FFFFFFFFE|- rs1_val == -549755813889<br>                                                                                                                                                                                            |[0x80000dd0]:add a2, a0, a1<br> [0x80000dd4]:sd a2, 736(gp)<br>    |
| 114|[0x80004598]<br>0xFFFFFF0000000007|- rs1_val == -1099511627777<br>                                                                                                                                                                                           |[0x80000de8]:add a2, a0, a1<br> [0x80000dec]:sd a2, 744(gp)<br>    |
| 115|[0x800045a0]<br>0x003FFDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                                                           |[0x80000e04]:add a2, a0, a1<br> [0x80000e08]:sd a2, 752(gp)<br>    |
| 116|[0x800045a8]<br>0xFFFFFC00007FFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                                                           |[0x80000e1c]:add a2, a0, a1<br> [0x80000e20]:sd a2, 760(gp)<br>    |
| 117|[0x800045b0]<br>0xFFFFE7FFFFFFFFFE|- rs1_val == -8796093022209<br>                                                                                                                                                                                           |[0x80000e3c]:add a2, a0, a1<br> [0x80000e40]:sd a2, 768(gp)<br>    |
| 118|[0x800045b8]<br>0xFFFFF0000000001F|- rs2_val == 32<br> - rs1_val == -17592186044417<br>                                                                                                                                                                      |[0x80000e54]:add a2, a0, a1<br> [0x80000e58]:sd a2, 776(gp)<br>    |
| 119|[0x800045c0]<br>0xFFFFE00003FFFFFF|- rs2_val == 67108864<br> - rs1_val == -35184372088833<br>                                                                                                                                                                |[0x80000e6c]:add a2, a0, a1<br> [0x80000e70]:sd a2, 784(gp)<br>    |
| 120|[0x800045c8]<br>0x0001BFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                                                          |[0x80000e88]:add a2, a0, a1<br> [0x80000e8c]:sd a2, 792(gp)<br>    |
| 121|[0x800045d0]<br>0xFFFF7FFFFFFFDFFE|- rs1_val == -140737488355329<br>                                                                                                                                                                                         |[0x80000ea4]:add a2, a0, a1<br> [0x80000ea8]:sd a2, 800(gp)<br>    |
| 122|[0x800045d8]<br>0xDFFEFFFFFFFFFFFE|- rs1_val == -281474976710657<br>                                                                                                                                                                                         |[0x80000ec4]:add a2, a0, a1<br> [0x80000ec8]:sd a2, 808(gp)<br>    |
| 123|[0x800045e0]<br>0xFFFE000001FFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                                                         |[0x80000edc]:add a2, a0, a1<br> [0x80000ee0]:sd a2, 816(gp)<br>    |
| 124|[0x800045f0]<br>0xFFF0000001FFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                                                        |[0x80000f0c]:add a2, a0, a1<br> [0x80000f10]:sd a2, 832(gp)<br>    |
| 125|[0x800045f8]<br>0xFFBFFFFFFDFFFFFE|- rs1_val == -18014398509481985<br>                                                                                                                                                                                       |[0x80000f28]:add a2, a0, a1<br> [0x80000f2c]:sd a2, 840(gp)<br>    |
| 126|[0x80004600]<br>0x1F7FFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                                                       |[0x80000f44]:add a2, a0, a1<br> [0x80000f48]:sd a2, 848(gp)<br>    |
| 127|[0x80004608]<br>0xFF00000000000006|- rs1_val == -72057594037927937<br>                                                                                                                                                                                       |[0x80000f5c]:add a2, a0, a1<br> [0x80000f60]:sd a2, 856(gp)<br>    |
| 128|[0x80004610]<br>0xFE03FFFFFFFFFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -144115188075855873<br>                                                                                                                                                    |[0x80000f78]:add a2, a0, a1<br> [0x80000f7c]:sd a2, 864(gp)<br>    |
| 129|[0x80004618]<br>0xFBFFFFFFFFFFFFF9|- rs1_val == -288230376151711745<br>                                                                                                                                                                                      |[0x80000f90]:add a2, a0, a1<br> [0x80000f94]:sd a2, 872(gp)<br>    |
| 130|[0x80004620]<br>0xF7FFFFF7FFFFFFFE|- rs1_val == -576460752303423489<br>                                                                                                                                                                                      |[0x80000fb0]:add a2, a0, a1<br> [0x80000fb4]:sd a2, 880(gp)<br>    |
| 131|[0x80004628]<br>0xF000000000FFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                                                     |[0x80000fc8]:add a2, a0, a1<br> [0x80000fcc]:sd a2, 888(gp)<br>    |
| 132|[0x80004630]<br>0xBFFFFFBFFFFFFFFE|- rs2_val == -274877906945<br> - rs1_val == -4611686018427387905<br>                                                                                                                                                      |[0x80000fe8]:add a2, a0, a1<br> [0x80000fec]:sd a2, 896(gp)<br>    |
| 133|[0x80004638]<br>0x5555555555535554|- rs2_val == -131073<br> - rs1_val == 6148914691236517205<br>                                                                                                                                                             |[0x80001018]:add a2, a0, a1<br> [0x8000101c]:sd a2, 904(gp)<br>    |
| 134|[0x80004640]<br>0xAAAAAAABAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                                                                     |[0x80001048]:add a2, a0, a1<br> [0x8000104c]:sd a2, 912(gp)<br>    |
| 135|[0x80004648]<br>0xFFFFFFFFFFFF8001|- rs2_val == 2<br>                                                                                                                                                                                                        |[0x8000105c]:add a2, a0, a1<br> [0x80001060]:sd a2, 920(gp)<br>    |
| 136|[0x80004650]<br>0xFFFFFFFFF0000003|- rs2_val == 4<br>                                                                                                                                                                                                        |[0x80001070]:add a2, a0, a1<br> [0x80001074]:sd a2, 928(gp)<br>    |
| 137|[0x80004658]<br>0x00000000000000BF|- rs2_val == 256<br>                                                                                                                                                                                                      |[0x80001080]:add a2, a0, a1<br> [0x80001084]:sd a2, 936(gp)<br>    |
| 138|[0x80004660]<br>0xFFFFFFF8000001FF|- rs2_val == 512<br>                                                                                                                                                                                                      |[0x80001098]:add a2, a0, a1<br> [0x8000109c]:sd a2, 944(gp)<br>    |
| 139|[0x80004668]<br>0x0008000000000400|- rs2_val == 1024<br>                                                                                                                                                                                                     |[0x800010ac]:add a2, a0, a1<br> [0x800010b0]:sd a2, 952(gp)<br>    |
| 140|[0x80004670]<br>0x0000000000401000|- rs2_val == 4096<br>                                                                                                                                                                                                     |[0x800010bc]:add a2, a0, a1<br> [0x800010c0]:sd a2, 960(gp)<br>    |
| 141|[0x80004678]<br>0x0000000000001FFE|- rs2_val == 8192<br>                                                                                                                                                                                                     |[0x800010cc]:add a2, a0, a1<br> [0x800010d0]:sd a2, 968(gp)<br>    |
| 142|[0x80004680]<br>0xFFFFFFFFFC007FFF|- rs2_val == 32768<br>                                                                                                                                                                                                    |[0x800010e0]:add a2, a0, a1<br> [0x800010e4]:sd a2, 976(gp)<br>    |
| 143|[0x80004688]<br>0x000000000007FFF9|- rs2_val == 524288<br>                                                                                                                                                                                                   |[0x800010f0]:add a2, a0, a1<br> [0x800010f4]:sd a2, 984(gp)<br>    |
| 144|[0x80004690]<br>0x8000000000100000|- rs1_val == (-2**(xlen-1))<br> - rs2_val == 1048576<br> - rs1_val == -9223372036854775808<br>                                                                                                                            |[0x80001104]:add a2, a0, a1<br> [0x80001108]:sd a2, 992(gp)<br>    |
| 145|[0x80004698]<br>0xFFFFFFFFC01FFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                  |[0x80001118]:add a2, a0, a1<br> [0x8000111c]:sd a2, 1000(gp)<br>   |
| 146|[0x800046a0]<br>0x4000000008000000|- rs2_val == 134217728<br>                                                                                                                                                                                                |[0x8000112c]:add a2, a0, a1<br> [0x80001130]:sd a2, 1008(gp)<br>   |
| 147|[0x800046a8]<br>0x000000007FFFFFFA|- rs2_val == 2147483648<br>                                                                                                                                                                                               |[0x80001140]:add a2, a0, a1<br> [0x80001144]:sd a2, 1016(gp)<br>   |
| 148|[0x800046b0]<br>0x0000002002000000|- rs2_val == 137438953472<br>                                                                                                                                                                                             |[0x80001154]:add a2, a0, a1<br> [0x80001158]:sd a2, 1024(gp)<br>   |
| 149|[0x800046b8]<br>0x0000044000000000|- rs2_val == 274877906944<br>                                                                                                                                                                                             |[0x8000116c]:add a2, a0, a1<br> [0x80001170]:sd a2, 1032(gp)<br>   |
| 150|[0x800046c0]<br>0x0000007FFFFFFEFF|- rs2_val == 549755813888<br>                                                                                                                                                                                             |[0x80001180]:add a2, a0, a1<br> [0x80001184]:sd a2, 1040(gp)<br>   |
| 151|[0x800046c8]<br>0x000000FFF7FFFFFF|- rs2_val == 1099511627776<br>                                                                                                                                                                                            |[0x80001198]:add a2, a0, a1<br> [0x8000119c]:sd a2, 1048(gp)<br>   |
| 152|[0x800046d0]<br>0xFE07FFFFFFFFFFFF|- rs2_val == 2251799813685248<br>                                                                                                                                                                                         |[0x800011b4]:add a2, a0, a1<br> [0x800011b8]:sd a2, 1056(gp)<br>   |
| 153|[0x800046d8]<br>0x0010000000000020|- rs2_val == 4503599627370496<br>                                                                                                                                                                                         |[0x800011c8]:add a2, a0, a1<br> [0x800011cc]:sd a2, 1064(gp)<br>   |
| 154|[0x800046e0]<br>0x1020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                                                                                         |[0x800011e0]:add a2, a0, a1<br> [0x800011e4]:sd a2, 1072(gp)<br>   |
| 155|[0x800046e8]<br>0x007FFFFFFFFFFDFF|- rs2_val == 36028797018963968<br>                                                                                                                                                                                        |[0x800011f4]:add a2, a0, a1<br> [0x800011f8]:sd a2, 1080(gp)<br>   |
| 156|[0x800046f0]<br>0x01FFFFFEFFFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                                                                                                       |[0x80001210]:add a2, a0, a1<br> [0x80001214]:sd a2, 1088(gp)<br>   |
| 157|[0x800046f8]<br>0x8000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                                                                                      |[0x80001228]:add a2, a0, a1<br> [0x8000122c]:sd a2, 1096(gp)<br>   |
| 158|[0x80004700]<br>0x000000000000006F|- rs2_val == -17<br>                                                                                                                                                                                                      |[0x80001238]:add a2, a0, a1<br> [0x8000123c]:sd a2, 1104(gp)<br>   |
| 159|[0x80004708]<br>0xBFFFFFFFFFFFFF7E|- rs2_val == -129<br>                                                                                                                                                                                                     |[0x80001250]:add a2, a0, a1<br> [0x80001254]:sd a2, 1112(gp)<br>   |
| 160|[0x80004710]<br>0xFFFFFFFFFFFEFFFE|- rs2_val == -65537<br>                                                                                                                                                                                                   |[0x80001264]:add a2, a0, a1<br> [0x80001268]:sd a2, 1120(gp)<br>   |
| 161|[0x80004718]<br>0x0000040000008000|- rs2_val == 4398046511104<br>                                                                                                                                                                                            |[0x80001278]:add a2, a0, a1<br> [0x8000127c]:sd a2, 1128(gp)<br>   |
| 162|[0x80004720]<br>0xFFFFFFFFFFF3FFFE|- rs2_val == -262145<br>                                                                                                                                                                                                  |[0x80001290]:add a2, a0, a1<br> [0x80001294]:sd a2, 1136(gp)<br>   |
| 163|[0x80004728]<br>0x3FFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                                                 |[0x800012a8]:add a2, a0, a1<br> [0x800012ac]:sd a2, 1144(gp)<br>   |
| 164|[0x80004730]<br>0xFFFFFFFFFEEFFFFE|- rs2_val == -16777217<br>                                                                                                                                                                                                |[0x800012c0]:add a2, a0, a1<br> [0x800012c4]:sd a2, 1152(gp)<br>   |
| 165|[0x80004738]<br>0xFFFFFFFFF800007F|- rs2_val == -134217729<br>                                                                                                                                                                                               |[0x800012d4]:add a2, a0, a1<br> [0x800012d8]:sd a2, 1160(gp)<br>   |
| 166|[0x80004740]<br>0xFFFFFFFFF000FFFF|- rs2_val == -268435457<br>                                                                                                                                                                                               |[0x800012e8]:add a2, a0, a1<br> [0x800012ec]:sd a2, 1168(gp)<br>   |
| 167|[0x80004748]<br>0xFFFDFFFFDFFFFFFE|- rs2_val == -536870913<br>                                                                                                                                                                                               |[0x80001304]:add a2, a0, a1<br> [0x80001308]:sd a2, 1176(gp)<br>   |
| 168|[0x80004750]<br>0xFFFFFFFF000007FF|- rs2_val == -4294967297<br>                                                                                                                                                                                              |[0x80001320]:add a2, a0, a1<br> [0x80001324]:sd a2, 1184(gp)<br>   |
| 169|[0x80004758]<br>0x0000200010000000|- rs2_val == 35184372088832<br>                                                                                                                                                                                           |[0x80001334]:add a2, a0, a1<br> [0x80001338]:sd a2, 1192(gp)<br>   |
| 170|[0x80004760]<br>0x7FFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                                                                                                              |[0x80001350]:add a2, a0, a1<br> [0x80001354]:sd a2, 1200(gp)<br>   |
| 171|[0x80004768]<br>0xFFFFFEFBFFFFFFFE|- rs2_val == -17179869185<br>                                                                                                                                                                                             |[0x80001370]:add a2, a0, a1<br> [0x80001374]:sd a2, 1208(gp)<br>   |
| 172|[0x80004770]<br>0x3FFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                                                                                             |[0x8000138c]:add a2, a0, a1<br> [0x80001390]:sd a2, 1216(gp)<br>   |
| 173|[0x80004778]<br>0x03FFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                                                                                           |[0x800013a8]:add a2, a0, a1<br> [0x800013ac]:sd a2, 1224(gp)<br>   |
| 174|[0x80004780]<br>0xFFFF81FFFFFFFFFF|- rs2_val == 2199023255552<br>                                                                                                                                                                                            |[0x800013c4]:add a2, a0, a1<br> [0x800013c8]:sd a2, 1232(gp)<br>   |
| 175|[0x80004788]<br>0xFFFFFC00000007FF|- rs2_val == -4398046511105<br>                                                                                                                                                                                           |[0x800013e0]:add a2, a0, a1<br> [0x800013e4]:sd a2, 1240(gp)<br>   |
| 176|[0x80004790]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                                                                                           |[0x800013fc]:add a2, a0, a1<br> [0x80001400]:sd a2, 1248(gp)<br>   |
| 177|[0x80004798]<br>0x0000100004000000|- rs2_val == 17592186044416<br>                                                                                                                                                                                           |[0x80001410]:add a2, a0, a1<br> [0x80001414]:sd a2, 1256(gp)<br>   |
| 178|[0x800047a0]<br>0xFFFF5FFFFFFFFFFE|- rs2_val == -35184372088833<br>                                                                                                                                                                                          |[0x80001430]:add a2, a0, a1<br> [0x80001434]:sd a2, 1264(gp)<br>   |
| 179|[0x800047a8]<br>0xC000400000000000|- rs2_val == 70368744177664<br>                                                                                                                                                                                           |[0x80001448]:add a2, a0, a1<br> [0x8000144c]:sd a2, 1272(gp)<br>   |
| 180|[0x800047b0]<br>0xFBFF7FFFFFFFFFFE|- rs2_val == -140737488355329<br>                                                                                                                                                                                         |[0x80001468]:add a2, a0, a1<br> [0x8000146c]:sd a2, 1280(gp)<br>   |
| 181|[0x800047b8]<br>0xFFFEFFFFF7FFFFFE|- rs2_val == -281474976710657<br>                                                                                                                                                                                         |[0x80001484]:add a2, a0, a1<br> [0x80001488]:sd a2, 1288(gp)<br>   |
| 182|[0x800047c0]<br>0x001BFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                                                        |[0x800014a0]:add a2, a0, a1<br> [0x800014a4]:sd a2, 1296(gp)<br>   |
| 183|[0x800047d0]<br>0x7FFFFFFFFFFFFFF6|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                                                                                     |[0x800014d4]:add a2, a0, a1<br> [0x800014d8]:sd a2, 1312(gp)<br>   |
| 184|[0x800047d8]<br>0x0000800000000008|- rs2_val == 140737488355328<br>                                                                                                                                                                                          |[0x800014e8]:add a2, a0, a1<br> [0x800014ec]:sd a2, 1320(gp)<br>   |
| 185|[0x800047e0]<br>0x00000000000000DF|- rs1_val == 256<br>                                                                                                                                                                                                      |[0x800014f8]:add a2, a0, a1<br> [0x800014fc]:sd a2, 1328(gp)<br>   |
