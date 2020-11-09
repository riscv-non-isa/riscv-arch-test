
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000860')]      |
| SIG_REGION                | [('0x80003204', '0x80003398', '101 words')]      |
| COV_LABELS                | slt      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slt-01.S/slt-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 99      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000834]:slt a2, a0, a1
      [0x80000838]:sw a2, 324(gp)
 -- Signature Address: 0x8000338c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val == rs2_val
      - rs2_val == 1
      - rs1_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:slt a2, a0, a1
      [0x8000085c]:sw a2, 332(gp)
 -- Signature Address: 0x80003394 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 32
      - rs1_val == 16777216






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

|s.no|        signature         |                                                                                                              coverpoints                                                                                                               |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000001|- opcode : slt<br> - rs1 : x16<br> - rs2 : x9<br> - rd : x9<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 8388608<br> - rs1_val == -2147483648<br> |[0x80000108]:slt s1, a6, s1<br> [0x8000010c]:sw s1, 0(fp)<br>      |
|   2|[0x80003208]<br>0x00000001|- rs1 : x2<br> - rs2 : x10<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == 4194304<br>                                                                                                 |[0x80000118]:slt s7, sp, a0<br> [0x8000011c]:sw s7, 4(fp)<br>      |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                                                                                           |[0x8000012c]:slt ra, tp, tp<br> [0x80000130]:sw ra, 8(fp)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == 1<br>                                                                                              |[0x8000013c]:slt gp, gp, gp<br> [0x80000140]:sw gp, 12(fp)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x13<br> - rs2 : x6<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -1025<br>                                                                                |[0x8000014c]:slt a3, a3, t1<br> [0x80000150]:sw a3, 16(fp)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x18<br> - rs2 : x7<br> - rd : x21<br> - rs2_val == 0<br> - rs1_val == 1073741824<br>                                                                                                                                            |[0x8000015c]:slt s5, s2, t2<br> [0x80000160]:sw s5, 20(fp)<br>     |
|   7|[0x8000321c]<br>0x00000001|- rs1 : x14<br> - rs2 : x12<br> - rd : x19<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 32<br>                                                                                                         |[0x80000170]:slt s3, a4, a2<br> [0x80000174]:sw s3, 24(fp)<br>     |
|   8|[0x80003220]<br>0x00000001|- rs1 : x11<br> - rs2 : x22<br> - rd : x14<br> - rs2_val == 134217728<br> - rs1_val == 2<br>                                                                                                                                            |[0x80000180]:slt a4, a1, s6<br> [0x80000184]:sw a4, 28(fp)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x15<br> - rs2 : x5<br> - rd : x11<br> - rs2_val == 2<br> - rs1_val == 4<br>                                                                                                                                                     |[0x80000190]:slt a1, a5, t0<br> [0x80000194]:sw a1, 32(fp)<br>     |
|  10|[0x80003228]<br>0x00000000|- rs1 : x24<br> - rs2 : x15<br> - rd : x20<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -268435457<br> - rs1_val == 8<br>                                                                                                         |[0x800001a4]:slt s4, s8, a5<br> [0x800001a8]:sw s4, 36(fp)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x6<br> - rs2 : x16<br> - rd : x29<br> - rs1_val == 16<br>                                                                                                                                                                       |[0x800001b4]:slt t4, t1, a6<br> [0x800001b8]:sw t4, 40(fp)<br>     |
|  12|[0x80003230]<br>0x00000000|- rs1 : x10<br> - rs2 : x0<br> - rd : x24<br> - rs1_val == 64<br>                                                                                                                                                                       |[0x800001c8]:slt s8, a0, zero<br> [0x800001cc]:sw s8, 44(fp)<br>   |
|  13|[0x80003234]<br>0x00000000|- rs1 : x31<br> - rs2 : x29<br> - rd : x12<br> - rs2_val == -5<br> - rs1_val == 128<br>                                                                                                                                                 |[0x800001d8]:slt a2, t6, t4<br> [0x800001dc]:sw a2, 48(fp)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x28<br> - rs2 : x24<br> - rd : x30<br> - rs2_val == -16385<br> - rs1_val == 256<br>                                                                                                                                             |[0x800001ec]:slt t5, t3, s8<br> [0x800001f0]:sw t5, 52(fp)<br>     |
|  15|[0x8000323c]<br>0x00000001|- rs1 : x25<br> - rs2 : x13<br> - rd : x7<br> - rs2_val == 67108864<br> - rs1_val == 512<br>                                                                                                                                            |[0x800001fc]:slt t2, s9, a3<br> [0x80000200]:sw t2, 56(fp)<br>     |
|  16|[0x80003240]<br>0x00000000|- rs1 : x20<br> - rs2 : x18<br> - rd : x16<br> - rs2_val == -262145<br> - rs1_val == 1024<br>                                                                                                                                           |[0x80000210]:slt a6, s4, s2<br> [0x80000214]:sw a6, 60(fp)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x5<br> - rs2 : x20<br> - rd : x27<br> - rs2_val == -2097153<br> - rs1_val == 2048<br>                                                                                                                                           |[0x80000228]:slt s11, t0, s4<br> [0x8000022c]:sw s11, 64(fp)<br>   |
|  18|[0x80003248]<br>0x00000001|- rs1 : x1<br> - rs2 : x11<br> - rd : x8<br> - rs2_val == 8192<br> - rs1_val == 4096<br>                                                                                                                                                |[0x80000240]:slt fp, ra, a1<br> [0x80000244]:sw fp, 0(gp)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x26<br> - rs2 : x31<br> - rd : x17<br> - rs2_val == -513<br> - rs1_val == 8192<br>                                                                                                                                              |[0x80000250]:slt a7, s10, t6<br> [0x80000254]:sw a7, 4(gp)<br>     |
|  20|[0x80003250]<br>0x00000000|- rs1 : x21<br> - rs2 : x1<br> - rd : x26<br> - rs2_val == -8388609<br> - rs1_val == 16384<br>                                                                                                                                          |[0x80000264]:slt s10, s5, ra<br> [0x80000268]:sw s10, 8(gp)<br>    |
|  21|[0x80003254]<br>0x00000000|- rs1 : x30<br> - rs2 : x23<br> - rd : x10<br> - rs1_val == 32768<br>                                                                                                                                                                   |[0x80000274]:slt a0, t5, s7<br> [0x80000278]:sw a0, 12(gp)<br>     |
|  22|[0x80003258]<br>0x00000000|- rs1 : x9<br> - rs2 : x8<br> - rd : x6<br> - rs1_val == 65536<br>                                                                                                                                                                      |[0x80000284]:slt t1, s1, fp<br> [0x80000288]:sw t1, 16(gp)<br>     |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x7<br> - rs2 : x26<br> - rd : x18<br> - rs1_val == 131072<br>                                                                                                                                                                   |[0x80000294]:slt s2, t2, s10<br> [0x80000298]:sw s2, 20(gp)<br>    |
|  24|[0x80003260]<br>0x00000000|- rs1 : x17<br> - rs2 : x27<br> - rd : x5<br> - rs2_val == 65536<br> - rs1_val == 262144<br>                                                                                                                                            |[0x800002a4]:slt t0, a7, s11<br> [0x800002a8]:sw t0, 24(gp)<br>    |
|  25|[0x80003264]<br>0x00000001|- rs1 : x8<br> - rs2 : x21<br> - rd : x2<br> - rs2_val == 16777216<br> - rs1_val == 524288<br>                                                                                                                                          |[0x800002b4]:slt sp, fp, s5<br> [0x800002b8]:sw sp, 28(gp)<br>     |
|  26|[0x80003268]<br>0x00000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x31<br>                                                                                                                                                                                           |[0x800002c8]:slt t6, zero, s9<br> [0x800002cc]:sw t6, 32(gp)<br>   |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x23<br> - rs2 : x19<br> - rd : x22<br> - rs1_val == 2097152<br>                                                                                                                                                                 |[0x800002d8]:slt s6, s7, s3<br> [0x800002dc]:sw s6, 36(gp)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x15<br> - rs2_val == -4194305<br> - rs1_val == 4194304<br>                                                                                                                                       |[0x800002ec]:slt a5, s11, t3<br> [0x800002f0]:sw a5, 40(gp)<br>    |
|  29|[0x80003274]<br>0x00000000|- rs1 : x19<br> - rs2 : x14<br> - rd : x28<br> - rs1_val == 8388608<br>                                                                                                                                                                 |[0x80000300]:slt t3, s3, a4<br> [0x80000304]:sw t3, 44(gp)<br>     |
|  30|[0x80003278]<br>0x00000000|- rs1 : x22<br> - rs2 : x30<br> - rd : x0<br> - rs2_val == 32<br> - rs1_val == 16777216<br>                                                                                                                                             |[0x80000310]:slt zero, s6, t5<br> [0x80000314]:sw zero, 48(gp)<br> |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x29<br> - rs2 : x2<br> - rd : x4<br> - rs2_val == 33554432<br> - rs1_val == 33554432<br>                                                                                                                                        |[0x80000320]:slt tp, t4, sp<br> [0x80000324]:sw tp, 52(gp)<br>     |
|  32|[0x80003280]<br>0x00000001|- rs1 : x12<br> - rs2 : x17<br> - rd : x25<br> - rs2_val == 1431655765<br> - rs1_val == 67108864<br>                                                                                                                                    |[0x80000334]:slt s9, a2, a7<br> [0x80000338]:sw s9, 56(gp)<br>     |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                                                                              |[0x80000348]:slt a2, a0, a1<br> [0x8000034c]:sw a2, 60(gp)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs2_val == -524289<br> - rs1_val == 268435456<br>                                                                                                                                                                                     |[0x8000035c]:slt a2, a0, a1<br> [0x80000360]:sw a2, 64(gp)<br>     |
|  35|[0x8000328c]<br>0x00000000|- rs2_val == 4<br> - rs1_val == 536870912<br>                                                                                                                                                                                           |[0x8000036c]:slt a2, a0, a1<br> [0x80000370]:sw a2, 68(gp)<br>     |
|  36|[0x80003290]<br>0x00000001|- rs2_val == 1024<br> - rs1_val == -2<br>                                                                                                                                                                                               |[0x8000037c]:slt a2, a0, a1<br> [0x80000380]:sw a2, 72(gp)<br>     |
|  37|[0x80003294]<br>0x00000001|- rs2_val == 524288<br> - rs1_val == -3<br>                                                                                                                                                                                             |[0x8000038c]:slt a2, a0, a1<br> [0x80000390]:sw a2, 76(gp)<br>     |
|  38|[0x80003298]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                                                                                     |[0x8000039c]:slt a2, a0, a1<br> [0x800003a0]:sw a2, 80(gp)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs2_val == -536870913<br> - rs1_val == -9<br>                                                                                                                                                                                         |[0x800003b0]:slt a2, a0, a1<br> [0x800003b4]:sw a2, 84(gp)<br>     |
|  40|[0x800032a0]<br>0x00000001|- rs1_val == -17<br>                                                                                                                                                                                                                    |[0x800003c0]:slt a2, a0, a1<br> [0x800003c4]:sw a2, 88(gp)<br>     |
|  41|[0x800032a4]<br>0x00000001|- rs1_val == -33<br>                                                                                                                                                                                                                    |[0x800003d0]:slt a2, a0, a1<br> [0x800003d4]:sw a2, 92(gp)<br>     |
|  42|[0x800032a8]<br>0x00000001|- rs2_val == 4096<br> - rs1_val == -65<br>                                                                                                                                                                                              |[0x800003e0]:slt a2, a0, a1<br> [0x800003e4]:sw a2, 96(gp)<br>     |
|  43|[0x800032ac]<br>0x00000000|- rs2_val == -1048577<br>                                                                                                                                                                                                               |[0x800003f4]:slt a2, a0, a1<br> [0x800003f8]:sw a2, 100(gp)<br>    |
|  44|[0x800032b0]<br>0x00000000|- rs2_val == -16777217<br>                                                                                                                                                                                                              |[0x80000408]:slt a2, a0, a1<br> [0x8000040c]:sw a2, 104(gp)<br>    |
|  45|[0x800032b4]<br>0x00000000|- rs2_val == -33554433<br>                                                                                                                                                                                                              |[0x8000041c]:slt a2, a0, a1<br> [0x80000420]:sw a2, 108(gp)<br>    |
|  46|[0x800032b8]<br>0x00000001|- rs2_val == -67108865<br> - rs1_val == -134217729<br>                                                                                                                                                                                  |[0x80000434]:slt a2, a0, a1<br> [0x80000438]:sw a2, 112(gp)<br>    |
|  47|[0x800032bc]<br>0x00000000|- rs2_val == -1073741825<br>                                                                                                                                                                                                            |[0x80000448]:slt a2, a0, a1<br> [0x8000044c]:sw a2, 116(gp)<br>    |
|  48|[0x800032c0]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                                                            |[0x8000045c]:slt a2, a0, a1<br> [0x80000460]:sw a2, 120(gp)<br>    |
|  49|[0x800032c4]<br>0x00000001|- rs2_val == -9<br> - rs1_val == -129<br>                                                                                                                                                                                               |[0x8000046c]:slt a2, a0, a1<br> [0x80000470]:sw a2, 124(gp)<br>    |
|  50|[0x800032c8]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                                                                                                   |[0x8000047c]:slt a2, a0, a1<br> [0x80000480]:sw a2, 128(gp)<br>    |
|  51|[0x800032cc]<br>0x00000001|- rs2_val == 8<br> - rs1_val == -513<br>                                                                                                                                                                                                |[0x8000048c]:slt a2, a0, a1<br> [0x80000490]:sw a2, 132(gp)<br>    |
|  52|[0x800032d0]<br>0x00000001|- rs1_val == -2049<br>                                                                                                                                                                                                                  |[0x800004a0]:slt a2, a0, a1<br> [0x800004a4]:sw a2, 136(gp)<br>    |
|  53|[0x800032d4]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                                                                                                  |[0x800004b4]:slt a2, a0, a1<br> [0x800004b8]:sw a2, 140(gp)<br>    |
|  54|[0x800032d8]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                                                                                                  |[0x800004cc]:slt a2, a0, a1<br> [0x800004d0]:sw a2, 144(gp)<br>    |
|  55|[0x800032dc]<br>0x00000001|- rs2_val == 1073741824<br> - rs1_val == -16385<br>                                                                                                                                                                                     |[0x800004e0]:slt a2, a0, a1<br> [0x800004e4]:sw a2, 148(gp)<br>    |
|  56|[0x800032e0]<br>0x00000001|- rs1_val == -32769<br>                                                                                                                                                                                                                 |[0x800004f4]:slt a2, a0, a1<br> [0x800004f8]:sw a2, 152(gp)<br>    |
|  57|[0x800032e4]<br>0x00000001|- rs1_val == -65537<br>                                                                                                                                                                                                                 |[0x80000508]:slt a2, a0, a1<br> [0x8000050c]:sw a2, 156(gp)<br>    |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == -131073<br>                                                                                                                                                                                                                |[0x80000520]:slt a2, a0, a1<br> [0x80000524]:sw a2, 160(gp)<br>    |
|  59|[0x800032ec]<br>0x00000001|- rs2_val == -2049<br> - rs1_val == -262145<br>                                                                                                                                                                                         |[0x80000538]:slt a2, a0, a1<br> [0x8000053c]:sw a2, 164(gp)<br>    |
|  60|[0x800032f0]<br>0x00000001|- rs1_val == -524289<br>                                                                                                                                                                                                                |[0x8000054c]:slt a2, a0, a1<br> [0x80000550]:sw a2, 168(gp)<br>    |
|  61|[0x800032f4]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                                                                                                                               |[0x80000560]:slt a2, a0, a1<br> [0x80000564]:sw a2, 172(gp)<br>    |
|  62|[0x800032f8]<br>0x00000001|- rs2_val == -3<br> - rs1_val == -2097153<br>                                                                                                                                                                                           |[0x80000574]:slt a2, a0, a1<br> [0x80000578]:sw a2, 176(gp)<br>    |
|  63|[0x800032fc]<br>0x00000001|- rs2_val == 64<br> - rs1_val == -4194305<br>                                                                                                                                                                                           |[0x80000588]:slt a2, a0, a1<br> [0x8000058c]:sw a2, 180(gp)<br>    |
|  64|[0x80003300]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                                                                                               |[0x8000059c]:slt a2, a0, a1<br> [0x800005a0]:sw a2, 184(gp)<br>    |
|  65|[0x80003304]<br>0x00000001|- rs1_val == -16777217<br>                                                                                                                                                                                                              |[0x800005b4]:slt a2, a0, a1<br> [0x800005b8]:sw a2, 188(gp)<br>    |
|  66|[0x80003308]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                                                                                              |[0x800005cc]:slt a2, a0, a1<br> [0x800005d0]:sw a2, 192(gp)<br>    |
|  67|[0x8000330c]<br>0x00000001|- rs1_val == -67108865<br>                                                                                                                                                                                                              |[0x800005e0]:slt a2, a0, a1<br> [0x800005e4]:sw a2, 196(gp)<br>    |
|  68|[0x80003310]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                                                                                                                             |[0x800005f4]:slt a2, a0, a1<br> [0x800005f8]:sw a2, 200(gp)<br>    |
|  69|[0x80003314]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                                                                                                                             |[0x80000608]:slt a2, a0, a1<br> [0x8000060c]:sw a2, 204(gp)<br>    |
|  70|[0x80003318]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                                                                                                                            |[0x8000061c]:slt a2, a0, a1<br> [0x80000620]:sw a2, 208(gp)<br>    |
|  71|[0x8000331c]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                                                             |[0x80000634]:slt a2, a0, a1<br> [0x80000638]:sw a2, 212(gp)<br>    |
|  72|[0x80003320]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                                                                                                                            |[0x8000064c]:slt a2, a0, a1<br> [0x80000650]:sw a2, 216(gp)<br>    |
|  73|[0x80003324]<br>0x00000001|- rs2_val == 16<br>                                                                                                                                                                                                                     |[0x8000065c]:slt a2, a0, a1<br> [0x80000660]:sw a2, 220(gp)<br>    |
|  74|[0x80003328]<br>0x00000001|- rs2_val == 128<br>                                                                                                                                                                                                                    |[0x80000670]:slt a2, a0, a1<br> [0x80000674]:sw a2, 224(gp)<br>    |
|  75|[0x8000332c]<br>0x00000001|- rs2_val == 256<br>                                                                                                                                                                                                                    |[0x80000684]:slt a2, a0, a1<br> [0x80000688]:sw a2, 228(gp)<br>    |
|  76|[0x80003330]<br>0x00000001|- rs2_val == 512<br>                                                                                                                                                                                                                    |[0x80000694]:slt a2, a0, a1<br> [0x80000698]:sw a2, 232(gp)<br>    |
|  77|[0x80003334]<br>0x00000001|- rs2_val == 2048<br>                                                                                                                                                                                                                   |[0x800006ac]:slt a2, a0, a1<br> [0x800006b0]:sw a2, 236(gp)<br>    |
|  78|[0x80003338]<br>0x00000001|- rs2_val == 16384<br>                                                                                                                                                                                                                  |[0x800006c0]:slt a2, a0, a1<br> [0x800006c4]:sw a2, 240(gp)<br>    |
|  79|[0x8000333c]<br>0x00000001|- rs2_val == 32768<br>                                                                                                                                                                                                                  |[0x800006d0]:slt a2, a0, a1<br> [0x800006d4]:sw a2, 244(gp)<br>    |
|  80|[0x80003340]<br>0x00000001|- rs2_val == 131072<br>                                                                                                                                                                                                                 |[0x800006e0]:slt a2, a0, a1<br> [0x800006e4]:sw a2, 248(gp)<br>    |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                                 |[0x800006f0]:slt a2, a0, a1<br> [0x800006f4]:sw a2, 252(gp)<br>    |
|  82|[0x80003348]<br>0x00000001|- rs2_val == 1048576<br>                                                                                                                                                                                                                |[0x80000700]:slt a2, a0, a1<br> [0x80000704]:sw a2, 256(gp)<br>    |
|  83|[0x8000334c]<br>0x00000001|- rs2_val == 2097152<br>                                                                                                                                                                                                                |[0x80000710]:slt a2, a0, a1<br> [0x80000714]:sw a2, 260(gp)<br>    |
|  84|[0x80003350]<br>0x00000001|- rs2_val == 268435456<br>                                                                                                                                                                                                              |[0x80000720]:slt a2, a0, a1<br> [0x80000724]:sw a2, 264(gp)<br>    |
|  85|[0x80003354]<br>0x00000001|- rs2_val == 536870912<br>                                                                                                                                                                                                              |[0x80000730]:slt a2, a0, a1<br> [0x80000734]:sw a2, 268(gp)<br>    |
|  86|[0x80003358]<br>0x00000000|- rs2_val == -2<br>                                                                                                                                                                                                                     |[0x80000740]:slt a2, a0, a1<br> [0x80000744]:sw a2, 272(gp)<br>    |
|  87|[0x8000335c]<br>0x00000001|- rs2_val == -17<br>                                                                                                                                                                                                                    |[0x80000750]:slt a2, a0, a1<br> [0x80000754]:sw a2, 276(gp)<br>    |
|  88|[0x80003360]<br>0x00000000|- rs2_val == -33<br> - rs1_val == 1048576<br>                                                                                                                                                                                           |[0x80000760]:slt a2, a0, a1<br> [0x80000764]:sw a2, 280(gp)<br>    |
|  89|[0x80003364]<br>0x00000000|- rs2_val == -65<br>                                                                                                                                                                                                                    |[0x80000770]:slt a2, a0, a1<br> [0x80000774]:sw a2, 284(gp)<br>    |
|  90|[0x80003368]<br>0x00000001|- rs2_val == -129<br>                                                                                                                                                                                                                   |[0x80000780]:slt a2, a0, a1<br> [0x80000784]:sw a2, 288(gp)<br>    |
|  91|[0x8000336c]<br>0x00000000|- rs2_val == -257<br>                                                                                                                                                                                                                   |[0x80000790]:slt a2, a0, a1<br> [0x80000794]:sw a2, 292(gp)<br>    |
|  92|[0x80003370]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                                                                  |[0x800007a0]:slt a2, a0, a1<br> [0x800007a4]:sw a2, 296(gp)<br>    |
|  93|[0x80003374]<br>0x00000001|- rs2_val == -4097<br>                                                                                                                                                                                                                  |[0x800007b8]:slt a2, a0, a1<br> [0x800007bc]:sw a2, 300(gp)<br>    |
|  94|[0x80003378]<br>0x00000001|- rs2_val == -8193<br>                                                                                                                                                                                                                  |[0x800007d0]:slt a2, a0, a1<br> [0x800007d4]:sw a2, 304(gp)<br>    |
|  95|[0x8000337c]<br>0x00000000|- rs2_val == -32769<br>                                                                                                                                                                                                                 |[0x800007e4]:slt a2, a0, a1<br> [0x800007e8]:sw a2, 308(gp)<br>    |
|  96|[0x80003380]<br>0x00000000|- rs2_val == -65537<br>                                                                                                                                                                                                                 |[0x800007fc]:slt a2, a0, a1<br> [0x80000800]:sw a2, 312(gp)<br>    |
|  97|[0x80003384]<br>0x00000000|- rs2_val == -131073<br>                                                                                                                                                                                                                |[0x80000810]:slt a2, a0, a1<br> [0x80000814]:sw a2, 316(gp)<br>    |
|  98|[0x80003388]<br>0x00000000|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                                                                            |[0x80000824]:slt a2, a0, a1<br> [0x80000828]:sw a2, 320(gp)<br>    |
|  99|[0x80003390]<br>0x00000000|- rs2_val == -134217729<br>                                                                                                                                                                                                             |[0x80000848]:slt a2, a0, a1<br> [0x8000084c]:sw a2, 328(gp)<br>    |
