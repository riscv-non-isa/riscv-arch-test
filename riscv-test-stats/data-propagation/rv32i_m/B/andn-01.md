
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001170')]      |
| SIG_REGION                | [('0x80003210', '0x80003580', '220 words')]      |
| COV_LABELS                | andn      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial14/32/riscof_work/andn-01.S/ref.S    |
| Total Number of coverpoints| 331     |
| Total Coverpoints Hit     | 325      |
| Total Signature Updates   | 217      |
| STAT1                     | 214      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c40]:andn t6, t5, t4
      [0x80000c44]:sw t6, 520(t1)
 -- Signature Address: 0x80003484 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : andn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0 and rs2_val==0
      - rs1_val == 0
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001150]:andn t6, t5, t4
      [0x80001154]:sw t6, 752(t1)
 -- Signature Address: 0x8000356c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : andn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967291
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001160]:andn t6, t5, t4
      [0x80001164]:sw t6, 756(t1)
 -- Signature Address: 0x80003570 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : andn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967293
      - rs1_val == 0






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

|s.no|        signature         |                                                                               coverpoints                                                                               |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : andn<br> - rs1 : x30<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs2_val == 1<br> - rs1_val == 0<br>                                          |[0x80000108]:andn t6, t5, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_val==0 and rs2_val==0<br> - rs2_val == 0<br>                                                 |[0x80000118]:andn t4, t4, t4<br> [0x8000011c]:sw t4, 4(ra)<br>      |
|   3|[0x80003218]<br>0x00000000|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 3221225471<br>                                                                        |[0x8000012c]:andn t3, t3, t5<br> [0x80000130]:sw t3, 8(ra)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x30<br> - rs1 == rs2 != rd<br>                                                                                                    |[0x8000013c]:andn t5, s11, s11<br> [0x80000140]:sw t5, 12(ra)<br>   |
|   5|[0x80003220]<br>0x00000000|- rs1 : x31<br> - rs2 : x28<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 4026531839<br>                                                 |[0x80000150]:andn s11, t6, t3<br> [0x80000154]:sw s11, 16(ra)<br>   |
|   6|[0x80003224]<br>0x00000000|- rs1 : x25<br> - rs2 : x24<br> - rd : x26<br> - rs2_val == 4160749567<br>                                                                                               |[0x80000164]:andn s10, s9, s8<br> [0x80000168]:sw s10, 20(ra)<br>   |
|   7|[0x80003228]<br>0x00000000|- rs1 : x24<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == 4227858431<br>                                                                                               |[0x80000178]:andn s9, s8, s10<br> [0x8000017c]:sw s9, 24(ra)<br>    |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == 4261412863<br>                                                                                               |[0x8000018c]:andn s8, s10, s9<br> [0x80000190]:sw s8, 28(ra)<br>    |
|   9|[0x80003230]<br>0x00000000|- rs1 : x22<br> - rs2 : x21<br> - rd : x23<br> - rs2_val == 4278190079<br>                                                                                               |[0x800001a0]:andn s7, s6, s5<br> [0x800001a4]:sw s7, 32(ra)<br>     |
|  10|[0x80003234]<br>0x00000000|- rs1 : x21<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == 4286578687<br>                                                                                               |[0x800001b4]:andn s6, s5, s7<br> [0x800001b8]:sw s6, 36(ra)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                                                                               |[0x800001c8]:andn s5, s7, s6<br> [0x800001cc]:sw s5, 40(ra)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x19<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == 4292870143<br>                                                                                               |[0x800001dc]:andn s4, s3, s2<br> [0x800001e0]:sw s4, 44(ra)<br>     |
|  13|[0x80003240]<br>0x00000000|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                                                                               |[0x800001f0]:andn s3, s2, s4<br> [0x800001f4]:sw s3, 48(ra)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x20<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == 4294443007<br>                                                                                               |[0x80000204]:andn s2, s4, s3<br> [0x80000208]:sw s2, 52(ra)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x16<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == 4294705151<br>                                                                                               |[0x80000218]:andn a7, a6, a5<br> [0x8000021c]:sw a7, 56(ra)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x15<br> - rs2 : x17<br> - rd : x16<br> - rs2_val == 4294836223<br>                                                                                               |[0x8000022c]:andn a6, a5, a7<br> [0x80000230]:sw a6, 60(ra)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x17<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                                                                               |[0x80000240]:andn a5, a7, a6<br> [0x80000244]:sw a5, 64(ra)<br>     |
|  18|[0x80003254]<br>0x00000000|- rs1 : x13<br> - rs2 : x12<br> - rd : x14<br> - rs2_val == 4294934527<br>                                                                                               |[0x80000254]:andn a4, a3, a2<br> [0x80000258]:sw a4, 68(ra)<br>     |
|  19|[0x80003258]<br>0x00000000|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                                                                               |[0x80000268]:andn a3, a2, a4<br> [0x8000026c]:sw a3, 72(ra)<br>     |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == 4294959103<br>                                                                                               |[0x8000027c]:andn a2, a4, a3<br> [0x80000280]:sw a2, 76(ra)<br>     |
|  21|[0x80003260]<br>0x00000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == 4294963199<br>                                                                                                |[0x80000290]:andn a1, a0, s1<br> [0x80000294]:sw a1, 80(ra)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x9<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                                                                |[0x800002a4]:andn a0, s1, a1<br> [0x800002a8]:sw a0, 84(ra)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x11<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                                                                |[0x800002b4]:andn s1, a1, a0<br> [0x800002b8]:sw s1, 88(ra)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x7<br> - rs2 : x6<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                                                                  |[0x800002c4]:andn fp, t2, t1<br> [0x800002c8]:sw fp, 92(ra)<br>     |
|  25|[0x80003270]<br>0x00000000|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                                                                  |[0x800002d4]:andn t2, t1, fp<br> [0x800002d8]:sw t2, 96(ra)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x8<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                                                                  |[0x800002e4]:andn t1, fp, t2<br> [0x800002e8]:sw t1, 100(ra)<br>    |
|  27|[0x80003278]<br>0x00000000|- rs1 : x4<br> - rs2 : x3<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                                                                  |[0x800002f4]:andn t0, tp, gp<br> [0x800002f8]:sw t0, 104(ra)<br>    |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x3<br> - rs2 : x5<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                                                                  |[0x8000030c]:andn tp, gp, t0<br> [0x80000310]:sw tp, 0(t1)<br>      |
|  29|[0x80003280]<br>0x00000000|- rs1 : x5<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                                                                  |[0x8000031c]:andn gp, t0, tp<br> [0x80000320]:sw gp, 4(t1)<br>      |
|  30|[0x80003284]<br>0x00000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br>                                                                                                                              |[0x8000032c]:andn sp, ra, zero<br> [0x80000330]:sw sp, 8(t1)<br>    |
|  31|[0x80003288]<br>0x00000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br>                                                                                                  |[0x8000033c]:andn ra, zero, sp<br> [0x80000340]:sw ra, 12(t1)<br>   |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x2<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == 4294967293<br>                                                                                                  |[0x8000034c]:andn zero, sp, ra<br> [0x80000350]:sw zero, 16(t1)<br> |
|  33|[0x80003290]<br>0x00000000|- rs2_val == 4294967294<br>                                                                                                                                              |[0x8000035c]:andn t6, t5, t4<br> [0x80000360]:sw t6, 20(t1)<br>     |
|  34|[0x80003294]<br>0x7FFFFFFF|- rs1_val == 2147483647<br>                                                                                                                                              |[0x80000370]:andn t6, t5, t4<br> [0x80000374]:sw t6, 24(t1)<br>     |
|  35|[0x80003298]<br>0xBFFFFFFF|- rs1_val == 3221225471<br>                                                                                                                                              |[0x80000384]:andn t6, t5, t4<br> [0x80000388]:sw t6, 28(t1)<br>     |
|  36|[0x8000329c]<br>0xDFFFFFFF|- rs1_val == 3758096383<br>                                                                                                                                              |[0x80000398]:andn t6, t5, t4<br> [0x8000039c]:sw t6, 32(t1)<br>     |
|  37|[0x800032a0]<br>0xEFFFFFFF|- rs1_val == 4026531839<br>                                                                                                                                              |[0x800003ac]:andn t6, t5, t4<br> [0x800003b0]:sw t6, 36(t1)<br>     |
|  38|[0x800032a4]<br>0xF7FFFFFF|- rs1_val == 4160749567<br>                                                                                                                                              |[0x800003c0]:andn t6, t5, t4<br> [0x800003c4]:sw t6, 40(t1)<br>     |
|  39|[0x800032a8]<br>0xFBFFFFFF|- rs1_val == 4227858431<br>                                                                                                                                              |[0x800003d4]:andn t6, t5, t4<br> [0x800003d8]:sw t6, 44(t1)<br>     |
|  40|[0x800032ac]<br>0xFDFFFFFF|- rs1_val == 4261412863<br>                                                                                                                                              |[0x800003e8]:andn t6, t5, t4<br> [0x800003ec]:sw t6, 48(t1)<br>     |
|  41|[0x800032b0]<br>0xFEFFFFFF|- rs1_val == 4278190079<br>                                                                                                                                              |[0x800003fc]:andn t6, t5, t4<br> [0x80000400]:sw t6, 52(t1)<br>     |
|  42|[0x800032b4]<br>0xFF7FFFFF|- rs1_val == 4286578687<br>                                                                                                                                              |[0x80000410]:andn t6, t5, t4<br> [0x80000414]:sw t6, 56(t1)<br>     |
|  43|[0x800032b8]<br>0xFFBFFFFF|- rs1_val == 4290772991<br>                                                                                                                                              |[0x80000424]:andn t6, t5, t4<br> [0x80000428]:sw t6, 60(t1)<br>     |
|  44|[0x800032bc]<br>0xFFDFFFFF|- rs1_val == 4292870143<br>                                                                                                                                              |[0x80000438]:andn t6, t5, t4<br> [0x8000043c]:sw t6, 64(t1)<br>     |
|  45|[0x800032c0]<br>0xFFEFFFFF|- rs1_val == 4293918719<br>                                                                                                                                              |[0x8000044c]:andn t6, t5, t4<br> [0x80000450]:sw t6, 68(t1)<br>     |
|  46|[0x800032c4]<br>0xFFF7FFFF|- rs1_val == 4294443007<br>                                                                                                                                              |[0x80000460]:andn t6, t5, t4<br> [0x80000464]:sw t6, 72(t1)<br>     |
|  47|[0x800032c8]<br>0xFFFBFFFF|- rs1_val == 4294705151<br>                                                                                                                                              |[0x80000474]:andn t6, t5, t4<br> [0x80000478]:sw t6, 76(t1)<br>     |
|  48|[0x800032cc]<br>0xFFFDFFFF|- rs1_val == 4294836223<br>                                                                                                                                              |[0x80000488]:andn t6, t5, t4<br> [0x8000048c]:sw t6, 80(t1)<br>     |
|  49|[0x800032d0]<br>0xFFFEFFFF|- rs1_val == 4294901759<br>                                                                                                                                              |[0x8000049c]:andn t6, t5, t4<br> [0x800004a0]:sw t6, 84(t1)<br>     |
|  50|[0x800032d4]<br>0xFFFF7FFF|- rs1_val == 4294934527<br>                                                                                                                                              |[0x800004b0]:andn t6, t5, t4<br> [0x800004b4]:sw t6, 88(t1)<br>     |
|  51|[0x800032d8]<br>0xFFFFBFFF|- rs1_val == 4294950911<br>                                                                                                                                              |[0x800004c4]:andn t6, t5, t4<br> [0x800004c8]:sw t6, 92(t1)<br>     |
|  52|[0x800032dc]<br>0xFFFFDFFF|- rs1_val == 4294959103<br>                                                                                                                                              |[0x800004d8]:andn t6, t5, t4<br> [0x800004dc]:sw t6, 96(t1)<br>     |
|  53|[0x800032e0]<br>0xFFFFEFFF|- rs1_val == 4294963199<br>                                                                                                                                              |[0x800004ec]:andn t6, t5, t4<br> [0x800004f0]:sw t6, 100(t1)<br>    |
|  54|[0x800032e4]<br>0xFFFFF7FF|- rs1_val == 4294965247<br>                                                                                                                                              |[0x80000500]:andn t6, t5, t4<br> [0x80000504]:sw t6, 104(t1)<br>    |
|  55|[0x800032e8]<br>0xFFFFFBFF|- rs1_val == 4294966271<br>                                                                                                                                              |[0x80000510]:andn t6, t5, t4<br> [0x80000514]:sw t6, 108(t1)<br>    |
|  56|[0x800032ec]<br>0xFFFFFDFF|- rs1_val == 4294966783<br>                                                                                                                                              |[0x80000520]:andn t6, t5, t4<br> [0x80000524]:sw t6, 112(t1)<br>    |
|  57|[0x800032f0]<br>0xFFFFFEFF|- rs1_val == 4294967039<br>                                                                                                                                              |[0x80000530]:andn t6, t5, t4<br> [0x80000534]:sw t6, 116(t1)<br>    |
|  58|[0x800032f4]<br>0xFFFFFF7F|- rs1_val == 4294967167<br>                                                                                                                                              |[0x80000540]:andn t6, t5, t4<br> [0x80000544]:sw t6, 120(t1)<br>    |
|  59|[0x800032f8]<br>0xFFFFFFBF|- rs1_val == 4294967231<br>                                                                                                                                              |[0x80000550]:andn t6, t5, t4<br> [0x80000554]:sw t6, 124(t1)<br>    |
|  60|[0x800032fc]<br>0xFFFFFFDF|- rs1_val == 4294967263<br>                                                                                                                                              |[0x80000560]:andn t6, t5, t4<br> [0x80000564]:sw t6, 128(t1)<br>    |
|  61|[0x80003300]<br>0xFFFFFFEF|- rs1_val == 4294967279<br>                                                                                                                                              |[0x80000570]:andn t6, t5, t4<br> [0x80000574]:sw t6, 132(t1)<br>    |
|  62|[0x80003304]<br>0xFFFFFFF7|- rs1_val == 4294967287<br>                                                                                                                                              |[0x80000580]:andn t6, t5, t4<br> [0x80000584]:sw t6, 136(t1)<br>    |
|  63|[0x80003308]<br>0xFFFFFFFB|- rs1_val == 4294967291<br>                                                                                                                                              |[0x80000590]:andn t6, t5, t4<br> [0x80000594]:sw t6, 140(t1)<br>    |
|  64|[0x8000330c]<br>0xFFFFFFFD|- rs1_val == 4294967293<br>                                                                                                                                              |[0x800005a0]:andn t6, t5, t4<br> [0x800005a4]:sw t6, 144(t1)<br>    |
|  65|[0x80003310]<br>0xFFFFFFFE|- rs1_val == 4294967294<br>                                                                                                                                              |[0x800005b0]:andn t6, t5, t4<br> [0x800005b4]:sw t6, 148(t1)<br>    |
|  66|[0x80003314]<br>0x00000000|- rs2_val == 2147483648<br>                                                                                                                                              |[0x800005c0]:andn t6, t5, t4<br> [0x800005c4]:sw t6, 152(t1)<br>    |
|  67|[0x80003318]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                                                              |[0x800005d0]:andn t6, t5, t4<br> [0x800005d4]:sw t6, 156(t1)<br>    |
|  68|[0x8000331c]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                               |[0x800005e0]:andn t6, t5, t4<br> [0x800005e4]:sw t6, 160(t1)<br>    |
|  69|[0x80003320]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                               |[0x800005f0]:andn t6, t5, t4<br> [0x800005f4]:sw t6, 164(t1)<br>    |
|  70|[0x80003324]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                               |[0x80000600]:andn t6, t5, t4<br> [0x80000604]:sw t6, 168(t1)<br>    |
|  71|[0x80003328]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                |[0x80000610]:andn t6, t5, t4<br> [0x80000614]:sw t6, 172(t1)<br>    |
|  72|[0x8000332c]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                |[0x80000620]:andn t6, t5, t4<br> [0x80000624]:sw t6, 176(t1)<br>    |
|  73|[0x80003330]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                |[0x80000630]:andn t6, t5, t4<br> [0x80000634]:sw t6, 180(t1)<br>    |
|  74|[0x80003334]<br>0x00000000|- rs2_val == 8388608<br>                                                                                                                                                 |[0x80000640]:andn t6, t5, t4<br> [0x80000644]:sw t6, 184(t1)<br>    |
|  75|[0x80003338]<br>0x00000000|- rs2_val == 4194304<br>                                                                                                                                                 |[0x80000650]:andn t6, t5, t4<br> [0x80000654]:sw t6, 188(t1)<br>    |
|  76|[0x8000333c]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                 |[0x80000660]:andn t6, t5, t4<br> [0x80000664]:sw t6, 192(t1)<br>    |
|  77|[0x80003340]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                 |[0x80000670]:andn t6, t5, t4<br> [0x80000674]:sw t6, 196(t1)<br>    |
|  78|[0x80003344]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                  |[0x80000680]:andn t6, t5, t4<br> [0x80000684]:sw t6, 200(t1)<br>    |
|  79|[0x80003348]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                  |[0x80000690]:andn t6, t5, t4<br> [0x80000694]:sw t6, 204(t1)<br>    |
|  80|[0x8000334c]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                                                  |[0x800006a0]:andn t6, t5, t4<br> [0x800006a4]:sw t6, 208(t1)<br>    |
|  81|[0x80003350]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                   |[0x800006b0]:andn t6, t5, t4<br> [0x800006b4]:sw t6, 212(t1)<br>    |
|  82|[0x80003354]<br>0x00000000|- rs2_val == 32768<br>                                                                                                                                                   |[0x800006c0]:andn t6, t5, t4<br> [0x800006c4]:sw t6, 216(t1)<br>    |
|  83|[0x80003358]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                   |[0x800006d0]:andn t6, t5, t4<br> [0x800006d4]:sw t6, 220(t1)<br>    |
|  84|[0x8000335c]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                    |[0x800006e0]:andn t6, t5, t4<br> [0x800006e4]:sw t6, 224(t1)<br>    |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                    |[0x800006f0]:andn t6, t5, t4<br> [0x800006f4]:sw t6, 228(t1)<br>    |
|  86|[0x80003364]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                    |[0x80000704]:andn t6, t5, t4<br> [0x80000708]:sw t6, 232(t1)<br>    |
|  87|[0x80003368]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                                                    |[0x80000714]:andn t6, t5, t4<br> [0x80000718]:sw t6, 236(t1)<br>    |
|  88|[0x8000336c]<br>0x00000000|- rs2_val == 512<br>                                                                                                                                                     |[0x80000724]:andn t6, t5, t4<br> [0x80000728]:sw t6, 240(t1)<br>    |
|  89|[0x80003370]<br>0x00000000|- rs2_val == 256<br>                                                                                                                                                     |[0x80000734]:andn t6, t5, t4<br> [0x80000738]:sw t6, 244(t1)<br>    |
|  90|[0x80003374]<br>0x00000000|- rs2_val == 128<br>                                                                                                                                                     |[0x80000744]:andn t6, t5, t4<br> [0x80000748]:sw t6, 248(t1)<br>    |
|  91|[0x80003378]<br>0x00000000|- rs2_val == 64<br>                                                                                                                                                      |[0x80000754]:andn t6, t5, t4<br> [0x80000758]:sw t6, 252(t1)<br>    |
|  92|[0x8000337c]<br>0x00000000|- rs2_val == 32<br>                                                                                                                                                      |[0x80000764]:andn t6, t5, t4<br> [0x80000768]:sw t6, 256(t1)<br>    |
|  93|[0x80003380]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                      |[0x80000774]:andn t6, t5, t4<br> [0x80000778]:sw t6, 260(t1)<br>    |
|  94|[0x80003384]<br>0x00000000|- rs2_val == 8<br>                                                                                                                                                       |[0x80000784]:andn t6, t5, t4<br> [0x80000788]:sw t6, 264(t1)<br>    |
|  95|[0x80003388]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                       |[0x80000794]:andn t6, t5, t4<br> [0x80000798]:sw t6, 268(t1)<br>    |
|  96|[0x8000338c]<br>0x00000000|- rs2_val == 2<br>                                                                                                                                                       |[0x800007a4]:andn t6, t5, t4<br> [0x800007a8]:sw t6, 272(t1)<br>    |
|  97|[0x80003390]<br>0x80000000|- rs1_val == 2147483648<br>                                                                                                                                              |[0x800007b4]:andn t6, t5, t4<br> [0x800007b8]:sw t6, 276(t1)<br>    |
|  98|[0x80003394]<br>0x40000000|- rs1_val == 1073741824<br>                                                                                                                                              |[0x800007c4]:andn t6, t5, t4<br> [0x800007c8]:sw t6, 280(t1)<br>    |
|  99|[0x80003398]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                               |[0x800007d4]:andn t6, t5, t4<br> [0x800007d8]:sw t6, 284(t1)<br>    |
| 100|[0x8000339c]<br>0x10000000|- rs1_val == 268435456<br>                                                                                                                                               |[0x800007e4]:andn t6, t5, t4<br> [0x800007e8]:sw t6, 288(t1)<br>    |
| 101|[0x800033a0]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                                                               |[0x800007f4]:andn t6, t5, t4<br> [0x800007f8]:sw t6, 292(t1)<br>    |
| 102|[0x800033a4]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                                                                |[0x80000804]:andn t6, t5, t4<br> [0x80000808]:sw t6, 296(t1)<br>    |
| 103|[0x800033a8]<br>0x02000000|- rs1_val == 33554432<br>                                                                                                                                                |[0x80000814]:andn t6, t5, t4<br> [0x80000818]:sw t6, 300(t1)<br>    |
| 104|[0x800033ac]<br>0x01000000|- rs1_val == 16777216<br>                                                                                                                                                |[0x80000824]:andn t6, t5, t4<br> [0x80000828]:sw t6, 304(t1)<br>    |
| 105|[0x800033b0]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                                                 |[0x80000834]:andn t6, t5, t4<br> [0x80000838]:sw t6, 308(t1)<br>    |
| 106|[0x800033b4]<br>0x00400000|- rs1_val == 4194304<br>                                                                                                                                                 |[0x80000844]:andn t6, t5, t4<br> [0x80000848]:sw t6, 312(t1)<br>    |
| 107|[0x800033b8]<br>0x00200000|- rs1_val == 2097152<br>                                                                                                                                                 |[0x80000854]:andn t6, t5, t4<br> [0x80000858]:sw t6, 316(t1)<br>    |
| 108|[0x800033bc]<br>0x00100000|- rs1_val == 1048576<br>                                                                                                                                                 |[0x80000864]:andn t6, t5, t4<br> [0x80000868]:sw t6, 320(t1)<br>    |
| 109|[0x800033c0]<br>0x00080000|- rs1_val == 524288<br>                                                                                                                                                  |[0x80000874]:andn t6, t5, t4<br> [0x80000878]:sw t6, 324(t1)<br>    |
| 110|[0x800033c4]<br>0x00040000|- rs1_val == 262144<br>                                                                                                                                                  |[0x80000884]:andn t6, t5, t4<br> [0x80000888]:sw t6, 328(t1)<br>    |
| 111|[0x800033c8]<br>0x00020000|- rs1_val == 131072<br>                                                                                                                                                  |[0x80000894]:andn t6, t5, t4<br> [0x80000898]:sw t6, 332(t1)<br>    |
| 112|[0x800033cc]<br>0x00010000|- rs1_val == 65536<br>                                                                                                                                                   |[0x800008a4]:andn t6, t5, t4<br> [0x800008a8]:sw t6, 336(t1)<br>    |
| 113|[0x800033d0]<br>0x00008000|- rs1_val == 32768<br>                                                                                                                                                   |[0x800008b4]:andn t6, t5, t4<br> [0x800008b8]:sw t6, 340(t1)<br>    |
| 114|[0x800033d4]<br>0x00004000|- rs1_val == 16384<br>                                                                                                                                                   |[0x800008c4]:andn t6, t5, t4<br> [0x800008c8]:sw t6, 344(t1)<br>    |
| 115|[0x800033d8]<br>0x00002000|- rs1_val == 8192<br>                                                                                                                                                    |[0x800008d4]:andn t6, t5, t4<br> [0x800008d8]:sw t6, 348(t1)<br>    |
| 116|[0x800033dc]<br>0x00001000|- rs1_val == 4096<br>                                                                                                                                                    |[0x800008e4]:andn t6, t5, t4<br> [0x800008e8]:sw t6, 352(t1)<br>    |
| 117|[0x800033e0]<br>0x00000800|- rs1_val == 2048<br>                                                                                                                                                    |[0x800008f8]:andn t6, t5, t4<br> [0x800008fc]:sw t6, 356(t1)<br>    |
| 118|[0x800033e4]<br>0x00000400|- rs1_val == 1024<br>                                                                                                                                                    |[0x80000908]:andn t6, t5, t4<br> [0x8000090c]:sw t6, 360(t1)<br>    |
| 119|[0x800033e8]<br>0x00000200|- rs1_val == 512<br>                                                                                                                                                     |[0x80000918]:andn t6, t5, t4<br> [0x8000091c]:sw t6, 364(t1)<br>    |
| 120|[0x800033ec]<br>0x00000100|- rs1_val == 256<br>                                                                                                                                                     |[0x80000928]:andn t6, t5, t4<br> [0x8000092c]:sw t6, 368(t1)<br>    |
| 121|[0x800033f0]<br>0x00000080|- rs1_val == 128<br>                                                                                                                                                     |[0x80000938]:andn t6, t5, t4<br> [0x8000093c]:sw t6, 372(t1)<br>    |
| 122|[0x800033f4]<br>0x00000040|- rs1_val == 64<br>                                                                                                                                                      |[0x80000948]:andn t6, t5, t4<br> [0x8000094c]:sw t6, 376(t1)<br>    |
| 123|[0x800033f8]<br>0x00000020|- rs1_val == 32<br>                                                                                                                                                      |[0x80000958]:andn t6, t5, t4<br> [0x8000095c]:sw t6, 380(t1)<br>    |
| 124|[0x800033fc]<br>0x00000010|- rs1_val == 16<br>                                                                                                                                                      |[0x80000968]:andn t6, t5, t4<br> [0x8000096c]:sw t6, 384(t1)<br>    |
| 125|[0x80003400]<br>0x00000008|- rs1_val == 8<br>                                                                                                                                                       |[0x80000978]:andn t6, t5, t4<br> [0x8000097c]:sw t6, 388(t1)<br>    |
| 126|[0x80003404]<br>0x00000004|- rs1_val == 4<br>                                                                                                                                                       |[0x80000988]:andn t6, t5, t4<br> [0x8000098c]:sw t6, 392(t1)<br>    |
| 127|[0x80003408]<br>0x00000002|- rs1_val == 2<br>                                                                                                                                                       |[0x80000998]:andn t6, t5, t4<br> [0x8000099c]:sw t6, 396(t1)<br>    |
| 128|[0x8000340c]<br>0x00000001|- rs1_val == 1<br>                                                                                                                                                       |[0x800009a8]:andn t6, t5, t4<br> [0x800009ac]:sw t6, 400(t1)<br>    |
| 129|[0x80003410]<br>0x80066720|- rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br> - rs1_val > 0 and rs2_val > 0<br>                  |[0x800009c0]:andn t6, t5, t4<br> [0x800009c4]:sw t6, 404(t1)<br>    |
| 130|[0x80003414]<br>0x40FA05DC|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                             |[0x800009d8]:andn t6, t5, t4<br> [0x800009dc]:sw t6, 408(t1)<br>    |
| 131|[0x80003418]<br>0xD480C912|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                             |[0x800009f0]:andn t6, t5, t4<br> [0x800009f4]:sw t6, 412(t1)<br>    |
| 132|[0x8000341c]<br>0x9000C810|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                             |[0x80000a08]:andn t6, t5, t4<br> [0x80000a0c]:sw t6, 416(t1)<br>    |
| 133|[0x80003420]<br>0x40048F10|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                             |[0x80000a20]:andn t6, t5, t4<br> [0x80000a24]:sw t6, 420(t1)<br>    |
| 134|[0x80003424]<br>0x4134D881|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                             |[0x80000a38]:andn t6, t5, t4<br> [0x80000a3c]:sw t6, 424(t1)<br>    |
| 135|[0x80003428]<br>0x02A18510|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                             |[0x80000a50]:andn t6, t5, t4<br> [0x80000a54]:sw t6, 428(t1)<br>    |
| 136|[0x8000342c]<br>0x84200822|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                             |[0x80000a68]:andn t6, t5, t4<br> [0x80000a6c]:sw t6, 432(t1)<br>    |
| 137|[0x80003430]<br>0x64100042|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                             |[0x80000a80]:andn t6, t5, t4<br> [0x80000a84]:sw t6, 436(t1)<br>    |
| 138|[0x80003434]<br>0x11000820|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                             |[0x80000a98]:andn t6, t5, t4<br> [0x80000a9c]:sw t6, 440(t1)<br>    |
| 139|[0x80003438]<br>0x80AF1205|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                             |[0x80000ab0]:andn t6, t5, t4<br> [0x80000ab4]:sw t6, 444(t1)<br>    |
| 140|[0x8000343c]<br>0x1A841388|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                             |[0x80000ac8]:andn t6, t5, t4<br> [0x80000acc]:sw t6, 448(t1)<br>    |
| 141|[0x80003440]<br>0x0E060C02|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                             |[0x80000ae0]:andn t6, t5, t4<br> [0x80000ae4]:sw t6, 452(t1)<br>    |
| 142|[0x80003444]<br>0x01383478|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                             |[0x80000af8]:andn t6, t5, t4<br> [0x80000afc]:sw t6, 456(t1)<br>    |
| 143|[0x80003448]<br>0x58814088|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                             |[0x80000b10]:andn t6, t5, t4<br> [0x80000b14]:sw t6, 460(t1)<br>    |
| 144|[0x8000344c]<br>0x50500428|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                             |[0x80000b28]:andn t6, t5, t4<br> [0x80000b2c]:sw t6, 464(t1)<br>    |
| 145|[0x80003450]<br>0x04884A83|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                             |[0x80000b40]:andn t6, t5, t4<br> [0x80000b44]:sw t6, 468(t1)<br>    |
| 146|[0x80003454]<br>0x4482040C|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                             |[0x80000b58]:andn t6, t5, t4<br> [0x80000b5c]:sw t6, 472(t1)<br>    |
| 147|[0x80003458]<br>0x049C0210|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                             |[0x80000b70]:andn t6, t5, t4<br> [0x80000b74]:sw t6, 476(t1)<br>    |
| 148|[0x8000345c]<br>0x20088093|- rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                                                                             |[0x80000b88]:andn t6, t5, t4<br> [0x80000b8c]:sw t6, 480(t1)<br>    |
| 149|[0x80003460]<br>0x00000000|- rs1_val==4294967295 and rs2_val==4294967295<br> - rs1_val == (2**(xlen)-1)<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen)-1)<br> |[0x80000b98]:andn t6, t5, t4<br> [0x80000b9c]:sw t6, 484(t1)<br>    |
| 150|[0x80003464]<br>0xFFFFFFFF|- rs1_val==4294967295 and rs2_val==0<br>                                                                                                                                 |[0x80000ba8]:andn t6, t5, t4<br> [0x80000bac]:sw t6, 488(t1)<br>    |
| 151|[0x80003468]<br>0x33333333|- rs1_val==4294967295 and rs2_val==3435973836<br>                                                                                                                        |[0x80000bbc]:andn t6, t5, t4<br> [0x80000bc0]:sw t6, 492(t1)<br>    |
| 152|[0x8000346c]<br>0x66666666|- rs1_val==4294967295 and rs2_val==2576980377<br>                                                                                                                        |[0x80000bd0]:andn t6, t5, t4<br> [0x80000bd4]:sw t6, 496(t1)<br>    |
| 153|[0x80003470]<br>0x99999999|- rs1_val==4294967295 and rs2_val==1717986918<br>                                                                                                                        |[0x80000be4]:andn t6, t5, t4<br> [0x80000be8]:sw t6, 500(t1)<br>    |
| 154|[0x80003474]<br>0xCCCCCCCC|- rs1_val==4294967295 and rs2_val==858993459<br>                                                                                                                         |[0x80000bf8]:andn t6, t5, t4<br> [0x80000bfc]:sw t6, 504(t1)<br>    |
| 155|[0x80003478]<br>0x55555555|- rs1_val==4294967295 and rs2_val==2863311530<br> - rs2_val == 2863311530<br>                                                                                            |[0x80000c0c]:andn t6, t5, t4<br> [0x80000c10]:sw t6, 508(t1)<br>    |
| 156|[0x8000347c]<br>0xAAAAAAAA|- rs1_val==4294967295 and rs2_val==1431655765<br> - rs2_val == 1431655765<br>                                                                                            |[0x80000c20]:andn t6, t5, t4<br> [0x80000c24]:sw t6, 512(t1)<br>    |
| 157|[0x80003480]<br>0x00000000|- rs1_val==0 and rs2_val==4294967295<br>                                                                                                                                 |[0x80000c30]:andn t6, t5, t4<br> [0x80000c34]:sw t6, 516(t1)<br>    |
| 158|[0x80003488]<br>0x00000000|- rs1_val==0 and rs2_val==3435973836<br>                                                                                                                                 |[0x80000c54]:andn t6, t5, t4<br> [0x80000c58]:sw t6, 524(t1)<br>    |
| 159|[0x8000348c]<br>0x00000000|- rs1_val==0 and rs2_val==2576980377<br>                                                                                                                                 |[0x80000c68]:andn t6, t5, t4<br> [0x80000c6c]:sw t6, 528(t1)<br>    |
| 160|[0x80003490]<br>0x00000000|- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                                 |[0x80000c7c]:andn t6, t5, t4<br> [0x80000c80]:sw t6, 532(t1)<br>    |
| 161|[0x80003494]<br>0x00000000|- rs1_val==0 and rs2_val==858993459<br>                                                                                                                                  |[0x80000c90]:andn t6, t5, t4<br> [0x80000c94]:sw t6, 536(t1)<br>    |
| 162|[0x80003498]<br>0x00000000|- rs1_val==0 and rs2_val==2863311530<br>                                                                                                                                 |[0x80000ca4]:andn t6, t5, t4<br> [0x80000ca8]:sw t6, 540(t1)<br>    |
| 163|[0x8000349c]<br>0x00000000|- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                                 |[0x80000cb8]:andn t6, t5, t4<br> [0x80000cbc]:sw t6, 544(t1)<br>    |
| 164|[0x800034a0]<br>0x00000000|- rs1_val==3435973836 and rs2_val==4294967295<br>                                                                                                                        |[0x80000ccc]:andn t6, t5, t4<br> [0x80000cd0]:sw t6, 548(t1)<br>    |
| 165|[0x800034a4]<br>0xCCCCCCCC|- rs1_val==3435973836 and rs2_val==0<br>                                                                                                                                 |[0x80000ce0]:andn t6, t5, t4<br> [0x80000ce4]:sw t6, 552(t1)<br>    |
| 166|[0x800034a8]<br>0x00000000|- rs1_val==3435973836 and rs2_val==3435973836<br>                                                                                                                        |[0x80000cf8]:andn t6, t5, t4<br> [0x80000cfc]:sw t6, 556(t1)<br>    |
| 167|[0x800034ac]<br>0x44444444|- rs1_val==3435973836 and rs2_val==2576980377<br>                                                                                                                        |[0x80000d10]:andn t6, t5, t4<br> [0x80000d14]:sw t6, 560(t1)<br>    |
| 168|[0x800034b0]<br>0x88888888|- rs1_val==3435973836 and rs2_val==1717986918<br>                                                                                                                        |[0x80000d28]:andn t6, t5, t4<br> [0x80000d2c]:sw t6, 564(t1)<br>    |
| 169|[0x800034b4]<br>0xCCCCCCCC|- rs1_val==3435973836 and rs2_val==858993459<br>                                                                                                                         |[0x80000d40]:andn t6, t5, t4<br> [0x80000d44]:sw t6, 568(t1)<br>    |
| 170|[0x800034b8]<br>0x44444444|- rs1_val==3435973836 and rs2_val==2863311530<br>                                                                                                                        |[0x80000d58]:andn t6, t5, t4<br> [0x80000d5c]:sw t6, 572(t1)<br>    |
| 171|[0x800034bc]<br>0x88888888|- rs1_val==3435973836 and rs2_val==1431655765<br>                                                                                                                        |[0x80000d70]:andn t6, t5, t4<br> [0x80000d74]:sw t6, 576(t1)<br>    |
| 172|[0x800034c0]<br>0x00000000|- rs1_val==2576980377 and rs2_val==4294967295<br>                                                                                                                        |[0x80000d84]:andn t6, t5, t4<br> [0x80000d88]:sw t6, 580(t1)<br>    |
| 173|[0x800034c4]<br>0x99999999|- rs1_val==2576980377 and rs2_val==0<br>                                                                                                                                 |[0x80000d98]:andn t6, t5, t4<br> [0x80000d9c]:sw t6, 584(t1)<br>    |
| 174|[0x800034c8]<br>0x11111111|- rs1_val==2576980377 and rs2_val==3435973836<br>                                                                                                                        |[0x80000db0]:andn t6, t5, t4<br> [0x80000db4]:sw t6, 588(t1)<br>    |
| 175|[0x800034cc]<br>0x00000000|- rs1_val==2576980377 and rs2_val==2576980377<br>                                                                                                                        |[0x80000dc8]:andn t6, t5, t4<br> [0x80000dcc]:sw t6, 592(t1)<br>    |
| 176|[0x800034d0]<br>0x99999999|- rs1_val==2576980377 and rs2_val==1717986918<br>                                                                                                                        |[0x80000de0]:andn t6, t5, t4<br> [0x80000de4]:sw t6, 596(t1)<br>    |
| 177|[0x800034d4]<br>0x88888888|- rs1_val==2576980377 and rs2_val==858993459<br>                                                                                                                         |[0x80000df8]:andn t6, t5, t4<br> [0x80000dfc]:sw t6, 600(t1)<br>    |
| 178|[0x800034d8]<br>0x11111111|- rs1_val==2576980377 and rs2_val==2863311530<br>                                                                                                                        |[0x80000e10]:andn t6, t5, t4<br> [0x80000e14]:sw t6, 604(t1)<br>    |
| 179|[0x800034dc]<br>0x88888888|- rs1_val==2576980377 and rs2_val==1431655765<br>                                                                                                                        |[0x80000e28]:andn t6, t5, t4<br> [0x80000e2c]:sw t6, 608(t1)<br>    |
| 180|[0x800034e0]<br>0x00000000|- rs1_val==1717986918 and rs2_val==4294967295<br>                                                                                                                        |[0x80000e3c]:andn t6, t5, t4<br> [0x80000e40]:sw t6, 612(t1)<br>    |
| 181|[0x800034e4]<br>0x66666666|- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                                 |[0x80000e50]:andn t6, t5, t4<br> [0x80000e54]:sw t6, 616(t1)<br>    |
| 182|[0x800034e8]<br>0x22222222|- rs1_val==1717986918 and rs2_val==3435973836<br>                                                                                                                        |[0x80000e68]:andn t6, t5, t4<br> [0x80000e6c]:sw t6, 620(t1)<br>    |
| 183|[0x800034ec]<br>0x22222222|- rs1_val==858993459 and rs2_val==2576980377<br>                                                                                                                         |[0x80000e80]:andn t6, t5, t4<br> [0x80000e84]:sw t6, 624(t1)<br>    |
| 184|[0x800034f0]<br>0x11111111|- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                                         |[0x80000e98]:andn t6, t5, t4<br> [0x80000e9c]:sw t6, 628(t1)<br>    |
| 185|[0x800034f4]<br>0x00000000|- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                                          |[0x80000eb0]:andn t6, t5, t4<br> [0x80000eb4]:sw t6, 632(t1)<br>    |
| 186|[0x800034f8]<br>0x11111111|- rs1_val==858993459 and rs2_val==2863311530<br>                                                                                                                         |[0x80000ec8]:andn t6, t5, t4<br> [0x80000ecc]:sw t6, 636(t1)<br>    |
| 187|[0x800034fc]<br>0x22222222|- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                                         |[0x80000ee0]:andn t6, t5, t4<br> [0x80000ee4]:sw t6, 640(t1)<br>    |
| 188|[0x80003500]<br>0x00000000|- rs1_val==2863311530 and rs2_val==4294967295<br> - rs1_val == 2863311530<br>                                                                                            |[0x80000ef4]:andn t6, t5, t4<br> [0x80000ef8]:sw t6, 644(t1)<br>    |
| 189|[0x80003504]<br>0xAAAAAAAA|- rs1_val==2863311530 and rs2_val==0<br>                                                                                                                                 |[0x80000f08]:andn t6, t5, t4<br> [0x80000f0c]:sw t6, 648(t1)<br>    |
| 190|[0x80003508]<br>0x22222222|- rs1_val==2863311530 and rs2_val==3435973836<br>                                                                                                                        |[0x80000f20]:andn t6, t5, t4<br> [0x80000f24]:sw t6, 652(t1)<br>    |
| 191|[0x8000350c]<br>0x22222222|- rs1_val==2863311530 and rs2_val==2576980377<br>                                                                                                                        |[0x80000f38]:andn t6, t5, t4<br> [0x80000f3c]:sw t6, 656(t1)<br>    |
| 192|[0x80003510]<br>0x88888888|- rs1_val==2863311530 and rs2_val==1717986918<br>                                                                                                                        |[0x80000f50]:andn t6, t5, t4<br> [0x80000f54]:sw t6, 660(t1)<br>    |
| 193|[0x80003514]<br>0x88888888|- rs1_val==2863311530 and rs2_val==858993459<br>                                                                                                                         |[0x80000f68]:andn t6, t5, t4<br> [0x80000f6c]:sw t6, 664(t1)<br>    |
| 194|[0x80003518]<br>0x00000000|- rs1_val==2863311530 and rs2_val==2863311530<br>                                                                                                                        |[0x80000f80]:andn t6, t5, t4<br> [0x80000f84]:sw t6, 668(t1)<br>    |
| 195|[0x8000351c]<br>0xAAAAAAAA|- rs1_val==2863311530 and rs2_val==1431655765<br>                                                                                                                        |[0x80000f98]:andn t6, t5, t4<br> [0x80000f9c]:sw t6, 672(t1)<br>    |
| 196|[0x80003520]<br>0x00000000|- rs1_val==1431655765 and rs2_val==4294967295<br> - rs1_val == 1431655765<br>                                                                                            |[0x80000fac]:andn t6, t5, t4<br> [0x80000fb0]:sw t6, 676(t1)<br>    |
| 197|[0x80003524]<br>0x55555555|- rs1_val==1431655765 and rs2_val==0<br>                                                                                                                                 |[0x80000fc0]:andn t6, t5, t4<br> [0x80000fc4]:sw t6, 680(t1)<br>    |
| 198|[0x80003528]<br>0x11111111|- rs1_val==1431655765 and rs2_val==3435973836<br>                                                                                                                        |[0x80000fd8]:andn t6, t5, t4<br> [0x80000fdc]:sw t6, 684(t1)<br>    |
| 199|[0x8000352c]<br>0x44444444|- rs1_val==1431655765 and rs2_val==2576980377<br>                                                                                                                        |[0x80000ff0]:andn t6, t5, t4<br> [0x80000ff4]:sw t6, 688(t1)<br>    |
| 200|[0x80003530]<br>0x11111111|- rs1_val==1431655765 and rs2_val==1717986918<br>                                                                                                                        |[0x80001008]:andn t6, t5, t4<br> [0x8000100c]:sw t6, 692(t1)<br>    |
| 201|[0x80003534]<br>0x44444444|- rs1_val==1431655765 and rs2_val==858993459<br>                                                                                                                         |[0x80001020]:andn t6, t5, t4<br> [0x80001024]:sw t6, 696(t1)<br>    |
| 202|[0x80003538]<br>0x55555555|- rs1_val==1431655765 and rs2_val==2863311530<br>                                                                                                                        |[0x80001038]:andn t6, t5, t4<br> [0x8000103c]:sw t6, 700(t1)<br>    |
| 203|[0x8000353c]<br>0x00000000|- rs1_val==1431655765 and rs2_val==1431655765<br>                                                                                                                        |[0x80001050]:andn t6, t5, t4<br> [0x80001054]:sw t6, 704(t1)<br>    |
| 204|[0x80003540]<br>0x66666666|- rs1_val==1717986918 and rs2_val==2576980377<br>                                                                                                                        |[0x80001068]:andn t6, t5, t4<br> [0x8000106c]:sw t6, 708(t1)<br>    |
| 205|[0x80003544]<br>0x00000000|- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                                        |[0x80001080]:andn t6, t5, t4<br> [0x80001084]:sw t6, 712(t1)<br>    |
| 206|[0x80003548]<br>0x44444444|- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                                         |[0x80001098]:andn t6, t5, t4<br> [0x8000109c]:sw t6, 716(t1)<br>    |
| 207|[0x8000354c]<br>0x44444444|- rs1_val==1717986918 and rs2_val==2863311530<br>                                                                                                                        |[0x800010b0]:andn t6, t5, t4<br> [0x800010b4]:sw t6, 720(t1)<br>    |
| 208|[0x80003550]<br>0x22222222|- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                                        |[0x800010c8]:andn t6, t5, t4<br> [0x800010cc]:sw t6, 724(t1)<br>    |
| 209|[0x80003554]<br>0x00000000|- rs1_val==858993459 and rs2_val==4294967295<br>                                                                                                                         |[0x800010dc]:andn t6, t5, t4<br> [0x800010e0]:sw t6, 728(t1)<br>    |
| 210|[0x80003558]<br>0x33333333|- rs1_val==858993459 and rs2_val==0<br>                                                                                                                                  |[0x800010f0]:andn t6, t5, t4<br> [0x800010f4]:sw t6, 732(t1)<br>    |
| 211|[0x8000355c]<br>0x33333333|- rs1_val==858993459 and rs2_val==3435973836<br>                                                                                                                         |[0x80001108]:andn t6, t5, t4<br> [0x8000110c]:sw t6, 736(t1)<br>    |
| 212|[0x80003560]<br>0x00000000|- rs2_val == 2147483647<br>                                                                                                                                              |[0x8000111c]:andn t6, t5, t4<br> [0x80001120]:sw t6, 740(t1)<br>    |
| 213|[0x80003564]<br>0x00000000|- rs2_val == 3758096383<br>                                                                                                                                              |[0x80001130]:andn t6, t5, t4<br> [0x80001134]:sw t6, 744(t1)<br>    |
| 214|[0x80003568]<br>0x00000000|- rs2_val == 4294967287<br>                                                                                                                                              |[0x80001140]:andn t6, t5, t4<br> [0x80001144]:sw t6, 748(t1)<br>    |
