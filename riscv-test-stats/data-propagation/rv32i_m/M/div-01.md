
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80003204', '0x800033b4', '108 words')]      |
| COV_LABELS                | div      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/div-01.S/div-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 105      |
| STAT1                     | 104      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:div a2, a0, a1
      [0x8000085c]:sw a2, 280(ra)
 -- Signature Address: 0x800033a4 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs1_val == -2147483648






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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000001|- opcode : div<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                                                      |[0x80000108]:div t5, t5, t5<br> [0x8000010c]:sw t5, 0(t0)<br>       |
|   2|[0x80003214]<br>0x00000000|- rs1 : x6<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                                                                 |[0x8000011c]:div zero, t1, zero<br> [0x80000120]:sw zero, 4(t0)<br> |
|   3|[0x80003218]<br>0x00000001|- rs1 : x10<br> - rs2 : x7<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1431655765<br> - rs1_val == 2147483647<br> |[0x80000134]:div a0, a0, t2<br> [0x80000138]:sw a0, 8(t0)<br>       |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x25<br> - rs2 : x8<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -67108865<br>                                              |[0x80000148]:div a7, s9, fp<br> [0x8000014c]:sw a7, 12(t0)<br>      |
|   5|[0x80003220]<br>0x00000001|- rs1 : x26<br> - rs2 : x26<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>                          |[0x80000158]:div a4, s10, s10<br> [0x8000015c]:sw a4, 16(t0)<br>    |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x6<br> - rd : x9<br> - rs1_val == -33<br>                                                                                                                                                        |[0x80000168]:div s1, t4, t1<br> [0x8000016c]:sw s1, 20(t0)<br>      |
|   7|[0x80003228]<br>0x00000000|- rs1 : x18<br> - rs2 : x11<br> - rd : x23<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                            |[0x8000017c]:div s7, s2, a1<br> [0x80000180]:sw s7, 24(t0)<br>      |
|   8|[0x8000322c]<br>0x00000005|- rs1 : x13<br> - rs2 : x4<br> - rd : x22<br> - rs2_val == 1<br>                                                                                                                                                         |[0x8000018c]:div s6, a3, tp<br> [0x80000190]:sw s6, 28(t0)<br>      |
|   9|[0x80003230]<br>0x00000001|- rs1 : x4<br> - rs2 : x12<br> - rd : x21<br> - rs2_val == -16777217<br> - rs1_val == -16777217<br>                                                                                                                      |[0x800001a4]:div s5, tp, a2<br> [0x800001a8]:sw s5, 32(t0)<br>      |
|  10|[0x80003234]<br>0x00000000|- rs1 : x28<br> - rs2 : x1<br> - rd : x15<br> - rs2_val == -129<br> - rs1_val == 2<br>                                                                                                                                   |[0x800001b4]:div a5, t3, ra<br> [0x800001b8]:sw a5, 36(t0)<br>      |
|  11|[0x80003238]<br>0x00000000|- rs1 : x16<br> - rs2 : x25<br> - rd : x8<br> - rs2_val == -257<br> - rs1_val == 4<br>                                                                                                                                   |[0x800001c4]:div fp, a6, s9<br> [0x800001c8]:sw fp, 40(t0)<br>      |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x14<br> - rs2 : x22<br> - rd : x3<br> - rs2_val == 256<br> - rs1_val == 8<br>                                                                                                                                    |[0x800001d4]:div gp, a4, s6<br> [0x800001d8]:sw gp, 44(t0)<br>      |
|  13|[0x80003240]<br>0x00000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x7<br> - rs2_val == 512<br>                                                                                                                                                         |[0x800001e4]:div t2, zero, s1<br> [0x800001e8]:sw t2, 48(t0)<br>    |
|  14|[0x80003244]<br>0x00000000|- rs1 : x27<br> - rs2 : x17<br> - rd : x31<br> - rs2_val == -1048577<br> - rs1_val == 64<br>                                                                                                                             |[0x800001f8]:div t6, s11, a7<br> [0x800001fc]:sw t6, 52(t0)<br>     |
|  15|[0x80003248]<br>0x00000012|- rs1 : x11<br> - rs2 : x28<br> - rd : x2<br> - rs1_val == 128<br>                                                                                                                                                       |[0x80000208]:div sp, a1, t3<br> [0x8000020c]:sw sp, 56(t0)<br>      |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x20<br> - rs2 : x21<br> - rd : x6<br> - rs2_val == -65537<br> - rs1_val == 256<br>                                                                                                                               |[0x8000021c]:div t1, s4, s5<br> [0x80000220]:sw t1, 60(t0)<br>      |
|  17|[0x80003250]<br>0x00000000|- rs1 : x15<br> - rs2 : x16<br> - rd : x11<br> - rs2_val == 8388608<br> - rs1_val == 512<br>                                                                                                                             |[0x80000234]:div a1, a5, a6<br> [0x80000238]:sw a1, 0(t1)<br>       |
|  18|[0x80003254]<br>0x000000CC|- rs1 : x12<br> - rs2 : x3<br> - rd : x5<br> - rs1_val == 1024<br>                                                                                                                                                       |[0x80000244]:div t0, a2, gp<br> [0x80000248]:sw t0, 4(t1)<br>       |
|  19|[0x80003258]<br>0x00000020|- rs1 : x5<br> - rs2 : x20<br> - rd : x4<br> - rs2_val == 64<br> - rs1_val == 2048<br>                                                                                                                                   |[0x80000258]:div tp, t0, s4<br> [0x8000025c]:sw tp, 8(t1)<br>       |
|  20|[0x8000325c]<br>0x00000200|- rs1 : x1<br> - rs2 : x24<br> - rd : x27<br> - rs2_val == 8<br> - rs1_val == 4096<br>                                                                                                                                   |[0x80000268]:div s11, ra, s8<br> [0x8000026c]:sw s11, 12(t1)<br>    |
|  21|[0x80003260]<br>0x00000000|- rs1 : x23<br> - rs2 : x15<br> - rd : x20<br> - rs2_val == 16777216<br> - rs1_val == 8192<br>                                                                                                                           |[0x80000278]:div s4, s7, a5<br> [0x8000027c]:sw s4, 16(t1)<br>      |
|  22|[0x80003264]<br>0x00000000|- rs1 : x3<br> - rs2 : x10<br> - rd : x24<br> - rs2_val == -16385<br> - rs1_val == 16384<br>                                                                                                                             |[0x8000028c]:div s8, gp, a0<br> [0x80000290]:sw s8, 20(t1)<br>      |
|  23|[0x80003268]<br>0xFFFFFF02|- rs1 : x7<br> - rs2 : x23<br> - rd : x28<br> - rs1_val == 32768<br>                                                                                                                                                     |[0x8000029c]:div t3, t2, s7<br> [0x800002a0]:sw t3, 24(t1)<br>      |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x2<br> - rs2 : x5<br> - rd : x25<br> - rs1_val == 65536<br>                                                                                                                                                      |[0x800002ac]:div s9, sp, t0<br> [0x800002b0]:sw s9, 28(t1)<br>      |
|  25|[0x80003270]<br>0x00000000|- rs1 : x22<br> - rs2 : x19<br> - rd : x26<br> - rs1_val == 131072<br>                                                                                                                                                   |[0x800002bc]:div s10, s6, s3<br> [0x800002c0]:sw s10, 32(t1)<br>    |
|  26|[0x80003274]<br>0x00000008|- rs1 : x17<br> - rs2 : x18<br> - rd : x16<br> - rs2_val == 32768<br> - rs1_val == 262144<br>                                                                                                                            |[0x800002cc]:div a6, a7, s2<br> [0x800002d0]:sw a6, 36(t1)<br>      |
|  27|[0x80003278]<br>0x00001000|- rs1 : x19<br> - rs2 : x31<br> - rd : x1<br> - rs2_val == 128<br> - rs1_val == 524288<br>                                                                                                                               |[0x800002dc]:div ra, s3, t6<br> [0x800002e0]:sw ra, 40(t1)<br>      |
|  28|[0x8000327c]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x2<br> - rd : x19<br> - rs1_val == 1048576<br>                                                                                                                                                   |[0x800002ec]:div s3, s5, sp<br> [0x800002f0]:sw s3, 44(t1)<br>      |
|  29|[0x80003280]<br>0x00004000|- rs1 : x24<br> - rs2 : x29<br> - rd : x12<br> - rs1_val == 2097152<br>                                                                                                                                                  |[0x800002fc]:div a2, s8, t4<br> [0x80000300]:sw a2, 48(t1)<br>      |
|  30|[0x80003284]<br>0x000CCCCC|- rs1 : x9<br> - rs2 : x14<br> - rd : x29<br> - rs1_val == 4194304<br>                                                                                                                                                   |[0x8000030c]:div t4, s1, a4<br> [0x80000310]:sw t4, 52(t1)<br>      |
|  31|[0x80003288]<br>0x00000000|- rs1 : x8<br> - rs2 : x27<br> - rd : x18<br> - rs2_val == -268435457<br> - rs1_val == 8388608<br>                                                                                                                       |[0x80000320]:div s2, fp, s11<br> [0x80000324]:sw s2, 56(t1)<br>     |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x31<br> - rs1_val == 16777216<br>                                                                                                                                                                                |[0x8000033c]:div gp, t6, s10<br> [0x80000340]:sw gp, 0(ra)<br>      |
|  33|[0x80003290]<br>0x00400000|- rs2 : x13<br> - rs1_val == 33554432<br>                                                                                                                                                                                |[0x8000034c]:div tp, gp, a3<br> [0x80000350]:sw tp, 4(ra)<br>       |
|  34|[0x80003294]<br>0xFF800000|- rd : x13<br> - rs1_val == 67108864<br>                                                                                                                                                                                 |[0x8000035c]:div a3, a4, t1<br> [0x80000360]:sw a3, 8(ra)<br>       |
|  35|[0x80003298]<br>0xFFFFF801|- rs1_val == 134217728<br>                                                                                                                                                                                               |[0x80000370]:div a2, a0, a1<br> [0x80000374]:sw a2, 12(ra)<br>      |
|  36|[0x8000329c]<br>0x00002000|- rs1_val == 268435456<br>                                                                                                                                                                                               |[0x80000380]:div a2, a0, a1<br> [0x80000384]:sw a2, 16(ra)<br>      |
|  37|[0x800032a0]<br>0x038E38E3|- rs1_val == 536870912<br>                                                                                                                                                                                               |[0x80000390]:div a2, a0, a1<br> [0x80000394]:sw a2, 20(ra)<br>      |
|  38|[0x800032a4]<br>0x00000400|- rs2_val == 1048576<br> - rs1_val == 1073741824<br>                                                                                                                                                                     |[0x800003a0]:div a2, a0, a1<br> [0x800003a4]:sw a2, 24(ra)<br>      |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == -2<br>                                                                                                                                                                                                      |[0x800003b4]:div a2, a0, a1<br> [0x800003b8]:sw a2, 28(ra)<br>      |
|  40|[0x800032ac]<br>0x00000000|- rs2_val == -134217729<br> - rs1_val == -3<br>                                                                                                                                                                          |[0x800003c8]:div a2, a0, a1<br> [0x800003cc]:sw a2, 32(ra)<br>      |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                                                                      |[0x800003d8]:div a2, a0, a1<br> [0x800003dc]:sw a2, 36(ra)<br>      |
|  42|[0x800032b4]<br>0x00000000|- rs1_val == -9<br>                                                                                                                                                                                                      |[0x800003e8]:div a2, a0, a1<br> [0x800003ec]:sw a2, 40(ra)<br>      |
|  43|[0x800032b8]<br>0x00000000|- rs2_val == -524289<br> - rs1_val == -17<br>                                                                                                                                                                            |[0x800003fc]:div a2, a0, a1<br> [0x80000400]:sw a2, 44(ra)<br>      |
|  44|[0x800032bc]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                                                                     |[0x8000040c]:div a2, a0, a1<br> [0x80000410]:sw a2, 48(ra)<br>      |
|  45|[0x800032c0]<br>0x00000000|- rs2_val == 1073741824<br> - rs1_val == -129<br>                                                                                                                                                                        |[0x8000041c]:div a2, a0, a1<br> [0x80000420]:sw a2, 52(ra)<br>      |
|  46|[0x800032c4]<br>0x00000000|- rs2_val == -131073<br> - rs1_val == -257<br>                                                                                                                                                                           |[0x80000430]:div a2, a0, a1<br> [0x80000434]:sw a2, 56(ra)<br>      |
|  47|[0x800032c8]<br>0x00000000|- rs2_val == -32769<br> - rs1_val == -513<br>                                                                                                                                                                            |[0x80000444]:div a2, a0, a1<br> [0x80000448]:sw a2, 60(ra)<br>      |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -262145<br>                                                                                                                                                                                                 |[0x80000458]:div a2, a0, a1<br> [0x8000045c]:sw a2, 64(ra)<br>      |
|  49|[0x800032d0]<br>0x00000000|- rs2_val == -2097153<br>                                                                                                                                                                                                |[0x8000046c]:div a2, a0, a1<br> [0x80000470]:sw a2, 68(ra)<br>      |
|  50|[0x800032d4]<br>0xFFFFFFE1|- rs2_val == -4194305<br>                                                                                                                                                                                                |[0x80000480]:div a2, a0, a1<br> [0x80000484]:sw a2, 72(ra)<br>      |
|  51|[0x800032d8]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                                                |[0x80000494]:div a2, a0, a1<br> [0x80000498]:sw a2, 76(ra)<br>      |
|  52|[0x800032dc]<br>0x00000000|- rs2_val == -33554433<br>                                                                                                                                                                                               |[0x800004a8]:div a2, a0, a1<br> [0x800004ac]:sw a2, 80(ra)<br>      |
|  53|[0x800032e0]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                                                              |[0x800004bc]:div a2, a0, a1<br> [0x800004c0]:sw a2, 84(ra)<br>      |
|  54|[0x800032e4]<br>0x00000000|- rs2_val == -1073741825<br>                                                                                                                                                                                             |[0x800004d0]:div a2, a0, a1<br> [0x800004d4]:sw a2, 88(ra)<br>      |
|  55|[0x800032e8]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                                             |[0x800004e4]:div a2, a0, a1<br> [0x800004e8]:sw a2, 92(ra)<br>      |
|  56|[0x800032ec]<br>0x000000AA|- rs1_val == -1025<br>                                                                                                                                                                                                   |[0x800004f4]:div a2, a0, a1<br> [0x800004f8]:sw a2, 96(ra)<br>      |
|  57|[0x800032f0]<br>0xFFFFFFFF|- rs2_val == 2048<br> - rs1_val == -2049<br>                                                                                                                                                                             |[0x8000050c]:div a2, a0, a1<br> [0x80000510]:sw a2, 100(ra)<br>     |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == -4097<br>                                                                                                                                                                                                   |[0x80000520]:div a2, a0, a1<br> [0x80000524]:sw a2, 104(ra)<br>     |
|  59|[0x800032f8]<br>0x0000000F|- rs2_val == -513<br> - rs1_val == -8193<br>                                                                                                                                                                             |[0x80000534]:div a2, a0, a1<br> [0x80000538]:sw a2, 108(ra)<br>     |
|  60|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                                                                  |[0x80000548]:div a2, a0, a1<br> [0x8000054c]:sw a2, 112(ra)<br>     |
|  61|[0x80003300]<br>0x00001249|- rs1_val == -32769<br>                                                                                                                                                                                                  |[0x8000055c]:div a2, a0, a1<br> [0x80000560]:sw a2, 116(ra)<br>     |
|  62|[0x80003304]<br>0x00000000|- rs1_val == -65537<br>                                                                                                                                                                                                  |[0x80000570]:div a2, a0, a1<br> [0x80000574]:sw a2, 120(ra)<br>     |
|  63|[0x80003308]<br>0xFFFFFFF0|- rs2_val == 8192<br> - rs1_val == -131073<br>                                                                                                                                                                           |[0x80000584]:div a2, a0, a1<br> [0x80000588]:sw a2, 124(ra)<br>     |
|  64|[0x8000330c]<br>0xFFFF3333|- rs1_val == -262145<br>                                                                                                                                                                                                 |[0x80000598]:div a2, a0, a1<br> [0x8000059c]:sw a2, 128(ra)<br>     |
|  65|[0x80003310]<br>0xFFFFFFFC|- rs2_val == 131072<br> - rs1_val == -524289<br>                                                                                                                                                                         |[0x800005ac]:div a2, a0, a1<br> [0x800005b0]:sw a2, 132(ra)<br>     |
|  66|[0x80003314]<br>0x00020000|- rs1_val == -1048577<br>                                                                                                                                                                                                |[0x800005c0]:div a2, a0, a1<br> [0x800005c4]:sw a2, 136(ra)<br>     |
|  67|[0x80003318]<br>0x00000003|- rs1_val == -2097153<br>                                                                                                                                                                                                |[0x800005d8]:div a2, a0, a1<br> [0x800005dc]:sw a2, 140(ra)<br>     |
|  68|[0x8000331c]<br>0x000AAAAA|- rs1_val == -4194305<br>                                                                                                                                                                                                |[0x800005ec]:div a2, a0, a1<br> [0x800005f0]:sw a2, 144(ra)<br>     |
|  69|[0x80003320]<br>0xFFFFFF80|- rs2_val == 65536<br> - rs1_val == -8388609<br>                                                                                                                                                                         |[0x80000600]:div a2, a0, a1<br> [0x80000604]:sw a2, 148(ra)<br>     |
|  70|[0x80003324]<br>0xFFF00000|- rs2_val == 32<br> - rs1_val == -33554433<br>                                                                                                                                                                           |[0x80000614]:div a2, a0, a1<br> [0x80000618]:sw a2, 152(ra)<br>     |
|  71|[0x80003328]<br>0x00000003|- rs1_val == -67108865<br>                                                                                                                                                                                               |[0x8000062c]:div a2, a0, a1<br> [0x80000630]:sw a2, 156(ra)<br>     |
|  72|[0x8000332c]<br>0x00000000|- rs1_val == -134217729<br>                                                                                                                                                                                              |[0x80000644]:div a2, a0, a1<br> [0x80000648]:sw a2, 160(ra)<br>     |
|  73|[0x80003330]<br>0x00000FFF|- rs1_val == -268435457<br>                                                                                                                                                                                              |[0x8000065c]:div a2, a0, a1<br> [0x80000660]:sw a2, 164(ra)<br>     |
|  74|[0x80003334]<br>0xFB6DB6DC|- rs1_val == -536870913<br>                                                                                                                                                                                              |[0x80000670]:div a2, a0, a1<br> [0x80000674]:sw a2, 168(ra)<br>     |
|  75|[0x80003338]<br>0x00000000|- rs1_val == -1073741825<br>                                                                                                                                                                                             |[0x80000684]:div a2, a0, a1<br> [0x80000688]:sw a2, 172(ra)<br>     |
|  76|[0x8000333c]<br>0x11111111|- rs1_val == 1431655765<br>                                                                                                                                                                                              |[0x80000698]:div a2, a0, a1<br> [0x8000069c]:sw a2, 176(ra)<br>     |
|  77|[0x80003340]<br>0xFFFFFD56|- rs2_val == 2097152<br> - rs1_val == -1431655766<br>                                                                                                                                                                    |[0x800006ac]:div a2, a0, a1<br> [0x800006b0]:sw a2, 180(ra)<br>     |
|  78|[0x80003344]<br>0xE0000000|- rs2_val == 2<br>                                                                                                                                                                                                       |[0x800006bc]:div a2, a0, a1<br> [0x800006c0]:sw a2, 184(ra)<br>     |
|  79|[0x80003348]<br>0x00000020|- rs2_val == 4<br>                                                                                                                                                                                                       |[0x800006cc]:div a2, a0, a1<br> [0x800006d0]:sw a2, 188(ra)<br>     |
|  80|[0x8000334c]<br>0x00000008|- rs2_val == 16<br>                                                                                                                                                                                                      |[0x800006dc]:div a2, a0, a1<br> [0x800006e0]:sw a2, 192(ra)<br>     |
|  81|[0x80003350]<br>0xFFFC0000|- rs2_val == 1024<br>                                                                                                                                                                                                    |[0x800006f0]:div a2, a0, a1<br> [0x800006f4]:sw a2, 196(ra)<br>     |
|  82|[0x80003354]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                                                                    |[0x80000700]:div a2, a0, a1<br> [0x80000704]:sw a2, 200(ra)<br>     |
|  83|[0x80003358]<br>0x00000100|- rs2_val == 16384<br>                                                                                                                                                                                                   |[0x80000710]:div a2, a0, a1<br> [0x80000714]:sw a2, 204(ra)<br>     |
|  84|[0x8000335c]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                  |[0x80000720]:div a2, a0, a1<br> [0x80000724]:sw a2, 208(ra)<br>     |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                                                  |[0x80000730]:div a2, a0, a1<br> [0x80000734]:sw a2, 212(ra)<br>     |
|  86|[0x80003364]<br>0x00000040|- rs2_val == 4194304<br>                                                                                                                                                                                                 |[0x80000740]:div a2, a0, a1<br> [0x80000744]:sw a2, 216(ra)<br>     |
|  87|[0x80003368]<br>0xFFFFFFFE|- rs2_val == 33554432<br>                                                                                                                                                                                                |[0x80000754]:div a2, a0, a1<br> [0x80000758]:sw a2, 220(ra)<br>     |
|  88|[0x8000336c]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                                               |[0x80000764]:div a2, a0, a1<br> [0x80000768]:sw a2, 224(ra)<br>     |
|  89|[0x80003370]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                                               |[0x80000774]:div a2, a0, a1<br> [0x80000778]:sw a2, 228(ra)<br>     |
|  90|[0x80003374]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                                                                               |[0x80000784]:div a2, a0, a1<br> [0x80000788]:sw a2, 232(ra)<br>     |
|  91|[0x80003378]<br>0xFFFE0000|- rs2_val == -2<br>                                                                                                                                                                                                      |[0x80000794]:div a2, a0, a1<br> [0x80000798]:sw a2, 236(ra)<br>     |
|  92|[0x8000337c]<br>0x000AAAAB|- rs2_val == -3<br>                                                                                                                                                                                                      |[0x800007a8]:div a2, a0, a1<br> [0x800007ac]:sw a2, 240(ra)<br>     |
|  93|[0x80003380]<br>0x00000000|- rs2_val == -5<br>                                                                                                                                                                                                      |[0x800007b8]:div a2, a0, a1<br> [0x800007bc]:sw a2, 244(ra)<br>     |
|  94|[0x80003384]<br>0x0000000E|- rs2_val == -9<br>                                                                                                                                                                                                      |[0x800007c8]:div a2, a0, a1<br> [0x800007cc]:sw a2, 248(ra)<br>     |
|  95|[0x80003388]<br>0xFFFF8788|- rs2_val == -17<br>                                                                                                                                                                                                     |[0x800007d8]:div a2, a0, a1<br> [0x800007dc]:sw a2, 252(ra)<br>     |
|  96|[0x8000338c]<br>0x00000001|- rs2_val == -33<br>                                                                                                                                                                                                     |[0x800007e8]:div a2, a0, a1<br> [0x800007ec]:sw a2, 256(ra)<br>     |
|  97|[0x80003390]<br>0xFFFFFFF1|- rs2_val == -65<br>                                                                                                                                                                                                     |[0x800007f8]:div a2, a0, a1<br> [0x800007fc]:sw a2, 260(ra)<br>     |
|  98|[0x80003394]<br>0x00000007|- rs2_val == -1025<br>                                                                                                                                                                                                   |[0x8000080c]:div a2, a0, a1<br> [0x80000810]:sw a2, 264(ra)<br>     |
|  99|[0x80003398]<br>0x0007FF00|- rs2_val == -2049<br>                                                                                                                                                                                                   |[0x80000820]:div a2, a0, a1<br> [0x80000824]:sw a2, 268(ra)<br>     |
| 100|[0x8000339c]<br>0x00000000|- rs2_val == -4097<br>                                                                                                                                                                                                   |[0x80000834]:div a2, a0, a1<br> [0x80000838]:sw a2, 272(ra)<br>     |
| 101|[0x800033a0]<br>0xFFFFFF81|- rs2_val == -8193<br>                                                                                                                                                                                                   |[0x80000848]:div a2, a0, a1<br> [0x8000084c]:sw a2, 276(ra)<br>     |
| 102|[0x800033a8]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                                                |[0x80000868]:div a2, a0, a1<br> [0x8000086c]:sw a2, 284(ra)<br>     |
| 103|[0x800033ac]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                                                                                      |[0x80000878]:div a2, a0, a1<br> [0x8000087c]:sw a2, 288(ra)<br>     |
| 104|[0x800033b0]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                                                                                      |[0x80000888]:div a2, a0, a1<br> [0x8000088c]:sw a2, 292(ra)<br>     |
