
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008a0')]      |
| SIG_REGION                | [('0x80003204', '0x800033b4', '108 words')]      |
| COV_LABELS                | divu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/divu-01.S/divu-01.S    |
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
      [0x80000538]:divu a2, a0, a1
      [0x8000053c]:sw a2, 160(ra)
 -- Signature Address: 0x800032f8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -8388609
      - rs1_val == -4097




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000574]:divu a2, a0, a1
      [0x80000578]:sw a2, 172(ra)
 -- Signature Address: 0x80003304 Data: 0x249236DB
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == -32769




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000874]:divu a2, a0, a1
      [0x80000878]:sw a2, 336(ra)
 -- Signature Address: 0x800033a8 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1
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

|s.no|        signature         |                                                                                            coverpoints                                                                                            |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000001|- opcode : divu<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -32769<br> - rs1_val == -32769<br> |[0x8000010c]:divu a2, sp, sp<br> [0x80000110]:sw a2, 0(s1)<br>      |
|   2|[0x80003214]<br>0x00000001|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs2_val == -4097<br> - rs1_val == -4097<br>                                                                                |[0x80000120]:divu s5, s5, s5<br> [0x80000124]:sw s5, 4(s1)<br>      |
|   3|[0x80003218]<br>0x00000000|- rs1 : x14<br> - rs2 : x22<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>      |[0x80000134]:divu a4, a4, s6<br> [0x80000138]:sw a4, 8(s1)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x23<br> - rs2 : x8<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == 1<br> - rs2_val == 524288<br>                           |[0x80000144]:divu s11, s7, fp<br> [0x80000148]:sw s11, 12(s1)<br>   |
|   5|[0x80003220]<br>0x00000000|- rs1 : x29<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                   |[0x80000154]:divu ra, t4, ra<br> [0x80000158]:sw ra, 16(s1)<br>     |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x5<br> - rd : x16<br> - rs2_val == 0<br> - rs1_val == -9<br>                                                                                                               |[0x80000164]:divu a6, t3, t0<br> [0x80000168]:sw a6, 20(s1)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x24<br> - rs2 : x23<br> - rd : x31<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 2097152<br>                                                               |[0x80000178]:divu t6, s8, s7<br> [0x8000017c]:sw t6, 24(s1)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x8<br> - rs2 : x4<br> - rd : x0<br> - rs2_val == 1<br> - rs1_val == 8<br>                                                                                                                  |[0x80000188]:divu zero, fp, tp<br> [0x8000018c]:sw zero, 28(s1)<br> |
|   9|[0x80003230]<br>0x001FFFFF|- rs1 : x3<br> - rs2 : x24<br> - rd : x15<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 2048<br> - rs1_val == -33<br>                                                                         |[0x8000019c]:divu a5, gp, s8<br> [0x800001a0]:sw a5, 32(s1)<br>     |
|  10|[0x80003234]<br>0x00000001|- rs1 : x1<br> - rs2 : x17<br> - rd : x24<br> - rs2_val == 1048576<br> - rs1_val == 1048576<br>                                                                                                    |[0x800001ac]:divu s8, ra, a7<br> [0x800001b0]:sw s8, 36(s1)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x26<br> - rs2 : x6<br> - rd : x7<br> - rs1_val == 2<br>                                                                                                                                    |[0x800001bc]:divu t2, s10, t1<br> [0x800001c0]:sw t2, 40(s1)<br>    |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x11<br> - rs1_val == 0<br> - rs2_val == 256<br>                                                                                                              |[0x800001cc]:divu a1, zero, t4<br> [0x800001d0]:sw a1, 44(s1)<br>   |
|  13|[0x80003240]<br>0x00000000|- rs1 : x11<br> - rs2 : x25<br> - rd : x3<br> - rs2_val == 512<br> - rs1_val == 16<br>                                                                                                             |[0x800001dc]:divu gp, a1, s9<br> [0x800001e0]:sw gp, 48(s1)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x20<br> - rs2 : x11<br> - rd : x28<br> - rs2_val == 4194304<br> - rs1_val == 32<br>                                                                                                        |[0x800001ec]:divu t3, s4, a1<br> [0x800001f0]:sw t3, 52(s1)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x15<br> - rs2 : x20<br> - rd : x8<br> - rs2_val == -513<br> - rs1_val == 64<br>                                                                                                            |[0x800001fc]:divu fp, a5, s4<br> [0x80000200]:sw fp, 56(s1)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x18<br> - rs2 : x19<br> - rd : x5<br> - rs2_val == 67108864<br> - rs1_val == 128<br>                                                                                                       |[0x8000020c]:divu t0, s2, s3<br> [0x80000210]:sw t0, 60(s1)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x7<br> - rs2 : x12<br> - rd : x6<br> - rs2_val == -3<br> - rs1_val == 256<br>                                                                                                              |[0x8000021c]:divu t1, t2, a2<br> [0x80000220]:sw t1, 64(s1)<br>     |
|  18|[0x80003254]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x0<br> - rd : x30<br> - rs1_val == 512<br>                                                                                                                                  |[0x80000230]:divu t5, tp, zero<br> [0x80000234]:sw t5, 68(s1)<br>   |
|  19|[0x80003258]<br>0x00000000|- rs1 : x25<br> - rs2 : x28<br> - rd : x20<br> - rs1_val == 1024<br>                                                                                                                               |[0x80000248]:divu s4, s9, t3<br> [0x8000024c]:sw s4, 0(ra)<br>      |
|  20|[0x8000325c]<br>0x00000800|- rs1 : x22<br> - rs2 : x3<br> - rd : x19<br> - rs1_val == 2048<br>                                                                                                                                |[0x8000025c]:divu s3, s6, gp<br> [0x80000260]:sw s3, 4(ra)<br>      |
|  21|[0x80003260]<br>0x00001000|- rs1 : x16<br> - rs2 : x15<br> - rd : x22<br> - rs1_val == 4096<br>                                                                                                                               |[0x8000026c]:divu s6, a6, a5<br> [0x80000270]:sw s6, 8(ra)<br>      |
|  22|[0x80003264]<br>0x00000000|- rs1 : x31<br> - rs2 : x7<br> - rd : x10<br> - rs1_val == 8192<br>                                                                                                                                |[0x80000280]:divu a0, t6, t2<br> [0x80000284]:sw a0, 12(ra)<br>     |
|  23|[0x80003268]<br>0x00000040|- rs1 : x17<br> - rs2 : x14<br> - rd : x23<br> - rs1_val == 16384<br>                                                                                                                              |[0x80000290]:divu s7, a7, a4<br> [0x80000294]:sw s7, 16(ra)<br>     |
|  24|[0x8000326c]<br>0x00000E38|- rs1 : x13<br> - rs2 : x16<br> - rd : x17<br> - rs1_val == 32768<br>                                                                                                                              |[0x800002a0]:divu a7, a3, a6<br> [0x800002a4]:sw a7, 20(ra)<br>     |
|  25|[0x80003270]<br>0x00000000|- rs1 : x30<br> - rs2 : x31<br> - rd : x13<br> - rs2_val == 536870912<br> - rs1_val == 65536<br>                                                                                                   |[0x800002b0]:divu a3, t5, t6<br> [0x800002b4]:sw a3, 24(ra)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x19<br> - rs2 : x10<br> - rd : x26<br> - rs2_val == 8388608<br> - rs1_val == 131072<br>                                                                                                    |[0x800002c0]:divu s10, s3, a0<br> [0x800002c4]:sw s10, 28(ra)<br>   |
|  27|[0x80003278]<br>0x00000000|- rs1 : x27<br> - rs2 : x13<br> - rd : x9<br> - rs2_val == -262145<br> - rs1_val == 262144<br>                                                                                                     |[0x800002d4]:divu s1, s11, a3<br> [0x800002d8]:sw s1, 32(ra)<br>    |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x6<br> - rs2 : x27<br> - rd : x4<br> - rs2_val == -1048577<br> - rs1_val == 524288<br>                                                                                                     |[0x800002e8]:divu tp, t1, s11<br> [0x800002ec]:sw tp, 36(ra)<br>    |
|  29|[0x80003280]<br>0x00000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x29<br> - rs1_val == 4194304<br>                                                                                                                             |[0x800002f8]:divu t4, a0, s1<br> [0x800002fc]:sw t4, 40(ra)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x12<br> - rs2 : x30<br> - rd : x18<br> - rs2_val == -16385<br> - rs1_val == 8388608<br>                                                                                                    |[0x8000030c]:divu s2, a2, t5<br> [0x80000310]:sw s2, 44(ra)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x9<br> - rs2 : x18<br> - rd : x2<br> - rs2_val == -2<br> - rs1_val == 16777216<br>                                                                                                         |[0x8000031c]:divu sp, s1, s2<br> [0x80000320]:sw sp, 48(ra)<br>     |
|  32|[0x8000328c]<br>0x01000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == 2<br> - rs1_val == 33554432<br>                                                                                                         |[0x8000032c]:divu s9, t0, s10<br> [0x80000330]:sw s9, 52(ra)<br>    |
|  33|[0x80003290]<br>0x02000000|- rs1_val == 67108864<br>                                                                                                                                                                          |[0x8000033c]:divu a2, a0, a1<br> [0x80000340]:sw a2, 56(ra)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs2_val == -2097153<br> - rs1_val == 134217728<br>                                                                                                                                               |[0x80000350]:divu a2, a0, a1<br> [0x80000354]:sw a2, 60(ra)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs2_val == -2049<br> - rs1_val == 268435456<br>                                                                                                                                                  |[0x80000364]:divu a2, a0, a1<br> [0x80000368]:sw a2, 64(ra)<br>     |
|  36|[0x8000329c]<br>0x00008000|- rs2_val == 16384<br> - rs1_val == 536870912<br>                                                                                                                                                  |[0x80000374]:divu a2, a0, a1<br> [0x80000378]:sw a2, 68(ra)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs2_val == -65537<br> - rs1_val == 1073741824<br>                                                                                                                                                |[0x80000388]:divu a2, a0, a1<br> [0x8000038c]:sw a2, 72(ra)<br>     |
|  38|[0x800032a4]<br>0x00000001|- rs1_val == -2<br>                                                                                                                                                                                |[0x8000039c]:divu a2, a0, a1<br> [0x800003a0]:sw a2, 76(ra)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                |[0x800003ac]:divu a2, a0, a1<br> [0x800003b0]:sw a2, 80(ra)<br>     |
|  40|[0x800032ac]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                                                |[0x800003c0]:divu a2, a0, a1<br> [0x800003c4]:sw a2, 84(ra)<br>     |
|  41|[0x800032b0]<br>0x1C71C71A|- rs1_val == -17<br>                                                                                                                                                                               |[0x800003d0]:divu a2, a0, a1<br> [0x800003d4]:sw a2, 88(ra)<br>     |
|  42|[0x800032b4]<br>0x0001FFFF|- rs2_val == 32768<br> - rs1_val == -65<br>                                                                                                                                                        |[0x800003e0]:divu a2, a0, a1<br> [0x800003e4]:sw a2, 92(ra)<br>     |
|  43|[0x800032b8]<br>0x00000001|- rs1_val == -129<br>                                                                                                                                                                              |[0x800003f4]:divu a2, a0, a1<br> [0x800003f8]:sw a2, 96(ra)<br>     |
|  44|[0x800032bc]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                                                              |[0x80000408]:divu a2, a0, a1<br> [0x8000040c]:sw a2, 100(ra)<br>    |
|  45|[0x800032c0]<br>0x00000000|- rs2_val == -524289<br>                                                                                                                                                                           |[0x8000041c]:divu a2, a0, a1<br> [0x80000420]:sw a2, 104(ra)<br>    |
|  46|[0x800032c4]<br>0x00000000|- rs2_val == -4194305<br> - rs1_val == -268435457<br>                                                                                                                                              |[0x80000434]:divu a2, a0, a1<br> [0x80000438]:sw a2, 108(ra)<br>    |
|  47|[0x800032c8]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                          |[0x80000448]:divu a2, a0, a1<br> [0x8000044c]:sw a2, 112(ra)<br>    |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -16777217<br>                                                                                                                                                                         |[0x8000045c]:divu a2, a0, a1<br> [0x80000460]:sw a2, 116(ra)<br>    |
|  49|[0x800032d0]<br>0x00000001|- rs2_val == -33554433<br>                                                                                                                                                                         |[0x80000470]:divu a2, a0, a1<br> [0x80000474]:sw a2, 120(ra)<br>    |
|  50|[0x800032d4]<br>0x00000000|- rs2_val == -134217729<br>                                                                                                                                                                        |[0x80000484]:divu a2, a0, a1<br> [0x80000488]:sw a2, 124(ra)<br>    |
|  51|[0x800032d8]<br>0x00000001|- rs2_val == -268435457<br>                                                                                                                                                                        |[0x80000498]:divu a2, a0, a1<br> [0x8000049c]:sw a2, 128(ra)<br>    |
|  52|[0x800032dc]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                                        |[0x800004ac]:divu a2, a0, a1<br> [0x800004b0]:sw a2, 132(ra)<br>    |
|  53|[0x800032e0]<br>0x00000000|- rs2_val == -1073741825<br>                                                                                                                                                                       |[0x800004c0]:divu a2, a0, a1<br> [0x800004c4]:sw a2, 136(ra)<br>    |
|  54|[0x800032e4]<br>0x00000000|- rs2_val == 1431655765<br>                                                                                                                                                                        |[0x800004d4]:divu a2, a0, a1<br> [0x800004d8]:sw a2, 140(ra)<br>    |
|  55|[0x800032e8]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                       |[0x800004e8]:divu a2, a0, a1<br> [0x800004ec]:sw a2, 144(ra)<br>    |
|  56|[0x800032ec]<br>0x00000000|- rs2_val == -33<br> - rs1_val == -513<br>                                                                                                                                                         |[0x800004f8]:divu a2, a0, a1<br> [0x800004fc]:sw a2, 148(ra)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                             |[0x80000508]:divu a2, a0, a1<br> [0x8000050c]:sw a2, 152(ra)<br>    |
|  58|[0x800032f4]<br>0x00000001|- rs1_val == -2049<br>                                                                                                                                                                             |[0x80000520]:divu a2, a0, a1<br> [0x80000524]:sw a2, 156(ra)<br>    |
|  59|[0x800032fc]<br>0x00000000|- rs2_val == -257<br> - rs1_val == -8193<br>                                                                                                                                                       |[0x8000054c]:divu a2, a0, a1<br> [0x80000550]:sw a2, 164(ra)<br>    |
|  60|[0x80003300]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                                            |[0x80000560]:divu a2, a0, a1<br> [0x80000564]:sw a2, 168(ra)<br>    |
|  61|[0x80003308]<br>0x1FFFDFFF|- rs2_val == 8<br> - rs1_val == -65537<br>                                                                                                                                                         |[0x80000588]:divu a2, a0, a1<br> [0x8000058c]:sw a2, 176(ra)<br>    |
|  62|[0x8000330c]<br>0x5554AAAA|- rs1_val == -131073<br>                                                                                                                                                                           |[0x8000059c]:divu a2, a0, a1<br> [0x800005a0]:sw a2, 180(ra)<br>    |
|  63|[0x80003310]<br>0x00000000|- rs1_val == -262145<br>                                                                                                                                                                           |[0x800005b0]:divu a2, a0, a1<br> [0x800005b4]:sw a2, 184(ra)<br>    |
|  64|[0x80003314]<br>0x00000000|- rs2_val == -17<br> - rs1_val == -524289<br>                                                                                                                                                      |[0x800005c4]:divu a2, a0, a1<br> [0x800005c8]:sw a2, 188(ra)<br>    |
|  65|[0x80003318]<br>0x00000000|- rs1_val == -1048577<br>                                                                                                                                                                          |[0x800005d8]:divu a2, a0, a1<br> [0x800005dc]:sw a2, 192(ra)<br>    |
|  66|[0x8000331c]<br>0x000001FF|- rs1_val == -2097153<br>                                                                                                                                                                          |[0x800005ec]:divu a2, a0, a1<br> [0x800005f0]:sw a2, 196(ra)<br>    |
|  67|[0x80003320]<br>0x00000000|- rs1_val == -4194305<br>                                                                                                                                                                          |[0x80000600]:divu a2, a0, a1<br> [0x80000604]:sw a2, 200(ra)<br>    |
|  68|[0x80003324]<br>0x00000000|- rs1_val == -8388609<br>                                                                                                                                                                          |[0x80000614]:divu a2, a0, a1<br> [0x80000618]:sw a2, 204(ra)<br>    |
|  69|[0x80003328]<br>0x00000001|- rs1_val == -16777217<br>                                                                                                                                                                         |[0x80000628]:divu a2, a0, a1<br> [0x8000062c]:sw a2, 208(ra)<br>    |
|  70|[0x8000332c]<br>0x00000000|- rs1_val == -33554433<br>                                                                                                                                                                         |[0x80000640]:divu a2, a0, a1<br> [0x80000644]:sw a2, 212(ra)<br>    |
|  71|[0x80003330]<br>0x00007DFF|- rs2_val == 131072<br> - rs1_val == -67108865<br>                                                                                                                                                 |[0x80000654]:divu a2, a0, a1<br> [0x80000658]:sw a2, 216(ra)<br>    |
|  72|[0x80003334]<br>0x00000000|- rs1_val == -134217729<br>                                                                                                                                                                        |[0x8000066c]:divu a2, a0, a1<br> [0x80000670]:sw a2, 220(ra)<br>    |
|  73|[0x80003338]<br>0x00000000|- rs1_val == -536870913<br>                                                                                                                                                                        |[0x80000684]:divu a2, a0, a1<br> [0x80000688]:sw a2, 224(ra)<br>    |
|  74|[0x8000333c]<br>0x17FFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                       |[0x80000698]:divu a2, a0, a1<br> [0x8000069c]:sw a2, 228(ra)<br>    |
|  75|[0x80003340]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                        |[0x800006ac]:divu a2, a0, a1<br> [0x800006b0]:sw a2, 232(ra)<br>    |
|  76|[0x80003344]<br>0x00000000|- rs1_val == -1431655766<br>                                                                                                                                                                       |[0x800006c4]:divu a2, a0, a1<br> [0x800006c8]:sw a2, 236(ra)<br>    |
|  77|[0x80003348]<br>0x3FFDFFFF|- rs2_val == 4<br>                                                                                                                                                                                 |[0x800006d8]:divu a2, a0, a1<br> [0x800006dc]:sw a2, 240(ra)<br>    |
|  78|[0x8000334c]<br>0x00000010|- rs2_val == 16<br>                                                                                                                                                                                |[0x800006e8]:divu a2, a0, a1<br> [0x800006ec]:sw a2, 244(ra)<br>    |
|  79|[0x80003350]<br>0x00040000|- rs2_val == 32<br>                                                                                                                                                                                |[0x800006f8]:divu a2, a0, a1<br> [0x800006fc]:sw a2, 248(ra)<br>    |
|  80|[0x80003354]<br>0x03FFFFFB|- rs2_val == 64<br>                                                                                                                                                                                |[0x80000708]:divu a2, a0, a1<br> [0x8000070c]:sw a2, 252(ra)<br>    |
|  81|[0x80003358]<br>0x01FFFFFF|- rs2_val == 128<br>                                                                                                                                                                               |[0x80000718]:divu a2, a0, a1<br> [0x8000071c]:sw a2, 256(ra)<br>    |
|  82|[0x8000335c]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                                                                              |[0x80000728]:divu a2, a0, a1<br> [0x8000072c]:sw a2, 260(ra)<br>    |
|  83|[0x80003360]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                                              |[0x80000738]:divu a2, a0, a1<br> [0x8000073c]:sw a2, 264(ra)<br>    |
|  84|[0x80003364]<br>0x00000020|- rs2_val == 8192<br>                                                                                                                                                                              |[0x80000748]:divu a2, a0, a1<br> [0x8000074c]:sw a2, 268(ra)<br>    |
|  85|[0x80003368]<br>0x00003FDF|- rs2_val == 262144<br>                                                                                                                                                                            |[0x8000075c]:divu a2, a0, a1<br> [0x80000760]:sw a2, 272(ra)<br>    |
|  86|[0x8000336c]<br>0x000007FF|- rs2_val == 2097152<br>                                                                                                                                                                           |[0x8000076c]:divu a2, a0, a1<br> [0x80000770]:sw a2, 276(ra)<br>    |
|  87|[0x80003370]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                                          |[0x8000077c]:divu a2, a0, a1<br> [0x80000780]:sw a2, 280(ra)<br>    |
|  88|[0x80003374]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                                          |[0x8000078c]:divu a2, a0, a1<br> [0x80000790]:sw a2, 284(ra)<br>    |
|  89|[0x80003378]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                         |[0x8000079c]:divu a2, a0, a1<br> [0x800007a0]:sw a2, 288(ra)<br>    |
|  90|[0x8000337c]<br>0x0000000F|- rs2_val == 268435456<br>                                                                                                                                                                         |[0x800007ac]:divu a2, a0, a1<br> [0x800007b0]:sw a2, 292(ra)<br>    |
|  91|[0x80003380]<br>0x00000003|- rs2_val == 1073741824<br>                                                                                                                                                                        |[0x800007c0]:divu a2, a0, a1<br> [0x800007c4]:sw a2, 296(ra)<br>    |
|  92|[0x80003384]<br>0x00000000|- rs2_val == -5<br>                                                                                                                                                                                |[0x800007d0]:divu a2, a0, a1<br> [0x800007d4]:sw a2, 300(ra)<br>    |
|  93|[0x80003388]<br>0x00000000|- rs2_val == -9<br>                                                                                                                                                                                |[0x800007e0]:divu a2, a0, a1<br> [0x800007e4]:sw a2, 304(ra)<br>    |
|  94|[0x8000338c]<br>0x00000001|- rs2_val == -65<br>                                                                                                                                                                               |[0x800007f0]:divu a2, a0, a1<br> [0x800007f4]:sw a2, 308(ra)<br>    |
|  95|[0x80003390]<br>0x00000000|- rs2_val == -129<br>                                                                                                                                                                              |[0x80000804]:divu a2, a0, a1<br> [0x80000808]:sw a2, 312(ra)<br>    |
|  96|[0x80003394]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                             |[0x80000814]:divu a2, a0, a1<br> [0x80000818]:sw a2, 316(ra)<br>    |
|  97|[0x80003398]<br>0x00000000|- rs2_val == -8193<br>                                                                                                                                                                             |[0x8000082c]:divu a2, a0, a1<br> [0x80000830]:sw a2, 320(ra)<br>    |
|  98|[0x8000339c]<br>0x0000FFFF|- rs2_val == 65536<br>                                                                                                                                                                             |[0x8000083c]:divu a2, a0, a1<br> [0x80000840]:sw a2, 324(ra)<br>    |
|  99|[0x800033a0]<br>0x00000000|- rs2_val == -131073<br>                                                                                                                                                                           |[0x80000850]:divu a2, a0, a1<br> [0x80000854]:sw a2, 328(ra)<br>    |
| 100|[0x800033a4]<br>0x00000000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                       |[0x80000864]:divu a2, a0, a1<br> [0x80000868]:sw a2, 332(ra)<br>    |
| 101|[0x800033ac]<br>0x00000000|- rs1_val == 4<br>                                                                                                                                                                                 |[0x80000884]:divu a2, a0, a1<br> [0x80000888]:sw a2, 340(ra)<br>    |
| 102|[0x800033b0]<br>0x00000000|- rs2_val == -67108865<br>                                                                                                                                                                         |[0x80000898]:divu a2, a0, a1<br> [0x8000089c]:sw a2, 344(ra)<br>    |
