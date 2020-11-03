
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000600')]      |
| SIG_REGION                | [('0x80003204', '0x80003330', '75 words')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 189     |
| Total Signature Updates   | 72      |
| Total Coverpoints Covered | 189      |
| STAT1                     | 69      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005b4]:sra a2, a0, a1
      [0x800005b8]:sw a2, 208(tp)
 -- Signature Address: 0x80003320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c8]:sra a2, a0, a1
      [0x800005cc]:sw a2, 212(tp)
 -- Signature Address: 0x80003324 Data: 0x000000FF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 2147483647
      - rs2_val == 23




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005dc]:sra a2, a0, a1
      [0x800005e0]:sw a2, 216(tp)
 -- Signature Address: 0x80003328 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1431655765
      - rs2_val == 29






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

|s.no|        signature         |                                                                                                         coverpoints                                                                                                         |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : sra<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs2_val == 23<br> |[0x8000010c]:sra sp, a2, a2<br> [0x80000110]:sw sp, 0(t1)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x1<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_val == 32<br>                                                                                                                                     |[0x8000011c]:sra a5, ra, a5<br> [0x80000120]:sw a5, 4(t1)<br>      |
|   3|[0x80003218]<br>0xFFFF7FFF|- rs1 : x26<br> - rs2 : x9<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == -32769<br>                                                                                              |[0x80000130]:sra s10, s10, s1<br> [0x80000134]:sw s10, 8(t1)<br>   |
|   4|[0x8000321c]<br>0x00100000|- rs1 : x9<br> - rs2 : x7<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 1048576<br>                                                                        |[0x80000140]:sra t0, s1, t2<br> [0x80000144]:sw t0, 12(t1)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs1_val == 8<br> - rs2_val == 8<br>                                                                                                                     |[0x80000150]:sra tp, tp, tp<br> [0x80000154]:sw tp, 16(t1)<br>     |
|   6|[0x80003224]<br>0xC0000000|- rs1 : x20<br> - rs2 : x29<br> - rd : x7<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br> - rs2_val == 1<br>       |[0x80000160]:sra t2, s4, t4<br> [0x80000164]:sw t2, 20(t1)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x30<br> - rs2 : x17<br> - rd : x27<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                                        |[0x80000170]:sra s11, t5, a7<br> [0x80000174]:sw s11, 24(t1)<br>   |
|   8|[0x8000322c]<br>0x7FFFFFFF|- rs1 : x15<br> - rs2 : x0<br> - rd : x28<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                                               |[0x80000184]:sra t3, a5, zero<br> [0x80000188]:sw t3, 28(t1)<br>   |
|   9|[0x80003230]<br>0x00000000|- rs1 : x25<br> - rs2 : x8<br> - rd : x3<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 27<br>                                                                                   |[0x80000194]:sra gp, s9, fp<br> [0x80000198]:sw gp, 32(t1)<br>     |
|  10|[0x80003234]<br>0x00004000|- rs1 : x18<br> - rs2 : x20<br> - rd : x9<br> - rs1_val == 65536<br> - rs2_val == 2<br>                                                                                                                                      |[0x800001a4]:sra s1, s2, s4<br> [0x800001a8]:sw s1, 36(t1)<br>     |
|  11|[0x80003238]<br>0x00000010|- rs1 : x31<br> - rs2 : x14<br> - rd : x19<br> - rs1_val == 256<br> - rs2_val == 4<br>                                                                                                                                       |[0x800001b4]:sra s3, t6, a4<br> [0x800001b8]:sw s3, 40(t1)<br>     |
|  12|[0x8000323c]<br>0xFFFFF7FF|- rs1 : x29<br> - rs2 : x13<br> - rd : x8<br> - rs1_val == -134217729<br> - rs2_val == 16<br>                                                                                                                                |[0x800001c8]:sra fp, t4, a3<br> [0x800001cc]:sw fp, 44(t1)<br>     |
|  13|[0x80003240]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x11<br> - rd : x24<br> - rs1_val == -4194305<br> - rs2_val == 30<br>                                                                                                                                  |[0x800001dc]:sra s8, t2, a1<br> [0x800001e0]:sw s8, 48(t1)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x23<br> - rs2 : x18<br> - rd : x0<br> - rs1_val == 1431655765<br> - rs2_val == 29<br>                                                                                                                                |[0x800001f0]:sra zero, s7, s2<br> [0x800001f4]:sw zero, 52(t1)<br> |
|  15|[0x80003248]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x10<br> - rd : x25<br> - rs1_val == -3<br> - rs2_val == 15<br>                                                                                                                                        |[0x80000200]:sra s9, t0, a0<br> [0x80000204]:sw s9, 56(t1)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x10<br> - rs2 : x24<br> - rd : x21<br> - rs1_val == 4096<br> - rs2_val == 21<br>                                                                                                                                     |[0x80000210]:sra s5, a0, s8<br> [0x80000214]:sw s5, 60(t1)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x0<br> - rs2 : x28<br> - rd : x13<br> - rs2_val == 10<br>                                                                                                                                                            |[0x80000228]:sra a3, zero, t3<br> [0x8000022c]:sw a3, 0(tp)<br>    |
|  18|[0x80003254]<br>0x00000000|- rs1 : x19<br> - rs2 : x26<br> - rd : x29<br> - rs1_val == 2<br>                                                                                                                                                            |[0x80000238]:sra t4, s3, s10<br> [0x8000023c]:sw t4, 4(tp)<br>     |
|  19|[0x80003258]<br>0x00000000|- rs1 : x22<br> - rs2 : x21<br> - rd : x30<br> - rs1_val == 4<br>                                                                                                                                                            |[0x80000248]:sra t5, s6, s5<br> [0x8000024c]:sw t5, 8(tp)<br>      |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x21<br> - rs2 : x27<br> - rd : x12<br> - rs1_val == 16<br>                                                                                                                                                           |[0x80000258]:sra a2, s5, s11<br> [0x8000025c]:sw a2, 12(tp)<br>    |
|  21|[0x80003260]<br>0x00000040|- rs1 : x28<br> - rs2 : x2<br> - rd : x22<br> - rs1_val == 64<br>                                                                                                                                                            |[0x80000268]:sra s6, t3, sp<br> [0x8000026c]:sw s6, 16(tp)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x6<br> - rs2 : x5<br> - rd : x31<br> - rs1_val == 128<br>                                                                                                                                                            |[0x80000278]:sra t6, t1, t0<br> [0x8000027c]:sw t6, 20(tp)<br>     |
|  23|[0x80003268]<br>0x00000200|- rs1 : x11<br> - rs2 : x19<br> - rd : x14<br> - rs1_val == 512<br>                                                                                                                                                          |[0x80000288]:sra a4, a1, s3<br> [0x8000028c]:sw a4, 24(tp)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x14<br> - rs2 : x6<br> - rd : x23<br> - rs1_val == 1024<br>                                                                                                                                                          |[0x80000298]:sra s7, a4, t1<br> [0x8000029c]:sw s7, 28(tp)<br>     |
|  25|[0x80003270]<br>0x00000000|- rs1 : x24<br> - rs2 : x1<br> - rd : x16<br> - rs1_val == 2048<br>                                                                                                                                                          |[0x800002ac]:sra a6, s8, ra<br> [0x800002b0]:sw a6, 32(tp)<br>     |
|  26|[0x80003274]<br>0x00000100|- rs1 : x17<br> - rs2 : x30<br> - rd : x10<br> - rs1_val == 8192<br>                                                                                                                                                         |[0x800002bc]:sra a0, a7, t5<br> [0x800002c0]:sw a0, 36(tp)<br>     |
|  27|[0x80003278]<br>0x00000080|- rs1 : x2<br> - rs2 : x22<br> - rd : x18<br> - rs1_val == 16384<br>                                                                                                                                                         |[0x800002cc]:sra s2, sp, s6<br> [0x800002d0]:sw s2, 40(tp)<br>     |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x13<br> - rs2 : x3<br> - rd : x17<br> - rs1_val == 32768<br>                                                                                                                                                         |[0x800002dc]:sra a7, a3, gp<br> [0x800002e0]:sw a7, 44(tp)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x16<br> - rs2 : x31<br> - rd : x6<br> - rs1_val == 131072<br>                                                                                                                                                        |[0x800002ec]:sra t1, a6, t6<br> [0x800002f0]:sw t1, 48(tp)<br>     |
|  30|[0x80003284]<br>0x00001000|- rs1 : x3<br> - rs2 : x23<br> - rd : x20<br> - rs1_val == 262144<br>                                                                                                                                                        |[0x800002fc]:sra s4, gp, s7<br> [0x80000300]:sw s4, 52(tp)<br>     |
|  31|[0x80003288]<br>0x00001000|- rs1 : x27<br> - rs2 : x25<br> - rd : x11<br> - rs1_val == 524288<br>                                                                                                                                                       |[0x8000030c]:sra a1, s11, s9<br> [0x80000310]:sw a1, 56(tp)<br>    |
|  32|[0x8000328c]<br>0x00000200|- rs1 : x8<br> - rs2 : x16<br> - rd : x1<br> - rs1_val == 2097152<br>                                                                                                                                                        |[0x8000031c]:sra ra, fp, a6<br> [0x80000320]:sw ra, 60(tp)<br>     |
|  33|[0x80003290]<br>0x00000002|- rs1_val == 4194304<br>                                                                                                                                                                                                     |[0x8000032c]:sra a2, a0, a1<br> [0x80000330]:sw a2, 64(tp)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                                                                                                     |[0x8000033c]:sra a2, a0, a1<br> [0x80000340]:sw a2, 68(tp)<br>     |
|  35|[0x80003298]<br>0x00040000|- rs1_val == 16777216<br>                                                                                                                                                                                                    |[0x8000034c]:sra a2, a0, a1<br> [0x80000350]:sw a2, 72(tp)<br>     |
|  36|[0x8000329c]<br>0x00000800|- rs1_val == 33554432<br>                                                                                                                                                                                                    |[0x8000035c]:sra a2, a0, a1<br> [0x80000360]:sw a2, 76(tp)<br>     |
|  37|[0x800032a0]<br>0xFFFFFDFF|- rs1_val == -2049<br>                                                                                                                                                                                                       |[0x80000370]:sra a2, a0, a1<br> [0x80000374]:sw a2, 80(tp)<br>     |
|  38|[0x800032a4]<br>0xFFFFF7FF|- rs1_val == -4097<br>                                                                                                                                                                                                       |[0x80000384]:sra a2, a0, a1<br> [0x80000388]:sw a2, 84(tp)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                                                       |[0x80000398]:sra a2, a0, a1<br> [0x8000039c]:sw a2, 88(tp)<br>     |
|  40|[0x800032ac]<br>0xFFFFFFFB|- rs1_val == -16385<br>                                                                                                                                                                                                      |[0x800003ac]:sra a2, a0, a1<br> [0x800003b0]:sw a2, 92(tp)<br>     |
|  41|[0x800032b0]<br>0xFFFFFFBF|- rs1_val == -65537<br>                                                                                                                                                                                                      |[0x800003c0]:sra a2, a0, a1<br> [0x800003c4]:sw a2, 96(tp)<br>     |
|  42|[0x800032b4]<br>0xFFFFEFFF|- rs1_val == -131073<br>                                                                                                                                                                                                     |[0x800003d4]:sra a2, a0, a1<br> [0x800003d8]:sw a2, 100(tp)<br>    |
|  43|[0x800032b8]<br>0xFFFFFF7F|- rs1_val == -524289<br>                                                                                                                                                                                                     |[0x800003e8]:sra a2, a0, a1<br> [0x800003ec]:sw a2, 104(tp)<br>    |
|  44|[0x800032bc]<br>0xFFFF7FFF|- rs1_val == -1048577<br>                                                                                                                                                                                                    |[0x800003fc]:sra a2, a0, a1<br> [0x80000400]:sw a2, 108(tp)<br>    |
|  45|[0x800032c0]<br>0xFFF7FFFF|- rs1_val == -2097153<br>                                                                                                                                                                                                    |[0x80000410]:sra a2, a0, a1<br> [0x80000414]:sw a2, 112(tp)<br>    |
|  46|[0x800032c4]<br>0xFFFFFFFB|- rs1_val == -8388609<br>                                                                                                                                                                                                    |[0x80000424]:sra a2, a0, a1<br> [0x80000428]:sw a2, 116(tp)<br>    |
|  47|[0x800032c8]<br>0xFFFDFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                   |[0x80000438]:sra a2, a0, a1<br> [0x8000043c]:sw a2, 120(tp)<br>    |
|  48|[0x800032cc]<br>0xFFBFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                   |[0x8000044c]:sra a2, a0, a1<br> [0x80000450]:sw a2, 124(tp)<br>    |
|  49|[0x800032d0]<br>0xFFF7FFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                   |[0x80000460]:sra a2, a0, a1<br> [0x80000464]:sw a2, 128(tp)<br>    |
|  50|[0x800032d4]<br>0xFFFFFFDF|- rs1_val == -268435457<br>                                                                                                                                                                                                  |[0x80000474]:sra a2, a0, a1<br> [0x80000478]:sw a2, 132(tp)<br>    |
|  51|[0x800032d8]<br>0xFBFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                  |[0x80000488]:sra a2, a0, a1<br> [0x8000048c]:sw a2, 136(tp)<br>    |
|  52|[0x800032dc]<br>0xFF7FFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                 |[0x8000049c]:sra a2, a0, a1<br> [0x800004a0]:sw a2, 140(tp)<br>    |
|  53|[0x800032e0]<br>0x00000020|- rs1_val == 67108864<br>                                                                                                                                                                                                    |[0x800004ac]:sra a2, a0, a1<br> [0x800004b0]:sw a2, 144(tp)<br>    |
|  54|[0x800032e4]<br>0x00040000|- rs1_val == 134217728<br>                                                                                                                                                                                                   |[0x800004bc]:sra a2, a0, a1<br> [0x800004c0]:sw a2, 148(tp)<br>    |
|  55|[0x800032e8]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                                   |[0x800004cc]:sra a2, a0, a1<br> [0x800004d0]:sw a2, 152(tp)<br>    |
|  56|[0x800032ec]<br>0x00080000|- rs1_val == 536870912<br>                                                                                                                                                                                                   |[0x800004dc]:sra a2, a0, a1<br> [0x800004e0]:sw a2, 156(tp)<br>    |
|  57|[0x800032f0]<br>0x00010000|- rs1_val == 1073741824<br>                                                                                                                                                                                                  |[0x800004ec]:sra a2, a0, a1<br> [0x800004f0]:sw a2, 160(tp)<br>    |
|  58|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                          |[0x800004fc]:sra a2, a0, a1<br> [0x80000500]:sw a2, 164(tp)<br>    |
|  59|[0x800032f8]<br>0xFFFFFFFF|- rs1_val == -1431655766<br>                                                                                                                                                                                                 |[0x80000510]:sra a2, a0, a1<br> [0x80000514]:sw a2, 168(tp)<br>    |
|  60|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                                          |[0x80000520]:sra a2, a0, a1<br> [0x80000524]:sw a2, 172(tp)<br>    |
|  61|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                                          |[0x80000530]:sra a2, a0, a1<br> [0x80000534]:sw a2, 176(tp)<br>    |
|  62|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                                         |[0x80000540]:sra a2, a0, a1<br> [0x80000544]:sw a2, 180(tp)<br>    |
|  63|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                                         |[0x80000550]:sra a2, a0, a1<br> [0x80000554]:sw a2, 184(tp)<br>    |
|  64|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                                                         |[0x80000560]:sra a2, a0, a1<br> [0x80000564]:sw a2, 188(tp)<br>    |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                                                        |[0x80000570]:sra a2, a0, a1<br> [0x80000574]:sw a2, 192(tp)<br>    |
|  66|[0x80003314]<br>0xFFFFFFBF|- rs1_val == -257<br>                                                                                                                                                                                                        |[0x80000580]:sra a2, a0, a1<br> [0x80000584]:sw a2, 196(tp)<br>    |
|  67|[0x80003318]<br>0xFFFFFFEF|- rs1_val == -513<br>                                                                                                                                                                                                        |[0x80000590]:sra a2, a0, a1<br> [0x80000594]:sw a2, 200(tp)<br>    |
|  68|[0x8000331c]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                                                                                     |[0x800005a4]:sra a2, a0, a1<br> [0x800005a8]:sw a2, 204(tp)<br>    |
|  69|[0x8000332c]<br>0xFFFFFFFE|- rs1_val == -1025<br>                                                                                                                                                                                                       |[0x800005ec]:sra a2, a0, a1<br> [0x800005f0]:sw a2, 220(tp)<br>    |
