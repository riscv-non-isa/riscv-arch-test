
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000740')]      |
| SIG_REGION                | [('0x80003204', '0x8000338c', '98 words')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 95      |
| STAT1                     | 95      |
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

|s.no|        signature         |                                                         coverpoints                                                          |                             code                             |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFF4|- opcode : c.sub<br> - rs1 : x13<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 16<br> - rs1_val == 4<br> |[0x80000108]:c.sub a3, s0<br> [0x8000010a]:sw a3, 0(ra)<br>   |
|   2|[0x80003214]<br>0x00000000|- rs1 : x12<br> - rs2 : x12<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -65537<br> - rs1_val == -65537<br>            |[0x8000011a]:c.sub a2, a2<br> [0x8000011c]:sw a2, 4(ra)<br>   |
|   3|[0x80003218]<br>0x7FC00000|- rs1 : x10<br> - rs2 : x14<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 4194304<br> - rs1_val == -2147483648<br>         |[0x80000128]:c.sub a0, a4<br> [0x8000012a]:sw a0, 8(ra)<br>   |
|   4|[0x8000321c]<br>0x00000021|- rs1 : x15<br> - rs2 : x11<br> - rs1_val == 0<br> - rs2_val == -33<br>                                                       |[0x80000136]:c.sub a5, a1<br> [0x80000138]:sw a5, 12(ra)<br>  |
|   5|[0x80003220]<br>0x7FFFFFEF|- rs1 : x11<br> - rs2 : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                  |[0x80000148]:c.sub a1, a0<br> [0x8000014a]:sw a1, 16(ra)<br>  |
|   6|[0x80003224]<br>0x00000009|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == 1<br>                                                                             |[0x80000156]:c.sub s1, a3<br> [0x80000158]:sw s1, 20(ra)<br>  |
|   7|[0x80003228]<br>0x80010000|- rs1 : x8<br> - rs2 : x15<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 65536<br>            |[0x80000164]:c.sub s0, a5<br> [0x80000166]:sw fp, 24(ra)<br>  |
|   8|[0x8000322c]<br>0x00000006|- rs1 : x14<br> - rs2 : x9<br> - rs2_val == 0<br>                                                                             |[0x80000172]:c.sub a4, s1<br> [0x80000174]:sw a4, 28(ra)<br>  |
|   9|[0x80003230]<br>0x7FFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -2<br>                                              |[0x80000184]:c.sub a0, a1<br> [0x80000186]:sw a0, 32(ra)<br>  |
|  10|[0x80003234]<br>0xAAAAAAA9|- rs2_val == 1<br> - rs1_val == -1431655766<br>                                                                               |[0x80000196]:c.sub a0, a1<br> [0x80000198]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0x00000007|- rs2_val == -5<br> - rs1_val == 2<br>                                                                                        |[0x800001a4]:c.sub a0, a1<br> [0x800001a6]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0xFFF00008|- rs2_val == 1048576<br> - rs1_val == 8<br>                                                                                   |[0x800001b2]:c.sub a0, a1<br> [0x800001b4]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0xAAAAAABB|- rs2_val == 1431655765<br> - rs1_val == 16<br>                                                                               |[0x800001c4]:c.sub a0, a1<br> [0x800001c6]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0x00000121|- rs2_val == -257<br> - rs1_val == 32<br>                                                                                     |[0x800001d2]:c.sub a0, a1<br> [0x800001d4]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0x00800041|- rs2_val == -8388609<br> - rs1_val == 64<br>                                                                                 |[0x800001e4]:c.sub a0, a1<br> [0x800001e6]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x00000081|- rs1_val == 128<br>                                                                                                          |[0x800001f2]:c.sub a0, a1<br> [0x800001f4]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x00002101|- rs2_val == -8193<br> - rs1_val == 256<br>                                                                                   |[0x80000204]:c.sub a0, a1<br> [0x80000206]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0x000001FC|- rs2_val == 4<br> - rs1_val == 512<br>                                                                                       |[0x80000212]:c.sub a0, a1<br> [0x80000214]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0x000003E0|- rs2_val == 32<br> - rs1_val == 1024<br>                                                                                     |[0x80000220]:c.sub a0, a1<br> [0x80000222]:sw a0, 72(ra)<br>  |
|  20|[0x8000325c]<br>0x00100801|- rs2_val == -1048577<br> - rs1_val == 2048<br>                                                                               |[0x80000236]:c.sub a0, a1<br> [0x80000238]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x00000FE0|- rs1_val == 4096<br>                                                                                                         |[0x80000244]:c.sub a0, a1<br> [0x80000246]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0x00002000|- rs1_val == 8192<br>                                                                                                         |[0x80000252]:c.sub a0, a1<br> [0x80000254]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0xFFE04000|- rs2_val == 2097152<br> - rs1_val == 16384<br>                                                                               |[0x80000260]:c.sub a0, a1<br> [0x80000262]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0x0000C001|- rs2_val == -16385<br> - rs1_val == 32768<br>                                                                                |[0x80000272]:c.sub a0, a1<br> [0x80000274]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x0001FFFC|- rs1_val == 131072<br>                                                                                                       |[0x80000280]:c.sub a0, a1<br> [0x80000282]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0x00042001|- rs1_val == 262144<br>                                                                                                       |[0x80000292]:c.sub a0, a1<br> [0x80000294]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0x80080001|- rs1_val == 524288<br>                                                                                                       |[0x800002a4]:c.sub a0, a1<br> [0x800002a6]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0x00110001|- rs1_val == 1048576<br>                                                                                                      |[0x800002b6]:c.sub a0, a1<br> [0x800002b8]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0x00200201|- rs2_val == -513<br> - rs1_val == 2097152<br>                                                                                |[0x800002c4]:c.sub a0, a1<br> [0x800002c6]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0x003FFF00|- rs2_val == 256<br> - rs1_val == 4194304<br>                                                                                 |[0x800002d2]:c.sub a0, a1<br> [0x800002d4]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0x00800002|- rs2_val == -2<br> - rs1_val == 8388608<br>                                                                                  |[0x800002e0]:c.sub a0, a1<br> [0x800002e2]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x00FFFFFE|- rs2_val == 2<br> - rs1_val == 16777216<br>                                                                                  |[0x800002ee]:c.sub a0, a1<br> [0x800002f0]:sw a0, 124(ra)<br> |
|  33|[0x80003290]<br>0x02000002|- rs1_val == 33554432<br>                                                                                                     |[0x800002fc]:c.sub a0, a1<br> [0x800002fe]:sw a0, 128(ra)<br> |
|  34|[0x80003294]<br>0x04100001|- rs1_val == 67108864<br>                                                                                                     |[0x8000030e]:c.sub a0, a1<br> [0x80000310]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x08000011|- rs2_val == -17<br> - rs1_val == 134217728<br>                                                                               |[0x8000031c]:c.sub a0, a1<br> [0x8000031e]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0x10001001|- rs2_val == -4097<br> - rs1_val == 268435456<br>                                                                             |[0x8000032e]:c.sub a0, a1<br> [0x80000330]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0x20020001|- rs2_val == -131073<br> - rs1_val == 536870912<br>                                                                           |[0x80000340]:c.sub a0, a1<br> [0x80000342]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0x00000000|- rs2_val == 1073741824<br> - rs1_val == 1073741824<br>                                                                       |[0x8000034e]:c.sub a0, a1<br> [0x80000350]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0xFF7FFFFD|- rs2_val == 8388608<br> - rs1_val == -3<br>                                                                                  |[0x8000035c]:c.sub a0, a1<br> [0x8000035e]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0x00000005|- rs1_val == -5<br>                                                                                                           |[0x8000036a]:c.sub a0, a1<br> [0x8000036c]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0xFBFFFFF7|- rs2_val == 67108864<br> - rs1_val == -9<br>                                                                                 |[0x80000378]:c.sub a0, a1<br> [0x8000037a]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0x1FFFFFF0|- rs2_val == -536870913<br> - rs1_val == -17<br>                                                                              |[0x8000038a]:c.sub a0, a1<br> [0x8000038c]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0x00400101|- rs2_val == -4194305<br>                                                                                                     |[0x8000039c]:c.sub a0, a1<br> [0x8000039e]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0x01008001|- rs2_val == -16777217<br>                                                                                                    |[0x800003ae]:c.sub a0, a1<br> [0x800003b0]:sw a0, 172(ra)<br> |
|  45|[0x800032c0]<br>0x01F00000|- rs2_val == -33554433<br> - rs1_val == -1048577<br>                                                                          |[0x800003c4]:c.sub a0, a1<br> [0x800003c6]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0x24000001|- rs2_val == -67108865<br>                                                                                                    |[0x800003d6]:c.sub a0, a1<br> [0x800003d8]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0xC8000000|- rs2_val == -134217729<br> - rs1_val == -1073741825<br>                                                                      |[0x800003ec]:c.sub a0, a1<br> [0x800003ee]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0x0FFF0000|- rs2_val == -268435457<br>                                                                                                   |[0x80000402]:c.sub a0, a1<br> [0x80000404]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0x3FFC0000|- rs2_val == -1073741825<br> - rs1_val == -262145<br>                                                                         |[0x80000418]:c.sub a0, a1<br> [0x8000041a]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0x55455555|- rs2_val == -1431655766<br>                                                                                                  |[0x8000042e]:c.sub a0, a1<br> [0x80000430]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0xFFFFFFDE|- rs1_val == -33<br>                                                                                                          |[0x8000043c]:c.sub a0, a1<br> [0x8000043e]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0xFFFFDFBF|- rs2_val == 8192<br> - rs1_val == -65<br>                                                                                    |[0x8000044a]:c.sub a0, a1<br> [0x8000044c]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0xFFFFFF80|- rs1_val == -129<br>                                                                                                         |[0x80000458]:c.sub a0, a1<br> [0x8000045a]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0xFBFFFEFF|- rs1_val == -257<br>                                                                                                         |[0x80000466]:c.sub a0, a1<br> [0x80000468]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0x00000000|- rs1_val == -513<br>                                                                                                         |[0x80000474]:c.sub a0, a1<br> [0x80000476]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0x00000000|- rs2_val == -1025<br> - rs1_val == -1025<br>                                                                                 |[0x80000482]:c.sub a0, a1<br> [0x80000484]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0x000FF800|- rs1_val == -2049<br>                                                                                                        |[0x80000498]:c.sub a0, a1<br> [0x8000049a]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0x55554555|- rs1_val == -4097<br>                                                                                                        |[0x800004ae]:c.sub a0, a1<br> [0x800004b0]:sw a0, 228(ra)<br> |
|  59|[0x800032f8]<br>0xAAAA8AAA|- rs1_val == -8193<br>                                                                                                        |[0x800004c4]:c.sub a0, a1<br> [0x800004c6]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0xFFFFC002|- rs2_val == -3<br> - rs1_val == -16385<br>                                                                                   |[0x800004d6]:c.sub a0, a1<br> [0x800004d8]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0x7FFF7FFF|- rs1_val == -32769<br>                                                                                                       |[0x800004e8]:c.sub a0, a1<br> [0x800004ea]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0xFFF9FFFF|- rs2_val == 262144<br> - rs1_val == -131073<br>                                                                              |[0x800004fa]:c.sub a0, a1<br> [0x800004fc]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0xFFF7FFF6|- rs1_val == -524289<br>                                                                                                      |[0x8000050c]:c.sub a0, a1<br> [0x8000050e]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0xDFDFFFFF|- rs2_val == 536870912<br> - rs1_val == -2097153<br>                                                                          |[0x8000051e]:c.sub a0, a1<br> [0x80000520]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0xFFC00006|- rs1_val == -4194305<br>                                                                                                     |[0x80000530]:c.sub a0, a1<br> [0x80000532]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0xFF800006|- rs1_val == -8388609<br>                                                                                                     |[0x80000542]:c.sub a0, a1<br> [0x80000544]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0x07000000|- rs1_val == -16777217<br>                                                                                                    |[0x80000558]:c.sub a0, a1<br> [0x8000055a]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xFDFFFEFF|- rs1_val == -33554433<br>                                                                                                    |[0x8000056a]:c.sub a0, a1<br> [0x8000056c]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0xFBBFFFFF|- rs1_val == -67108865<br>                                                                                                    |[0x8000057c]:c.sub a0, a1<br> [0x8000057e]:sw a0, 272(ra)<br> |
|  70|[0x80003324]<br>0xF7FFF7FF|- rs2_val == 2048<br> - rs1_val == -134217729<br>                                                                             |[0x80000592]:c.sub a0, a1<br> [0x80000594]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0xF0000800|- rs2_val == -2049<br> - rs1_val == -268435457<br>                                                                            |[0x800005a8]:c.sub a0, a1<br> [0x800005aa]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0xDFFFFFEF|- rs1_val == -536870913<br>                                                                                                   |[0x800005ba]:c.sub a0, a1<br> [0x800005bc]:sw a0, 284(ra)<br> |
|  73|[0x80003330]<br>0x5555555D|- rs1_val == 1431655765<br>                                                                                                   |[0x800005cc]:c.sub a0, a1<br> [0x800005ce]:sw a0, 288(ra)<br> |
|  74|[0x80003334]<br>0xFFFFFFEF|- rs2_val == 8<br>                                                                                                            |[0x800005da]:c.sub a0, a1<br> [0x800005dc]:sw a0, 292(ra)<br> |
|  75|[0x80003338]<br>0xFFFEFFBF|- rs2_val == 64<br>                                                                                                           |[0x800005ec]:c.sub a0, a1<br> [0x800005ee]:sw a0, 296(ra)<br> |
|  76|[0x8000333c]<br>0x3FFFFF7F|- rs2_val == 128<br>                                                                                                          |[0x800005fe]:c.sub a0, a1<br> [0x80000600]:sw a0, 300(ra)<br> |
|  77|[0x80003340]<br>0xFFFFFE08|- rs2_val == 512<br>                                                                                                          |[0x8000060c]:c.sub a0, a1<br> [0x8000060e]:sw a0, 304(ra)<br> |
|  78|[0x80003344]<br>0xFFFFFAFF|- rs2_val == 1024<br>                                                                                                         |[0x8000061a]:c.sub a0, a1<br> [0x8000061c]:sw a0, 308(ra)<br> |
|  79|[0x80003348]<br>0xFFFFF008|- rs2_val == 4096<br>                                                                                                         |[0x80000628]:c.sub a0, a1<br> [0x8000062a]:sw a0, 312(ra)<br> |
|  80|[0x8000334c]<br>0x00008002|- rs2_val == -32769<br>                                                                                                       |[0x8000063a]:c.sub a0, a1<br> [0x8000063c]:sw a0, 316(ra)<br> |
|  81|[0x80003350]<br>0xFEFFFFF7|- rs2_val == 16777216<br>                                                                                                     |[0x80000648]:c.sub a0, a1<br> [0x8000064a]:sw a0, 320(ra)<br> |
|  82|[0x80003354]<br>0xFE000100|- rs2_val == 33554432<br>                                                                                                     |[0x80000656]:c.sub a0, a1<br> [0x80000658]:sw a0, 324(ra)<br> |
|  83|[0x80003358]<br>0xFA000000|- rs2_val == 134217728<br>                                                                                                    |[0x80000664]:c.sub a0, a1<br> [0x80000666]:sw a0, 328(ra)<br> |
|  84|[0x8000335c]<br>0xEDFFFFFF|- rs2_val == 268435456<br>                                                                                                    |[0x80000676]:c.sub a0, a1<br> [0x80000678]:sw a0, 332(ra)<br> |
|  85|[0x80003360]<br>0x0000003A|- rs2_val == -65<br>                                                                                                          |[0x80000684]:c.sub a0, a1<br> [0x80000686]:sw a0, 336(ra)<br> |
|  86|[0x80003364]<br>0xFFFF8080|- rs2_val == -129<br>                                                                                                         |[0x80000696]:c.sub a0, a1<br> [0x80000698]:sw a0, 340(ra)<br> |
|  87|[0x80003368]<br>0xFFF80009|- rs2_val == 524288<br>                                                                                                       |[0x800006a4]:c.sub a0, a1<br> [0x800006a6]:sw a0, 344(ra)<br> |
|  88|[0x8000336c]<br>0xFBFFBFFF|- rs2_val == 16384<br>                                                                                                        |[0x800006b6]:c.sub a0, a1<br> [0x800006b8]:sw a0, 348(ra)<br> |
|  89|[0x80003370]<br>0xFFFF7FFF|- rs2_val == 32768<br>                                                                                                        |[0x800006c4]:c.sub a0, a1<br> [0x800006c6]:sw a0, 352(ra)<br> |
|  90|[0x80003374]<br>0xFEFEFFFF|- rs2_val == 65536<br>                                                                                                        |[0x800006d6]:c.sub a0, a1<br> [0x800006d8]:sw a0, 356(ra)<br> |
|  91|[0x80003378]<br>0xFDFDFFFF|- rs2_val == 131072<br>                                                                                                       |[0x800006e8]:c.sub a0, a1<br> [0x800006ea]:sw a0, 360(ra)<br> |
|  92|[0x8000337c]<br>0x00038000|- rs2_val == -262145<br>                                                                                                      |[0x800006fe]:c.sub a0, a1<br> [0x80000700]:sw a0, 364(ra)<br> |
|  93|[0x80003380]<br>0x00080041|- rs2_val == -524289<br>                                                                                                      |[0x80000710]:c.sub a0, a1<br> [0x80000712]:sw a0, 368(ra)<br> |
|  94|[0x80003384]<br>0x00200005|- rs2_val == -2097153<br>                                                                                                     |[0x80000722]:c.sub a0, a1<br> [0x80000724]:sw a0, 372(ra)<br> |
|  95|[0x80003388]<br>0xFFFF0008|- rs2_val == -9<br>                                                                                                           |[0x80000734]:c.sub a0, a1<br> [0x80000736]:sw a0, 376(ra)<br> |
