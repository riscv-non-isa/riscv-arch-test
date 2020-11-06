
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007e0')]      |
| SIG_REGION                | [('0x80003204', '0x80003378', '93 words')]      |
| COV_LABELS                | rem      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/rem-01.S/rem-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 93      |
| STAT1                     | 91      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d8]:rem a2, a0, a1
      [0x800005dc]:sw a2, 180(ra)
 -- Signature Address: 0x80003308 Data: 0xFFFFE07E
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -8193
      - rs1_val == -1048577




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d8]:rem a2, a0, a1
      [0x800007dc]:sw a2, 288(ra)
 -- Signature Address: 0x80003374 Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -16777217
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

|s.no|        signature         |                                                                                             coverpoints                                                                                              |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : rem<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -1048577<br> - rs1_val == -1048577<br> |[0x8000010c]:rem t6, t0, t0<br> [0x80000110]:sw t6, 0(fp)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x20<br> - rs2 : x10<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -5<br>                                          |[0x8000011c]:rem s2, s4, a0<br> [0x80000120]:sw s2, 4(fp)<br>      |
|   3|[0x8000320c]<br>0x000003FF|- rs1 : x27<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1024<br> - rs1_val == 2147483647<br>              |[0x80000130]:rem gp, s11, gp<br> [0x80000134]:sw gp, 8(fp)<br>     |
|   4|[0x80003210]<br>0x00000001|- rs1 : x14<br> - rs2 : x26<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_val == 1<br> - rs2_val == 32<br>                                                                                          |[0x80000140]:rem a4, a4, s10<br> [0x80000144]:sw a4, 12(fp)<br>    |
|   5|[0x80003214]<br>0x00000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>       |[0x80000150]:rem s9, s9, s9<br> [0x80000154]:sw s9, 16(fp)<br>     |
|   6|[0x80003218]<br>0x00000009|- rs1 : x31<br> - rs2 : x14<br> - rd : x28<br> - rs2_val == 0<br>                                                                                                                                     |[0x80000160]:rem t3, t6, a4<br> [0x80000164]:sw t3, 20(fp)<br>     |
|   7|[0x8000321c]<br>0xFFFFFFFE|- rs1 : x12<br> - rs2 : x22<br> - rd : x10<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -2<br>                                     |[0x80000174]:rem a0, a2, s6<br> [0x80000178]:sw a0, 24(fp)<br>     |
|   8|[0x80003220]<br>0x00000000|- rs1 : x17<br> - rs2 : x15<br> - rd : x22<br> - rs2_val == 1<br> - rs1_val == 1431655765<br>                                                                                                         |[0x80000188]:rem s6, a7, a5<br> [0x8000018c]:sw s6, 28(fp)<br>     |
|   9|[0x80003224]<br>0x00000020|- rs1 : x24<br> - rs2 : x17<br> - rd : x12<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -16385<br> - rs1_val == 32<br>                                                                          |[0x8000019c]:rem a2, s8, a7<br> [0x800001a0]:sw a2, 32(fp)<br>     |
|  10|[0x80003228]<br>0x00000000|- rs1 : x29<br> - rs2 : x6<br> - rd : x15<br>                                                                                                                                                         |[0x800001ac]:rem a5, t4, t1<br> [0x800001b0]:sw a5, 36(fp)<br>     |
|  11|[0x8000322c]<br>0x00000002|- rs1 : x19<br> - rs2 : x31<br> - rd : x1<br> - rs2_val == 1048576<br> - rs1_val == 2<br>                                                                                                             |[0x800001bc]:rem ra, s3, t6<br> [0x800001c0]:sw ra, 40(fp)<br>     |
|  12|[0x80003230]<br>0x00000004|- rs1 : x18<br> - rs2 : x16<br> - rd : x4<br> - rs2_val == 33554432<br> - rs1_val == 4<br>                                                                                                            |[0x800001cc]:rem tp, s2, a6<br> [0x800001d0]:sw tp, 44(fp)<br>     |
|  13|[0x80003234]<br>0x00000008|- rs1 : x9<br> - rs2 : x11<br> - rd : x5<br> - rs2_val == -131073<br> - rs1_val == 8<br>                                                                                                              |[0x800001e0]:rem t0, s1, a1<br> [0x800001e4]:sw t0, 48(fp)<br>     |
|  14|[0x80003238]<br>0x00000010|- rs1 : x2<br> - rs2 : x13<br> - rd : x17<br> - rs2_val == -33554433<br> - rs1_val == 16<br>                                                                                                          |[0x800001f4]:rem a7, sp, a3<br> [0x800001f8]:sw a7, 52(fp)<br>     |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x1<br> - rs2 : x28<br> - rd : x16<br> - rs2_val == 4<br> - rs1_val == 64<br>                                                                                                                  |[0x80000204]:rem a6, ra, t3<br> [0x80000208]:sw a6, 56(fp)<br>     |
|  16|[0x80003240]<br>0x00000008|- rs1 : x11<br> - rs2 : x7<br> - rd : x6<br> - rs1_val == 128<br>                                                                                                                                     |[0x80000214]:rem t1, a1, t2<br> [0x80000218]:sw t1, 60(fp)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x0<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == -4097<br>                                                                                                                                  |[0x80000228]:rem a1, zero, a2<br> [0x8000022c]:sw a1, 64(fp)<br>   |
|  18|[0x80003248]<br>0x00000000|- rs1 : x16<br> - rs2 : x20<br> - rd : x0<br> - rs2_val == -16777217<br> - rs1_val == 512<br>                                                                                                         |[0x8000023c]:rem zero, a6, s4<br> [0x80000240]:sw zero, 68(fp)<br> |
|  19|[0x8000324c]<br>0x00000400|- rs1 : x4<br> - rs2 : x0<br> - rd : x7<br> - rs1_val == 1024<br>                                                                                                                                     |[0x8000024c]:rem t2, tp, zero<br> [0x80000250]:sw t2, 72(fp)<br>   |
|  20|[0x80003250]<br>0x00000800|- rs1 : x3<br> - rs2 : x1<br> - rd : x30<br> - rs2_val == -2097153<br> - rs1_val == 2048<br>                                                                                                          |[0x80000264]:rem t5, gp, ra<br> [0x80000268]:sw t5, 76(fp)<br>     |
|  21|[0x80003254]<br>0x00001000|- rs1 : x10<br> - rs2 : x19<br> - rd : x2<br> - rs2_val == 131072<br> - rs1_val == 4096<br>                                                                                                           |[0x8000027c]:rem sp, a0, s3<br> [0x80000280]:sw sp, 0(ra)<br>      |
|  22|[0x80003258]<br>0x00002000|- rs1 : x30<br> - rs2 : x8<br> - rd : x19<br> - rs1_val == 8192<br>                                                                                                                                   |[0x80000290]:rem s3, t5, fp<br> [0x80000294]:sw s3, 4(ra)<br>      |
|  23|[0x8000325c]<br>0x00004000|- rs1 : x13<br> - rs2 : x24<br> - rd : x20<br> - rs1_val == 16384<br>                                                                                                                                 |[0x800002a4]:rem s4, a3, s8<br> [0x800002a8]:sw s4, 8(ra)<br>      |
|  24|[0x80003260]<br>0x00000002|- rs1 : x23<br> - rs2 : x2<br> - rd : x13<br> - rs1_val == 32768<br>                                                                                                                                  |[0x800002b4]:rem a3, s7, sp<br> [0x800002b8]:sw a3, 12(ra)<br>     |
|  25|[0x80003264]<br>0x00010000|- rs1 : x8<br> - rs2 : x29<br> - rd : x21<br> - rs2_val == 1073741824<br> - rs1_val == 65536<br>                                                                                                      |[0x800002c4]:rem s5, fp, t4<br> [0x800002c8]:sw s5, 16(ra)<br>     |
|  26|[0x80003268]<br>0x00020000|- rs1 : x7<br> - rs2 : x4<br> - rd : x27<br> - rs2_val == 1431655765<br> - rs1_val == 131072<br>                                                                                                      |[0x800002d8]:rem s11, t2, tp<br> [0x800002dc]:sw s11, 20(ra)<br>   |
|  27|[0x8000326c]<br>0x00000FC1|- rs1 : x26<br> - rs2 : x21<br> - rd : x23<br> - rs1_val == 262144<br>                                                                                                                                |[0x800002ec]:rem s7, s10, s5<br> [0x800002f0]:sw s7, 24(ra)<br>    |
|  28|[0x80003270]<br>0x00000011|- rs1 : x15<br> - rs2 : x23<br> - rd : x26<br> - rs2_val == -33<br> - rs1_val == 524288<br>                                                                                                           |[0x800002fc]:rem s10, a5, s7<br> [0x80000300]:sw s10, 28(ra)<br>   |
|  29|[0x80003274]<br>0x00100000|- rs1 : x22<br> - rs2 : x9<br> - rd : x29<br> - rs1_val == 1048576<br>                                                                                                                                |[0x8000030c]:rem t4, s6, s1<br> [0x80000310]:sw t4, 32(ra)<br>     |
|  30|[0x80003278]<br>0x00000002|- rs1 : x6<br> - rs2 : x30<br> - rd : x8<br> - rs2_val == -1025<br> - rs1_val == 2097152<br>                                                                                                          |[0x8000031c]:rem fp, t1, t5<br> [0x80000320]:sw fp, 36(ra)<br>     |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x21<br> - rs2 : x27<br> - rd : x9<br> - rs2_val == 16<br> - rs1_val == 4194304<br>                                                                                                            |[0x8000032c]:rem s1, s5, s11<br> [0x80000330]:sw s1, 40(ra)<br>    |
|  32|[0x80003280]<br>0x00800000|- rs1 : x28<br> - rs2 : x18<br> - rd : x24<br> - rs2_val == -1073741825<br> - rs1_val == 8388608<br>                                                                                                  |[0x80000340]:rem s8, t3, s2<br> [0x80000344]:sw s8, 44(ra)<br>     |
|  33|[0x80003284]<br>0x00000000|- rs2_val == 256<br> - rs1_val == 16777216<br>                                                                                                                                                        |[0x80000350]:rem a2, a0, a1<br> [0x80000354]:sw a2, 48(ra)<br>     |
|  34|[0x80003288]<br>0x00007C01|- rs2_val == -32769<br> - rs1_val == 33554432<br>                                                                                                                                                     |[0x80000364]:rem a2, a0, a1<br> [0x80000368]:sw a2, 52(ra)<br>     |
|  35|[0x8000328c]<br>0x00003001|- rs1_val == 67108864<br>                                                                                                                                                                             |[0x80000378]:rem a2, a0, a1<br> [0x8000037c]:sw a2, 56(ra)<br>     |
|  36|[0x80003290]<br>0x00000003|- rs1_val == 134217728<br>                                                                                                                                                                            |[0x80000388]:rem a2, a0, a1<br> [0x8000038c]:sw a2, 60(ra)<br>     |
|  37|[0x80003294]<br>0x00000007|- rs2_val == -9<br> - rs1_val == 268435456<br>                                                                                                                                                        |[0x80000398]:rem a2, a0, a1<br> [0x8000039c]:sw a2, 64(ra)<br>     |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                            |[0x800003a8]:rem a2, a0, a1<br> [0x800003ac]:sw a2, 68(ra)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                           |[0x800003b8]:rem a2, a0, a1<br> [0x800003bc]:sw a2, 72(ra)<br>     |
|  40|[0x800032a0]<br>0xFFFFFFFD|- rs2_val == -1431655766<br> - rs1_val == -3<br>                                                                                                                                                      |[0x800003cc]:rem a2, a0, a1<br> [0x800003d0]:sw a2, 76(ra)<br>     |
|  41|[0x800032a4]<br>0xFFFFFFFB|- rs2_val == 134217728<br> - rs1_val == -5<br>                                                                                                                                                        |[0x800003dc]:rem a2, a0, a1<br> [0x800003e0]:sw a2, 80(ra)<br>     |
|  42|[0x800032a8]<br>0xFFFFFFF7|- rs2_val == 524288<br> - rs1_val == -9<br>                                                                                                                                                           |[0x800003ec]:rem a2, a0, a1<br> [0x800003f0]:sw a2, 84(ra)<br>     |
|  43|[0x800032ac]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                  |[0x800003fc]:rem a2, a0, a1<br> [0x80000400]:sw a2, 88(ra)<br>     |
|  44|[0x800032b0]<br>0xFFFFFFDF|- rs1_val == -33<br>                                                                                                                                                                                  |[0x8000040c]:rem a2, a0, a1<br> [0x80000410]:sw a2, 92(ra)<br>     |
|  45|[0x800032b4]<br>0xFFFC00FE|- rs2_val == -262145<br> - rs1_val == -67108865<br>                                                                                                                                                   |[0x80000424]:rem a2, a0, a1<br> [0x80000428]:sw a2, 96(ra)<br>     |
|  46|[0x800032b8]<br>0xFFFBFFFF|- rs2_val == -524289<br> - rs1_val == -262145<br>                                                                                                                                                     |[0x8000043c]:rem a2, a0, a1<br> [0x80000440]:sw a2, 100(ra)<br>    |
|  47|[0x800032bc]<br>0xFFFFFFF6|- rs2_val == -4194305<br>                                                                                                                                                                             |[0x80000450]:rem a2, a0, a1<br> [0x80000454]:sw a2, 104(ra)<br>    |
|  48|[0x800032c0]<br>0x00000004|- rs2_val == -8388609<br>                                                                                                                                                                             |[0x80000464]:rem a2, a0, a1<br> [0x80000468]:sw a2, 108(ra)<br>    |
|  49|[0x800032c4]<br>0x00000200|- rs2_val == -67108865<br>                                                                                                                                                                            |[0x80000478]:rem a2, a0, a1<br> [0x8000047c]:sw a2, 112(ra)<br>    |
|  50|[0x800032c8]<br>0xFDFFFFFF|- rs2_val == -134217729<br> - rs1_val == -33554433<br>                                                                                                                                                |[0x80000490]:rem a2, a0, a1<br> [0x80000494]:sw a2, 116(ra)<br>    |
|  51|[0x800032cc]<br>0x00000004|- rs2_val == -268435457<br>                                                                                                                                                                           |[0x800004a4]:rem a2, a0, a1<br> [0x800004a8]:sw a2, 120(ra)<br>    |
|  52|[0x800032d0]<br>0xFFFFFFFB|- rs2_val == -536870913<br>                                                                                                                                                                           |[0x800004b8]:rem a2, a0, a1<br> [0x800004bc]:sw a2, 124(ra)<br>    |
|  53|[0x800032d4]<br>0xFFFFFFFB|- rs1_val == -65<br>                                                                                                                                                                                  |[0x800004c8]:rem a2, a0, a1<br> [0x800004cc]:sw a2, 128(ra)<br>    |
|  54|[0x800032d8]<br>0xFFFFFF7F|- rs2_val == 268435456<br> - rs1_val == -129<br>                                                                                                                                                      |[0x800004d8]:rem a2, a0, a1<br> [0x800004dc]:sw a2, 132(ra)<br>    |
|  55|[0x800032dc]<br>0xFFFFFFFF|- rs2_val == 2<br> - rs1_val == -257<br>                                                                                                                                                              |[0x800004e8]:rem a2, a0, a1<br> [0x800004ec]:sw a2, 136(ra)<br>    |
|  56|[0x800032e0]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                                                                                 |[0x800004fc]:rem a2, a0, a1<br> [0x80000500]:sw a2, 140(ra)<br>    |
|  57|[0x800032e4]<br>0xFFFFFBFF|- rs2_val == 16384<br> - rs1_val == -1025<br>                                                                                                                                                         |[0x8000050c]:rem a2, a0, a1<br> [0x80000510]:sw a2, 144(ra)<br>    |
|  58|[0x800032e8]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                                                                |[0x80000524]:rem a2, a0, a1<br> [0x80000528]:sw a2, 148(ra)<br>    |
|  59|[0x800032ec]<br>0xFFFFEFFF|- rs2_val == 8388608<br> - rs1_val == -4097<br>                                                                                                                                                       |[0x80000538]:rem a2, a0, a1<br> [0x8000053c]:sw a2, 152(ra)<br>    |
|  60|[0x800032f0]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                                                                |[0x80000550]:rem a2, a0, a1<br> [0x80000554]:sw a2, 156(ra)<br>    |
|  61|[0x800032f4]<br>0xFFFFFFFF|- rs2_val == 2048<br> - rs1_val == -16385<br>                                                                                                                                                         |[0x80000568]:rem a2, a0, a1<br> [0x8000056c]:sw a2, 160(ra)<br>    |
|  62|[0x800032f8]<br>0xFFFFFFFF|- rs2_val == -2<br> - rs1_val == -32769<br>                                                                                                                                                           |[0x8000057c]:rem a2, a0, a1<br> [0x80000580]:sw a2, 164(ra)<br>    |
|  63|[0x800032fc]<br>0xFFFFE006|- rs2_val == -8193<br> - rs1_val == -65537<br>                                                                                                                                                        |[0x80000594]:rem a2, a0, a1<br> [0x80000598]:sw a2, 168(ra)<br>    |
|  64|[0x80003300]<br>0xFFFDFFFF|- rs2_val == 4194304<br> - rs1_val == -131073<br>                                                                                                                                                     |[0x800005a8]:rem a2, a0, a1<br> [0x800005ac]:sw a2, 172(ra)<br>    |
|  65|[0x80003304]<br>0xFFFF800E|- rs1_val == -524289<br>                                                                                                                                                                              |[0x800005c0]:rem a2, a0, a1<br> [0x800005c4]:sw a2, 176(ra)<br>    |
|  66|[0x8000330c]<br>0xFFDFFFFF|- rs2_val == 16777216<br> - rs1_val == -2097153<br>                                                                                                                                                   |[0x800005ec]:rem a2, a0, a1<br> [0x800005f0]:sw a2, 184(ra)<br>    |
|  67|[0x80003310]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                             |[0x80000600]:rem a2, a0, a1<br> [0x80000604]:sw a2, 188(ra)<br>    |
|  68|[0x80003314]<br>0xFFFFFFFF|- rs2_val == 8<br> - rs1_val == -8388609<br>                                                                                                                                                          |[0x80000614]:rem a2, a0, a1<br> [0x80000618]:sw a2, 192(ra)<br>    |
|  69|[0x80003318]<br>0xFFFFFFFF|- rs2_val == 64<br> - rs1_val == -16777217<br>                                                                                                                                                        |[0x80000628]:rem a2, a0, a1<br> [0x8000062c]:sw a2, 196(ra)<br>    |
|  70|[0x8000331c]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                           |[0x80000640]:rem a2, a0, a1<br> [0x80000644]:sw a2, 200(ra)<br>    |
|  71|[0x80003320]<br>0xFFFFFFFF|- rs2_val == 65536<br> - rs1_val == -268435457<br>                                                                                                                                                    |[0x80000654]:rem a2, a0, a1<br> [0x80000658]:sw a2, 204(ra)<br>    |
|  72|[0x80003324]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                           |[0x80000668]:rem a2, a0, a1<br> [0x8000066c]:sw a2, 208(ra)<br>    |
|  73|[0x80003328]<br>0xFF80007E|- rs1_val == -1073741825<br>                                                                                                                                                                          |[0x80000680]:rem a2, a0, a1<br> [0x80000684]:sw a2, 212(ra)<br>    |
|  74|[0x8000332c]<br>0xFFEAAAAA|- rs2_val == 2097152<br> - rs1_val == -1431655766<br>                                                                                                                                                 |[0x80000694]:rem a2, a0, a1<br> [0x80000698]:sw a2, 216(ra)<br>    |
|  75|[0x80003330]<br>0xFFFFFFFF|- rs2_val == 128<br>                                                                                                                                                                                  |[0x800006a8]:rem a2, a0, a1<br> [0x800006ac]:sw a2, 220(ra)<br>    |
|  76|[0x80003334]<br>0x00000008|- rs2_val == 262144<br>                                                                                                                                                                               |[0x800006b8]:rem a2, a0, a1<br> [0x800006bc]:sw a2, 224(ra)<br>    |
|  77|[0x80003338]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                             |[0x800006c8]:rem a2, a0, a1<br> [0x800006cc]:sw a2, 228(ra)<br>    |
|  78|[0x8000333c]<br>0x00000400|- rs2_val == 536870912<br>                                                                                                                                                                            |[0x800006d8]:rem a2, a0, a1<br> [0x800006dc]:sw a2, 232(ra)<br>    |
|  79|[0x80003340]<br>0x00000002|- rs2_val == -3<br>                                                                                                                                                                                   |[0x800006e8]:rem a2, a0, a1<br> [0x800006ec]:sw a2, 236(ra)<br>    |
|  80|[0x80003344]<br>0x00000002|- rs2_val == -17<br>                                                                                                                                                                                  |[0x800006f8]:rem a2, a0, a1<br> [0x800006fc]:sw a2, 240(ra)<br>    |
|  81|[0x80003348]<br>0x00000001|- rs2_val == -65<br>                                                                                                                                                                                  |[0x80000708]:rem a2, a0, a1<br> [0x8000070c]:sw a2, 244(ra)<br>    |
|  82|[0x8000334c]<br>0x000001F0|- rs2_val == -513<br>                                                                                                                                                                                 |[0x8000071c]:rem a2, a0, a1<br> [0x80000720]:sw a2, 248(ra)<br>    |
|  83|[0x80003350]<br>0x00000010|- rs2_val == -129<br>                                                                                                                                                                                 |[0x8000072c]:rem a2, a0, a1<br> [0x80000730]:sw a2, 252(ra)<br>    |
|  84|[0x80003354]<br>0x000000F9|- rs2_val == -257<br>                                                                                                                                                                                 |[0x8000073c]:rem a2, a0, a1<br> [0x80000740]:sw a2, 256(ra)<br>    |
|  85|[0x80003358]<br>0xFFFFFFFF|- rs2_val == 512<br>                                                                                                                                                                                  |[0x80000750]:rem a2, a0, a1<br> [0x80000754]:sw a2, 260(ra)<br>    |
|  86|[0x8000335c]<br>0x00000601|- rs2_val == -2049<br>                                                                                                                                                                                |[0x80000764]:rem a2, a0, a1<br> [0x80000768]:sw a2, 264(ra)<br>    |
|  87|[0x80003360]<br>0xFFFFFBFF|- rs2_val == 4096<br>                                                                                                                                                                                 |[0x80000774]:rem a2, a0, a1<br> [0x80000778]:sw a2, 268(ra)<br>    |
|  88|[0x80003364]<br>0x00000010|- rs2_val == 8192<br>                                                                                                                                                                                 |[0x80000784]:rem a2, a0, a1<br> [0x80000788]:sw a2, 272(ra)<br>    |
|  89|[0x80003368]<br>0xFFFFFFFF|- rs2_val == 32768<br>                                                                                                                                                                                |[0x80000798]:rem a2, a0, a1<br> [0x8000079c]:sw a2, 276(ra)<br>    |
|  90|[0x8000336c]<br>0xFFFFDFFF|- rs2_val == -65537<br>                                                                                                                                                                               |[0x800007b0]:rem a2, a0, a1<br> [0x800007b4]:sw a2, 280(ra)<br>    |
|  91|[0x80003370]<br>0x00000100|- rs1_val == 256<br>                                                                                                                                                                                  |[0x800007c4]:rem a2, a0, a1<br> [0x800007c8]:sw a2, 284(ra)<br>    |
