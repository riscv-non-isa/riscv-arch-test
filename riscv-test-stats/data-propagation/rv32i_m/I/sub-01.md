
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
| SIG_REGION                | [('0x80003204', '0x800033b0', '107 words')]      |
| COV_LABELS                | sub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sub-01.S/sub-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 104      |
| STAT1                     | 103      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:sub a2, a0, a1
      [0x80000880]:sw a2, 328(a5)
 -- Signature Address: 0x800033a4 Data: 0x20000001
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == -536870913






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

|s.no|        signature         |                                                                                                              coverpoints                                                                                                              |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7FFFF800|- opcode : sub<br> - rs1 : x15<br> - rs2 : x22<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 2048<br> - rs1_val == -2147483648<br> |[0x8000010c]:sub a5, a5, s6<br> [0x80000110]:sw a5, 0(a3)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -536870913<br> - rs1_val == -536870913<br>                                                 |[0x80000120]:sub s2, gp, gp<br> [0x80000124]:sw s2, 4(a3)<br>      |
|   3|[0x80003218]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_val == -33<br> - rs1_val == -33<br>                                                                                                                        |[0x80000134]:sub s8, s8, s8<br> [0x80000138]:sw s8, 8(a3)<br>      |
|   4|[0x8000321c]<br>0x00800002|- rs1 : x19<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -8388609<br>                                                                                     |[0x80000148]:sub fp, s3, fp<br> [0x8000014c]:sw fp, 12(a3)<br>     |
|   5|[0x80003220]<br>0x7FFFFFFF|- rs1 : x1<br> - rs2 : x29<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                               |[0x80000158]:sub a7, ra, t4<br> [0x8000015c]:sw a7, 16(a3)<br>     |
|   6|[0x80003224]<br>0x00000080|- rs1 : x9<br> - rs2 : x16<br> - rd : x14<br> - rs2_val == 0<br> - rs1_val == 128<br>                                                                                                                                                  |[0x80000168]:sub a4, s1, a6<br> [0x8000016c]:sw a4, 20(a3)<br>     |
|   7|[0x80003228]<br>0x08000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x11<br> - rs1_val == 134217728<br>                                                                                                                                                               |[0x8000017c]:sub a1, a2, zero<br> [0x80000180]:sw a1, 24(a3)<br>   |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x21<br> - rs2 : x6<br> - rd : x0<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 1<br>                                                                                                                                      |[0x8000018c]:sub zero, s5, t1<br> [0x80000190]:sw zero, 28(a3)<br> |
|   9|[0x80003230]<br>0x00000000|- rs1 : x23<br> - rs2 : x21<br> - rd : x27<br> - rs2_val == 524288<br> - rs1_val == 524288<br>                                                                                                                                         |[0x8000019c]:sub s11, s7, s5<br> [0x800001a0]:sw s11, 32(a3)<br>   |
|  10|[0x80003234]<br>0x00000013|- rs1 : x26<br> - rs2 : x25<br> - rd : x12<br> - rs2_val == -17<br> - rs1_val == 2<br>                                                                                                                                                 |[0x800001ac]:sub a2, s10, s9<br> [0x800001b0]:sw a2, 36(a3)<br>    |
|  11|[0x80003238]<br>0x00000008|- rs1 : x6<br> - rs2 : x18<br> - rd : x21<br> - rs1_val == 4<br>                                                                                                                                                                       |[0x800001bc]:sub s5, t1, s2<br> [0x800001c0]:sw s5, 40(a3)<br>     |
|  12|[0x8000323c]<br>0x00000011|- rs1 : x27<br> - rs2 : x17<br> - rd : x10<br> - rs2_val == -9<br> - rs1_val == 8<br>                                                                                                                                                  |[0x800001cc]:sub a0, s11, a7<br> [0x800001d0]:sw a0, 44(a3)<br>    |
|  13|[0x80003240]<br>0xFFC00010|- rs1 : x5<br> - rs2 : x26<br> - rd : x20<br> - rs2_val == 4194304<br> - rs1_val == 16<br>                                                                                                                                             |[0x800001dc]:sub s4, t0, s10<br> [0x800001e0]:sw s4, 48(a3)<br>    |
|  14|[0x80003244]<br>0x00002021|- rs1 : x7<br> - rs2 : x28<br> - rd : x16<br> - rs2_val == -8193<br> - rs1_val == 32<br>                                                                                                                                               |[0x800001f0]:sub a6, t2, t3<br> [0x800001f4]:sw a6, 52(a3)<br>     |
|  15|[0x80003248]<br>0xFF000040|- rs1 : x29<br> - rs2 : x9<br> - rd : x26<br> - rs2_val == 16777216<br> - rs1_val == 64<br>                                                                                                                                            |[0x80000200]:sub s10, t4, s1<br> [0x80000204]:sw s10, 56(a3)<br>   |
|  16|[0x8000324c]<br>0x80000000|- rs1 : x0<br> - rs2 : x15<br> - rd : x2<br> - rs1_val == 0<br>                                                                                                                                                                        |[0x80000210]:sub sp, zero, a5<br> [0x80000214]:sw sp, 60(a3)<br>   |
|  17|[0x80003250]<br>0xFFFFC200|- rs1 : x25<br> - rs2 : x10<br> - rd : x29<br> - rs2_val == 16384<br> - rs1_val == 512<br>                                                                                                                                             |[0x80000220]:sub t4, s9, a0<br> [0x80000224]:sw t4, 64(a3)<br>     |
|  18|[0x80003254]<br>0x00000408|- rs1 : x16<br> - rs2 : x2<br> - rd : x25<br> - rs1_val == 1024<br>                                                                                                                                                                    |[0x80000230]:sub s9, a6, sp<br> [0x80000234]:sw s9, 68(a3)<br>     |
|  19|[0x80003258]<br>0x00008801|- rs1 : x28<br> - rs2 : x4<br> - rd : x30<br> - rs2_val == -32769<br> - rs1_val == 2048<br>                                                                                                                                            |[0x80000248]:sub t5, t3, tp<br> [0x8000024c]:sw t5, 72(a3)<br>     |
|  20|[0x8000325c]<br>0x00001041|- rs1 : x10<br> - rs2 : x20<br> - rd : x3<br> - rs2_val == -65<br> - rs1_val == 4096<br>                                                                                                                                               |[0x80000260]:sub gp, a0, s4<br> [0x80000264]:sw gp, 0(a5)<br>      |
|  21|[0x80003260]<br>0x00002006|- rs1 : x13<br> - rs2 : x23<br> - rd : x7<br> - rs1_val == 8192<br>                                                                                                                                                                    |[0x80000270]:sub t2, a3, s7<br> [0x80000274]:sw t2, 4(a5)<br>      |
|  22|[0x80003264]<br>0x00003FFB|- rs1 : x8<br> - rs2 : x31<br> - rd : x28<br> - rs1_val == 16384<br>                                                                                                                                                                   |[0x80000280]:sub t3, fp, t6<br> [0x80000284]:sw t3, 8(a5)<br>      |
|  23|[0x80003268]<br>0x00010001|- rs1 : x31<br> - rs2 : x27<br> - rd : x19<br> - rs1_val == 32768<br>                                                                                                                                                                  |[0x80000294]:sub s3, t6, s11<br> [0x80000298]:sw s3, 12(a5)<br>    |
|  24|[0x8000326c]<br>0x00010008|- rs1 : x18<br> - rs2 : x1<br> - rd : x23<br> - rs1_val == 65536<br>                                                                                                                                                                   |[0x800002a4]:sub s7, s2, ra<br> [0x800002a8]:sw s7, 16(a5)<br>     |
|  25|[0x80003270]<br>0x00020006|- rs1 : x14<br> - rs2 : x11<br> - rd : x22<br> - rs1_val == 131072<br>                                                                                                                                                                 |[0x800002b4]:sub s6, a4, a1<br> [0x800002b8]:sw s6, 20(a5)<br>     |
|  26|[0x80003274]<br>0x00040004|- rs1 : x30<br> - rs2 : x5<br> - rd : x13<br> - rs1_val == 262144<br>                                                                                                                                                                  |[0x800002c4]:sub a3, t5, t0<br> [0x800002c8]:sw a3, 24(a5)<br>     |
|  27|[0x80003278]<br>0x000FFFF9|- rs1 : x17<br> - rs2 : x14<br> - rd : x5<br> - rs1_val == 1048576<br>                                                                                                                                                                 |[0x800002d4]:sub t0, a7, a4<br> [0x800002d8]:sw t0, 28(a5)<br>     |
|  28|[0x8000327c]<br>0xFFE00000|- rs1 : x2<br> - rs2 : x30<br> - rd : x1<br> - rs1_val == 2097152<br>                                                                                                                                                                  |[0x800002e4]:sub ra, sp, t5<br> [0x800002e8]:sw ra, 32(a5)<br>     |
|  29|[0x80003280]<br>0x00420001|- rs1 : x22<br> - rs2 : x19<br> - rd : x4<br> - rs2_val == -131073<br> - rs1_val == 4194304<br>                                                                                                                                        |[0x800002f8]:sub tp, s6, s3<br> [0x800002fc]:sw tp, 36(a5)<br>     |
|  30|[0x80003284]<br>0x007FFFC0|- rs1 : x11<br> - rs2 : x13<br> - rd : x31<br> - rs2_val == 64<br> - rs1_val == 8388608<br>                                                                                                                                            |[0x80000308]:sub t6, a1, a3<br> [0x8000030c]:sw t6, 40(a5)<br>     |
|  31|[0x80003288]<br>0x01000008|- rs1 : x20<br> - rs2 : x7<br> - rd : x6<br> - rs1_val == 16777216<br>                                                                                                                                                                 |[0x80000318]:sub t1, s4, t2<br> [0x8000031c]:sw t1, 44(a5)<br>     |
|  32|[0x8000328c]<br>0x02001001|- rs1 : x4<br> - rs2 : x12<br> - rd : x9<br> - rs2_val == -4097<br> - rs1_val == 33554432<br>                                                                                                                                          |[0x8000032c]:sub s1, tp, a2<br> [0x80000330]:sw s1, 48(a5)<br>     |
|  33|[0x80003290]<br>0x03FFF800|- rs1_val == 67108864<br>                                                                                                                                                                                                              |[0x80000340]:sub a2, a0, a1<br> [0x80000344]:sw a2, 52(a5)<br>     |
|  34|[0x80003294]<br>0x0FFFC000|- rs1_val == 268435456<br>                                                                                                                                                                                                             |[0x80000350]:sub a2, a0, a1<br> [0x80000354]:sw a2, 56(a5)<br>     |
|  35|[0x80003298]<br>0x20010001|- rs2_val == -65537<br> - rs1_val == 536870912<br>                                                                                                                                                                                     |[0x80000364]:sub a2, a0, a1<br> [0x80000368]:sw a2, 60(a5)<br>     |
|  36|[0x8000329c]<br>0x40000007|- rs1_val == 1073741824<br>                                                                                                                                                                                                            |[0x80000374]:sub a2, a0, a1<br> [0x80000378]:sw a2, 64(a5)<br>     |
|  37|[0x800032a0]<br>0x0000000F|- rs1_val == -2<br>                                                                                                                                                                                                                    |[0x80000384]:sub a2, a0, a1<br> [0x80000388]:sw a2, 68(a5)<br>     |
|  38|[0x800032a4]<br>0xFFFFEFFD|- rs2_val == 4096<br> - rs1_val == -3<br>                                                                                                                                                                                              |[0x80000394]:sub a2, a0, a1<br> [0x80000398]:sw a2, 72(a5)<br>     |
|  39|[0x800032a8]<br>0xFBFFFFFB|- rs2_val == 67108864<br> - rs1_val == -5<br>                                                                                                                                                                                          |[0x800003a4]:sub a2, a0, a1<br> [0x800003a8]:sw a2, 76(a5)<br>     |
|  40|[0x800032ac]<br>0xFFFBFFF7|- rs2_val == 262144<br> - rs1_val == -9<br>                                                                                                                                                                                            |[0x800003b4]:sub a2, a0, a1<br> [0x800003b8]:sw a2, 80(a5)<br>     |
|  41|[0x800032b0]<br>0xFFFFFFF1|- rs2_val == -2<br> - rs1_val == -17<br>                                                                                                                                                                                               |[0x800003c4]:sub a2, a0, a1<br> [0x800003c8]:sw a2, 84(a5)<br>     |
|  42|[0x800032b4]<br>0x55555535|- rs2_val == -1431655766<br>                                                                                                                                                                                                           |[0x800003d8]:sub a2, a0, a1<br> [0x800003dc]:sw a2, 88(a5)<br>     |
|  43|[0x800032b8]<br>0xBFFFFFC0|- rs1_val == -65<br>                                                                                                                                                                                                                   |[0x800003ec]:sub a2, a0, a1<br> [0x800003f0]:sw a2, 92(a5)<br>     |
|  44|[0x800032bc]<br>0xFFFEFF7F|- rs2_val == 65536<br> - rs1_val == -129<br>                                                                                                                                                                                           |[0x800003fc]:sub a2, a0, a1<br> [0x80000400]:sw a2, 96(a5)<br>     |
|  45|[0x800032c0]<br>0x0007FF00|- rs2_val == -524289<br> - rs1_val == -257<br>                                                                                                                                                                                         |[0x80000410]:sub a2, a0, a1<br> [0x80000414]:sw a2, 100(a5)<br>    |
|  46|[0x800032c4]<br>0xFFFFDDFF|- rs2_val == 8192<br> - rs1_val == -513<br>                                                                                                                                                                                            |[0x80000420]:sub a2, a0, a1<br> [0x80000424]:sw a2, 104(a5)<br>    |
|  47|[0x800032c8]<br>0x00040401|- rs2_val == -262145<br>                                                                                                                                                                                                               |[0x80000434]:sub a2, a0, a1<br> [0x80000438]:sw a2, 108(a5)<br>    |
|  48|[0x800032cc]<br>0x000FFFFC|- rs2_val == -1048577<br>                                                                                                                                                                                                              |[0x80000448]:sub a2, a0, a1<br> [0x8000044c]:sw a2, 112(a5)<br>    |
|  49|[0x800032d0]<br>0x00200011|- rs2_val == -2097153<br>                                                                                                                                                                                                              |[0x8000045c]:sub a2, a0, a1<br> [0x80000460]:sw a2, 116(a5)<br>    |
|  50|[0x800032d4]<br>0x10400001|- rs2_val == -4194305<br>                                                                                                                                                                                                              |[0x80000470]:sub a2, a0, a1<br> [0x80000474]:sw a2, 120(a5)<br>    |
|  51|[0x800032d8]<br>0x01800001|- rs2_val == -16777217<br>                                                                                                                                                                                                             |[0x80000484]:sub a2, a0, a1<br> [0x80000488]:sw a2, 124(a5)<br>    |
|  52|[0x800032dc]<br>0x03000001|- rs2_val == -33554433<br>                                                                                                                                                                                                             |[0x80000498]:sub a2, a0, a1<br> [0x8000049c]:sw a2, 128(a5)<br>    |
|  53|[0x800032e0]<br>0x04000021|- rs2_val == -67108865<br>                                                                                                                                                                                                             |[0x800004ac]:sub a2, a0, a1<br> [0x800004b0]:sw a2, 132(a5)<br>    |
|  54|[0x800032e4]<br>0x08000004|- rs2_val == -134217729<br>                                                                                                                                                                                                            |[0x800004c0]:sub a2, a0, a1<br> [0x800004c4]:sw a2, 136(a5)<br>    |
|  55|[0x800032e8]<br>0x12000001|- rs2_val == -268435457<br>                                                                                                                                                                                                            |[0x800004d4]:sub a2, a0, a1<br> [0x800004d8]:sw a2, 140(a5)<br>    |
|  56|[0x800032ec]<br>0x40200001|- rs2_val == -1073741825<br>                                                                                                                                                                                                           |[0x800004e8]:sub a2, a0, a1<br> [0x800004ec]:sw a2, 144(a5)<br>    |
|  57|[0x800032f0]<br>0xAAAAAA6A|- rs2_val == 1431655765<br>                                                                                                                                                                                                            |[0x800004fc]:sub a2, a0, a1<br> [0x80000500]:sw a2, 148(a5)<br>    |
|  58|[0x800032f4]<br>0x0007FC00|- rs1_val == -1025<br>                                                                                                                                                                                                                 |[0x80000510]:sub a2, a0, a1<br> [0x80000514]:sw a2, 152(a5)<br>    |
|  59|[0x800032f8]<br>0xFFFFF800|- rs1_val == -2049<br>                                                                                                                                                                                                                 |[0x80000524]:sub a2, a0, a1<br> [0x80000528]:sw a2, 156(a5)<br>    |
|  60|[0x800032fc]<br>0xFFFFF100|- rs2_val == -257<br> - rs1_val == -4097<br>                                                                                                                                                                                           |[0x80000538]:sub a2, a0, a1<br> [0x8000053c]:sw a2, 160(a5)<br>    |
|  61|[0x80003300]<br>0x01FFE000|- rs1_val == -8193<br>                                                                                                                                                                                                                 |[0x80000550]:sub a2, a0, a1<br> [0x80000554]:sw a2, 164(a5)<br>    |
|  62|[0x80003304]<br>0x1FFFC000|- rs1_val == -16385<br>                                                                                                                                                                                                                |[0x80000568]:sub a2, a0, a1<br> [0x8000056c]:sw a2, 168(a5)<br>    |
|  63|[0x80003308]<br>0xFFFF8008|- rs1_val == -32769<br>                                                                                                                                                                                                                |[0x8000057c]:sub a2, a0, a1<br> [0x80000580]:sw a2, 172(a5)<br>    |
|  64|[0x8000330c]<br>0x003F0000|- rs1_val == -65537<br>                                                                                                                                                                                                                |[0x80000594]:sub a2, a0, a1<br> [0x80000598]:sw a2, 176(a5)<br>    |
|  65|[0x80003310]<br>0xBFFDFFFF|- rs2_val == 1073741824<br> - rs1_val == -131073<br>                                                                                                                                                                                   |[0x800005a8]:sub a2, a0, a1<br> [0x800005ac]:sw a2, 180(a5)<br>    |
|  66|[0x80003314]<br>0xFFFBFFFE|- rs1_val == -262145<br>                                                                                                                                                                                                               |[0x800005bc]:sub a2, a0, a1<br> [0x800005c0]:sw a2, 184(a5)<br>    |
|  67|[0x80003318]<br>0xFFF88000|- rs1_val == -524289<br>                                                                                                                                                                                                               |[0x800005d4]:sub a2, a0, a1<br> [0x800005d8]:sw a2, 188(a5)<br>    |
|  68|[0x8000331c]<br>0xFFEFFFF9|- rs1_val == -1048577<br>                                                                                                                                                                                                              |[0x800005e8]:sub a2, a0, a1<br> [0x800005ec]:sw a2, 192(a5)<br>    |
|  69|[0x80003320]<br>0x01E00000|- rs1_val == -2097153<br>                                                                                                                                                                                                              |[0x80000600]:sub a2, a0, a1<br> [0x80000604]:sw a2, 196(a5)<br>    |
|  70|[0x80003324]<br>0xFFC00010|- rs1_val == -4194305<br>                                                                                                                                                                                                              |[0x80000614]:sub a2, a0, a1<br> [0x80000618]:sw a2, 200(a5)<br>    |
|  71|[0x80003328]<br>0xFF7FFFEF|- rs2_val == 16<br> - rs1_val == -8388609<br>                                                                                                                                                                                          |[0x80000628]:sub a2, a0, a1<br> [0x8000062c]:sw a2, 204(a5)<br>    |
|  72|[0x8000332c]<br>0xFF000020|- rs1_val == -16777217<br>                                                                                                                                                                                                             |[0x8000063c]:sub a2, a0, a1<br> [0x80000640]:sw a2, 208(a5)<br>    |
|  73|[0x80003330]<br>0xFE000003|- rs1_val == -33554433<br>                                                                                                                                                                                                             |[0x80000650]:sub a2, a0, a1<br> [0x80000654]:sw a2, 212(a5)<br>    |
|  74|[0x80003334]<br>0x1C000000|- rs1_val == -67108865<br>                                                                                                                                                                                                             |[0x80000668]:sub a2, a0, a1<br> [0x8000066c]:sw a2, 216(a5)<br>    |
|  75|[0x80003338]<br>0xF7FFFFF7|- rs2_val == 8<br> - rs1_val == -134217729<br>                                                                                                                                                                                         |[0x8000067c]:sub a2, a0, a1<br> [0x80000680]:sw a2, 220(a5)<br>    |
|  76|[0x8000333c]<br>0x45555555|- rs1_val == -268435457<br>                                                                                                                                                                                                            |[0x80000694]:sub a2, a0, a1<br> [0x80000698]:sw a2, 224(a5)<br>    |
|  77|[0x80003340]<br>0xDFFFFFDF|- rs2_val == 32<br>                                                                                                                                                                                                                    |[0x800006a8]:sub a2, a0, a1<br> [0x800006ac]:sw a2, 228(a5)<br>    |
|  78|[0x80003344]<br>0xB7FFFFFF|- rs2_val == 134217728<br> - rs1_val == -1073741825<br>                                                                                                                                                                                |[0x800006bc]:sub a2, a0, a1<br> [0x800006c0]:sw a2, 232(a5)<br>    |
|  79|[0x80003348]<br>0x5555554D|- rs1_val == 1431655765<br>                                                                                                                                                                                                            |[0x800006d0]:sub a2, a0, a1<br> [0x800006d4]:sw a2, 236(a5)<br>    |
|  80|[0x8000334c]<br>0xAAAAA2AA|- rs1_val == -1431655766<br>                                                                                                                                                                                                           |[0x800006e8]:sub a2, a0, a1<br> [0x800006ec]:sw a2, 240(a5)<br>    |
|  81|[0x80003350]<br>0x001FFFFE|- rs2_val == 2<br>                                                                                                                                                                                                                     |[0x800006f8]:sub a2, a0, a1<br> [0x800006fc]:sw a2, 244(a5)<br>    |
|  82|[0x80003354]<br>0xFFFEFFFB|- rs2_val == 4<br>                                                                                                                                                                                                                     |[0x8000070c]:sub a2, a0, a1<br> [0x80000710]:sw a2, 248(a5)<br>    |
|  83|[0x80003358]<br>0xFFFFDF7F|- rs2_val == 128<br>                                                                                                                                                                                                                   |[0x80000720]:sub a2, a0, a1<br> [0x80000724]:sw a2, 252(a5)<br>    |
|  84|[0x8000335c]<br>0xFFFFFEF7|- rs2_val == 256<br>                                                                                                                                                                                                                   |[0x80000730]:sub a2, a0, a1<br> [0x80000734]:sw a2, 256(a5)<br>    |
|  85|[0x80003360]<br>0x7FFFFDFF|- rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 512<br> - rs1_val == 2147483647<br>                                                                                                                                                      |[0x80000744]:sub a2, a0, a1<br> [0x80000748]:sw a2, 260(a5)<br>    |
|  86|[0x80003364]<br>0xFFFFFAFF|- rs2_val == 1024<br>                                                                                                                                                                                                                  |[0x80000754]:sub a2, a0, a1<br> [0x80000758]:sw a2, 264(a5)<br>    |
|  87|[0x80003368]<br>0xFFF01000|- rs2_val == 1048576<br>                                                                                                                                                                                                               |[0x80000764]:sub a2, a0, a1<br> [0x80000768]:sw a2, 268(a5)<br>    |
|  88|[0x8000336c]<br>0xFFDBFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                               |[0x80000778]:sub a2, a0, a1<br> [0x8000077c]:sw a2, 272(a5)<br>    |
|  89|[0x80003370]<br>0xFF6FFFFF|- rs2_val == 8388608<br>                                                                                                                                                                                                               |[0x8000078c]:sub a2, a0, a1<br> [0x80000790]:sw a2, 276(a5)<br>    |
|  90|[0x80003374]<br>0x06000000|- rs2_val == 33554432<br>                                                                                                                                                                                                              |[0x8000079c]:sub a2, a0, a1<br> [0x800007a0]:sw a2, 280(a5)<br>    |
|  91|[0x80003378]<br>0xEFFBFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                             |[0x800007b0]:sub a2, a0, a1<br> [0x800007b4]:sw a2, 284(a5)<br>    |
|  92|[0x8000337c]<br>0xE0100000|- rs2_val == 536870912<br>                                                                                                                                                                                                             |[0x800007c0]:sub a2, a0, a1<br> [0x800007c4]:sw a2, 288(a5)<br>    |
|  93|[0x80003380]<br>0x40000002|- rs2_val == -3<br>                                                                                                                                                                                                                    |[0x800007d4]:sub a2, a0, a1<br> [0x800007d8]:sw a2, 292(a5)<br>    |
|  94|[0x80003384]<br>0x00000009|- rs2_val == -5<br>                                                                                                                                                                                                                    |[0x800007e4]:sub a2, a0, a1<br> [0x800007e8]:sw a2, 296(a5)<br>    |
|  95|[0x80003388]<br>0xFF000080|- rs2_val == -129<br>                                                                                                                                                                                                                  |[0x800007f8]:sub a2, a0, a1<br> [0x800007fc]:sw a2, 300(a5)<br>    |
|  96|[0x8000338c]<br>0x00400201|- rs2_val == -513<br>                                                                                                                                                                                                                  |[0x80000808]:sub a2, a0, a1<br> [0x8000080c]:sw a2, 304(a5)<br>    |
|  97|[0x80003390]<br>0x00800401|- rs2_val == -1025<br>                                                                                                                                                                                                                 |[0x80000818]:sub a2, a0, a1<br> [0x8000081c]:sw a2, 308(a5)<br>    |
|  98|[0x80003394]<br>0x00000805|- rs2_val == -2049<br>                                                                                                                                                                                                                 |[0x8000082c]:sub a2, a0, a1<br> [0x80000830]:sw a2, 312(a5)<br>    |
|  99|[0x80003398]<br>0x00003E00|- rs2_val == -16385<br>                                                                                                                                                                                                                |[0x80000840]:sub a2, a0, a1<br> [0x80000844]:sw a2, 316(a5)<br>    |
| 100|[0x8000339c]<br>0xDFFF7FFF|- rs2_val == 32768<br>                                                                                                                                                                                                                 |[0x80000854]:sub a2, a0, a1<br> [0x80000858]:sw a2, 320(a5)<br>    |
| 101|[0x800033a0]<br>0xFFFDBFFF|- rs2_val == 131072<br>                                                                                                                                                                                                                |[0x80000868]:sub a2, a0, a1<br> [0x8000086c]:sw a2, 324(a5)<br>    |
| 102|[0x800033a8]<br>0x88000001|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                                                                                           |[0x80000890]:sub a2, a0, a1<br> [0x80000894]:sw a2, 332(a5)<br>    |
| 103|[0x800033ac]<br>0x80000100|- rs1_val == 256<br>                                                                                                                                                                                                                   |[0x800008a0]:sub a2, a0, a1<br> [0x800008a4]:sw a2, 336(a5)<br>    |
