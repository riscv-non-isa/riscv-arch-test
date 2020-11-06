
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008e0')]      |
| SIG_REGION                | [('0x80003204', '0x800033ac', '106 words')]      |
| COV_LABELS                | divu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/divu-01.S/divu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 106      |
| STAT1                     | 104      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000898]:divu a2, a0, a1
      [0x8000089c]:sw a2, 280(ra)
 -- Signature Address: 0x8000339c Data: 0x00400000
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == 512
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b8]:divu a2, a0, a1
      [0x800008bc]:sw a2, 288(ra)
 -- Signature Address: 0x800033a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 8192
      - rs1_val == 8






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

|s.no|        signature         |                                                                                                           coverpoints                                                                                                            |                                code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000001|- opcode : divu<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 512<br> - rs1_val == 512<br>                                    |[0x80000108]:divu s3, a4, a4<br> [0x8000010c]:sw s3, 0(gp)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x28<br> - rs2 : x23<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 32768<br>                                                                   |[0x80000118]:divu t6, t3, s7<br> [0x8000011c]:sw t6, 4(gp)<br>      |
|   3|[0x8000320c]<br>0x00000003|- rs1 : x17<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 536870912<br> - rs1_val == 2147483647<br>                                                                     |[0x8000012c]:divu t5, a7, t5<br> [0x80000130]:sw t5, 8(gp)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x25<br> - rs2 : x26<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br>                                                                                                        |[0x8000013c]:divu s9, s9, s10<br> [0x80000140]:sw s9, 12(gp)<br>    |
|   5|[0x80003214]<br>0x00000001|- rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x8000014c]:divu s2, s2, s2<br> [0x80000150]:sw s2, 16(gp)<br>     |
|   6|[0x80003218]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x22<br> - rd : x12<br> - rs2_val == 0<br> - rs1_val == 262144<br>                                                                                                                                         |[0x8000015c]:divu a2, t4, s6<br> [0x80000160]:sw a2, 20(gp)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x23<br> - rs2 : x21<br> - rd : x26<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 1024<br>                                                                                                 |[0x80000170]:divu s10, s7, s5<br> [0x80000174]:sw s10, 24(gp)<br>   |
|   8|[0x80003220]<br>0xFFFEFFFF|- rs1 : x5<br> - rs2 : x6<br> - rd : x16<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -65537<br>                                                                                                         |[0x80000184]:divu a6, t0, t1<br> [0x80000188]:sw a6, 28(gp)<br>     |
|   9|[0x80003224]<br>0x00000001|- rs1 : x21<br> - rs2 : x20<br> - rd : x1<br>                                                                                                                                                                                     |[0x8000019c]:divu ra, s5, s4<br> [0x800001a0]:sw ra, 32(gp)<br>     |
|  10|[0x80003228]<br>0x00000000|- rs1 : x9<br> - rs2 : x13<br> - rd : x6<br> - rs2_val == -2<br> - rs1_val == 2<br>                                                                                                                                               |[0x800001ac]:divu t1, s1, a3<br> [0x800001b0]:sw t1, 36(gp)<br>     |
|  11|[0x8000322c]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x0<br> - rd : x2<br> - rs1_val == 4<br>                                                                                                                                                                   |[0x800001bc]:divu sp, s4, zero<br> [0x800001c0]:sw sp, 40(gp)<br>   |
|  12|[0x80003230]<br>0x00000000|- rs1 : x31<br> - rs2 : x4<br> - rd : x0<br> - rs2_val == 8192<br> - rs1_val == 8<br>                                                                                                                                             |[0x800001cc]:divu zero, t6, tp<br> [0x800001d0]:sw zero, 44(gp)<br> |
|  13|[0x80003234]<br>0x00000005|- rs1 : x30<br> - rs2 : x1<br> - rd : x22<br> - rs1_val == 16<br>                                                                                                                                                                 |[0x800001dc]:divu s6, t5, ra<br> [0x800001e0]:sw s6, 48(gp)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x0<br> - rs2 : x24<br> - rd : x8<br> - rs2_val == -134217729<br>                                                                                                                                                          |[0x800001f0]:divu fp, zero, s8<br> [0x800001f4]:sw fp, 52(gp)<br>   |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x8<br> - rs2 : x12<br> - rd : x4<br> - rs2_val == -536870913<br> - rs1_val == 64<br>                                                                                                                                      |[0x80000204]:divu tp, fp, a2<br> [0x80000208]:sw tp, 56(gp)<br>     |
|  16|[0x80003240]<br>0x00000000|- rs1 : x19<br> - rs2 : x15<br> - rd : x17<br> - rs1_val == 128<br>                                                                                                                                                               |[0x80000218]:divu a7, s3, a5<br> [0x8000021c]:sw a7, 60(gp)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x10<br> - rs2 : x11<br> - rd : x9<br> - rs2_val == 131072<br> - rs1_val == 256<br>                                                                                                                                        |[0x80000228]:divu s1, a0, a1<br> [0x8000022c]:sw s1, 64(gp)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x2<br> - rs2 : x3<br> - rd : x23<br> - rs2_val == -17<br>                                                                                                                                                                 |[0x80000240]:divu s7, sp, gp<br> [0x80000244]:sw s7, 0(s2)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x11<br> - rs2 : x16<br> - rd : x7<br> - rs2_val == 268435456<br> - rs1_val == 2048<br>                                                                                                                                    |[0x80000254]:divu t2, a1, a6<br> [0x80000258]:sw t2, 4(s2)<br>      |
|  20|[0x80003250]<br>0x00000000|- rs1 : x13<br> - rs2 : x2<br> - rd : x29<br> - rs2_val == 16384<br> - rs1_val == 4096<br>                                                                                                                                        |[0x80000264]:divu t4, a3, sp<br> [0x80000268]:sw t4, 8(s2)<br>      |
|  21|[0x80003254]<br>0x00000100|- rs1 : x27<br> - rs2 : x17<br> - rd : x5<br> - rs2_val == 32<br> - rs1_val == 8192<br>                                                                                                                                           |[0x80000274]:divu t0, s11, a7<br> [0x80000278]:sw t0, 12(s2)<br>    |
|  22|[0x80003258]<br>0x00000000|- rs1 : x7<br> - rs2 : x25<br> - rd : x14<br> - rs1_val == 16384<br>                                                                                                                                                              |[0x80000284]:divu a4, t2, s9<br> [0x80000288]:sw a4, 16(s2)<br>     |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x24<br> - rs2 : x27<br> - rd : x21<br> - rs1_val == 32768<br>                                                                                                                                                             |[0x80000294]:divu s5, s8, s11<br> [0x80000298]:sw s5, 20(s2)<br>    |
|  24|[0x80003260]<br>0x00000000|- rs1 : x6<br> - rs2 : x31<br> - rd : x28<br> - rs2_val == -1025<br> - rs1_val == 65536<br>                                                                                                                                       |[0x800002a4]:divu t3, t1, t6<br> [0x800002a8]:sw t3, 24(s2)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x12<br> - rs2 : x9<br> - rd : x13<br> - rs2_val == -262145<br> - rs1_val == 131072<br>                                                                                                                                    |[0x800002b8]:divu a3, a2, s1<br> [0x800002bc]:sw a3, 28(s2)<br>     |
|  26|[0x80003268]<br>0x00080000|- rs1 : x26<br> - rs2 : x8<br> - rd : x10<br> - rs1_val == 524288<br>                                                                                                                                                             |[0x800002c8]:divu a0, s10, fp<br> [0x800002cc]:sw a0, 32(s2)<br>    |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x15<br> - rs2 : x10<br> - rd : x24<br> - rs1_val == 1048576<br>                                                                                                                                                           |[0x800002d8]:divu s8, a5, a0<br> [0x800002dc]:sw s8, 36(s2)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x22<br> - rs2 : x5<br> - rd : x15<br> - rs2_val == -16777217<br> - rs1_val == 2097152<br>                                                                                                                                 |[0x800002ec]:divu a5, s6, t0<br> [0x800002f0]:sw a5, 40(s2)<br>     |
|  29|[0x80003274]<br>0x00000000|- rs1 : x3<br> - rs2 : x29<br> - rd : x20<br> - rs2_val == -3<br> - rs1_val == 4194304<br>                                                                                                                                        |[0x800002fc]:divu s4, gp, t4<br> [0x80000300]:sw s4, 44(s2)<br>     |
|  30|[0x80003278]<br>0x00000000|- rs1 : x4<br> - rs2 : x7<br> - rd : x3<br> - rs2_val == -131073<br> - rs1_val == 8388608<br>                                                                                                                                     |[0x80000310]:divu gp, tp, t2<br> [0x80000314]:sw gp, 48(s2)<br>     |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x16<br> - rs2 : x28<br> - rd : x11<br> - rs1_val == 16777216<br>                                                                                                                                                          |[0x80000320]:divu a1, a6, t3<br> [0x80000324]:sw a1, 52(s2)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x1<br> - rs2 : x19<br> - rd : x27<br> - rs2_val == -2097153<br> - rs1_val == 33554432<br>                                                                                                                                 |[0x80000334]:divu s11, ra, s3<br> [0x80000338]:sw s11, 56(s2)<br>   |
|  33|[0x80003284]<br>0x00080000|- rs2_val == 128<br> - rs1_val == 67108864<br>                                                                                                                                                                                    |[0x8000034c]:divu a2, a0, a1<br> [0x80000350]:sw a2, 0(ra)<br>      |
|  34|[0x80003288]<br>0xFFFFFFFF|- rs1_val == 134217728<br>                                                                                                                                                                                                        |[0x8000035c]:divu a2, a0, a1<br> [0x80000360]:sw a2, 4(ra)<br>      |
|  35|[0x8000328c]<br>0x00000008|- rs2_val == 33554432<br> - rs1_val == 268435456<br>                                                                                                                                                                              |[0x8000036c]:divu a2, a0, a1<br> [0x80000370]:sw a2, 8(ra)<br>      |
|  36|[0x80003290]<br>0x00004000|- rs1_val == 536870912<br>                                                                                                                                                                                                        |[0x8000037c]:divu a2, a0, a1<br> [0x80000380]:sw a2, 12(ra)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                       |[0x8000038c]:divu a2, a0, a1<br> [0x80000390]:sw a2, 16(ra)<br>     |
|  38|[0x80003298]<br>0x1C71C71C|- rs1_val == -2<br>                                                                                                                                                                                                               |[0x8000039c]:divu a2, a0, a1<br> [0x800003a0]:sw a2, 20(ra)<br>     |
|  39|[0x8000329c]<br>0x00000001|- rs2_val == -33554433<br> - rs1_val == -3<br>                                                                                                                                                                                    |[0x800003b0]:divu a2, a0, a1<br> [0x800003b4]:sw a2, 24(ra)<br>     |
|  40|[0x800032a0]<br>0x03FFFFFF|- rs2_val == 64<br> - rs1_val == -5<br>                                                                                                                                                                                           |[0x800003c0]:divu a2, a0, a1<br> [0x800003c4]:sw a2, 28(ra)<br>     |
|  41|[0x800032a4]<br>0x03FFFFFF|- rs1_val == -9<br>                                                                                                                                                                                                               |[0x800003d0]:divu a2, a0, a1<br> [0x800003d4]:sw a2, 32(ra)<br>     |
|  42|[0x800032a8]<br>0x00000001|- rs2_val == -1073741825<br> - rs1_val == -17<br>                                                                                                                                                                                 |[0x800003e4]:divu a2, a0, a1<br> [0x800003e8]:sw a2, 36(ra)<br>     |
|  43|[0x800032ac]<br>0x00FFFFFF|- rs2_val == 256<br> - rs1_val == -65<br>                                                                                                                                                                                         |[0x800003f4]:divu a2, a0, a1<br> [0x800003f8]:sw a2, 40(ra)<br>     |
|  44|[0x800032b0]<br>0x00000000|- rs1_val == -129<br>                                                                                                                                                                                                             |[0x80000404]:divu a2, a0, a1<br> [0x80000408]:sw a2, 44(ra)<br>     |
|  45|[0x800032b4]<br>0x00000000|- rs2_val == -524289<br>                                                                                                                                                                                                          |[0x8000041c]:divu a2, a0, a1<br> [0x80000420]:sw a2, 48(ra)<br>     |
|  46|[0x800032b8]<br>0x00000001|- rs2_val == -1048577<br> - rs1_val == -16385<br>                                                                                                                                                                                 |[0x80000434]:divu a2, a0, a1<br> [0x80000438]:sw a2, 52(ra)<br>     |
|  47|[0x800032bc]<br>0x00000000|- rs2_val == -4194305<br>                                                                                                                                                                                                         |[0x80000448]:divu a2, a0, a1<br> [0x8000044c]:sw a2, 56(ra)<br>     |
|  48|[0x800032c0]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                                                         |[0x8000045c]:divu a2, a0, a1<br> [0x80000460]:sw a2, 60(ra)<br>     |
|  49|[0x800032c4]<br>0x00000001|- rs2_val == -67108865<br>                                                                                                                                                                                                        |[0x80000470]:divu a2, a0, a1<br> [0x80000474]:sw a2, 64(ra)<br>     |
|  50|[0x800032c8]<br>0x00000000|- rs2_val == -268435457<br>                                                                                                                                                                                                       |[0x80000484]:divu a2, a0, a1<br> [0x80000488]:sw a2, 68(ra)<br>     |
|  51|[0x800032cc]<br>0x00000000|- rs2_val == 1431655765<br>                                                                                                                                                                                                       |[0x80000498]:divu a2, a0, a1<br> [0x8000049c]:sw a2, 72(ra)<br>     |
|  52|[0x800032d0]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                                                      |[0x800004ac]:divu a2, a0, a1<br> [0x800004b0]:sw a2, 76(ra)<br>     |
|  53|[0x800032d4]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                                                                                             |[0x800004c0]:divu a2, a0, a1<br> [0x800004c4]:sw a2, 80(ra)<br>     |
|  54|[0x800032d8]<br>0x0000007F|- rs1_val == -513<br>                                                                                                                                                                                                             |[0x800004d0]:divu a2, a0, a1<br> [0x800004d4]:sw a2, 84(ra)<br>     |
|  55|[0x800032dc]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                                                            |[0x800004e0]:divu a2, a0, a1<br> [0x800004e4]:sw a2, 88(ra)<br>     |
|  56|[0x800032e0]<br>0x00000007|- rs1_val == -2049<br>                                                                                                                                                                                                            |[0x800004f4]:divu a2, a0, a1<br> [0x800004f8]:sw a2, 92(ra)<br>     |
|  57|[0x800032e4]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                                                                                            |[0x8000050c]:divu a2, a0, a1<br> [0x80000510]:sw a2, 96(ra)<br>     |
|  58|[0x800032e8]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                                                                                            |[0x80000524]:divu a2, a0, a1<br> [0x80000528]:sw a2, 100(ra)<br>    |
|  59|[0x800032ec]<br>0x00000001|- rs1_val == -32769<br>                                                                                                                                                                                                           |[0x8000053c]:divu a2, a0, a1<br> [0x80000540]:sw a2, 104(ra)<br>    |
|  60|[0x800032f0]<br>0x0000007F|- rs1_val == -131073<br>                                                                                                                                                                                                          |[0x80000550]:divu a2, a0, a1<br> [0x80000554]:sw a2, 108(ra)<br>    |
|  61|[0x800032f4]<br>0x00000001|- rs1_val == -262145<br>                                                                                                                                                                                                          |[0x80000568]:divu a2, a0, a1<br> [0x8000056c]:sw a2, 112(ra)<br>    |
|  62|[0x800032f8]<br>0x00000003|- rs1_val == -524289<br>                                                                                                                                                                                                          |[0x80000580]:divu a2, a0, a1<br> [0x80000584]:sw a2, 116(ra)<br>    |
|  63|[0x800032fc]<br>0x7FF7FFFF|- rs2_val == 2<br> - rs1_val == -1048577<br>                                                                                                                                                                                      |[0x80000594]:divu a2, a0, a1<br> [0x80000598]:sw a2, 120(ra)<br>    |
|  64|[0x80003300]<br>0x003FF7FF|- rs2_val == 1024<br> - rs1_val == -2097153<br>                                                                                                                                                                                   |[0x800005a8]:divu a2, a0, a1<br> [0x800005ac]:sw a2, 124(ra)<br>    |
|  65|[0x80003304]<br>0x00000001|- rs1_val == -4194305<br>                                                                                                                                                                                                         |[0x800005c0]:divu a2, a0, a1<br> [0x800005c4]:sw a2, 128(ra)<br>    |
|  66|[0x80003308]<br>0x2A955555|- rs1_val == -8388609<br>                                                                                                                                                                                                         |[0x800005d4]:divu a2, a0, a1<br> [0x800005d8]:sw a2, 132(ra)<br>    |
|  67|[0x8000330c]<br>0x00000000|- rs1_val == -16777217<br>                                                                                                                                                                                                        |[0x800005ec]:divu a2, a0, a1<br> [0x800005f0]:sw a2, 136(ra)<br>    |
|  68|[0x80003310]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                                                                                        |[0x80000604]:divu a2, a0, a1<br> [0x80000608]:sw a2, 140(ra)<br>    |
|  69|[0x80003314]<br>0x00001F7F|- rs2_val == 524288<br> - rs1_val == -67108865<br>                                                                                                                                                                                |[0x80000618]:divu a2, a0, a1<br> [0x8000061c]:sw a2, 144(ra)<br>    |
|  70|[0x80003318]<br>0x00000000|- rs1_val == -134217729<br>                                                                                                                                                                                                       |[0x80000630]:divu a2, a0, a1<br> [0x80000634]:sw a2, 148(ra)<br>    |
|  71|[0x8000331c]<br>0x00077FFF|- rs1_val == -268435457<br>                                                                                                                                                                                                       |[0x80000644]:divu a2, a0, a1<br> [0x80000648]:sw a2, 152(ra)<br>    |
|  72|[0x80003320]<br>0x00000000|- rs2_val == -65537<br> - rs1_val == -536870913<br>                                                                                                                                                                               |[0x8000065c]:divu a2, a0, a1<br> [0x80000660]:sw a2, 156(ra)<br>    |
|  73|[0x80003324]<br>0x1B6DB6DB|- rs1_val == -1073741825<br>                                                                                                                                                                                                      |[0x80000670]:divu a2, a0, a1<br> [0x80000674]:sw a2, 160(ra)<br>    |
|  74|[0x80003328]<br>0x00002AAA|- rs1_val == 1431655765<br>                                                                                                                                                                                                       |[0x80000684]:divu a2, a0, a1<br> [0x80000688]:sw a2, 164(ra)<br>    |
|  75|[0x8000332c]<br>0x00000000|- rs1_val == -1431655766<br>                                                                                                                                                                                                      |[0x80000698]:divu a2, a0, a1<br> [0x8000069c]:sw a2, 168(ra)<br>    |
|  76|[0x80003330]<br>0x3FFBFFFF|- rs2_val == 4<br>                                                                                                                                                                                                                |[0x800006ac]:divu a2, a0, a1<br> [0x800006b0]:sw a2, 172(ra)<br>    |
|  77|[0x80003334]<br>0x00000400|- rs2_val == 8<br>                                                                                                                                                                                                                |[0x800006bc]:divu a2, a0, a1<br> [0x800006c0]:sw a2, 176(ra)<br>    |
|  78|[0x80003338]<br>0x03FFFFFF|- rs2_val == 16<br>                                                                                                                                                                                                               |[0x800006d0]:divu a2, a0, a1<br> [0x800006d4]:sw a2, 180(ra)<br>    |
|  79|[0x8000333c]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                                             |[0x800006e4]:divu a2, a0, a1<br> [0x800006e8]:sw a2, 184(ra)<br>    |
|  80|[0x80003340]<br>0x000F7FFF|- rs2_val == 4096<br>                                                                                                                                                                                                             |[0x800006f8]:divu a2, a0, a1<br> [0x800006fc]:sw a2, 188(ra)<br>    |
|  81|[0x80003344]<br>0x0000FF7F|- rs2_val == 65536<br>                                                                                                                                                                                                            |[0x8000070c]:divu a2, a0, a1<br> [0x80000710]:sw a2, 192(ra)<br>    |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                           |[0x8000071c]:divu a2, a0, a1<br> [0x80000720]:sw a2, 196(ra)<br>    |
|  83|[0x8000334c]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                                                          |[0x8000072c]:divu a2, a0, a1<br> [0x80000730]:sw a2, 200(ra)<br>    |
|  84|[0x80003350]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                                                                          |[0x8000073c]:divu a2, a0, a1<br> [0x80000740]:sw a2, 204(ra)<br>    |
|  85|[0x80003354]<br>0x000003FF|- rs2_val == 4194304<br>                                                                                                                                                                                                          |[0x80000750]:divu a2, a0, a1<br> [0x80000754]:sw a2, 208(ra)<br>    |
|  86|[0x80003358]<br>0x00000004|- rs2_val == 8388608<br>                                                                                                                                                                                                          |[0x80000760]:divu a2, a0, a1<br> [0x80000764]:sw a2, 212(ra)<br>    |
|  87|[0x8000335c]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                                                                         |[0x80000770]:divu a2, a0, a1<br> [0x80000774]:sw a2, 216(ra)<br>    |
|  88|[0x80003360]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                                                         |[0x80000780]:divu a2, a0, a1<br> [0x80000784]:sw a2, 220(ra)<br>    |
|  89|[0x80003364]<br>0x0000001D|- rs2_val == 134217728<br>                                                                                                                                                                                                        |[0x80000794]:divu a2, a0, a1<br> [0x80000798]:sw a2, 224(ra)<br>    |
|  90|[0x80003368]<br>0x00000003|- rs2_val == 1073741824<br>                                                                                                                                                                                                       |[0x800007a8]:divu a2, a0, a1<br> [0x800007ac]:sw a2, 228(ra)<br>    |
|  91|[0x8000336c]<br>0x00000000|- rs2_val == -5<br>                                                                                                                                                                                                               |[0x800007b8]:divu a2, a0, a1<br> [0x800007bc]:sw a2, 232(ra)<br>    |
|  92|[0x80003370]<br>0x00000000|- rs2_val == -9<br>                                                                                                                                                                                                               |[0x800007c8]:divu a2, a0, a1<br> [0x800007cc]:sw a2, 236(ra)<br>    |
|  93|[0x80003374]<br>0x00000000|- rs2_val == -33<br>                                                                                                                                                                                                              |[0x800007d8]:divu a2, a0, a1<br> [0x800007dc]:sw a2, 240(ra)<br>    |
|  94|[0x80003378]<br>0x00000000|- rs2_val == -65<br>                                                                                                                                                                                                              |[0x800007e8]:divu a2, a0, a1<br> [0x800007ec]:sw a2, 244(ra)<br>    |
|  95|[0x8000337c]<br>0x00000000|- rs2_val == -129<br>                                                                                                                                                                                                             |[0x800007f8]:divu a2, a0, a1<br> [0x800007fc]:sw a2, 248(ra)<br>    |
|  96|[0x80003380]<br>0x00000000|- rs2_val == -257<br>                                                                                                                                                                                                             |[0x8000080c]:divu a2, a0, a1<br> [0x80000810]:sw a2, 252(ra)<br>    |
|  97|[0x80003384]<br>0x00000000|- rs2_val == -513<br>                                                                                                                                                                                                             |[0x8000081c]:divu a2, a0, a1<br> [0x80000820]:sw a2, 256(ra)<br>    |
|  98|[0x80003388]<br>0x00000000|- rs2_val == -2049<br>                                                                                                                                                                                                            |[0x80000834]:divu a2, a0, a1<br> [0x80000838]:sw a2, 260(ra)<br>    |
|  99|[0x8000338c]<br>0x00000001|- rs2_val == -4097<br>                                                                                                                                                                                                            |[0x80000848]:divu a2, a0, a1<br> [0x8000084c]:sw a2, 264(ra)<br>    |
| 100|[0x80003390]<br>0x00000000|- rs2_val == -8193<br>                                                                                                                                                                                                            |[0x80000860]:divu a2, a0, a1<br> [0x80000864]:sw a2, 268(ra)<br>    |
| 101|[0x80003394]<br>0x00000000|- rs2_val == -16385<br>                                                                                                                                                                                                           |[0x80000874]:divu a2, a0, a1<br> [0x80000878]:sw a2, 272(ra)<br>    |
| 102|[0x80003398]<br>0x00000000|- rs2_val == -32769<br>                                                                                                                                                                                                           |[0x80000888]:divu a2, a0, a1<br> [0x8000088c]:sw a2, 276(ra)<br>    |
| 103|[0x800033a0]<br>0x00000001|- rs1_val == -33<br>                                                                                                                                                                                                              |[0x800008a8]:divu a2, a0, a1<br> [0x800008ac]:sw a2, 284(ra)<br>    |
| 104|[0x800033a8]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                                                                                               |[0x800008cc]:divu a2, a0, a1<br> [0x800008d0]:sw a2, 292(ra)<br>    |
