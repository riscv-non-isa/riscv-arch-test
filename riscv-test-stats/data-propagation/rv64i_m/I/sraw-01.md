
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800010a0')]      |
| SIG_REGION                | [('0x80003010', '0x800034e0', '154 dwords')]      |
| COV_LABELS                | sraw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sraw-01.S/sraw-01.S    |
| Total Number of coverpoints| 275     |
| Total Coverpoints Hit     | 275      |
| Total Signature Updates   | 154      |
| STAT1                     | 150      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000104c]:sraw a2, a0, a1
      [0x80001050]:sd a2, 1064(t1)
 -- Signature Address: 0x800034b8 Data: 0xFFFFFFFFFFFFFF7F
 -- Redundant Coverpoints hit by the op
      - opcode : sraw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -257
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001060]:sraw a2, a0, a1
      [0x80001064]:sd a2, 1072(t1)
 -- Signature Address: 0x800034c0 Data: 0xFFFFFFFFFFFDFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sraw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val == 0
      - rs1_val == -131073




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001074]:sraw a2, a0, a1
      [0x80001078]:sd a2, 1080(t1)
 -- Signature Address: 0x800034c8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sraw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == -9223372036854775808




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001094]:sraw a2, a0, a1
      [0x80001098]:sd a2, 1096(t1)
 -- Signature Address: 0x800034d8 Data: 0x0000000000001000
 -- Redundant Coverpoints hit by the op
      - opcode : sraw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 16384
      - rs2_val == 2






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

|s.no|            signature             |                                                                                                coverpoints                                                                                                 |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFFFFFFFFFFFFFFFF|- opcode : sraw<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs1_val == -257<br>                                                                                              |[0x800003a0]:sraw sp, a3, a3<br> [0x800003a4]:sd sp, 0(gp)<br>      |
|   2|[0x80003018]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 4096<br>                                                             |[0x800003b0]:sraw a5, t0, a5<br> [0x800003b4]:sd a5, 8(gp)<br>      |
|   3|[0x80003020]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs1_val == -131073<br>                                                                                                                 |[0x800003c8]:sraw t1, t1, t1<br> [0x800003cc]:sd t1, 16(gp)<br>     |
|   4|[0x80003028]<br>0x0000000000080000|- rs1 : x25<br> - rs2 : x26<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 524288<br>                                                     |[0x800003d8]:sraw a3, s9, s10<br> [0x800003dc]:sd a3, 24(gp)<br>    |
|   5|[0x80003030]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x11<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                                                           |[0x800003e8]:sraw s7, s7, a1<br> [0x800003ec]:sd s7, 32(gp)<br>     |
|   6|[0x80003038]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x18<br> - rd : x0<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br> |[0x800003fc]:sraw zero, s1, s2<br> [0x80000400]:sd zero, 40(gp)<br> |
|   7|[0x80003040]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x27<br> - rd : x9<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                                       |[0x8000040c]:sraw s1, a1, s11<br> [0x80000410]:sd s1, 48(gp)<br>    |
|   8|[0x80003048]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rs2 : x12<br> - rd : x8<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br> - rs2_val == 21<br>                                 |[0x80000424]:sraw fp, t5, a2<br> [0x80000428]:sd fp, 56(gp)<br>     |
|   9|[0x80003050]<br>0x0000000000000001|- rs1 : x29<br> - rs2 : x7<br> - rd : x21<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                     |[0x80000434]:sraw s5, t4, t2<br> [0x80000438]:sd s5, 64(gp)<br>     |
|  10|[0x80003058]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x24<br> - rd : x5<br> - rs2_val == 10<br>                                                                                                                                            |[0x80000444]:sraw t0, zero, s8<br> [0x80000448]:sd t0, 72(gp)<br>   |
|  11|[0x80003060]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x22<br> - rd : x27<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                          |[0x80000454]:sraw s11, s3, s6<br> [0x80000458]:sd s11, 80(gp)<br>   |
|  12|[0x80003068]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x4<br> - rd : x1<br> - rs1_val == 8<br>                                                                                                                                             |[0x80000464]:sraw ra, a7, tp<br> [0x80000468]:sd ra, 88(gp)<br>     |
|  13|[0x80003070]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x25<br> - rd : x31<br> - rs1_val == 16<br> - rs2_val == 23<br>                                                                                                                       |[0x80000474]:sraw t6, ra, s9<br> [0x80000478]:sd t6, 96(gp)<br>     |
|  14|[0x80003078]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x30<br> - rs1_val == 32<br> - rs2_val == 15<br>                                                                                                                       |[0x80000484]:sraw t5, a0, s1<br> [0x80000488]:sd t5, 104(gp)<br>    |
|  15|[0x80003080]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x23<br> - rd : x26<br> - rs1_val == 64<br>                                                                                                                                          |[0x80000494]:sraw s10, a6, s7<br> [0x80000498]:sd s10, 112(gp)<br>  |
|  16|[0x80003088]<br>0x0000000000000008|- rs1 : x21<br> - rs2 : x8<br> - rd : x28<br> - rs1_val == 128<br> - rs2_val == 4<br>                                                                                                                       |[0x800004a4]:sraw t3, s5, fp<br> [0x800004a8]:sd t3, 120(gp)<br>    |
|  17|[0x80003090]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x16<br> - rd : x24<br> - rs1_val == 256<br>                                                                                                                                         |[0x800004bc]:sraw s8, s4, a6<br> [0x800004c0]:sd s8, 0(t1)<br>      |
|  18|[0x80003098]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x2<br> - rd : x17<br> - rs1_val == 512<br>                                                                                                                                          |[0x800004cc]:sraw a7, s11, sp<br> [0x800004d0]:sd a7, 8(t1)<br>     |
|  19|[0x800030a0]<br>0x0000000000000020|- rs1 : x15<br> - rs2 : x10<br> - rd : x22<br> - rs1_val == 1024<br>                                                                                                                                        |[0x800004dc]:sraw s6, a5, a0<br> [0x800004e0]:sd s6, 16(t1)<br>     |
|  20|[0x800030a8]<br>0x0000000000000002|- rs1 : x7<br> - rs2 : x30<br> - rd : x11<br> - rs1_val == 2048<br>                                                                                                                                         |[0x800004f0]:sraw a1, t2, t5<br> [0x800004f4]:sd a1, 24(t1)<br>     |
|  21|[0x800030b0]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x1<br> - rd : x25<br> - rs1_val == 8192<br> - rs2_val == 27<br>                                                                                                                     |[0x80000500]:sraw s9, t3, ra<br> [0x80000504]:sd s9, 32(t1)<br>     |
|  22|[0x800030b8]<br>0x0000000000004000|- rs1 : x31<br> - rs2 : x0<br> - rd : x12<br> - rs1_val == 16384<br>                                                                                                                                        |[0x80000510]:sraw a2, t6, zero<br> [0x80000514]:sd a2, 40(t1)<br>   |
|  23|[0x800030c0]<br>0x0000000000000010|- rs1 : x22<br> - rs2 : x29<br> - rd : x20<br> - rs1_val == 32768<br>                                                                                                                                       |[0x80000520]:sraw s4, s6, t4<br> [0x80000524]:sd s4, 48(t1)<br>     |
|  24|[0x800030c8]<br>0x0000000000000001|- rs1 : x14<br> - rs2 : x28<br> - rd : x3<br> - rs1_val == 65536<br> - rs2_val == 16<br>                                                                                                                    |[0x80000530]:sraw gp, a4, t3<br> [0x80000534]:sd gp, 56(t1)<br>     |
|  25|[0x800030d0]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x21<br> - rd : x29<br> - rs1_val == 131072<br>                                                                                                                                       |[0x80000540]:sraw t4, gp, s5<br> [0x80000544]:sd t4, 64(t1)<br>     |
|  26|[0x800030d8]<br>0x0000000000000004|- rs1 : x24<br> - rs2 : x20<br> - rd : x14<br> - rs1_val == 262144<br>                                                                                                                                      |[0x80000550]:sraw a4, s8, s4<br> [0x80000554]:sd a4, 72(t1)<br>     |
|  27|[0x800030e0]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x19<br> - rd : x10<br> - rs1_val == 1048576<br> - rs2_val == 29<br>                                                                                                                  |[0x80000560]:sraw a0, sp, s3<br> [0x80000564]:sd a0, 80(t1)<br>     |
|  28|[0x800030e8]<br>0x0000000000000080|- rs1 : x18<br> - rs2 : x14<br> - rd : x16<br> - rs1_val == 2097152<br>                                                                                                                                     |[0x80000570]:sraw a6, s2, a4<br> [0x80000574]:sd a6, 88(t1)<br>     |
|  29|[0x800030f0]<br>0x0000000000000010|- rs1 : x12<br> - rs2 : x17<br> - rd : x18<br> - rs1_val == 4194304<br>                                                                                                                                     |[0x80000580]:sraw s2, a2, a7<br> [0x80000584]:sd s2, 96(t1)<br>     |
|  30|[0x800030f8]<br>0x0000000000000400|- rs1 : x8<br> - rs2 : x5<br> - rd : x4<br> - rs1_val == 8388608<br>                                                                                                                                        |[0x80000590]:sraw tp, fp, t0<br> [0x80000594]:sd tp, 104(t1)<br>    |
|  31|[0x80003100]<br>0x0000000000008000|- rs1 : x4<br> - rs2 : x31<br> - rd : x7<br> - rs1_val == 16777216<br>                                                                                                                                      |[0x800005a0]:sraw t2, tp, t6<br> [0x800005a4]:sd t2, 112(t1)<br>    |
|  32|[0x80003108]<br>0x0000000000020000|- rs1 : x26<br> - rs2 : x3<br> - rd : x19<br> - rs1_val == 33554432<br> - rs2_val == 8<br>                                                                                                                  |[0x800005b0]:sraw s3, s10, gp<br> [0x800005b4]:sd s3, 120(t1)<br>   |
|  33|[0x80003110]<br>0x0000000000000000|- rs1_val == 67108864<br> - rs2_val == 30<br>                                                                                                                                                               |[0x800005c0]:sraw a2, a0, a1<br> [0x800005c4]:sd a2, 128(t1)<br>    |
|  34|[0x80003118]<br>0x0000000000008000|- rs1_val == 134217728<br>                                                                                                                                                                                  |[0x800005d0]:sraw a2, a0, a1<br> [0x800005d4]:sd a2, 136(t1)<br>    |
|  35|[0x80003120]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                                                                  |[0x800005e0]:sraw a2, a0, a1<br> [0x800005e4]:sd a2, 144(t1)<br>    |
|  36|[0x80003128]<br>0x0000000020000000|- rs1_val == 536870912<br>                                                                                                                                                                                  |[0x800005f0]:sraw a2, a0, a1<br> [0x800005f4]:sd a2, 152(t1)<br>    |
|  37|[0x80003130]<br>0x0000000000000001|- rs1_val == 1073741824<br>                                                                                                                                                                                 |[0x80000600]:sraw a2, a0, a1<br> [0x80000604]:sd a2, 160(t1)<br>    |
|  38|[0x80003138]<br>0xFFFFFFFFFFFC0000|- rs1_val == 2147483648<br>                                                                                                                                                                                 |[0x80000614]:sraw a2, a0, a1<br> [0x80000618]:sd a2, 168(t1)<br>    |
|  39|[0x80003140]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                                                                 |[0x80000628]:sraw a2, a0, a1<br> [0x8000062c]:sd a2, 176(t1)<br>    |
|  40|[0x80003148]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                                                 |[0x8000063c]:sraw a2, a0, a1<br> [0x80000640]:sd a2, 184(t1)<br>    |
|  41|[0x80003150]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                                |[0x80000650]:sraw a2, a0, a1<br> [0x80000654]:sd a2, 192(t1)<br>    |
|  42|[0x80003158]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                                |[0x80000664]:sraw a2, a0, a1<br> [0x80000668]:sd a2, 200(t1)<br>    |
|  43|[0x80003160]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                                                                |[0x80000678]:sraw a2, a0, a1<br> [0x8000067c]:sd a2, 208(t1)<br>    |
|  44|[0x80003168]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                                                               |[0x8000068c]:sraw a2, a0, a1<br> [0x80000690]:sd a2, 216(t1)<br>    |
|  45|[0x80003170]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                               |[0x800006a0]:sraw a2, a0, a1<br> [0x800006a4]:sd a2, 224(t1)<br>    |
|  46|[0x80003178]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                               |[0x800006b4]:sraw a2, a0, a1<br> [0x800006b8]:sd a2, 232(t1)<br>    |
|  47|[0x80003180]<br>0x0000000000000000|- rs1_val == 1099511627776<br> - rs2_val == 1<br>                                                                                                                                                           |[0x800006c8]:sraw a2, a0, a1<br> [0x800006cc]:sd a2, 240(t1)<br>    |
|  48|[0x80003188]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                              |[0x800006dc]:sraw a2, a0, a1<br> [0x800006e0]:sd a2, 248(t1)<br>    |
|  49|[0x80003190]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                              |[0x800006f0]:sraw a2, a0, a1<br> [0x800006f4]:sd a2, 256(t1)<br>    |
|  50|[0x80003198]<br>0x0000000000000000|- rs1_val == 8796093022208<br> - rs2_val == 2<br>                                                                                                                                                           |[0x80000704]:sraw a2, a0, a1<br> [0x80000708]:sd a2, 264(t1)<br>    |
|  51|[0x800031a0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                             |[0x80000718]:sraw a2, a0, a1<br> [0x8000071c]:sd a2, 272(t1)<br>    |
|  52|[0x800031a8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                             |[0x8000072c]:sraw a2, a0, a1<br> [0x80000730]:sd a2, 280(t1)<br>    |
|  53|[0x800031b0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                             |[0x80000740]:sraw a2, a0, a1<br> [0x80000744]:sd a2, 288(t1)<br>    |
|  54|[0x800031b8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                            |[0x80000754]:sraw a2, a0, a1<br> [0x80000758]:sd a2, 296(t1)<br>    |
|  55|[0x800031c0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                            |[0x80000768]:sraw a2, a0, a1<br> [0x8000076c]:sd a2, 304(t1)<br>    |
|  56|[0x800031c8]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                            |[0x8000077c]:sraw a2, a0, a1<br> [0x80000780]:sd a2, 312(t1)<br>    |
|  57|[0x800031d0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                                           |[0x80000790]:sraw a2, a0, a1<br> [0x80000794]:sd a2, 320(t1)<br>    |
|  58|[0x800031d8]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                           |[0x800007a4]:sraw a2, a0, a1<br> [0x800007a8]:sd a2, 328(t1)<br>    |
|  59|[0x800031e0]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                           |[0x800007b8]:sraw a2, a0, a1<br> [0x800007bc]:sd a2, 336(t1)<br>    |
|  60|[0x800031e8]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                           |[0x800007cc]:sraw a2, a0, a1<br> [0x800007d0]:sd a2, 344(t1)<br>    |
|  61|[0x800031f0]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                          |[0x800007e0]:sraw a2, a0, a1<br> [0x800007e4]:sd a2, 352(t1)<br>    |
|  62|[0x800031f8]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                          |[0x800007f4]:sraw a2, a0, a1<br> [0x800007f8]:sd a2, 360(t1)<br>    |
|  63|[0x80003200]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                          |[0x80000808]:sraw a2, a0, a1<br> [0x8000080c]:sd a2, 368(t1)<br>    |
|  64|[0x80003208]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                         |[0x8000081c]:sraw a2, a0, a1<br> [0x80000820]:sd a2, 376(t1)<br>    |
|  65|[0x80003210]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                         |[0x80000830]:sraw a2, a0, a1<br> [0x80000834]:sd a2, 384(t1)<br>    |
|  66|[0x80003218]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                         |[0x80000844]:sraw a2, a0, a1<br> [0x80000848]:sd a2, 392(t1)<br>    |
|  67|[0x80003220]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                        |[0x80000858]:sraw a2, a0, a1<br> [0x8000085c]:sd a2, 400(t1)<br>    |
|  68|[0x80003228]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                        |[0x8000086c]:sraw a2, a0, a1<br> [0x80000870]:sd a2, 408(t1)<br>    |
|  69|[0x80003230]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                                        |[0x80000880]:sraw a2, a0, a1<br> [0x80000884]:sd a2, 416(t1)<br>    |
|  70|[0x80003238]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                         |[0x80000890]:sraw a2, a0, a1<br> [0x80000894]:sd a2, 424(t1)<br>    |
|  71|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                         |[0x800008a0]:sraw a2, a0, a1<br> [0x800008a4]:sd a2, 432(t1)<br>    |
|  72|[0x80003248]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                         |[0x800008b0]:sraw a2, a0, a1<br> [0x800008b4]:sd a2, 440(t1)<br>    |
|  73|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                         |[0x800008c0]:sraw a2, a0, a1<br> [0x800008c4]:sd a2, 448(t1)<br>    |
|  74|[0x80003258]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                        |[0x800008d0]:sraw a2, a0, a1<br> [0x800008d4]:sd a2, 456(t1)<br>    |
|  75|[0x80003260]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                        |[0x800008e0]:sraw a2, a0, a1<br> [0x800008e4]:sd a2, 464(t1)<br>    |
|  76|[0x80003268]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                                        |[0x800008f0]:sraw a2, a0, a1<br> [0x800008f4]:sd a2, 472(t1)<br>    |
|  77|[0x80003270]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -129<br>                                                                                                                                                                                       |[0x80000900]:sraw a2, a0, a1<br> [0x80000904]:sd a2, 480(t1)<br>    |
|  78|[0x80003278]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -513<br>                                                                                                                                                                                       |[0x80000910]:sraw a2, a0, a1<br> [0x80000914]:sd a2, 488(t1)<br>    |
|  79|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                                      |[0x80000920]:sraw a2, a0, a1<br> [0x80000924]:sd a2, 496(t1)<br>    |
|  80|[0x80003288]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                                                      |[0x80000934]:sraw a2, a0, a1<br> [0x80000938]:sd a2, 504(t1)<br>    |
|  81|[0x80003290]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -4097<br>                                                                                                                                                                                      |[0x80000948]:sraw a2, a0, a1<br> [0x8000094c]:sd a2, 512(t1)<br>    |
|  82|[0x80003298]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -8193<br>                                                                                                                                                                                      |[0x8000095c]:sraw a2, a0, a1<br> [0x80000960]:sd a2, 520(t1)<br>    |
|  83|[0x800032a0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -16385<br>                                                                                                                                                  |[0x80000970]:sraw a2, a0, a1<br> [0x80000974]:sd a2, 528(t1)<br>    |
|  84|[0x800032a8]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -32769<br>                                                                                                                                                                                     |[0x80000984]:sraw a2, a0, a1<br> [0x80000988]:sd a2, 536(t1)<br>    |
|  85|[0x800032b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                                     |[0x80000998]:sraw a2, a0, a1<br> [0x8000099c]:sd a2, 544(t1)<br>    |
|  86|[0x800032b8]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -262145<br>                                                                                                                                                                                    |[0x800009ac]:sraw a2, a0, a1<br> [0x800009b0]:sd a2, 552(t1)<br>    |
|  87|[0x800032c0]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -524289<br>                                                                                                                                                                                    |[0x800009c0]:sraw a2, a0, a1<br> [0x800009c4]:sd a2, 560(t1)<br>    |
|  88|[0x800032c8]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -1048577<br>                                                                                                                                                                                   |[0x800009d4]:sraw a2, a0, a1<br> [0x800009d8]:sd a2, 568(t1)<br>    |
|  89|[0x800032d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                                         |[0x800009ec]:sraw a2, a0, a1<br> [0x800009f0]:sd a2, 576(t1)<br>    |
|  90|[0x800032d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                                         |[0x80000a04]:sraw a2, a0, a1<br> [0x80000a08]:sd a2, 584(t1)<br>    |
|  91|[0x800032e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                                                        |[0x80000a1c]:sraw a2, a0, a1<br> [0x80000a20]:sd a2, 592(t1)<br>    |
|  92|[0x800032e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                                                        |[0x80000a34]:sraw a2, a0, a1<br> [0x80000a38]:sd a2, 600(t1)<br>    |
|  93|[0x800032f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                                        |[0x80000a4c]:sraw a2, a0, a1<br> [0x80000a50]:sd a2, 608(t1)<br>    |
|  94|[0x800032f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                                       |[0x80000a64]:sraw a2, a0, a1<br> [0x80000a68]:sd a2, 616(t1)<br>    |
|  95|[0x80003300]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                                       |[0x80000a7c]:sraw a2, a0, a1<br> [0x80000a80]:sd a2, 624(t1)<br>    |
|  96|[0x80003308]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                                                       |[0x80000a94]:sraw a2, a0, a1<br> [0x80000a98]:sd a2, 632(t1)<br>    |
|  97|[0x80003310]<br>0x0000000000AAAAAA|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                                                     |[0x80000ac0]:sraw a2, a0, a1<br> [0x80000ac4]:sd a2, 640(t1)<br>    |
|  98|[0x80003318]<br>0xFFFFFFFFFFD55555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                                                   |[0x80000aec]:sraw a2, a0, a1<br> [0x80000af0]:sd a2, 648(t1)<br>    |
|  99|[0x80003320]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                                                                            |[0x80000afc]:sraw a2, a0, a1<br> [0x80000b00]:sd a2, 656(t1)<br>    |
| 100|[0x80003328]<br>0x0000000000000002|- rs1_val==5<br>                                                                                                                                                                                            |[0x80000b0c]:sraw a2, a0, a1<br> [0x80000b10]:sd a2, 664(t1)<br>    |
| 101|[0x80003330]<br>0x0000000000000001|- rs1_val==3689348814741910323<br>                                                                                                                                                                          |[0x80000b38]:sraw a2, a0, a1<br> [0x80000b3c]:sd a2, 672(t1)<br>    |
| 102|[0x80003338]<br>0x000000000CCCCCCC|- rs1_val==7378697629483820646<br>                                                                                                                                                                          |[0x80000b64]:sraw a2, a0, a1<br> [0x80000b68]:sd a2, 680(t1)<br>    |
| 103|[0x80003340]<br>0x000000000000095F|- rs1_val==-3037000499<br>                                                                                                                                                                                  |[0x80000b80]:sraw a2, a0, a1<br> [0x80000b84]:sd a2, 688(t1)<br>    |
| 104|[0x80003348]<br>0xFFFFFFFFFFFB504F|- rs1_val==3037000499<br>                                                                                                                                                                                   |[0x80000b9c]:sraw a2, a0, a1<br> [0x80000ba0]:sd a2, 696(t1)<br>    |
| 105|[0x80003350]<br>0x0000000000000001|- rs1_val==6148914691236517204<br>                                                                                                                                                                          |[0x80000bc8]:sraw a2, a0, a1<br> [0x80000bcc]:sd a2, 704(t1)<br>    |
| 106|[0x80003358]<br>0x0000000000199999|- rs1_val==3689348814741910322<br>                                                                                                                                                                          |[0x80000bf4]:sraw a2, a0, a1<br> [0x80000bf8]:sd a2, 712(t1)<br>    |
| 107|[0x80003360]<br>0x0000000019999999|- rs1_val==7378697629483820645<br>                                                                                                                                                                          |[0x80000c20]:sraw a2, a0, a1<br> [0x80000c24]:sd a2, 720(t1)<br>    |
| 108|[0x80003368]<br>0xFFFFFFFFFFFFFDA8|- rs1_val==3037000498<br>                                                                                                                                                                                   |[0x80000c3c]:sraw a2, a0, a1<br> [0x80000c40]:sd a2, 728(t1)<br>    |
| 109|[0x80003370]<br>0x0000000000000001|- rs1_val==6148914691236517206<br>                                                                                                                                                                          |[0x80000c68]:sraw a2, a0, a1<br> [0x80000c6c]:sd a2, 736(t1)<br>    |
| 110|[0x80003378]<br>0xFFFFFFFFFFFEAAAA|- rs1_val==-6148914691236517205<br>                                                                                                                                                                         |[0x80000c94]:sraw a2, a0, a1<br> [0x80000c98]:sd a2, 744(t1)<br>    |
| 111|[0x80003380]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                                                            |[0x80000ca4]:sraw a2, a0, a1<br> [0x80000ca8]:sd a2, 752(t1)<br>    |
| 112|[0x80003388]<br>0x000000000000CCCC|- rs1_val==3689348814741910324<br>                                                                                                                                                                          |[0x80000cd0]:sraw a2, a0, a1<br> [0x80000cd4]:sd a2, 760(t1)<br>    |
| 113|[0x80003390]<br>0x0000000000003333|- rs1_val==7378697629483820647<br>                                                                                                                                                                          |[0x80000cfc]:sraw a2, a0, a1<br> [0x80000d00]:sd a2, 768(t1)<br>    |
| 114|[0x80003398]<br>0x0000000004AFB0CC|- rs1_val==-3037000498<br>                                                                                                                                                                                  |[0x80000d18]:sraw a2, a0, a1<br> [0x80000d1c]:sd a2, 776(t1)<br>    |
| 115|[0x800033a0]<br>0xFFFFFFFFFFFFFFFD|- rs1_val==3037000500<br>                                                                                                                                                                                   |[0x80000d34]:sraw a2, a0, a1<br> [0x80000d38]:sd a2, 784(t1)<br>    |
| 116|[0x800033a8]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -2097153<br>                                                                                                                                                                                   |[0x80000d48]:sraw a2, a0, a1<br> [0x80000d4c]:sd a2, 792(t1)<br>    |
| 117|[0x800033b0]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -4194305<br>                                                                                                                                                                                   |[0x80000d5c]:sraw a2, a0, a1<br> [0x80000d60]:sd a2, 800(t1)<br>    |
| 118|[0x800033b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                   |[0x80000d70]:sraw a2, a0, a1<br> [0x80000d74]:sd a2, 808(t1)<br>    |
| 119|[0x800033c0]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -16777217<br>                                                                                                                                                                                  |[0x80000d84]:sraw a2, a0, a1<br> [0x80000d88]:sd a2, 816(t1)<br>    |
| 120|[0x800033c8]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                  |[0x80000d98]:sraw a2, a0, a1<br> [0x80000d9c]:sd a2, 824(t1)<br>    |
| 121|[0x800033d0]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                  |[0x80000dac]:sraw a2, a0, a1<br> [0x80000db0]:sd a2, 832(t1)<br>    |
| 122|[0x800033d8]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                 |[0x80000dc0]:sraw a2, a0, a1<br> [0x80000dc4]:sd a2, 840(t1)<br>    |
| 123|[0x800033e0]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                 |[0x80000dd4]:sraw a2, a0, a1<br> [0x80000dd8]:sd a2, 848(t1)<br>    |
| 124|[0x800033e8]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -536870913<br>                                                                                                                                                                                 |[0x80000de8]:sraw a2, a0, a1<br> [0x80000dec]:sd a2, 856(t1)<br>    |
| 125|[0x800033f0]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                |[0x80000dfc]:sraw a2, a0, a1<br> [0x80000e00]:sd a2, 864(t1)<br>    |
| 126|[0x800033f8]<br>0x000000000000FFFF|- rs1_val == -2147483649<br>                                                                                                                                                                                |[0x80000e14]:sraw a2, a0, a1<br> [0x80000e18]:sd a2, 872(t1)<br>    |
| 127|[0x80003400]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                                                                |[0x80000e2c]:sraw a2, a0, a1<br> [0x80000e30]:sd a2, 880(t1)<br>    |
| 128|[0x80003408]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                                                                |[0x80000e44]:sraw a2, a0, a1<br> [0x80000e48]:sd a2, 888(t1)<br>    |
| 129|[0x80003410]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                                                               |[0x80000e5c]:sraw a2, a0, a1<br> [0x80000e60]:sd a2, 896(t1)<br>    |
| 130|[0x80003418]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                                                               |[0x80000e74]:sraw a2, a0, a1<br> [0x80000e78]:sd a2, 904(t1)<br>    |
| 131|[0x80003420]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                                                               |[0x80000e8c]:sraw a2, a0, a1<br> [0x80000e90]:sd a2, 912(t1)<br>    |
| 132|[0x80003428]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                                                              |[0x80000ea4]:sraw a2, a0, a1<br> [0x80000ea8]:sd a2, 920(t1)<br>    |
| 133|[0x80003430]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                                              |[0x80000ebc]:sraw a2, a0, a1<br> [0x80000ec0]:sd a2, 928(t1)<br>    |
| 134|[0x80003438]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                                              |[0x80000ed4]:sraw a2, a0, a1<br> [0x80000ed8]:sd a2, 936(t1)<br>    |
| 135|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                                             |[0x80000eec]:sraw a2, a0, a1<br> [0x80000ef0]:sd a2, 944(t1)<br>    |
| 136|[0x80003448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                                             |[0x80000f04]:sraw a2, a0, a1<br> [0x80000f08]:sd a2, 952(t1)<br>    |
| 137|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                                             |[0x80000f1c]:sraw a2, a0, a1<br> [0x80000f20]:sd a2, 960(t1)<br>    |
| 138|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                                             |[0x80000f34]:sraw a2, a0, a1<br> [0x80000f38]:sd a2, 968(t1)<br>    |
| 139|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                                            |[0x80000f4c]:sraw a2, a0, a1<br> [0x80000f50]:sd a2, 976(t1)<br>    |
| 140|[0x80003468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                                            |[0x80000f64]:sraw a2, a0, a1<br> [0x80000f68]:sd a2, 984(t1)<br>    |
| 141|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                                            |[0x80000f7c]:sraw a2, a0, a1<br> [0x80000f80]:sd a2, 992(t1)<br>    |
| 142|[0x80003478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                                           |[0x80000f94]:sraw a2, a0, a1<br> [0x80000f98]:sd a2, 1000(t1)<br>   |
| 143|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                                           |[0x80000fac]:sraw a2, a0, a1<br> [0x80000fb0]:sd a2, 1008(t1)<br>   |
| 144|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                                           |[0x80000fc4]:sraw a2, a0, a1<br> [0x80000fc8]:sd a2, 1016(t1)<br>   |
| 145|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                                          |[0x80000fdc]:sraw a2, a0, a1<br> [0x80000fe0]:sd a2, 1024(t1)<br>   |
| 146|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                                          |[0x80000ff4]:sraw a2, a0, a1<br> [0x80000ff8]:sd a2, 1032(t1)<br>   |
| 147|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                                          |[0x8000100c]:sraw a2, a0, a1<br> [0x80001010]:sd a2, 1040(t1)<br>   |
| 148|[0x800034a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                                          |[0x80001024]:sraw a2, a0, a1<br> [0x80001028]:sd a2, 1048(t1)<br>   |
| 149|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                                         |[0x8000103c]:sraw a2, a0, a1<br> [0x80001040]:sd a2, 1056(t1)<br>   |
| 150|[0x800034d0]<br>0x0000000000000000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                                                         |[0x80001084]:sraw a2, a0, a1<br> [0x80001088]:sd a2, 1088(t1)<br>   |
