
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000850')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | rem      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/rem-01.S/rem-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 99      |
| STAT1                     | 95      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005dc]:rem a2, a0, a1
      [0x800005e0]:sw a2, 196(tp)
 -- Signature Address: 0x80003314 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1024
      - rs1_val == -4194305




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:rem a2, a0, a1
      [0x80000820]:sw a2, 320(tp)
 -- Signature Address: 0x80003390 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == -4194305




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000082c]:rem a2, a0, a1
      [0x80000830]:sw a2, 324(tp)
 -- Signature Address: 0x80003394 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 16
      - rs1_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000083c]:rem a2, a0, a1
      [0x80000840]:sw a2, 328(tp)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val == rs2_val
      - rs2_val == 8192
      - rs1_val == 8192






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

|s.no|        signature         |                                                                                                     coverpoints                                                                                                     |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : rem<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -32769<br> - rs1_val == -32769<br>                  |[0x8000010c]:rem a6, s2, s2<br> [0x80000110]:sw a6, 0(gp)<br>       |
|   2|[0x80003214]<br>0x00000000|- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs2_val == -4194305<br> - rs1_val == -4194305<br>                                                                                            |[0x80000120]:rem a5, a5, a5<br> [0x80000124]:sw a5, 4(gp)<br>       |
|   3|[0x80003218]<br>0x0007F000|- rs1 : x2<br> - rs2 : x10<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -524289<br> - rs1_val == 2147483647<br> |[0x80000138]:rem sp, sp, a0<br> [0x8000013c]:sw sp, 8(gp)<br>       |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x7<br> - rs2 : x4<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br>                                                                                                        |[0x80000148]:rem s10, t2, tp<br> [0x8000014c]:sw s10, 12(gp)<br>    |
|   5|[0x80003220]<br>0xFFFFFFFB|- rs1 : x4<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -5<br>                                                                  |[0x80000158]:rem t2, tp, t2<br> [0x8000015c]:sw t2, 16(gp)<br>      |
|   6|[0x80003224]<br>0x40000000|- rs1 : x30<br> - rs2 : x11<br> - rd : x18<br> - rs2_val == 0<br> - rs1_val == 1073741824<br>                                                                                                                        |[0x80000168]:rem s2, t5, a1<br> [0x8000016c]:sw s2, 20(gp)<br>      |
|   7|[0x80003228]<br>0xFFFFFBFF|- rs1 : x13<br> - rs2 : x20<br> - rd : x4<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -1025<br>                                                  |[0x8000017c]:rem tp, a3, s4<br> [0x80000180]:sw tp, 24(gp)<br>      |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x24<br> - rs2 : x28<br> - rd : x8<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == 2097152<br>                                                                                          |[0x8000018c]:rem fp, s8, t3<br> [0x80000190]:sw fp, 28(gp)<br>      |
|   9|[0x80003230]<br>0x00000000|- rs1 : x23<br> - rs2 : x12<br> - rd : x20<br>                                                                                                                                                                       |[0x8000019c]:rem s4, s7, a2<br> [0x800001a0]:sw s4, 32(gp)<br>      |
|  10|[0x80003234]<br>0x00000002|- rs1 : x26<br> - rs2 : x30<br> - rd : x12<br> - rs2_val == 1024<br> - rs1_val == 2<br>                                                                                                                              |[0x800001ac]:rem a2, s10, t5<br> [0x800001b0]:sw a2, 36(gp)<br>     |
|  11|[0x80003238]<br>0x00000004|- rs1 : x20<br> - rs2 : x29<br> - rd : x31<br> - rs2_val == -67108865<br> - rs1_val == 4<br>                                                                                                                         |[0x800001c0]:rem t6, s4, t4<br> [0x800001c4]:sw t6, 40(gp)<br>      |
|  12|[0x8000323c]<br>0x00000008|- rs1 : x19<br> - rs2 : x5<br> - rd : x24<br> - rs2_val == -1048577<br> - rs1_val == 8<br>                                                                                                                           |[0x800001d4]:rem s8, s3, t0<br> [0x800001d8]:sw s8, 44(gp)<br>      |
|  13|[0x80003240]<br>0x00000000|- rs1 : x11<br> - rs2 : x24<br> - rd : x25<br> - rs2_val == 4<br> - rs1_val == 16<br>                                                                                                                                |[0x800001e4]:rem s9, a1, s8<br> [0x800001e8]:sw s9, 48(gp)<br>      |
|  14|[0x80003244]<br>0x00000020|- rs1 : x9<br> - rs2 : x14<br> - rd : x27<br> - rs2_val == -4097<br> - rs1_val == 32<br>                                                                                                                             |[0x800001f8]:rem s11, s1, a4<br> [0x800001fc]:sw s11, 52(gp)<br>    |
|  15|[0x80003248]<br>0x00000000|- rs1 : x0<br> - rs2 : x1<br> - rd : x22<br> - rs1_val == 0<br> - rs2_val == 16<br>                                                                                                                                  |[0x80000208]:rem s6, zero, ra<br> [0x8000020c]:sw s6, 56(gp)<br>    |
|  16|[0x8000324c]<br>0x00000080|- rs1 : x5<br> - rs2 : x8<br> - rd : x17<br> - rs2_val == -1025<br> - rs1_val == 128<br>                                                                                                                             |[0x80000218]:rem a7, t0, fp<br> [0x8000021c]:sw a7, 60(gp)<br>      |
|  17|[0x80003250]<br>0x00000100|- rs1 : x12<br> - rs2 : x9<br> - rd : x14<br> - rs2_val == -16777217<br> - rs1_val == 256<br>                                                                                                                        |[0x80000234]:rem a4, a2, s1<br> [0x80000238]:sw a4, 0(tp)<br>       |
|  18|[0x80003254]<br>0x00000002|- rs1 : x3<br> - rs2 : x27<br> - rd : x30<br> - rs2_val == -5<br> - rs1_val == 512<br>                                                                                                                               |[0x80000244]:rem t5, gp, s11<br> [0x80000248]:sw t5, 4(tp)<br>      |
|  19|[0x80003258]<br>0x00000000|- rs1 : x28<br> - rs2 : x3<br> - rd : x5<br> - rs1_val == 1024<br>                                                                                                                                                   |[0x80000254]:rem t0, t3, gp<br> [0x80000258]:sw t0, 8(tp)<br>       |
|  20|[0x8000325c]<br>0x00000800|- rs1 : x29<br> - rs2 : x16<br> - rd : x10<br> - rs1_val == 2048<br>                                                                                                                                                 |[0x80000268]:rem a0, t4, a6<br> [0x8000026c]:sw a0, 12(tp)<br>      |
|  21|[0x80003260]<br>0x00001000|- rs1 : x17<br> - rs2 : x2<br> - rd : x28<br> - rs2_val == -268435457<br> - rs1_val == 4096<br>                                                                                                                      |[0x8000027c]:rem t3, a7, sp<br> [0x80000280]:sw t3, 16(tp)<br>      |
|  22|[0x80003264]<br>0x00002000|- rs1 : x10<br> - rs2 : x0<br> - rd : x11<br> - rs1_val == 8192<br>                                                                                                                                                  |[0x80000290]:rem a1, a0, zero<br> [0x80000294]:sw a1, 20(tp)<br>    |
|  23|[0x80003268]<br>0x00004000|- rs1 : x31<br> - rs2 : x13<br> - rd : x23<br> - rs1_val == 16384<br>                                                                                                                                                |[0x800002a4]:rem s7, t6, a3<br> [0x800002a8]:sw s7, 24(tp)<br>      |
|  24|[0x8000326c]<br>0x00000081|- rs1 : x1<br> - rs2 : x6<br> - rd : x9<br> - rs2_val == -257<br> - rs1_val == 32768<br>                                                                                                                             |[0x800002b4]:rem s1, ra, t1<br> [0x800002b8]:sw s1, 28(tp)<br>      |
|  25|[0x80003270]<br>0x00010000|- rs1 : x6<br> - rs2 : x17<br> - rd : x29<br> - rs2_val == -65537<br> - rs1_val == 65536<br>                                                                                                                         |[0x800002c8]:rem t4, t1, a7<br> [0x800002cc]:sw t4, 32(tp)<br>      |
|  26|[0x80003274]<br>0x00020000|- rs1 : x14<br> - rs2 : x21<br> - rd : x1<br> - rs2_val == -2097153<br> - rs1_val == 131072<br>                                                                                                                      |[0x800002dc]:rem ra, a4, s5<br> [0x800002e0]:sw ra, 36(tp)<br>      |
|  27|[0x80003278]<br>0x00000000|- rs1 : x16<br> - rs2 : x22<br> - rd : x3<br> - rs2_val == 8192<br> - rs1_val == 262144<br>                                                                                                                          |[0x800002ec]:rem gp, a6, s6<br> [0x800002f0]:sw gp, 40(tp)<br>      |
|  28|[0x8000327c]<br>0x00080000|- rs1 : x27<br> - rs2 : x23<br> - rd : x13<br> - rs1_val == 524288<br>                                                                                                                                               |[0x800002fc]:rem a3, s11, s7<br> [0x80000300]:sw a3, 44(tp)<br>     |
|  29|[0x80003280]<br>0x00100000|- rs1 : x8<br> - rs2 : x19<br> - rd : x6<br> - rs1_val == 1048576<br>                                                                                                                                                |[0x80000310]:rem t1, fp, s3<br> [0x80000314]:sw t1, 48(tp)<br>      |
|  30|[0x80003284]<br>0x00000002|- rs1 : x25<br> - rs2 : x31<br> - rd : x21<br> - rs1_val == 4194304<br>                                                                                                                                              |[0x80000320]:rem s5, s9, t6<br> [0x80000324]:sw s5, 52(tp)<br>      |
|  31|[0x80003288]<br>0x00000000|- rs1 : x22<br> - rs2 : x26<br> - rd : x0<br> - rs1_val == 8388608<br>                                                                                                                                               |[0x80000330]:rem zero, s6, s10<br> [0x80000334]:sw zero, 56(tp)<br> |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x21<br> - rs2 : x25<br> - rd : x19<br> - rs2_val == 256<br> - rs1_val == 16777216<br>                                                                                                                        |[0x80000340]:rem s3, s5, s9<br> [0x80000344]:sw s3, 60(tp)<br>      |
|  33|[0x80003290]<br>0x02000000|- rs1_val == 33554432<br>                                                                                                                                                                                            |[0x80000354]:rem a2, a0, a1<br> [0x80000358]:sw a2, 64(tp)<br>      |
|  34|[0x80003294]<br>0x00003001|- rs2_val == -16385<br> - rs1_val == 67108864<br>                                                                                                                                                                    |[0x80000368]:rem a2, a0, a1<br> [0x8000036c]:sw a2, 68(tp)<br>      |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                                                           |[0x80000378]:rem a2, a0, a1<br> [0x8000037c]:sw a2, 72(tp)<br>      |
|  36|[0x8000329c]<br>0x00000002|- rs1_val == 268435456<br>                                                                                                                                                                                           |[0x80000388]:rem a2, a0, a1<br> [0x8000038c]:sw a2, 76(tp)<br>      |
|  37|[0x800032a0]<br>0x00000000|- rs2_val == 32<br> - rs1_val == 536870912<br>                                                                                                                                                                       |[0x80000398]:rem a2, a0, a1<br> [0x8000039c]:sw a2, 80(tp)<br>      |
|  38|[0x800032a4]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                                                                                                                  |[0x800003ac]:rem a2, a0, a1<br> [0x800003b0]:sw a2, 84(tp)<br>      |
|  39|[0x800032a8]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                                  |[0x800003c0]:rem a2, a0, a1<br> [0x800003c4]:sw a2, 88(tp)<br>      |
|  40|[0x800032ac]<br>0xFFFFFFF7|- rs2_val == 67108864<br> - rs1_val == -9<br>                                                                                                                                                                        |[0x800003d0]:rem a2, a0, a1<br> [0x800003d4]:sw a2, 92(tp)<br>      |
|  41|[0x800032b0]<br>0x00000000|- rs2_val == -17<br> - rs1_val == -17<br>                                                                                                                                                                            |[0x800003e0]:rem a2, a0, a1<br> [0x800003e4]:sw a2, 96(tp)<br>      |
|  42|[0x800032b4]<br>0xFFFFFFFD|- rs1_val == -33<br>                                                                                                                                                                                                 |[0x800003f0]:rem a2, a0, a1<br> [0x800003f4]:sw a2, 100(tp)<br>     |
|  43|[0x800032b8]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                                                                 |[0x80000404]:rem a2, a0, a1<br> [0x80000408]:sw a2, 104(tp)<br>     |
|  44|[0x800032bc]<br>0xFFFFFF7F|- rs2_val == 134217728<br> - rs1_val == -129<br>                                                                                                                                                                     |[0x80000414]:rem a2, a0, a1<br> [0x80000418]:sw a2, 108(tp)<br>     |
|  45|[0x800032c0]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                                                |[0x80000424]:rem a2, a0, a1<br> [0x80000428]:sw a2, 112(tp)<br>     |
|  46|[0x800032c4]<br>0xFFFFFFFA|- rs2_val == -262145<br>                                                                                                                                                                                             |[0x80000438]:rem a2, a0, a1<br> [0x8000043c]:sw a2, 116(tp)<br>     |
|  47|[0x800032c8]<br>0x00800000|- rs2_val == -8388609<br>                                                                                                                                                                                            |[0x8000044c]:rem a2, a0, a1<br> [0x80000450]:sw a2, 120(tp)<br>     |
|  48|[0x800032cc]<br>0x01FFFFF1|- rs2_val == -33554433<br>                                                                                                                                                                                           |[0x80000460]:rem a2, a0, a1<br> [0x80000464]:sw a2, 124(tp)<br>     |
|  49|[0x800032d0]<br>0x0555554B|- rs2_val == -134217729<br> - rs1_val == 1431655765<br>                                                                                                                                                              |[0x80000478]:rem a2, a0, a1<br> [0x8000047c]:sw a2, 128(tp)<br>     |
|  50|[0x800032d4]<br>0xFBFFFFFF|- rs2_val == -536870913<br> - rs1_val == -67108865<br>                                                                                                                                                               |[0x80000490]:rem a2, a0, a1<br> [0x80000494]:sw a2, 132(tp)<br>     |
|  51|[0x800032d8]<br>0x00000000|- rs2_val == -1073741825<br> - rs1_val == -1073741825<br>                                                                                                                                                            |[0x800004a8]:rem a2, a0, a1<br> [0x800004ac]:sw a2, 136(tp)<br>     |
|  52|[0x800032dc]<br>0x00000100|- rs2_val == 1431655765<br>                                                                                                                                                                                          |[0x800004bc]:rem a2, a0, a1<br> [0x800004c0]:sw a2, 140(tp)<br>     |
|  53|[0x800032e0]<br>0xFFFFFFEF|- rs2_val == -1431655766<br>                                                                                                                                                                                         |[0x800004d0]:rem a2, a0, a1<br> [0x800004d4]:sw a2, 144(tp)<br>     |
|  54|[0x800032e4]<br>0xFFFFFDFF|- rs2_val == 131072<br> - rs1_val == -513<br>                                                                                                                                                                        |[0x800004e0]:rem a2, a0, a1<br> [0x800004e4]:sw a2, 148(tp)<br>     |
|  55|[0x800032e8]<br>0xFFFFFF8E|- rs2_val == -129<br> - rs1_val == -2049<br>                                                                                                                                                                         |[0x800004f4]:rem a2, a0, a1<br> [0x800004f8]:sw a2, 152(tp)<br>     |
|  56|[0x800032ec]<br>0xFFFFEFFF|- rs2_val == 33554432<br> - rs1_val == -4097<br>                                                                                                                                                                     |[0x80000508]:rem a2, a0, a1<br> [0x8000050c]:sw a2, 156(tp)<br>     |
|  57|[0x800032f0]<br>0xFFFFDFFF|- rs2_val == -131073<br> - rs1_val == -8193<br>                                                                                                                                                                      |[0x80000520]:rem a2, a0, a1<br> [0x80000524]:sw a2, 160(tp)<br>     |
|  58|[0x800032f4]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                                                              |[0x80000534]:rem a2, a0, a1<br> [0x80000538]:sw a2, 164(tp)<br>     |
|  59|[0x800032f8]<br>0xFFFF7FFF|- rs2_val == 8388608<br>                                                                                                                                                                                             |[0x80000548]:rem a2, a0, a1<br> [0x8000054c]:sw a2, 168(tp)<br>     |
|  60|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                                              |[0x8000055c]:rem a2, a0, a1<br> [0x80000560]:sw a2, 172(tp)<br>     |
|  61|[0x80003300]<br>0xFFFFE00E|- rs2_val == -8193<br> - rs1_val == -131073<br>                                                                                                                                                                      |[0x80000574]:rem a2, a0, a1<br> [0x80000578]:sw a2, 176(tp)<br>     |
|  62|[0x80003304]<br>0xFFFBFFFF|- rs1_val == -262145<br>                                                                                                                                                                                             |[0x8000058c]:rem a2, a0, a1<br> [0x80000590]:sw a2, 180(tp)<br>     |
|  63|[0x80003308]<br>0x00000000|- rs1_val == -524289<br>                                                                                                                                                                                             |[0x800005a0]:rem a2, a0, a1<br> [0x800005a4]:sw a2, 184(tp)<br>     |
|  64|[0x8000330c]<br>0xFFFFFFF9|- rs1_val == -1048577<br>                                                                                                                                                                                            |[0x800005b4]:rem a2, a0, a1<br> [0x800005b8]:sw a2, 188(tp)<br>     |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs2_val == 65536<br> - rs1_val == -2097153<br>                                                                                                                                                                     |[0x800005c8]:rem a2, a0, a1<br> [0x800005cc]:sw a2, 192(tp)<br>     |
|  66|[0x80003318]<br>0xFFFFFFFF|- rs2_val == -2<br> - rs1_val == -8388609<br>                                                                                                                                                                        |[0x800005f0]:rem a2, a0, a1<br> [0x800005f4]:sw a2, 200(tp)<br>     |
|  67|[0x8000331c]<br>0xFFFFFFFF|- rs2_val == 512<br> - rs1_val == -16777217<br>                                                                                                                                                                      |[0x80000604]:rem a2, a0, a1<br> [0x80000608]:sw a2, 204(tp)<br>     |
|  68|[0x80003320]<br>0xFFFFFF8E|- rs1_val == -33554433<br>                                                                                                                                                                                           |[0x80000618]:rem a2, a0, a1<br> [0x8000061c]:sw a2, 208(tp)<br>     |
|  69|[0x80003324]<br>0xFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                          |[0x8000062c]:rem a2, a0, a1<br> [0x80000630]:sw a2, 212(tp)<br>     |
|  70|[0x80003328]<br>0xFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                          |[0x80000640]:rem a2, a0, a1<br> [0x80000644]:sw a2, 216(tp)<br>     |
|  71|[0x8000332c]<br>0xFFFFFFFF|- rs2_val == 2097152<br> - rs1_val == -536870913<br>                                                                                                                                                                 |[0x80000654]:rem a2, a0, a1<br> [0x80000658]:sw a2, 220(tp)<br>     |
|  72|[0x80003330]<br>0xFFFFFFFE|- rs1_val == -1431655766<br>                                                                                                                                                                                         |[0x80000668]:rem a2, a0, a1<br> [0x8000066c]:sw a2, 224(tp)<br>     |
|  73|[0x80003334]<br>0xFFFFFFFF|- rs2_val == 2<br>                                                                                                                                                                                                   |[0x80000678]:rem a2, a0, a1<br> [0x8000067c]:sw a2, 228(tp)<br>     |
|  74|[0x80003338]<br>0xFFFFFFFF|- rs2_val == 8<br>                                                                                                                                                                                                   |[0x8000068c]:rem a2, a0, a1<br> [0x80000690]:sw a2, 232(tp)<br>     |
|  75|[0x8000333c]<br>0x00000005|- rs2_val == 64<br>                                                                                                                                                                                                  |[0x8000069c]:rem a2, a0, a1<br> [0x800006a0]:sw a2, 236(tp)<br>     |
|  76|[0x80003340]<br>0xFFFFFFFF|- rs2_val == 128<br>                                                                                                                                                                                                 |[0x800006b0]:rem a2, a0, a1<br> [0x800006b4]:sw a2, 240(tp)<br>     |
|  77|[0x80003344]<br>0xFFFFFFFF|- rs2_val == 2048<br>                                                                                                                                                                                                |[0x800006c8]:rem a2, a0, a1<br> [0x800006cc]:sw a2, 244(tp)<br>     |
|  78|[0x80003348]<br>0xFFFFFFF7|- rs2_val == 4096<br>                                                                                                                                                                                                |[0x800006d8]:rem a2, a0, a1<br> [0x800006dc]:sw a2, 248(tp)<br>     |
|  79|[0x8000334c]<br>0xFFFFFF7F|- rs2_val == 16384<br>                                                                                                                                                                                               |[0x800006e8]:rem a2, a0, a1<br> [0x800006ec]:sw a2, 252(tp)<br>     |
|  80|[0x80003350]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                              |[0x800006f8]:rem a2, a0, a1<br> [0x800006fc]:sw a2, 256(tp)<br>     |
|  81|[0x80003354]<br>0xFFFFDFFF|- rs2_val == 524288<br>                                                                                                                                                                                              |[0x8000070c]:rem a2, a0, a1<br> [0x80000710]:sw a2, 260(tp)<br>     |
|  82|[0x80003358]<br>0xFFFFFFFF|- rs2_val == 1048576<br>                                                                                                                                                                                             |[0x80000720]:rem a2, a0, a1<br> [0x80000724]:sw a2, 264(tp)<br>     |
|  83|[0x8000335c]<br>0xFFFFFBFF|- rs2_val == 4194304<br>                                                                                                                                                                                             |[0x80000730]:rem a2, a0, a1<br> [0x80000734]:sw a2, 268(tp)<br>     |
|  84|[0x80003360]<br>0x00FFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                            |[0x80000744]:rem a2, a0, a1<br> [0x80000748]:sw a2, 272(tp)<br>     |
|  85|[0x80003364]<br>0x00800000|- rs2_val == 268435456<br>                                                                                                                                                                                           |[0x80000754]:rem a2, a0, a1<br> [0x80000758]:sw a2, 276(tp)<br>     |
|  86|[0x80003368]<br>0xFFDFFFFF|- rs2_val == 536870912<br>                                                                                                                                                                                           |[0x80000768]:rem a2, a0, a1<br> [0x8000076c]:sw a2, 280(tp)<br>     |
|  87|[0x8000336c]<br>0xFFFFDFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                          |[0x8000077c]:rem a2, a0, a1<br> [0x80000780]:sw a2, 284(tp)<br>     |
|  88|[0x80003370]<br>0xFFFFFFFC|- rs2_val == -9<br>                                                                                                                                                                                                  |[0x8000078c]:rem a2, a0, a1<br> [0x80000790]:sw a2, 288(tp)<br>     |
|  89|[0x80003374]<br>0x0000001F|- rs2_val == -33<br> - rs1_val == 64<br>                                                                                                                                                                             |[0x8000079c]:rem a2, a0, a1<br> [0x800007a0]:sw a2, 292(tp)<br>     |
|  90|[0x80003378]<br>0x00000008|- rs2_val == -65<br>                                                                                                                                                                                                 |[0x800007ac]:rem a2, a0, a1<br> [0x800007b0]:sw a2, 296(tp)<br>     |
|  91|[0x8000337c]<br>0xFFFFFFBF|- rs2_val == -2049<br>                                                                                                                                                                                               |[0x800007c4]:rem a2, a0, a1<br> [0x800007c8]:sw a2, 300(tp)<br>     |
|  92|[0x80003380]<br>0x000001FF|- rs2_val == -513<br>                                                                                                                                                                                                |[0x800007d4]:rem a2, a0, a1<br> [0x800007d8]:sw a2, 304(tp)<br>     |
|  93|[0x80003384]<br>0x00000040|- rs2_val == 32768<br>                                                                                                                                                                                               |[0x800007e4]:rem a2, a0, a1<br> [0x800007e8]:sw a2, 308(tp)<br>     |
|  94|[0x80003388]<br>0x00000002|- rs2_val == -3<br>                                                                                                                                                                                                  |[0x800007f4]:rem a2, a0, a1<br> [0x800007f8]:sw a2, 312(tp)<br>     |
|  95|[0x8000338c]<br>0xFFFFFFFE|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                                         |[0x80000808]:rem a2, a0, a1<br> [0x8000080c]:sw a2, 316(tp)<br>     |
