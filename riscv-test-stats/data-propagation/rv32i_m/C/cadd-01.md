
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000780')]      |
| SIG_REGION                | [('0x80003204', '0x80003398', '101 words')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 206     |
| Total Coverpoints Hit     | 206      |
| Total Signature Updates   | 98      |
| STAT1                     | 98      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |                                                      coverpoints                                                      |                              code                              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFE4|- opcode : c.add<br> - rs1 : x15<br> - rs2 : x27<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs1_val == -33<br>           |[0x80000108]:c.add a5, s11<br> [0x8000010a]:sw a5, 0(t0)<br>    |
|   2|[0x80003214]<br>0xFFFFEFFE|- rs1 : x21<br> - rs2 : x21<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -2049<br> - rs1_val == -2049<br>       |[0x8000011a]:c.add s5, s5<br> [0x8000011c]:sw s5, 4(t0)<br>     |
|   3|[0x80003218]<br>0x80000200|- rs1 : x26<br> - rs2 : x17<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 512<br> - rs1_val == -2147483648<br>      |[0x80000128]:c.add s10, a7<br> [0x8000012a]:sw s10, 8(t0)<br>   |
|   4|[0x8000321c]<br>0xFFEFFFFF|- rs1 : x4<br> - rs2 : x30<br> - rs1_val == 0<br> - rs2_val == -1048577<br>                                            |[0x8000013a]:c.add tp, t5<br> [0x8000013c]:sw tp, 12(t0)<br>    |
|   5|[0x80003220]<br>0x87FFFFFF|- rs1 : x18<br> - rs2 : x6<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 134217728<br> - rs1_val == 2147483647<br> |[0x8000014c]:c.add s2, t1<br> [0x8000014e]:sw s2, 16(t0)<br>    |
|   6|[0x80003224]<br>0x01000001|- rs1 : x7<br> - rs2 : x20<br> - rs1_val == 1<br> - rs2_val == 16777216<br>                                            |[0x8000015a]:c.add t2, s4<br> [0x8000015c]:sw t2, 20(t0)<br>    |
|   7|[0x80003228]<br>0x7FFEFFFF|- rs1 : x3<br> - rs2 : x16<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -65537<br>    |[0x8000016c]:c.add gp, a6<br> [0x8000016e]:sw gp, 24(t0)<br>    |
|   8|[0x8000322c]<br>0x00000003|- rs1 : x9<br> - rs2 : x11<br> - rs2_val == 0<br>                                                                      |[0x8000017a]:c.add s1, a1<br> [0x8000017c]:sw s1, 28(t0)<br>    |
|   9|[0x80003230]<br>0x7FF7FFFE|- rs1 : x1<br> - rs2 : x15<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -524289<br>   |[0x80000190]:c.add ra, a5<br> [0x80000192]:sw ra, 32(t0)<br>    |
|  10|[0x80003234]<br>0xFFFFFFFE|- rs1 : x14<br> - rs2 : x24<br> - rs2_val == 1<br> - rs1_val == -3<br>                                                 |[0x8000019e]:c.add a4, s8<br> [0x800001a0]:sw a4, 36(t0)<br>    |
|  11|[0x80003238]<br>0x00000008|- rs1 : x31<br> - rs2 : x26<br> - rs1_val == 2<br>                                                                     |[0x800001ac]:c.add t6, s10<br> [0x800001ae]:sw t6, 40(t0)<br>   |
|  12|[0x8000323c]<br>0x08000004|- rs1 : x30<br> - rs2 : x18<br> - rs1_val == 4<br>                                                                     |[0x800001ba]:c.add t5, s2<br> [0x800001bc]:sw t5, 44(t0)<br>    |
|  13|[0x80003240]<br>0x00000007|- rs1 : x28<br> - rs2 : x19<br> - rs1_val == 8<br>                                                                     |[0x800001c8]:c.add t3, s3<br> [0x800001ca]:sw t3, 48(t0)<br>    |
|  14|[0x80003244]<br>0x00002010|- rs1 : x25<br> - rs2 : x2<br> - rs2_val == 8192<br> - rs1_val == 16<br>                                               |[0x800001d6]:c.add s9, sp<br> [0x800001d8]:sw s9, 52(t0)<br>    |
|  15|[0x80003248]<br>0xFC00001F|- rs1 : x8<br> - rs2 : x10<br> - rs2_val == -67108865<br> - rs1_val == 32<br>                                          |[0x800001e8]:c.add fp, a0<br> [0x800001ea]:sw fp, 56(t0)<br>    |
|  16|[0x8000324c]<br>0xFFF8003F|- rs1 : x6<br> - rs2 : x12<br> - rs2_val == -524289<br> - rs1_val == 64<br>                                            |[0x800001fa]:c.add t1, a2<br> [0x800001fc]:sw t1, 60(t0)<br>    |
|  17|[0x80003250]<br>0x555555D5|- rs1 : x22<br> - rs2 : x1<br> - rs2_val == 1431655765<br> - rs1_val == 128<br>                                        |[0x8000020c]:c.add s6, ra<br> [0x8000020e]:sw s6, 64(t0)<br>    |
|  18|[0x80003254]<br>0x00000500|- rs1 : x2<br> - rs2 : x31<br> - rs2_val == 1024<br> - rs1_val == 256<br>                                              |[0x8000021a]:c.add sp, t6<br> [0x8000021c]:sw sp, 68(t0)<br>    |
|  19|[0x80003258]<br>0x0000017F|- rs1 : x24<br> - rs2 : x25<br> - rs2_val == -129<br> - rs1_val == 512<br>                                             |[0x80000228]:c.add s8, s9<br> [0x8000022a]:sw s8, 72(t0)<br>    |
|  20|[0x8000325c]<br>0xE00003FF|- rs1 : x19<br> - rs2 : x7<br> - rs2_val == -536870913<br> - rs1_val == 1024<br>                                       |[0x8000023a]:c.add s3, t2<br> [0x8000023c]:sw s3, 76(t0)<br>    |
|  21|[0x80003260]<br>0x00000805|- rs1 : x17<br> - rs2 : x13<br> - rs1_val == 2048<br>                                                                  |[0x8000024c]:c.add a7, a3<br> [0x8000024e]:sw a7, 80(t0)<br>    |
|  22|[0x80003264]<br>0x00001009|- rs1 : x10<br> - rs2 : x28<br> - rs1_val == 4096<br>                                                                  |[0x80000262]:c.add a0, t3<br> [0x80000264]:sw a0, 0(ra)<br>     |
|  23|[0x80003268]<br>0x00002020|- rs1 : x27<br> - rs2 : x9<br> - rs2_val == 32<br> - rs1_val == 8192<br>                                               |[0x80000270]:c.add s11, s1<br> [0x80000272]:sw s11, 4(ra)<br>   |
|  24|[0x8000326c]<br>0x00004007|- rs1 : x23<br> - rs2 : x4<br> - rs1_val == 16384<br>                                                                  |[0x8000027e]:c.add s7, tp<br> [0x80000280]:sw s7, 8(ra)<br>     |
|  25|[0x80003270]<br>0xFFC07FFF|- rs1 : x13<br> - rs2 : x3<br> - rs2_val == -4194305<br> - rs1_val == 32768<br>                                        |[0x80000290]:c.add a3, gp<br> [0x80000292]:sw a3, 12(ra)<br>    |
|  26|[0x80003274]<br>0x00010000|- rs1 : x12<br> - rs2 : x29<br> - rs1_val == 65536<br>                                                                 |[0x8000029e]:c.add a2, t4<br> [0x800002a0]:sw a2, 16(ra)<br>    |
|  27|[0x80003278]<br>0xE001FFFF|- rs1 : x20<br> - rs2 : x5<br> - rs1_val == 131072<br>                                                                 |[0x800002b0]:c.add s4, t0<br> [0x800002b2]:sw s4, 20(ra)<br>    |
|  28|[0x8000327c]<br>0x00040000|- rs1 : x16<br> - rs2 : x22<br> - rs1_val == 262144<br>                                                                |[0x800002be]:c.add a6, s6<br> [0x800002c0]:sw a6, 24(ra)<br>    |
|  29|[0x80003280]<br>0x00000000|- rs1 : x0<br> - rs2 : x23<br> - rs2_val == -1431655766<br>                                                            |[0x800002d4]:c.add.hint.s7<br> [0x800002d6]:sw zero, 28(ra)<br> |
|  30|[0x80003284]<br>0x000FFFF6|- rs1 : x29<br> - rs2 : x8<br> - rs1_val == 1048576<br>                                                                |[0x800002e2]:c.add t4, fp<br> [0x800002e4]:sw t4, 32(ra)<br>    |
|  31|[0x80003288]<br>0xFE1FFFFF|- rs1 : x11<br> - rs2 : x14<br> - rs2_val == -33554433<br> - rs1_val == 2097152<br>                                    |[0x800002f4]:c.add a1, a4<br> [0x800002f6]:sw a1, 36(ra)<br>    |
|  32|[0x8000328c]<br>0xC0400000|- rs1 : x5<br> - rs1_val == 4194304<br>                                                                                |[0x80000302]:c.add t0, gp<br> [0x80000304]:sw t0, 40(ra)<br>    |
|  33|[0x80003290]<br>0x01800000|- rs1_val == 8388608<br>                                                                                               |[0x80000310]:c.add a0, a1<br> [0x80000312]:sw a0, 44(ra)<br>    |
|  34|[0x80003294]<br>0x00FFDFFF|- rs2_val == -8193<br> - rs1_val == 16777216<br>                                                                       |[0x80000322]:c.add a0, a1<br> [0x80000324]:sw a0, 48(ra)<br>    |
|  35|[0x80003298]<br>0x02000200|- rs1_val == 33554432<br>                                                                                              |[0x80000330]:c.add a0, a1<br> [0x80000332]:sw a0, 52(ra)<br>    |
|  36|[0x8000329c]<br>0xE3FFFFFF|- rs1_val == 67108864<br>                                                                                              |[0x80000342]:c.add a0, a1<br> [0x80000344]:sw a0, 56(ra)<br>    |
|  37|[0x800032a0]<br>0x07FFFFFE|- rs2_val == -2<br> - rs1_val == 134217728<br>                                                                         |[0x80000350]:c.add a0, a1<br> [0x80000352]:sw a0, 60(ra)<br>    |
|  38|[0x800032a4]<br>0x10010000|- rs2_val == 65536<br> - rs1_val == 268435456<br>                                                                      |[0x8000035e]:c.add a0, a1<br> [0x80000360]:sw a0, 64(ra)<br>    |
|  39|[0x800032a8]<br>0x30000000|- rs2_val == 268435456<br> - rs1_val == 536870912<br>                                                                  |[0x8000036c]:c.add a0, a1<br> [0x8000036e]:sw a0, 68(ra)<br>    |
|  40|[0x800032ac]<br>0x40000020|- rs1_val == 1073741824<br>                                                                                            |[0x8000037a]:c.add a0, a1<br> [0x8000037c]:sw a0, 72(ra)<br>    |
|  41|[0x800032b0]<br>0xFFFFFDFD|- rs2_val == -513<br> - rs1_val == -2<br>                                                                              |[0x80000388]:c.add a0, a1<br> [0x8000038a]:sw a0, 76(ra)<br>    |
|  42|[0x800032b4]<br>0x00000001|- rs1_val == -5<br>                                                                                                    |[0x80000396]:c.add a0, a1<br> [0x80000398]:sw a0, 80(ra)<br>    |
|  43|[0x800032b8]<br>0x7FFFFFF6|- rs1_val == -9<br>                                                                                                    |[0x800003a8]:c.add a0, a1<br> [0x800003aa]:sw a0, 84(ra)<br>    |
|  44|[0x800032bc]<br>0xFFFFFFE5|- rs1_val == -17<br>                                                                                                   |[0x800003b6]:c.add a0, a1<br> [0x800003b8]:sw a0, 88(ra)<br>    |
|  45|[0x800032c0]<br>0xFFFFFFFF|- rs2_val == 64<br> - rs1_val == -65<br>                                                                               |[0x800003c4]:c.add a0, a1<br> [0x800003c6]:sw a0, 92(ra)<br>    |
|  46|[0x800032c4]<br>0xFFFFFD7E|- rs1_val == -129<br>                                                                                                  |[0x800003d2]:c.add a0, a1<br> [0x800003d4]:sw a0, 96(ra)<br>    |
|  47|[0x800032c8]<br>0x54D55554|- rs2_val == -8388609<br> - rs1_val == 1431655765<br>                                                                  |[0x800003e8]:c.add a0, a1<br> [0x800003ea]:sw a0, 100(ra)<br>   |
|  48|[0x800032cc]<br>0xFF00003F|- rs2_val == -16777217<br>                                                                                             |[0x800003fa]:c.add a0, a1<br> [0x800003fc]:sw a0, 104(ra)<br>   |
|  49|[0x800032d0]<br>0xF7FFFEFE|- rs2_val == -134217729<br> - rs1_val == -257<br>                                                                      |[0x8000040c]:c.add a0, a1<br> [0x8000040e]:sw a0, 108(ra)<br>   |
|  50|[0x800032d4]<br>0xF0000001|- rs2_val == -268435457<br>                                                                                            |[0x8000041e]:c.add a0, a1<br> [0x80000420]:sw a0, 112(ra)<br>   |
|  51|[0x800032d8]<br>0xBFFFFFF9|- rs2_val == -1073741825<br>                                                                                           |[0x80000430]:c.add a0, a1<br> [0x80000432]:sw a0, 116(ra)<br>   |
|  52|[0x800032dc]<br>0xFFFFFDEE|- rs2_val == -17<br> - rs1_val == -513<br>                                                                             |[0x8000043e]:c.add a0, a1<br> [0x80000440]:sw a0, 120(ra)<br>   |
|  53|[0x800032e0]<br>0xFFFFFC07|- rs2_val == 8<br> - rs1_val == -1025<br>                                                                              |[0x8000044c]:c.add a0, a1<br> [0x8000044e]:sw a0, 124(ra)<br>   |
|  54|[0x800032e4]<br>0xFFFFEF7E|- rs1_val == -4097<br>                                                                                                 |[0x8000045e]:c.add a0, a1<br> [0x80000460]:sw a0, 128(ra)<br>   |
|  55|[0x800032e8]<br>0x00001FFF|- rs2_val == 16384<br> - rs1_val == -8193<br>                                                                          |[0x80000470]:c.add a0, a1<br> [0x80000472]:sw a0, 132(ra)<br>   |
|  56|[0x800032ec]<br>0x0000BFFF|- rs1_val == -16385<br>                                                                                                |[0x80000482]:c.add a0, a1<br> [0x80000484]:sw a0, 136(ra)<br>   |
|  57|[0x800032f0]<br>0x00077FFF|- rs2_val == 524288<br> - rs1_val == -32769<br>                                                                        |[0x80000494]:c.add a0, a1<br> [0x80000496]:sw a0, 140(ra)<br>   |
|  58|[0x800032f4]<br>0xFFFE0003|- rs2_val == 4<br> - rs1_val == -131073<br>                                                                            |[0x800004a6]:c.add a0, a1<br> [0x800004a8]:sw a0, 144(ra)<br>   |
|  59|[0x800032f8]<br>0x0FFBFFFF|- rs1_val == -262145<br>                                                                                               |[0x800004b8]:c.add a0, a1<br> [0x800004ba]:sw a0, 148(ra)<br>   |
|  60|[0x800032fc]<br>0xFFEFF7FE|- rs1_val == -1048577<br>                                                                                              |[0x800004ce]:c.add a0, a1<br> [0x800004d0]:sw a0, 152(ra)<br>   |
|  61|[0x80003300]<br>0xFFDFDFFE|- rs1_val == -2097153<br>                                                                                              |[0x800004e4]:c.add a0, a1<br> [0x800004e6]:sw a0, 156(ra)<br>   |
|  62|[0x80003304]<br>0xFFC000FF|- rs2_val == 256<br> - rs1_val == -4194305<br>                                                                         |[0x800004f6]:c.add a0, a1<br> [0x800004f8]:sw a0, 160(ra)<br>   |
|  63|[0x80003308]<br>0xFF800004|- rs1_val == -8388609<br>                                                                                              |[0x80000508]:c.add a0, a1<br> [0x8000050a]:sw a0, 164(ra)<br>   |
|  64|[0x8000330c]<br>0xFF000006|- rs1_val == -16777217<br>                                                                                             |[0x8000051a]:c.add a0, a1<br> [0x8000051c]:sw a0, 168(ra)<br>   |
|  65|[0x80003310]<br>0xFE01FFFF|- rs2_val == 131072<br> - rs1_val == -33554433<br>                                                                     |[0x8000052c]:c.add a0, a1<br> [0x8000052e]:sw a0, 172(ra)<br>   |
|  66|[0x80003314]<br>0xFBFBFFFE|- rs2_val == -262145<br> - rs1_val == -67108865<br>                                                                    |[0x80000542]:c.add a0, a1<br> [0x80000544]:sw a0, 176(ra)<br>   |
|  67|[0x80003318]<br>0xF8000FFF|- rs2_val == 4096<br> - rs1_val == -134217729<br>                                                                      |[0x80000554]:c.add a0, a1<br> [0x80000556]:sw a0, 180(ra)<br>   |
|  68|[0x8000331c]<br>0xF000003F|- rs1_val == -268435457<br>                                                                                            |[0x80000566]:c.add a0, a1<br> [0x80000568]:sw a0, 184(ra)<br>   |
|  69|[0x80003320]<br>0xE07FFFFF|- rs2_val == 8388608<br> - rs1_val == -536870913<br>                                                                   |[0x80000578]:c.add a0, a1<br> [0x8000057a]:sw a0, 188(ra)<br>   |
|  70|[0x80003324]<br>0x7FFFFFFF|- rs1_val == -1073741825<br>                                                                                           |[0x8000058a]:c.add a0, a1<br> [0x8000058c]:sw a0, 192(ra)<br>   |
|  71|[0x80003328]<br>0xAAAAEAAA|- rs1_val == -1431655766<br>                                                                                           |[0x8000059c]:c.add a0, a1<br> [0x8000059e]:sw a0, 196(ra)<br>   |
|  72|[0x8000332c]<br>0x00000006|- rs2_val == 2<br>                                                                                                     |[0x800005aa]:c.add a0, a1<br> [0x800005ac]:sw a0, 200(ra)<br>   |
|  73|[0x80003330]<br>0x4000000F|- rs2_val == 16<br>                                                                                                    |[0x800005bc]:c.add a0, a1<br> [0x800005be]:sw a0, 204(ra)<br>   |
|  74|[0x80003334]<br>0x0000007C|- rs2_val == 128<br>                                                                                                   |[0x800005ca]:c.add a0, a1<br> [0x800005cc]:sw a0, 208(ra)<br>   |
|  75|[0x80003338]<br>0x000006FF|- rs2_val == 2048<br>                                                                                                  |[0x800005dc]:c.add a0, a1<br> [0x800005de]:sw a0, 212(ra)<br>   |
|  76|[0x8000333c]<br>0xC0007FFF|- rs2_val == 32768<br>                                                                                                 |[0x800005ee]:c.add a0, a1<br> [0x800005f0]:sw a0, 216(ra)<br>   |
|  77|[0x80003340]<br>0x0003FFBF|- rs2_val == 262144<br>                                                                                                |[0x800005fc]:c.add a0, a1<br> [0x800005fe]:sw a0, 220(ra)<br>   |
|  78|[0x80003344]<br>0x000FEFFF|- rs2_val == 1048576<br>                                                                                               |[0x8000060e]:c.add a0, a1<br> [0x80000610]:sw a0, 224(ra)<br>   |
|  79|[0x80003348]<br>0x10200000|- rs2_val == 2097152<br>                                                                                               |[0x8000061c]:c.add a0, a1<br> [0x8000061e]:sw a0, 228(ra)<br>   |
|  80|[0x8000334c]<br>0x003FFFFA|- rs2_val == 4194304<br>                                                                                               |[0x8000062a]:c.add a0, a1<br> [0x8000062c]:sw a0, 232(ra)<br>   |
|  81|[0x80003350]<br>0x01FFFFF8|- rs2_val == 33554432<br>                                                                                              |[0x80000638]:c.add a0, a1<br> [0x8000063a]:sw a0, 236(ra)<br>   |
|  82|[0x80003354]<br>0x037FFFFF|- rs2_val == 67108864<br>                                                                                              |[0x8000064a]:c.add a0, a1<br> [0x8000064c]:sw a0, 240(ra)<br>   |
|  83|[0x80003358]<br>0x20010000|- rs2_val == 536870912<br>                                                                                             |[0x80000658]:c.add a0, a1<br> [0x8000065a]:sw a0, 244(ra)<br>   |
|  84|[0x8000335c]<br>0x2FFFFFFF|- rs2_val == 1073741824<br>                                                                                            |[0x8000066a]:c.add a0, a1<br> [0x8000066c]:sw a0, 248(ra)<br>   |
|  85|[0x80003360]<br>0xEFFFFFFC|- rs2_val == -3<br>                                                                                                    |[0x8000067c]:c.add a0, a1<br> [0x8000067e]:sw a0, 252(ra)<br>   |
|  86|[0x80003364]<br>0x0000003B|- rs2_val == -5<br>                                                                                                    |[0x8000068a]:c.add a0, a1<br> [0x8000068c]:sw a0, 256(ra)<br>   |
|  87|[0x80003368]<br>0x7FFFFFDE|- rs2_val == -33<br>                                                                                                   |[0x8000069c]:c.add a0, a1<br> [0x8000069e]:sw a0, 260(ra)<br>   |
|  88|[0x8000336c]<br>0xFFFF7FBE|- rs2_val == -65<br>                                                                                                   |[0x800006ae]:c.add a0, a1<br> [0x800006b0]:sw a0, 264(ra)<br>   |
|  89|[0x80003370]<br>0xFF7FFEFE|- rs2_val == -257<br>                                                                                                  |[0x800006c0]:c.add a0, a1<br> [0x800006c2]:sw a0, 268(ra)<br>   |
|  90|[0x80003374]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                 |[0x800006ce]:c.add a0, a1<br> [0x800006d0]:sw a0, 272(ra)<br>   |
|  91|[0x80003378]<br>0xFFFFEEFE|- rs2_val == -4097<br>                                                                                                 |[0x800006e0]:c.add a0, a1<br> [0x800006e2]:sw a0, 276(ra)<br>   |
|  92|[0x8000337c]<br>0xFFBFBFFE|- rs2_val == -16385<br>                                                                                                |[0x800006f6]:c.add a0, a1<br> [0x800006f8]:sw a0, 280(ra)<br>   |
|  93|[0x80003380]<br>0xFFFEFFFE|- rs2_val == -32769<br>                                                                                                |[0x8000070c]:c.add a0, a1<br> [0x8000070e]:sw a0, 284(ra)<br>   |
|  94|[0x80003384]<br>0xFFFFFFFF|- rs2_val == -65537<br>                                                                                                |[0x8000071e]:c.add a0, a1<br> [0x80000720]:sw a0, 288(ra)<br>   |
|  95|[0x80003388]<br>0xFFDDFFFE|- rs2_val == -131073<br>                                                                                               |[0x80000734]:c.add a0, a1<br> [0x80000736]:sw a0, 292(ra)<br>   |
|  96|[0x8000338c]<br>0xFDDFFFFE|- rs2_val == -2097153<br>                                                                                              |[0x8000074a]:c.add a0, a1<br> [0x8000074c]:sw a0, 296(ra)<br>   |
|  97|[0x80003390]<br>0xFFFFF7F6|- rs2_val == -9<br>                                                                                                    |[0x8000075c]:c.add a0, a1<br> [0x8000075e]:sw a0, 300(ra)<br>   |
|  98|[0x80003394]<br>0xAAB2AAAA|- rs1_val == 524288<br>                                                                                                |[0x8000076e]:c.add a0, a1<br> [0x80000770]:sw a0, 304(ra)<br>   |
