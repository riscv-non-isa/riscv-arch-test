
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008b0')]      |
| SIG_REGION                | [('0x80003204', '0x800033a8', '105 words')]      |
| COV_LABELS                | slt      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slt-01.S/slt-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 105      |
| STAT1                     | 102      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003d4]:slt a2, a0, a1
      [0x800003d8]:sw a2, 40(sp)
 -- Signature Address: 0x800032a4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:slt a2, a0, a1
      [0x80000880]:sw a2, 288(sp)
 -- Signature Address: 0x8000339c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val == 16777216




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a0]:slt a2, a0, a1
      [0x800008a4]:sw a2, 296(sp)
 -- Signature Address: 0x800033a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
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

|s.no|        signature         |                                                                                       coverpoints                                                                                        |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : slt<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -9<br> - rs1_val == -9<br> |[0x80000108]:slt a1, t0, t0<br> [0x8000010c]:sw a1, 0(a4)<br>      |
|   2|[0x80003208]<br>0x00000001|- rs1 : x27<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 8388608<br>                                                |[0x80000118]:slt a3, s11, a3<br> [0x8000011c]:sw a3, 4(a4)<br>     |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x19<br> - rs2 : x10<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                      |[0x8000012c]:slt s3, s3, a0<br> [0x80000130]:sw s3, 8(a4)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs2_val == -1431655766<br> - rs1_val == -1431655766<br>                                                              |[0x80000140]:slt sp, sp, sp<br> [0x80000144]:sw sp, 12(a4)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x11<br> - rs2 : x22<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                 |[0x80000154]:slt s2, a1, s6<br> [0x80000158]:sw s2, 16(a4)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x23<br> - rs2 : x28<br> - rd : x0<br> - rs2_val == 0<br> - rs1_val == 16777216<br>                                                                                                |[0x80000164]:slt zero, s7, t3<br> [0x80000168]:sw zero, 20(a4)<br> |
|   7|[0x8000321c]<br>0x00000001|- rs1 : x24<br> - rs2 : x18<br> - rd : x25<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                             |[0x80000178]:slt s9, s8, s2<br> [0x8000017c]:sw s9, 24(a4)<br>     |
|   8|[0x80003220]<br>0x00000001|- rs1 : x10<br> - rs2 : x29<br> - rd : x12<br> - rs2_val == 1<br> - rs1_val == -1073741825<br>                                                                                            |[0x8000018c]:slt a2, a0, t4<br> [0x80000190]:sw a2, 28(a4)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x31<br> - rs2 : x27<br> - rd : x6<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == 65536<br>                                                                                    |[0x8000019c]:slt t1, t6, s11<br> [0x800001a0]:sw t1, 32(a4)<br>    |
|  10|[0x80003228]<br>0x00000000|- rs1 : x22<br> - rs2 : x3<br> - rd : x9<br> - rs2_val == 1024<br> - rs1_val == 1024<br>                                                                                                  |[0x800001ac]:slt s1, s6, gp<br> [0x800001b0]:sw s1, 36(a4)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x4<br> - rs2 : x12<br> - rd : x23<br> - rs2_val == -65<br> - rs1_val == 2<br>                                                                                                     |[0x800001bc]:slt s7, tp, a2<br> [0x800001c0]:sw s7, 40(a4)<br>     |
|  12|[0x80003230]<br>0x00000000|- rs1 : x28<br> - rs2 : x4<br> - rd : x29<br> - rs2_val == -67108865<br> - rs1_val == 4<br>                                                                                               |[0x800001d0]:slt t4, t3, tp<br> [0x800001d4]:sw t4, 44(a4)<br>     |
|  13|[0x80003234]<br>0x00000001|- rs1 : x20<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 262144<br> - rs1_val == 8<br>                                                                                                   |[0x800001e0]:slt fp, s4, t2<br> [0x800001e4]:sw fp, 48(a4)<br>     |
|  14|[0x80003238]<br>0x00000001|- rs1 : x7<br> - rs2 : x30<br> - rd : x20<br> - rs2_val == 65536<br> - rs1_val == 16<br>                                                                                                  |[0x800001f0]:slt s4, t2, t5<br> [0x800001f4]:sw s4, 52(a4)<br>     |
|  15|[0x8000323c]<br>0x00000001|- rs1 : x8<br> - rs2 : x21<br> - rd : x1<br> - rs1_val == 32<br>                                                                                                                          |[0x80000204]:slt ra, fp, s5<br> [0x80000208]:sw ra, 56(a4)<br>     |
|  16|[0x80003240]<br>0x00000001|- rs1 : x17<br> - rs2 : x6<br> - rd : x16<br> - rs2_val == 16384<br> - rs1_val == 64<br>                                                                                                  |[0x80000214]:slt a6, a7, t1<br> [0x80000218]:sw a6, 60(a4)<br>     |
|  17|[0x80003244]<br>0x00000001|- rs1 : x12<br> - rs2 : x15<br> - rd : x30<br> - rs1_val == 128<br>                                                                                                                       |[0x80000230]:slt t5, a2, a5<br> [0x80000234]:sw t5, 0(sp)<br>      |
|  18|[0x80003248]<br>0x00000001|- rs1 : x14<br> - rs2 : x20<br> - rd : x10<br> - rs2_val == 134217728<br> - rs1_val == 256<br>                                                                                            |[0x80000240]:slt a0, a4, s4<br> [0x80000244]:sw a0, 4(sp)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x16<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == -32769<br> - rs1_val == 512<br>                                                                                               |[0x80000254]:slt s6, a6, s7<br> [0x80000258]:sw s6, 8(sp)<br>      |
|  20|[0x80003250]<br>0x00000000|- rs1 : x0<br> - rs2 : x26<br> - rd : x21<br> - rs2_val == -17<br>                                                                                                                        |[0x80000268]:slt s5, zero, s10<br> [0x8000026c]:sw s5, 12(sp)<br>  |
|  21|[0x80003254]<br>0x00000001|- rs1 : x1<br> - rs2 : x8<br> - rd : x31<br> - rs1_val == 4096<br>                                                                                                                        |[0x80000278]:slt t6, ra, fp<br> [0x8000027c]:sw t6, 16(sp)<br>     |
|  22|[0x80003258]<br>0x00000000|- rs1 : x29<br> - rs2 : x11<br> - rd : x26<br> - rs2_val == -129<br> - rs1_val == 8192<br>                                                                                                |[0x80000288]:slt s10, t4, a1<br> [0x8000028c]:sw s10, 20(sp)<br>   |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x9<br> - rs2 : x31<br> - rd : x17<br> - rs1_val == 16384<br>                                                                                                                      |[0x80000298]:slt a7, s1, t6<br> [0x8000029c]:sw a7, 24(sp)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1 : x30<br> - rs2 : x14<br> - rd : x3<br> - rs2_val == 32<br> - rs1_val == 32768<br>                                                                                                  |[0x800002a8]:slt gp, t5, a4<br> [0x800002ac]:sw gp, 28(sp)<br>     |
|  25|[0x80003264]<br>0x00000001|- rs1 : x25<br> - rs2 : x24<br> - rd : x15<br> - rs2_val == 268435456<br> - rs1_val == 131072<br>                                                                                         |[0x800002b8]:slt a5, s9, s8<br> [0x800002bc]:sw a5, 32(sp)<br>     |
|  26|[0x80003268]<br>0x00000000|- rs1 : x13<br> - rs2 : x19<br> - rd : x4<br> - rs2_val == -2<br> - rs1_val == 262144<br>                                                                                                 |[0x800002c8]:slt tp, a3, s3<br> [0x800002cc]:sw tp, 36(sp)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x18<br> - rs2 : x25<br> - rd : x7<br> - rs2_val == -8193<br> - rs1_val == 524288<br>                                                                                              |[0x800002dc]:slt t2, s2, s9<br> [0x800002e0]:sw t2, 40(sp)<br>     |
|  28|[0x80003270]<br>0x00000001|- rs1 : x15<br> - rs2 : x9<br> - rd : x14<br> - rs1_val == 1048576<br>                                                                                                                    |[0x800002ec]:slt a4, a5, s1<br> [0x800002f0]:sw a4, 44(sp)<br>     |
|  29|[0x80003274]<br>0x00000000|- rs1 : x21<br> - rs2 : x0<br> - rd : x28<br> - rs1_val == 2097152<br>                                                                                                                    |[0x80000300]:slt t3, s5, zero<br> [0x80000304]:sw t3, 48(sp)<br>   |
|  30|[0x80003278]<br>0x00000000|- rs1 : x6<br> - rs2 : x16<br> - rd : x5<br> - rs1_val == 4194304<br>                                                                                                                     |[0x80000314]:slt t0, t1, a6<br> [0x80000318]:sw t0, 52(sp)<br>     |
|  31|[0x8000327c]<br>0x00000001|- rs1 : x26<br> - rs2 : x1<br> - rd : x27<br> - rs2_val == 67108864<br> - rs1_val == 8388608<br>                                                                                          |[0x8000032c]:slt s11, s10, ra<br> [0x80000330]:sw s11, 0(sp)<br>   |
|  32|[0x80003280]<br>0x00000000|- rs1 : x3<br> - rs2 : x17<br> - rd : x24<br> - rs2_val == 32768<br> - rs1_val == 33554432<br>                                                                                            |[0x8000033c]:slt s8, gp, a7<br> [0x80000340]:sw s8, 4(sp)<br>      |
|  33|[0x80003284]<br>0x00000000|- rs2_val == -524289<br> - rs1_val == 67108864<br>                                                                                                                                        |[0x80000350]:slt a2, a0, a1<br> [0x80000354]:sw a2, 8(sp)<br>      |
|  34|[0x80003288]<br>0x00000000|- rs2_val == -33<br> - rs1_val == 134217728<br>                                                                                                                                           |[0x80000360]:slt a2, a0, a1<br> [0x80000364]:sw a2, 12(sp)<br>     |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                |[0x80000370]:slt a2, a0, a1<br> [0x80000374]:sw a2, 16(sp)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs2_val == 8192<br> - rs1_val == 536870912<br>                                                                                                                                          |[0x80000380]:slt a2, a0, a1<br> [0x80000384]:sw a2, 20(sp)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                               |[0x80000390]:slt a2, a0, a1<br> [0x80000394]:sw a2, 24(sp)<br>     |
|  38|[0x80003298]<br>0x00000001|- rs2_val == 128<br> - rs1_val == -2<br>                                                                                                                                                  |[0x800003a0]:slt a2, a0, a1<br> [0x800003a4]:sw a2, 28(sp)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs2_val == -2097153<br> - rs1_val == -3<br>                                                                                                                                             |[0x800003b4]:slt a2, a0, a1<br> [0x800003b8]:sw a2, 32(sp)<br>     |
|  40|[0x800032a0]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                                       |[0x800003c4]:slt a2, a0, a1<br> [0x800003c8]:sw a2, 36(sp)<br>     |
|  41|[0x800032a8]<br>0x00000001|- rs1_val == -17<br>                                                                                                                                                                      |[0x800003e4]:slt a2, a0, a1<br> [0x800003e8]:sw a2, 44(sp)<br>     |
|  42|[0x800032ac]<br>0x00000001|- rs2_val == 2097152<br> - rs1_val == -33<br>                                                                                                                                             |[0x800003f4]:slt a2, a0, a1<br> [0x800003f8]:sw a2, 48(sp)<br>     |
|  43|[0x800032b0]<br>0x00000000|- rs2_val == -4097<br> - rs1_val == -65<br>                                                                                                                                               |[0x80000408]:slt a2, a0, a1<br> [0x8000040c]:sw a2, 52(sp)<br>     |
|  44|[0x800032b4]<br>0x00000000|- rs2_val == -262145<br>                                                                                                                                                                  |[0x8000041c]:slt a2, a0, a1<br> [0x80000420]:sw a2, 56(sp)<br>     |
|  45|[0x800032b8]<br>0x00000000|- rs2_val == -1048577<br>                                                                                                                                                                 |[0x80000430]:slt a2, a0, a1<br> [0x80000434]:sw a2, 60(sp)<br>     |
|  46|[0x800032bc]<br>0x00000000|- rs2_val == -4194305<br>                                                                                                                                                                 |[0x80000444]:slt a2, a0, a1<br> [0x80000448]:sw a2, 64(sp)<br>     |
|  47|[0x800032c0]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                 |[0x80000458]:slt a2, a0, a1<br> [0x8000045c]:sw a2, 68(sp)<br>     |
|  48|[0x800032c4]<br>0x00000001|- rs2_val == -16777217<br>                                                                                                                                                                |[0x8000046c]:slt a2, a0, a1<br> [0x80000470]:sw a2, 72(sp)<br>     |
|  49|[0x800032c8]<br>0x00000000|- rs2_val == -33554433<br>                                                                                                                                                                |[0x80000480]:slt a2, a0, a1<br> [0x80000484]:sw a2, 76(sp)<br>     |
|  50|[0x800032cc]<br>0x00000000|- rs2_val == -134217729<br> - rs1_val == -33554433<br>                                                                                                                                    |[0x80000498]:slt a2, a0, a1<br> [0x8000049c]:sw a2, 80(sp)<br>     |
|  51|[0x800032d0]<br>0x00000000|- rs2_val == -268435457<br>                                                                                                                                                               |[0x800004ac]:slt a2, a0, a1<br> [0x800004b0]:sw a2, 84(sp)<br>     |
|  52|[0x800032d4]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                               |[0x800004c0]:slt a2, a0, a1<br> [0x800004c4]:sw a2, 88(sp)<br>     |
|  53|[0x800032d8]<br>0x00000000|- rs2_val == -1073741825<br>                                                                                                                                                              |[0x800004d8]:slt a2, a0, a1<br> [0x800004dc]:sw a2, 92(sp)<br>     |
|  54|[0x800032dc]<br>0x00000001|- rs2_val == 1431655765<br>                                                                                                                                                               |[0x800004ec]:slt a2, a0, a1<br> [0x800004f0]:sw a2, 96(sp)<br>     |
|  55|[0x800032e0]<br>0x00000001|- rs1_val == -129<br>                                                                                                                                                                     |[0x800004fc]:slt a2, a0, a1<br> [0x80000500]:sw a2, 100(sp)<br>    |
|  56|[0x800032e4]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                                                     |[0x8000050c]:slt a2, a0, a1<br> [0x80000510]:sw a2, 104(sp)<br>    |
|  57|[0x800032e8]<br>0x00000001|- rs1_val == -513<br>                                                                                                                                                                     |[0x8000051c]:slt a2, a0, a1<br> [0x80000520]:sw a2, 108(sp)<br>    |
|  58|[0x800032ec]<br>0x00000001|- rs1_val == -1025<br>                                                                                                                                                                    |[0x8000052c]:slt a2, a0, a1<br> [0x80000530]:sw a2, 112(sp)<br>    |
|  59|[0x800032f0]<br>0x00000000|- rs1_val == -2049<br>                                                                                                                                                                    |[0x80000544]:slt a2, a0, a1<br> [0x80000548]:sw a2, 116(sp)<br>    |
|  60|[0x800032f4]<br>0x00000001|- rs2_val == -2049<br> - rs1_val == -4097<br>                                                                                                                                             |[0x8000055c]:slt a2, a0, a1<br> [0x80000560]:sw a2, 120(sp)<br>    |
|  61|[0x800032f8]<br>0x00000000|- rs1_val == -8193<br>                                                                                                                                                                    |[0x80000574]:slt a2, a0, a1<br> [0x80000578]:sw a2, 124(sp)<br>    |
|  62|[0x800032fc]<br>0x00000001|- rs1_val == -16385<br>                                                                                                                                                                   |[0x80000588]:slt a2, a0, a1<br> [0x8000058c]:sw a2, 128(sp)<br>    |
|  63|[0x80003300]<br>0x00000000|- rs1_val == -32769<br>                                                                                                                                                                   |[0x800005a0]:slt a2, a0, a1<br> [0x800005a4]:sw a2, 132(sp)<br>    |
|  64|[0x80003304]<br>0x00000000|- rs1_val == -65537<br>                                                                                                                                                                   |[0x800005b4]:slt a2, a0, a1<br> [0x800005b8]:sw a2, 136(sp)<br>    |
|  65|[0x80003308]<br>0x00000001|- rs2_val == 33554432<br> - rs1_val == -131073<br>                                                                                                                                        |[0x800005c8]:slt a2, a0, a1<br> [0x800005cc]:sw a2, 140(sp)<br>    |
|  66|[0x8000330c]<br>0x00000001|- rs2_val == -257<br> - rs1_val == -262145<br>                                                                                                                                            |[0x800005dc]:slt a2, a0, a1<br> [0x800005e0]:sw a2, 144(sp)<br>    |
|  67|[0x80003310]<br>0x00000001|- rs1_val == -524289<br>                                                                                                                                                                  |[0x800005f0]:slt a2, a0, a1<br> [0x800005f4]:sw a2, 148(sp)<br>    |
|  68|[0x80003314]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                                                                                 |[0x80000604]:slt a2, a0, a1<br> [0x80000608]:sw a2, 152(sp)<br>    |
|  69|[0x80003318]<br>0x00000000|- rs1_val == -2097153<br>                                                                                                                                                                 |[0x8000061c]:slt a2, a0, a1<br> [0x80000620]:sw a2, 156(sp)<br>    |
|  70|[0x8000331c]<br>0x00000001|- rs1_val == -4194305<br>                                                                                                                                                                 |[0x80000630]:slt a2, a0, a1<br> [0x80000634]:sw a2, 160(sp)<br>    |
|  71|[0x80003320]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                                                 |[0x80000644]:slt a2, a0, a1<br> [0x80000648]:sw a2, 164(sp)<br>    |
|  72|[0x80003324]<br>0x00000001|- rs2_val == 4194304<br> - rs1_val == -16777217<br>                                                                                                                                       |[0x80000658]:slt a2, a0, a1<br> [0x8000065c]:sw a2, 168(sp)<br>    |
|  73|[0x80003328]<br>0x00000000|- rs1_val == -67108865<br>                                                                                                                                                                |[0x80000670]:slt a2, a0, a1<br> [0x80000674]:sw a2, 172(sp)<br>    |
|  74|[0x8000332c]<br>0x00000001|- rs1_val == -134217729<br>                                                                                                                                                               |[0x80000684]:slt a2, a0, a1<br> [0x80000688]:sw a2, 176(sp)<br>    |
|  75|[0x80003330]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                                                                               |[0x80000698]:slt a2, a0, a1<br> [0x8000069c]:sw a2, 180(sp)<br>    |
|  76|[0x80003334]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                                                                               |[0x800006ac]:slt a2, a0, a1<br> [0x800006b0]:sw a2, 184(sp)<br>    |
|  77|[0x80003338]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                                               |[0x800006c4]:slt a2, a0, a1<br> [0x800006c8]:sw a2, 188(sp)<br>    |
|  78|[0x8000333c]<br>0x00000001|- rs2_val == 2<br>                                                                                                                                                                        |[0x800006d8]:slt a2, a0, a1<br> [0x800006dc]:sw a2, 192(sp)<br>    |
|  79|[0x80003340]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                        |[0x800006e8]:slt a2, a0, a1<br> [0x800006ec]:sw a2, 196(sp)<br>    |
|  80|[0x80003344]<br>0x00000001|- rs2_val == 8<br>                                                                                                                                                                        |[0x800006f8]:slt a2, a0, a1<br> [0x800006fc]:sw a2, 200(sp)<br>    |
|  81|[0x80003348]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                                       |[0x80000708]:slt a2, a0, a1<br> [0x8000070c]:sw a2, 204(sp)<br>    |
|  82|[0x8000334c]<br>0x00000001|- rs2_val == 64<br>                                                                                                                                                                       |[0x80000718]:slt a2, a0, a1<br> [0x8000071c]:sw a2, 208(sp)<br>    |
|  83|[0x80003350]<br>0x00000001|- rs2_val == 256<br>                                                                                                                                                                      |[0x80000728]:slt a2, a0, a1<br> [0x8000072c]:sw a2, 212(sp)<br>    |
|  84|[0x80003354]<br>0x00000001|- rs2_val == 512<br>                                                                                                                                                                      |[0x8000073c]:slt a2, a0, a1<br> [0x80000740]:sw a2, 216(sp)<br>    |
|  85|[0x80003358]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                   |[0x8000074c]:slt a2, a0, a1<br> [0x80000750]:sw a2, 220(sp)<br>    |
|  86|[0x8000335c]<br>0x00000001|- rs2_val == 1048576<br>                                                                                                                                                                  |[0x8000075c]:slt a2, a0, a1<br> [0x80000760]:sw a2, 224(sp)<br>    |
|  87|[0x80003360]<br>0x00000001|- rs2_val == 16777216<br>                                                                                                                                                                 |[0x80000770]:slt a2, a0, a1<br> [0x80000774]:sw a2, 228(sp)<br>    |
|  88|[0x80003364]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                                                |[0x80000784]:slt a2, a0, a1<br> [0x80000788]:sw a2, 232(sp)<br>    |
|  89|[0x80003368]<br>0x00000001|- rs2_val == 1073741824<br>                                                                                                                                                               |[0x80000794]:slt a2, a0, a1<br> [0x80000798]:sw a2, 236(sp)<br>    |
|  90|[0x8000336c]<br>0x00000000|- rs2_val == -3<br>                                                                                                                                                                       |[0x800007a4]:slt a2, a0, a1<br> [0x800007a8]:sw a2, 240(sp)<br>    |
|  91|[0x80003370]<br>0x00000000|- rs2_val == -131073<br>                                                                                                                                                                  |[0x800007b8]:slt a2, a0, a1<br> [0x800007bc]:sw a2, 244(sp)<br>    |
|  92|[0x80003374]<br>0x00000001|- rs2_val == -5<br>                                                                                                                                                                       |[0x800007c8]:slt a2, a0, a1<br> [0x800007cc]:sw a2, 248(sp)<br>    |
|  93|[0x80003378]<br>0x00000000|- rs2_val == -513<br>                                                                                                                                                                     |[0x800007d8]:slt a2, a0, a1<br> [0x800007dc]:sw a2, 252(sp)<br>    |
|  94|[0x8000337c]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                    |[0x800007e8]:slt a2, a0, a1<br> [0x800007ec]:sw a2, 256(sp)<br>    |
|  95|[0x80003380]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                     |[0x800007fc]:slt a2, a0, a1<br> [0x80000800]:sw a2, 260(sp)<br>    |
|  96|[0x80003384]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                                     |[0x8000080c]:slt a2, a0, a1<br> [0x80000810]:sw a2, 264(sp)<br>    |
|  97|[0x80003388]<br>0x00000001|- rs2_val == -16385<br>                                                                                                                                                                   |[0x80000824]:slt a2, a0, a1<br> [0x80000828]:sw a2, 268(sp)<br>    |
|  98|[0x8000338c]<br>0x00000000|- rs2_val == -65537<br>                                                                                                                                                                   |[0x80000838]:slt a2, a0, a1<br> [0x8000083c]:sw a2, 272(sp)<br>    |
|  99|[0x80003390]<br>0x00000001|- rs2_val == 131072<br>                                                                                                                                                                   |[0x80000848]:slt a2, a0, a1<br> [0x8000084c]:sw a2, 276(sp)<br>    |
| 100|[0x80003394]<br>0x00000001|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                              |[0x80000858]:slt a2, a0, a1<br> [0x8000085c]:sw a2, 280(sp)<br>    |
| 101|[0x80003398]<br>0x00000000|- rs1_val == 1<br>                                                                                                                                                                        |[0x8000086c]:slt a2, a0, a1<br> [0x80000870]:sw a2, 284(sp)<br>    |
| 102|[0x800033a0]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                                                                     |[0x80000890]:slt a2, a0, a1<br> [0x80000894]:sw a2, 292(sp)<br>    |
