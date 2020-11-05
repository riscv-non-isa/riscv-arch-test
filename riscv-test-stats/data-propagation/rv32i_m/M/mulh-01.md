
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80003204', '0x800033a8', '105 words')]      |
| COV_LABELS                | mulh      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulh-01.S/mulh-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 102      |
| STAT1                     | 100      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:mulh a2, a0, a1
      [0x80000844]:sw a2, 324(ra)
 -- Signature Address: 0x8000339c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == 524288




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:mulh a2, a0, a1
      [0x80000854]:sw a2, 328(ra)
 -- Signature Address: 0x800033a0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs2_val == -513






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

|s.no|        signature         |                                                                                               coverpoints                                                                                                |                                 code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : mulh<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                                       |[0x80000108]:mulh t0, s9, s9<br> [0x8000010c]:sw t0, 0(a4)<br>        |
|   2|[0x80003214]<br>0x00000040|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 524288<br> - rs1_val == 524288<br>                                                   |[0x80000118]:mulh s8, s8, s8<br> [0x8000011c]:sw s8, 4(a4)<br>        |
|   3|[0x80003218]<br>0x00000003|- rs1 : x26<br> - rs2 : x9<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                |[0x8000012c]:mulh s10, s10, s1<br> [0x80000130]:sw s10, 8(a4)<br>     |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == -513<br>                                                                      |[0x8000013c]:mulh a3, zero, t6<br> [0x80000140]:sw a3, 12(a4)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x15<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_val == 0<br> - rs1_val == 2<br>                                                                                                 |[0x80000150]:mulh zero, a5, zero<br> [0x80000154]:sw zero, 16(a4)<br> |
|   6|[0x80003224]<br>0x00000000|- rs1 : x13<br> - rs2 : x30<br> - rd : x15<br> - rs1_val == 4<br>                                                                                                                                         |[0x80000160]:mulh a5, a3, t5<br> [0x80000164]:sw a5, 20(a4)<br>       |
|   7|[0x80003228]<br>0xC0000000|- rs1 : x30<br> - rs2 : x1<br> - rd : x23<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 2147483647<br> - rs1_val == -2147483648<br> |[0x80000174]:mulh s7, t5, ra<br> [0x80000178]:sw s7, 24(a4)<br>       |
|   8|[0x8000322c]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x4<br> - rd : x2<br> - rs2_val == 1<br> - rs1_val == -2049<br>                                                                                                                    |[0x80000188]:mulh sp, a0, tp<br> [0x8000018c]:sw sp, 28(a4)<br>       |
|   9|[0x80003230]<br>0x00000000|- rs1 : x4<br> - rs2 : x10<br> - rd : x6<br> - rs2_val == 2<br>                                                                                                                                           |[0x80000198]:mulh t1, tp, a0<br> [0x8000019c]:sw t1, 32(a4)<br>       |
|  10|[0x80003234]<br>0xFFFFFFFD|- rs1 : x28<br> - rs2 : x29<br> - rd : x1<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -1431655766<br> - rs1_val == 8<br>                                                                           |[0x800001ac]:mulh ra, t3, t4<br> [0x800001b0]:sw ra, 36(a4)<br>       |
|  11|[0x80003238]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x27<br> - rd : x20<br> - rs2_val == -2<br> - rs1_val == 16<br>                                                                                                                    |[0x800001bc]:mulh s4, a2, s11<br> [0x800001c0]:sw s4, 40(a4)<br>      |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x6<br> - rs2 : x28<br> - rd : x18<br> - rs1_val == 32<br>                                                                                                                                         |[0x800001cc]:mulh s2, t1, t3<br> [0x800001d0]:sw s2, 44(a4)<br>       |
|  13|[0x80003240]<br>0x00000015|- rs1 : x9<br> - rs2 : x23<br> - rd : x17<br> - rs2_val == 1431655765<br> - rs1_val == 64<br>                                                                                                             |[0x800001e0]:mulh a7, s1, s7<br> [0x800001e4]:sw a7, 48(a4)<br>       |
|  14|[0x80003244]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == -4194305<br> - rs1_val == 128<br>                                                                                                                |[0x800001f4]:mulh fp, ra, t2<br> [0x800001f8]:sw fp, 52(a4)<br>       |
|  15|[0x80003248]<br>0x00000000|- rs1 : x7<br> - rs2 : x3<br> - rd : x19<br> - rs2_val == 4<br> - rs1_val == 256<br>                                                                                                                      |[0x80000204]:mulh s3, t2, gp<br> [0x80000208]:sw s3, 56(a4)<br>       |
|  16|[0x8000324c]<br>0x00000080|- rs1 : x29<br> - rs2 : x17<br> - rd : x12<br> - rs2_val == 1073741824<br> - rs1_val == 512<br>                                                                                                           |[0x80000214]:mulh a2, t4, a7<br> [0x80000218]:sw a2, 60(a4)<br>       |
|  17|[0x80003250]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x5<br> - rd : x22<br> - rs2_val == -131073<br> - rs1_val == 1024<br>                                                                                                              |[0x80000228]:mulh s6, s7, t0<br> [0x8000022c]:sw s6, 64(a4)<br>       |
|  18|[0x80003254]<br>0xFFFFFFF7|- rs1 : x19<br> - rs2 : x11<br> - rd : x25<br> - rs2_val == -16777217<br> - rs1_val == 2048<br>                                                                                                           |[0x80000240]:mulh s9, s3, a1<br> [0x80000244]:sw s9, 68(a4)<br>       |
|  19|[0x80003258]<br>0x00000000|- rs1 : x3<br> - rs2 : x12<br> - rd : x29<br> - rs2_val == 65536<br> - rs1_val == 4096<br>                                                                                                                |[0x80000258]:mulh t4, gp, a2<br> [0x8000025c]:sw t4, 0(ra)<br>        |
|  20|[0x8000325c]<br>0xFFFFFFDF|- rs1 : x16<br> - rs2 : x6<br> - rd : x4<br> - rs1_val == 8192<br>                                                                                                                                        |[0x8000026c]:mulh tp, a6, t1<br> [0x80000270]:sw tp, 4(ra)<br>        |
|  21|[0x80003260]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x14<br> - rd : x10<br> - rs1_val == 16384<br>                                                                                                                                     |[0x8000027c]:mulh a0, s5, a4<br> [0x80000280]:sw a0, 8(ra)<br>        |
|  22|[0x80003264]<br>0x00000100|- rs1 : x11<br> - rs2 : x19<br> - rd : x27<br> - rs2_val == 33554432<br> - rs1_val == 32768<br>                                                                                                           |[0x8000028c]:mulh s11, a1, s3<br> [0x80000290]:sw s11, 12(ra)<br>     |
|  23|[0x80003268]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x20<br> - rd : x14<br> - rs2_val == -9<br> - rs1_val == 65536<br>                                                                                                                  |[0x8000029c]:mulh a4, sp, s4<br> [0x800002a0]:sw a4, 16(ra)<br>       |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x8<br> - rs2 : x22<br> - rd : x7<br> - rs2_val == 2048<br> - rs1_val == 131072<br>                                                                                                                |[0x800002b0]:mulh t2, fp, s6<br> [0x800002b4]:sw t2, 20(ra)<br>       |
|  25|[0x80003270]<br>0x00000100|- rs1 : x14<br> - rs2 : x2<br> - rd : x21<br> - rs2_val == 4194304<br> - rs1_val == 262144<br>                                                                                                            |[0x800002c0]:mulh s5, a4, sp<br> [0x800002c4]:sw s5, 24(ra)<br>       |
|  26|[0x80003274]<br>0xFFFFF7FF|- rs1 : x5<br> - rs2 : x18<br> - rd : x30<br>                                                                                                                                                             |[0x800002d4]:mulh t5, t0, s2<br> [0x800002d8]:sw t5, 28(ra)<br>       |
|  27|[0x80003278]<br>0x00020000|- rs1 : x27<br> - rs2 : x8<br> - rd : x28<br> - rs2_val == 536870912<br> - rs1_val == 1048576<br>                                                                                                         |[0x800002e4]:mulh t3, s11, fp<br> [0x800002e8]:sw t3, 32(ra)<br>      |
|  28|[0x8000327c]<br>0x00004000|- rs1 : x20<br> - rs2 : x16<br> - rd : x31<br> - rs1_val == 2097152<br>                                                                                                                                   |[0x800002f4]:mulh t6, s4, a6<br> [0x800002f8]:sw t6, 36(ra)<br>       |
|  29|[0x80003280]<br>0x00040000|- rs1 : x22<br> - rs2 : x21<br> - rd : x16<br> - rs2_val == 268435456<br> - rs1_val == 4194304<br>                                                                                                        |[0x80000304]:mulh a6, s6, s5<br> [0x80000308]:sw a6, 40(ra)<br>       |
|  30|[0x80003284]<br>0x00000000|- rs1 : x18<br> - rs2 : x26<br> - rd : x9<br> - rs2_val == 32<br> - rs1_val == 8388608<br>                                                                                                                |[0x80000314]:mulh s1, s2, s10<br> [0x80000318]:sw s1, 44(ra)<br>      |
|  31|[0x80003288]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x15<br> - rd : x3<br> - rs2_val == -17<br> - rs1_val == 16777216<br>                                                                                                              |[0x80000324]:mulh gp, t6, a5<br> [0x80000328]:sw gp, 48(ra)<br>       |
|  32|[0x8000328c]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x13<br> - rd : x11<br> - rs1_val == 33554432<br>                                                                                                                                  |[0x80000334]:mulh a1, a7, a3<br> [0x80000338]:sw a1, 52(ra)<br>       |
|  33|[0x80003290]<br>0xFFFFEFFF|- rs2_val == -262145<br> - rs1_val == 67108864<br>                                                                                                                                                        |[0x80000348]:mulh a2, a0, a1<br> [0x8000034c]:sw a2, 56(ra)<br>       |
|  34|[0x80003294]<br>0xFFBFFFFF|- rs2_val == -134217729<br> - rs1_val == 134217728<br>                                                                                                                                                    |[0x8000035c]:mulh a2, a0, a1<br> [0x80000360]:sw a2, 60(ra)<br>       |
|  35|[0x80003298]<br>0xFFFF7FFF|- rs2_val == -524289<br> - rs1_val == 268435456<br>                                                                                                                                                       |[0x80000370]:mulh a2, a0, a1<br> [0x80000374]:sw a2, 64(ra)<br>       |
|  36|[0x8000329c]<br>0x00010000|- rs1_val == 536870912<br>                                                                                                                                                                                |[0x80000380]:mulh a2, a0, a1<br> [0x80000384]:sw a2, 68(ra)<br>       |
|  37|[0x800032a0]<br>0x04000000|- rs1_val == 1073741824<br>                                                                                                                                                                               |[0x80000390]:mulh a2, a0, a1<br> [0x80000394]:sw a2, 72(ra)<br>       |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == -2<br>                                                                                                                                                                                       |[0x800003a0]:mulh a2, a0, a1<br> [0x800003a4]:sw a2, 76(ra)<br>       |
|  39|[0x800032a8]<br>0xFFFFFFFF|- rs2_val == 128<br> - rs1_val == -3<br>                                                                                                                                                                  |[0x800003b0]:mulh a2, a0, a1<br> [0x800003b4]:sw a2, 80(ra)<br>       |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                                                       |[0x800003c0]:mulh a2, a0, a1<br> [0x800003c4]:sw a2, 84(ra)<br>       |
|  41|[0x800032b0]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                       |[0x800003d0]:mulh a2, a0, a1<br> [0x800003d4]:sw a2, 88(ra)<br>       |
|  42|[0x800032b4]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                      |[0x800003e0]:mulh a2, a0, a1<br> [0x800003e4]:sw a2, 92(ra)<br>       |
|  43|[0x800032b8]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                      |[0x800003f0]:mulh a2, a0, a1<br> [0x800003f4]:sw a2, 96(ra)<br>       |
|  44|[0x800032bc]<br>0x00000000|- rs1_val == -65<br>                                                                                                                                                                                      |[0x80000400]:mulh a2, a0, a1<br> [0x80000404]:sw a2, 100(ra)<br>      |
|  45|[0x800032c0]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                                     |[0x80000410]:mulh a2, a0, a1<br> [0x80000414]:sw a2, 104(ra)<br>      |
|  46|[0x800032c4]<br>0x00040000|- rs2_val == -1048577<br>                                                                                                                                                                                 |[0x80000424]:mulh a2, a0, a1<br> [0x80000428]:sw a2, 108(ra)<br>      |
|  47|[0x800032c8]<br>0xFFFFFFFE|- rs2_val == -2097153<br>                                                                                                                                                                                 |[0x8000043c]:mulh a2, a0, a1<br> [0x80000440]:sw a2, 112(ra)<br>      |
|  48|[0x800032cc]<br>0xFFDFFFFF|- rs2_val == -8388609<br>                                                                                                                                                                                 |[0x80000450]:mulh a2, a0, a1<br> [0x80000454]:sw a2, 116(ra)<br>      |
|  49|[0x800032d0]<br>0xFFFFFFEF|- rs2_val == -33554433<br>                                                                                                                                                                                |[0x80000468]:mulh a2, a0, a1<br> [0x8000046c]:sw a2, 120(ra)<br>      |
|  50|[0x800032d4]<br>0x00080000|- rs2_val == -67108865<br> - rs1_val == -33554433<br>                                                                                                                                                     |[0x80000480]:mulh a2, a0, a1<br> [0x80000484]:sw a2, 124(ra)<br>      |
|  51|[0x800032d8]<br>0x00000200|- rs2_val == -268435457<br> - rs1_val == -8193<br>                                                                                                                                                        |[0x80000498]:mulh a2, a0, a1<br> [0x8000049c]:sw a2, 128(ra)<br>      |
|  52|[0x800032dc]<br>0xFFFFFFFE|- rs2_val == -536870913<br>                                                                                                                                                                               |[0x800004ac]:mulh a2, a0, a1<br> [0x800004b0]:sw a2, 132(ra)<br>      |
|  53|[0x800032e0]<br>0x01000000|- rs2_val == -1073741825<br> - rs1_val == -67108865<br>                                                                                                                                                   |[0x800004c4]:mulh a2, a0, a1<br> [0x800004c8]:sw a2, 136(ra)<br>      |
|  54|[0x800032e4]<br>0x00000000|- rs2_val == -2049<br> - rs1_val == -257<br>                                                                                                                                                              |[0x800004d8]:mulh a2, a0, a1<br> [0x800004dc]:sw a2, 140(ra)<br>      |
|  55|[0x800032e8]<br>0xFFFFFFBF|- rs1_val == -513<br>                                                                                                                                                                                     |[0x800004e8]:mulh a2, a0, a1<br> [0x800004ec]:sw a2, 144(ra)<br>      |
|  56|[0x800032ec]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                                    |[0x800004f8]:mulh a2, a0, a1<br> [0x800004fc]:sw a2, 148(ra)<br>      |
|  57|[0x800032f0]<br>0x00000400|- rs1_val == -4097<br>                                                                                                                                                                                    |[0x8000050c]:mulh a2, a0, a1<br> [0x80000510]:sw a2, 152(ra)<br>      |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == -16385<br>                                                                                                                                                                                   |[0x80000520]:mulh a2, a0, a1<br> [0x80000524]:sw a2, 156(ra)<br>      |
|  59|[0x800032f8]<br>0xFFFFFFFE|- rs2_val == 131072<br> - rs1_val == -32769<br>                                                                                                                                                           |[0x80000534]:mulh a2, a0, a1<br> [0x80000538]:sw a2, 160(ra)<br>      |
|  60|[0x800032fc]<br>0xFFFFDFFF|- rs1_val == -65537<br>                                                                                                                                                                                   |[0x80000548]:mulh a2, a0, a1<br> [0x8000054c]:sw a2, 164(ra)<br>      |
|  61|[0x80003300]<br>0xFFFFFFEF|- rs1_val == -131073<br>                                                                                                                                                                                  |[0x8000055c]:mulh a2, a0, a1<br> [0x80000560]:sw a2, 168(ra)<br>      |
|  62|[0x80003304]<br>0x00008000|- rs1_val == -262145<br>                                                                                                                                                                                  |[0x80000574]:mulh a2, a0, a1<br> [0x80000578]:sw a2, 172(ra)<br>      |
|  63|[0x80003308]<br>0xFFFFDFFF|- rs2_val == 67108864<br> - rs1_val == -524289<br>                                                                                                                                                        |[0x80000588]:mulh a2, a0, a1<br> [0x8000058c]:sw a2, 176(ra)<br>      |
|  64|[0x8000330c]<br>0x00000800|- rs1_val == -1048577<br>                                                                                                                                                                                 |[0x800005a0]:mulh a2, a0, a1<br> [0x800005a4]:sw a2, 180(ra)<br>      |
|  65|[0x80003310]<br>0xFFFFFFFE|- rs1_val == -2097153<br>                                                                                                                                                                                 |[0x800005b8]:mulh a2, a0, a1<br> [0x800005bc]:sw a2, 184(ra)<br>      |
|  66|[0x80003314]<br>0x00020000|- rs1_val == -4194305<br>                                                                                                                                                                                 |[0x800005d0]:mulh a2, a0, a1<br> [0x800005d4]:sw a2, 188(ra)<br>      |
|  67|[0x80003318]<br>0x00000000|- rs1_val == -8388609<br>                                                                                                                                                                                 |[0x800005e4]:mulh a2, a0, a1<br> [0x800005e8]:sw a2, 192(ra)<br>      |
|  68|[0x8000331c]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                |[0x800005f8]:mulh a2, a0, a1<br> [0x800005fc]:sw a2, 196(ra)<br>      |
|  69|[0x80003320]<br>0xFFFFBFFF|- rs1_val == -134217729<br>                                                                                                                                                                               |[0x8000060c]:mulh a2, a0, a1<br> [0x80000610]:sw a2, 200(ra)<br>      |
|  70|[0x80003324]<br>0x00000008|- rs2_val == -129<br> - rs1_val == -268435457<br>                                                                                                                                                         |[0x80000620]:mulh a2, a0, a1<br> [0x80000624]:sw a2, 204(ra)<br>      |
|  71|[0x80003328]<br>0xFFFFFF7F|- rs2_val == 1024<br> - rs1_val == -536870913<br>                                                                                                                                                         |[0x80000634]:mulh a2, a0, a1<br> [0x80000638]:sw a2, 208(ra)<br>      |
|  72|[0x8000332c]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                                                                                              |[0x80000648]:mulh a2, a0, a1<br> [0x8000064c]:sw a2, 212(ra)<br>      |
|  73|[0x80003330]<br>0x00000002|- rs2_val == 8<br> - rs1_val == 1431655765<br>                                                                                                                                                            |[0x8000065c]:mulh a2, a0, a1<br> [0x80000660]:sw a2, 216(ra)<br>      |
|  74|[0x80003334]<br>0x000002AB|- rs1_val == -1431655766<br>                                                                                                                                                                              |[0x80000674]:mulh a2, a0, a1<br> [0x80000678]:sw a2, 220(ra)<br>      |
|  75|[0x80003338]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                                                       |[0x80000684]:mulh a2, a0, a1<br> [0x80000688]:sw a2, 224(ra)<br>      |
|  76|[0x8000333c]<br>0xFFFFFFEA|- rs2_val == 64<br>                                                                                                                                                                                       |[0x80000698]:mulh a2, a0, a1<br> [0x8000069c]:sw a2, 228(ra)<br>      |
|  77|[0x80003340]<br>0x00000000|- rs2_val == 256<br>                                                                                                                                                                                      |[0x800006a8]:mulh a2, a0, a1<br> [0x800006ac]:sw a2, 232(ra)<br>      |
|  78|[0x80003344]<br>0x00000040|- rs2_val == 512<br>                                                                                                                                                                                      |[0x800006b8]:mulh a2, a0, a1<br> [0x800006bc]:sw a2, 236(ra)<br>      |
|  79|[0x80003348]<br>0xFFFFFFFF|- rs2_val == 4096<br>                                                                                                                                                                                     |[0x800006c8]:mulh a2, a0, a1<br> [0x800006cc]:sw a2, 240(ra)<br>      |
|  80|[0x8000334c]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                     |[0x800006d8]:mulh a2, a0, a1<br> [0x800006dc]:sw a2, 244(ra)<br>      |
|  81|[0x80003350]<br>0xFFFFFFFF|- rs2_val == 16384<br>                                                                                                                                                                                    |[0x800006e8]:mulh a2, a0, a1<br> [0x800006ec]:sw a2, 248(ra)<br>      |
|  82|[0x80003354]<br>0xFFFFFFFF|- rs2_val == 32768<br>                                                                                                                                                                                    |[0x800006f8]:mulh a2, a0, a1<br> [0x800006fc]:sw a2, 252(ra)<br>      |
|  83|[0x80003358]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                   |[0x80000708]:mulh a2, a0, a1<br> [0x8000070c]:sw a2, 256(ra)<br>      |
|  84|[0x8000335c]<br>0xFFFBFFFF|- rs2_val == 1048576<br>                                                                                                                                                                                  |[0x8000071c]:mulh a2, a0, a1<br> [0x80000720]:sw a2, 260(ra)<br>      |
|  85|[0x80003360]<br>0xFFF80000|- rs2_val == 2097152<br>                                                                                                                                                                                  |[0x8000072c]:mulh a2, a0, a1<br> [0x80000730]:sw a2, 264(ra)<br>      |
|  86|[0x80003364]<br>0x00000000|- rs1_val == 1<br> - rs2_val == 8388608<br>                                                                                                                                                               |[0x8000073c]:mulh a2, a0, a1<br> [0x80000740]:sw a2, 268(ra)<br>      |
|  87|[0x80003368]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                                                 |[0x8000074c]:mulh a2, a0, a1<br> [0x80000750]:sw a2, 272(ra)<br>      |
|  88|[0x8000336c]<br>0x00000020|- rs2_val == 134217728<br>                                                                                                                                                                                |[0x8000075c]:mulh a2, a0, a1<br> [0x80000760]:sw a2, 276(ra)<br>      |
|  89|[0x80003370]<br>0xFFFFFFFF|- rs2_val == -3<br>                                                                                                                                                                                       |[0x8000076c]:mulh a2, a0, a1<br> [0x80000770]:sw a2, 280(ra)<br>      |
|  90|[0x80003374]<br>0x00000000|- rs2_val == -5<br>                                                                                                                                                                                       |[0x8000077c]:mulh a2, a0, a1<br> [0x80000780]:sw a2, 284(ra)<br>      |
|  91|[0x80003378]<br>0xFFFFFFFF|- rs2_val == -33<br>                                                                                                                                                                                      |[0x8000078c]:mulh a2, a0, a1<br> [0x80000790]:sw a2, 288(ra)<br>      |
|  92|[0x8000337c]<br>0x00000000|- rs2_val == -65<br>                                                                                                                                                                                      |[0x800007a0]:mulh a2, a0, a1<br> [0x800007a4]:sw a2, 292(ra)<br>      |
|  93|[0x80003380]<br>0xFFFFFFFF|- rs2_val == -257<br>                                                                                                                                                                                     |[0x800007b0]:mulh a2, a0, a1<br> [0x800007b4]:sw a2, 296(ra)<br>      |
|  94|[0x80003384]<br>0xFFFFFFFB|- rs2_val == -1025<br>                                                                                                                                                                                    |[0x800007c0]:mulh a2, a0, a1<br> [0x800007c4]:sw a2, 300(ra)<br>      |
|  95|[0x80003388]<br>0xFFFFFFFD|- rs2_val == -4097<br>                                                                                                                                                                                    |[0x800007d4]:mulh a2, a0, a1<br> [0x800007d8]:sw a2, 304(ra)<br>      |
|  96|[0x8000338c]<br>0x00000AAB|- rs2_val == -8193<br>                                                                                                                                                                                    |[0x800007ec]:mulh a2, a0, a1<br> [0x800007f0]:sw a2, 308(ra)<br>      |
|  97|[0x80003390]<br>0x00000400|- rs2_val == -16385<br>                                                                                                                                                                                   |[0x80000804]:mulh a2, a0, a1<br> [0x80000808]:sw a2, 312(ra)<br>      |
|  98|[0x80003394]<br>0x00000001|- rs2_val == -32769<br>                                                                                                                                                                                   |[0x8000081c]:mulh a2, a0, a1<br> [0x80000820]:sw a2, 316(ra)<br>      |
|  99|[0x80003398]<br>0x00008000|- rs2_val == -65537<br>                                                                                                                                                                                   |[0x80000830]:mulh a2, a0, a1<br> [0x80000834]:sw a2, 320(ra)<br>      |
| 100|[0x800033a4]<br>0xFFFFFFFF|- rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                                                                                              |[0x80000860]:mulh a2, a0, a1<br> [0x80000864]:sw a2, 332(ra)<br>      |
