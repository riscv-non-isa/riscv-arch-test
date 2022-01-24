
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800017c0')]      |
| SIG_REGION                | [('0x80003210', '0x800036a0', '292 words')]      |
| COV_LABELS                | binv      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/binv-01.S/ref.S    |
| Total Number of coverpoints| 396     |
| Total Coverpoints Hit     | 390      |
| Total Signature Updates   | 290      |
| STAT1                     | 286      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001738]:binv t6, t5, t4
      [0x8000173c]:sw t6, 1032(t2)
 -- Signature Address: 0x80003680 Data: 0x7FDFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : binv
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 2147483647
      - rs2_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001768]:binv t6, t5, t4
      [0x8000176c]:sw t6, 1040(t2)
 -- Signature Address: 0x80003688 Data: 0xD5555555
 -- Redundant Coverpoints hit by the op
      - opcode : binv
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 1431655765
      - rs2_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001794]:binv t6, t5, t4
      [0x80001798]:sw t6, 1048(t2)
 -- Signature Address: 0x80003690 Data: 0x5FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : binv
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967293
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017ac]:binv t6, t5, t4
      [0x800017b0]:sw t6, 1052(t2)
 -- Signature Address: 0x80003694 Data: 0x5FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : binv
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 2147483647
      - rs1_val == 3758096383






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

|s.no|        signature         |                                                                     coverpoints                                                                     |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x55755555|- opcode : binv<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_val == 1431655765<br> - rs2_val == 1431655765<br>    |[0x80000110]:binv t6, t6, t6<br> [0x80000114]:sw t6, 0(ra)<br>      |
|   2|[0x80003214]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x28<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3221225471<br> - rs1_val == 2147483647<br> |[0x80000128]:binv t5, t4, t3<br> [0x8000012c]:sw t5, 4(ra)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 3758096383<br>                                                    |[0x80000140]:binv t3, t3, t5<br> [0x80000144]:sw t3, 8(ra)<br>      |
|   4|[0x8000321c]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_val == 4026531839<br>                                                    |[0x80000158]:binv t4, t5, t4<br> [0x8000015c]:sw t4, 12(ra)<br>     |
|   5|[0x80003220]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs2_val == 2147483647<br>                                                    |[0x80000170]:binv s11, s10, s10<br> [0x80000174]:sw s11, 16(ra)<br> |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br> - rs2_val == 4227858431<br>                                                                           |[0x80000188]:binv s10, s11, s9<br> [0x8000018c]:sw s10, 20(ra)<br>  |
|   7|[0x80003228]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 4261412863<br>                                                                           |[0x800001a0]:binv s9, s8, s11<br> [0x800001a4]:sw s9, 24(ra)<br>    |
|   8|[0x8000322c]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 4278190079<br>                                                                           |[0x800001b8]:binv s8, s9, s7<br> [0x800001bc]:sw s8, 28(ra)<br>     |
|   9|[0x80003230]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4286578687<br>                                                                           |[0x800001d0]:binv s7, s6, s8<br> [0x800001d4]:sw s7, 32(ra)<br>     |
|  10|[0x80003234]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 4290772991<br>                                                                           |[0x800001e8]:binv s6, s7, s5<br> [0x800001ec]:sw s6, 36(ra)<br>     |
|  11|[0x80003238]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4292870143<br>                                                                           |[0x80000200]:binv s5, s4, s6<br> [0x80000204]:sw s5, 40(ra)<br>     |
|  12|[0x8000323c]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 4293918719<br>                                                                           |[0x80000218]:binv s4, s5, s3<br> [0x8000021c]:sw s4, 44(ra)<br>     |
|  13|[0x80003240]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4294443007<br>                                                                           |[0x80000230]:binv s3, s2, s4<br> [0x80000234]:sw s3, 48(ra)<br>     |
|  14|[0x80003244]<br>0xFFFFFFFF|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 4294705151<br>                                                                           |[0x80000248]:binv s2, s3, a7<br> [0x8000024c]:sw s2, 52(ra)<br>     |
|  15|[0x80003248]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294836223<br>                                                                           |[0x80000260]:binv a7, a6, s2<br> [0x80000264]:sw a7, 56(ra)<br>     |
|  16|[0x8000324c]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 4294901759<br>                                                                           |[0x80000278]:binv a6, a7, a5<br> [0x8000027c]:sw a6, 60(ra)<br>     |
|  17|[0x80003250]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294934527<br>                                                                           |[0x80000290]:binv a5, a4, a6<br> [0x80000294]:sw a5, 64(ra)<br>     |
|  18|[0x80003254]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 4294950911<br>                                                                           |[0x800002a8]:binv a4, a5, a3<br> [0x800002ac]:sw a4, 68(ra)<br>     |
|  19|[0x80003258]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294959103<br>                                                                           |[0x800002c0]:binv a3, a2, a4<br> [0x800002c4]:sw a3, 72(ra)<br>     |
|  20|[0x8000325c]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 4294963199<br>                                                                           |[0x800002d8]:binv a2, a3, a1<br> [0x800002dc]:sw a2, 76(ra)<br>     |
|  21|[0x80003260]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294965247<br>                                                                           |[0x800002f0]:binv a1, a0, a2<br> [0x800002f4]:sw a1, 80(ra)<br>     |
|  22|[0x80003264]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 4294966271<br>                                                                            |[0x80000304]:binv a0, a1, s1<br> [0x80000308]:sw a0, 84(ra)<br>     |
|  23|[0x80003268]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966783<br>                                                                             |[0x80000318]:binv s1, fp, a0<br> [0x8000031c]:sw s1, 88(ra)<br>     |
|  24|[0x8000326c]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 4294967039<br>                                                                              |[0x8000032c]:binv fp, s1, t2<br> [0x80000330]:sw fp, 92(ra)<br>     |
|  25|[0x80003270]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967167<br>                                                                              |[0x80000340]:binv t2, t1, fp<br> [0x80000344]:sw t2, 96(ra)<br>     |
|  26|[0x80003274]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 4294967231<br>                                                                              |[0x80000354]:binv t1, t2, t0<br> [0x80000358]:sw t1, 100(ra)<br>    |
|  27|[0x80003278]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967263<br>                                                                              |[0x80000370]:binv t0, tp, t1<br> [0x80000374]:sw t0, 0(t2)<br>      |
|  28|[0x8000327c]<br>0x7FFF7FFF|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 4294967279<br>                                                                              |[0x80000384]:binv tp, t0, gp<br> [0x80000388]:sw tp, 4(t2)<br>      |
|  29|[0x80003280]<br>0x7F7FFFFF|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967287<br>                                                                              |[0x80000398]:binv gp, sp, tp<br> [0x8000039c]:sw gp, 8(t2)<br>      |
|  30|[0x80003284]<br>0x77FFFFFF|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 4294967291<br>                                                                              |[0x800003ac]:binv sp, gp, ra<br> [0x800003b0]:sw sp, 12(t2)<br>     |
|  31|[0x80003288]<br>0x20000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967293<br>                                                                              |[0x800003bc]:binv ra, zero, sp<br> [0x800003c0]:sw ra, 16(t2)<br>   |
|  32|[0x8000328c]<br>0x3FFFFFFF|- rs1 : x1<br> - rs2_val == 4294967294<br>                                                                                                           |[0x800003d0]:binv t6, ra, t5<br> [0x800003d4]:sw t6, 20(t2)<br>     |
|  33|[0x80003290]<br>0xBFFFFFFE|- rs2 : x0<br> - rs1_val == 3221225471<br>                                                                                                           |[0x800003e4]:binv t6, t5, zero<br> [0x800003e8]:sw t6, 24(t2)<br>   |
|  34|[0x80003294]<br>0x00000000|- rd : x0<br> - rs1_val == 3758096383<br>                                                                                                            |[0x800003fc]:binv zero, t6, t5<br> [0x80000400]:sw zero, 28(t2)<br> |
|  35|[0x80003298]<br>0x6FFFFFFF|- rs1_val == 4026531839<br>                                                                                                                          |[0x80000414]:binv t6, t5, t4<br> [0x80000418]:sw t6, 32(t2)<br>     |
|  36|[0x8000329c]<br>0x77FFFFFF|- rs1_val == 4160749567<br>                                                                                                                          |[0x8000042c]:binv t6, t5, t4<br> [0x80000430]:sw t6, 36(t2)<br>     |
|  37|[0x800032a0]<br>0x7BFFFFFF|- rs1_val == 4227858431<br>                                                                                                                          |[0x80000444]:binv t6, t5, t4<br> [0x80000448]:sw t6, 40(t2)<br>     |
|  38|[0x800032a4]<br>0x7DFFFFFF|- rs1_val == 4261412863<br>                                                                                                                          |[0x8000045c]:binv t6, t5, t4<br> [0x80000460]:sw t6, 44(t2)<br>     |
|  39|[0x800032a8]<br>0x7EFFFFFF|- rs1_val == 4278190079<br>                                                                                                                          |[0x80000474]:binv t6, t5, t4<br> [0x80000478]:sw t6, 48(t2)<br>     |
|  40|[0x800032ac]<br>0x7F7FFFFF|- rs1_val == 4286578687<br>                                                                                                                          |[0x8000048c]:binv t6, t5, t4<br> [0x80000490]:sw t6, 52(t2)<br>     |
|  41|[0x800032b0]<br>0x7FBFFFFF|- rs1_val == 4290772991<br>                                                                                                                          |[0x800004a4]:binv t6, t5, t4<br> [0x800004a8]:sw t6, 56(t2)<br>     |
|  42|[0x800032b4]<br>0x7FDFFFFF|- rs1_val == 4292870143<br>                                                                                                                          |[0x800004bc]:binv t6, t5, t4<br> [0x800004c0]:sw t6, 60(t2)<br>     |
|  43|[0x800032b8]<br>0x7FEFFFFF|- rs1_val == 4293918719<br>                                                                                                                          |[0x800004d4]:binv t6, t5, t4<br> [0x800004d8]:sw t6, 64(t2)<br>     |
|  44|[0x800032bc]<br>0x7FF7FFFF|- rs1_val == 4294443007<br>                                                                                                                          |[0x800004ec]:binv t6, t5, t4<br> [0x800004f0]:sw t6, 68(t2)<br>     |
|  45|[0x800032c0]<br>0x7FFBFFFF|- rs1_val == 4294705151<br>                                                                                                                          |[0x80000504]:binv t6, t5, t4<br> [0x80000508]:sw t6, 72(t2)<br>     |
|  46|[0x800032c4]<br>0x7FFDFFFF|- rs1_val == 4294836223<br>                                                                                                                          |[0x8000051c]:binv t6, t5, t4<br> [0x80000520]:sw t6, 76(t2)<br>     |
|  47|[0x800032c8]<br>0x7FFEFFFF|- rs1_val == 4294901759<br>                                                                                                                          |[0x80000534]:binv t6, t5, t4<br> [0x80000538]:sw t6, 80(t2)<br>     |
|  48|[0x800032cc]<br>0x7FFF7FFF|- rs1_val == 4294934527<br>                                                                                                                          |[0x8000054c]:binv t6, t5, t4<br> [0x80000550]:sw t6, 84(t2)<br>     |
|  49|[0x800032d0]<br>0x7FFFBFFF|- rs1_val == 4294950911<br>                                                                                                                          |[0x80000564]:binv t6, t5, t4<br> [0x80000568]:sw t6, 88(t2)<br>     |
|  50|[0x800032d4]<br>0x7FFFDFFF|- rs1_val == 4294959103<br>                                                                                                                          |[0x8000057c]:binv t6, t5, t4<br> [0x80000580]:sw t6, 92(t2)<br>     |
|  51|[0x800032d8]<br>0x7FFFEFFF|- rs1_val == 4294963199<br>                                                                                                                          |[0x80000594]:binv t6, t5, t4<br> [0x80000598]:sw t6, 96(t2)<br>     |
|  52|[0x800032dc]<br>0x7FFFF7FF|- rs1_val == 4294965247<br>                                                                                                                          |[0x800005ac]:binv t6, t5, t4<br> [0x800005b0]:sw t6, 100(t2)<br>    |
|  53|[0x800032e0]<br>0x7FFFFBFF|- rs1_val == 4294966271<br>                                                                                                                          |[0x800005c0]:binv t6, t5, t4<br> [0x800005c4]:sw t6, 104(t2)<br>    |
|  54|[0x800032e4]<br>0x7FFFFDFF|- rs1_val == 4294966783<br>                                                                                                                          |[0x800005d4]:binv t6, t5, t4<br> [0x800005d8]:sw t6, 108(t2)<br>    |
|  55|[0x800032e8]<br>0x7FFFFEFF|- rs1_val == 4294967039<br>                                                                                                                          |[0x800005e8]:binv t6, t5, t4<br> [0x800005ec]:sw t6, 112(t2)<br>    |
|  56|[0x800032ec]<br>0x7FFFFF7F|- rs1_val == 4294967167<br>                                                                                                                          |[0x800005fc]:binv t6, t5, t4<br> [0x80000600]:sw t6, 116(t2)<br>    |
|  57|[0x800032f0]<br>0x7FFFFFBF|- rs1_val == 4294967231<br>                                                                                                                          |[0x80000610]:binv t6, t5, t4<br> [0x80000614]:sw t6, 120(t2)<br>    |
|  58|[0x800032f4]<br>0x7FFFFFDF|- rs1_val == 4294967263<br>                                                                                                                          |[0x80000624]:binv t6, t5, t4<br> [0x80000628]:sw t6, 124(t2)<br>    |
|  59|[0x800032f8]<br>0x7FFFFFEF|- rs1_val == 4294967279<br>                                                                                                                          |[0x80000638]:binv t6, t5, t4<br> [0x8000063c]:sw t6, 128(t2)<br>    |
|  60|[0x800032fc]<br>0x7FFFFFF7|- rs1_val == 4294967287<br>                                                                                                                          |[0x8000064c]:binv t6, t5, t4<br> [0x80000650]:sw t6, 132(t2)<br>    |
|  61|[0x80003300]<br>0x7FFFFFFB|- rs1_val == 4294967291<br>                                                                                                                          |[0x80000660]:binv t6, t5, t4<br> [0x80000664]:sw t6, 136(t2)<br>    |
|  62|[0x80003304]<br>0x7FFFFFFD|- rs1_val == 4294967293<br>                                                                                                                          |[0x80000674]:binv t6, t5, t4<br> [0x80000678]:sw t6, 140(t2)<br>    |
|  63|[0x80003308]<br>0x7FFFFFFE|- rs1_val == 4294967294<br>                                                                                                                          |[0x80000688]:binv t6, t5, t4<br> [0x8000068c]:sw t6, 144(t2)<br>    |
|  64|[0x8000330c]<br>0x7FFFFFFE|- rs2_val == 2147483648<br>                                                                                                                          |[0x8000069c]:binv t6, t5, t4<br> [0x800006a0]:sw t6, 148(t2)<br>    |
|  65|[0x80003310]<br>0x7FFFFFFE|- rs2_val == 1073741824<br>                                                                                                                          |[0x800006b0]:binv t6, t5, t4<br> [0x800006b4]:sw t6, 152(t2)<br>    |
|  66|[0x80003314]<br>0x7FFFFFFE|- rs2_val == 536870912<br>                                                                                                                           |[0x800006c4]:binv t6, t5, t4<br> [0x800006c8]:sw t6, 156(t2)<br>    |
|  67|[0x80003318]<br>0x7FFFFFFE|- rs2_val == 268435456<br>                                                                                                                           |[0x800006d8]:binv t6, t5, t4<br> [0x800006dc]:sw t6, 160(t2)<br>    |
|  68|[0x8000331c]<br>0x7FFFFFFE|- rs2_val == 134217728<br>                                                                                                                           |[0x800006ec]:binv t6, t5, t4<br> [0x800006f0]:sw t6, 164(t2)<br>    |
|  69|[0x80003320]<br>0x7FFFFFFE|- rs2_val == 67108864<br>                                                                                                                            |[0x80000700]:binv t6, t5, t4<br> [0x80000704]:sw t6, 168(t2)<br>    |
|  70|[0x80003324]<br>0x7FFFFFFE|- rs2_val == 33554432<br>                                                                                                                            |[0x80000714]:binv t6, t5, t4<br> [0x80000718]:sw t6, 172(t2)<br>    |
|  71|[0x80003328]<br>0x7FFFFFFE|- rs2_val == 16777216<br>                                                                                                                            |[0x80000728]:binv t6, t5, t4<br> [0x8000072c]:sw t6, 176(t2)<br>    |
|  72|[0x8000332c]<br>0x7FFFFFFE|- rs2_val == 8388608<br>                                                                                                                             |[0x8000073c]:binv t6, t5, t4<br> [0x80000740]:sw t6, 180(t2)<br>    |
|  73|[0x80003330]<br>0x7FFFFFFE|- rs2_val == 4194304<br>                                                                                                                             |[0x80000750]:binv t6, t5, t4<br> [0x80000754]:sw t6, 184(t2)<br>    |
|  74|[0x80003334]<br>0x7FFFFFFE|- rs2_val == 2097152<br>                                                                                                                             |[0x80000764]:binv t6, t5, t4<br> [0x80000768]:sw t6, 188(t2)<br>    |
|  75|[0x80003338]<br>0x7FFFFFFE|- rs2_val == 1048576<br>                                                                                                                             |[0x80000778]:binv t6, t5, t4<br> [0x8000077c]:sw t6, 192(t2)<br>    |
|  76|[0x8000333c]<br>0x7FFFFFFE|- rs2_val == 524288<br>                                                                                                                              |[0x8000078c]:binv t6, t5, t4<br> [0x80000790]:sw t6, 196(t2)<br>    |
|  77|[0x80003340]<br>0x7FFFFFFE|- rs2_val == 262144<br>                                                                                                                              |[0x800007a0]:binv t6, t5, t4<br> [0x800007a4]:sw t6, 200(t2)<br>    |
|  78|[0x80003344]<br>0x7FFFFFFE|- rs2_val == 131072<br>                                                                                                                              |[0x800007b4]:binv t6, t5, t4<br> [0x800007b8]:sw t6, 204(t2)<br>    |
|  79|[0x80003348]<br>0x7FFFFFFE|- rs2_val == 65536<br>                                                                                                                               |[0x800007c8]:binv t6, t5, t4<br> [0x800007cc]:sw t6, 208(t2)<br>    |
|  80|[0x8000334c]<br>0x7FFFFFFE|- rs2_val == 32768<br>                                                                                                                               |[0x800007dc]:binv t6, t5, t4<br> [0x800007e0]:sw t6, 212(t2)<br>    |
|  81|[0x80003350]<br>0x7FFFFFFE|- rs2_val == 16384<br>                                                                                                                               |[0x800007f0]:binv t6, t5, t4<br> [0x800007f4]:sw t6, 216(t2)<br>    |
|  82|[0x80003354]<br>0x7FFFFFFE|- rs2_val == 8192<br>                                                                                                                                |[0x80000804]:binv t6, t5, t4<br> [0x80000808]:sw t6, 220(t2)<br>    |
|  83|[0x80003358]<br>0x7FFFFFFE|- rs2_val == 4096<br>                                                                                                                                |[0x80000818]:binv t6, t5, t4<br> [0x8000081c]:sw t6, 224(t2)<br>    |
|  84|[0x8000335c]<br>0x7FFFFFFE|- rs2_val == 2048<br>                                                                                                                                |[0x80000830]:binv t6, t5, t4<br> [0x80000834]:sw t6, 228(t2)<br>    |
|  85|[0x80003360]<br>0x7FFFFFFE|- rs2_val == 1024<br>                                                                                                                                |[0x80000844]:binv t6, t5, t4<br> [0x80000848]:sw t6, 232(t2)<br>    |
|  86|[0x80003364]<br>0x7FFFFFFE|- rs2_val == 512<br>                                                                                                                                 |[0x80000858]:binv t6, t5, t4<br> [0x8000085c]:sw t6, 236(t2)<br>    |
|  87|[0x80003368]<br>0x7FFFFFFE|- rs2_val == 256<br>                                                                                                                                 |[0x8000086c]:binv t6, t5, t4<br> [0x80000870]:sw t6, 240(t2)<br>    |
|  88|[0x8000336c]<br>0x7FFFFFFE|- rs2_val == 128<br>                                                                                                                                 |[0x80000880]:binv t6, t5, t4<br> [0x80000884]:sw t6, 244(t2)<br>    |
|  89|[0x80003370]<br>0x7FFFFFFE|- rs2_val == 64<br>                                                                                                                                  |[0x80000894]:binv t6, t5, t4<br> [0x80000898]:sw t6, 248(t2)<br>    |
|  90|[0x80003374]<br>0x7FFFFFFE|- rs2_val == 32<br>                                                                                                                                  |[0x800008a8]:binv t6, t5, t4<br> [0x800008ac]:sw t6, 252(t2)<br>    |
|  91|[0x80003378]<br>0x7FFEFFFF|- rs2_val == 16<br>                                                                                                                                  |[0x800008bc]:binv t6, t5, t4<br> [0x800008c0]:sw t6, 256(t2)<br>    |
|  92|[0x8000337c]<br>0x7FFFFEFF|- rs2_val == 8<br>                                                                                                                                   |[0x800008d0]:binv t6, t5, t4<br> [0x800008d4]:sw t6, 260(t2)<br>    |
|  93|[0x80003380]<br>0x7FFFFFEF|- rs2_val == 4<br>                                                                                                                                   |[0x800008e4]:binv t6, t5, t4<br> [0x800008e8]:sw t6, 264(t2)<br>    |
|  94|[0x80003384]<br>0x7FFFFFFB|- rs2_val == 2<br>                                                                                                                                   |[0x800008f8]:binv t6, t5, t4<br> [0x800008fc]:sw t6, 268(t2)<br>    |
|  95|[0x80003388]<br>0x7FFFFFFD|- rs2_val == 1<br>                                                                                                                                   |[0x8000090c]:binv t6, t5, t4<br> [0x80000910]:sw t6, 272(t2)<br>    |
|  96|[0x8000338c]<br>0x00000000|- rs1_val == 2147483648<br>                                                                                                                          |[0x80000920]:binv t6, t5, t4<br> [0x80000924]:sw t6, 276(t2)<br>    |
|  97|[0x80003390]<br>0xC0000000|- rs1_val == 1073741824<br>                                                                                                                          |[0x80000934]:binv t6, t5, t4<br> [0x80000938]:sw t6, 280(t2)<br>    |
|  98|[0x80003394]<br>0xA0000000|- rs1_val == 536870912<br>                                                                                                                           |[0x80000948]:binv t6, t5, t4<br> [0x8000094c]:sw t6, 284(t2)<br>    |
|  99|[0x80003398]<br>0x90000000|- rs1_val == 268435456<br>                                                                                                                           |[0x8000095c]:binv t6, t5, t4<br> [0x80000960]:sw t6, 288(t2)<br>    |
| 100|[0x8000339c]<br>0x88000000|- rs1_val == 134217728<br>                                                                                                                           |[0x80000970]:binv t6, t5, t4<br> [0x80000974]:sw t6, 292(t2)<br>    |
| 101|[0x800033a0]<br>0x84000000|- rs1_val == 67108864<br>                                                                                                                            |[0x80000984]:binv t6, t5, t4<br> [0x80000988]:sw t6, 296(t2)<br>    |
| 102|[0x800033a4]<br>0x82000000|- rs1_val == 33554432<br>                                                                                                                            |[0x80000998]:binv t6, t5, t4<br> [0x8000099c]:sw t6, 300(t2)<br>    |
| 103|[0x800033a8]<br>0x81000000|- rs1_val == 16777216<br>                                                                                                                            |[0x800009ac]:binv t6, t5, t4<br> [0x800009b0]:sw t6, 304(t2)<br>    |
| 104|[0x800033ac]<br>0x80800000|- rs1_val == 8388608<br>                                                                                                                             |[0x800009c0]:binv t6, t5, t4<br> [0x800009c4]:sw t6, 308(t2)<br>    |
| 105|[0x800033b0]<br>0x80400000|- rs1_val == 4194304<br>                                                                                                                             |[0x800009d4]:binv t6, t5, t4<br> [0x800009d8]:sw t6, 312(t2)<br>    |
| 106|[0x800033b4]<br>0x80200000|- rs1_val == 2097152<br>                                                                                                                             |[0x800009e8]:binv t6, t5, t4<br> [0x800009ec]:sw t6, 316(t2)<br>    |
| 107|[0x800033b8]<br>0x80100000|- rs1_val == 1048576<br>                                                                                                                             |[0x800009fc]:binv t6, t5, t4<br> [0x80000a00]:sw t6, 320(t2)<br>    |
| 108|[0x800033bc]<br>0x80080000|- rs1_val == 524288<br>                                                                                                                              |[0x80000a10]:binv t6, t5, t4<br> [0x80000a14]:sw t6, 324(t2)<br>    |
| 109|[0x800033c0]<br>0x80040000|- rs1_val == 262144<br>                                                                                                                              |[0x80000a24]:binv t6, t5, t4<br> [0x80000a28]:sw t6, 328(t2)<br>    |
| 110|[0x800033c4]<br>0x80020000|- rs1_val == 131072<br>                                                                                                                              |[0x80000a38]:binv t6, t5, t4<br> [0x80000a3c]:sw t6, 332(t2)<br>    |
| 111|[0x800033c8]<br>0x80010000|- rs1_val == 65536<br>                                                                                                                               |[0x80000a4c]:binv t6, t5, t4<br> [0x80000a50]:sw t6, 336(t2)<br>    |
| 112|[0x800033cc]<br>0x80008000|- rs1_val == 32768<br>                                                                                                                               |[0x80000a60]:binv t6, t5, t4<br> [0x80000a64]:sw t6, 340(t2)<br>    |
| 113|[0x800033d0]<br>0x80004000|- rs1_val == 16384<br>                                                                                                                               |[0x80000a74]:binv t6, t5, t4<br> [0x80000a78]:sw t6, 344(t2)<br>    |
| 114|[0x800033d4]<br>0x80002000|- rs1_val == 8192<br>                                                                                                                                |[0x80000a88]:binv t6, t5, t4<br> [0x80000a8c]:sw t6, 348(t2)<br>    |
| 115|[0x800033d8]<br>0x80001000|- rs1_val == 4096<br>                                                                                                                                |[0x80000a9c]:binv t6, t5, t4<br> [0x80000aa0]:sw t6, 352(t2)<br>    |
| 116|[0x800033dc]<br>0x80000800|- rs1_val == 2048<br>                                                                                                                                |[0x80000ab4]:binv t6, t5, t4<br> [0x80000ab8]:sw t6, 356(t2)<br>    |
| 117|[0x800033e0]<br>0x80000400|- rs1_val == 1024<br>                                                                                                                                |[0x80000ac8]:binv t6, t5, t4<br> [0x80000acc]:sw t6, 360(t2)<br>    |
| 118|[0x800033e4]<br>0x80000200|- rs1_val == 512<br>                                                                                                                                 |[0x80000adc]:binv t6, t5, t4<br> [0x80000ae0]:sw t6, 364(t2)<br>    |
| 119|[0x800033e8]<br>0x80000100|- rs1_val == 256<br>                                                                                                                                 |[0x80000af0]:binv t6, t5, t4<br> [0x80000af4]:sw t6, 368(t2)<br>    |
| 120|[0x800033ec]<br>0x80000080|- rs1_val == 128<br>                                                                                                                                 |[0x80000b04]:binv t6, t5, t4<br> [0x80000b08]:sw t6, 372(t2)<br>    |
| 121|[0x800033f0]<br>0x80000040|- rs1_val == 64<br>                                                                                                                                  |[0x80000b18]:binv t6, t5, t4<br> [0x80000b1c]:sw t6, 376(t2)<br>    |
| 122|[0x800033f4]<br>0x80000020|- rs1_val == 32<br>                                                                                                                                  |[0x80000b2c]:binv t6, t5, t4<br> [0x80000b30]:sw t6, 380(t2)<br>    |
| 123|[0x800033f8]<br>0x80000010|- rs1_val == 16<br>                                                                                                                                  |[0x80000b40]:binv t6, t5, t4<br> [0x80000b44]:sw t6, 384(t2)<br>    |
| 124|[0x800033fc]<br>0x80000008|- rs1_val == 8<br>                                                                                                                                   |[0x80000b54]:binv t6, t5, t4<br> [0x80000b58]:sw t6, 388(t2)<br>    |
| 125|[0x80003400]<br>0x80000004|- rs1_val == 4<br>                                                                                                                                   |[0x80000b68]:binv t6, t5, t4<br> [0x80000b6c]:sw t6, 392(t2)<br>    |
| 126|[0x80003404]<br>0x80000002|- rs1_val == 2<br>                                                                                                                                   |[0x80000b7c]:binv t6, t5, t4<br> [0x80000b80]:sw t6, 396(t2)<br>    |
| 127|[0x80003408]<br>0x80000001|- rs1_val == 1<br>                                                                                                                                   |[0x80000b90]:binv t6, t5, t4<br> [0x80000b94]:sw t6, 400(t2)<br>    |
| 128|[0x8000340c]<br>0x2DEDB6A6|- rs2_val == 0x00 and rs1_val == 0x2DEDB6A7 #nosat<br>                                                                                               |[0x80000ba4]:binv t6, t5, t4<br> [0x80000ba8]:sw t6, 404(t2)<br>    |
| 129|[0x80003410]<br>0x3C262728|- rs2_val == 0x10 and rs1_val == 0x3C272728 #nosat<br>                                                                                               |[0x80000bb8]:binv t6, t5, t4<br> [0x80000bbc]:sw t6, 408(t2)<br>    |
| 130|[0x80003414]<br>0x4E55C73D|- rs2_val == 0x18 and rs1_val == 0x4F55C73D #nosat<br>                                                                                               |[0x80000bcc]:binv t6, t5, t4<br> [0x80000bd0]:sw t6, 412(t2)<br>    |
| 131|[0x80003418]<br>0xB0BB577A|- rs2_val == 0x14 and rs1_val == 0xB0AB577A #nosat<br>                                                                                               |[0x80000be0]:binv t6, t5, t4<br> [0x80000be4]:sw t6, 416(t2)<br>    |
| 132|[0x8000341c]<br>0xF4EB21AA|- rs2_val == 0x1A and rs1_val == 0xF0EB21AA #nosat<br>                                                                                               |[0x80000bf4]:binv t6, t5, t4<br> [0x80000bf8]:sw t6, 420(t2)<br>    |
| 133|[0x80003420]<br>0xA1E16E27|- rs2_val == 0x1B and rs1_val == 0xA9E16E27 #nosat<br>                                                                                               |[0x80000c08]:binv t6, t5, t4<br> [0x80000c0c]:sw t6, 424(t2)<br>    |
| 134|[0x80003424]<br>0x00001000|- rs1_val == 0x00000000 and rs2_val == 0x0C #nosat<br>                                                                                               |[0x80000c18]:binv t6, t5, t4<br> [0x80000c1c]:sw t6, 428(t2)<br>    |
| 135|[0x80003428]<br>0x80000020|- rs1_val == 0x80000000 and rs2_val == 0x05 #nosat<br>                                                                                               |[0x80000c28]:binv t6, t5, t4<br> [0x80000c2c]:sw t6, 432(t2)<br>    |
| 136|[0x8000342c]<br>0x40000002|- rs1_val == 0x40000000 and rs2_val == 0x01 #nosat<br>                                                                                               |[0x80000c38]:binv t6, t5, t4<br> [0x80000c3c]:sw t6, 436(t2)<br>    |
| 137|[0x80003430]<br>0x61000000|- rs1_val == 0x60000000 and rs2_val == 0x18 #nosat<br>                                                                                               |[0x80000c48]:binv t6, t5, t4<br> [0x80000c4c]:sw t6, 440(t2)<br>    |
| 138|[0x80003434]<br>0xF0000000|- rs1_val == 0xB0000000 and rs2_val == 0x1E #nosat<br>                                                                                               |[0x80000c58]:binv t6, t5, t4<br> [0x80000c5c]:sw t6, 444(t2)<br>    |
| 139|[0x80003438]<br>0x0C000000|- rs1_val == 0x08000000 and rs2_val == 0x1A #nosat<br>                                                                                               |[0x80000c68]:binv t6, t5, t4<br> [0x80000c6c]:sw t6, 448(t2)<br>    |
| 140|[0x8000343c]<br>0xF4000020|- rs1_val == 0xF4000000 and rs2_val == 0x05 #nosat<br>                                                                                               |[0x80000c78]:binv t6, t5, t4<br> [0x80000c7c]:sw t6, 452(t2)<br>    |
| 141|[0x80003440]<br>0x82000400|- rs1_val == 0x82000000 and rs2_val == 0x0A #nosat<br>                                                                                               |[0x80000c88]:binv t6, t5, t4<br> [0x80000c8c]:sw t6, 456(t2)<br>    |
| 142|[0x80003444]<br>0xFD000008|- rs1_val == 0xFD000000 and rs2_val == 0x03 #nosat<br>                                                                                               |[0x80000c98]:binv t6, t5, t4<br> [0x80000c9c]:sw t6, 460(t2)<br>    |
| 143|[0x80003448]<br>0xD8800400|- rs1_val == 0xD8800000 and rs2_val == 0x0A #nosat<br>                                                                                               |[0x80000ca8]:binv t6, t5, t4<br> [0x80000cac]:sw t6, 464(t2)<br>    |
| 144|[0x8000344c]<br>0xC8D00000|- rs1_val == 0xC8C00000 and rs2_val == 0x14 #nosat<br>                                                                                               |[0x80000cb8]:binv t6, t5, t4<br> [0x80000cbc]:sw t6, 468(t2)<br>    |
| 145|[0x80003450]<br>0xA3200100|- rs1_val == 0xA3200000 and rs2_val == 0x08 #nosat<br>                                                                                               |[0x80000cc8]:binv t6, t5, t4<br> [0x80000ccc]:sw t6, 472(t2)<br>    |
| 146|[0x80003454]<br>0xCF900000|- rs1_val == 0xC7900000 and rs2_val == 0x1B #nosat<br>                                                                                               |[0x80000cd8]:binv t6, t5, t4<br> [0x80000cdc]:sw t6, 476(t2)<br>    |
| 147|[0x80003458]<br>0x56880000|- rs1_val == 0x46880000 and rs2_val == 0x1C #nosat<br>                                                                                               |[0x80000ce8]:binv t6, t5, t4<br> [0x80000cec]:sw t6, 480(t2)<br>    |
| 148|[0x8000345c]<br>0x5D440000|- rs1_val == 0x55440000 and rs2_val == 0x1B #nosat<br>                                                                                               |[0x80000cf8]:binv t6, t5, t4<br> [0x80000cfc]:sw t6, 484(t2)<br>    |
| 149|[0x80003460]<br>0xA56A4000|- rs1_val == 0xA56A0000 and rs2_val == 0x0E #nosat<br>                                                                                               |[0x80000d08]:binv t6, t5, t4<br> [0x80000d0c]:sw t6, 488(t2)<br>    |
| 150|[0x80003464]<br>0x405D0008|- rs1_val == 0x405D0000 and rs2_val == 0x03 #nosat<br>                                                                                               |[0x80000d18]:binv t6, t5, t4<br> [0x80000d1c]:sw t6, 492(t2)<br>    |
| 151|[0x80003468]<br>0xCD2F8020|- rs1_val == 0xCD2F8000 and rs2_val == 0x05 #nosat<br>                                                                                               |[0x80000d28]:binv t6, t5, t4<br> [0x80000d2c]:sw t6, 496(t2)<br>    |
| 152|[0x8000346c]<br>0xA4C04000|- rs1_val == 0xA6C04000 and rs2_val == 0x19 #nosat<br>                                                                                               |[0x80000d38]:binv t6, t5, t4<br> [0x80000d3c]:sw t6, 500(t2)<br>    |
| 153|[0x80003470]<br>0x339C2000|- rs1_val == 0x33BC2000 and rs2_val == 0x15 #nosat<br>                                                                                               |[0x80000d48]:binv t6, t5, t4<br> [0x80000d4c]:sw t6, 504(t2)<br>    |
| 154|[0x80003474]<br>0xF1C6A000|- rs1_val == 0xF1C6B000 and rs2_val == 0x0C #nosat<br>                                                                                               |[0x80000d58]:binv t6, t5, t4<br> [0x80000d5c]:sw t6, 508(t2)<br>    |
| 155|[0x80003478]<br>0xAA3D4800|- rs1_val == 0xAA3D6800 and rs2_val == 0x0D #nosat<br>                                                                                               |[0x80000d6c]:binv t6, t5, t4<br> [0x80000d70]:sw t6, 512(t2)<br>    |
| 156|[0x8000347c]<br>0x7AA5E000|- rs1_val == 0x7AA5E400 and rs2_val == 0x0A #nosat<br>                                                                                               |[0x80000d80]:binv t6, t5, t4<br> [0x80000d84]:sw t6, 516(t2)<br>    |
| 157|[0x80003480]<br>0xD1B7AE00|- rs1_val == 0xC1B7AE00 and rs2_val == 0x1C #nosat<br>                                                                                               |[0x80000d94]:binv t6, t5, t4<br> [0x80000d98]:sw t6, 520(t2)<br>    |
| 158|[0x80003484]<br>0x4C56B900|- rs1_val == 0x4C56BB00 and rs2_val == 0x09 #nosat<br>                                                                                               |[0x80000da8]:binv t6, t5, t4<br> [0x80000dac]:sw t6, 524(t2)<br>    |
| 159|[0x80003488]<br>0x72C58381|- rs1_val == 0x72C58380 and rs2_val == 0x00 #nosat<br>                                                                                               |[0x80000dbc]:binv t6, t5, t4<br> [0x80000dc0]:sw t6, 528(t2)<br>    |
| 160|[0x8000348c]<br>0x32ABC740|- rs1_val == 0x32AB8740 and rs2_val == 0x0E #nosat<br>                                                                                               |[0x80000dd0]:binv t6, t5, t4<br> [0x80000dd4]:sw t6, 532(t2)<br>    |
| 161|[0x80003490]<br>0xB6CDF1A0|- rs1_val == 0x96CDF1A0 and rs2_val == 0x1D #nosat<br>                                                                                               |[0x80000de4]:binv t6, t5, t4<br> [0x80000de8]:sw t6, 536(t2)<br>    |
| 162|[0x80003494]<br>0xB8789E30|- rs1_val == 0xB87A9E30 and rs2_val == 0x11 #nosat<br>                                                                                               |[0x80000df8]:binv t6, t5, t4<br> [0x80000dfc]:sw t6, 540(t2)<br>    |
| 163|[0x80003498]<br>0x16BDFF98|- rs1_val == 0x163DFF98 and rs2_val == 0x17 #nosat<br>                                                                                               |[0x80000e0c]:binv t6, t5, t4<br> [0x80000e10]:sw t6, 544(t2)<br>    |
| 164|[0x8000349c]<br>0x9305D39C|- rs1_val == 0x9205D39C and rs2_val == 0x18 #nosat<br>                                                                                               |[0x80000e20]:binv t6, t5, t4<br> [0x80000e24]:sw t6, 548(t2)<br>    |
| 165|[0x800034a0]<br>0x50E03C5A|- rs1_val == 0x50A03C5A and rs2_val == 0x16 #nosat<br>                                                                                               |[0x80000e34]:binv t6, t5, t4<br> [0x80000e38]:sw t6, 552(t2)<br>    |
| 166|[0x800034a4]<br>0x797F76DF|- rs1_val == 0x797D76DF and rs2_val == 0x11 #nosat<br>                                                                                               |[0x80000e48]:binv t6, t5, t4<br> [0x80000e4c]:sw t6, 556(t2)<br>    |
| 167|[0x800034a8]<br>0x24496EE3|- rs2_val == 0x08 and rs1_val == 0x24496FE3 #nosat<br>                                                                                               |[0x80000e5c]:binv t6, t5, t4<br> [0x80000e60]:sw t6, 560(t2)<br>    |
| 168|[0x800034ac]<br>0xFE14BFF2|- rs2_val == 0x1D and rs1_val == 0xDE14BFF2 #nosat<br>                                                                                               |[0x80000e70]:binv t6, t5, t4<br> [0x80000e74]:sw t6, 564(t2)<br>    |
| 169|[0x800034b0]<br>0xB808A67F|- rs2_val == 0x03 and rs1_val == 0xB808A677 #nosat<br>                                                                                               |[0x80000e84]:binv t6, t5, t4<br> [0x80000e88]:sw t6, 568(t2)<br>    |
| 170|[0x800034b4]<br>0x76B1FDBD|- rs2_val == 0x07 and rs1_val == 0x76B1FD3D #nosat<br>                                                                                               |[0x80000e98]:binv t6, t5, t4<br> [0x80000e9c]:sw t6, 572(t2)<br>    |
| 171|[0x800034b8]<br>0x5DCF819D|- rs2_val == 0x0F and rs1_val == 0x5DCF019D #nosat<br>                                                                                               |[0x80000eac]:binv t6, t5, t4<br> [0x80000eb0]:sw t6, 576(t2)<br>    |
| 172|[0x800034bc]<br>0xC7B7097B|- rs2_val == 0x1F and rs1_val == 0x47B7097B #nosat<br>                                                                                               |[0x80000ec0]:binv t6, t5, t4<br> [0x80000ec4]:sw t6, 580(t2)<br>    |
| 173|[0x800034c0]<br>0x759E1B44|- rs1_val == 0x759F1B44 and rs2_val == 0x10 #nosat<br>                                                                                               |[0x80000ed4]:binv t6, t5, t4<br> [0x80000ed8]:sw t6, 584(t2)<br>    |
| 174|[0x800034c4]<br>0x40590A1D|- rs1_val == 0x40D90A1D and rs2_val == 0x17 #nosat<br>                                                                                               |[0x80000ee8]:binv t6, t5, t4<br> [0x80000eec]:sw t6, 588(t2)<br>    |
| 175|[0x800034c8]<br>0x2DADF123|- rs1_val == 0x2DEDF123 and rs2_val == 0x16 #nosat<br>                                                                                               |[0x80000efc]:binv t6, t5, t4<br> [0x80000f00]:sw t6, 592(t2)<br>    |
| 176|[0x800034cc]<br>0x4B1624E7|- rs1_val == 0x4B1634E7 and rs2_val == 0x0C #nosat<br>                                                                                               |[0x80000f10]:binv t6, t5, t4<br> [0x80000f14]:sw t6, 596(t2)<br>    |
| 177|[0x800034d0]<br>0x8935B02F|- rs1_val == 0x8935B82F and rs2_val == 0x0B #nosat<br>                                                                                               |[0x80000f24]:binv t6, t5, t4<br> [0x80000f28]:sw t6, 600(t2)<br>    |
| 178|[0x800034d4]<br>0x60BCB8DF|- rs1_val == 0x70BCB8DF and rs2_val == 0x1C #nosat<br>                                                                                               |[0x80000f38]:binv t6, t5, t4<br> [0x80000f3c]:sw t6, 604(t2)<br>    |
| 179|[0x800034d8]<br>0x8DE1C63F|- rs1_val == 0x8DE1C73F and rs2_val == 0x08 #nosat<br>                                                                                               |[0x80000f4c]:binv t6, t5, t4<br> [0x80000f50]:sw t6, 608(t2)<br>    |
| 180|[0x800034dc]<br>0xA0E04E7F|- rs1_val == 0xB0E04E7F and rs2_val == 0x1C #nosat<br>                                                                                               |[0x80000f60]:binv t6, t5, t4<br> [0x80000f64]:sw t6, 612(t2)<br>    |
| 181|[0x800034e0]<br>0x589318FF|- rs1_val == 0x589218FF and rs2_val == 0x10 #nosat<br>                                                                                               |[0x80000f74]:binv t6, t5, t4<br> [0x80000f78]:sw t6, 616(t2)<br>    |
| 182|[0x800034e4]<br>0xA7BE997F|- rs1_val == 0xA7BE99FF and rs2_val == 0x07 #nosat<br>                                                                                               |[0x80000f88]:binv t6, t5, t4<br> [0x80000f8c]:sw t6, 620(t2)<br>    |
| 183|[0x800034e8]<br>0xA36E33FF|- rs1_val == 0xA37E33FF and rs2_val == 0x14 #nosat<br>                                                                                               |[0x80000f9c]:binv t6, t5, t4<br> [0x80000fa0]:sw t6, 624(t2)<br>    |
| 184|[0x800034ec]<br>0xEB7D37FF|- rs1_val == 0xE37D37FF and rs2_val == 0x1B #nosat<br>                                                                                               |[0x80000fb0]:binv t6, t5, t4<br> [0x80000fb4]:sw t6, 628(t2)<br>    |
| 185|[0x800034f0]<br>0xAB34CFFF|- rs1_val == 0xABB4CFFF and rs2_val == 0x17 #nosat<br>                                                                                               |[0x80000fc4]:binv t6, t5, t4<br> [0x80000fc8]:sw t6, 632(t2)<br>    |
| 186|[0x800034f4]<br>0x749DDFFF|- rs1_val == 0x7C9DDFFF and rs2_val == 0x1B #nosat<br>                                                                                               |[0x80000fd8]:binv t6, t5, t4<br> [0x80000fdc]:sw t6, 636(t2)<br>    |
| 187|[0x800034f8]<br>0x5B11FFFF|- rs1_val == 0x5B11BFFF and rs2_val == 0x0E #nosat<br>                                                                                               |[0x80000fec]:binv t6, t5, t4<br> [0x80000ff0]:sw t6, 640(t2)<br>    |
| 188|[0x800034fc]<br>0xCB357FFF|- rs1_val == 0xCB347FFF and rs2_val == 0x10 #nosat<br>                                                                                               |[0x80001000]:binv t6, t5, t4<br> [0x80001004]:sw t6, 644(t2)<br>    |
| 189|[0x80003500]<br>0xF306FEFF|- rs1_val == 0xF306FFFF and rs2_val == 0x08 #nosat<br>                                                                                               |[0x80001014]:binv t6, t5, t4<br> [0x80001018]:sw t6, 648(t2)<br>    |
| 190|[0x80003504]<br>0xB6A5FFFF|- rs1_val == 0xBEA5FFFF and rs2_val == 0x1B #nosat<br>                                                                                               |[0x80001028]:binv t6, t5, t4<br> [0x8000102c]:sw t6, 652(t2)<br>    |
| 191|[0x80003508]<br>0xC38BFFFF|- rs1_val == 0xD38BFFFF and rs2_val == 0x1C #nosat<br>                                                                                               |[0x8000103c]:binv t6, t5, t4<br> [0x80001040]:sw t6, 656(t2)<br>    |
| 192|[0x8000350c]<br>0x15B6FFFF|- rs1_val == 0x15B7FFFF and rs2_val == 0x10 #nosat<br>                                                                                               |[0x80001050]:binv t6, t5, t4<br> [0x80001054]:sw t6, 660(t2)<br>    |
| 193|[0x80003510]<br>0xD58FFDFF|- rs1_val == 0xD58FFFFF and rs2_val == 0x09 #nosat<br>                                                                                               |[0x80001064]:binv t6, t5, t4<br> [0x80001068]:sw t6, 664(t2)<br>    |
| 194|[0x80003514]<br>0xFE1DFFFF|- rs1_val == 0xFE1FFFFF and rs2_val == 0x11 #nosat<br>                                                                                               |[0x80001078]:binv t6, t5, t4<br> [0x8000107c]:sw t6, 668(t2)<br>    |
| 195|[0x80003518]<br>0x203FFFFE|- rs1_val == 0x203FFFFF and rs2_val == 0x00 #nosat<br>                                                                                               |[0x8000108c]:binv t6, t5, t4<br> [0x80001090]:sw t6, 672(t2)<br>    |
| 196|[0x8000351c]<br>0x0F7FFFFF|- rs1_val == 0x077FFFFF and rs2_val == 0x1B #nosat<br>                                                                                               |[0x800010a0]:binv t6, t5, t4<br> [0x800010a4]:sw t6, 676(t2)<br>    |
| 197|[0x80003520]<br>0xBEFBFFFF|- rs1_val == 0xBEFFFFFF and rs2_val == 0x12 #nosat<br>                                                                                               |[0x800010b4]:binv t6, t5, t4<br> [0x800010b8]:sw t6, 680(t2)<br>    |
| 198|[0x80003524]<br>0x89FFDFFF|- rs1_val == 0x89FFFFFF and rs2_val == 0x0D #nosat<br>                                                                                               |[0x800010c8]:binv t6, t5, t4<br> [0x800010cc]:sw t6, 684(t2)<br>    |
| 199|[0x80003528]<br>0x23FFFFEF|- rs1_val == 0x23FFFFFF and rs2_val == 0x04 #nosat<br>                                                                                               |[0x800010dc]:binv t6, t5, t4<br> [0x800010e0]:sw t6, 688(t2)<br>    |
| 200|[0x8000352c]<br>0xA7FFF7FF|- rs1_val == 0xA7FFFFFF and rs2_val == 0x0B #nosat<br>                                                                                               |[0x800010f0]:binv t6, t5, t4<br> [0x800010f4]:sw t6, 692(t2)<br>    |
| 201|[0x80003530]<br>0xCFFFBFFF|- rs1_val == 0xCFFFFFFF and rs2_val == 0x0E #nosat<br>                                                                                               |[0x80001104]:binv t6, t5, t4<br> [0x80001108]:sw t6, 696(t2)<br>    |
| 202|[0x80003534]<br>0x9FFFFDFF|- rs1_val == 0x9FFFFFFF and rs2_val == 0x09 #nosat<br>                                                                                               |[0x80001118]:binv t6, t5, t4<br> [0x8000111c]:sw t6, 700(t2)<br>    |
| 203|[0x80003538]<br>0xBFFFBFFF|- rs1_val == 0xBFFFFFFF and rs2_val == 0x0E #nosat<br>                                                                                               |[0x8000112c]:binv t6, t5, t4<br> [0x80001130]:sw t6, 704(t2)<br>    |
| 204|[0x8000353c]<br>0x7FFFF7FF|- rs1_val == 0x7FFFFFFF and rs2_val == 0x0B #nosat<br>                                                                                               |[0x80001140]:binv t6, t5, t4<br> [0x80001144]:sw t6, 708(t2)<br>    |
| 205|[0x80003540]<br>0xFFFBFFFF|- rs1_val == 0xFFFFFFFF and rs2_val == 0x12 #nosat<br>                                                                                               |[0x80001150]:binv t6, t5, t4<br> [0x80001154]:sw t6, 712(t2)<br>    |
| 206|[0x80003544]<br>0x1E4F1513|- rs2_val == 0x1B and rs1_val == 0x164F1513 #nosat<br>                                                                                               |[0x80001164]:binv t6, t5, t4<br> [0x80001168]:sw t6, 716(t2)<br>    |
| 207|[0x80003548]<br>0xACC6DAF2|- rs2_val == 0x09 and rs1_val == 0xACC6D8F2 #nosat<br>                                                                                               |[0x80001178]:binv t6, t5, t4<br> [0x8000117c]:sw t6, 720(t2)<br>    |
| 208|[0x8000354c]<br>0xA123F541|- rs2_val == 0x06 and rs1_val == 0xA123F501 #nosat<br>                                                                                               |[0x8000118c]:binv t6, t5, t4<br> [0x80001190]:sw t6, 724(t2)<br>    |
| 209|[0x80003550]<br>0xB57A6A19|- rs2_val == 0x02 and rs1_val == 0xB57A6A1D #nosat<br>                                                                                               |[0x800011a0]:binv t6, t5, t4<br> [0x800011a4]:sw t6, 728(t2)<br>    |
| 210|[0x80003554]<br>0xE90794DD|- rs2_val == 0x01 and rs1_val == 0xE90794DF #nosat<br>                                                                                               |[0x800011b4]:binv t6, t5, t4<br> [0x800011b8]:sw t6, 732(t2)<br>    |
| 211|[0x80003558]<br>0xAF5570EF|- rs2_val == 0x00 and rs1_val == 0xAF5570EE #nosat<br>                                                                                               |[0x800011c8]:binv t6, t5, t4<br> [0x800011cc]:sw t6, 736(t2)<br>    |
| 212|[0x8000355c]<br>0xF542441C|- rs1_val == 0xF542441E and rs2_val == 0x01 #nosat<br>                                                                                               |[0x800011dc]:binv t6, t5, t4<br> [0x800011e0]:sw t6, 740(t2)<br>    |
| 213|[0x80003560]<br>0x62F28D0B|- rs1_val == 0x62F28D1B and rs2_val == 0x04 #nosat<br>                                                                                               |[0x800011f0]:binv t6, t5, t4<br> [0x800011f4]:sw t6, 744(t2)<br>    |
| 214|[0x80003564]<br>0x38BDB45D|- rs1_val == 0x38B9B45D and rs2_val == 0x12 #nosat<br>                                                                                               |[0x80001204]:binv t6, t5, t4<br> [0x80001208]:sw t6, 748(t2)<br>    |
| 215|[0x80003568]<br>0x16809A52|- rs1_val == 0x16809A12 and rs2_val == 0x06 #nosat<br>                                                                                               |[0x80001218]:binv t6, t5, t4<br> [0x8000121c]:sw t6, 752(t2)<br>    |
| 216|[0x8000356c]<br>0x082A1710|- rs1_val == 0x082A1750 and rs2_val == 0x06 #nosat<br>                                                                                               |[0x8000122c]:binv t6, t5, t4<br> [0x80001230]:sw t6, 756(t2)<br>    |
| 217|[0x80003570]<br>0x079DD24B|- rs1_val == 0x079DD25B and rs2_val == 0x04 #nosat<br>                                                                                               |[0x80001240]:binv t6, t5, t4<br> [0x80001244]:sw t6, 760(t2)<br>    |
| 218|[0x80003574]<br>0x0348687B|- rs1_val == 0x034C687B and rs2_val == 0x12 #nosat<br>                                                                                               |[0x80001254]:binv t6, t5, t4<br> [0x80001258]:sw t6, 764(t2)<br>    |
| 219|[0x80003578]<br>0x01B641FD|- rs1_val == 0x01B601FD and rs2_val == 0x0E #nosat<br>                                                                                               |[0x80001268]:binv t6, t5, t4<br> [0x8000126c]:sw t6, 768(t2)<br>    |
| 220|[0x8000357c]<br>0x00B202FD|- rs1_val == 0x00B302FD and rs2_val == 0x10 #nosat<br>                                                                                               |[0x8000127c]:binv t6, t5, t4<br> [0x80001280]:sw t6, 772(t2)<br>    |
| 221|[0x80003580]<br>0x0062A693|- rs1_val == 0x0062A6B3 and rs2_val == 0x05 #nosat<br>                                                                                               |[0x80001290]:binv t6, t5, t4<br> [0x80001294]:sw t6, 776(t2)<br>    |
| 222|[0x80003584]<br>0x00319238|- rs1_val == 0x00339238 and rs2_val == 0x11 #nosat<br>                                                                                               |[0x800012a4]:binv t6, t5, t4<br> [0x800012a8]:sw t6, 780(t2)<br>    |
| 223|[0x80003588]<br>0x00164AD0|- rs1_val == 0x00164AF0 and rs2_val == 0x05 #nosat<br>                                                                                               |[0x800012b8]:binv t6, t5, t4<br> [0x800012bc]:sw t6, 784(t2)<br>    |
| 224|[0x8000358c]<br>0x0009222B|- rs1_val == 0x0009222A and rs2_val == 0x00 #nosat<br>                                                                                               |[0x800012cc]:binv t6, t5, t4<br> [0x800012d0]:sw t6, 788(t2)<br>    |
| 225|[0x80003590]<br>0x0002284E|- rs1_val == 0x0006284E and rs2_val == 0x12 #nosat<br>                                                                                               |[0x800012e0]:binv t6, t5, t4<br> [0x800012e4]:sw t6, 792(t2)<br>    |
| 226|[0x80003594]<br>0x00031161|- rs1_val == 0x00035161 and rs2_val == 0x0E #nosat<br>                                                                                               |[0x800012f4]:binv t6, t5, t4<br> [0x800012f8]:sw t6, 796(t2)<br>    |
| 227|[0x80003598]<br>0x00010E24|- rs1_val == 0x00011E24 and rs2_val == 0x0C #nosat<br>                                                                                               |[0x80001308]:binv t6, t5, t4<br> [0x8000130c]:sw t6, 800(t2)<br>    |
| 228|[0x8000359c]<br>0x1000F614|- rs1_val == 0x0000F614 and rs2_val == 0x1C #nosat<br>                                                                                               |[0x8000131c]:binv t6, t5, t4<br> [0x80001320]:sw t6, 804(t2)<br>    |
| 229|[0x800035a0]<br>0x20005CC1|- rs1_val == 0x00005CC1 and rs2_val == 0x1D #nosat<br>                                                                                               |[0x80001330]:binv t6, t5, t4<br> [0x80001334]:sw t6, 808(t2)<br>    |
| 230|[0x800035a4]<br>0x00003224|- rs1_val == 0x00003226 and rs2_val == 0x01 #nosat<br>                                                                                               |[0x80001344]:binv t6, t5, t4<br> [0x80001348]:sw t6, 812(t2)<br>    |
| 231|[0x800035a8]<br>0x00009D0C|- rs1_val == 0x00001D0C and rs2_val == 0x0F #nosat<br>                                                                                               |[0x80001358]:binv t6, t5, t4<br> [0x8000135c]:sw t6, 816(t2)<br>    |
| 232|[0x800035ac]<br>0x00000DD0|- rs1_val == 0x00000DD4 and rs2_val == 0x02 #nosat<br>                                                                                               |[0x8000136c]:binv t6, t5, t4<br> [0x80001370]:sw t6, 820(t2)<br>    |
| 233|[0x800035b0]<br>0x000005C1|- rs1_val == 0x000005D1 and rs2_val == 0x04 #nosat<br>                                                                                               |[0x8000137c]:binv t6, t5, t4<br> [0x80001380]:sw t6, 824(t2)<br>    |
| 234|[0x800035b4]<br>0x000002A6|- rs1_val == 0x000002A7 and rs2_val == 0x00 #nosat<br>                                                                                               |[0x8000138c]:binv t6, t5, t4<br> [0x80001390]:sw t6, 828(t2)<br>    |
| 235|[0x800035b8]<br>0x00000597|- rs1_val == 0x00000197 and rs2_val == 0x0A #nosat<br>                                                                                               |[0x8000139c]:binv t6, t5, t4<br> [0x800013a0]:sw t6, 832(t2)<br>    |
| 236|[0x800035bc]<br>0x100000B9|- rs1_val == 0x000000B9 and rs2_val == 0x1C #nosat<br>                                                                                               |[0x800013ac]:binv t6, t5, t4<br> [0x800013b0]:sw t6, 836(t2)<br>    |
| 237|[0x800035c0]<br>0x0200004C|- rs1_val == 0x0000004C and rs2_val == 0x19 #nosat<br>                                                                                               |[0x800013bc]:binv t6, t5, t4<br> [0x800013c0]:sw t6, 840(t2)<br>    |
| 238|[0x800035c4]<br>0x00000022|- rs1_val == 0x00000026 and rs2_val == 0x02 #nosat<br>                                                                                               |[0x800013cc]:binv t6, t5, t4<br> [0x800013d0]:sw t6, 844(t2)<br>    |
| 239|[0x800035c8]<br>0x00000212|- rs1_val == 0x00000012 and rs2_val == 0x09 #nosat<br>                                                                                               |[0x800013dc]:binv t6, t5, t4<br> [0x800013e0]:sw t6, 848(t2)<br>    |
| 240|[0x800035cc]<br>0x1000000C|- rs1_val == 0x0000000C and rs2_val == 0x1C #nosat<br>                                                                                               |[0x800013ec]:binv t6, t5, t4<br> [0x800013f0]:sw t6, 852(t2)<br>    |
| 241|[0x800035d0]<br>0x00000806|- rs1_val == 0x00000006 and rs2_val == 0x0B #nosat<br>                                                                                               |[0x800013fc]:binv t6, t5, t4<br> [0x80001400]:sw t6, 856(t2)<br>    |
| 242|[0x800035d4]<br>0x40000003|- rs1_val == 0x00000003 and rs2_val == 0x1E #nosat<br>                                                                                               |[0x8000140c]:binv t6, t5, t4<br> [0x80001410]:sw t6, 860(t2)<br>    |
| 243|[0x800035d8]<br>0x00001001|- rs1_val == 0x00000001 and rs2_val == 0x0C #nosat<br>                                                                                               |[0x8000141c]:binv t6, t5, t4<br> [0x80001420]:sw t6, 864(t2)<br>    |
| 244|[0x800035dc]<br>0x20000000|- rs1_val == 0x00000000 and rs2_val == 0x1D #nosat<br>                                                                                               |[0x8000142c]:binv t6, t5, t4<br> [0x80001430]:sw t6, 868(t2)<br>    |
| 245|[0x800035e0]<br>0x5943AA19|- rs2_val == 0x0F and rs1_val == 0x59432A19 #nosat<br>                                                                                               |[0x80001440]:binv t6, t5, t4<br> [0x80001444]:sw t6, 872(t2)<br>    |
| 246|[0x800035e4]<br>0xCE3506F6|- rs2_val == 0x17 and rs1_val == 0xCEB506F6 #nosat<br>                                                                                               |[0x80001454]:binv t6, t5, t4<br> [0x80001458]:sw t6, 876(t2)<br>    |
| 247|[0x800035e8]<br>0xC4EC6148|- rs2_val == 0x18 and rs1_val == 0xC5EC6148 #nosat<br>                                                                                               |[0x80001468]:binv t6, t5, t4<br> [0x8000146c]:sw t6, 880(t2)<br>    |
| 248|[0x800035ec]<br>0xB9EF1857|- rs2_val == 0x1D and rs1_val == 0x99EF1857 #nosat<br>                                                                                               |[0x8000147c]:binv t6, t5, t4<br> [0x80001480]:sw t6, 884(t2)<br>    |
| 249|[0x800035f0]<br>0x54B91C79|- rs2_val == 0x1E and rs1_val == 0x14B91C79 #nosat<br>                                                                                               |[0x80001490]:binv t6, t5, t4<br> [0x80001494]:sw t6, 888(t2)<br>    |
| 250|[0x800035f4]<br>0x8973E89C|- rs2_val == 0x1F and rs1_val == 0x0973E89C #nosat<br>                                                                                               |[0x800014a4]:binv t6, t5, t4<br> [0x800014a8]:sw t6, 892(t2)<br>    |
| 251|[0x800035f8]<br>0x7C43BDB9|- rs1_val == 0x7843BDB9 and rs2_val == 0x1A #nosat<br>                                                                                               |[0x800014b8]:binv t6, t5, t4<br> [0x800014bc]:sw t6, 896(t2)<br>    |
| 252|[0x800035fc]<br>0x979889D0|- rs1_val == 0x9798C9D0 and rs2_val == 0x0E #nosat<br>                                                                                               |[0x800014cc]:binv t6, t5, t4<br> [0x800014d0]:sw t6, 900(t2)<br>    |
| 253|[0x80003600]<br>0xD814D176|- rs1_val == 0xD814D576 and rs2_val == 0x0A #nosat<br>                                                                                               |[0x800014e0]:binv t6, t5, t4<br> [0x800014e4]:sw t6, 904(t2)<br>    |
| 254|[0x80003604]<br>0xE0B37559|- rs1_val == 0xE0A37559 and rs2_val == 0x14 #nosat<br>                                                                                               |[0x800014f4]:binv t6, t5, t4<br> [0x800014f8]:sw t6, 908(t2)<br>    |
| 255|[0x80003608]<br>0xB79FB998|- rs1_val == 0xF79FB998 and rs2_val == 0x1E #nosat<br>                                                                                               |[0x80001508]:binv t6, t5, t4<br> [0x8000150c]:sw t6, 912(t2)<br>    |
| 256|[0x8000360c]<br>0xE87A2561|- rs1_val == 0xF87A2561 and rs2_val == 0x1C #nosat<br>                                                                                               |[0x8000151c]:binv t6, t5, t4<br> [0x80001520]:sw t6, 916(t2)<br>    |
| 257|[0x80003610]<br>0xFDA5ED7F|- rs1_val == 0xFDA56D7F and rs2_val == 0x0F #nosat<br>                                                                                               |[0x80001530]:binv t6, t5, t4<br> [0x80001534]:sw t6, 920(t2)<br>    |
| 258|[0x80003614]<br>0xFECDEAB5|- rs1_val == 0xFE4DEAB5 and rs2_val == 0x17 #nosat<br>                                                                                               |[0x80001544]:binv t6, t5, t4<br> [0x80001548]:sw t6, 924(t2)<br>    |
| 259|[0x80003618]<br>0xFF6075BB|- rs1_val == 0xFF6875BB and rs2_val == 0x13 #nosat<br>                                                                                               |[0x80001558]:binv t6, t5, t4<br> [0x8000155c]:sw t6, 928(t2)<br>    |
| 260|[0x8000361c]<br>0xFF93D1E4|- rs1_val == 0xFF93D0E4 and rs2_val == 0x08 #nosat<br>                                                                                               |[0x8000156c]:binv t6, t5, t4<br> [0x80001570]:sw t6, 932(t2)<br>    |
| 261|[0x80003620]<br>0xFFD4AA22|- rs1_val == 0xFFD4AA23 and rs2_val == 0x00 #nosat<br>                                                                                               |[0x80001580]:binv t6, t5, t4<br> [0x80001584]:sw t6, 936(t2)<br>    |
| 262|[0x80003624]<br>0xFEE2FC91|- rs1_val == 0xFFE2FC91 and rs2_val == 0x18 #nosat<br>                                                                                               |[0x80001594]:binv t6, t5, t4<br> [0x80001598]:sw t6, 940(t2)<br>    |
| 263|[0x80003628]<br>0xEFF1D2A0|- rs1_val == 0xFFF1D2A0 and rs2_val == 0x1C #nosat<br>                                                                                               |[0x800015a8]:binv t6, t5, t4<br> [0x800015ac]:sw t6, 944(t2)<br>    |
| 264|[0x8000362c]<br>0xFFF984D1|- rs1_val == 0xFFF904D1 and rs2_val == 0x0F #nosat<br>                                                                                               |[0x800015bc]:binv t6, t5, t4<br> [0x800015c0]:sw t6, 948(t2)<br>    |
| 265|[0x80003630]<br>0xDFFCDB0B|- rs1_val == 0xFFFCDB0B and rs2_val == 0x1D #nosat<br>                                                                                               |[0x800015d0]:binv t6, t5, t4<br> [0x800015d4]:sw t6, 952(t2)<br>    |
| 266|[0x80003634]<br>0xFF7EC2B4|- rs1_val == 0xFFFEC2B4 and rs2_val == 0x17 #nosat<br>                                                                                               |[0x800015e4]:binv t6, t5, t4<br> [0x800015e8]:sw t6, 956(t2)<br>    |
| 267|[0x80003638]<br>0xFFF71E5F|- rs1_val == 0xFFFF1E5F and rs2_val == 0x13 #nosat<br>                                                                                               |[0x800015f8]:binv t6, t5, t4<br> [0x800015fc]:sw t6, 960(t2)<br>    |
| 268|[0x8000363c]<br>0xFFFFAAEE|- rs1_val == 0xFFFFA2EE and rs2_val == 0x0B #nosat<br>                                                                                               |[0x8000160c]:binv t6, t5, t4<br> [0x80001610]:sw t6, 964(t2)<br>    |
| 269|[0x80003640]<br>0xFFFED410|- rs1_val == 0xFFFFD410 and rs2_val == 0x10 #nosat<br>                                                                                               |[0x80001620]:binv t6, t5, t4<br> [0x80001624]:sw t6, 968(t2)<br>    |
| 270|[0x80003644]<br>0xFBFFEE0A|- rs1_val == 0xFFFFEE0A and rs2_val == 0x1A #nosat<br>                                                                                               |[0x80001634]:binv t6, t5, t4<br> [0x80001638]:sw t6, 972(t2)<br>    |
| 271|[0x80003648]<br>0xFFBFF32A|- rs1_val == 0xFFFFF32A and rs2_val == 0x16 #nosat<br>                                                                                               |[0x80001648]:binv t6, t5, t4<br> [0x8000164c]:sw t6, 976(t2)<br>    |
| 272|[0x8000364c]<br>0xFFFFFA84|- rs1_val == 0xFFFFFB84 and rs2_val == 0x08 #nosat<br>                                                                                               |[0x80001658]:binv t6, t5, t4<br> [0x8000165c]:sw t6, 980(t2)<br>    |
| 273|[0x80003650]<br>0xFBFFFC1D|- rs1_val == 0xFFFFFC1D and rs2_val == 0x1A #nosat<br>                                                                                               |[0x80001668]:binv t6, t5, t4<br> [0x8000166c]:sw t6, 984(t2)<br>    |
| 274|[0x80003654]<br>0xFF7FFE31|- rs1_val == 0xFFFFFE31 and rs2_val == 0x17 #nosat<br>                                                                                               |[0x80001678]:binv t6, t5, t4<br> [0x8000167c]:sw t6, 988(t2)<br>    |
| 275|[0x80003658]<br>0xFFFFFF54|- rs1_val == 0xFFFFFF44 and rs2_val == 0x04 #nosat<br>                                                                                               |[0x80001688]:binv t6, t5, t4<br> [0x8000168c]:sw t6, 992(t2)<br>    |
| 276|[0x8000365c]<br>0x7FFFFFBA|- rs1_val == 0xFFFFFFBA and rs2_val == 0x1F #nosat<br>                                                                                               |[0x80001698]:binv t6, t5, t4<br> [0x8000169c]:sw t6, 996(t2)<br>    |
| 277|[0x80003660]<br>0xFFFFFBC6|- rs1_val == 0xFFFFFFC6 and rs2_val == 0x0A #nosat<br>                                                                                               |[0x800016a8]:binv t6, t5, t4<br> [0x800016ac]:sw t6, 1000(t2)<br>   |
| 278|[0x80003664]<br>0xFFFDFFE8|- rs1_val == 0xFFFFFFE8 and rs2_val == 0x11 #nosat<br>                                                                                               |[0x800016b8]:binv t6, t5, t4<br> [0x800016bc]:sw t6, 1004(t2)<br>   |
| 279|[0x80003668]<br>0x7FFFFFF2|- rs1_val == 0xFFFFFFF2 and rs2_val == 0x1F #nosat<br>                                                                                               |[0x800016c8]:binv t6, t5, t4<br> [0x800016cc]:sw t6, 1008(t2)<br>   |
| 280|[0x8000366c]<br>0xDFFFFFF9|- rs1_val == 0xFFFFFFF9 and rs2_val == 0x1D #nosat<br>                                                                                               |[0x800016d8]:binv t6, t5, t4<br> [0x800016dc]:sw t6, 1012(t2)<br>   |
| 281|[0x80003670]<br>0xFFFFFFFC|- rs1_val == 0xFFFFFFFD and rs2_val == 0x00 #nosat<br>                                                                                               |[0x800016e8]:binv t6, t5, t4<br> [0x800016ec]:sw t6, 1016(t2)<br>   |
| 282|[0x80003674]<br>0xBFFFFFFE|- rs1_val == 0xFFFFFFFE and rs2_val == 0x1E #nosat<br>                                                                                               |[0x800016f8]:binv t6, t5, t4<br> [0x800016fc]:sw t6, 1020(t2)<br>   |
| 283|[0x80003678]<br>0xFFFFFFFB|- rs1_val == 0xFFFFFFFF and rs2_val == 0x02 #nosat<br>                                                                                               |[0x80001708]:binv t6, t5, t4<br> [0x8000170c]:sw t6, 1024(t2)<br>   |
| 284|[0x8000367c]<br>0x7FFFFBFF|- rs2_val == 2863311530<br>                                                                                                                          |[0x80001720]:binv t6, t5, t4<br> [0x80001724]:sw t6, 1028(t2)<br>   |
| 285|[0x80003684]<br>0x2AAAAAAA|- rs1_val == 2863311530<br>                                                                                                                          |[0x80001750]:binv t6, t5, t4<br> [0x80001754]:sw t6, 1036(t2)<br>   |
| 286|[0x8000368c]<br>0xFFFFFFFF|- rs2_val == 4160749567<br>                                                                                                                          |[0x80001780]:binv t6, t5, t4<br> [0x80001784]:sw t6, 1044(t2)<br>   |
