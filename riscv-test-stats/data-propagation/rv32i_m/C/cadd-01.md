
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000730')]      |
| SIG_REGION                | [('0x80003204', '0x800033a0', '103 words')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 206     |
| Total Coverpoints Hit     | 206      |
| Total Signature Updates   | 103      |
| STAT1                     | 103      |
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

|s.no|        signature         |                                                                coverpoints                                                                 |                              code                              |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003204]<br>0x10000000|- opcode : c.add<br> - rs1 : x2<br> - rs2 : x2<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 134217728<br> - rs1_val == 134217728<br> |[0x80000108]:c.add sp, sp<br> [0x8000010a]:sw sp, 0(tp)<br>     |
|   2|[0x80003208]<br>0x000001FF|- rs1 : x23<br> - rs2 : x7<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs1_val == 512<br>                                                      |[0x80000116]:c.add s7, t2<br> [0x80000118]:sw s7, 4(tp)<br>     |
|   3|[0x8000320c]<br>0x80000001|- rs1 : x6<br> - rs2 : x17<br> - rs2_val == 1<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                              |[0x80000124]:c.add t1, a7<br> [0x80000126]:sw t1, 8(tp)<br>     |
|   4|[0x80003210]<br>0x00400000|- rs1 : x18<br> - rs2 : x14<br> - rs1_val == 0<br> - rs2_val == 4194304<br>                                                                 |[0x80000132]:c.add s2, a4<br> [0x80000134]:sw s2, 12(tp)<br>    |
|   5|[0x80003214]<br>0x7FFFFFEE|- rs1 : x27<br> - rs2 : x5<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -17<br> - rs1_val == 2147483647<br>                            |[0x80000144]:c.add s11, t0<br> [0x80000146]:sw s11, 16(tp)<br>  |
|   6|[0x80003218]<br>0x00100001|- rs1 : x21<br> - rs2 : x12<br> - rs1_val == 1<br> - rs2_val == 1048576<br>                                                                 |[0x80000152]:c.add s5, a2<br> [0x80000154]:sw s5, 20(tp)<br>    |
|   7|[0x8000321c]<br>0x7FFFFFF6|- rs1 : x1<br> - rs2 : x24<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                 |[0x80000160]:c.add ra, s8<br> [0x80000162]:sw ra, 24(tp)<br>    |
|   8|[0x80003220]<br>0x40000000|- rs1 : x24<br> - rs2 : x6<br> - rs2_val == 0<br> - rs1_val == 1073741824<br>                                                               |[0x8000016e]:c.add s8, t1<br> [0x80000170]:sw s8, 28(tp)<br>    |
|   9|[0x80003224]<br>0x87FFFFFF|- rs1 : x30<br> - rs2 : x19<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                |[0x80000180]:c.add t5, s3<br> [0x80000182]:sw t5, 32(tp)<br>    |
|  10|[0x80003228]<br>0x40000001|- rs1 : x22<br> - rs2 : x21<br> - rs1_val == 2<br>                                                                                          |[0x80000192]:c.add s6, s5<br> [0x80000194]:sw s6, 36(tp)<br>    |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x0<br> - rs2 : x8<br>                                                                                                               |[0x800001a0]:c.add.hint.fp<br> [0x800001a2]:sw zero, 40(tp)<br> |
|  12|[0x80003230]<br>0xFFFF0007|- rs1 : x25<br> - rs2 : x9<br> - rs2_val == -65537<br> - rs1_val == 8<br>                                                                   |[0x800001b2]:c.add s9, s1<br> [0x800001b4]:sw s9, 44(tp)<br>    |
|  13|[0x80003234]<br>0x00000014|- rs1 : x31<br> - rs2 : x29<br> - rs2_val == 4<br> - rs1_val == 16<br>                                                                      |[0x800001c0]:c.add t6, t4<br> [0x800001c2]:sw t6, 48(tp)<br>    |
|  14|[0x80003238]<br>0xFFF8001F|- rs1 : x16<br> - rs2 : x11<br> - rs2_val == -524289<br> - rs1_val == 32<br>                                                                |[0x800001d2]:c.add a6, a1<br> [0x800001d4]:sw a6, 52(tp)<br>    |
|  15|[0x8000323c]<br>0x00004040|- rs1 : x15<br> - rs2 : x22<br> - rs2_val == 16384<br> - rs1_val == 64<br>                                                                  |[0x800001e0]:c.add a5, s6<br> [0x800001e2]:sw a5, 56(tp)<br>    |
|  16|[0x80003240]<br>0xFFFFE07F|- rs1 : x8<br> - rs2 : x27<br> - rs2_val == -8193<br> - rs1_val == 128<br>                                                                  |[0x800001f2]:c.add fp, s11<br> [0x800001f4]:sw fp, 60(tp)<br>   |
|  17|[0x80003244]<br>0x000000FC|- rs1 : x20<br> - rs2 : x3<br> - rs1_val == 256<br>                                                                                         |[0x80000200]:c.add s4, gp<br> [0x80000202]:sw s4, 64(tp)<br>    |
|  18|[0x80003248]<br>0x00004400|- rs1 : x28<br> - rs2 : x30<br> - rs1_val == 1024<br>                                                                                       |[0x8000020e]:c.add t3, t5<br> [0x80000210]:sw t3, 68(tp)<br>    |
|  19|[0x8000324c]<br>0xFFFF07FF|- rs1 : x5<br> - rs2 : x13<br> - rs1_val == 2048<br>                                                                                        |[0x80000224]:c.add t0, a3<br> [0x80000226]:sw t0, 72(tp)<br>    |
|  20|[0x80003250]<br>0x00005000|- rs1 : x19<br> - rs2 : x18<br> - rs1_val == 4096<br>                                                                                       |[0x8000023a]:c.add s3, s2<br> [0x8000023c]:c.swsp s3, 0<br>     |
|  21|[0x80003254]<br>0x00002100|- rs1 : x10<br> - rs2 : x16<br> - rs2_val == 256<br> - rs1_val == 8192<br>                                                                  |[0x80000246]:c.add a0, a6<br> [0x80000248]:c.swsp a0, 1<br>     |
|  22|[0x80003258]<br>0x00003FF6|- rs1 : x3<br> - rs2 : x10<br> - rs1_val == 16384<br>                                                                                       |[0x80000252]:c.add gp, a0<br> [0x80000254]:c.swsp gp, 2<br>     |
|  23|[0x8000325c]<br>0xFFC07FFF|- rs1 : x7<br> - rs2 : x25<br> - rs2_val == -4194305<br> - rs1_val == 32768<br>                                                             |[0x80000262]:c.add t2, s9<br> [0x80000264]:c.swsp t2, 3<br>     |
|  24|[0x80003260]<br>0x0000BFFF|- rs1 : x26<br> - rs2 : x4<br> - rs2_val == -16385<br> - rs1_val == 65536<br>                                                               |[0x80000272]:c.add s10, tp<br> [0x80000274]:c.swsp s10, 4<br>   |
|  25|[0x80003264]<br>0x20020000|- rs1 : x12<br> - rs2 : x1<br> - rs2_val == 536870912<br> - rs1_val == 131072<br>                                                           |[0x8000027e]:c.add a2, ra<br> [0x80000280]:c.swsp a2, 5<br>     |
|  26|[0x80003268]<br>0x0003FFFA|- rs1 : x9<br> - rs2 : x31<br> - rs1_val == 262144<br>                                                                                      |[0x8000028a]:c.add s1, t6<br> [0x8000028c]:c.swsp s1, 6<br>     |
|  27|[0x8000326c]<br>0x00080010|- rs1 : x29<br> - rs2 : x23<br> - rs2_val == 16<br> - rs1_val == 524288<br>                                                                 |[0x80000296]:c.add t4, s7<br> [0x80000298]:c.swsp t4, 7<br>     |
|  28|[0x80003270]<br>0x000FFFF7|- rs1 : x13<br> - rs2 : x28<br> - rs2_val == -9<br> - rs1_val == 1048576<br>                                                                |[0x800002a2]:c.add a3, t3<br> [0x800002a4]:c.swsp a3, 8<br>     |
|  29|[0x80003274]<br>0x00600000|- rs1 : x4<br> - rs2 : x26<br> - rs1_val == 2097152<br>                                                                                     |[0x800002ae]:c.add tp, s10<br> [0x800002b0]:c.swsp tp, 9<br>    |
|  30|[0x80003278]<br>0x00400080|- rs1 : x11<br> - rs2 : x20<br> - rs2_val == 128<br> - rs1_val == 4194304<br>                                                               |[0x800002ba]:c.add a1, s4<br> [0x800002bc]:c.swsp a1, 10<br>    |
|  31|[0x8000327c]<br>0x007FFFFF|- rs1 : x17<br> - rs2 : x15<br> - rs1_val == 8388608<br>                                                                                    |[0x800002c6]:c.add a7, a5<br> [0x800002c8]:c.swsp a7, 11<br>    |
|  32|[0x80003280]<br>0x40FFFFFF|- rs1 : x14<br> - rs1_val == 16777216<br>                                                                                                   |[0x800002d6]:c.add a4, s1<br> [0x800002d8]:c.swsp a4, 12<br>    |
|  33|[0x80003284]<br>0x02000200|- rs2_val == 512<br> - rs1_val == 33554432<br>                                                                                              |[0x800002e2]:c.add a0, a1<br> [0x800002e4]:c.swsp a0, 13<br>    |
|  34|[0x80003288]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                                   |[0x800002ee]:c.add a0, a1<br> [0x800002f0]:c.swsp a0, 14<br>    |
|  35|[0x8000328c]<br>0x4FFFFFFF|- rs1_val == 268435456<br>                                                                                                                  |[0x800002fe]:c.add a0, a1<br> [0x80000300]:c.swsp a0, 15<br>    |
|  36|[0x80003290]<br>0x28000000|- rs1_val == 536870912<br>                                                                                                                  |[0x8000030a]:c.add a0, a1<br> [0x8000030c]:c.swsp a0, 16<br>    |
|  37|[0x80003294]<br>0xFFFFDFFD|- rs1_val == -2<br>                                                                                                                         |[0x8000031a]:c.add a0, a1<br> [0x8000031c]:c.swsp a0, 17<br>    |
|  38|[0x80003298]<br>0xFFFFFFF3|- rs1_val == -3<br>                                                                                                                         |[0x80000326]:c.add a0, a1<br> [0x80000328]:c.swsp a0, 18<br>    |
|  39|[0x8000329c]<br>0xFFFFFFF6|- rs2_val == -5<br> - rs1_val == -5<br>                                                                                                     |[0x80000332]:c.add a0, a1<br> [0x80000334]:c.swsp a0, 19<br>    |
|  40|[0x800032a0]<br>0xFFBFFFF6|- rs1_val == -9<br>                                                                                                                         |[0x80000342]:c.add a0, a1<br> [0x80000344]:c.swsp a0, 20<br>    |
|  41|[0x800032a4]<br>0xFEFFFFEE|- rs2_val == -16777217<br> - rs1_val == -17<br>                                                                                             |[0x80000352]:c.add a0, a1<br> [0x80000354]:c.swsp a0, 21<br>    |
|  42|[0x800032a8]<br>0xFFFFFFE7|- rs2_val == 8<br> - rs1_val == -33<br>                                                                                                     |[0x8000035e]:c.add a0, a1<br> [0x80000360]:c.swsp a0, 22<br>    |
|  43|[0x800032ac]<br>0xFFFFFFB7|- rs1_val == -65<br>                                                                                                                        |[0x8000036a]:c.add a0, a1<br> [0x8000036c]:c.swsp a0, 23<br>    |
|  44|[0x800032b0]<br>0xFFFFFF82|- rs1_val == -129<br>                                                                                                                       |[0x80000376]:c.add a0, a1<br> [0x80000378]:c.swsp a0, 24<br>    |
|  45|[0x800032b4]<br>0xAAAAA9A9|- rs2_val == -1431655766<br> - rs1_val == -257<br>                                                                                          |[0x80000386]:c.add a0, a1<br> [0x80000388]:c.swsp a0, 25<br>    |
|  46|[0x800032b8]<br>0x0007FDFF|- rs2_val == 524288<br> - rs1_val == -513<br>                                                                                               |[0x80000392]:c.add a0, a1<br> [0x80000394]:c.swsp a0, 26<br>    |
|  47|[0x800032bc]<br>0x07FFFBFF|- rs1_val == -1025<br>                                                                                                                      |[0x8000039e]:c.add a0, a1<br> [0x800003a0]:c.swsp a0, 27<br>    |
|  48|[0x800032c0]<br>0x077FFFFF|- rs2_val == -8388609<br>                                                                                                                   |[0x800003ae]:c.add a0, a1<br> [0x800003b0]:c.swsp a0, 28<br>    |
|  49|[0x800032c4]<br>0xFDFFFFBE|- rs2_val == -33554433<br>                                                                                                                  |[0x800003be]:c.add a0, a1<br> [0x800003c0]:c.swsp a0, 29<br>    |
|  50|[0x800032c8]<br>0x1BFFFFFF|- rs2_val == -67108865<br>                                                                                                                  |[0x800003ce]:c.add a0, a1<br> [0x800003d0]:c.swsp a0, 30<br>    |
|  51|[0x800032cc]<br>0xF8000007|- rs2_val == -134217729<br>                                                                                                                 |[0x800003de]:c.add a0, a1<br> [0x800003e0]:c.swsp a0, 31<br>    |
|  52|[0x800032d0]<br>0xEFEFFFFE|- rs2_val == -268435457<br> - rs1_val == -1048577<br>                                                                                       |[0x800003f2]:c.add a0, a1<br> [0x800003f4]:c.swsp a0, 32<br>    |
|  53|[0x800032d4]<br>0xE00003FF|- rs2_val == -536870913<br>                                                                                                                 |[0x80000402]:c.add a0, a1<br> [0x80000404]:c.swsp a0, 33<br>    |
|  54|[0x800032d8]<br>0xC0000004|- rs2_val == -1073741825<br>                                                                                                                |[0x80000412]:c.add a0, a1<br> [0x80000414]:c.swsp a0, 34<br>    |
|  55|[0x800032dc]<br>0x5555554E|- rs2_val == 1431655765<br>                                                                                                                 |[0x80000422]:c.add a0, a1<br> [0x80000424]:c.swsp a0, 35<br>    |
|  56|[0x800032e0]<br>0xFFFFF7F5|- rs1_val == -2049<br>                                                                                                                      |[0x80000432]:c.add a0, a1<br> [0x80000434]:c.swsp a0, 36<br>    |
|  57|[0x800032e4]<br>0xFBFFEFFE|- rs1_val == -4097<br>                                                                                                                      |[0x80000446]:c.add a0, a1<br> [0x80000448]:c.swsp a0, 37<br>    |
|  58|[0x800032e8]<br>0xFFFFE001|- rs2_val == 2<br> - rs1_val == -8193<br>                                                                                                   |[0x80000456]:c.add a0, a1<br> [0x80000458]:c.swsp a0, 38<br>    |
|  59|[0x800032ec]<br>0x00FFBFFF|- rs2_val == 16777216<br> - rs1_val == -16385<br>                                                                                           |[0x80000466]:c.add a0, a1<br> [0x80000468]:c.swsp a0, 39<br>    |
|  60|[0x800032f0]<br>0xFFFF8004|- rs1_val == -32769<br>                                                                                                                     |[0x80000476]:c.add a0, a1<br> [0x80000478]:c.swsp a0, 40<br>    |
|  61|[0x800032f4]<br>0xFFFEFFF6|- rs1_val == -65537<br>                                                                                                                     |[0x80000486]:c.add a0, a1<br> [0x80000488]:c.swsp a0, 41<br>    |
|  62|[0x800032f8]<br>0xFFFDFFF9|- rs1_val == -131073<br>                                                                                                                    |[0x80000496]:c.add a0, a1<br> [0x80000498]:c.swsp a0, 42<br>    |
|  63|[0x800032fc]<br>0xFFFC03FF|- rs2_val == 1024<br> - rs1_val == -262145<br>                                                                                              |[0x800004a6]:c.add a0, a1<br> [0x800004a8]:c.swsp a0, 43<br>    |
|  64|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -524289<br>                                                                                                                    |[0x800004b6]:c.add a0, a1<br> [0x800004b8]:c.swsp a0, 44<br>    |
|  65|[0x80003304]<br>0xFFE00006|- rs1_val == -2097153<br>                                                                                                                   |[0x800004c6]:c.add a0, a1<br> [0x800004c8]:c.swsp a0, 45<br>    |
|  66|[0x80003308]<br>0xFFBFFFFC|- rs2_val == -3<br> - rs1_val == -4194305<br>                                                                                               |[0x800004d6]:c.add a0, a1<br> [0x800004d8]:c.swsp a0, 46<br>    |
|  67|[0x8000330c]<br>0xFF800008|- rs1_val == -8388609<br>                                                                                                                   |[0x800004e6]:c.add a0, a1<br> [0x800004e8]:c.swsp a0, 47<br>    |
|  68|[0x80003310]<br>0xFF00007F|- rs1_val == -16777217<br>                                                                                                                  |[0x800004f6]:c.add a0, a1<br> [0x800004f8]:c.swsp a0, 48<br>    |
|  69|[0x80003314]<br>0xF9FFFFFE|- rs1_val == -33554433<br>                                                                                                                  |[0x8000050a]:c.add a0, a1<br> [0x8000050c]:c.swsp a0, 49<br>    |
|  70|[0x80003318]<br>0xFC0FFFFF|- rs1_val == -67108865<br>                                                                                                                  |[0x8000051a]:c.add a0, a1<br> [0x8000051c]:c.swsp a0, 50<br>    |
|  71|[0x8000331c]<br>0xF8FFFFFF|- rs1_val == -134217729<br>                                                                                                                 |[0x8000052a]:c.add a0, a1<br> [0x8000052c]:c.swsp a0, 51<br>    |
|  72|[0x80003320]<br>0x9AAAAAA9|- rs1_val == -268435457<br>                                                                                                                 |[0x8000053e]:c.add a0, a1<br> [0x80000540]:c.swsp a0, 52<br>    |
|  73|[0x80003324]<br>0xDFFFFFFC|- rs1_val == -536870913<br>                                                                                                                 |[0x8000054e]:c.add a0, a1<br> [0x80000550]:c.swsp a0, 53<br>    |
|  74|[0x80003328]<br>0xBFFFEFFE|- rs2_val == -4097<br> - rs1_val == -1073741825<br>                                                                                         |[0x80000562]:c.add a0, a1<br> [0x80000564]:c.swsp a0, 54<br>    |
|  75|[0x8000332c]<br>0x55555552|- rs1_val == 1431655765<br>                                                                                                                 |[0x80000572]:c.add a0, a1<br> [0x80000574]:c.swsp a0, 55<br>    |
|  76|[0x80003330]<br>0xAAAABAAA|- rs2_val == 4096<br> - rs1_val == -1431655766<br>                                                                                          |[0x80000582]:c.add a0, a1<br> [0x80000584]:c.swsp a0, 56<br>    |
|  77|[0x80003334]<br>0x00000017|- rs2_val == 32<br>                                                                                                                         |[0x8000058e]:c.add a0, a1<br> [0x80000590]:c.swsp a0, 57<br>    |
|  78|[0x80003338]<br>0x0000003D|- rs2_val == 64<br>                                                                                                                         |[0x8000059a]:c.add a0, a1<br> [0x8000059c]:c.swsp a0, 58<br>    |
|  79|[0x8000333c]<br>0xFFFC07FF|- rs2_val == 2048<br>                                                                                                                       |[0x800005ae]:c.add a0, a1<br> [0x800005b0]:c.swsp a0, 59<br>    |
|  80|[0x80003340]<br>0x00088000|- rs2_val == 32768<br>                                                                                                                      |[0x800005ba]:c.add a0, a1<br> [0x800005bc]:c.swsp a0, 60<br>    |
|  81|[0x80003344]<br>0x08010000|- rs2_val == 65536<br>                                                                                                                      |[0x800005c6]:c.add a0, a1<br> [0x800005c8]:c.swsp a0, 61<br>    |
|  82|[0x80003348]<br>0x000A0000|- rs2_val == 131072<br>                                                                                                                     |[0x800005d2]:c.add a0, a1<br> [0x800005d4]:c.swsp a0, 62<br>    |
|  83|[0x8000334c]<br>0x00040001|- rs2_val == 262144<br>                                                                                                                     |[0x800005de]:c.add a0, a1<br> [0x800005e0]:c.swsp a0, 63<br>    |
|  84|[0x80003350]<br>0x001FFFF8|- rs2_val == 2097152<br>                                                                                                                    |[0x800005ea]:c.add a0, a1<br> [0x800005ec]:sw a0, 256(sp)<br>   |
|  85|[0x80003354]<br>0x00808000|- rs2_val == 8388608<br>                                                                                                                    |[0x800005f8]:c.add a0, a1<br> [0x800005fa]:sw a0, 260(sp)<br>   |
|  86|[0x80003358]<br>0x02000800|- rs2_val == 33554432<br>                                                                                                                   |[0x8000060a]:c.add a0, a1<br> [0x8000060c]:sw a0, 264(sp)<br>   |
|  87|[0x8000335c]<br>0x04000040|- rs2_val == 67108864<br>                                                                                                                   |[0x80000618]:c.add a0, a1<br> [0x8000061a]:sw a0, 268(sp)<br>   |
|  88|[0x80003360]<br>0x0FFFFEFF|- rs2_val == 268435456<br>                                                                                                                  |[0x80000626]:c.add a0, a1<br> [0x80000628]:sw a0, 272(sp)<br>   |
|  89|[0x80003364]<br>0x3FFFEFFF|- rs2_val == 1073741824<br>                                                                                                                 |[0x80000638]:c.add a0, a1<br> [0x8000063a]:sw a0, 276(sp)<br>   |
|  90|[0x80003368]<br>0xFFFFFF7D|- rs2_val == -2<br>                                                                                                                         |[0x80000646]:c.add a0, a1<br> [0x80000648]:sw a0, 280(sp)<br>   |
|  91|[0x8000336c]<br>0x000007DF|- rs2_val == -33<br>                                                                                                                        |[0x80000658]:c.add a0, a1<br> [0x8000065a]:sw a0, 284(sp)<br>   |
|  92|[0x80003370]<br>0x003FFFBF|- rs2_val == -65<br>                                                                                                                        |[0x80000666]:c.add a0, a1<br> [0x80000668]:sw a0, 288(sp)<br>   |
|  93|[0x80003374]<br>0xFFFFFF9F|- rs2_val == -129<br>                                                                                                                       |[0x80000674]:c.add a0, a1<br> [0x80000676]:sw a0, 292(sp)<br>   |
|  94|[0x80003378]<br>0xFFFFFF03|- rs2_val == -257<br> - rs1_val == 4<br>                                                                                                    |[0x80000682]:c.add a0, a1<br> [0x80000684]:sw a0, 296(sp)<br>   |
|  95|[0x8000337c]<br>0xFFDFFDFE|- rs2_val == -513<br>                                                                                                                       |[0x80000694]:c.add a0, a1<br> [0x80000696]:sw a0, 300(sp)<br>   |
|  96|[0x80003380]<br>0x001FFBFF|- rs2_val == -1025<br>                                                                                                                      |[0x800006a2]:c.add a0, a1<br> [0x800006a4]:sw a0, 304(sp)<br>   |
|  97|[0x80003384]<br>0x000FF7FF|- rs2_val == -2049<br>                                                                                                                      |[0x800006b4]:c.add a0, a1<br> [0x800006b6]:sw a0, 308(sp)<br>   |
|  98|[0x80003388]<br>0xFFFF7EFE|- rs2_val == -32769<br>                                                                                                                     |[0x800006c6]:c.add a0, a1<br> [0x800006c8]:sw a0, 312(sp)<br>   |
|  99|[0x8000338c]<br>0x01FDFFFF|- rs2_val == -131073<br>                                                                                                                    |[0x800006d8]:c.add a0, a1<br> [0x800006da]:sw a0, 316(sp)<br>   |
| 100|[0x80003390]<br>0x7FFBFFFE|- rs2_val == -262145<br>                                                                                                                    |[0x800006ee]:c.add a0, a1<br> [0x800006f0]:sw a0, 320(sp)<br>   |
| 101|[0x80003394]<br>0xFFFFFFFF|- rs2_val == -1048577<br>                                                                                                                   |[0x80000700]:c.add a0, a1<br> [0x80000702]:sw a0, 324(sp)<br>   |
| 102|[0x80003398]<br>0x0FDFFFFF|- rs2_val == -2097153<br>                                                                                                                   |[0x80000712]:c.add a0, a1<br> [0x80000714]:sw a0, 328(sp)<br>   |
| 103|[0x8000339c]<br>0x08002000|- rs2_val == 8192<br>                                                                                                                       |[0x80000720]:c.add a0, a1<br> [0x80000722]:sw a0, 332(sp)<br>   |
