
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
| SIG_REGION                | [('0x80003204', '0x8000337c', '94 words')]      |
| COV_LABELS                | cand      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cand-01.S/cand-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 94      |
| STAT1                     | 93      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d0]:c.and a0, a1
      [0x800006d2]:sw a0, 352(ra)
 -- Signature Address: 0x80003364 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : c.and
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs1_val == 0
      - rs2_val < 0
      - rs2_val == -16385






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

|s.no|        signature         |                                                              coverpoints                                                               |                             code                             |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFBFFF|- opcode : c.and<br> - rs1 : x14<br> - rs2 : x14<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -16385<br> - rs1_val == -16385<br> |[0x80000110]:c.and a4, a4<br> [0x80000112]:sw a4, 0(ra)<br>   |
|   2|[0x80003208]<br>0x80000000|- rs1 : x8<br> - rs2 : x12<br> - rs1 != rs2<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -262145<br> - rs1_val == -2147483648<br>   |[0x80000122]:c.and s0, a2<br> [0x80000124]:sw fp, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x13<br> - rs2 : x11<br> - rs1_val == 0<br> - rs2_val == -8388609<br>                                                            |[0x80000134]:c.and a3, a1<br> [0x80000136]:sw a3, 8(ra)<br>   |
|   4|[0x80003210]<br>0x7FFF7FFF|- rs1 : x9<br> - rs2 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -32769<br> - rs1_val == 2147483647<br>                      |[0x8000014a]:c.and s1, s0<br> [0x8000014c]:sw s1, 12(ra)<br>  |
|   5|[0x80003214]<br>0x00000001|- rs1 : x10<br> - rs2 : x13<br> - rs1_val == 1<br> - rs2_val == -513<br>                                                                |[0x80000158]:c.and a0, a3<br> [0x8000015a]:sw a0, 16(ra)<br>  |
|   6|[0x80003218]<br>0x80000000|- rs1 : x12<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2049<br>                     |[0x8000016a]:c.and a2, a0<br> [0x8000016c]:sw a2, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x15<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == 256<br>                                                                  |[0x80000178]:c.and a5, s1<br> [0x8000017a]:sw a5, 24(ra)<br>  |
|   8|[0x80003220]<br>0x00000007|- rs1 : x11<br> - rs2 : x15<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val > 0<br> - rs2_val == 2147483647<br>                          |[0x8000018a]:c.and a1, a5<br> [0x8000018c]:sw a1, 28(ra)<br>  |
|   9|[0x80003224]<br>0x00000001|- rs2_val == 1<br>                                                                                                                      |[0x80000198]:c.and a0, a1<br> [0x8000019a]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x00000000|- rs2_val == 512<br> - rs1_val == 2<br>                                                                                                 |[0x800001a6]:c.and a0, a1<br> [0x800001a8]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0x00000004|- rs1_val == 4<br>                                                                                                                      |[0x800001b8]:c.and a0, a1<br> [0x800001ba]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00000008|- rs2_val == -134217729<br> - rs1_val == 8<br>                                                                                          |[0x800001ca]:c.and a0, a1<br> [0x800001cc]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000010|- rs2_val == -1073741825<br> - rs1_val == 16<br>                                                                                        |[0x800001dc]:c.and a0, a1<br> [0x800001de]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0x00000020|- rs2_val == 32<br> - rs1_val == 32<br>                                                                                                 |[0x800001ea]:c.and a0, a1<br> [0x800001ec]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x00000040|- rs1_val == 64<br>                                                                                                                     |[0x800001f8]:c.and a0, a1<br> [0x800001fa]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000080|- rs2_val == -131073<br> - rs1_val == 128<br>                                                                                           |[0x8000020a]:c.and a0, a1<br> [0x8000020c]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000200|- rs1_val == 512<br>                                                                                                                    |[0x80000218]:c.and a0, a1<br> [0x8000021a]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000400|- rs1_val == 1024<br>                                                                                                                   |[0x8000022a]:c.and a0, a1<br> [0x8000022c]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x00000000|- rs2_val == 134217728<br> - rs1_val == 2048<br>                                                                                        |[0x8000023c]:c.and a0, a1<br> [0x8000023e]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00001000|- rs1_val == 4096<br>                                                                                                                   |[0x8000024e]:c.and a0, a1<br> [0x80000250]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00000000|- rs1_val == 8192<br>                                                                                                                   |[0x8000025c]:c.and a0, a1<br> [0x8000025e]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00000000|- rs2_val == 268435456<br> - rs1_val == 16384<br>                                                                                       |[0x8000026a]:c.and a0, a1<br> [0x8000026c]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00008000|- rs2_val == -67108865<br> - rs1_val == 32768<br>                                                                                       |[0x8000027c]:c.and a0, a1<br> [0x8000027e]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                  |[0x8000028a]:c.and a0, a1<br> [0x8000028c]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                 |[0x80000298]:c.and a0, a1<br> [0x8000029a]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00040000|- rs2_val == -65537<br> - rs1_val == 262144<br>                                                                                         |[0x800002aa]:c.and a0, a1<br> [0x800002ac]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0x00080000|- rs2_val == -536870913<br> - rs1_val == 524288<br>                                                                                     |[0x800002bc]:c.and a0, a1<br> [0x800002be]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0x00100000|- rs1_val == 1048576<br>                                                                                                                |[0x800002ca]:c.and a0, a1<br> [0x800002cc]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x00000000|- rs2_val == 256<br> - rs1_val == 2097152<br>                                                                                           |[0x800002d8]:c.and a0, a1<br> [0x800002da]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x00000000|- rs2_val == 131072<br> - rs1_val == 4194304<br>                                                                                        |[0x800002e6]:c.and a0, a1<br> [0x800002e8]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00000000|- rs2_val == 1431655765<br> - rs1_val == 8388608<br>                                                                                    |[0x800002f8]:c.and a0, a1<br> [0x800002fa]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0x00000000|- rs2_val == 16<br> - rs1_val == 16777216<br>                                                                                           |[0x80000306]:c.and a0, a1<br> [0x80000308]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x00000000|- rs2_val == 536870912<br> - rs1_val == 33554432<br>                                                                                    |[0x80000314]:c.and a0, a1<br> [0x80000316]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x04000000|- rs2_val == -4097<br> - rs1_val == 67108864<br>                                                                                        |[0x80000326]:c.and a0, a1<br> [0x80000328]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x00000000|- rs2_val == 64<br> - rs1_val == 134217728<br>                                                                                          |[0x80000334]:c.and a0, a1<br> [0x80000336]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x10000000|- rs2_val == -3<br> - rs1_val == 268435456<br>                                                                                          |[0x80000342]:c.and a0, a1<br> [0x80000344]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                              |[0x80000350]:c.and a0, a1<br> [0x80000352]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x40000000|- rs2_val == -65<br> - rs1_val == 1073741824<br>                                                                                        |[0x8000035e]:c.and a0, a1<br> [0x80000360]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0xFFFFFFF6|- rs2_val == -9<br> - rs1_val == -2<br>                                                                                                 |[0x8000036c]:c.and a0, a1<br> [0x8000036e]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0xFFFFFFF5|- rs1_val == -3<br>                                                                                                                     |[0x8000037a]:c.and a0, a1<br> [0x8000037c]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0x00008000|- rs2_val == 32768<br> - rs1_val == -5<br>                                                                                              |[0x80000388]:c.and a0, a1<br> [0x8000038a]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xDFFFFFF7|- rs1_val == -9<br>                                                                                                                     |[0x8000039a]:c.and a0, a1<br> [0x8000039c]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFFFF7FEF|- rs1_val == -17<br>                                                                                                                    |[0x800003ac]:c.and a0, a1<br> [0x800003ae]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0xFDFFFFDF|- rs2_val == -33554433<br> - rs1_val == -33<br>                                                                                         |[0x800003be]:c.and a0, a1<br> [0x800003c0]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0x00010000|- rs2_val == -4194305<br>                                                                                                               |[0x800003d0]:c.and a0, a1<br> [0x800003d2]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFEFF7FFF|- rs2_val == -16777217<br> - rs1_val == -32769<br>                                                                                      |[0x800003e6]:c.and a0, a1<br> [0x800003e8]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0x00000002|- rs2_val == -268435457<br>                                                                                                             |[0x800003f8]:c.and a0, a1<br> [0x800003fa]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xAAAAA2AA|- rs2_val == -1431655766<br>                                                                                                            |[0x8000040e]:c.and a0, a1<br> [0x80000410]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xFFFFFF9F|- rs2_val == -33<br> - rs1_val == -65<br>                                                                                               |[0x8000041c]:c.and a0, a1<br> [0x8000041e]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0xF7FFFF7F|- rs1_val == -129<br>                                                                                                                   |[0x8000042e]:c.and a0, a1<br> [0x80000430]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0xFFFFFEF6|- rs1_val == -257<br>                                                                                                                   |[0x8000043c]:c.and a0, a1<br> [0x8000043e]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0xDFFFFDFF|- rs1_val == -513<br>                                                                                                                   |[0x8000044e]:c.and a0, a1<br> [0x80000450]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0xFFFFFBFE|- rs2_val == -2<br> - rs1_val == -1025<br>                                                                                              |[0x8000045c]:c.and a0, a1<br> [0x8000045e]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0xFFFFEFFC|- rs1_val == -4097<br>                                                                                                                  |[0x8000046e]:c.and a0, a1<br> [0x80000470]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0x00000010|- rs1_val == -8193<br>                                                                                                                  |[0x80000480]:c.and a0, a1<br> [0x80000482]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0xFFFEFFF8|- rs1_val == -65537<br>                                                                                                                 |[0x80000492]:c.and a0, a1<br> [0x80000494]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0xFFFDDFFF|- rs2_val == -8193<br> - rs1_val == -131073<br>                                                                                         |[0x800004a8]:c.and a0, a1<br> [0x800004aa]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0x00000002|- rs2_val == 2<br> - rs1_val == -262145<br>                                                                                             |[0x800004ba]:c.and a0, a1<br> [0x800004bc]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x00400000|- rs2_val == 4194304<br> - rs1_val == -524289<br>                                                                                       |[0x800004cc]:c.and a0, a1<br> [0x800004ce]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0xFFEFFFFD|- rs1_val == -1048577<br>                                                                                                               |[0x800004de]:c.and a0, a1<br> [0x800004e0]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0xFFDFFEFF|- rs2_val == -257<br> - rs1_val == -2097153<br>                                                                                         |[0x800004f0]:c.and a0, a1<br> [0x800004f2]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFF9FFFFF|- rs2_val == -2097153<br> - rs1_val == -4194305<br>                                                                                     |[0x80000506]:c.and a0, a1<br> [0x80000508]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xBF7FFFFF|- rs1_val == -8388609<br>                                                                                                               |[0x8000051c]:c.and a0, a1<br> [0x8000051e]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0xDEFFFFFF|- rs1_val == -16777217<br>                                                                                                              |[0x80000532]:c.and a0, a1<br> [0x80000534]:sw a0, 252(ra)<br> |
|  65|[0x80003304]<br>0x00100000|- rs2_val == 1048576<br> - rs1_val == -33554433<br>                                                                                     |[0x80000544]:c.and a0, a1<br> [0x80000546]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0x00000040|- rs1_val == -67108865<br>                                                                                                              |[0x80000556]:c.and a0, a1<br> [0x80000558]:sw a0, 260(ra)<br> |
|  67|[0x8000330c]<br>0xF7F7FFFF|- rs2_val == -524289<br> - rs1_val == -134217729<br>                                                                                    |[0x8000056c]:c.and a0, a1<br> [0x8000056e]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0xEFFF7FFF|- rs1_val == -268435457<br>                                                                                                             |[0x80000582]:c.and a0, a1<br> [0x80000584]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0x9FFFFFFF|- rs1_val == -536870913<br>                                                                                                             |[0x80000598]:c.and a0, a1<br> [0x8000059a]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0x00001000|- rs2_val == 4096<br> - rs1_val == -1073741825<br>                                                                                      |[0x800005aa]:c.and a0, a1<br> [0x800005ac]:sw a0, 276(ra)<br> |
|  71|[0x8000331c]<br>0x55555554|- rs1_val == 1431655765<br>                                                                                                             |[0x800005bc]:c.and a0, a1<br> [0x800005be]:sw a0, 280(ra)<br> |
|  72|[0x80003320]<br>0xAAAAAA2A|- rs2_val == -129<br> - rs1_val == -1431655766<br>                                                                                      |[0x800005ce]:c.and a0, a1<br> [0x800005d0]:sw a0, 284(ra)<br> |
|  73|[0x80003324]<br>0x00000000|- rs2_val == 4<br>                                                                                                                      |[0x800005dc]:c.and a0, a1<br> [0x800005de]:sw a0, 288(ra)<br> |
|  74|[0x80003328]<br>0x00000008|- rs2_val == 8<br>                                                                                                                      |[0x800005ea]:c.and a0, a1<br> [0x800005ec]:sw a0, 292(ra)<br> |
|  75|[0x8000332c]<br>0x00000000|- rs2_val == 128<br>                                                                                                                    |[0x800005f8]:c.and a0, a1<br> [0x800005fa]:sw a0, 296(ra)<br> |
|  76|[0x80003330]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                   |[0x80000606]:c.and a0, a1<br> [0x80000608]:sw a0, 300(ra)<br> |
|  77|[0x80003334]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                   |[0x80000618]:c.and a0, a1<br> [0x8000061a]:sw a0, 304(ra)<br> |
|  78|[0x80003338]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                   |[0x8000062a]:c.and a0, a1<br> [0x8000062c]:sw a0, 308(ra)<br> |
|  79|[0x8000333c]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                  |[0x80000638]:c.and a0, a1<br> [0x8000063a]:sw a0, 312(ra)<br> |
|  80|[0x80003340]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                |[0x80000646]:c.and a0, a1<br> [0x80000648]:sw a0, 316(ra)<br> |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                               |[0x80000654]:c.and a0, a1<br> [0x80000656]:sw a0, 320(ra)<br> |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                               |[0x80000662]:c.and a0, a1<br> [0x80000664]:sw a0, 324(ra)<br> |
|  83|[0x8000334c]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                               |[0x80000670]:c.and a0, a1<br> [0x80000672]:sw a0, 328(ra)<br> |
|  84|[0x80003350]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                             |[0x8000067e]:c.and a0, a1<br> [0x80000680]:sw a0, 332(ra)<br> |
|  85|[0x80003354]<br>0x00800000|- rs2_val == -5<br>                                                                                                                     |[0x8000068c]:c.and a0, a1<br> [0x8000068e]:sw a0, 336(ra)<br> |
|  86|[0x80003358]<br>0xFFFEFFEF|- rs2_val == -17<br>                                                                                                                    |[0x8000069e]:c.and a0, a1<br> [0x800006a0]:sw a0, 340(ra)<br> |
|  87|[0x8000335c]<br>0x00010000|- rs2_val == -1025<br>                                                                                                                  |[0x800006ac]:c.and a0, a1<br> [0x800006ae]:sw a0, 344(ra)<br> |
|  88|[0x80003360]<br>0x00000010|- rs2_val == -2049<br>                                                                                                                  |[0x800006be]:c.and a0, a1<br> [0x800006c0]:sw a0, 348(ra)<br> |
|  89|[0x80003368]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                  |[0x800006de]:c.and a0, a1<br> [0x800006e0]:sw a0, 356(ra)<br> |
|  90|[0x8000336c]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                 |[0x800006ec]:c.and a0, a1<br> [0x800006ee]:sw a0, 360(ra)<br> |
|  91|[0x80003370]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                 |[0x800006fe]:c.and a0, a1<br> [0x80000700]:sw a0, 364(ra)<br> |
|  92|[0x80003374]<br>0xFFEFBFFF|- rs2_val == -1048577<br>                                                                                                               |[0x80000714]:c.and a0, a1<br> [0x80000716]:sw a0, 368(ra)<br> |
|  93|[0x80003378]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                |[0x80000722]:c.and a0, a1<br> [0x80000724]:sw a0, 372(ra)<br> |
