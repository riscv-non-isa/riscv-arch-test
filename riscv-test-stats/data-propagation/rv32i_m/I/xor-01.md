
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000860')]      |
| SIG_REGION                | [('0x80003204', '0x800033a4', '104 words')]      |
| COV_LABELS                | xor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xor-01.S/xor-01.S    |
| Total Number of coverpoints| 246     |
| Total Signature Updates   | 101      |
| Total Coverpoints Covered | 246      |
| STAT1                     | 97      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000810]:xor a2, a0, a1
      [0x80000814]:sw a2, 308(tp)
 -- Signature Address: 0x80003390 Data: 0x80800000
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == 8388608
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:xor a2, a0, a1
      [0x80000824]:sw a2, 312(tp)
 -- Signature Address: 0x80003394 Data: 0x80800000
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
      - rs1_val == 8388608




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000834]:xor a2, a0, a1
      [0x80000838]:sw a2, 316(tp)
 -- Signature Address: 0x80003398 Data: 0x00000900
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 2048
      - rs1_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000848]:xor a2, a0, a1
      [0x8000084c]:sw a2, 320(tp)
 -- Signature Address: 0x8000339c Data: 0xFFFFEDFF
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -4097
      - rs1_val == 512






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
|   1|[0x80003210]<br>0x00000000|- opcode : xor<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 8388608<br> - rs1_val == 8388608<br>                                |[0x80000108]:xor fp, tp, tp<br> [0x8000010c]:sw fp, 0(sp)<br>      |
|   2|[0x80003214]<br>0x20000000|- rs1 : x6<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 536870912<br>                                                                                         |[0x80000118]:xor t0, t1, t0<br> [0x8000011c]:sw t0, 4(sp)<br>      |
|   3|[0x80003218]<br>0x7FFDFFFF|- rs1 : x9<br> - rs2 : x18<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 131072<br> - rs1_val == 2147483647<br>                                                                          |[0x8000012c]:xor s1, s1, s2<br> [0x80000130]:sw s1, 8(sp)<br>      |
|   4|[0x8000321c]<br>0xFFFFFEFE|- rs1 : x27<br> - rs2 : x30<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -257<br>                                                           |[0x8000013c]:xor s6, s11, t5<br> [0x80000140]:sw s6, 12(sp)<br>    |
|   5|[0x80003220]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x8000014c]:xor s8, s8, s8<br> [0x80000150]:sw s8, 16(sp)<br>     |
|   6|[0x80003224]<br>0x00080000|- rs1 : x8<br> - rs2 : x27<br> - rd : x11<br> - rs2_val == 0<br> - rs1_val == 524288<br>                                                                                                                                          |[0x8000015c]:xor a1, fp, s11<br> [0x80000160]:sw a1, 20(sp)<br>    |
|   7|[0x80003228]<br>0x80000004|- rs1 : x7<br> - rs2 : x31<br> - rd : x15<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -5<br>                                                                  |[0x80000170]:xor a5, t2, t6<br> [0x80000174]:sw a5, 24(sp)<br>     |
|   8|[0x8000322c]<br>0xFFFF7FFE|- rs1 : x22<br> - rs2 : x1<br> - rd : x16<br> - rs2_val == 1<br> - rs1_val == -32769<br>                                                                                                                                          |[0x80000184]:xor a6, s6, ra<br> [0x80000188]:sw a6, 28(sp)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x30<br> - rs2 : x25<br> - rd : x27<br>                                                                                                                                                                                    |[0x80000194]:xor s11, t5, s9<br> [0x80000198]:sw s11, 32(sp)<br>   |
|  10|[0x80003234]<br>0xFFFFFFFD|- rs1 : x18<br> - rs2 : x19<br> - rd : x20<br> - rs1_val == 2<br>                                                                                                                                                                 |[0x800001a4]:xor s4, s2, s3<br> [0x800001a8]:sw s4, 36(sp)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x21<br> - rs2 : x17<br> - rd : x29<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                                                                                                              |[0x800001b4]:xor t4, s5, a7<br> [0x800001b8]:sw t4, 40(sp)<br>     |
|  12|[0x8000323c]<br>0x5555555D|- rs1 : x31<br> - rs2 : x10<br> - rd : x12<br> - rs2_val == 1431655765<br> - rs1_val == 8<br>                                                                                                                                     |[0x800001c8]:xor a2, t6, a0<br> [0x800001cc]:sw a2, 44(sp)<br>     |
|  13|[0x80003240]<br>0xFFFFFFEE|- rs1 : x12<br> - rs2 : x29<br> - rd : x21<br> - rs2_val == -2<br> - rs1_val == 16<br>                                                                                                                                            |[0x800001d8]:xor s5, a2, t4<br> [0x800001dc]:sw s5, 48(sp)<br>     |
|  14|[0x80003244]<br>0x00000420|- rs1 : x1<br> - rs2 : x7<br> - rd : x4<br> - rs2_val == 1024<br> - rs1_val == 32<br>                                                                                                                                             |[0x800001e8]:xor tp, ra, t2<br> [0x800001ec]:sw tp, 52(sp)<br>     |
|  15|[0x80003248]<br>0xFFFFFFBE|- rs1 : x5<br> - rs2 : x3<br> - rd : x10<br> - rs1_val == 64<br>                                                                                                                                                                  |[0x800001f8]:xor a0, t0, gp<br> [0x800001fc]:sw a0, 56(sp)<br>     |
|  16|[0x8000324c]<br>0xFFFFFF7B|- rs1 : x11<br> - rs2 : x8<br> - rd : x28<br> - rs2_val == -5<br> - rs1_val == 128<br>                                                                                                                                            |[0x80000208]:xor t3, a1, fp<br> [0x8000020c]:sw t3, 60(sp)<br>     |
|  17|[0x80003250]<br>0x00000100|- rs1 : x28<br> - rs2 : x0<br> - rd : x18<br> - rs1_val == 256<br>                                                                                                                                                                |[0x8000021c]:xor s2, t3, zero<br> [0x80000220]:sw s2, 64(sp)<br>   |
|  18|[0x80003254]<br>0x00000000|- rs1 : x23<br> - rs2 : x22<br> - rd : x0<br> - rs2_val == -4097<br> - rs1_val == 512<br>                                                                                                                                         |[0x80000230]:xor zero, s7, s6<br> [0x80000234]:sw zero, 68(sp)<br> |
|  19|[0x80003258]<br>0xFFFFF3FF|- rs1 : x25<br> - rs2 : x13<br> - rd : x7<br> - rs2_val == -2049<br> - rs1_val == 1024<br>                                                                                                                                        |[0x80000244]:xor t2, s9, a3<br> [0x80000248]:sw t2, 72(sp)<br>     |
|  20|[0x8000325c]<br>0xFFFFF7FE|- rs1 : x3<br> - rs2 : x16<br> - rd : x6<br> - rs1_val == 2048<br>                                                                                                                                                                |[0x80000260]:xor t1, gp, a6<br> [0x80000264]:sw t1, 0(tp)<br>      |
|  21|[0x80003260]<br>0x00001005|- rs1 : x13<br> - rs2 : x26<br> - rd : x30<br> - rs1_val == 4096<br>                                                                                                                                                              |[0x80000270]:xor t5, a3, s10<br> [0x80000274]:sw t5, 4(tp)<br>     |
|  22|[0x80003264]<br>0xFBFFDFFF|- rs1 : x17<br> - rs2 : x11<br> - rd : x3<br> - rs2_val == -67108865<br> - rs1_val == 8192<br>                                                                                                                                    |[0x80000284]:xor gp, a7, a1<br> [0x80000288]:sw gp, 8(tp)<br>      |
|  23|[0x80003268]<br>0x00004001|- rs1 : x2<br> - rs2 : x28<br> - rd : x14<br> - rs1_val == 16384<br>                                                                                                                                                              |[0x80000294]:xor a4, sp, t3<br> [0x80000298]:sw a4, 12(tp)<br>     |
|  24|[0x8000326c]<br>0xFFBF7FFF|- rs1 : x10<br> - rs2 : x6<br> - rd : x2<br> - rs2_val == -4194305<br> - rs1_val == 32768<br>                                                                                                                                     |[0x800002a8]:xor sp, a0, t1<br> [0x800002ac]:sw sp, 16(tp)<br>     |
|  25|[0x80003270]<br>0xFFEEFFFF|- rs1 : x14<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == -1048577<br> - rs1_val == 65536<br>                                                                                                                                   |[0x800002bc]:xor a7, a4, a5<br> [0x800002c0]:sw a7, 20(tp)<br>     |
|  26|[0x80003274]<br>0x10020000|- rs1 : x19<br> - rs2 : x14<br> - rd : x25<br> - rs2_val == 268435456<br> - rs1_val == 131072<br>                                                                                                                                 |[0x800002cc]:xor s9, s3, a4<br> [0x800002d0]:sw s9, 24(tp)<br>     |
|  27|[0x80003278]<br>0x40000000|- rs1 : x0<br> - rs2 : x12<br> - rd : x13<br> - rs2_val == 1073741824<br>                                                                                                                                                         |[0x800002e0]:xor a3, zero, a2<br> [0x800002e4]:sw a3, 28(tp)<br>   |
|  28|[0x8000327c]<br>0x00900000|- rs1 : x16<br> - rs2 : x2<br> - rd : x1<br> - rs1_val == 1048576<br>                                                                                                                                                             |[0x800002f0]:xor ra, a6, sp<br> [0x800002f4]:sw ra, 32(tp)<br>     |
|  29|[0x80003280]<br>0x00200400|- rs1 : x26<br> - rs2 : x23<br> - rd : x31<br> - rs1_val == 2097152<br>                                                                                                                                                           |[0x80000300]:xor t6, s10, s7<br> [0x80000304]:sw t6, 36(tp)<br>    |
|  30|[0x80003284]<br>0x00400003|- rs1 : x15<br> - rs2 : x20<br> - rd : x26<br> - rs1_val == 4194304<br>                                                                                                                                                           |[0x80000310]:xor s10, a5, s4<br> [0x80000314]:sw s10, 40(tp)<br>   |
|  31|[0x80003288]<br>0xFEFFFF7F|- rs1 : x29<br> - rs2 : x9<br> - rd : x23<br> - rs2_val == -129<br> - rs1_val == 16777216<br>                                                                                                                                     |[0x80000320]:xor s7, t4, s1<br> [0x80000324]:sw s7, 44(tp)<br>     |
|  32|[0x8000328c]<br>0xA8AAAAAA|- rs1 : x20<br> - rs2 : x21<br> - rd : x19<br> - rs2_val == -1431655766<br> - rs1_val == 33554432<br>                                                                                                                             |[0x80000334]:xor s3, s4, s5<br> [0x80000338]:sw s3, 48(tp)<br>     |
|  33|[0x80003290]<br>0x04000004|- rs1_val == 67108864<br>                                                                                                                                                                                                         |[0x80000344]:xor a2, a0, a1<br> [0x80000348]:sw a2, 52(tp)<br>     |
|  34|[0x80003294]<br>0xB7FFFFFF|- rs2_val == -1073741825<br> - rs1_val == 134217728<br>                                                                                                                                                                           |[0x80000358]:xor a2, a0, a1<br> [0x8000035c]:sw a2, 56(tp)<br>     |
|  35|[0x80003298]<br>0xEFFFFFFF|- rs1_val == 268435456<br>                                                                                                                                                                                                        |[0x80000368]:xor a2, a0, a1<br> [0x8000036c]:sw a2, 60(tp)<br>     |
|  36|[0x8000329c]<br>0x20004000|- rs2_val == 16384<br> - rs1_val == 536870912<br>                                                                                                                                                                                 |[0x80000378]:xor a2, a0, a1<br> [0x8000037c]:sw a2, 64(tp)<br>     |
|  37|[0x800032a0]<br>0x40000800|- rs2_val == 2048<br> - rs1_val == 1073741824<br>                                                                                                                                                                                 |[0x8000038c]:xor a2, a0, a1<br> [0x80000390]:sw a2, 68(tp)<br>     |
|  38|[0x800032a4]<br>0x00002001|- rs2_val == -8193<br> - rs1_val == -2<br>                                                                                                                                                                                        |[0x800003a0]:xor a2, a0, a1<br> [0x800003a4]:sw a2, 72(tp)<br>     |
|  39|[0x800032a8]<br>0x00000002|- rs1_val == -3<br>                                                                                                                                                                                                               |[0x800003b0]:xor a2, a0, a1<br> [0x800003b4]:sw a2, 76(tp)<br>     |
|  40|[0x800032ac]<br>0xFFFBFFF7|- rs2_val == 262144<br> - rs1_val == -9<br>                                                                                                                                                                                       |[0x800003c0]:xor a2, a0, a1<br> [0x800003c4]:sw a2, 80(tp)<br>     |
|  41|[0x800032b0]<br>0x00200010|- rs2_val == -2097153<br> - rs1_val == -17<br>                                                                                                                                                                                    |[0x800003d4]:xor a2, a0, a1<br> [0x800003d8]:sw a2, 84(tp)<br>     |
|  42|[0x800032b4]<br>0x00000820|- rs1_val == -33<br>                                                                                                                                                                                                              |[0x800003e8]:xor a2, a0, a1<br> [0x800003ec]:sw a2, 88(tp)<br>     |
|  43|[0x800032b8]<br>0x00000000|- rs2_val == -65<br> - rs1_val == -65<br>                                                                                                                                                                                         |[0x800003f8]:xor a2, a0, a1<br> [0x800003fc]:sw a2, 92(tp)<br>     |
|  44|[0x800032bc]<br>0x00000180|- rs1_val == -129<br>                                                                                                                                                                                                             |[0x80000408]:xor a2, a0, a1<br> [0x8000040c]:sw a2, 96(tp)<br>     |
|  45|[0x800032c0]<br>0x00040800|- rs2_val == -262145<br> - rs1_val == -2049<br>                                                                                                                                                                                   |[0x80000420]:xor a2, a0, a1<br> [0x80000424]:sw a2, 100(tp)<br>    |
|  46|[0x800032c4]<br>0xFDF7FFFF|- rs2_val == -524289<br>                                                                                                                                                                                                          |[0x80000434]:xor a2, a0, a1<br> [0x80000438]:sw a2, 104(tp)<br>    |
|  47|[0x800032c8]<br>0xFE7FFFFF|- rs2_val == -8388609<br>                                                                                                                                                                                                         |[0x80000448]:xor a2, a0, a1<br> [0x8000044c]:sw a2, 108(tp)<br>    |
|  48|[0x800032cc]<br>0x01000040|- rs2_val == -16777217<br>                                                                                                                                                                                                        |[0x8000045c]:xor a2, a0, a1<br> [0x80000460]:sw a2, 112(tp)<br>    |
|  49|[0x800032d0]<br>0xF5FFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                                                        |[0x80000470]:xor a2, a0, a1<br> [0x80000474]:sw a2, 116(tp)<br>    |
|  50|[0x800032d4]<br>0xF7FFFFF8|- rs2_val == -134217729<br>                                                                                                                                                                                                       |[0x80000484]:xor a2, a0, a1<br> [0x80000488]:sw a2, 120(tp)<br>    |
|  51|[0x800032d8]<br>0xEFFFFFFA|- rs2_val == -268435457<br>                                                                                                                                                                                                       |[0x80000498]:xor a2, a0, a1<br> [0x8000049c]:sw a2, 124(tp)<br>    |
|  52|[0x800032dc]<br>0x20000009|- rs2_val == -536870913<br>                                                                                                                                                                                                       |[0x800004ac]:xor a2, a0, a1<br> [0x800004b0]:sw a2, 128(tp)<br>    |
|  53|[0x800032e0]<br>0x00000000|- rs1_val == -257<br>                                                                                                                                                                                                             |[0x800004bc]:xor a2, a0, a1<br> [0x800004c0]:sw a2, 132(tp)<br>    |
|  54|[0x800032e4]<br>0x01000200|- rs1_val == -513<br>                                                                                                                                                                                                             |[0x800004d0]:xor a2, a0, a1<br> [0x800004d4]:sw a2, 136(tp)<br>    |
|  55|[0x800032e8]<br>0x00000500|- rs1_val == -1025<br>                                                                                                                                                                                                            |[0x800004e0]:xor a2, a0, a1<br> [0x800004e4]:sw a2, 140(tp)<br>    |
|  56|[0x800032ec]<br>0x20001000|- rs1_val == -4097<br>                                                                                                                                                                                                            |[0x800004f8]:xor a2, a0, a1<br> [0x800004fc]:sw a2, 144(tp)<br>    |
|  57|[0x800032f0]<br>0xFFFF5FFF|- rs2_val == 32768<br> - rs1_val == -8193<br>                                                                                                                                                                                     |[0x8000050c]:xor a2, a0, a1<br> [0x80000510]:sw a2, 148(tp)<br>    |
|  58|[0x800032f4]<br>0x00005000|- rs1_val == -16385<br>                                                                                                                                                                                                           |[0x80000524]:xor a2, a0, a1<br> [0x80000528]:sw a2, 152(tp)<br>    |
|  59|[0x800032f8]<br>0x00010003|- rs1_val == -65537<br>                                                                                                                                                                                                           |[0x80000538]:xor a2, a0, a1<br> [0x8000053c]:sw a2, 156(tp)<br>    |
|  60|[0x800032fc]<br>0xFBFDFFFF|- rs2_val == 67108864<br> - rs1_val == -131073<br>                                                                                                                                                                                |[0x8000054c]:xor a2, a0, a1<br> [0x80000550]:sw a2, 160(tp)<br>    |
|  61|[0x80003300]<br>0xEFFBFFFF|- rs1_val == -262145<br>                                                                                                                                                                                                          |[0x80000560]:xor a2, a0, a1<br> [0x80000564]:sw a2, 164(tp)<br>    |
|  62|[0x80003304]<br>0xFFF7FFF6|- rs1_val == -524289<br>                                                                                                                                                                                                          |[0x80000574]:xor a2, a0, a1<br> [0x80000578]:sw a2, 168(tp)<br>    |
|  63|[0x80003308]<br>0x7FEFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                         |[0x80000588]:xor a2, a0, a1<br> [0x8000058c]:sw a2, 172(tp)<br>    |
|  64|[0x8000330c]<br>0xFFDFFFFB|- rs1_val == -2097153<br>                                                                                                                                                                                                         |[0x8000059c]:xor a2, a0, a1<br> [0x800005a0]:sw a2, 176(tp)<br>    |
|  65|[0x80003310]<br>0x00400006|- rs1_val == -4194305<br>                                                                                                                                                                                                         |[0x800005b0]:xor a2, a0, a1<br> [0x800005b4]:sw a2, 180(tp)<br>    |
|  66|[0x80003314]<br>0x00800008|- rs2_val == -9<br> - rs1_val == -8388609<br>                                                                                                                                                                                     |[0x800005c4]:xor a2, a0, a1<br> [0x800005c8]:sw a2, 184(tp)<br>    |
|  67|[0x80003318]<br>0x03000000|- rs1_val == -16777217<br>                                                                                                                                                                                                        |[0x800005dc]:xor a2, a0, a1<br> [0x800005e0]:sw a2, 188(tp)<br>    |
|  68|[0x8000331c]<br>0x02000400|- rs2_val == -1025<br> - rs1_val == -33554433<br>                                                                                                                                                                                 |[0x800005f0]:xor a2, a0, a1<br> [0x800005f4]:sw a2, 192(tp)<br>    |
|  69|[0x80003320]<br>0x04008000|- rs2_val == -32769<br> - rs1_val == -67108865<br>                                                                                                                                                                                |[0x80000608]:xor a2, a0, a1<br> [0x8000060c]:sw a2, 196(tp)<br>    |
|  70|[0x80003324]<br>0xF7FFDFFF|- rs2_val == 8192<br> - rs1_val == -134217729<br>                                                                                                                                                                                 |[0x8000061c]:xor a2, a0, a1<br> [0x80000620]:sw a2, 200(tp)<br>    |
|  71|[0x80003328]<br>0xE7FFFFFF|- rs2_val == 134217728<br> - rs1_val == -268435457<br>                                                                                                                                                                            |[0x80000630]:xor a2, a0, a1<br> [0x80000634]:sw a2, 204(tp)<br>    |
|  72|[0x8000332c]<br>0xDFFFFEFF|- rs2_val == 256<br> - rs1_val == -536870913<br>                                                                                                                                                                                  |[0x80000644]:xor a2, a0, a1<br> [0x80000648]:sw a2, 208(tp)<br>    |
|  73|[0x80003330]<br>0xBFFFFFDF|- rs2_val == 32<br> - rs1_val == -1073741825<br>                                                                                                                                                                                  |[0x80000658]:xor a2, a0, a1<br> [0x8000065c]:sw a2, 212(tp)<br>    |
|  74|[0x80003334]<br>0xAAAAAAA9|- rs1_val == 1431655765<br>                                                                                                                                                                                                       |[0x8000066c]:xor a2, a0, a1<br> [0x80000670]:sw a2, 216(tp)<br>    |
|  75|[0x80003338]<br>0xAAAAAAAC|- rs1_val == -1431655766<br>                                                                                                                                                                                                      |[0x80000680]:xor a2, a0, a1<br> [0x80000684]:sw a2, 220(tp)<br>    |
|  76|[0x8000333c]<br>0xFFFFFF7D|- rs2_val == 2<br>                                                                                                                                                                                                                |[0x80000690]:xor a2, a0, a1<br> [0x80000694]:sw a2, 224(tp)<br>    |
|  77|[0x80003340]<br>0xFFFFFFD7|- rs2_val == 8<br>                                                                                                                                                                                                                |[0x800006a0]:xor a2, a0, a1<br> [0x800006a4]:sw a2, 228(tp)<br>    |
|  78|[0x80003344]<br>0xC0000010|- rs2_val == 16<br>                                                                                                                                                                                                               |[0x800006b0]:xor a2, a0, a1<br> [0x800006b4]:sw a2, 232(tp)<br>    |
|  79|[0x80003348]<br>0xFBFFFFBF|- rs2_val == 64<br>                                                                                                                                                                                                               |[0x800006c4]:xor a2, a0, a1<br> [0x800006c8]:sw a2, 236(tp)<br>    |
|  80|[0x8000334c]<br>0x7FFFFF7F|- rs2_val == 128<br>                                                                                                                                                                                                              |[0x800006d8]:xor a2, a0, a1<br> [0x800006dc]:sw a2, 240(tp)<br>    |
|  81|[0x80003350]<br>0x10000200|- rs2_val == 512<br>                                                                                                                                                                                                              |[0x800006e8]:xor a2, a0, a1<br> [0x800006ec]:sw a2, 244(tp)<br>    |
|  82|[0x80003354]<br>0x00480000|- rs2_val == 524288<br>                                                                                                                                                                                                           |[0x800006f8]:xor a2, a0, a1<br> [0x800006fc]:sw a2, 248(tp)<br>    |
|  83|[0x80003358]<br>0x00300000|- rs2_val == 1048576<br>                                                                                                                                                                                                          |[0x80000708]:xor a2, a0, a1<br> [0x8000070c]:sw a2, 252(tp)<br>    |
|  84|[0x8000335c]<br>0xFFDF7FFF|- rs2_val == 2097152<br>                                                                                                                                                                                                          |[0x8000071c]:xor a2, a0, a1<br> [0x80000720]:sw a2, 256(tp)<br>    |
|  85|[0x80003360]<br>0xFFBFFFFE|- rs2_val == 4194304<br>                                                                                                                                                                                                          |[0x8000072c]:xor a2, a0, a1<br> [0x80000730]:sw a2, 260(tp)<br>    |
|  86|[0x80003364]<br>0x00010200|- rs2_val == -65537<br>                                                                                                                                                                                                           |[0x80000740]:xor a2, a0, a1<br> [0x80000744]:sw a2, 264(tp)<br>    |
|  87|[0x80003368]<br>0xFEFFFFFA|- rs2_val == 16777216<br>                                                                                                                                                                                                         |[0x80000750]:xor a2, a0, a1<br> [0x80000754]:sw a2, 268(tp)<br>    |
|  88|[0x8000336c]<br>0xFDFFFFF8|- rs2_val == 33554432<br>                                                                                                                                                                                                         |[0x80000760]:xor a2, a0, a1<br> [0x80000764]:sw a2, 272(tp)<br>    |
|  89|[0x80003370]<br>0x0000000A|- rs2_val == -3<br>                                                                                                                                                                                                               |[0x80000770]:xor a2, a0, a1<br> [0x80000774]:sw a2, 276(tp)<br>    |
|  90|[0x80003374]<br>0x00200010|- rs2_val == -17<br>                                                                                                                                                                                                              |[0x80000784]:xor a2, a0, a1<br> [0x80000788]:sw a2, 280(tp)<br>    |
|  91|[0x80003378]<br>0x00040020|- rs2_val == -33<br>                                                                                                                                                                                                              |[0x80000798]:xor a2, a0, a1<br> [0x8000079c]:sw a2, 284(tp)<br>    |
|  92|[0x8000337c]<br>0x01000200|- rs2_val == -513<br>                                                                                                                                                                                                             |[0x800007ac]:xor a2, a0, a1<br> [0x800007b0]:sw a2, 288(tp)<br>    |
|  93|[0x80003380]<br>0xFFFFCFFF|- rs2_val == 4096<br>                                                                                                                                                                                                             |[0x800007c0]:xor a2, a0, a1<br> [0x800007c4]:sw a2, 292(tp)<br>    |
|  94|[0x80003384]<br>0x00004800|- rs2_val == -16385<br>                                                                                                                                                                                                           |[0x800007d8]:xor a2, a0, a1<br> [0x800007dc]:sw a2, 296(tp)<br>    |
|  95|[0x80003388]<br>0xBFFEFFFF|- rs2_val == 65536<br>                                                                                                                                                                                                            |[0x800007ec]:xor a2, a0, a1<br> [0x800007f0]:sw a2, 300(tp)<br>    |
|  96|[0x8000338c]<br>0x00020003|- rs2_val == -131073<br>                                                                                                                                                                                                          |[0x80000800]:xor a2, a0, a1<br> [0x80000804]:sw a2, 304(tp)<br>    |
|  97|[0x800033a0]<br>0x40040000|- rs1_val == 262144<br>                                                                                                                                                                                                           |[0x80000858]:xor a2, a0, a1<br> [0x8000085c]:sw a2, 324(tp)<br>    |
