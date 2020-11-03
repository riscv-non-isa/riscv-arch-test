
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000840')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | mulh      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulh-01.S/mulh-01.S    |
| Total Number of coverpoints| 246     |
| Total Signature Updates   | 99      |
| Total Coverpoints Covered | 246      |
| STAT1                     | 96      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000064c]:mulh a2, a0, a1
      [0x80000650]:sw a2, 216(tp)
 -- Signature Address: 0x8000332c Data: 0xFBFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == -268435457




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f8]:mulh a2, a0, a1
      [0x800007fc]:sw a2, 312(tp)
 -- Signature Address: 0x8000338c Data: 0x08000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -268435457
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000082c]:mulh a2, a0, a1
      [0x80000830]:sw a2, 324(tp)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1024
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

|s.no|        signature         |                                                                                                 coverpoints                                                                                                 |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x01000000|- opcode : mulh<br> - rs1 : x19<br> - rs2 : x19<br> - rd : x19<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -268435457<br> - rs1_val == -268435457<br> |[0x8000010c]:mulh s3, s3, s3<br> [0x80000110]:sw s3, 0(a0)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x12<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 65536<br>                                                                     |[0x8000011c]:mulh t4, a2, t4<br> [0x80000120]:sw t4, 4(a0)<br>      |
|   3|[0x80003218]<br>0xFFFFBFFF|- rs1 : x30<br> - rs2 : x25<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -32769<br> - rs1_val == 2147483647<br>                 |[0x80000134]:mulh t5, t5, s9<br> [0x80000138]:sw t5, 8(a0)<br>      |
|   4|[0x8000321c]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x13<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == -65537<br>                                                                       |[0x80000148]:mulh t1, a6, a3<br> [0x8000014c]:sw t1, 12(a0)<br>     |
|   5|[0x80003220]<br>0x40000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>               |[0x8000015c]:mulh tp, s5, s5<br> [0x80000160]:sw tp, 16(a0)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x6<br> - rs2 : x17<br> - rd : x14<br> - rs2_val == 0<br> - rs1_val == 262144<br>                                                                                                                     |[0x8000016c]:mulh a4, t1, a7<br> [0x80000170]:sw a4, 20(a0)<br>     |
|   7|[0x80003228]<br>0x1FFFFFFF|- rs1 : x3<br> - rs2 : x4<br> - rd : x9<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                   |[0x80000184]:mulh s1, gp, tp<br> [0x80000188]:sw s1, 24(a0)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x20<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 1<br> - rs1_val == 1431655765<br>                                                                                                                |[0x80000198]:mulh a3, s4, a4<br> [0x8000019c]:sw a3, 28(a0)<br>     |
|   9|[0x80003230]<br>0xFFFFFFFE|- rs1 : x4<br> - rs2 : x31<br> - rd : x12<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 4<br>                                                                                                           |[0x800001a8]:mulh a2, tp, t6<br> [0x800001ac]:sw a2, 32(a0)<br>     |
|  10|[0x80003234]<br>0x00000000|- rs1 : x24<br> - rs2 : x1<br> - rd : x11<br> - rs2_val == 8192<br> - rs1_val == 8192<br>                                                                                                                    |[0x800001b8]:mulh a1, s8, ra<br> [0x800001bc]:sw a1, 36(a0)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x5<br> - rs2 : x9<br> - rd : x15<br> - rs1_val == 2<br>                                                                                                                                              |[0x800001c8]:mulh a5, t0, s1<br> [0x800001cc]:sw a5, 40(a0)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x18<br> - rs2 : x8<br> - rd : x20<br> - rs2_val == 1024<br> - rs1_val == 4<br>                                                                                                                       |[0x800001d8]:mulh s4, s2, fp<br> [0x800001dc]:sw s4, 44(a0)<br>     |
|  13|[0x80003240]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x20<br> - rd : x7<br> - rs2_val == -524289<br> - rs1_val == 8<br>                                                                                                                    |[0x800001ec]:mulh t2, a7, s4<br> [0x800001f0]:sw t2, 48(a0)<br>     |
|  14|[0x80003244]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x24<br> - rd : x28<br> - rs2_val == -16385<br> - rs1_val == 16<br>                                                                                                                   |[0x80000200]:mulh t3, s9, s8<br> [0x80000204]:sw t3, 52(a0)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x8<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 8388608<br> - rs1_val == 32<br>                                                                                                                     |[0x80000210]:mulh t0, fp, t1<br> [0x80000214]:sw t0, 56(a0)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x23<br> - rs2 : x28<br> - rd : x0<br> - rs2_val == -33<br> - rs1_val == 64<br>                                                                                                                       |[0x80000220]:mulh zero, s7, t3<br> [0x80000224]:sw zero, 60(a0)<br> |
|  17|[0x80003250]<br>0x00000000|- rs1 : x2<br> - rs2 : x22<br> - rd : x27<br> - rs2_val == 64<br> - rs1_val == 128<br>                                                                                                                       |[0x80000230]:mulh s11, sp, s6<br> [0x80000234]:sw s11, 64(a0)<br>   |
|  18|[0x80003254]<br>0xFFFFFFC0|- rs1 : x27<br> - rs2 : x5<br> - rd : x23<br> - rs1_val == 256<br>                                                                                                                                           |[0x80000248]:mulh s7, s11, t0<br> [0x8000024c]:sw s7, 0(tp)<br>     |
|  19|[0x80003258]<br>0x00000004|- rs1 : x22<br> - rs2 : x27<br> - rd : x10<br> - rs2_val == 33554432<br> - rs1_val == 512<br>                                                                                                                |[0x80000258]:mulh a0, s6, s11<br> [0x8000025c]:sw a0, 4(tp)<br>     |
|  20|[0x8000325c]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x11<br> - rd : x18<br> - rs2_val == -9<br> - rs1_val == 1024<br>                                                                                                                      |[0x80000268]:mulh s2, ra, a1<br> [0x8000026c]:sw s2, 8(tp)<br>      |
|  21|[0x80003260]<br>0xFFFFFFEF|- rs1 : x13<br> - rs2 : x10<br> - rd : x24<br> - rs2_val == -16777217<br> - rs1_val == 4096<br>                                                                                                              |[0x8000027c]:mulh s8, a3, a0<br> [0x80000280]:sw s8, 12(tp)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x0<br> - rs2 : x23<br> - rd : x16<br>                                                                                                                                                                |[0x80000290]:mulh a6, zero, s7<br> [0x80000294]:sw a6, 16(tp)<br>   |
|  23|[0x80003268]<br>0x00000000|- rs1 : x28<br> - rs2 : x15<br> - rd : x2<br> - rs1_val == 32768<br>                                                                                                                                         |[0x800002a0]:mulh sp, t3, a5<br> [0x800002a4]:sw sp, 20(tp)<br>     |
|  24|[0x8000326c]<br>0x00000200|- rs1 : x26<br> - rs2 : x3<br> - rd : x25<br> - rs1_val == 65536<br>                                                                                                                                         |[0x800002b0]:mulh s9, s10, gp<br> [0x800002b4]:sw s9, 24(tp)<br>    |
|  25|[0x80003270]<br>0xFFFFFFEF|- rs1 : x15<br> - rs2 : x2<br> - rd : x8<br> - rs1_val == 131072<br>                                                                                                                                         |[0x800002c4]:mulh fp, a5, sp<br> [0x800002c8]:sw fp, 28(tp)<br>     |
|  26|[0x80003274]<br>0x00010000|- rs1 : x9<br> - rs2 : x16<br> - rd : x26<br> - rs2_val == 536870912<br> - rs1_val == 524288<br>                                                                                                             |[0x800002d4]:mulh s10, s1, a6<br> [0x800002d8]:sw s10, 32(tp)<br>   |
|  27|[0x80003278]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x7<br> - rd : x21<br> - rs2_val == -2049<br> - rs1_val == 1048576<br>                                                                                                                |[0x800002e8]:mulh s5, a4, t2<br> [0x800002ec]:sw s5, 36(tp)<br>     |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x29<br> - rs2 : x0<br> - rd : x1<br> - rs1_val == 2097152<br>                                                                                                                                        |[0x800002f8]:mulh ra, t4, zero<br> [0x800002fc]:sw ra, 40(tp)<br>   |
|  29|[0x80003280]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x30<br> - rd : x3<br> - rs1_val == 4194304<br>                                                                                                                                       |[0x80000308]:mulh gp, a1, t5<br> [0x8000030c]:sw gp, 44(tp)<br>     |
|  30|[0x80003284]<br>0x003FFFFF|- rs1 : x10<br> - rs2 : x12<br> - rd : x31<br> - rs1_val == 8388608<br>                                                                                                                                      |[0x8000031c]:mulh t6, a0, a2<br> [0x80000320]:sw t6, 48(tp)<br>     |
|  31|[0x80003288]<br>0x00000400|- rs1 : x31<br> - rs2 : x18<br> - rd : x22<br> - rs2_val == 262144<br> - rs1_val == 16777216<br>                                                                                                             |[0x8000032c]:mulh s6, t6, s2<br> [0x80000330]:sw s6, 52(tp)<br>     |
|  32|[0x8000328c]<br>0x00000020|- rs1 : x7<br> - rs2 : x26<br> - rd : x17<br> - rs2_val == 4096<br> - rs1_val == 33554432<br>                                                                                                                |[0x8000033c]:mulh a7, t2, s10<br> [0x80000340]:sw a7, 56(tp)<br>    |
|  33|[0x80003290]<br>0x00000800|- rs2_val == 131072<br> - rs1_val == 67108864<br>                                                                                                                                                            |[0x8000034c]:mulh a2, a0, a1<br> [0x80000350]:sw a2, 60(tp)<br>     |
|  34|[0x80003294]<br>0x00004000|- rs2_val == 524288<br> - rs1_val == 134217728<br>                                                                                                                                                           |[0x8000035c]:mulh a2, a0, a1<br> [0x80000360]:sw a2, 64(tp)<br>     |
|  35|[0x80003298]<br>0x00000100|- rs1_val == 268435456<br>                                                                                                                                                                                   |[0x8000036c]:mulh a2, a0, a1<br> [0x80000370]:sw a2, 68(tp)<br>     |
|  36|[0x8000329c]<br>0xFFFFBFFF|- rs2_val == -131073<br> - rs1_val == 536870912<br>                                                                                                                                                          |[0x80000380]:mulh a2, a0, a1<br> [0x80000384]:sw a2, 72(tp)<br>     |
|  37|[0x800032a0]<br>0x04000000|- rs2_val == 268435456<br> - rs1_val == 1073741824<br>                                                                                                                                                       |[0x80000390]:mulh a2, a0, a1<br> [0x80000394]:sw a2, 76(tp)<br>     |
|  38|[0x800032a4]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                          |[0x800003a0]:mulh a2, a0, a1<br> [0x800003a4]:sw a2, 80(tp)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFFF|- rs2_val == 1431655765<br> - rs1_val == -3<br>                                                                                                                                                              |[0x800003b4]:mulh a2, a0, a1<br> [0x800003b8]:sw a2, 84(tp)<br>     |
|  40|[0x800032ac]<br>0xFFFFFFFF|- rs2_val == 2<br> - rs1_val == -5<br>                                                                                                                                                                       |[0x800003c4]:mulh a2, a0, a1<br> [0x800003c8]:sw a2, 88(tp)<br>     |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == -9<br>                                                                                                                                                                                          |[0x800003d4]:mulh a2, a0, a1<br> [0x800003d8]:sw a2, 92(tp)<br>     |
|  42|[0x800032b4]<br>0x00000005|- rs2_val == -1431655766<br> - rs1_val == -17<br>                                                                                                                                                            |[0x800003e8]:mulh a2, a0, a1<br> [0x800003ec]:sw a2, 96(tp)<br>     |
|  43|[0x800032b8]<br>0xFFFFFFFF|- rs2_val == 2097152<br> - rs1_val == -33<br>                                                                                                                                                                |[0x800003f8]:mulh a2, a0, a1<br> [0x800003fc]:sw a2, 100(tp)<br>    |
|  44|[0x800032bc]<br>0x00000000|- rs2_val == -262145<br> - rs1_val == -1025<br>                                                                                                                                                              |[0x8000040c]:mulh a2, a0, a1<br> [0x80000410]:sw a2, 104(tp)<br>    |
|  45|[0x800032c0]<br>0xFFFFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                                    |[0x80000420]:mulh a2, a0, a1<br> [0x80000424]:sw a2, 108(tp)<br>    |
|  46|[0x800032c4]<br>0x00000010|- rs2_val == -2097153<br> - rs1_val == -32769<br>                                                                                                                                                            |[0x80000438]:mulh a2, a0, a1<br> [0x8000043c]:sw a2, 112(tp)<br>    |
|  47|[0x800032c8]<br>0x00000800|- rs2_val == -4194305<br> - rs1_val == -2097153<br>                                                                                                                                                          |[0x80000450]:mulh a2, a0, a1<br> [0x80000454]:sw a2, 116(tp)<br>    |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                                    |[0x80000464]:mulh a2, a0, a1<br> [0x80000468]:sw a2, 120(tp)<br>    |
|  49|[0x800032d0]<br>0x00010000|- rs2_val == -33554433<br> - rs1_val == -8388609<br>                                                                                                                                                         |[0x8000047c]:mulh a2, a0, a1<br> [0x80000480]:sw a2, 124(tp)<br>    |
|  50|[0x800032d4]<br>0xFFFFFFBF|- rs2_val == -67108865<br>                                                                                                                                                                                   |[0x80000490]:mulh a2, a0, a1<br> [0x80000494]:sw a2, 128(tp)<br>    |
|  51|[0x800032d8]<br>0x00000000|- rs2_val == -134217729<br>                                                                                                                                                                                  |[0x800004a4]:mulh a2, a0, a1<br> [0x800004a8]:sw a2, 132(tp)<br>    |
|  52|[0x800032dc]<br>0xFFFFFF7F|- rs2_val == -536870913<br>                                                                                                                                                                                  |[0x800004b8]:mulh a2, a0, a1<br> [0x800004bc]:sw a2, 136(tp)<br>    |
|  53|[0x800032e0]<br>0xFFFFFFEF|- rs2_val == -1073741825<br>                                                                                                                                                                                 |[0x800004cc]:mulh a2, a0, a1<br> [0x800004d0]:sw a2, 140(tp)<br>    |
|  54|[0x800032e4]<br>0xFFFFFFFF|- rs2_val == 32768<br> - rs1_val == -65<br>                                                                                                                                                                  |[0x800004dc]:mulh a2, a0, a1<br> [0x800004e0]:sw a2, 144(tp)<br>    |
|  55|[0x800032e8]<br>0x00000000|- rs2_val == -2<br> - rs1_val == -129<br>                                                                                                                                                                    |[0x800004ec]:mulh a2, a0, a1<br> [0x800004f0]:sw a2, 148(tp)<br>    |
|  56|[0x800032ec]<br>0x00000000|- rs1_val == -257<br>                                                                                                                                                                                        |[0x800004fc]:mulh a2, a0, a1<br> [0x80000500]:sw a2, 152(tp)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == -513<br>                                                                                                                                                                                        |[0x8000050c]:mulh a2, a0, a1<br> [0x80000510]:sw a2, 156(tp)<br>    |
|  58|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                                                       |[0x80000520]:mulh a2, a0, a1<br> [0x80000524]:sw a2, 160(tp)<br>    |
|  59|[0x800032f8]<br>0xFFFFFFFF|- rs2_val == 256<br> - rs1_val == -4097<br>                                                                                                                                                                  |[0x80000534]:mulh a2, a0, a1<br> [0x80000538]:sw a2, 164(tp)<br>    |
|  60|[0x800032fc]<br>0xFFFFF7FF|- rs2_val == 1073741824<br> - rs1_val == -8193<br>                                                                                                                                                           |[0x80000548]:mulh a2, a0, a1<br> [0x8000054c]:sw a2, 168(tp)<br>    |
|  61|[0x80003300]<br>0xFFFFFFFF|- rs2_val == 16<br> - rs1_val == -16385<br>                                                                                                                                                                  |[0x8000055c]:mulh a2, a0, a1<br> [0x80000560]:sw a2, 172(tp)<br>    |
|  62|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                                      |[0x80000570]:mulh a2, a0, a1<br> [0x80000574]:sw a2, 176(tp)<br>    |
|  63|[0x80003308]<br>0x00000400|- rs1_val == -131073<br>                                                                                                                                                                                     |[0x80000588]:mulh a2, a0, a1<br> [0x8000058c]:sw a2, 180(tp)<br>    |
|  64|[0x8000330c]<br>0x00008000|- rs1_val == -262145<br>                                                                                                                                                                                     |[0x800005a0]:mulh a2, a0, a1<br> [0x800005a4]:sw a2, 184(tp)<br>    |
|  65|[0x80003310]<br>0xFFFDFFFF|- rs1_val == -524289<br>                                                                                                                                                                                     |[0x800005b8]:mulh a2, a0, a1<br> [0x800005bc]:sw a2, 188(tp)<br>    |
|  66|[0x80003314]<br>0x00000010|- rs1_val == -1048577<br>                                                                                                                                                                                    |[0x800005d0]:mulh a2, a0, a1<br> [0x800005d4]:sw a2, 192(tp)<br>    |
|  67|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                    |[0x800005e4]:mulh a2, a0, a1<br> [0x800005e8]:sw a2, 196(tp)<br>    |
|  68|[0x8000331c]<br>0xFFFFFFFB|- rs1_val == -16777217<br>                                                                                                                                                                                   |[0x800005f8]:mulh a2, a0, a1<br> [0x800005fc]:sw a2, 200(tp)<br>    |
|  69|[0x80003320]<br>0x00000000|- rs1_val == -33554433<br>                                                                                                                                                                                   |[0x8000060c]:mulh a2, a0, a1<br> [0x80000610]:sw a2, 204(tp)<br>    |
|  70|[0x80003324]<br>0x00000008|- rs2_val == -513<br> - rs1_val == -67108865<br>                                                                                                                                                             |[0x80000620]:mulh a2, a0, a1<br> [0x80000624]:sw a2, 208(tp)<br>    |
|  71|[0x80003328]<br>0x00000000|- rs1_val == -134217729<br>                                                                                                                                                                                  |[0x80000634]:mulh a2, a0, a1<br> [0x80000638]:sw a2, 212(tp)<br>    |
|  72|[0x80003330]<br>0x00000100|- rs1_val == -536870913<br>                                                                                                                                                                                  |[0x80000664]:mulh a2, a0, a1<br> [0x80000668]:sw a2, 220(tp)<br>    |
|  73|[0x80003334]<br>0x00000000|- rs1_val == -1073741825<br>                                                                                                                                                                                 |[0x80000678]:mulh a2, a0, a1<br> [0x8000067c]:sw a2, 224(tp)<br>    |
|  74|[0x80003338]<br>0xD5555555|- rs1_val == -1431655766<br>                                                                                                                                                                                 |[0x80000690]:mulh a2, a0, a1<br> [0x80000694]:sw a2, 228(tp)<br>    |
|  75|[0x8000333c]<br>0x00000000|- rs2_val == 8<br>                                                                                                                                                                                           |[0x800006a0]:mulh a2, a0, a1<br> [0x800006a4]:sw a2, 232(tp)<br>    |
|  76|[0x80003340]<br>0xFFFFFFFF|- rs2_val == 32<br>                                                                                                                                                                                          |[0x800006b4]:mulh a2, a0, a1<br> [0x800006b8]:sw a2, 236(tp)<br>    |
|  77|[0x80003344]<br>0x00000001|- rs2_val == 128<br>                                                                                                                                                                                         |[0x800006c4]:mulh a2, a0, a1<br> [0x800006c8]:sw a2, 240(tp)<br>    |
|  78|[0x80003348]<br>0x00000010|- rs2_val == 512<br>                                                                                                                                                                                         |[0x800006d4]:mulh a2, a0, a1<br> [0x800006d8]:sw a2, 244(tp)<br>    |
|  79|[0x8000334c]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                        |[0x800006e8]:mulh a2, a0, a1<br> [0x800006ec]:sw a2, 248(tp)<br>    |
|  80|[0x80003350]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                                     |[0x800006f8]:mulh a2, a0, a1<br> [0x800006fc]:sw a2, 252(tp)<br>    |
|  81|[0x80003354]<br>0x00000000|- rs2_val == 4194304<br>                                                                                                                                                                                     |[0x80000708]:mulh a2, a0, a1<br> [0x8000070c]:sw a2, 256(tp)<br>    |
|  82|[0x80003358]<br>0xFFFFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                    |[0x80000718]:mulh a2, a0, a1<br> [0x8000071c]:sw a2, 260(tp)<br>    |
|  83|[0x8000335c]<br>0x01000000|- rs2_val == 67108864<br>                                                                                                                                                                                    |[0x80000728]:mulh a2, a0, a1<br> [0x8000072c]:sw a2, 264(tp)<br>    |
|  84|[0x80003360]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                                   |[0x80000738]:mulh a2, a0, a1<br> [0x8000073c]:sw a2, 268(tp)<br>    |
|  85|[0x80003364]<br>0xFFFFFFFF|- rs2_val == -3<br>                                                                                                                                                                                          |[0x80000748]:mulh a2, a0, a1<br> [0x8000074c]:sw a2, 272(tp)<br>    |
|  86|[0x80003368]<br>0xFFFFFFFF|- rs2_val == -5<br>                                                                                                                                                                                          |[0x80000758]:mulh a2, a0, a1<br> [0x8000075c]:sw a2, 276(tp)<br>    |
|  87|[0x8000336c]<br>0xFFFFFFFF|- rs2_val == -17<br>                                                                                                                                                                                         |[0x80000768]:mulh a2, a0, a1<br> [0x8000076c]:sw a2, 280(tp)<br>    |
|  88|[0x80003370]<br>0xFFFFFFFF|- rs2_val == -65<br>                                                                                                                                                                                         |[0x80000778]:mulh a2, a0, a1<br> [0x8000077c]:sw a2, 284(tp)<br>    |
|  89|[0x80003374]<br>0xFFFFFFFF|- rs2_val == -129<br>                                                                                                                                                                                        |[0x80000788]:mulh a2, a0, a1<br> [0x8000078c]:sw a2, 288(tp)<br>    |
|  90|[0x80003378]<br>0xFFFFFFFF|- rs2_val == -257<br>                                                                                                                                                                                        |[0x80000798]:mulh a2, a0, a1<br> [0x8000079c]:sw a2, 292(tp)<br>    |
|  91|[0x8000337c]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                                       |[0x800007a8]:mulh a2, a0, a1<br> [0x800007ac]:sw a2, 296(tp)<br>    |
|  92|[0x80003380]<br>0xFFFFFFFF|- rs2_val == -4097<br>                                                                                                                                                                                       |[0x800007bc]:mulh a2, a0, a1<br> [0x800007c0]:sw a2, 300(tp)<br>    |
|  93|[0x80003384]<br>0x00001000|- rs2_val == -8193<br>                                                                                                                                                                                       |[0x800007d0]:mulh a2, a0, a1<br> [0x800007d4]:sw a2, 304(tp)<br>    |
|  94|[0x80003388]<br>0xFFFFFFFB|- rs2_val == 16384<br>                                                                                                                                                                                       |[0x800007e4]:mulh a2, a0, a1<br> [0x800007e8]:sw a2, 308(tp)<br>    |
|  95|[0x80003390]<br>0xFFFFFC00|- rs1_val == 2048<br>                                                                                                                                                                                        |[0x8000080c]:mulh a2, a0, a1<br> [0x80000810]:sw a2, 316(tp)<br>    |
|  96|[0x80003394]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                                                                                       |[0x8000081c]:mulh a2, a0, a1<br> [0x80000820]:sw a2, 320(tp)<br>    |
