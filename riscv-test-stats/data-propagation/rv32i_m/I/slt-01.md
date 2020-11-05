
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80003204', '0x800033a0', '103 words')]      |
| COV_LABELS                | slt      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slt-01.S/slt-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 100      |
| STAT1                     | 98      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:slt a2, a0, a1
      [0x80000834]:sw a2, 308(a7)
 -- Signature Address: 0x80003390 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == 67108864




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:slt a2, a0, a1
      [0x80000854]:sw a2, 316(a7)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -17
      - rs1_val == 2






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

|s.no|        signature         |                                                                                                           coverpoints                                                                                                            |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : slt<br> - rs1 : x7<br> - rs2 : x7<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 2048<br> - rs1_val == 2048<br>                                     |[0x8000010c]:slt a5, t2, t2<br> [0x80000110]:sw a5, 0(s3)<br>      |
|   2|[0x80003214]<br>0x00000001|- rs1 : x0<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 67108864<br>                                                                                        |[0x8000011c]:slt t6, zero, t6<br> [0x80000120]:sw t6, 4(s3)<br>    |
|   3|[0x80003218]<br>0x00000000|- rs1 : x17<br> - rs2 : x12<br> - rd : x17<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -4194305<br> - rs1_val == 2147483647<br>                                    |[0x80000134]:slt a7, a7, a2<br> [0x80000138]:sw a7, 8(s3)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x1<br> - rs2 : x24<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br>                                                                                                                    |[0x80000144]:slt a2, ra, s8<br> [0x80000148]:sw a2, 12(s3)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x80000154]:slt t3, t3, t3<br> [0x80000158]:sw t3, 16(s3)<br>     |
|   6|[0x80003224]<br>0x00000001|- rs1 : x22<br> - rs2 : x14<br> - rd : x8<br> - rs2_val == 0<br> - rs1_val == -32769<br>                                                                                                                                          |[0x80000168]:slt fp, s6, a4<br> [0x8000016c]:sw fp, 20(s3)<br>     |
|   7|[0x80003228]<br>0x00000001|- rs1 : x15<br> - rs2 : x18<br> - rd : x2<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -131073<br>                                                             |[0x80000180]:slt sp, a5, s2<br> [0x80000184]:sw sp, 24(s3)<br>     |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x12<br> - rs2 : x6<br> - rd : x9<br> - rs2_val == 1<br> - rs1_val == -262145<br>                                                                                                                                          |[0x80000194]:slt s1, a2, t1<br> [0x80000198]:sw s1, 28(s3)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x26<br> - rs2 : x29<br> - rd : x30<br> - rs1_val == 1073741824<br>                                                                                                                                                        |[0x800001a4]:slt t5, s10, t4<br> [0x800001a8]:sw t5, 32(s3)<br>    |
|  10|[0x80003234]<br>0x00000001|- rs1 : x18<br> - rs2 : x30<br> - rd : x27<br> - rs2_val == -131073<br> - rs1_val == -536870913<br>                                                                                                                               |[0x800001bc]:slt s11, s2, t5<br> [0x800001c0]:sw s11, 36(s3)<br>   |
|  11|[0x80003238]<br>0x00000000|- rs1 : x30<br> - rs2 : x16<br> - rd : x29<br> - rs1_val == -4194305<br>                                                                                                                                                          |[0x800001d4]:slt t4, t5, a6<br> [0x800001d8]:sw t4, 40(s3)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x4<br> - rs2 : x17<br> - rd : x0<br> - rs2_val == -17<br> - rs1_val == 2<br>                                                                                                                                              |[0x800001e4]:slt zero, tp, a7<br> [0x800001e8]:sw zero, 44(s3)<br> |
|  13|[0x80003240]<br>0x00000000|- rs1 : x29<br> - rs2 : x20<br> - rd : x24<br> - rs2_val == -2097153<br> - rs1_val == 4<br>                                                                                                                                       |[0x800001f8]:slt s8, t4, s4<br> [0x800001fc]:sw s8, 48(s3)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x31<br> - rs2 : x5<br> - rd : x26<br> - rs2_val == -16385<br> - rs1_val == 8<br>                                                                                                                                          |[0x8000020c]:slt s10, t6, t0<br> [0x80000210]:sw s10, 52(s3)<br>   |
|  15|[0x80003248]<br>0x00000000|- rs1 : x23<br> - rs2 : x0<br> - rd : x16<br> - rs1_val == 16<br>                                                                                                                                                                 |[0x8000021c]:slt a6, s7, zero<br> [0x80000220]:sw a6, 56(s3)<br>   |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x13<br> - rs2 : x11<br> - rd : x22<br> - rs2_val == -524289<br> - rs1_val == 32<br>                                                                                                                                       |[0x80000230]:slt s6, a3, a1<br> [0x80000234]:sw s6, 60(s3)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x24<br> - rs2 : x26<br> - rd : x6<br> - rs1_val == 64<br>                                                                                                                                                                 |[0x80000244]:slt t1, s8, s10<br> [0x80000248]:sw t1, 64(s3)<br>    |
|  18|[0x80003254]<br>0x00000000|- rs1 : x14<br> - rs2 : x9<br> - rd : x3<br> - rs2_val == -262145<br> - rs1_val == 256<br>                                                                                                                                        |[0x80000258]:slt gp, a4, s1<br> [0x8000025c]:sw gp, 68(s3)<br>     |
|  19|[0x80003258]<br>0x00000000|- rs1 : x25<br> - rs2 : x10<br> - rd : x21<br> - rs2_val == -2<br> - rs1_val == 512<br>                                                                                                                                           |[0x80000268]:slt s5, s9, a0<br> [0x8000026c]:sw s5, 72(s3)<br>     |
|  20|[0x8000325c]<br>0x00000001|- rs1 : x27<br> - rs2 : x22<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                                                              |[0x80000280]:slt s3, s11, s6<br> [0x80000284]:sw s3, 0(a7)<br>     |
|  21|[0x80003260]<br>0x00000000|- rs1 : x16<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 4<br>                                                                                                                                                                   |[0x80000294]:slt tp, a6, gp<br> [0x80000298]:sw tp, 4(a7)<br>      |
|  22|[0x80003264]<br>0x00000000|- rs1 : x9<br> - rs2 : x23<br> - rd : x1<br> - rs2_val == -8193<br> - rs1_val == 4096<br>                                                                                                                                         |[0x800002a8]:slt ra, s1, s7<br> [0x800002ac]:sw ra, 8(a7)<br>      |
|  23|[0x80003268]<br>0x00000000|- rs1 : x5<br> - rs2 : x8<br> - rd : x23<br> - rs2_val == -2049<br> - rs1_val == 8192<br>                                                                                                                                         |[0x800002bc]:slt s7, t0, fp<br> [0x800002c0]:sw s7, 12(a7)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x3<br> - rs2 : x27<br> - rd : x14<br> - rs1_val == 16384<br>                                                                                                                                                              |[0x800002d0]:slt a4, gp, s11<br> [0x800002d4]:sw a4, 16(a7)<br>    |
|  25|[0x80003270]<br>0x00000000|- rs1 : x20<br> - rs2 : x19<br> - rd : x7<br> - rs2_val == 32768<br> - rs1_val == 32768<br>                                                                                                                                       |[0x800002e0]:slt t2, s4, s3<br> [0x800002e4]:sw t2, 20(a7)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x8<br> - rs2 : x4<br> - rd : x20<br> - rs2_val == 32<br> - rs1_val == 65536<br>                                                                                                                                           |[0x800002f0]:slt s4, fp, tp<br> [0x800002f4]:sw s4, 24(a7)<br>     |
|  27|[0x80003278]<br>0x00000000|- rs1 : x19<br> - rs2 : x25<br> - rd : x18<br> - rs1_val == 131072<br>                                                                                                                                                            |[0x80000304]:slt s2, s3, s9<br> [0x80000308]:sw s2, 28(a7)<br>     |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x2<br> - rs2 : x21<br> - rd : x11<br> - rs2_val == 16384<br> - rs1_val == 262144<br>                                                                                                                                      |[0x80000314]:slt a1, sp, s5<br> [0x80000318]:sw a1, 32(a7)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x10<br> - rs2 : x2<br> - rd : x5<br> - rs1_val == 524288<br>                                                                                                                                                              |[0x80000324]:slt t0, a0, sp<br> [0x80000328]:sw t0, 36(a7)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x11<br> - rs2 : x15<br> - rd : x25<br> - rs1_val == 1048576<br>                                                                                                                                                           |[0x80000334]:slt s9, a1, a5<br> [0x80000338]:sw s9, 40(a7)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x6<br> - rs2 : x13<br> - rd : x10<br> - rs1_val == 2097152<br>                                                                                                                                                            |[0x80000344]:slt a0, t1, a3<br> [0x80000348]:sw a0, 44(a7)<br>     |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x21<br> - rs2 : x1<br> - rd : x13<br> - rs2_val == -257<br> - rs1_val == 4194304<br>                                                                                                                                      |[0x80000354]:slt a3, s5, ra<br> [0x80000358]:sw a3, 48(a7)<br>     |
|  33|[0x80003290]<br>0x00000000|- rs2_val == 512<br> - rs1_val == 8388608<br>                                                                                                                                                                                     |[0x80000364]:slt a2, a0, a1<br> [0x80000368]:sw a2, 52(a7)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                                                                                                         |[0x80000378]:slt a2, a0, a1<br> [0x8000037c]:sw a2, 56(a7)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs2_val == 2<br> - rs1_val == 33554432<br>                                                                                                                                                                                      |[0x80000388]:slt a2, a0, a1<br> [0x8000038c]:sw a2, 60(a7)<br>     |
|  36|[0x8000329c]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                         |[0x80000398]:slt a2, a0, a1<br> [0x8000039c]:sw a2, 64(a7)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs2_val == 256<br> - rs1_val == 134217728<br>                                                                                                                                                                                   |[0x800003a8]:slt a2, a0, a1<br> [0x800003ac]:sw a2, 68(a7)<br>     |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                                        |[0x800003bc]:slt a2, a0, a1<br> [0x800003c0]:sw a2, 72(a7)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                                                        |[0x800003d0]:slt a2, a0, a1<br> [0x800003d4]:sw a2, 76(a7)<br>     |
|  40|[0x800032ac]<br>0x00000000|- rs2_val == -32769<br> - rs1_val == -2<br>                                                                                                                                                                                       |[0x800003e4]:slt a2, a0, a1<br> [0x800003e8]:sw a2, 80(a7)<br>     |
|  41|[0x800032b0]<br>0x00000001|- rs1_val == -3<br>                                                                                                                                                                                                               |[0x800003f4]:slt a2, a0, a1<br> [0x800003f8]:sw a2, 84(a7)<br>     |
|  42|[0x800032b4]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                                                                               |[0x80000404]:slt a2, a0, a1<br> [0x80000408]:sw a2, 88(a7)<br>     |
|  43|[0x800032b8]<br>0x00000001|- rs2_val == -5<br> - rs1_val == -9<br>                                                                                                                                                                                           |[0x80000414]:slt a2, a0, a1<br> [0x80000418]:sw a2, 92(a7)<br>     |
|  44|[0x800032bc]<br>0x00000000|- rs2_val == -67108865<br> - rs1_val == -17<br>                                                                                                                                                                                   |[0x80000428]:slt a2, a0, a1<br> [0x8000042c]:sw a2, 96(a7)<br>     |
|  45|[0x800032c0]<br>0x00000000|- rs2_val == -1048577<br>                                                                                                                                                                                                         |[0x8000043c]:slt a2, a0, a1<br> [0x80000440]:sw a2, 100(a7)<br>    |
|  46|[0x800032c4]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                                                         |[0x80000454]:slt a2, a0, a1<br> [0x80000458]:sw a2, 104(a7)<br>    |
|  47|[0x800032c8]<br>0x00000000|- rs2_val == -16777217<br> - rs1_val == -2049<br>                                                                                                                                                                                 |[0x8000046c]:slt a2, a0, a1<br> [0x80000470]:sw a2, 108(a7)<br>    |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -33554433<br>                                                                                                                                                                                                        |[0x80000484]:slt a2, a0, a1<br> [0x80000488]:sw a2, 112(a7)<br>    |
|  49|[0x800032d0]<br>0x00000000|- rs2_val == -134217729<br>                                                                                                                                                                                                       |[0x80000498]:slt a2, a0, a1<br> [0x8000049c]:sw a2, 116(a7)<br>    |
|  50|[0x800032d4]<br>0x00000000|- rs2_val == -268435457<br>                                                                                                                                                                                                       |[0x800004b0]:slt a2, a0, a1<br> [0x800004b4]:sw a2, 120(a7)<br>    |
|  51|[0x800032d8]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                                                                       |[0x800004c4]:slt a2, a0, a1<br> [0x800004c8]:sw a2, 124(a7)<br>    |
|  52|[0x800032dc]<br>0x00000000|- rs2_val == -1073741825<br>                                                                                                                                                                                                      |[0x800004d8]:slt a2, a0, a1<br> [0x800004dc]:sw a2, 128(a7)<br>    |
|  53|[0x800032e0]<br>0x00000001|- rs2_val == 1431655765<br>                                                                                                                                                                                                       |[0x800004ec]:slt a2, a0, a1<br> [0x800004f0]:sw a2, 132(a7)<br>    |
|  54|[0x800032e4]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                                                      |[0x80000500]:slt a2, a0, a1<br> [0x80000504]:sw a2, 136(a7)<br>    |
|  55|[0x800032e8]<br>0x00000001|- rs2_val == 16777216<br> - rs1_val == -33<br>                                                                                                                                                                                    |[0x80000510]:slt a2, a0, a1<br> [0x80000514]:sw a2, 140(a7)<br>    |
|  56|[0x800032ec]<br>0x00000000|- rs1_val == -65<br>                                                                                                                                                                                                              |[0x80000524]:slt a2, a0, a1<br> [0x80000528]:sw a2, 144(a7)<br>    |
|  57|[0x800032f0]<br>0x00000001|- rs2_val == 4096<br> - rs1_val == -129<br>                                                                                                                                                                                       |[0x80000534]:slt a2, a0, a1<br> [0x80000538]:sw a2, 148(a7)<br>    |
|  58|[0x800032f4]<br>0x00000001|- rs2_val == 4194304<br> - rs1_val == -257<br>                                                                                                                                                                                    |[0x80000544]:slt a2, a0, a1<br> [0x80000548]:sw a2, 152(a7)<br>    |
|  59|[0x800032f8]<br>0x00000000|- rs2_val == -1025<br> - rs1_val == -513<br>                                                                                                                                                                                      |[0x80000554]:slt a2, a0, a1<br> [0x80000558]:sw a2, 156(a7)<br>    |
|  60|[0x800032fc]<br>0x00000001|- rs1_val == -1025<br>                                                                                                                                                                                                            |[0x80000564]:slt a2, a0, a1<br> [0x80000568]:sw a2, 160(a7)<br>    |
|  61|[0x80003300]<br>0x00000000|- rs1_val == -4097<br>                                                                                                                                                                                                            |[0x8000057c]:slt a2, a0, a1<br> [0x80000580]:sw a2, 164(a7)<br>    |
|  62|[0x80003304]<br>0x00000000|- rs1_val == -8193<br>                                                                                                                                                                                                            |[0x80000590]:slt a2, a0, a1<br> [0x80000594]:sw a2, 168(a7)<br>    |
|  63|[0x80003308]<br>0x00000001|- rs2_val == 1024<br> - rs1_val == -16385<br>                                                                                                                                                                                     |[0x800005a4]:slt a2, a0, a1<br> [0x800005a8]:sw a2, 172(a7)<br>    |
|  64|[0x8000330c]<br>0x00000001|- rs2_val == 262144<br> - rs1_val == -65537<br>                                                                                                                                                                                   |[0x800005b8]:slt a2, a0, a1<br> [0x800005bc]:sw a2, 176(a7)<br>    |
|  65|[0x80003310]<br>0x00000001|- rs2_val == -33<br> - rs1_val == -524289<br>                                                                                                                                                                                     |[0x800005cc]:slt a2, a0, a1<br> [0x800005d0]:sw a2, 180(a7)<br>    |
|  66|[0x80003314]<br>0x00000001|- rs2_val == 8<br> - rs1_val == -1048577<br>                                                                                                                                                                                      |[0x800005e0]:slt a2, a0, a1<br> [0x800005e4]:sw a2, 184(a7)<br>    |
|  67|[0x80003318]<br>0x00000001|- rs1_val == -2097153<br>                                                                                                                                                                                                         |[0x800005f4]:slt a2, a0, a1<br> [0x800005f8]:sw a2, 188(a7)<br>    |
|  68|[0x8000331c]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                                                                                         |[0x80000608]:slt a2, a0, a1<br> [0x8000060c]:sw a2, 192(a7)<br>    |
|  69|[0x80003320]<br>0x00000001|- rs1_val == -16777217<br>                                                                                                                                                                                                        |[0x8000061c]:slt a2, a0, a1<br> [0x80000620]:sw a2, 196(a7)<br>    |
|  70|[0x80003324]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                                                                                        |[0x80000634]:slt a2, a0, a1<br> [0x80000638]:sw a2, 200(a7)<br>    |
|  71|[0x80003328]<br>0x00000001|- rs2_val == 1073741824<br> - rs1_val == -67108865<br>                                                                                                                                                                            |[0x80000648]:slt a2, a0, a1<br> [0x8000064c]:sw a2, 204(a7)<br>    |
|  72|[0x8000332c]<br>0x00000001|- rs1_val == -134217729<br>                                                                                                                                                                                                       |[0x8000065c]:slt a2, a0, a1<br> [0x80000660]:sw a2, 208(a7)<br>    |
|  73|[0x80003330]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                                                                                                                       |[0x80000674]:slt a2, a0, a1<br> [0x80000678]:sw a2, 212(a7)<br>    |
|  74|[0x80003334]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                                                                                                                      |[0x8000068c]:slt a2, a0, a1<br> [0x80000690]:sw a2, 216(a7)<br>    |
|  75|[0x80003338]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                                                       |[0x800006a0]:slt a2, a0, a1<br> [0x800006a4]:sw a2, 220(a7)<br>    |
|  76|[0x8000333c]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                                                                                                                      |[0x800006b8]:slt a2, a0, a1<br> [0x800006bc]:sw a2, 224(a7)<br>    |
|  77|[0x80003340]<br>0x00000001|- rs2_val == 16<br>                                                                                                                                                                                                               |[0x800006cc]:slt a2, a0, a1<br> [0x800006d0]:sw a2, 228(a7)<br>    |
|  78|[0x80003344]<br>0x00000001|- rs2_val == 128<br>                                                                                                                                                                                                              |[0x800006dc]:slt a2, a0, a1<br> [0x800006e0]:sw a2, 232(a7)<br>    |
|  79|[0x80003348]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                                             |[0x800006f0]:slt a2, a0, a1<br> [0x800006f4]:sw a2, 236(a7)<br>    |
|  80|[0x8000334c]<br>0x00000001|- rs2_val == 65536<br>                                                                                                                                                                                                            |[0x80000704]:slt a2, a0, a1<br> [0x80000708]:sw a2, 240(a7)<br>    |
|  81|[0x80003350]<br>0x00000001|- rs2_val == 131072<br>                                                                                                                                                                                                           |[0x80000718]:slt a2, a0, a1<br> [0x8000071c]:sw a2, 244(a7)<br>    |
|  82|[0x80003354]<br>0x00000001|- rs2_val == 524288<br>                                                                                                                                                                                                           |[0x80000728]:slt a2, a0, a1<br> [0x8000072c]:sw a2, 248(a7)<br>    |
|  83|[0x80003358]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                                                          |[0x80000738]:slt a2, a0, a1<br> [0x8000073c]:sw a2, 252(a7)<br>    |
|  84|[0x8000335c]<br>0x00000001|- rs2_val == 2097152<br>                                                                                                                                                                                                          |[0x80000748]:slt a2, a0, a1<br> [0x8000074c]:sw a2, 256(a7)<br>    |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 8388608<br>                                                                                                                                                                                                          |[0x80000758]:slt a2, a0, a1<br> [0x8000075c]:sw a2, 260(a7)<br>    |
|  86|[0x80003364]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                                                                         |[0x80000768]:slt a2, a0, a1<br> [0x8000076c]:sw a2, 264(a7)<br>    |
|  87|[0x80003368]<br>0x00000001|- rs2_val == 134217728<br>                                                                                                                                                                                                        |[0x80000778]:slt a2, a0, a1<br> [0x8000077c]:sw a2, 268(a7)<br>    |
|  88|[0x8000336c]<br>0x00000001|- rs2_val == 268435456<br>                                                                                                                                                                                                        |[0x80000788]:slt a2, a0, a1<br> [0x8000078c]:sw a2, 272(a7)<br>    |
|  89|[0x80003370]<br>0x00000001|- rs2_val == 536870912<br>                                                                                                                                                                                                        |[0x80000798]:slt a2, a0, a1<br> [0x8000079c]:sw a2, 276(a7)<br>    |
|  90|[0x80003374]<br>0x00000000|- rs2_val == -9<br>                                                                                                                                                                                                               |[0x800007a8]:slt a2, a0, a1<br> [0x800007ac]:sw a2, 280(a7)<br>    |
|  91|[0x80003378]<br>0x00000000|- rs2_val == -65<br>                                                                                                                                                                                                              |[0x800007b8]:slt a2, a0, a1<br> [0x800007bc]:sw a2, 284(a7)<br>    |
|  92|[0x8000337c]<br>0x00000001|- rs2_val == -129<br>                                                                                                                                                                                                             |[0x800007cc]:slt a2, a0, a1<br> [0x800007d0]:sw a2, 288(a7)<br>    |
|  93|[0x80003380]<br>0x00000001|- rs2_val == -4097<br>                                                                                                                                                                                                            |[0x800007e4]:slt a2, a0, a1<br> [0x800007e8]:sw a2, 292(a7)<br>    |
|  94|[0x80003384]<br>0x00000001|- rs2_val == -513<br>                                                                                                                                                                                                             |[0x800007f8]:slt a2, a0, a1<br> [0x800007fc]:sw a2, 296(a7)<br>    |
|  95|[0x80003388]<br>0x00000000|- rs2_val == -65537<br>                                                                                                                                                                                                           |[0x80000810]:slt a2, a0, a1<br> [0x80000814]:sw a2, 300(a7)<br>    |
|  96|[0x8000338c]<br>0x00000000|- rs2_val == -3<br>                                                                                                                                                                                                               |[0x80000820]:slt a2, a0, a1<br> [0x80000824]:sw a2, 304(a7)<br>    |
|  97|[0x80003394]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                                                                              |[0x80000840]:slt a2, a0, a1<br> [0x80000844]:sw a2, 312(a7)<br>    |
|  98|[0x8000339c]<br>0x00000001|- rs2_val == 64<br>                                                                                                                                                                                                               |[0x80000860]:slt a2, a0, a1<br> [0x80000864]:sw a2, 320(a7)<br>    |
