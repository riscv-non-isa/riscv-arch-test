
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000620')]      |
| SIG_REGION                | [('0x80003204', '0x80003330', '75 words')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 75      |
| STAT1                     | 72      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f4]:srl a2, a0, a1
      [0x800005f8]:sw a2, 212(t1)
 -- Signature Address: 0x80003324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000604]:srl a2, a0, a1
      [0x80000608]:sw a2, 216(t1)
 -- Signature Address: 0x80003328 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs2_val == 30




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000614]:srl a2, a0, a1
      [0x80000618]:sw a2, 220(t1)
 -- Signature Address: 0x8000332c Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 32
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

|s.no|        signature         |                                                                                                         coverpoints                                                                                                          |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : srl<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs2_val == 29<br> |[0x8000010c]:srl s8, t6, t6<br> [0x80000110]:sw s8, 0(gp)<br>      |
|   2|[0x80003208]<br>0x00400000|- rs1 : x30<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs1_val == 8388608<br> - rs2_val == 1<br>                                                                                                             |[0x8000011c]:srl s9, t5, s9<br> [0x80000120]:sw s9, 4(gp)<br>      |
|   3|[0x8000320c]<br>0xFFFFBFFF|- rs1 : x21<br> - rs2 : x10<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == -16385<br>                                                                                              |[0x80000130]:srl s5, s5, a0<br> [0x80000134]:sw s5, 8(gp)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                  |[0x80000140]:srl a6, a6, a6<br> [0x80000144]:sw a6, 12(gp)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x17<br> - rs2 : x6<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br>                                                                                                                                    |[0x80000150]:srl zero, a7, t1<br> [0x80000154]:sw zero, 16(gp)<br> |
|   6|[0x80003218]<br>0x40000000|- rs1 : x4<br> - rs2 : x12<br> - rd : x2<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                            |[0x80000160]:srl sp, tp, a2<br> [0x80000164]:sw sp, 20(gp)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x22<br> - rs2 : x13<br> - rd : x6<br> - rs2_val == 8<br>                                                                                                                                                              |[0x80000170]:srl t1, s6, a3<br> [0x80000174]:sw t1, 24(gp)<br>     |
|   8|[0x80003220]<br>0x0FFFFFFF|- rs1 : x25<br> - rs2 : x24<br> - rd : x4<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                                                |[0x80000184]:srl tp, s9, s8<br> [0x80000188]:sw tp, 28(gp)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x28<br> - rs2 : x8<br> - rd : x30<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                                       |[0x80000194]:srl t5, t3, fp<br> [0x80000198]:sw t5, 32(gp)<br>     |
|  10|[0x80003228]<br>0x00004000|- rs1 : x29<br> - rs2 : x1<br> - rd : x5<br> - rs1_val == 65536<br> - rs2_val == 2<br>                                                                                                                                        |[0x800001a4]:srl t0, t4, ra<br> [0x800001a8]:sw t0, 36(gp)<br>     |
|  11|[0x8000322c]<br>0x0F7FFFFF|- rs1 : x9<br> - rs2 : x19<br> - rd : x29<br> - rs1_val == -134217729<br> - rs2_val == 4<br>                                                                                                                                  |[0x800001b8]:srl t4, s1, s3<br> [0x800001bc]:sw t4, 40(gp)<br>     |
|  12|[0x80003230]<br>0x0000FF7F|- rs1 : x7<br> - rs2 : x27<br> - rd : x17<br> - rs1_val == -8388609<br> - rs2_val == 16<br>                                                                                                                                   |[0x800001cc]:srl a7, t2, s11<br> [0x800001d0]:sw a7, 44(gp)<br>    |
|  13|[0x80003234]<br>0x00000000|- rs1 : x0<br> - rs2 : x26<br> - rd : x7<br> - rs2_val == 30<br>                                                                                                                                                              |[0x800001dc]:srl t2, zero, s10<br> [0x800001e0]:sw t2, 48(gp)<br>  |
|  14|[0x80003238]<br>0x00000000|- rs1 : x19<br> - rs2 : x9<br> - rd : x10<br> - rs1_val == 1048576<br> - rs2_val == 27<br>                                                                                                                                    |[0x800001ec]:srl a0, s3, s1<br> [0x800001f0]:sw a0, 52(gp)<br>     |
|  15|[0x8000323c]<br>0x000001FF|- rs1 : x12<br> - rs2 : x21<br> - rd : x31<br> - rs1_val == -1025<br> - rs2_val == 23<br>                                                                                                                                     |[0x800001fc]:srl t6, a2, s5<br> [0x80000200]:sw t6, 56(gp)<br>     |
|  16|[0x80003240]<br>0x00017FFF|- rs1 : x8<br> - rs2 : x5<br> - rd : x26<br> - rs1_val == -1073741825<br> - rs2_val == 15<br>                                                                                                                                 |[0x80000210]:srl s10, fp, t0<br> [0x80000214]:sw s10, 60(gp)<br>   |
|  17|[0x80003244]<br>0x0000077F|- rs1 : x6<br> - rs2 : x2<br> - rd : x8<br> - rs1_val == -268435457<br> - rs2_val == 21<br>                                                                                                                                   |[0x80000224]:srl fp, t1, sp<br> [0x80000228]:sw fp, 64(gp)<br>     |
|  18|[0x80003248]<br>0x003FFFFF|- rs1 : x18<br> - rs2 : x14<br> - rd : x15<br> - rs2_val == 10<br>                                                                                                                                                            |[0x80000234]:srl a5, s2, a4<br> [0x80000238]:sw a5, 68(gp)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x23<br> - rs1_val == 2<br>                                                                                                                                                             |[0x80000244]:srl s7, s11, t3<br> [0x80000248]:sw s7, 72(gp)<br>    |
|  20|[0x80003250]<br>0x00000000|- rs1 : x14<br> - rs2 : x15<br> - rd : x13<br> - rs1_val == 4<br>                                                                                                                                                             |[0x8000025c]:srl a3, a4, a5<br> [0x80000260]:sw a3, 0(t1)<br>      |
|  21|[0x80003254]<br>0x00000000|- rs1 : x1<br> - rs2 : x4<br> - rd : x19<br> - rs1_val == 8<br>                                                                                                                                                               |[0x8000026c]:srl s3, ra, tp<br> [0x80000270]:sw s3, 4(t1)<br>      |
|  22|[0x80003258]<br>0x00000001|- rs1 : x5<br> - rs2 : x17<br> - rd : x12<br> - rs1_val == 16<br>                                                                                                                                                             |[0x8000027c]:srl a2, t0, a7<br> [0x80000280]:sw a2, 8(t1)<br>      |
|  23|[0x8000325c]<br>0x00000020|- rs1 : x13<br> - rs2 : x0<br> - rd : x14<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 32<br>                                                                                                                          |[0x8000028c]:srl a4, a3, zero<br> [0x80000290]:sw a4, 12(t1)<br>   |
|  24|[0x80003260]<br>0x00000002|- rs1 : x24<br> - rs2 : x20<br> - rd : x1<br> - rs1_val == 64<br>                                                                                                                                                             |[0x8000029c]:srl ra, s8, s4<br> [0x800002a0]:sw ra, 16(t1)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x11<br> - rs2 : x22<br> - rd : x9<br> - rs1_val == 128<br>                                                                                                                                                            |[0x800002ac]:srl s1, a1, s6<br> [0x800002b0]:sw s1, 20(t1)<br>     |
|  26|[0x80003268]<br>0x00000001|- rs1 : x10<br> - rs2 : x11<br> - rd : x3<br> - rs1_val == 256<br>                                                                                                                                                            |[0x800002bc]:srl gp, a0, a1<br> [0x800002c0]:sw gp, 24(t1)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x15<br> - rs2 : x23<br> - rd : x18<br> - rs1_val == 512<br>                                                                                                                                                           |[0x800002cc]:srl s2, a5, s7<br> [0x800002d0]:sw s2, 28(t1)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x23<br> - rs2 : x7<br> - rd : x27<br> - rs1_val == 1024<br>                                                                                                                                                           |[0x800002dc]:srl s11, s7, t2<br> [0x800002e0]:sw s11, 32(t1)<br>   |
|  29|[0x80003274]<br>0x00000000|- rs1 : x20<br> - rs2 : x18<br> - rd : x22<br> - rs1_val == 2048<br>                                                                                                                                                          |[0x800002f0]:srl s6, s4, s2<br> [0x800002f4]:sw s6, 36(t1)<br>     |
|  30|[0x80003278]<br>0x00000004|- rs1 : x2<br> - rs2 : x3<br> - rd : x28<br> - rs1_val == 4096<br>                                                                                                                                                            |[0x80000300]:srl t3, sp, gp<br> [0x80000304]:sw t3, 40(t1)<br>     |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x3<br> - rs2 : x30<br> - rd : x20<br> - rs1_val == 8192<br>                                                                                                                                                           |[0x80000310]:srl s4, gp, t5<br> [0x80000314]:sw s4, 44(t1)<br>     |
|  32|[0x80003280]<br>0x00002000|- rs1 : x26<br> - rs2 : x29<br> - rd : x11<br> - rs1_val == 16384<br>                                                                                                                                                         |[0x80000320]:srl a1, s10, t4<br> [0x80000324]:sw a1, 48(t1)<br>    |
|  33|[0x80003284]<br>0x00000010|- rs1_val == 32768<br>                                                                                                                                                                                                        |[0x80000330]:srl a2, a0, a1<br> [0x80000334]:sw a2, 52(t1)<br>     |
|  34|[0x80003288]<br>0x00000800|- rs1_val == 131072<br>                                                                                                                                                                                                       |[0x80000340]:srl a2, a0, a1<br> [0x80000344]:sw a2, 56(t1)<br>     |
|  35|[0x8000328c]<br>0x00000100|- rs1_val == 262144<br>                                                                                                                                                                                                       |[0x80000350]:srl a2, a0, a1<br> [0x80000354]:sw a2, 60(t1)<br>     |
|  36|[0x80003290]<br>0x00000010|- rs1_val == 524288<br>                                                                                                                                                                                                       |[0x80000360]:srl a2, a0, a1<br> [0x80000364]:sw a2, 64(t1)<br>     |
|  37|[0x80003294]<br>0x00000010|- rs1_val == 2097152<br>                                                                                                                                                                                                      |[0x80000370]:srl a2, a0, a1<br> [0x80000374]:sw a2, 68(t1)<br>     |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                                                      |[0x80000380]:srl a2, a0, a1<br> [0x80000384]:sw a2, 72(t1)<br>     |
|  39|[0x8000329c]<br>0x00400000|- rs1_val == 16777216<br>                                                                                                                                                                                                     |[0x80000390]:srl a2, a0, a1<br> [0x80000394]:sw a2, 76(t1)<br>     |
|  40|[0x800032a0]<br>0x07FFFFBF|- rs1_val == -2049<br>                                                                                                                                                                                                        |[0x800003a4]:srl a2, a0, a1<br> [0x800003a8]:sw a2, 80(t1)<br>     |
|  41|[0x800032a4]<br>0x01FFFFDF|- rs1_val == -4097<br>                                                                                                                                                                                                        |[0x800003b8]:srl a2, a0, a1<br> [0x800003bc]:sw a2, 84(t1)<br>     |
|  42|[0x800032a8]<br>0x0007FFFE|- rs1_val == -8193<br>                                                                                                                                                                                                        |[0x800003cc]:srl a2, a0, a1<br> [0x800003d0]:sw a2, 88(t1)<br>     |
|  43|[0x800032ac]<br>0x0000001F|- rs1_val == -32769<br>                                                                                                                                                                                                       |[0x800003e0]:srl a2, a0, a1<br> [0x800003e4]:sw a2, 92(t1)<br>     |
|  44|[0x800032b0]<br>0x00000007|- rs1_val == -131073<br>                                                                                                                                                                                                      |[0x800003f4]:srl a2, a0, a1<br> [0x800003f8]:sw a2, 96(t1)<br>     |
|  45|[0x800032b4]<br>0x0FFFBFFF|- rs1_val == -262145<br>                                                                                                                                                                                                      |[0x80000408]:srl a2, a0, a1<br> [0x8000040c]:sw a2, 100(t1)<br>    |
|  46|[0x800032b8]<br>0x001FFEFF|- rs1_val == -524289<br>                                                                                                                                                                                                      |[0x8000041c]:srl a2, a0, a1<br> [0x80000420]:sw a2, 104(t1)<br>    |
|  47|[0x800032bc]<br>0x007FF7FF|- rs1_val == -1048577<br>                                                                                                                                                                                                     |[0x80000430]:srl a2, a0, a1<br> [0x80000434]:sw a2, 108(t1)<br>    |
|  48|[0x800032c0]<br>0x000FFDFF|- rs1_val == -2097153<br>                                                                                                                                                                                                     |[0x80000444]:srl a2, a0, a1<br> [0x80000448]:sw a2, 112(t1)<br>    |
|  49|[0x800032c4]<br>0x003FEFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                     |[0x80000458]:srl a2, a0, a1<br> [0x8000045c]:sw a2, 116(t1)<br>    |
|  50|[0x800032c8]<br>0x001FDFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                    |[0x8000046c]:srl a2, a0, a1<br> [0x80000470]:sw a2, 120(t1)<br>    |
|  51|[0x800032cc]<br>0xFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                    |[0x80000480]:srl a2, a0, a1<br> [0x80000484]:sw a2, 124(t1)<br>    |
|  52|[0x800032d0]<br>0x01F7FFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                    |[0x80000494]:srl a2, a0, a1<br> [0x80000498]:sw a2, 128(t1)<br>    |
|  53|[0x800032d4]<br>0x00DFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                   |[0x800004a8]:srl a2, a0, a1<br> [0x800004ac]:sw a2, 132(t1)<br>    |
|  54|[0x800032d8]<br>0x0000AAAA|- rs1_val == 1431655765<br>                                                                                                                                                                                                   |[0x800004bc]:srl a2, a0, a1<br> [0x800004c0]:sw a2, 136(t1)<br>    |
|  55|[0x800032dc]<br>0x00000555|- rs1_val == -1431655766<br>                                                                                                                                                                                                  |[0x800004d0]:srl a2, a0, a1<br> [0x800004d4]:sw a2, 140(t1)<br>    |
|  56|[0x800032e0]<br>0x00000040|- rs1_val == 33554432<br>                                                                                                                                                                                                     |[0x800004e0]:srl a2, a0, a1<br> [0x800004e4]:sw a2, 144(t1)<br>    |
|  57|[0x800032e4]<br>0x00100000|- rs1_val == 67108864<br>                                                                                                                                                                                                     |[0x800004f0]:srl a2, a0, a1<br> [0x800004f4]:sw a2, 148(t1)<br>    |
|  58|[0x800032e8]<br>0x00000800|- rs1_val == 134217728<br>                                                                                                                                                                                                    |[0x80000500]:srl a2, a0, a1<br> [0x80000504]:sw a2, 152(t1)<br>    |
|  59|[0x800032ec]<br>0x04000000|- rs1_val == 536870912<br>                                                                                                                                                                                                    |[0x80000510]:srl a2, a0, a1<br> [0x80000514]:sw a2, 156(t1)<br>    |
|  60|[0x800032f0]<br>0x00000080|- rs1_val == 1073741824<br>                                                                                                                                                                                                   |[0x80000520]:srl a2, a0, a1<br> [0x80000524]:sw a2, 160(t1)<br>    |
|  61|[0x800032f4]<br>0x00001FFF|- rs1_val == -2<br>                                                                                                                                                                                                           |[0x80000530]:srl a2, a0, a1<br> [0x80000534]:sw a2, 164(t1)<br>    |
|  62|[0x800032f8]<br>0x0003FFFF|- rs1_val == -3<br>                                                                                                                                                                                                           |[0x80000540]:srl a2, a0, a1<br> [0x80000544]:sw a2, 168(t1)<br>    |
|  63|[0x800032fc]<br>0x000FFFFF|- rs1_val == -5<br>                                                                                                                                                                                                           |[0x80000550]:srl a2, a0, a1<br> [0x80000554]:sw a2, 172(t1)<br>    |
|  64|[0x80003300]<br>0x03FFFFFF|- rs1_val == -9<br>                                                                                                                                                                                                           |[0x80000560]:srl a2, a0, a1<br> [0x80000564]:sw a2, 176(t1)<br>    |
|  65|[0x80003304]<br>0x0000001F|- rs1_val == -17<br>                                                                                                                                                                                                          |[0x80000570]:srl a2, a0, a1<br> [0x80000574]:sw a2, 180(t1)<br>    |
|  66|[0x80003308]<br>0x07FFFFFE|- rs1_val == -33<br>                                                                                                                                                                                                          |[0x80000580]:srl a2, a0, a1<br> [0x80000584]:sw a2, 184(t1)<br>    |
|  67|[0x8000330c]<br>0x1FFFFFF7|- rs1_val == -65<br>                                                                                                                                                                                                          |[0x80000590]:srl a2, a0, a1<br> [0x80000594]:sw a2, 188(t1)<br>    |
|  68|[0x80003310]<br>0x000007FF|- rs1_val == -129<br>                                                                                                                                                                                                         |[0x800005a0]:srl a2, a0, a1<br> [0x800005a4]:sw a2, 192(t1)<br>    |
|  69|[0x80003314]<br>0x00003FFF|- rs1_val == -257<br>                                                                                                                                                                                                         |[0x800005b0]:srl a2, a0, a1<br> [0x800005b4]:sw a2, 196(t1)<br>    |
|  70|[0x80003318]<br>0x00FFFFFD|- rs1_val == -513<br>                                                                                                                                                                                                         |[0x800005c0]:srl a2, a0, a1<br> [0x800005c4]:sw a2, 200(t1)<br>    |
|  71|[0x8000331c]<br>0x00000007|- rs1_val == -65537<br>                                                                                                                                                                                                       |[0x800005d4]:srl a2, a0, a1<br> [0x800005d8]:sw a2, 204(t1)<br>    |
|  72|[0x80003320]<br>0x10000000|- rs1_val == 268435456<br>                                                                                                                                                                                                    |[0x800005e4]:srl a2, a0, a1<br> [0x800005e8]:sw a2, 208(t1)<br>    |
