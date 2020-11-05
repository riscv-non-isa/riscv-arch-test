
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000790')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 99      |
| STAT1                     | 99      |
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

|s.no|        signature         |                                                          coverpoints                                                           |                             code                             |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000801|- opcode : c.xor<br> - rs1 : x8<br> - rs2 : x10<br> - rs1 != rs2<br> - rs2_val == 1<br> - rs2_val > 0<br> - rs1_val == 2048<br> |[0x8000010c]:c.xor s0, a0<br> [0x8000010e]:sw fp, 0(ra)<br>   |
|   2|[0x80003214]<br>0x00000000|- rs1 : x13<br> - rs2 : x13<br> - rs1 == rs2<br> - rs2_val == 65536<br> - rs1_val == 65536<br>                                  |[0x8000011a]:c.xor a3, a3<br> [0x8000011c]:sw a3, 4(ra)<br>   |
|   3|[0x80003218]<br>0xA0000000|- rs1 : x11<br> - rs2 : x15<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 536870912<br> - rs1_val == -2147483648<br>         |[0x80000128]:c.xor a1, a5<br> [0x8000012a]:sw a1, 8(ra)<br>   |
|   4|[0x8000321c]<br>0xFFBFFFFF|- rs1 : x12<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val < 0<br> - rs2_val == -4194305<br>                                   |[0x8000013a]:c.xor a2, s0<br> [0x8000013c]:sw a2, 12(ra)<br>  |
|   5|[0x80003220]<br>0x7FFFFFF8|- rs1 : x9<br> - rs2 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                     |[0x8000014c]:c.xor s1, a4<br> [0x8000014e]:sw s1, 16(ra)<br>  |
|   6|[0x80003224]<br>0xFFFFFFBE|- rs1 : x15<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == -65<br>                                                          |[0x8000015a]:c.xor a5, s1<br> [0x8000015c]:sw a5, 20(ra)<br>  |
|   7|[0x80003228]<br>0xFFFFFFF7|- rs1 : x10<br> - rs2 : x11<br> - rs2_val == 0<br> - rs1_val == -9<br>                                                          |[0x80000168]:c.xor a0, a1<br> [0x8000016a]:sw a0, 24(ra)<br>  |
|   8|[0x8000322c]<br>0x80000009|- rs1 : x14<br> - rs2 : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                    |[0x8000017a]:c.xor a4, a2<br> [0x8000017c]:sw a4, 28(ra)<br>  |
|   9|[0x80003230]<br>0xFFF7FFFD|- rs2_val == -524289<br> - rs1_val == 2<br>                                                                                     |[0x8000018c]:c.xor a0, a1<br> [0x8000018e]:sw a0, 32(ra)<br>  |
|  10|[0x80003234]<br>0x00010004|- rs1_val == 4<br>                                                                                                              |[0x8000019a]:c.xor a0, a1<br> [0x8000019c]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0xFFFFFFD7|- rs2_val == -33<br> - rs1_val == 8<br>                                                                                         |[0x800001a8]:c.xor a0, a1<br> [0x800001aa]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0xFFFFFEEF|- rs2_val == -257<br> - rs1_val == 16<br>                                                                                       |[0x800001b6]:c.xor a0, a1<br> [0x800001b8]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0x00000030|- rs2_val == 16<br> - rs1_val == 32<br>                                                                                         |[0x800001c4]:c.xor a0, a1<br> [0x800001c6]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0x08000040|- rs2_val == 134217728<br> - rs1_val == 64<br>                                                                                  |[0x800001d2]:c.xor a0, a1<br> [0x800001d4]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0xFFEFFF7F|- rs2_val == -1048577<br> - rs1_val == 128<br>                                                                                  |[0x800001e4]:c.xor a0, a1<br> [0x800001e6]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0xFFFFF6FF|- rs2_val == -2049<br> - rs1_val == 256<br>                                                                                     |[0x800001f6]:c.xor a0, a1<br> [0x800001f8]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x00000210|- rs1_val == 512<br>                                                                                                            |[0x80000204]:c.xor a0, a1<br> [0x80000206]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0x7FFFFBFF|- rs1_val == 1024<br>                                                                                                           |[0x80000216]:c.xor a0, a1<br> [0x80000218]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0xFFFFEFFA|- rs1_val == 4096<br>                                                                                                           |[0x80000224]:c.xor a0, a1<br> [0x80000226]:sw a0, 72(ra)<br>  |
|  20|[0x8000325c]<br>0x0000A000|- rs2_val == 32768<br> - rs1_val == 8192<br>                                                                                    |[0x80000232]:c.xor a0, a1<br> [0x80000234]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x00004005|- rs1_val == 16384<br>                                                                                                          |[0x80000240]:c.xor a0, a1<br> [0x80000242]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0xFFFF7FF9|- rs1_val == 32768<br>                                                                                                          |[0x8000024e]:c.xor a0, a1<br> [0x80000250]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0x20020000|- rs1_val == 131072<br>                                                                                                         |[0x8000025c]:c.xor a0, a1<br> [0x8000025e]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0xFFFBFFEF|- rs2_val == -17<br> - rs1_val == 262144<br>                                                                                    |[0x8000026a]:c.xor a0, a1<br> [0x8000026c]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x04080000|- rs2_val == 67108864<br> - rs1_val == 524288<br>                                                                               |[0x80000278]:c.xor a0, a1<br> [0x8000027a]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0xFF6FFFFF|- rs2_val == -8388609<br> - rs1_val == 1048576<br>                                                                              |[0x8000028a]:c.xor a0, a1<br> [0x8000028c]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0x00280000|- rs2_val == 524288<br> - rs1_val == 2097152<br>                                                                                |[0x80000298]:c.xor a0, a1<br> [0x8000029a]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0x00600000|- rs2_val == 2097152<br> - rs1_val == 4194304<br>                                                                               |[0x800002a6]:c.xor a0, a1<br> [0x800002a8]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0x00800005|- rs1_val == 8388608<br>                                                                                                        |[0x800002b4]:c.xor a0, a1<br> [0x800002b6]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0x01000020|- rs2_val == 32<br> - rs1_val == 16777216<br>                                                                                   |[0x800002c2]:c.xor a0, a1<br> [0x800002c4]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0xFDF7FFFF|- rs1_val == 33554432<br>                                                                                                       |[0x800002d4]:c.xor a0, a1<br> [0x800002d6]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x04040000|- rs2_val == 262144<br> - rs1_val == 67108864<br>                                                                               |[0x800002e2]:c.xor a0, a1<br> [0x800002e4]:sw a0, 124(ra)<br> |
|  33|[0x80003290]<br>0xF7FFFFF7|- rs2_val == -9<br> - rs1_val == 134217728<br>                                                                                  |[0x800002f0]:c.xor a0, a1<br> [0x800002f2]:sw a0, 128(ra)<br> |
|  34|[0x80003294]<br>0x10000003|- rs1_val == 268435456<br>                                                                                                      |[0x800002fe]:c.xor a0, a1<br> [0x80000300]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x20000800|- rs2_val == 2048<br> - rs1_val == 536870912<br>                                                                                |[0x80000310]:c.xor a0, a1<br> [0x80000312]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0xC0000000|- rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 1073741824<br>                                        |[0x8000031e]:c.xor a0, a1<br> [0x80000320]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0x55555554|- rs2_val == -1431655766<br> - rs1_val == -2<br>                                                                                |[0x80000330]:c.xor a0, a1<br> [0x80000332]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0x02000002|- rs2_val == -33554433<br> - rs1_val == -3<br>                                                                                  |[0x80000342]:c.xor a0, a1<br> [0x80000344]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0xFFFFBFFB|- rs2_val == 16384<br> - rs1_val == -5<br>                                                                                      |[0x80000350]:c.xor a0, a1<br> [0x80000352]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0x00000810|- rs1_val == -17<br>                                                                                                            |[0x80000362]:c.xor a0, a1<br> [0x80000364]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0x00400020|- rs1_val == -33<br>                                                                                                            |[0x80000374]:c.xor a0, a1<br> [0x80000376]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0x00000046|- rs1_val == -65<br>                                                                                                            |[0x80000382]:c.xor a0, a1<br> [0x80000384]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0xFFFFFF79|- rs1_val == -129<br>                                                                                                           |[0x80000390]:c.xor a0, a1<br> [0x80000392]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0x00000101|- rs2_val == -2<br> - rs1_val == -257<br>                                                                                       |[0x8000039e]:c.xor a0, a1<br> [0x800003a0]:sw a0, 172(ra)<br> |
|  45|[0x800032c0]<br>0xFEFFF7FF|- rs2_val == -16777217<br>                                                                                                      |[0x800003b4]:c.xor a0, a1<br> [0x800003b6]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0x04008000|- rs2_val == -67108865<br> - rs1_val == -32769<br>                                                                              |[0x800003ca]:c.xor a0, a1<br> [0x800003cc]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0x08000004|- rs2_val == -134217729<br>                                                                                                     |[0x800003dc]:c.xor a0, a1<br> [0x800003de]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0xEFFEFFFF|- rs2_val == -268435457<br>                                                                                                     |[0x800003ee]:c.xor a0, a1<br> [0x800003f0]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0xDFFFFF7F|- rs2_val == -536870913<br>                                                                                                     |[0x80000400]:c.xor a0, a1<br> [0x80000402]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0x3FFFFFFF|- rs2_val == -1073741825<br>                                                                                                    |[0x80000412]:c.xor a0, a1<br> [0x80000414]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0x55555553|- rs2_val == 1431655765<br>                                                                                                     |[0x80000424]:c.xor a0, a1<br> [0x80000426]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0x00000205|- rs1_val == -513<br>                                                                                                           |[0x80000432]:c.xor a0, a1<br> [0x80000434]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0x00001400|- rs2_val == -4097<br> - rs1_val == -1025<br>                                                                                   |[0x80000444]:c.xor a0, a1<br> [0x80000446]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0x00000801|- rs1_val == -2049<br>                                                                                                          |[0x80000456]:c.xor a0, a1<br> [0x80000458]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0xFFBFEFFF|- rs2_val == 4194304<br> - rs1_val == -4097<br>                                                                                 |[0x80000468]:c.xor a0, a1<br> [0x8000046a]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0x80002000|- rs1_val == -8193<br>                                                                                                          |[0x8000047e]:c.xor a0, a1<br> [0x80000480]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0x00004020|- rs1_val == -16385<br>                                                                                                         |[0x80000490]:c.xor a0, a1<br> [0x80000492]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                         |[0x800004a2]:c.xor a0, a1<br> [0x800004a4]:sw a0, 228(ra)<br> |
|  59|[0x800032f8]<br>0xFFFDFEFF|- rs2_val == 256<br> - rs1_val == -131073<br>                                                                                   |[0x800004b4]:c.xor a0, a1<br> [0x800004b6]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0x55515555|- rs1_val == -262145<br>                                                                                                        |[0x800004ca]:c.xor a0, a1<br> [0x800004cc]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0x00080040|- rs1_val == -524289<br>                                                                                                        |[0x800004dc]:c.xor a0, a1<br> [0x800004de]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0xC0100000|- rs1_val == -1048577<br>                                                                                                       |[0x800004f2]:c.xor a0, a1<br> [0x800004f4]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0x00201000|- rs1_val == -2097153<br>                                                                                                       |[0x80000508]:c.xor a0, a1<br> [0x8000050a]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0x00400007|- rs1_val == -4194305<br>                                                                                                       |[0x8000051a]:c.xor a0, a1<br> [0x8000051c]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0x00810000|- rs2_val == -65537<br> - rs1_val == -8388609<br>                                                                               |[0x80000530]:c.xor a0, a1<br> [0x80000532]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0x81000000|- rs1_val == -16777217<br>                                                                                                      |[0x80000546]:c.xor a0, a1<br> [0x80000548]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0x03000000|- rs1_val == -33554433<br>                                                                                                      |[0x8000055c]:c.xor a0, a1<br> [0x8000055e]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                      |[0x8000056e]:c.xor a0, a1<br> [0x80000570]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0x08040000|- rs2_val == -262145<br> - rs1_val == -134217729<br>                                                                            |[0x80000584]:c.xor a0, a1<br> [0x80000586]:sw a0, 272(ra)<br> |
|  70|[0x80003324]<br>0xEFFFF7FF|- rs1_val == -268435457<br>                                                                                                     |[0x8000059a]:c.xor a0, a1<br> [0x8000059c]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0x21000000|- rs1_val == -536870913<br>                                                                                                     |[0x800005b0]:c.xor a0, a1<br> [0x800005b2]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0xBDFFFFFF|- rs2_val == 33554432<br> - rs1_val == -1073741825<br>                                                                          |[0x800005c2]:c.xor a0, a1<br> [0x800005c4]:sw a0, 284(ra)<br> |
|  73|[0x80003330]<br>0xEAAAAAAA|- rs1_val == 1431655765<br>                                                                                                     |[0x800005d8]:c.xor a0, a1<br> [0x800005da]:sw a0, 288(ra)<br> |
|  74|[0x80003334]<br>0xAA8AAAAA|- rs1_val == -1431655766<br>                                                                                                    |[0x800005ea]:c.xor a0, a1<br> [0x800005ec]:sw a0, 292(ra)<br> |
|  75|[0x80003338]<br>0x00000004|- rs2_val == 2<br>                                                                                                              |[0x800005f8]:c.xor a0, a1<br> [0x800005fa]:sw a0, 296(ra)<br> |
|  76|[0x8000333c]<br>0xFBFFFFFB|- rs2_val == 4<br>                                                                                                              |[0x8000060a]:c.xor a0, a1<br> [0x8000060c]:sw a0, 300(ra)<br> |
|  77|[0x80003340]<br>0xFFFDFFF7|- rs2_val == 8<br>                                                                                                              |[0x8000061c]:c.xor a0, a1<br> [0x8000061e]:sw a0, 304(ra)<br> |
|  78|[0x80003344]<br>0xFFFFFFB9|- rs2_val == 64<br>                                                                                                             |[0x8000062a]:c.xor a0, a1<br> [0x8000062c]:sw a0, 308(ra)<br> |
|  79|[0x80003348]<br>0x00040080|- rs2_val == 128<br>                                                                                                            |[0x80000638]:c.xor a0, a1<br> [0x8000063a]:sw a0, 312(ra)<br> |
|  80|[0x8000334c]<br>0x00020200|- rs2_val == 512<br>                                                                                                            |[0x80000646]:c.xor a0, a1<br> [0x80000648]:sw a0, 316(ra)<br> |
|  81|[0x80003350]<br>0xBFFFFBFF|- rs2_val == 1024<br>                                                                                                           |[0x80000658]:c.xor a0, a1<br> [0x8000065a]:sw a0, 320(ra)<br> |
|  82|[0x80003354]<br>0xFFFFEFBF|- rs2_val == 4096<br>                                                                                                           |[0x80000666]:c.xor a0, a1<br> [0x80000668]:sw a0, 324(ra)<br> |
|  83|[0x80003358]<br>0xFFFEDFFF|- rs2_val == 8192<br>                                                                                                           |[0x80000678]:c.xor a0, a1<br> [0x8000067a]:sw a0, 328(ra)<br> |
|  84|[0x8000335c]<br>0x00020010|- rs2_val == 131072<br>                                                                                                         |[0x80000686]:c.xor a0, a1<br> [0x80000688]:sw a0, 332(ra)<br> |
|  85|[0x80003360]<br>0x02800000|- rs2_val == 8388608<br>                                                                                                        |[0x80000694]:c.xor a0, a1<br> [0x80000696]:sw a0, 336(ra)<br> |
|  86|[0x80003364]<br>0x01000006|- rs2_val == 16777216<br>                                                                                                       |[0x800006a2]:c.xor a0, a1<br> [0x800006a4]:sw a0, 340(ra)<br> |
|  87|[0x80003368]<br>0xCFFFFFFF|- rs2_val == 268435456<br>                                                                                                      |[0x800006b4]:c.xor a0, a1<br> [0x800006b6]:sw a0, 344(ra)<br> |
|  88|[0x8000336c]<br>0xBFFF7FFF|- rs2_val == 1073741824<br>                                                                                                     |[0x800006c6]:c.xor a0, a1<br> [0x800006c8]:sw a0, 348(ra)<br> |
|  89|[0x80003370]<br>0x55555557|- rs2_val == -3<br>                                                                                                             |[0x800006d8]:c.xor a0, a1<br> [0x800006da]:sw a0, 352(ra)<br> |
|  90|[0x80003374]<br>0xFFFEFFFB|- rs2_val == -5<br>                                                                                                             |[0x800006e6]:c.xor a0, a1<br> [0x800006e8]:sw a0, 356(ra)<br> |
|  91|[0x80003378]<br>0xFDFFFF7F|- rs2_val == -129<br>                                                                                                           |[0x800006f4]:c.xor a0, a1<br> [0x800006f6]:sw a0, 360(ra)<br> |
|  92|[0x8000337c]<br>0xFFFEFDFF|- rs2_val == -513<br>                                                                                                           |[0x80000702]:c.xor a0, a1<br> [0x80000704]:sw a0, 364(ra)<br> |
|  93|[0x80003380]<br>0xFBFFFBFF|- rs2_val == -1025<br>                                                                                                          |[0x80000710]:c.xor a0, a1<br> [0x80000712]:sw a0, 368(ra)<br> |
|  94|[0x80003384]<br>0x00002400|- rs2_val == -8193<br>                                                                                                          |[0x80000722]:c.xor a0, a1<br> [0x80000724]:sw a0, 372(ra)<br> |
|  95|[0x80003388]<br>0xFFFFBFFC|- rs2_val == -16385<br>                                                                                                         |[0x80000734]:c.xor a0, a1<br> [0x80000736]:sw a0, 376(ra)<br> |
|  96|[0x8000338c]<br>0xFFFF7FF9|- rs2_val == -32769<br>                                                                                                         |[0x80000746]:c.xor a0, a1<br> [0x80000748]:sw a0, 380(ra)<br> |
|  97|[0x80003390]<br>0x00020010|- rs2_val == -131073<br>                                                                                                        |[0x80000758]:c.xor a0, a1<br> [0x8000075a]:sw a0, 384(ra)<br> |
|  98|[0x80003394]<br>0xFF6FFFFF|- rs2_val == 1048576<br>                                                                                                        |[0x8000076a]:c.xor a0, a1<br> [0x8000076c]:sw a0, 388(ra)<br> |
|  99|[0x80003398]<br>0x00300000|- rs2_val == -2097153<br>                                                                                                       |[0x80000780]:c.xor a0, a1<br> [0x80000782]:sw a0, 392(ra)<br> |
