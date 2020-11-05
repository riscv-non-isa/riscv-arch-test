
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000840')]      |
| SIG_REGION                | [('0x80003204', '0x80003390', '99 words')]      |
| COV_LABELS                | mulhsu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulhsu-01.S/mulhsu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 99      |
| STAT1                     | 96      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e8]:mulhsu a2, a0, a1
      [0x800007ec]:sw a2, 308(tp)
 -- Signature Address: 0x8000337c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000810]:mulhsu a2, a0, a1
      [0x80000814]:sw a2, 316(tp)
 -- Signature Address: 0x80003384 Data: 0x000001FF
 -- Redundant Coverpoints hit by the op
      - opcode : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -1048577
      - rs1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:mulhsu a2, a0, a1
      [0x80000824]:sw a2, 320(tp)
 -- Signature Address: 0x80003388 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1024
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

|s.no|        signature         |                                                                                                              coverpoints                                                                                                              |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFFE|- opcode : mulhsu<br> - rs1 : x15<br> - rs2 : x12<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 4<br> - rs1_val == -2147483648<br> |[0x80000108]:mulhsu a5, a5, a2<br> [0x8000010c]:sw a5, 0(gp)<br>     |
|   2|[0x80003208]<br>0x00000000|- rs1 : x14<br> - rs2 : x7<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == -1073741825<br>                                                                                            |[0x8000011c]:mulhsu s3, a4, t2<br> [0x80000120]:sw s3, 4(gp)<br>     |
|   3|[0x8000320c]<br>0x000003FF|- rs1 : x16<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 2048<br> - rs1_val == 2147483647<br>                                               |[0x80000134]:mulhsu tp, a6, tp<br> [0x80000138]:sw tp, 8(gp)<br>     |
|   4|[0x80003210]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_val == rs2_val<br> - rs2_val == 8<br> - rs1_val == 8<br>                                                                                                   |[0x80000144]:mulhsu s8, s8, s8<br> [0x80000148]:sw s8, 12(gp)<br>    |
|   5|[0x80003214]<br>0xC0000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                   |[0x80000158]:mulhsu s9, s11, s11<br> [0x8000015c]:sw s9, 16(gp)<br>  |
|   6|[0x80003218]<br>0x00000000|- rs1 : x29<br> - rs2 : x28<br> - rd : x9<br> - rs2_val == 0<br> - rs1_val == -5<br>                                                                                                                                                   |[0x80000168]:mulhsu s1, t4, t3<br> [0x8000016c]:sw s1, 20(gp)<br>    |
|   7|[0x8000321c]<br>0x0000007F|- rs1 : x21<br> - rs2 : x26<br> - rd : x13<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 256<br>                                                                                                       |[0x8000017c]:mulhsu a3, s5, s10<br> [0x80000180]:sw a3, 24(gp)<br>   |
|   8|[0x80003220]<br>0x00000000|- rs1 : x12<br> - rs2 : x30<br> - rd : x23<br> - rs2_val == 1<br> - rs1_val == 1431655765<br>                                                                                                                                          |[0x80000190]:mulhsu s7, a2, t5<br> [0x80000194]:sw s7, 28(gp)<br>    |
|   9|[0x80003224]<br>0x00000005|- rs1 : x18<br> - rs2 : x14<br> - rd : x16<br> - rs1_val > 0 and rs2_val < 0<br>                                                                                                                                                       |[0x800001a0]:mulhsu a6, s2, a4<br> [0x800001a4]:sw a6, 32(gp)<br>    |
|  10|[0x80003228]<br>0x00000000|- rs1 : x7<br> - rs2 : x10<br> - rd : x8<br> - rs2_val == 16384<br> - rs1_val == 16384<br>                                                                                                                                             |[0x800001b0]:mulhsu fp, t2, a0<br> [0x800001b4]:sw fp, 36(gp)<br>    |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x5<br> - rs2 : x11<br> - rd : x27<br> - rs1_val == 2<br>                                                                                                                                                                       |[0x800001c0]:mulhsu s11, t0, a1<br> [0x800001c4]:sw s11, 40(gp)<br>  |
|  12|[0x80003230]<br>0x00000003|- rs1 : x23<br> - rs2 : x2<br> - rd : x12<br> - rs2_val == -17<br> - rs1_val == 4<br>                                                                                                                                                  |[0x800001d0]:mulhsu a2, s7, sp<br> [0x800001d4]:sw a2, 44(gp)<br>    |
|  13|[0x80003234]<br>0x00000000|- rs1 : x4<br> - rs2 : x8<br> - rd : x26<br> - rs2_val == 256<br>                                                                                                                                                                      |[0x800001e0]:mulhsu s10, tp, fp<br> [0x800001e4]:sw s10, 48(gp)<br>  |
|  14|[0x80003238]<br>0x0000000F|- rs1 : x2<br> - rs2 : x31<br> - rd : x10<br> - rs2_val == -4097<br> - rs1_val == 16<br>                                                                                                                                               |[0x800001f4]:mulhsu a0, sp, t6<br> [0x800001f8]:sw a0, 52(gp)<br>    |
|  15|[0x8000323c]<br>0x0000001F|- rs1 : x31<br> - rs2 : x6<br> - rd : x14<br> - rs2_val == -9<br> - rs1_val == 32<br>                                                                                                                                                  |[0x80000204]:mulhsu a4, t6, t1<br> [0x80000208]:sw a4, 56(gp)<br>    |
|  16|[0x80003240]<br>0x0000003F|- rs1 : x28<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == -8388609<br> - rs1_val == 64<br>                                                                                                                                           |[0x80000218]:mulhsu a7, t3, a5<br> [0x8000021c]:sw a7, 60(gp)<br>    |
|  17|[0x80003244]<br>0x0000007F|- rs1 : x11<br> - rs2 : x21<br> - rd : x1<br> - rs2_val == -129<br> - rs1_val == 128<br>                                                                                                                                               |[0x80000228]:mulhsu ra, a1, s5<br> [0x8000022c]:sw ra, 64(gp)<br>    |
|  18|[0x80003248]<br>0x00000000|- rs1 : x6<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == -1048577<br> - rs1_val == 512<br>                                                                                                                                             |[0x80000244]:mulhsu zero, t1, ra<br> [0x80000248]:sw zero, 0(tp)<br> |
|  19|[0x8000324c]<br>0x000003FF|- rs1 : x22<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == -2097153<br> - rs1_val == 1024<br>                                                                                                                                          |[0x80000258]:mulhsu a1, s6, s1<br> [0x8000025c]:sw a1, 4(tp)<br>     |
|  20|[0x80003250]<br>0x000007FF|- rs1 : x17<br> - rs2 : x23<br> - rd : x7<br> - rs1_val == 2048<br>                                                                                                                                                                    |[0x8000026c]:mulhsu t2, a7, s7<br> [0x80000270]:sw t2, 8(tp)<br>     |
|  21|[0x80003254]<br>0x00000FFF|- rs1 : x3<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == -2049<br> - rs1_val == 4096<br>                                                                                                                                             |[0x80000280]:mulhsu s2, gp, s3<br> [0x80000284]:sw s2, 12(tp)<br>    |
|  22|[0x80003258]<br>0x00000000|- rs1 : x0<br> - rs2 : x22<br> - rd : x31<br> - rs2_val == 1024<br>                                                                                                                                                                    |[0x80000294]:mulhsu t6, zero, s6<br> [0x80000298]:sw t6, 16(tp)<br>  |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x30<br> - rs1_val == 32768<br>                                                                                                                                                                   |[0x800002a4]:mulhsu t5, s9, zero<br> [0x800002a8]:sw t5, 20(tp)<br>  |
|  24|[0x80003260]<br>0x00000020|- rs1 : x19<br> - rs2 : x13<br> - rd : x22<br> - rs2_val == 2097152<br> - rs1_val == 65536<br>                                                                                                                                         |[0x800002b4]:mulhsu s6, s3, a3<br> [0x800002b8]:sw s6, 24(tp)<br>    |
|  25|[0x80003264]<br>0x0001FFFF|- rs1 : x20<br> - rs2 : x29<br> - rd : x3<br> - rs1_val == 131072<br>                                                                                                                                                                  |[0x800002c4]:mulhsu gp, s4, t4<br> [0x800002c8]:sw gp, 28(tp)<br>    |
|  26|[0x80003268]<br>0x0003FFFF|- rs1 : x8<br> - rs2 : x25<br> - rd : x29<br> - rs2_val == -2<br> - rs1_val == 262144<br>                                                                                                                                              |[0x800002d4]:mulhsu t4, fp, s9<br> [0x800002d8]:sw t4, 32(tp)<br>    |
|  27|[0x8000326c]<br>0x00002000|- rs1 : x26<br> - rs2 : x20<br> - rd : x28<br> - rs2_val == 67108864<br> - rs1_val == 524288<br>                                                                                                                                       |[0x800002e4]:mulhsu t3, s10, s4<br> [0x800002e8]:sw t3, 36(tp)<br>   |
|  28|[0x80003270]<br>0x000FFFFF|- rs1 : x1<br> - rs2 : x5<br> - rd : x2<br> - rs1_val == 1048576<br>                                                                                                                                                                   |[0x800002f4]:mulhsu sp, ra, t0<br> [0x800002f8]:sw sp, 40(tp)<br>    |
|  29|[0x80003274]<br>0x00000000|- rs1 : x9<br> - rs2 : x18<br> - rd : x6<br> - rs1_val == 2097152<br>                                                                                                                                                                  |[0x80000304]:mulhsu t1, s1, s2<br> [0x80000308]:sw t1, 44(tp)<br>    |
|  30|[0x80003278]<br>0x00100000|- rs1 : x30<br> - rs2 : x17<br> - rd : x21<br> - rs2_val == 1073741824<br> - rs1_val == 4194304<br>                                                                                                                                    |[0x80000314]:mulhsu s5, t5, a7<br> [0x80000318]:sw s5, 48(tp)<br>    |
|  31|[0x8000327c]<br>0x007FFFFD|- rs1 : x10<br> - rs2 : x3<br> - rd : x20<br> - rs2_val == -1025<br> - rs1_val == 8388608<br>                                                                                                                                          |[0x80000324]:mulhsu s4, a0, gp<br> [0x80000328]:sw s4, 52(tp)<br>    |
|  32|[0x80003280]<br>0x00FFFFFF|- rs1 : x13<br> - rs2 : x16<br> - rd : x5<br> - rs1_val == 16777216<br>                                                                                                                                                                |[0x80000334]:mulhsu t0, a3, a6<br> [0x80000338]:sw t0, 56(tp)<br>    |
|  33|[0x80003284]<br>0x01FFBFFF|- rs1_val == 33554432<br>                                                                                                                                                                                                              |[0x80000348]:mulhsu a2, a0, a1<br> [0x8000034c]:sw a2, 60(tp)<br>    |
|  34|[0x80003288]<br>0x03DFFFFF|- rs2_val == -134217729<br> - rs1_val == 67108864<br>                                                                                                                                                                                  |[0x8000035c]:mulhsu a2, a0, a1<br> [0x80000360]:sw a2, 64(tp)<br>    |
|  35|[0x8000328c]<br>0x07FFFFFF|- rs1_val == 134217728<br>                                                                                                                                                                                                             |[0x8000036c]:mulhsu a2, a0, a1<br> [0x80000370]:sw a2, 68(tp)<br>    |
|  36|[0x80003290]<br>0x00000020|- rs2_val == 512<br> - rs1_val == 268435456<br>                                                                                                                                                                                        |[0x8000037c]:mulhsu a2, a0, a1<br> [0x80000380]:sw a2, 72(tp)<br>    |
|  37|[0x80003294]<br>0x0FFFFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                             |[0x80000390]:mulhsu a2, a0, a1<br> [0x80000394]:sw a2, 76(tp)<br>    |
|  38|[0x80003298]<br>0x00800000|- rs2_val == 33554432<br> - rs1_val == 1073741824<br>                                                                                                                                                                                  |[0x800003a0]:mulhsu a2, a0, a1<br> [0x800003a4]:sw a2, 80(tp)<br>    |
|  39|[0x8000329c]<br>0xFFFFFFFF|- rs2_val == 8388608<br> - rs1_val == -2<br>                                                                                                                                                                                           |[0x800003b0]:mulhsu a2, a0, a1<br> [0x800003b4]:sw a2, 84(tp)<br>    |
|  40|[0x800032a0]<br>0xFFFFFFFD|- rs2_val == -16777217<br> - rs1_val == -3<br>                                                                                                                                                                                         |[0x800003c4]:mulhsu a2, a0, a1<br> [0x800003c8]:sw a2, 88(tp)<br>    |
|  41|[0x800032a4]<br>0xFFFFFFFF|- rs2_val == 64<br> - rs1_val == -9<br>                                                                                                                                                                                                |[0x800003d4]:mulhsu a2, a0, a1<br> [0x800003d8]:sw a2, 92(tp)<br>    |
|  42|[0x800032a8]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                                                                                   |[0x800003e4]:mulhsu a2, a0, a1<br> [0x800003e8]:sw a2, 96(tp)<br>    |
|  43|[0x800032ac]<br>0x00003FFE|- rs2_val == -262145<br>                                                                                                                                                                                                               |[0x800003f8]:mulhsu a2, a0, a1<br> [0x800003fc]:sw a2, 100(tp)<br>   |
|  44|[0x800032b0]<br>0xFFF8003F|- rs2_val == -524289<br> - rs1_val == -524289<br>                                                                                                                                                                                      |[0x80000410]:mulhsu a2, a0, a1<br> [0x80000414]:sw a2, 104(tp)<br>   |
|  45|[0x800032b4]<br>0x0003FEFF|- rs2_val == -4194305<br>                                                                                                                                                                                                              |[0x80000424]:mulhsu a2, a0, a1<br> [0x80000428]:sw a2, 108(tp)<br>   |
|  46|[0x800032b8]<br>0x0FDFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                                                             |[0x80000438]:mulhsu a2, a0, a1<br> [0x8000043c]:sw a2, 112(tp)<br>   |
|  47|[0x800032bc]<br>0xFFFF81FF|- rs2_val == -67108865<br> - rs1_val == -32769<br>                                                                                                                                                                                     |[0x80000450]:mulhsu a2, a0, a1<br> [0x80000454]:sw a2, 116(tp)<br>   |
|  48|[0x800032c0]<br>0xFFE1FFFF|- rs2_val == -268435457<br> - rs1_val == -2097153<br>                                                                                                                                                                                  |[0x80000468]:mulhsu a2, a0, a1<br> [0x8000046c]:sw a2, 120(tp)<br>   |
|  49|[0x800032c4]<br>0x037FFFFF|- rs2_val == -536870913<br>                                                                                                                                                                                                            |[0x8000047c]:mulhsu a2, a0, a1<br> [0x80000480]:sw a2, 124(tp)<br>   |
|  50|[0x800032c8]<br>0xFFFFFFEA|- rs2_val == 1431655765<br> - rs1_val == -65<br>                                                                                                                                                                                       |[0x80000490]:mulhsu a2, a0, a1<br> [0x80000494]:sw a2, 128(tp)<br>   |
|  51|[0x800032cc]<br>0x0000002A|- rs2_val == -1431655766<br>                                                                                                                                                                                                           |[0x800004a4]:mulhsu a2, a0, a1<br> [0x800004a8]:sw a2, 132(tp)<br>   |
|  52|[0x800032d0]<br>0xFFFFFFE1|- rs1_val == -33<br>                                                                                                                                                                                                                   |[0x800004b8]:mulhsu a2, a0, a1<br> [0x800004bc]:sw a2, 136(tp)<br>   |
|  53|[0x800032d4]<br>0xFFFFFFBF|- rs1_val == -129<br>                                                                                                                                                                                                                  |[0x800004c8]:mulhsu a2, a0, a1<br> [0x800004cc]:sw a2, 140(tp)<br>   |
|  54|[0x800032d8]<br>0xFFFFFFFF|- rs2_val == 128<br> - rs1_val == -257<br>                                                                                                                                                                                             |[0x800004d8]:mulhsu a2, a0, a1<br> [0x800004dc]:sw a2, 144(tp)<br>   |
|  55|[0x800032dc]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                                                                  |[0x800004e8]:mulhsu a2, a0, a1<br> [0x800004ec]:sw a2, 148(tp)<br>   |
|  56|[0x800032e0]<br>0xFFFFFC0F|- rs1_val == -1025<br>                                                                                                                                                                                                                 |[0x800004fc]:mulhsu a2, a0, a1<br> [0x80000500]:sw a2, 152(tp)<br>   |
|  57|[0x800032e4]<br>0xFFFFFFFF|- rs2_val == 16<br> - rs1_val == -2049<br>                                                                                                                                                                                             |[0x80000510]:mulhsu a2, a0, a1<br> [0x80000514]:sw a2, 156(tp)<br>   |
|  58|[0x800032e8]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                                                                 |[0x80000528]:mulhsu a2, a0, a1<br> [0x8000052c]:sw a2, 160(tp)<br>   |
|  59|[0x800032ec]<br>0xFFFFFFEF|- rs1_val == -8193<br>                                                                                                                                                                                                                 |[0x8000053c]:mulhsu a2, a0, a1<br> [0x80000540]:sw a2, 164(tp)<br>   |
|  60|[0x800032f0]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                                                                                |[0x80000550]:mulhsu a2, a0, a1<br> [0x80000554]:sw a2, 168(tp)<br>   |
|  61|[0x800032f4]<br>0xFFFFFFDF|- rs1_val == -65537<br>                                                                                                                                                                                                                |[0x80000564]:mulhsu a2, a0, a1<br> [0x80000568]:sw a2, 172(tp)<br>   |
|  62|[0x800032f8]<br>0xFFFFFFFF|- rs2_val == 32<br> - rs1_val == -131073<br>                                                                                                                                                                                           |[0x80000578]:mulhsu a2, a0, a1<br> [0x8000057c]:sw a2, 176(tp)<br>   |
|  63|[0x800032fc]<br>0xFFFBFFFF|- rs2_val == -3<br> - rs1_val == -262145<br>                                                                                                                                                                                           |[0x8000058c]:mulhsu a2, a0, a1<br> [0x80000590]:sw a2, 180(tp)<br>   |
|  64|[0x80003300]<br>0xFFF1FFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                              |[0x800005a4]:mulhsu a2, a0, a1<br> [0x800005a8]:sw a2, 184(tp)<br>   |
|  65|[0x80003304]<br>0xFFFFFFFB|- rs2_val == 4096<br> - rs1_val == -4194305<br>                                                                                                                                                                                        |[0x800005b8]:mulhsu a2, a0, a1<br> [0x800005bc]:sw a2, 188(tp)<br>   |
|  66|[0x80003308]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                              |[0x800005cc]:mulhsu a2, a0, a1<br> [0x800005d0]:sw a2, 192(tp)<br>   |
|  67|[0x8000330c]<br>0xFE01FFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                             |[0x800005e4]:mulhsu a2, a0, a1<br> [0x800005e8]:sw a2, 196(tp)<br>   |
|  68|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                             |[0x800005f8]:mulhsu a2, a0, a1<br> [0x800005fc]:sw a2, 200(tp)<br>   |
|  69|[0x80003314]<br>0xFEFFFFFF|- rs2_val == 536870912<br> - rs1_val == -134217729<br>                                                                                                                                                                                 |[0x8000060c]:mulhsu a2, a0, a1<br> [0x80000610]:sw a2, 204(tp)<br>   |
|  70|[0x80003318]<br>0xF07FFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                            |[0x80000624]:mulhsu a2, a0, a1<br> [0x80000628]:sw a2, 208(tp)<br>   |
|  71|[0x8000331c]<br>0xE000FFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                            |[0x8000063c]:mulhsu a2, a0, a1<br> [0x80000640]:sw a2, 212(tp)<br>   |
|  72|[0x80003320]<br>0xFF7FFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                           |[0x80000650]:mulhsu a2, a0, a1<br> [0x80000654]:sw a2, 216(tp)<br>   |
|  73|[0x80003324]<br>0xAAAD5555|- rs1_val == -1431655766<br>                                                                                                                                                                                                           |[0x80000668]:mulhsu a2, a0, a1<br> [0x8000066c]:sw a2, 220(tp)<br>   |
|  74|[0x80003328]<br>0x00000000|- rs2_val == 2<br>                                                                                                                                                                                                                     |[0x80000678]:mulhsu a2, a0, a1<br> [0x8000067c]:sw a2, 224(tp)<br>   |
|  75|[0x8000332c]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                                                  |[0x80000688]:mulhsu a2, a0, a1<br> [0x8000068c]:sw a2, 228(tp)<br>   |
|  76|[0x80003330]<br>0xFFFFFFFF|- rs2_val == 32768<br>                                                                                                                                                                                                                 |[0x8000069c]:mulhsu a2, a0, a1<br> [0x800006a0]:sw a2, 232(tp)<br>   |
|  77|[0x80003334]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                                                                 |[0x800006ac]:mulhsu a2, a0, a1<br> [0x800006b0]:sw a2, 236(tp)<br>   |
|  78|[0x80003338]<br>0xFFFFFF7F|- rs2_val == 131072<br>                                                                                                                                                                                                                |[0x800006c0]:mulhsu a2, a0, a1<br> [0x800006c4]:sw a2, 240(tp)<br>   |
|  79|[0x8000333c]<br>0xFFFFFFFF|- rs2_val == 262144<br>                                                                                                                                                                                                                |[0x800006d0]:mulhsu a2, a0, a1<br> [0x800006d4]:sw a2, 244(tp)<br>   |
|  80|[0x80003340]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                                                                |[0x800006e0]:mulhsu a2, a0, a1<br> [0x800006e4]:sw a2, 248(tp)<br>   |
|  81|[0x80003344]<br>0x00000000|- rs1_val == 1<br> - rs2_val == 1048576<br>                                                                                                                                                                                            |[0x800006f0]:mulhsu a2, a0, a1<br> [0x800006f4]:sw a2, 252(tp)<br>   |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 4194304<br>                                                                                                                                                                                                               |[0x80000700]:mulhsu a2, a0, a1<br> [0x80000704]:sw a2, 256(tp)<br>   |
|  83|[0x8000334c]<br>0x00000200|- rs2_val == 16777216<br>                                                                                                                                                                                                              |[0x80000710]:mulhsu a2, a0, a1<br> [0x80000714]:sw a2, 260(tp)<br>   |
|  84|[0x80003350]<br>0x00004000|- rs2_val == 134217728<br>                                                                                                                                                                                                             |[0x80000720]:mulhsu a2, a0, a1<br> [0x80000724]:sw a2, 264(tp)<br>   |
|  85|[0x80003354]<br>0xFFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                             |[0x80000730]:mulhsu a2, a0, a1<br> [0x80000734]:sw a2, 268(tp)<br>   |
|  86|[0x80003358]<br>0x3FFFFFF7|- rs2_val == -33<br>                                                                                                                                                                                                                   |[0x80000740]:mulhsu a2, a0, a1<br> [0x80000744]:sw a2, 272(tp)<br>   |
|  87|[0x8000335c]<br>0x00000008|- rs2_val == -65<br>                                                                                                                                                                                                                   |[0x80000750]:mulhsu a2, a0, a1<br> [0x80000754]:sw a2, 276(tp)<br>   |
|  88|[0x80003360]<br>0xF8000007|- rs2_val == -257<br>                                                                                                                                                                                                                  |[0x80000764]:mulhsu a2, a0, a1<br> [0x80000768]:sw a2, 280(tp)<br>   |
|  89|[0x80003364]<br>0x000003FF|- rs2_val == -513<br>                                                                                                                                                                                                                  |[0x80000774]:mulhsu a2, a0, a1<br> [0x80000778]:sw a2, 284(tp)<br>   |
|  90|[0x80003368]<br>0x00FFFFDF|- rs2_val == -8193<br>                                                                                                                                                                                                                 |[0x80000788]:mulhsu a2, a0, a1<br> [0x8000078c]:sw a2, 288(tp)<br>   |
|  91|[0x8000336c]<br>0x0007FFFD|- rs2_val == -16385<br>                                                                                                                                                                                                                |[0x8000079c]:mulhsu a2, a0, a1<br> [0x800007a0]:sw a2, 292(tp)<br>   |
|  92|[0x80003370]<br>0x000001FF|- rs2_val == -32769<br>                                                                                                                                                                                                                |[0x800007b0]:mulhsu a2, a0, a1<br> [0x800007b4]:sw a2, 296(tp)<br>   |
|  93|[0x80003374]<br>0x00001FFF|- rs2_val == -65537<br> - rs1_val == 8192<br>                                                                                                                                                                                          |[0x800007c4]:mulhsu a2, a0, a1<br> [0x800007c8]:sw a2, 300(tp)<br>   |
|  94|[0x80003378]<br>0x3FFF7FFF|- rs2_val == -131073<br>                                                                                                                                                                                                               |[0x800007d8]:mulhsu a2, a0, a1<br> [0x800007dc]:sw a2, 304(tp)<br>   |
|  95|[0x80003380]<br>0xFF7FFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                             |[0x800007fc]:mulhsu a2, a0, a1<br> [0x80000800]:sw a2, 312(tp)<br>   |
|  96|[0x8000338c]<br>0x00007FFF|- rs2_val == -5<br>                                                                                                                                                                                                                    |[0x80000830]:mulhsu a2, a0, a1<br> [0x80000834]:sw a2, 324(tp)<br>   |
