
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007b0')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 102      |
| STAT1                     | 102      |
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

|s.no|        signature         |                                                    coverpoints                                                     |                             code                             |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : c.sub<br> - rs1 : x11<br> - rs2 : x11<br> - rs1 == rs2<br> - rs2_val > 0<br>                             |[0x80000108]:c.sub a1, a1<br> [0x8000010a]:sw a1, 0(ra)<br>   |
|   2|[0x80003208]<br>0x1FFFFFE0|- rs1 : x10<br> - rs2 : x14<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs2_val == -536870913<br> - rs1_val == -33<br> |[0x8000011a]:c.sub a0, a4<br> [0x8000011c]:sw a0, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x7FFFFFF7|- rs1 : x13<br> - rs2 : x15<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                        |[0x80000128]:c.sub a3, a5<br> [0x8000012a]:sw a3, 8(ra)<br>   |
|   4|[0x80003210]<br>0xC0000000|- rs1 : x12<br> - rs2 : x9<br> - rs1_val == 0<br> - rs2_val == 1073741824<br>                                       |[0x80000136]:c.sub a2, s1<br> [0x80000138]:sw a2, 12(ra)<br>  |
|   5|[0x80003214]<br>0x7FFF7FFF|- rs1 : x14<br> - rs2 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 32768<br> - rs1_val == 2147483647<br> |[0x80000148]:c.sub a4, a2<br> [0x8000014a]:sw a4, 16(ra)<br>  |
|   6|[0x80003218]<br>0x00000000|- rs1 : x15<br> - rs2 : x10<br> - rs2_val == 1<br> - rs1_val == 1<br>                                               |[0x80000156]:c.sub a5, a0<br> [0x80000158]:sw a5, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x80000006|- rs1 : x9<br> - rs2 : x8<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                          |[0x80000164]:c.sub s1, s0<br> [0x80000166]:sw s1, 24(ra)<br>  |
|   8|[0x80003220]<br>0xFFFFFFDF|- rs1 : x8<br> - rs2 : x13<br> - rs2_val == 0<br>                                                                   |[0x80000172]:c.sub s0, a3<br> [0x80000174]:sw fp, 28(ra)<br>  |
|   9|[0x80003224]<br>0xA0000001|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 536870912<br>                             |[0x80000184]:c.sub a0, a1<br> [0x80000186]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x00000013|- rs2_val == -17<br> - rs1_val == 2<br>                                                                             |[0x80000192]:c.sub a0, a1<br> [0x80000194]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0xFFFF8004|- rs1_val == 4<br>                                                                                                  |[0x800001a0]:c.sub a0, a1<br> [0x800001a2]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0xFFFF0008|- rs2_val == 65536<br> - rs1_val == 8<br>                                                                           |[0x800001ae]:c.sub a0, a1<br> [0x800001b0]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0xFC000010|- rs2_val == 67108864<br> - rs1_val == 16<br>                                                                       |[0x800001bc]:c.sub a0, a1<br> [0x800001be]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFFFFF020|- rs2_val == 4096<br> - rs1_val == 32<br>                                                                           |[0x800001ca]:c.sub a0, a1<br> [0x800001cc]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x000000C1|- rs2_val == -129<br> - rs1_val == 64<br>                                                                           |[0x800001d8]:c.sub a0, a1<br> [0x800001da]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00010081|- rs2_val == -65537<br> - rs1_val == 128<br>                                                                        |[0x800001ea]:c.sub a0, a1<br> [0x800001ec]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000501|- rs2_val == -1025<br> - rs1_val == 256<br>                                                                         |[0x800001f8]:c.sub a0, a1<br> [0x800001fa]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000A01|- rs2_val == -2049<br> - rs1_val == 512<br>                                                                         |[0x8000020a]:c.sub a0, a1<br> [0x8000020c]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x20000401|- rs1_val == 1024<br>                                                                                               |[0x8000021c]:c.sub a0, a1<br> [0x8000021e]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00000801|- rs1_val == 2048<br>                                                                                               |[0x8000022e]:c.sub a0, a1<br> [0x80000230]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00081001|- rs2_val == -524289<br> - rs1_val == 4096<br>                                                                      |[0x80000240]:c.sub a0, a1<br> [0x80000242]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00001F80|- rs2_val == 128<br> - rs1_val == 8192<br>                                                                          |[0x8000024e]:c.sub a0, a1<br> [0x80000250]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0xFF804000|- rs2_val == 8388608<br> - rs1_val == 16384<br>                                                                     |[0x8000025c]:c.sub a0, a1<br> [0x8000025e]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00088001|- rs1_val == 32768<br>                                                                                              |[0x8000026e]:c.sub a0, a1<br> [0x80000270]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0x0000FFF7|- rs1_val == 65536<br>                                                                                              |[0x8000027c]:c.sub a0, a1<br> [0x8000027e]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x80020001|- rs1_val == 131072<br>                                                                                             |[0x8000028e]:c.sub a0, a1<br> [0x80000290]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0x00040801|- rs1_val == 262144<br>                                                                                             |[0x800002a0]:c.sub a0, a1<br> [0x800002a2]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0x00080008|- rs1_val == 524288<br>                                                                                             |[0x800002ae]:c.sub a0, a1<br> [0x800002b0]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x08100001|- rs2_val == -134217729<br> - rs1_val == 1048576<br>                                                                |[0x800002c0]:c.sub a0, a1<br> [0x800002c2]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x001FFFF0|- rs2_val == 16<br> - rs1_val == 2097152<br>                                                                        |[0x800002ce]:c.sub a0, a1<br> [0x800002d0]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00400008|- rs1_val == 4194304<br>                                                                                            |[0x800002dc]:c.sub a0, a1<br> [0x800002de]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0x007FFFFA|- rs1_val == 8388608<br>                                                                                            |[0x800002ea]:c.sub a0, a1<br> [0x800002ec]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x01010001|- rs1_val == 16777216<br>                                                                                           |[0x800002fc]:c.sub a0, a1<br> [0x800002fe]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x02000002|- rs2_val == -2<br> - rs1_val == 33554432<br>                                                                       |[0x8000030a]:c.sub a0, a1<br> [0x8000030c]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x04000007|- rs1_val == 67108864<br>                                                                                           |[0x80000318]:c.sub a0, a1<br> [0x8000031a]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x08008001|- rs2_val == -32769<br> - rs1_val == 134217728<br>                                                                  |[0x8000032a]:c.sub a0, a1<br> [0x8000032c]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x10020001|- rs2_val == -131073<br> - rs1_val == 268435456<br>                                                                 |[0x8000033c]:c.sub a0, a1<br> [0x8000033e]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                         |[0x8000034a]:c.sub a0, a1<br> [0x8000034c]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0xFFDFFFFE|- rs2_val == 2097152<br> - rs1_val == -2<br>                                                                        |[0x80000358]:c.sub a0, a1<br> [0x8000035a]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0x000007FE|- rs1_val == -3<br>                                                                                                 |[0x8000036a]:c.sub a0, a1<br> [0x8000036c]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0xBFFFFFFC|- rs1_val == -5<br>                                                                                                 |[0x8000037c]:c.sub a0, a1<br> [0x8000037e]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFFFFFB7|- rs2_val == 64<br> - rs1_val == -9<br>                                                                             |[0x8000038a]:c.sub a0, a1<br> [0x8000038c]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0x0007FFF0|- rs1_val == -17<br>                                                                                                |[0x8000039c]:c.sub a0, a1<br> [0x8000039e]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0x00000040|- rs1_val == -65<br>                                                                                                |[0x800003aa]:c.sub a0, a1<br> [0x800003ac]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFFFFFD7F|- rs2_val == 512<br> - rs1_val == -129<br>                                                                          |[0x800003b8]:c.sub a0, a1<br> [0x800003ba]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFFFFFDFF|- rs2_val == 256<br> - rs1_val == -257<br>                                                                          |[0x800003c6]:c.sub a0, a1<br> [0x800003c8]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFFFFFBFF|- rs1_val == -513<br>                                                                                               |[0x800003d4]:c.sub a0, a1<br> [0x800003d6]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0x00400005|- rs2_val == -4194305<br>                                                                                           |[0x800003e6]:c.sub a0, a1<br> [0x800003e8]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0x00800004|- rs2_val == -8388609<br>                                                                                           |[0x800003f8]:c.sub a0, a1<br> [0x800003fa]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0x01000004|- rs2_val == -16777217<br>                                                                                          |[0x8000040a]:c.sub a0, a1<br> [0x8000040c]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0x02000101|- rs2_val == -33554433<br>                                                                                          |[0x8000041c]:c.sub a0, a1<br> [0x8000041e]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0x04020001|- rs2_val == -67108865<br>                                                                                          |[0x8000042e]:c.sub a0, a1<br> [0x80000430]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0x0FFF8000|- rs2_val == -268435457<br> - rs1_val == -32769<br>                                                                 |[0x80000444]:c.sub a0, a1<br> [0x80000446]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0x40020001|- rs2_val == -1073741825<br>                                                                                        |[0x80000456]:c.sub a0, a1<br> [0x80000458]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0x2AAAAAAB|- rs2_val == 1431655765<br>                                                                                         |[0x80000468]:c.sub a0, a1<br> [0x8000046a]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0x55555596|- rs2_val == -1431655766<br>                                                                                        |[0x8000047a]:c.sub a0, a1<br> [0x8000047c]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0xAAAAA6AA|- rs1_val == -1025<br>                                                                                              |[0x8000048c]:c.sub a0, a1<br> [0x8000048e]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0xFFFFF807|- rs1_val == -2049<br>                                                                                              |[0x8000049e]:c.sub a0, a1<br> [0x800004a0]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x003FF000|- rs1_val == -4097<br>                                                                                              |[0x800004b4]:c.sub a0, a1<br> [0x800004b6]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0xFFFFE002|- rs2_val == -3<br> - rs1_val == -8193<br>                                                                          |[0x800004c6]:c.sub a0, a1<br> [0x800004c8]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0x0001C000|- rs1_val == -16385<br>                                                                                             |[0x800004dc]:c.sub a0, a1<br> [0x800004de]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0x000F0000|- rs2_val == -1048577<br> - rs1_val == -65537<br>                                                                   |[0x800004f2]:c.sub a0, a1<br> [0x800004f4]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xFFFE0200|- rs2_val == -513<br> - rs1_val == -131073<br>                                                                      |[0x80000504]:c.sub a0, a1<br> [0x80000506]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0xFFFBFFF7|- rs2_val == 8<br> - rs1_val == -262145<br>                                                                         |[0x80000516]:c.sub a0, a1<br> [0x80000518]:sw a0, 252(ra)<br> |
|  65|[0x80003304]<br>0xFF77FFFF|- rs1_val == -524289<br>                                                                                            |[0x80000528]:c.sub a0, a1<br> [0x8000052a]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0xFFEFFFFA|- rs1_val == -1048577<br>                                                                                           |[0x8000053a]:c.sub a0, a1<br> [0x8000053c]:sw a0, 260(ra)<br> |
|  67|[0x8000330c]<br>0xFFE10000|- rs1_val == -2097153<br>                                                                                           |[0x80000550]:c.sub a0, a1<br> [0x80000552]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0xFFBFFFF6|- rs1_val == -4194305<br>                                                                                           |[0x80000562]:c.sub a0, a1<br> [0x80000564]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0xFF810000|- rs1_val == -8388609<br>                                                                                           |[0x80000578]:c.sub a0, a1<br> [0x8000057a]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0xFF004000|- rs2_val == -16385<br> - rs1_val == -16777217<br>                                                                  |[0x8000058e]:c.sub a0, a1<br> [0x80000590]:sw a0, 276(ra)<br> |
|  71|[0x8000331c]<br>0xFDFFFFFC|- rs1_val == -33554433<br>                                                                                          |[0x800005a0]:c.sub a0, a1<br> [0x800005a2]:sw a0, 280(ra)<br> |
|  72|[0x80003320]<br>0xFC080000|- rs1_val == -67108865<br>                                                                                          |[0x800005b6]:c.sub a0, a1<br> [0x800005b8]:sw a0, 284(ra)<br> |
|  73|[0x80003324]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                         |[0x800005c8]:c.sub a0, a1<br> [0x800005ca]:sw a0, 288(ra)<br> |
|  74|[0x80003328]<br>0xF0000010|- rs1_val == -268435457<br>                                                                                         |[0x800005da]:c.sub a0, a1<br> [0x800005dc]:sw a0, 292(ra)<br> |
|  75|[0x8000332c]<br>0xE4000000|- rs1_val == -536870913<br>                                                                                         |[0x800005f0]:c.sub a0, a1<br> [0x800005f2]:sw a0, 296(ra)<br> |
|  76|[0x80003330]<br>0xBFEFFFFF|- rs2_val == 1048576<br> - rs1_val == -1073741825<br>                                                               |[0x80000602]:c.sub a0, a1<br> [0x80000604]:sw a0, 300(ra)<br> |
|  77|[0x80003334]<br>0x55555656|- rs2_val == -257<br> - rs1_val == 1431655765<br>                                                                   |[0x80000614]:c.sub a0, a1<br> [0x80000616]:sw a0, 304(ra)<br> |
|  78|[0x80003338]<br>0xAAAA9AAA|- rs1_val == -1431655766<br>                                                                                        |[0x80000626]:c.sub a0, a1<br> [0x80000628]:sw a0, 308(ra)<br> |
|  79|[0x8000333c]<br>0xFFFFFFF9|- rs2_val == 2<br>                                                                                                  |[0x80000634]:c.sub a0, a1<br> [0x80000636]:sw a0, 312(ra)<br> |
|  80|[0x80003340]<br>0xFFFBFFFB|- rs2_val == 4<br>                                                                                                  |[0x80000646]:c.sub a0, a1<br> [0x80000648]:sw a0, 316(ra)<br> |
|  81|[0x80003344]<br>0xFFFFFFDE|- rs2_val == 32<br>                                                                                                 |[0x80000654]:c.sub a0, a1<br> [0x80000656]:sw a0, 320(ra)<br> |
|  82|[0x80003348]<br>0xFFFFEBFF|- rs2_val == 1024<br>                                                                                               |[0x80000666]:c.sub a0, a1<br> [0x80000668]:sw a0, 324(ra)<br> |
|  83|[0x8000334c]<br>0x55554D55|- rs2_val == 2048<br>                                                                                               |[0x8000067c]:c.sub a0, a1<br> [0x8000067e]:sw a0, 328(ra)<br> |
|  84|[0x80003350]<br>0xFFFFDFFB|- rs2_val == 8192<br>                                                                                               |[0x8000068a]:c.sub a0, a1<br> [0x8000068c]:sw a0, 332(ra)<br> |
|  85|[0x80003354]<br>0xEFFFBFFF|- rs2_val == 16384<br>                                                                                              |[0x8000069c]:c.sub a0, a1<br> [0x8000069e]:sw a0, 336(ra)<br> |
|  86|[0x80003358]<br>0x003E0000|- rs2_val == 131072<br>                                                                                             |[0x800006aa]:c.sub a0, a1<br> [0x800006ac]:sw a0, 340(ra)<br> |
|  87|[0x8000335c]<br>0xFFFC0001|- rs2_val == 262144<br>                                                                                             |[0x800006b8]:c.sub a0, a1<br> [0x800006ba]:sw a0, 344(ra)<br> |
|  88|[0x80003360]<br>0xFEBFFFFF|- rs2_val == 4194304<br>                                                                                            |[0x800006ca]:c.sub a0, a1<br> [0x800006cc]:sw a0, 348(ra)<br> |
|  89|[0x80003364]<br>0xFF100000|- rs2_val == 16777216<br>                                                                                           |[0x800006d8]:c.sub a0, a1<br> [0x800006da]:sw a0, 352(ra)<br> |
|  90|[0x80003368]<br>0xFDFFFFFA|- rs2_val == 33554432<br>                                                                                           |[0x800006e6]:c.sub a0, a1<br> [0x800006e8]:sw a0, 356(ra)<br> |
|  91|[0x8000336c]<br>0xF8000000|- rs2_val == 134217728<br>                                                                                          |[0x800006f4]:c.sub a0, a1<br> [0x800006f6]:sw a0, 360(ra)<br> |
|  92|[0x80003370]<br>0xF0000006|- rs2_val == 268435456<br>                                                                                          |[0x80000702]:c.sub a0, a1<br> [0x80000704]:sw a0, 364(ra)<br> |
|  93|[0x80003374]<br>0xF0000000|- rs2_val == 536870912<br>                                                                                          |[0x80000710]:c.sub a0, a1<br> [0x80000712]:sw a0, 368(ra)<br> |
|  94|[0x80003378]<br>0xF0000004|- rs2_val == -5<br>                                                                                                 |[0x80000722]:c.sub a0, a1<br> [0x80000724]:sw a0, 372(ra)<br> |
|  95|[0x8000337c]<br>0x00020009|- rs2_val == -9<br>                                                                                                 |[0x80000730]:c.sub a0, a1<br> [0x80000732]:sw a0, 376(ra)<br> |
|  96|[0x80003380]<br>0x00000047|- rs2_val == -65<br>                                                                                                |[0x8000073e]:c.sub a0, a1<br> [0x80000740]:sw a0, 380(ra)<br> |
|  97|[0x80003384]<br>0x00010021|- rs2_val == -33<br>                                                                                                |[0x8000074c]:c.sub a0, a1<br> [0x8000074e]:sw a0, 384(ra)<br> |
|  98|[0x80003388]<br>0x00001101|- rs2_val == -4097<br>                                                                                              |[0x8000075e]:c.sub a0, a1<br> [0x80000760]:sw a0, 388(ra)<br> |
|  99|[0x8000338c]<br>0x04200001|- rs2_val == -2097153<br>                                                                                           |[0x80000770]:c.sub a0, a1<br> [0x80000772]:sw a0, 392(ra)<br> |
| 100|[0x80003390]<br>0xFFFC0000|- rs2_val == -262145<br>                                                                                            |[0x80000786]:c.sub a0, a1<br> [0x80000788]:sw a0, 396(ra)<br> |
| 101|[0x80003394]<br>0xFFF80000|- rs2_val == 524288<br>                                                                                             |[0x80000794]:c.sub a0, a1<br> [0x80000796]:sw a0, 400(ra)<br> |
| 102|[0x80003398]<br>0x00002009|- rs2_val == -8193<br>                                                                                              |[0x800007a6]:c.sub a0, a1<br> [0x800007a8]:sw a0, 404(ra)<br> |
