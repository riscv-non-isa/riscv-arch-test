
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
| SIG_REGION                | [('0x80003204', '0x800033b4', '108 words')]      |
| COV_LABELS                | and      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/and-01.S/and-01.S    |
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
      [0x80000860]:and a2, a0, a1
      [0x80000864]:sw a2, 268(ra)
 -- Signature Address: 0x800033a0 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000870]:and a2, a0, a1
      [0x80000874]:sw a2, 272(ra)
 -- Signature Address: 0x800033a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
      - rs1_val == 4194304




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a0]:and a2, a0, a1
      [0x800008a4]:sw a2, 284(ra)
 -- Signature Address: 0x800033b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 512
      - rs1_val == 67108864






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

|s.no|        signature         |                                                                                         coverpoints                                                                                         |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFF8|- opcode : and<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                          |[0x80000108]:and a2, a6, a6<br> [0x8000010c]:sw a2, 0(a4)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x21<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs2_val == (2**(xlen-1)-1)<br> - rs1_val == 0<br> - rs2_val == 2147483647<br>                 |[0x8000011c]:and gp, s5, gp<br> [0x80000120]:sw gp, 4(a4)<br>      |
|   3|[0x80003218]<br>0x00000008|- rs1 : x15<br> - rs2 : x7<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 8<br> - rs1_val == 2147483647<br>       |[0x80000130]:and a5, a5, t2<br> [0x80000134]:sw a5, 8(a4)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x8<br> - rs2 : x30<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == 16384<br>                                                         |[0x80000140]:and ra, fp, t5<br> [0x80000144]:sw ra, 12(a4)<br>     |
|   5|[0x80003220]<br>0x80000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x80000150]:and tp, tp, tp<br> [0x80000154]:sw tp, 16(a4)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x9<br> - rs2 : x17<br> - rd : x24<br> - rs2_val == 0<br>                                                                                                                             |[0x80000160]:and s8, s1, a7<br> [0x80000164]:sw s8, 20(a4)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x17<br> - rs2 : x6<br> - rd : x22<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -1431655766<br>                                                              |[0x80000174]:and s6, a7, t1<br> [0x80000178]:sw s6, 24(a4)<br>     |
|   8|[0x8000322c]<br>0xFFFFFF7F|- rs1 : x7<br> - rs2 : x11<br> - rd : x17<br> - rs2_val == -129<br> - rs1_val == -129<br>                                                                                                    |[0x80000184]:and a7, t2, a1<br> [0x80000188]:sw a7, 28(a4)<br>     |
|   9|[0x80003230]<br>0x00000002|- rs1 : x20<br> - rs2 : x2<br> - rd : x23<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -33<br> - rs1_val == 2<br>                                                                      |[0x80000194]:and s7, s4, sp<br> [0x80000198]:sw s7, 32(a4)<br>     |
|  10|[0x80003234]<br>0x00000000|- rs1 : x22<br> - rs2 : x0<br> - rd : x7<br> - rs1_val == 4<br>                                                                                                                              |[0x800001a4]:and t2, s6, zero<br> [0x800001a8]:sw t2, 36(a4)<br>   |
|  11|[0x80003238]<br>0x00000008|- rs1 : x30<br> - rs2 : x29<br> - rd : x25<br> - rs2_val == -32769<br> - rs1_val == 8<br>                                                                                                    |[0x800001b8]:and s9, t5, t4<br> [0x800001bc]:sw s9, 40(a4)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x23<br> - rs2 : x8<br> - rd : x2<br> - rs1_val == 16<br>                                                                                                                             |[0x800001c8]:and sp, s7, fp<br> [0x800001cc]:sw sp, 44(a4)<br>     |
|  13|[0x80003240]<br>0x00000020|- rs1 : x5<br> - rs2 : x13<br> - rd : x27<br> - rs2_val == -67108865<br> - rs1_val == 32<br>                                                                                                 |[0x800001dc]:and s11, t0, a3<br> [0x800001e0]:sw s11, 48(a4)<br>   |
|  14|[0x80003244]<br>0x00000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x19<br> - rs2_val == 2097152<br> - rs1_val == 64<br>                                                                                                  |[0x800001ec]:and s3, s10, s9<br> [0x800001f0]:sw s3, 52(a4)<br>    |
|  15|[0x80003248]<br>0x00000000|- rs1 : x12<br> - rs2 : x10<br> - rd : x0<br> - rs1_val == 128<br>                                                                                                                           |[0x800001fc]:and zero, a2, a0<br> [0x80000200]:sw zero, 56(a4)<br> |
|  16|[0x8000324c]<br>0x00000100|- rs1 : x2<br> - rs2 : x26<br> - rd : x18<br> - rs2_val == -536870913<br> - rs1_val == 256<br>                                                                                               |[0x80000210]:and s2, sp, s10<br> [0x80000214]:sw s2, 60(a4)<br>    |
|  17|[0x80003250]<br>0x00000000|- rs1 : x19<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == 2<br> - rs1_val == 512<br>                                                                                                        |[0x80000228]:and a1, s3, s1<br> [0x8000022c]:sw a1, 0(tp)<br>      |
|  18|[0x80003254]<br>0x00000400|- rs1 : x28<br> - rs2 : x20<br> - rd : x5<br> - rs1_val == 1024<br>                                                                                                                          |[0x80000238]:and t0, t3, s4<br> [0x8000023c]:sw t0, 4(tp)<br>      |
|  19|[0x80003258]<br>0x00000800|- rs1 : x10<br> - rs2 : x22<br> - rd : x14<br> - rs2_val == -134217729<br> - rs1_val == 2048<br>                                                                                             |[0x80000250]:and a4, a0, s6<br> [0x80000254]:sw a4, 8(tp)<br>      |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x1<br> - rs2 : x12<br> - rd : x28<br> - rs2_val == 134217728<br> - rs1_val == 4096<br>                                                                                               |[0x80000260]:and t3, ra, a2<br> [0x80000264]:sw t3, 12(tp)<br>     |
|  21|[0x80003260]<br>0x00002000|- rs1 : x3<br> - rs2 : x18<br> - rd : x8<br> - rs1_val == 8192<br>                                                                                                                           |[0x80000270]:and fp, gp, s2<br> [0x80000274]:sw fp, 16(tp)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x0<br> - rs2 : x15<br> - rd : x10<br> - rs2_val == 32<br>                                                                                                                            |[0x80000284]:and a0, zero, a5<br> [0x80000288]:sw a0, 20(tp)<br>   |
|  23|[0x80003268]<br>0x00000000|- rs1 : x24<br> - rs2 : x28<br> - rd : x13<br> - rs1_val == 32768<br>                                                                                                                        |[0x80000294]:and a3, s8, t3<br> [0x80000298]:sw a3, 24(tp)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x14<br> - rs2 : x21<br> - rd : x6<br> - rs2_val == 131072<br> - rs1_val == 65536<br>                                                                                                 |[0x800002a4]:and t1, a4, s5<br> [0x800002a8]:sw t1, 28(tp)<br>     |
|  25|[0x80003270]<br>0x00000000|- rs1 : x13<br> - rs2 : x19<br> - rd : x26<br> - rs2_val == 4<br> - rs1_val == 131072<br>                                                                                                    |[0x800002b4]:and s10, a3, s3<br> [0x800002b8]:sw s10, 32(tp)<br>   |
|  26|[0x80003274]<br>0x00000000|- rs1 : x6<br> - rs2 : x24<br> - rd : x30<br> - rs2_val == 8388608<br> - rs1_val == 262144<br>                                                                                               |[0x800002c4]:and t5, t1, s8<br> [0x800002c8]:sw t5, 36(tp)<br>     |
|  27|[0x80003278]<br>0x00000000|- rs1 : x31<br> - rs2 : x27<br> - rd : x29<br> - rs2_val == 16<br> - rs1_val == 524288<br>                                                                                                   |[0x800002d4]:and t4, t6, s11<br> [0x800002d8]:sw t4, 40(tp)<br>    |
|  28|[0x8000327c]<br>0x00100000|- rs1 : x27<br> - rs2 : x1<br> - rd : x9<br> - rs2_val == -17<br> - rs1_val == 1048576<br>                                                                                                   |[0x800002e4]:and s1, s11, ra<br> [0x800002e8]:sw s1, 44(tp)<br>    |
|  29|[0x80003280]<br>0x00000000|- rs1 : x11<br> - rs2 : x5<br> - rd : x16<br> - rs1_val == 2097152<br>                                                                                                                       |[0x800002f4]:and a6, a1, t0<br> [0x800002f8]:sw a6, 48(tp)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x18<br> - rs2 : x14<br> - rd : x21<br> - rs2_val == 1431655765<br> - rs1_val == 8388608<br>                                                                                          |[0x80000308]:and s5, s2, a4<br> [0x8000030c]:sw s5, 52(tp)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x25<br> - rs2 : x23<br> - rd : x20<br> - rs2_val == 1024<br> - rs1_val == 16777216<br>                                                                                               |[0x80000318]:and s4, s9, s7<br> [0x8000031c]:sw s4, 56(tp)<br>     |
|  32|[0x8000328c]<br>0x02000000|- rs1 : x29<br> - rs2_val == -513<br> - rs1_val == 33554432<br>                                                                                                                              |[0x80000328]:and s11, t4, s4<br> [0x8000032c]:sw s11, 60(tp)<br>   |
|  33|[0x80003290]<br>0x00000000|- rs2 : x31<br> - rs2_val == 512<br> - rs1_val == 67108864<br>                                                                                                                               |[0x80000338]:and zero, sp, t6<br> [0x8000033c]:sw zero, 64(tp)<br> |
|  34|[0x80003294]<br>0x00000000|- rd : x31<br> - rs1_val == 134217728<br>                                                                                                                                                    |[0x80000350]:and t6, s1, gp<br> [0x80000354]:sw t6, 0(ra)<br>      |
|  35|[0x80003298]<br>0x10000000|- rs2_val == -2<br> - rs1_val == 268435456<br>                                                                                                                                               |[0x80000360]:and a2, a0, a1<br> [0x80000364]:sw a2, 4(ra)<br>      |
|  36|[0x8000329c]<br>0x20000000|- rs2_val == -268435457<br> - rs1_val == 536870912<br>                                                                                                                                       |[0x80000374]:and a2, a0, a1<br> [0x80000378]:sw a2, 8(ra)<br>      |
|  37|[0x800032a0]<br>0x40000000|- rs2_val == -65<br> - rs1_val == 1073741824<br>                                                                                                                                             |[0x80000384]:and a2, a0, a1<br> [0x80000388]:sw a2, 12(ra)<br>     |
|  38|[0x800032a4]<br>0x00400000|- rs2_val == 4194304<br> - rs1_val == -2<br>                                                                                                                                                 |[0x80000394]:and a2, a0, a1<br> [0x80000398]:sw a2, 16(ra)<br>     |
|  39|[0x800032a8]<br>0x00400000|- rs1_val == -3<br>                                                                                                                                                                          |[0x800003a4]:and a2, a0, a1<br> [0x800003a8]:sw a2, 20(ra)<br>     |
|  40|[0x800032ac]<br>0xFFFFFFEB|- rs1_val == -5<br>                                                                                                                                                                          |[0x800003b4]:and a2, a0, a1<br> [0x800003b8]:sw a2, 24(ra)<br>     |
|  41|[0x800032b0]<br>0x55555555|- rs1_val == -9<br>                                                                                                                                                                          |[0x800003c8]:and a2, a0, a1<br> [0x800003cc]:sw a2, 28(ra)<br>     |
|  42|[0x800032b4]<br>0xFFFFEFEF|- rs2_val == -4097<br> - rs1_val == -17<br>                                                                                                                                                  |[0x800003dc]:and a2, a0, a1<br> [0x800003e0]:sw a2, 32(ra)<br>     |
|  43|[0x800032b8]<br>0xFFEBFFFF|- rs2_val == -262145<br> - rs1_val == -1048577<br>                                                                                                                                           |[0x800003f4]:and a2, a0, a1<br> [0x800003f8]:sw a2, 36(ra)<br>     |
|  44|[0x800032bc]<br>0xFFF7FFF8|- rs2_val == -524289<br>                                                                                                                                                                     |[0x80000408]:and a2, a0, a1<br> [0x8000040c]:sw a2, 40(ra)<br>     |
|  45|[0x800032c0]<br>0xFFEBFFFF|- rs2_val == -1048577<br> - rs1_val == -262145<br>                                                                                                                                           |[0x80000420]:and a2, a0, a1<br> [0x80000424]:sw a2, 44(ra)<br>     |
|  46|[0x800032c4]<br>0xFFDFFFFB|- rs2_val == -2097153<br>                                                                                                                                                                    |[0x80000434]:and a2, a0, a1<br> [0x80000438]:sw a2, 48(ra)<br>     |
|  47|[0x800032c8]<br>0x00000008|- rs2_val == -4194305<br>                                                                                                                                                                    |[0x80000448]:and a2, a0, a1<br> [0x8000044c]:sw a2, 52(ra)<br>     |
|  48|[0x800032cc]<br>0x10000000|- rs2_val == -8388609<br>                                                                                                                                                                    |[0x8000045c]:and a2, a0, a1<br> [0x80000460]:sw a2, 56(ra)<br>     |
|  49|[0x800032d0]<br>0x00001000|- rs2_val == -16777217<br>                                                                                                                                                                   |[0x80000470]:and a2, a0, a1<br> [0x80000474]:sw a2, 60(ra)<br>     |
|  50|[0x800032d4]<br>0xFDFFFFFB|- rs2_val == -33554433<br>                                                                                                                                                                   |[0x80000484]:and a2, a0, a1<br> [0x80000488]:sw a2, 64(ra)<br>     |
|  51|[0x800032d8]<br>0xBFFFFFF7|- rs2_val == -1073741825<br>                                                                                                                                                                 |[0x80000498]:and a2, a0, a1<br> [0x8000049c]:sw a2, 68(ra)<br>     |
|  52|[0x800032dc]<br>0xAAAAAAA2|- rs2_val == -1431655766<br>                                                                                                                                                                 |[0x800004ac]:and a2, a0, a1<br> [0x800004b0]:sw a2, 72(ra)<br>     |
|  53|[0x800032e0]<br>0x00000006|- rs1_val == -33<br>                                                                                                                                                                         |[0x800004bc]:and a2, a0, a1<br> [0x800004c0]:sw a2, 76(ra)<br>     |
|  54|[0x800032e4]<br>0xFFFFFDBF|- rs1_val == -65<br>                                                                                                                                                                         |[0x800004cc]:and a2, a0, a1<br> [0x800004d0]:sw a2, 80(ra)<br>     |
|  55|[0x800032e8]<br>0xFFFFFEDF|- rs1_val == -257<br>                                                                                                                                                                        |[0x800004dc]:and a2, a0, a1<br> [0x800004e0]:sw a2, 84(ra)<br>     |
|  56|[0x800032ec]<br>0xFFFF7DFF|- rs1_val == -513<br>                                                                                                                                                                        |[0x800004f0]:and a2, a0, a1<br> [0x800004f4]:sw a2, 88(ra)<br>     |
|  57|[0x800032f0]<br>0x00000007|- rs1_val == -1025<br>                                                                                                                                                                       |[0x80000500]:and a2, a0, a1<br> [0x80000504]:sw a2, 92(ra)<br>     |
|  58|[0x800032f4]<br>0xFFFFF7FE|- rs1_val == -2049<br>                                                                                                                                                                       |[0x80000514]:and a2, a0, a1<br> [0x80000518]:sw a2, 96(ra)<br>     |
|  59|[0x800032f8]<br>0xFFFBEFFF|- rs1_val == -4097<br>                                                                                                                                                                       |[0x8000052c]:and a2, a0, a1<br> [0x80000530]:sw a2, 100(ra)<br>    |
|  60|[0x800032fc]<br>0xFFFFDEFF|- rs2_val == -257<br> - rs1_val == -8193<br>                                                                                                                                                 |[0x80000540]:and a2, a0, a1<br> [0x80000544]:sw a2, 104(ra)<br>    |
|  61|[0x80003300]<br>0x02000000|- rs2_val == 33554432<br> - rs1_val == -16385<br>                                                                                                                                            |[0x80000554]:and a2, a0, a1<br> [0x80000558]:sw a2, 108(ra)<br>    |
|  62|[0x80003304]<br>0x00800000|- rs1_val == -32769<br>                                                                                                                                                                      |[0x80000568]:and a2, a0, a1<br> [0x8000056c]:sw a2, 112(ra)<br>    |
|  63|[0x80003308]<br>0xFBFEFFFF|- rs1_val == -65537<br>                                                                                                                                                                      |[0x80000580]:and a2, a0, a1<br> [0x80000584]:sw a2, 116(ra)<br>    |
|  64|[0x8000330c]<br>0xBFFDFFFF|- rs1_val == -131073<br>                                                                                                                                                                     |[0x80000598]:and a2, a0, a1<br> [0x8000059c]:sw a2, 120(ra)<br>    |
|  65|[0x80003310]<br>0xFBF7FFFF|- rs1_val == -524289<br>                                                                                                                                                                     |[0x800005b0]:and a2, a0, a1<br> [0x800005b4]:sw a2, 124(ra)<br>    |
|  66|[0x80003314]<br>0xFFDFFF7F|- rs1_val == -2097153<br>                                                                                                                                                                    |[0x800005c4]:and a2, a0, a1<br> [0x800005c8]:sw a2, 128(ra)<br>    |
|  67|[0x80003318]<br>0x00000007|- rs1_val == -4194305<br>                                                                                                                                                                    |[0x800005d8]:and a2, a0, a1<br> [0x800005dc]:sw a2, 132(ra)<br>    |
|  68|[0x8000331c]<br>0x00000200|- rs1_val == -8388609<br>                                                                                                                                                                    |[0x800005ec]:and a2, a0, a1<br> [0x800005f0]:sw a2, 136(ra)<br>    |
|  69|[0x80003320]<br>0xFEFFFFEF|- rs1_val == -16777217<br>                                                                                                                                                                   |[0x80000600]:and a2, a0, a1<br> [0x80000604]:sw a2, 140(ra)<br>    |
|  70|[0x80003324]<br>0x3DFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                   |[0x80000618]:and a2, a0, a1<br> [0x8000061c]:sw a2, 144(ra)<br>    |
|  71|[0x80003328]<br>0xBBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                   |[0x80000630]:and a2, a0, a1<br> [0x80000634]:sw a2, 148(ra)<br>    |
|  72|[0x8000332c]<br>0x00000007|- rs1_val == -134217729<br>                                                                                                                                                                  |[0x80000644]:and a2, a0, a1<br> [0x80000648]:sw a2, 152(ra)<br>    |
|  73|[0x80003330]<br>0xEFFFFF7F|- rs1_val == -268435457<br>                                                                                                                                                                  |[0x80000658]:and a2, a0, a1<br> [0x8000065c]:sw a2, 156(ra)<br>    |
|  74|[0x80003334]<br>0xDFF7FFFF|- rs1_val == -536870913<br>                                                                                                                                                                  |[0x80000670]:and a2, a0, a1<br> [0x80000674]:sw a2, 160(ra)<br>    |
|  75|[0x80003338]<br>0xBFFFFFBF|- rs1_val == -1073741825<br>                                                                                                                                                                 |[0x80000684]:and a2, a0, a1<br> [0x80000688]:sw a2, 164(ra)<br>    |
|  76|[0x8000333c]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                                                  |[0x80000698]:and a2, a0, a1<br> [0x8000069c]:sw a2, 168(ra)<br>    |
|  77|[0x80003340]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                                                          |[0x800006ac]:and a2, a0, a1<br> [0x800006b0]:sw a2, 172(ra)<br>    |
|  78|[0x80003344]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                                                         |[0x800006bc]:and a2, a0, a1<br> [0x800006c0]:sw a2, 176(ra)<br>    |
|  79|[0x80003348]<br>0x00000100|- rs2_val == 256<br>                                                                                                                                                                         |[0x800006cc]:and a2, a0, a1<br> [0x800006d0]:sw a2, 180(ra)<br>    |
|  80|[0x8000334c]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                        |[0x800006e0]:and a2, a0, a1<br> [0x800006e4]:sw a2, 184(ra)<br>    |
|  81|[0x80003350]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                                                        |[0x800006f4]:and a2, a0, a1<br> [0x800006f8]:sw a2, 188(ra)<br>    |
|  82|[0x80003354]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                                                        |[0x80000708]:and a2, a0, a1<br> [0x8000070c]:sw a2, 192(ra)<br>    |
|  83|[0x80003358]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                                                                       |[0x8000071c]:and a2, a0, a1<br> [0x80000720]:sw a2, 196(ra)<br>    |
|  84|[0x8000335c]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                       |[0x8000072c]:and a2, a0, a1<br> [0x80000730]:sw a2, 200(ra)<br>    |
|  85|[0x80003360]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                                                                      |[0x80000740]:and a2, a0, a1<br> [0x80000744]:sw a2, 204(ra)<br>    |
|  86|[0x80003364]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                      |[0x80000750]:and a2, a0, a1<br> [0x80000754]:sw a2, 208(ra)<br>    |
|  87|[0x80003368]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                                                                     |[0x80000764]:and a2, a0, a1<br> [0x80000768]:sw a2, 212(ra)<br>    |
|  88|[0x8000336c]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                                    |[0x80000774]:and a2, a0, a1<br> [0x80000778]:sw a2, 216(ra)<br>    |
|  89|[0x80003370]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                    |[0x80000784]:and a2, a0, a1<br> [0x80000788]:sw a2, 220(ra)<br>    |
|  90|[0x80003374]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                   |[0x80000794]:and a2, a0, a1<br> [0x80000798]:sw a2, 224(ra)<br>    |
|  91|[0x80003378]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                                                   |[0x800007a4]:and a2, a0, a1<br> [0x800007a8]:sw a2, 228(ra)<br>    |
|  92|[0x8000337c]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                                                                  |[0x800007b4]:and a2, a0, a1<br> [0x800007b8]:sw a2, 232(ra)<br>    |
|  93|[0x80003380]<br>0x00800000|- rs2_val == -3<br>                                                                                                                                                                          |[0x800007c4]:and a2, a0, a1<br> [0x800007c8]:sw a2, 236(ra)<br>    |
|  94|[0x80003384]<br>0x00000006|- rs2_val == -9<br>                                                                                                                                                                          |[0x800007d4]:and a2, a0, a1<br> [0x800007d8]:sw a2, 240(ra)<br>    |
|  95|[0x80003388]<br>0x00008000|- rs2_val == -1025<br>                                                                                                                                                                       |[0x800007e4]:and a2, a0, a1<br> [0x800007e8]:sw a2, 244(ra)<br>    |
|  96|[0x8000338c]<br>0x00008000|- rs2_val == -2049<br>                                                                                                                                                                       |[0x800007f8]:and a2, a0, a1<br> [0x800007fc]:sw a2, 248(ra)<br>    |
|  97|[0x80003390]<br>0x00400000|- rs2_val == -8193<br> - rs1_val == 4194304<br>                                                                                                                                              |[0x8000080c]:and a2, a0, a1<br> [0x80000810]:sw a2, 252(ra)<br>    |
|  98|[0x80003394]<br>0x00000003|- rs2_val == -16385<br>                                                                                                                                                                      |[0x80000820]:and a2, a0, a1<br> [0x80000824]:sw a2, 256(ra)<br>    |
|  99|[0x80003398]<br>0xFFEEFFFF|- rs2_val == -65537<br>                                                                                                                                                                      |[0x80000838]:and a2, a0, a1<br> [0x8000083c]:sw a2, 260(ra)<br>    |
| 100|[0x8000339c]<br>0xFFFDBFFF|- rs2_val == -131073<br>                                                                                                                                                                     |[0x80000850]:and a2, a0, a1<br> [0x80000854]:sw a2, 264(ra)<br>    |
| 101|[0x800033a8]<br>0x00000000|- rs2_val == -5<br>                                                                                                                                                                          |[0x80000880]:and a2, a0, a1<br> [0x80000884]:sw a2, 276(ra)<br>    |
| 102|[0x800033ac]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                                                                       |[0x80000890]:and a2, a0, a1<br> [0x80000894]:sw a2, 280(ra)<br>    |
