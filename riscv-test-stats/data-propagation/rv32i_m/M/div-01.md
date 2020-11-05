
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
| SIG_REGION                | [('0x80003204', '0x80003390', '99 words')]      |
| COV_LABELS                | div      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/div-01.S/div-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 99      |
| STAT1                     | 98      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:div a2, a0, a1
      [0x80000810]:sw a2, 304(t1)
 -- Signature Address: 0x80003380 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == -33554433






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

|s.no|        signature         |                                                                                                               coverpoints                                                                                                                |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFF0|- opcode : div<br> - rs1 : x7<br> - rs2 : x30<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 134217728<br> - rs1_val == -2147483648<br> |[0x80000108]:div t2, t2, t5<br> [0x8000010c]:sw t2, 0(gp)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x0<br> - rs2 : x26<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == -33554433<br>                                                                                                 |[0x8000011c]:div t5, zero, s10<br> [0x80000120]:sw t5, 4(gp)<br>   |
|   3|[0x8000320c]<br>0xFFFFFE01|- rs1 : x25<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -4194305<br> - rs1_val == 2147483647<br>                                              |[0x80000134]:div fp, s9, fp<br> [0x80000138]:sw fp, 8(gp)<br>      |
|   4|[0x80003210]<br>0x00000001|- rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -8193<br> - rs1_val == -8193<br>                                                            |[0x80000148]:div t3, t3, t3<br> [0x8000014c]:sw t3, 12(gp)<br>     |
|   5|[0x80003214]<br>0x00000001|- rs1 : x19<br> - rs2 : x19<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                                                        |[0x80000158]:div a7, s3, s3<br> [0x8000015c]:sw a7, 16(gp)<br>     |
|   6|[0x80003218]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x10<br> - rd : x21<br> - rs2_val == 0<br> - rs1_val == -268435457<br>                                                                                                                                             |[0x8000016c]:div s5, t4, a0<br> [0x80000170]:sw s5, 20(gp)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x15<br> - rs2 : x27<br> - rd : x22<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 2097152<br>                                                                    |[0x80000180]:div s6, a5, s11<br> [0x80000184]:sw s6, 24(gp)<br>    |
|   8|[0x80003220]<br>0xFFFDFFFF|- rs1 : x30<br> - rs2 : x5<br> - rd : x10<br> - rs2_val == 1<br> - rs1_val == -131073<br>                                                                                                                                                 |[0x80000194]:div a0, t5, t0<br> [0x80000198]:sw a0, 28(gp)<br>     |
|   9|[0x80003224]<br>0x00000001|- rs1 : x2<br> - rs2 : x6<br> - rd : x19<br> - rs2_val == -32769<br> - rs1_val == -32769<br>                                                                                                                                              |[0x800001ac]:div s3, sp, t1<br> [0x800001b0]:sw s3, 32(gp)<br>     |
|  10|[0x80003228]<br>0x00000000|- rs1 : x4<br> - rs2 : x18<br> - rd : x12<br> - rs2_val == -17<br> - rs1_val == 2<br>                                                                                                                                                     |[0x800001bc]:div a2, tp, s2<br> [0x800001c0]:sw a2, 36(gp)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x1<br> - rs2 : x14<br> - rd : x6<br> - rs2_val == -1073741825<br> - rs1_val == 4<br>                                                                                                                                              |[0x800001d0]:div t1, ra, a4<br> [0x800001d4]:sw t1, 40(gp)<br>     |
|  12|[0x80003230]<br>0x00000000|- rs1 : x6<br> - rs2 : x9<br> - rd : x25<br> - rs2_val == 268435456<br> - rs1_val == 8<br>                                                                                                                                                |[0x800001e0]:div s9, t1, s1<br> [0x800001e4]:sw s9, 44(gp)<br>     |
|  13|[0x80003234]<br>0x00000000|- rs1 : x31<br> - rs2 : x7<br> - rd : x5<br> - rs1_val == 16<br>                                                                                                                                                                          |[0x800001f4]:div t0, t6, t2<br> [0x800001f8]:sw t0, 48(gp)<br>     |
|  14|[0x80003238]<br>0x00000004|- rs1 : x13<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == 8<br> - rs1_val == 32<br>                                                                                                                                                     |[0x80000204]:div s8, a3, s9<br> [0x80000208]:sw s8, 52(gp)<br>     |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x8<br> - rs2 : x11<br> - rd : x0<br> - rs1_val == 64<br>                                                                                                                                                                          |[0x80000214]:div zero, fp, a1<br> [0x80000218]:sw zero, 56(gp)<br> |
|  16|[0x80003240]<br>0x00000020|- rs1 : x22<br> - rs2 : x2<br> - rd : x13<br> - rs2_val == 4<br> - rs1_val == 128<br>                                                                                                                                                     |[0x80000224]:div a3, s6, sp<br> [0x80000228]:sw a3, 60(gp)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x24<br> - rs2 : x17<br> - rd : x4<br> - rs1_val == 256<br>                                                                                                                                                                        |[0x80000234]:div tp, s8, a7<br> [0x80000238]:sw tp, 64(gp)<br>     |
|  18|[0x80003248]<br>0xFFFFFFCD|- rs1 : x21<br> - rs2 : x24<br> - rd : x29<br> - rs1_val == 512<br>                                                                                                                                                                       |[0x80000244]:div t4, s5, s8<br> [0x80000248]:sw t4, 68(gp)<br>     |
|  19|[0x8000324c]<br>0xFFFFFE00|- rs1 : x12<br> - rs2 : x16<br> - rd : x20<br> - rs2_val == -2<br> - rs1_val == 1024<br>                                                                                                                                                  |[0x80000254]:div s4, a2, a6<br> [0x80000258]:sw s4, 72(gp)<br>     |
|  20|[0x80003250]<br>0x00000100|- rs1 : x10<br> - rs2 : x22<br> - rd : x14<br> - rs1_val == 2048<br>                                                                                                                                                                      |[0x80000270]:div a4, a0, s6<br> [0x80000274]:sw a4, 0(t1)<br>      |
|  21|[0x80003254]<br>0x00000000|- rs1 : x26<br> - rs2 : x15<br> - rd : x9<br> - rs2_val == -2097153<br> - rs1_val == 4096<br>                                                                                                                                             |[0x80000284]:div s1, s10, a5<br> [0x80000288]:sw s1, 4(t1)<br>     |
|  22|[0x80003258]<br>0x0000038E|- rs1 : x16<br> - rs2 : x12<br> - rd : x23<br> - rs1_val == 8192<br>                                                                                                                                                                      |[0x80000294]:div s7, a6, a2<br> [0x80000298]:sw s7, 8(t1)<br>      |
|  23|[0x8000325c]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x0<br> - rd : x11<br> - rs1_val == 16384<br>                                                                                                                                                                      |[0x800002a8]:div a1, s4, zero<br> [0x800002ac]:sw a1, 12(t1)<br>   |
|  24|[0x80003260]<br>0x00000000|- rs1 : x23<br> - rs2 : x31<br> - rd : x1<br> - rs2_val == 1431655765<br> - rs1_val == 32768<br>                                                                                                                                          |[0x800002bc]:div ra, s7, t6<br> [0x800002c0]:sw ra, 16(t1)<br>     |
|  25|[0x80003264]<br>0xFFFFFF01|- rs1 : x9<br> - rs2 : x4<br> - rd : x18<br> - rs2_val == -257<br> - rs1_val == 65536<br>                                                                                                                                                 |[0x800002cc]:div s2, s1, tp<br> [0x800002d0]:sw s2, 20(t1)<br>     |
|  26|[0x80003268]<br>0x00000000|- rs1 : x17<br> - rs2 : x23<br> - rd : x27<br> - rs2_val == 16777216<br> - rs1_val == 131072<br>                                                                                                                                          |[0x800002dc]:div s11, a7, s7<br> [0x800002e0]:sw s11, 24(t1)<br>   |
|  27|[0x8000326c]<br>0x00008000|- rs1 : x11<br> - rs2 : x20<br> - rd : x31<br> - rs1_val == 262144<br>                                                                                                                                                                    |[0x800002ec]:div t6, a1, s4<br> [0x800002f0]:sw t6, 28(t1)<br>     |
|  28|[0x80003270]<br>0x0002AAAA|- rs1 : x27<br> - rs2 : x1<br> - rd : x3<br> - rs1_val == 524288<br>                                                                                                                                                                      |[0x800002fc]:div gp, s11, ra<br> [0x80000300]:sw gp, 32(t1)<br>    |
|  29|[0x80003274]<br>0x00000020|- rs1 : x5<br> - rs2 : x29<br> - rd : x15<br> - rs2_val == 32768<br> - rs1_val == 1048576<br>                                                                                                                                             |[0x8000030c]:div a5, t0, t4<br> [0x80000310]:sw a5, 36(t1)<br>     |
|  30|[0x80003278]<br>0x00000080|- rs1 : x18<br> - rs2 : x21<br> - rd : x2<br> - rs1_val == 4194304<br>                                                                                                                                                                    |[0x8000031c]:div sp, s2, s5<br> [0x80000320]:sw sp, 40(t1)<br>     |
|  31|[0x8000327c]<br>0x00010000|- rs1 : x3<br> - rs2 : x13<br> - rd : x26<br> - rs2_val == 128<br> - rs1_val == 8388608<br>                                                                                                                                               |[0x8000032c]:div s10, gp, a3<br> [0x80000330]:sw s10, 44(t1)<br>   |
|  32|[0x80003280]<br>0x00000000|- rs1 : x14<br> - rs2 : x3<br> - rd : x16<br> - rs2_val == -134217729<br> - rs1_val == 16777216<br>                                                                                                                                       |[0x80000340]:div a6, a4, gp<br> [0x80000344]:sw a6, 48(t1)<br>     |
|  33|[0x80003284]<br>0xFFFFFFE1|- rs2_val == -1048577<br> - rs1_val == 33554432<br>                                                                                                                                                                                       |[0x80000354]:div a2, a0, a1<br> [0x80000358]:sw a2, 52(t1)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs2_val == -268435457<br> - rs1_val == 67108864<br>                                                                                                                                                                                     |[0x80000368]:div a2, a0, a1<br> [0x8000036c]:sw a2, 56(t1)<br>     |
|  35|[0x8000328c]<br>0xFF878788|- rs1_val == 134217728<br>                                                                                                                                                                                                                |[0x80000378]:div a2, a0, a1<br> [0x8000037c]:sw a2, 60(t1)<br>     |
|  36|[0x80003290]<br>0x00004000|- rs2_val == 16384<br> - rs1_val == 268435456<br>                                                                                                                                                                                         |[0x80000388]:div a2, a0, a1<br> [0x8000038c]:sw a2, 64(t1)<br>     |
|  37|[0x80003294]<br>0xFFFFFFF9|- rs2_val == -67108865<br> - rs1_val == 536870912<br>                                                                                                                                                                                     |[0x8000039c]:div a2, a0, a1<br> [0x800003a0]:sw a2, 68(t1)<br>     |
|  38|[0x80003298]<br>0x00000000|- rs2_val == -1431655766<br> - rs1_val == 1073741824<br>                                                                                                                                                                                  |[0x800003b0]:div a2, a0, a1<br> [0x800003b4]:sw a2, 72(t1)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == -2<br>                                                                                                                                                                                                                       |[0x800003c4]:div a2, a0, a1<br> [0x800003c8]:sw a2, 76(t1)<br>     |
|  40|[0x800032a0]<br>0x00000000|- rs2_val == -16777217<br> - rs1_val == -3<br>                                                                                                                                                                                            |[0x800003d8]:div a2, a0, a1<br> [0x800003dc]:sw a2, 80(t1)<br>     |
|  41|[0x800032a4]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                                                                                       |[0x800003e8]:div a2, a0, a1<br> [0x800003ec]:sw a2, 84(t1)<br>     |
|  42|[0x800032a8]<br>0x00000000|- rs1_val == -9<br>                                                                                                                                                                                                                       |[0x800003f8]:div a2, a0, a1<br> [0x800003fc]:sw a2, 88(t1)<br>     |
|  43|[0x800032ac]<br>0xFFFFEAAB|- rs2_val == -262145<br> - rs1_val == 1431655765<br>                                                                                                                                                                                      |[0x80000410]:div a2, a0, a1<br> [0x80000414]:sw a2, 92(t1)<br>     |
|  44|[0x800032b0]<br>0x000000FF|- rs2_val == -524289<br> - rs1_val == -134217729<br>                                                                                                                                                                                      |[0x80000428]:div a2, a0, a1<br> [0x8000042c]:sw a2, 96(t1)<br>     |
|  45|[0x800032b4]<br>0x00000000|- rs2_val == -8388609<br> - rs1_val == -513<br>                                                                                                                                                                                           |[0x8000043c]:div a2, a0, a1<br> [0x80000440]:sw a2, 100(t1)<br>    |
|  46|[0x800032b8]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                                                                               |[0x80000450]:div a2, a0, a1<br> [0x80000454]:sw a2, 104(t1)<br>    |
|  47|[0x800032bc]<br>0x00000000|- rs1_val == -17<br>                                                                                                                                                                                                                      |[0x80000464]:div a2, a0, a1<br> [0x80000468]:sw a2, 108(t1)<br>    |
|  48|[0x800032c0]<br>0x00000000|- rs1_val == -33<br>                                                                                                                                                                                                                      |[0x80000478]:div a2, a0, a1<br> [0x8000047c]:sw a2, 112(t1)<br>    |
|  49|[0x800032c4]<br>0x00000041|- rs1_val == -65<br>                                                                                                                                                                                                                      |[0x80000488]:div a2, a0, a1<br> [0x8000048c]:sw a2, 116(t1)<br>    |
|  50|[0x800032c8]<br>0x00000000|- rs2_val == 4194304<br> - rs1_val == -129<br>                                                                                                                                                                                            |[0x80000498]:div a2, a0, a1<br> [0x8000049c]:sw a2, 120(t1)<br>    |
|  51|[0x800032cc]<br>0x00000000|- rs2_val == 1048576<br> - rs1_val == -257<br>                                                                                                                                                                                            |[0x800004a8]:div a2, a0, a1<br> [0x800004ac]:sw a2, 124(t1)<br>    |
|  52|[0x800032d0]<br>0xFFFFFD55|- rs1_val == -2049<br>                                                                                                                                                                                                                    |[0x800004bc]:div a2, a0, a1<br> [0x800004c0]:sw a2, 128(t1)<br>    |
|  53|[0x800032d4]<br>0x00000000|- rs2_val == 8192<br> - rs1_val == -4097<br>                                                                                                                                                                                              |[0x800004d0]:div a2, a0, a1<br> [0x800004d4]:sw a2, 132(t1)<br>    |
|  54|[0x800032d8]<br>0x0000007E|- rs2_val == -65<br>                                                                                                                                                                                                                      |[0x800004e4]:div a2, a0, a1<br> [0x800004e8]:sw a2, 136(t1)<br>    |
|  55|[0x800032dc]<br>0xFFFFFFE0|- rs2_val == 512<br> - rs1_val == -16385<br>                                                                                                                                                                                              |[0x800004f8]:div a2, a0, a1<br> [0x800004fc]:sw a2, 140(t1)<br>    |
|  56|[0x800032e0]<br>0x00010001|- rs1_val == -65537<br>                                                                                                                                                                                                                   |[0x8000050c]:div a2, a0, a1<br> [0x80000510]:sw a2, 144(t1)<br>    |
|  57|[0x800032e4]<br>0x00000000|- rs1_val == -262145<br>                                                                                                                                                                                                                  |[0x80000524]:div a2, a0, a1<br> [0x80000528]:sw a2, 148(t1)<br>    |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == -524289<br>                                                                                                                                                                                                                  |[0x8000053c]:div a2, a0, a1<br> [0x80000540]:sw a2, 152(t1)<br>    |
|  59|[0x800032ec]<br>0xFFFFF800|- rs1_val == -1048577<br>                                                                                                                                                                                                                 |[0x80000550]:div a2, a0, a1<br> [0x80000554]:sw a2, 156(t1)<br>    |
|  60|[0x800032f0]<br>0xFFFFFFFE|- rs1_val == -2097153<br>                                                                                                                                                                                                                 |[0x80000564]:div a2, a0, a1<br> [0x80000568]:sw a2, 160(t1)<br>    |
|  61|[0x800032f4]<br>0xFFFFE000|- rs1_val == -4194305<br>                                                                                                                                                                                                                 |[0x80000578]:div a2, a0, a1<br> [0x8000057c]:sw a2, 164(t1)<br>    |
|  62|[0x800032f8]<br>0x00000000|- rs1_val == -8388609<br>                                                                                                                                                                                                                 |[0x80000590]:div a2, a0, a1<br> [0x80000594]:sw a2, 168(t1)<br>    |
|  63|[0x800032fc]<br>0x00000000|- rs1_val == -16777217<br>                                                                                                                                                                                                                |[0x800005a8]:div a2, a0, a1<br> [0x800005ac]:sw a2, 172(t1)<br>    |
|  64|[0x80003300]<br>0x00000000|- rs1_val == -33554433<br>                                                                                                                                                                                                                |[0x800005c0]:div a2, a0, a1<br> [0x800005c4]:sw a2, 176(t1)<br>    |
|  65|[0x80003304]<br>0x000000FF|- rs1_val == -67108865<br>                                                                                                                                                                                                                |[0x800005d8]:div a2, a0, a1<br> [0x800005dc]:sw a2, 180(t1)<br>    |
|  66|[0x80003308]<br>0x04000000|- rs1_val == -536870913<br>                                                                                                                                                                                                               |[0x800005ec]:div a2, a0, a1<br> [0x800005f0]:sw a2, 184(t1)<br>    |
|  67|[0x8000330c]<br>0xFFFFF800|- rs2_val == 524288<br> - rs1_val == -1073741825<br>                                                                                                                                                                                      |[0x80000600]:div a2, a0, a1<br> [0x80000604]:sw a2, 188(t1)<br>    |
|  68|[0x80003310]<br>0x00002AAA|- rs2_val == -131073<br> - rs1_val == -1431655766<br>                                                                                                                                                                                     |[0x80000618]:div a2, a0, a1<br> [0x8000061c]:sw a2, 192(t1)<br>    |
|  69|[0x80003314]<br>0x00800000|- rs2_val == 2<br>                                                                                                                                                                                                                        |[0x80000628]:div a2, a0, a1<br> [0x8000062c]:sw a2, 196(t1)<br>    |
|  70|[0x80003318]<br>0x00000200|- rs2_val == 16<br>                                                                                                                                                                                                                       |[0x80000638]:div a2, a0, a1<br> [0x8000063c]:sw a2, 200(t1)<br>    |
|  71|[0x8000331c]<br>0xFFFFFC00|- rs2_val == 32<br>                                                                                                                                                                                                                       |[0x8000064c]:div a2, a0, a1<br> [0x80000650]:sw a2, 204(t1)<br>    |
|  72|[0x80003320]<br>0xFFFFFFFC|- rs2_val == 64<br>                                                                                                                                                                                                                       |[0x8000065c]:div a2, a0, a1<br> [0x80000660]:sw a2, 208(t1)<br>    |
|  73|[0x80003324]<br>0x00020000|- rs2_val == 256<br>                                                                                                                                                                                                                      |[0x8000066c]:div a2, a0, a1<br> [0x80000670]:sw a2, 212(t1)<br>    |
|  74|[0x80003328]<br>0x00000008|- rs2_val == 1024<br>                                                                                                                                                                                                                     |[0x8000067c]:div a2, a0, a1<br> [0x80000680]:sw a2, 216(t1)<br>    |
|  75|[0x8000332c]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                                                     |[0x80000690]:div a2, a0, a1<br> [0x80000694]:sw a2, 220(t1)<br>    |
|  76|[0x80003330]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                                                                                     |[0x800006a0]:div a2, a0, a1<br> [0x800006a4]:sw a2, 224(t1)<br>    |
|  77|[0x80003334]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                                                                    |[0x800006b0]:div a2, a0, a1<br> [0x800006b4]:sw a2, 228(t1)<br>    |
|  78|[0x80003338]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                                                                                                                   |[0x800006c0]:div a2, a0, a1<br> [0x800006c4]:sw a2, 232(t1)<br>    |
|  79|[0x8000333c]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                                   |[0x800006d0]:div a2, a0, a1<br> [0x800006d4]:sw a2, 236(t1)<br>    |
|  80|[0x80003340]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                                                                                  |[0x800006e4]:div a2, a0, a1<br> [0x800006e8]:sw a2, 240(t1)<br>    |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                                                                                 |[0x800006f4]:div a2, a0, a1<br> [0x800006f8]:sw a2, 244(t1)<br>    |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                                                                 |[0x80000708]:div a2, a0, a1<br> [0x8000070c]:sw a2, 248(t1)<br>    |
|  83|[0x8000334c]<br>0x00000002|- rs2_val == 536870912<br>                                                                                                                                                                                                                |[0x80000718]:div a2, a0, a1<br> [0x8000071c]:sw a2, 252(t1)<br>    |
|  84|[0x80003350]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                                                                                                                               |[0x8000072c]:div a2, a0, a1<br> [0x80000730]:sw a2, 256(t1)<br>    |
|  85|[0x80003354]<br>0x00155555|- rs2_val == -3<br>                                                                                                                                                                                                                       |[0x80000740]:div a2, a0, a1<br> [0x80000744]:sw a2, 260(t1)<br>    |
|  86|[0x80003358]<br>0x00006666|- rs2_val == -5<br>                                                                                                                                                                                                                       |[0x80000754]:div a2, a0, a1<br> [0x80000758]:sw a2, 264(t1)<br>    |
|  87|[0x8000335c]<br>0xFF1C71C8|- rs2_val == -9<br>                                                                                                                                                                                                                       |[0x80000764]:div a2, a0, a1<br> [0x80000768]:sw a2, 268(t1)<br>    |
|  88|[0x80003360]<br>0xFFFFFC20|- rs2_val == -33<br>                                                                                                                                                                                                                      |[0x80000774]:div a2, a0, a1<br> [0x80000778]:sw a2, 272(t1)<br>    |
|  89|[0x80003364]<br>0x00001FC0|- rs2_val == -129<br>                                                                                                                                                                                                                     |[0x80000788]:div a2, a0, a1<br> [0x8000078c]:sw a2, 276(t1)<br>    |
|  90|[0x80003368]<br>0xFFFFFF81|- rs2_val == -513<br>                                                                                                                                                                                                                     |[0x80000798]:div a2, a0, a1<br> [0x8000079c]:sw a2, 280(t1)<br>    |
|  91|[0x8000336c]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                                                                    |[0x800007a8]:div a2, a0, a1<br> [0x800007ac]:sw a2, 284(t1)<br>    |
|  92|[0x80003370]<br>0x00000000|- rs2_val == -2049<br>                                                                                                                                                                                                                    |[0x800007bc]:div a2, a0, a1<br> [0x800007c0]:sw a2, 288(t1)<br>    |
|  93|[0x80003374]<br>0x00000000|- rs2_val == -4097<br>                                                                                                                                                                                                                    |[0x800007d0]:div a2, a0, a1<br> [0x800007d4]:sw a2, 292(t1)<br>    |
|  94|[0x80003378]<br>0xFFFFFFFD|- rs2_val == -16385<br>                                                                                                                                                                                                                   |[0x800007e4]:div a2, a0, a1<br> [0x800007e8]:sw a2, 296(t1)<br>    |
|  95|[0x8000337c]<br>0xFFFFFFFD|- rs2_val == -65537<br>                                                                                                                                                                                                                   |[0x800007f8]:div a2, a0, a1<br> [0x800007fc]:sw a2, 300(t1)<br>    |
|  96|[0x80003384]<br>0x00000000|- rs1_val == 1<br>                                                                                                                                                                                                                        |[0x80000820]:div a2, a0, a1<br> [0x80000824]:sw a2, 308(t1)<br>    |
|  97|[0x80003388]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                                                                    |[0x80000830]:div a2, a0, a1<br> [0x80000834]:sw a2, 312(t1)<br>    |
|  98|[0x8000338c]<br>0x00000000|- rs2_val == 8388608<br>                                                                                                                                                                                                                  |[0x80000840]:div a2, a0, a1<br> [0x80000844]:sw a2, 316(t1)<br>    |
