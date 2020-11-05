
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
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | mulhu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulhu-01.S/mulhu-01.S    |
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
      [0x80000638]:mulhu a2, a0, a1
      [0x8000063c]:sw a2, 212(t1)
 -- Signature Address: 0x80003324 Data: 0xDC7FFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -67108865
      - rs1_val == -536870913




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000674]:mulhu a2, a0, a1
      [0x80000678]:sw a2, 224(t1)
 -- Signature Address: 0x80003330 Data: 0x000AAAAA
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1048576
      - rs1_val == -1431655766




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000828]:mulhu a2, a0, a1
      [0x8000082c]:sw a2, 320(t1)
 -- Signature Address: 0x80003390 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -1073741825
      - rs1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000084c]:mulhu a2, a0, a1
      [0x80000850]:sw a2, 328(t1)
 -- Signature Address: 0x80003398 Data: 0x0000FFDF
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -2097153
      - rs1_val == 65536






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

|s.no|        signature         |                                                                                                   coverpoints                                                                                                   |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x71C71C70|- opcode : mulhu<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -1431655766<br> - rs1_val == -1431655766<br>    |[0x8000010c]:mulhu s7, gp, gp<br> [0x80000110]:sw s7, 0(a0)<br>      |
|   2|[0x80003214]<br>0xC3FFFFFE|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs2_val == -536870913<br> - rs1_val == -536870913<br>                                                                                    |[0x80000120]:mulhu a4, a4, a4<br> [0x80000124]:sw a4, 4(a0)<br>      |
|   3|[0x80003218]<br>0x00000000|- rs1 : x16<br> - rs2 : x22<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 2<br> - rs1_val == 2147483647<br> |[0x80000134]:mulhu a6, a6, s6<br> [0x80000138]:sw a6, 8(a0)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x5<br> - rs2 : x2<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -4194305<br>                                        |[0x80000148]:mulhu s6, t0, sp<br> [0x8000014c]:sw s6, 12(a0)<br>     |
|   5|[0x80003220]<br>0x00000020|- rs1 : x6<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 64<br>                                                            |[0x80000158]:mulhu a5, t1, a5<br> [0x8000015c]:sw a5, 16(a0)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x27<br> - rs2 : x11<br> - rd : x17<br> - rs2_val == 0<br> - rs1_val == 4194304<br>                                                                                                                       |[0x80000168]:mulhu a7, s11, a1<br> [0x8000016c]:sw a7, 20(a0)<br>    |
|   7|[0x80003228]<br>0x00000003|- rs1 : x13<br> - rs2 : x12<br> - rd : x2<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                       |[0x8000017c]:mulhu sp, a3, a2<br> [0x80000180]:sw sp, 24(a0)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x22<br> - rs2 : x26<br> - rd : x27<br> - rs2_val == 1<br> - rs1_val == 8<br>                                                                                                                             |[0x8000018c]:mulhu s11, s6, s10<br> [0x80000190]:sw s11, 28(a0)<br>  |
|   9|[0x80003230]<br>0x00000FFF|- rs1 : x17<br> - rs2 : x24<br> - rd : x6<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 4096<br> - rs1_val == -257<br>                                                                                      |[0x8000019c]:mulhu t1, a7, s8<br> [0x800001a0]:sw t1, 32(a0)<br>     |
|  10|[0x80003234]<br>0x04000000|- rs1 : x7<br> - rs2 : x6<br> - rd : x19<br> - rs2_val == 536870912<br> - rs1_val == 536870912<br>                                                                                                               |[0x800001ac]:mulhu s3, t2, t1<br> [0x800001b0]:sw s3, 36(a0)<br>     |
|  11|[0x80003238]<br>0x00000001|- rs1 : x9<br> - rs2 : x13<br> - rd : x11<br> - rs2_val == -134217729<br> - rs1_val == 2<br>                                                                                                                     |[0x800001c0]:mulhu a1, s1, a3<br> [0x800001c4]:sw a1, 40(a0)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x31<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == -1073741825<br> - rs1_val == 4<br>                                                                                                                     |[0x800001d4]:mulhu zero, t6, ra<br> [0x800001d8]:sw zero, 44(a0)<br> |
|  13|[0x80003240]<br>0x00000000|- rs1 : x28<br> - rs2 : x31<br> - rd : x4<br> - rs2_val == 16<br> - rs1_val == 16<br>                                                                                                                            |[0x800001e4]:mulhu tp, t3, t6<br> [0x800001e8]:sw tp, 48(a0)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x8<br> - rs2 : x30<br> - rd : x31<br> - rs1_val == 32<br>                                                                                                                                                |[0x800001f4]:mulhu t6, fp, t5<br> [0x800001f8]:sw t6, 52(a0)<br>     |
|  15|[0x80003248]<br>0x0000007F|- rs1 : x21<br> - rs2 : x16<br> - rd : x12<br> - rs2_val == -4097<br> - rs1_val == 128<br>                                                                                                                       |[0x80000208]:mulhu a2, s5, a6<br> [0x8000020c]:sw a2, 56(a0)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x20<br> - rs1_val == 0<br> - rs2_val == 1024<br>                                                                                                                           |[0x80000218]:mulhu s4, zero, t4<br> [0x8000021c]:sw s4, 60(a0)<br>   |
|  17|[0x80003250]<br>0x000001BF|- rs1 : x23<br> - rs2 : x8<br> - rd : x1<br> - rs1_val == 512<br>                                                                                                                                                |[0x80000234]:mulhu ra, s7, fp<br> [0x80000238]:sw ra, 0(t1)<br>      |
|  18|[0x80003254]<br>0x000003FF|- rs1 : x20<br> - rs2 : x9<br> - rd : x21<br> - rs2_val == -1048577<br> - rs1_val == 1024<br>                                                                                                                    |[0x80000248]:mulhu s5, s4, s1<br> [0x8000024c]:sw s5, 4(t1)<br>      |
|  19|[0x80003258]<br>0x000007FB|- rs1 : x18<br> - rs2 : x19<br> - rd : x10<br> - rs2_val == -8388609<br> - rs1_val == 2048<br>                                                                                                                   |[0x80000260]:mulhu a0, s2, s3<br> [0x80000264]:sw a0, 8(t1)<br>      |
|  20|[0x8000325c]<br>0x00000FFF|- rs1 : x2<br> - rs2 : x10<br> - rd : x3<br> - rs2_val == -65<br> - rs1_val == 4096<br>                                                                                                                          |[0x80000270]:mulhu gp, sp, a0<br> [0x80000274]:sw gp, 12(t1)<br>     |
|  21|[0x80003260]<br>0x00001FFF|- rs1 : x24<br> - rs2 : x18<br> - rd : x13<br> - rs1_val == 8192<br>                                                                                                                                             |[0x80000284]:mulhu a3, s8, s2<br> [0x80000288]:sw a3, 16(t1)<br>     |
|  22|[0x80003264]<br>0x00003FFF|- rs1 : x1<br> - rs2 : x4<br> - rd : x24<br> - rs2_val == -17<br> - rs1_val == 16384<br>                                                                                                                         |[0x80000294]:mulhu s8, ra, tp<br> [0x80000298]:sw s8, 20(t1)<br>     |
|  23|[0x80003268]<br>0x00005FFF|- rs1 : x4<br> - rs2 : x5<br> - rd : x7<br> - rs1_val == 32768<br>                                                                                                                                               |[0x800002a8]:mulhu t2, tp, t0<br> [0x800002ac]:sw t2, 24(t1)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x28<br> - rs1_val == 65536<br>                                                                                                                                             |[0x800002bc]:mulhu t3, a2, zero<br> [0x800002c0]:sw t3, 28(t1)<br>   |
|  25|[0x80003270]<br>0x00000000|- rs1 : x15<br> - rs2 : x20<br> - rd : x29<br> - rs1_val == 131072<br>                                                                                                                                           |[0x800002cc]:mulhu t4, a5, s4<br> [0x800002d0]:sw t4, 32(t1)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x26<br> - rs2 : x27<br> - rd : x30<br> - rs1_val == 262144<br>                                                                                                                                           |[0x800002dc]:mulhu t5, s10, s11<br> [0x800002e0]:sw t5, 36(t1)<br>   |
|  27|[0x80003278]<br>0x00000000|- rs1 : x19<br> - rs2 : x23<br> - rd : x26<br> - rs1_val == 524288<br>                                                                                                                                           |[0x800002ec]:mulhu s10, s3, s7<br> [0x800002f0]:sw s10, 40(t1)<br>   |
|  28|[0x8000327c]<br>0x00001000|- rs1 : x25<br> - rs2 : x28<br> - rd : x18<br> - rs2_val == 16777216<br> - rs1_val == 1048576<br>                                                                                                                |[0x800002fc]:mulhu s2, s9, t3<br> [0x80000300]:sw s2, 44(t1)<br>     |
|  29|[0x80003280]<br>0x001FFFFF|- rs1 : x29<br> - rs2 : x21<br> - rd : x5<br> - rs2_val == -1025<br> - rs1_val == 2097152<br>                                                                                                                    |[0x8000030c]:mulhu t0, t4, s5<br> [0x80000310]:sw t0, 48(t1)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x10<br> - rs2 : x25<br> - rd : x8<br> - rs1_val == 8388608<br>                                                                                                                                           |[0x8000031c]:mulhu fp, a0, s9<br> [0x80000320]:sw fp, 52(t1)<br>     |
|  31|[0x80003288]<br>0x00F7FFFF|- rs1 : x30<br> - rs2 : x17<br> - rd : x9<br> - rs1_val == 16777216<br>                                                                                                                                          |[0x80000330]:mulhu s1, t5, a7<br> [0x80000334]:sw s1, 56(t1)<br>     |
|  32|[0x8000328c]<br>0x01FFFFFF|- rs1 : x11<br> - rs2 : x7<br> - rd : x25<br> - rs2_val == -33<br> - rs1_val == 33554432<br>                                                                                                                     |[0x80000340]:mulhu s9, a1, t2<br> [0x80000344]:sw s9, 60(t1)<br>     |
|  33|[0x80003290]<br>0x03FF7FFF|- rs2_val == -2097153<br> - rs1_val == 67108864<br>                                                                                                                                                              |[0x80000354]:mulhu a2, a0, a1<br> [0x80000358]:sw a2, 64(t1)<br>     |
|  34|[0x80003294]<br>0x00040000|- rs2_val == 8388608<br> - rs1_val == 134217728<br>                                                                                                                                                              |[0x80000364]:mulhu a2, a0, a1<br> [0x80000368]:sw a2, 68(t1)<br>     |
|  35|[0x80003298]<br>0x0FFFFDFF|- rs2_val == -8193<br> - rs1_val == 268435456<br>                                                                                                                                                                |[0x80000378]:mulhu a2, a0, a1<br> [0x8000037c]:sw a2, 72(t1)<br>     |
|  36|[0x8000329c]<br>0x00040000|- rs2_val == 1048576<br> - rs1_val == 1073741824<br>                                                                                                                                                             |[0x80000388]:mulhu a2, a0, a1<br> [0x8000038c]:sw a2, 76(t1)<br>     |
|  37|[0x800032a0]<br>0xFFEFFFFD|- rs1_val == -2<br>                                                                                                                                                                                              |[0x8000039c]:mulhu a2, a0, a1<br> [0x800003a0]:sw a2, 80(t1)<br>     |
|  38|[0x800032a4]<br>0xFFFEFFFC|- rs2_val == -65537<br> - rs1_val == -3<br>                                                                                                                                                                      |[0x800003b0]:mulhu a2, a0, a1<br> [0x800003b4]:sw a2, 84(t1)<br>     |
|  39|[0x800032a8]<br>0x000000FF|- rs2_val == 256<br> - rs1_val == -5<br>                                                                                                                                                                         |[0x800003c0]:mulhu a2, a0, a1<br> [0x800003c4]:sw a2, 88(t1)<br>     |
|  40|[0x800032ac]<br>0x0000007F|- rs2_val == 128<br> - rs1_val == -9<br>                                                                                                                                                                         |[0x800003d0]:mulhu a2, a0, a1<br> [0x800003d4]:sw a2, 92(t1)<br>     |
|  41|[0x800032b0]<br>0x00FFFFFF|- rs1_val == -17<br>                                                                                                                                                                                             |[0x800003e0]:mulhu a2, a0, a1<br> [0x800003e4]:sw a2, 96(t1)<br>     |
|  42|[0x800032b4]<br>0xFFFFFFD8|- rs1_val == -33<br>                                                                                                                                                                                             |[0x800003f0]:mulhu a2, a0, a1<br> [0x800003f4]:sw a2, 100(t1)<br>    |
|  43|[0x800032b8]<br>0x00000001|- rs1_val == -65<br>                                                                                                                                                                                             |[0x80000400]:mulhu a2, a0, a1<br> [0x80000404]:sw a2, 104(t1)<br>    |
|  44|[0x800032bc]<br>0xFFFBFEFE|- rs2_val == -262145<br>                                                                                                                                                                                         |[0x80000414]:mulhu a2, a0, a1<br> [0x80000418]:sw a2, 108(t1)<br>    |
|  45|[0x800032c0]<br>0xFFF7FFEE|- rs2_val == -524289<br>                                                                                                                                                                                         |[0x80000428]:mulhu a2, a0, a1<br> [0x8000042c]:sw a2, 112(t1)<br>    |
|  46|[0x800032c4]<br>0xFEFFFFFC|- rs2_val == -16777217<br>                                                                                                                                                                                       |[0x8000043c]:mulhu a2, a0, a1<br> [0x80000440]:sw a2, 116(t1)<br>    |
|  47|[0x800032c8]<br>0xFDE03FFE|- rs2_val == -33554433<br> - rs1_val == -2097153<br>                                                                                                                                                             |[0x80000454]:mulhu a2, a0, a1<br> [0x80000458]:sw a2, 120(t1)<br>    |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -67108865<br>                                                                                                                                                                                       |[0x80000468]:mulhu a2, a0, a1<br> [0x8000046c]:sw a2, 124(t1)<br>    |
|  49|[0x800032d0]<br>0xEE1FFFFE|- rs2_val == -268435457<br> - rs1_val == -33554433<br>                                                                                                                                                           |[0x80000480]:mulhu a2, a0, a1<br> [0x80000484]:sw a2, 128(t1)<br>    |
|  50|[0x800032d4]<br>0x5555554F|- rs2_val == 1431655765<br>                                                                                                                                                                                      |[0x80000494]:mulhu a2, a0, a1<br> [0x80000498]:sw a2, 132(t1)<br>    |
|  51|[0x800032d8]<br>0xFFFBFF7E|- rs1_val == -129<br>                                                                                                                                                                                            |[0x800004a8]:mulhu a2, a0, a1<br> [0x800004ac]:sw a2, 136(t1)<br>    |
|  52|[0x800032dc]<br>0x0000003F|- rs2_val == 64<br> - rs1_val == -513<br>                                                                                                                                                                        |[0x800004b8]:mulhu a2, a0, a1<br> [0x800004bc]:sw a2, 140(t1)<br>    |
|  53|[0x800032e0]<br>0xFFFFBBFE|- rs2_val == -16385<br> - rs1_val == -1025<br>                                                                                                                                                                   |[0x800004cc]:mulhu a2, a0, a1<br> [0x800004d0]:sw a2, 144(t1)<br>    |
|  54|[0x800032e4]<br>0x00000007|- rs2_val == 8<br> - rs1_val == -2049<br>                                                                                                                                                                        |[0x800004e0]:mulhu a2, a0, a1<br> [0x800004e4]:sw a2, 148(t1)<br>    |
|  55|[0x800032e8]<br>0xFFFFEFEE|- rs1_val == -4097<br>                                                                                                                                                                                           |[0x800004f4]:mulhu a2, a0, a1<br> [0x800004f8]:sw a2, 152(t1)<br>    |
|  56|[0x800032ec]<br>0xFFFF9FFE|- rs1_val == -8193<br>                                                                                                                                                                                           |[0x8000050c]:mulhu a2, a0, a1<br> [0x80000510]:sw a2, 156(t1)<br>    |
|  57|[0x800032f0]<br>0x003FFFEF|- rs2_val == 4194304<br> - rs1_val == -16385<br>                                                                                                                                                                 |[0x80000520]:mulhu a2, a0, a1<br> [0x80000524]:sw a2, 160(t1)<br>    |
|  58|[0x800032f4]<br>0x3FFFDFFF|- rs2_val == 1073741824<br> - rs1_val == -32769<br>                                                                                                                                                              |[0x80000534]:mulhu a2, a0, a1<br> [0x80000538]:sw a2, 164(t1)<br>    |
|  59|[0x800032f8]<br>0xFFFEFEFE|- rs2_val == -257<br> - rs1_val == -65537<br>                                                                                                                                                                    |[0x80000548]:mulhu a2, a0, a1<br> [0x8000054c]:sw a2, 168(t1)<br>    |
|  60|[0x800032fc]<br>0x00000000|- rs1_val == -131073<br>                                                                                                                                                                                         |[0x8000055c]:mulhu a2, a0, a1<br> [0x80000560]:sw a2, 172(t1)<br>    |
|  61|[0x80003300]<br>0x0001FFF7|- rs2_val == 131072<br> - rs1_val == -262145<br>                                                                                                                                                                 |[0x80000570]:mulhu a2, a0, a1<br> [0x80000574]:sw a2, 176(t1)<br>    |
|  62|[0x80003304]<br>0x7FFBFFFE|- rs1_val == -524289<br>                                                                                                                                                                                         |[0x80000588]:mulhu a2, a0, a1<br> [0x8000058c]:sw a2, 180(t1)<br>    |
|  63|[0x80003308]<br>0x7FF7FFFE|- rs1_val == -1048577<br>                                                                                                                                                                                        |[0x800005a0]:mulhu a2, a0, a1<br> [0x800005a4]:sw a2, 184(t1)<br>    |
|  64|[0x8000330c]<br>0x00000005|- rs1_val == -4194305<br>                                                                                                                                                                                        |[0x800005b4]:mulhu a2, a0, a1<br> [0x800005b8]:sw a2, 188(t1)<br>    |
|  65|[0x80003310]<br>0xFF401FFE|- rs1_val == -8388609<br>                                                                                                                                                                                        |[0x800005cc]:mulhu a2, a0, a1<br> [0x800005d0]:sw a2, 192(t1)<br>    |
|  66|[0x80003314]<br>0xFEFE01FE|- rs2_val == -131073<br> - rs1_val == -16777217<br>                                                                                                                                                              |[0x800005e4]:mulhu a2, a0, a1<br> [0x800005e8]:sw a2, 196(t1)<br>    |
|  67|[0x80003318]<br>0xFBFFFFF8|- rs1_val == -67108865<br>                                                                                                                                                                                       |[0x800005f8]:mulhu a2, a0, a1<br> [0x800005fc]:sw a2, 200(t1)<br>    |
|  68|[0x8000331c]<br>0x003DFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                      |[0x8000060c]:mulhu a2, a0, a1<br> [0x80000610]:sw a2, 204(t1)<br>    |
|  69|[0x80003320]<br>0xEFFFFFF6|- rs2_val == -9<br> - rs1_val == -268435457<br>                                                                                                                                                                  |[0x80000620]:mulhu a2, a0, a1<br> [0x80000624]:sw a2, 208(t1)<br>    |
|  70|[0x80003328]<br>0x00000004|- rs1_val == -1073741825<br>                                                                                                                                                                                     |[0x8000064c]:mulhu a2, a0, a1<br> [0x80000650]:sw a2, 216(t1)<br>    |
|  71|[0x8000332c]<br>0x5555554F|- rs1_val == 1431655765<br>                                                                                                                                                                                      |[0x80000660]:mulhu a2, a0, a1<br> [0x80000664]:sw a2, 220(t1)<br>    |
|  72|[0x80003334]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                                               |[0x80000684]:mulhu a2, a0, a1<br> [0x80000688]:sw a2, 228(t1)<br>    |
|  73|[0x80003338]<br>0x0000001F|- rs2_val == 32<br>                                                                                                                                                                                              |[0x80000698]:mulhu a2, a0, a1<br> [0x8000069c]:sw a2, 232(t1)<br>    |
|  74|[0x8000333c]<br>0x00000000|- rs2_val == 512<br>                                                                                                                                                                                             |[0x800006a8]:mulhu a2, a0, a1<br> [0x800006ac]:sw a2, 236(t1)<br>    |
|  75|[0x80003340]<br>0x00000200|- rs2_val == 2048<br>                                                                                                                                                                                            |[0x800006bc]:mulhu a2, a0, a1<br> [0x800006c0]:sw a2, 240(t1)<br>    |
|  76|[0x80003344]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                            |[0x800006cc]:mulhu a2, a0, a1<br> [0x800006d0]:sw a2, 244(t1)<br>    |
|  77|[0x80003348]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                                                           |[0x800006dc]:mulhu a2, a0, a1<br> [0x800006e0]:sw a2, 248(t1)<br>    |
|  78|[0x8000334c]<br>0x00007FFF|- rs2_val == 32768<br>                                                                                                                                                                                           |[0x800006ec]:mulhu a2, a0, a1<br> [0x800006f0]:sw a2, 252(t1)<br>    |
|  79|[0x80003350]<br>0x00015555|- rs2_val == 262144<br>                                                                                                                                                                                          |[0x80000700]:mulhu a2, a0, a1<br> [0x80000704]:sw a2, 256(t1)<br>    |
|  80|[0x80003354]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                                          |[0x80000710]:mulhu a2, a0, a1<br> [0x80000714]:sw a2, 260(t1)<br>    |
|  81|[0x80003358]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                                                         |[0x80000720]:mulhu a2, a0, a1<br> [0x80000724]:sw a2, 264(t1)<br>    |
|  82|[0x8000335c]<br>0x00000010|- rs2_val == 33554432<br>                                                                                                                                                                                        |[0x80000734]:mulhu a2, a0, a1<br> [0x80000738]:sw a2, 268(t1)<br>    |
|  83|[0x80003360]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                                        |[0x80000744]:mulhu a2, a0, a1<br> [0x80000748]:sw a2, 272(t1)<br>    |
|  84|[0x80003364]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                                       |[0x80000754]:mulhu a2, a0, a1<br> [0x80000758]:sw a2, 276(t1)<br>    |
|  85|[0x80003368]<br>0x00200000|- rs2_val == 268435456<br>                                                                                                                                                                                       |[0x80000764]:mulhu a2, a0, a1<br> [0x80000768]:sw a2, 280(t1)<br>    |
|  86|[0x8000336c]<br>0x55555554|- rs2_val == -2<br>                                                                                                                                                                                              |[0x80000778]:mulhu a2, a0, a1<br> [0x8000077c]:sw a2, 284(t1)<br>    |
|  87|[0x80003370]<br>0xFFDFFFFA|- rs2_val == -5<br>                                                                                                                                                                                              |[0x8000078c]:mulhu a2, a0, a1<br> [0x80000790]:sw a2, 288(t1)<br>    |
|  88|[0x80003374]<br>0xFFFFEF7E|- rs2_val == -129<br>                                                                                                                                                                                            |[0x800007a0]:mulhu a2, a0, a1<br> [0x800007a4]:sw a2, 292(t1)<br>    |
|  89|[0x80003378]<br>0x0FFFFFDF|- rs2_val == -513<br>                                                                                                                                                                                            |[0x800007b0]:mulhu a2, a0, a1<br> [0x800007b4]:sw a2, 296(t1)<br>    |
|  90|[0x8000337c]<br>0xBFFFF9FF|- rs2_val == -2049<br>                                                                                                                                                                                           |[0x800007c4]:mulhu a2, a0, a1<br> [0x800007c8]:sw a2, 300(t1)<br>    |
|  91|[0x80003380]<br>0xAAAA5554|- rs2_val == -32769<br>                                                                                                                                                                                          |[0x800007dc]:mulhu a2, a0, a1<br> [0x800007e0]:sw a2, 304(t1)<br>    |
|  92|[0x80003384]<br>0x0000FFFF|- rs2_val == 65536<br>                                                                                                                                                                                           |[0x800007ec]:mulhu a2, a0, a1<br> [0x800007f0]:sw a2, 308(t1)<br>    |
|  93|[0x80003388]<br>0xFF7FFFFC|- rs2_val == -3<br>                                                                                                                                                                                              |[0x80000800]:mulhu a2, a0, a1<br> [0x80000804]:sw a2, 312(t1)<br>    |
|  94|[0x8000338c]<br>0x55555555|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                                     |[0x80000814]:mulhu a2, a0, a1<br> [0x80000818]:sw a2, 316(t1)<br>    |
|  95|[0x80003394]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                                                                             |[0x80000838]:mulhu a2, a0, a1<br> [0x8000083c]:sw a2, 324(t1)<br>    |
