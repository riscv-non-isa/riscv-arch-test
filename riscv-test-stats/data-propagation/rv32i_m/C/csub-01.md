
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000760')]      |
| SIG_REGION                | [('0x80003204', '0x8000338c', '98 words')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 98      |
| STAT1                     | 97      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003e4]:c.sub a0, a1
      [0x800003e6]:sw a0, 184(ra)
 -- Signature Address: 0x800032bc Data: 0x02008001
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -33554433
      - rs1_val == 32768






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

|s.no|        signature         |                                                                 coverpoints                                                                  |                             code                             |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : c.sub<br> - rs1 : x14<br> - rs2 : x14<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -33554433<br> - rs1_val == -33554433<br> |[0x8000010c]:c.sub a4, a4<br> [0x8000010e]:sw a4, 0(ra)<br>   |
|   2|[0x80003208]<br>0x30000000|- rs1 : x13<br> - rs2 : x10<br> - rs1 != rs2<br> - rs2_val == -1073741825<br> - rs1_val == -268435457<br>                                     |[0x80000122]:c.sub a3, a0<br> [0x80000124]:sw a3, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x80000801|- rs1 : x8<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2049<br> - rs1_val == -2147483648<br>                            |[0x80000134]:c.sub s0, a3<br> [0x80000136]:sw fp, 8(ra)<br>   |
|   4|[0x80003210]<br>0x00002001|- rs1 : x10<br> - rs2 : x15<br> - rs1_val == 0<br> - rs2_val == -8193<br>                                                                     |[0x80000146]:c.sub a0, a5<br> [0x80000148]:sw a0, 12(ra)<br>  |
|   5|[0x80003214]<br>0x7FFFFFF8|- rs1 : x12<br> - rs2 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val > 0<br> - rs1_val == 2147483647<br>                                 |[0x80000158]:c.sub a2, s1<br> [0x8000015a]:sw a2, 16(ra)<br>  |
|   6|[0x80003218]<br>0xFFFFFFF1|- rs1 : x11<br> - rs2 : x8<br> - rs1_val == 1<br> - rs2_val == 16<br>                                                                         |[0x80000166]:c.sub a1, s0<br> [0x80000168]:sw a1, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x7DFFFFFF|- rs1 : x15<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                  |[0x80000178]:c.sub a5, a1<br> [0x8000017a]:sw a5, 24(ra)<br>  |
|   8|[0x80003220]<br>0xFFFFFBFF|- rs1 : x9<br> - rs2 : x12<br> - rs2_val == 0<br> - rs1_val == -1025<br>                                                                      |[0x80000186]:c.sub s1, a2<br> [0x80000188]:sw s1, 28(ra)<br>  |
|   9|[0x80003224]<br>0x80000041|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 64<br>                                                              |[0x80000198]:c.sub a0, a1<br> [0x8000019a]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0xFFFFDFFE|- rs2_val == 1<br> - rs1_val == -8193<br>                                                                                                     |[0x800001aa]:c.sub a0, a1<br> [0x800001ac]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0x00200003|- rs2_val == -2097153<br> - rs1_val == 2<br>                                                                                                  |[0x800001bc]:c.sub a0, a1<br> [0x800001be]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x40000004|- rs1_val == 4<br>                                                                                                                            |[0x800001ca]:c.sub a0, a1<br> [0x800001cc]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000009|- rs1_val == 8<br>                                                                                                                            |[0x800001d8]:c.sub a0, a1<br> [0x800001da]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFFFE0010|- rs2_val == 131072<br> - rs1_val == 16<br>                                                                                                   |[0x800001e6]:c.sub a0, a1<br> [0x800001e8]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x0000001F|- rs1_val == 32<br>                                                                                                                           |[0x800001f4]:c.sub a0, a1<br> [0x800001f6]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000088|- rs1_val == 128<br>                                                                                                                          |[0x80000202]:c.sub a0, a1<br> [0x80000204]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00100101|- rs2_val == -1048577<br> - rs1_val == 256<br>                                                                                                |[0x80000214]:c.sub a0, a1<br> [0x80000216]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x04000201|- rs2_val == -67108865<br> - rs1_val == 512<br>                                                                                               |[0x80000226]:c.sub a0, a1<br> [0x80000228]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x01000401|- rs2_val == -16777217<br> - rs1_val == 1024<br>                                                                                              |[0x80000238]:c.sub a0, a1<br> [0x8000023a]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0xFFF80800|- rs2_val == 524288<br> - rs1_val == 2048<br>                                                                                                 |[0x8000024a]:c.sub a0, a1<br> [0x8000024c]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00000FF9|- rs1_val == 4096<br>                                                                                                                         |[0x80000258]:c.sub a0, a1<br> [0x8000025a]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x01002001|- rs1_val == 8192<br>                                                                                                                         |[0x8000026a]:c.sub a0, a1<br> [0x8000026c]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00003FFF|- rs1_val == 16384<br>                                                                                                                        |[0x80000278]:c.sub a0, a1<br> [0x8000027a]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0xFFF08000|- rs2_val == 1048576<br> - rs1_val == 32768<br>                                                                                               |[0x80000286]:c.sub a0, a1<br> [0x80000288]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0xF0010000|- rs2_val == 268435456<br> - rs1_val == 65536<br>                                                                                             |[0x80000294]:c.sub a0, a1<br> [0x80000296]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x0001F000|- rs2_val == 4096<br> - rs1_val == 131072<br>                                                                                                 |[0x800002a2]:c.sub a0, a1<br> [0x800002a4]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0x00040001|- rs1_val == 262144<br>                                                                                                                       |[0x800002b0]:c.sub a0, a1<br> [0x800002b2]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0x00080006|- rs1_val == 524288<br>                                                                                                                       |[0x800002be]:c.sub a0, a1<br> [0x800002c0]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x000FFFFF|- rs1_val == 1048576<br>                                                                                                                      |[0x800002cc]:c.sub a0, a1<br> [0x800002ce]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x55755556|- rs2_val == -1431655766<br> - rs1_val == 2097152<br>                                                                                         |[0x800002de]:c.sub a0, a1<br> [0x800002e0]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00400005|- rs2_val == -5<br> - rs1_val == 4194304<br>                                                                                                  |[0x800002ec]:c.sub a0, a1<br> [0x800002ee]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0x00800007|- rs1_val == 8388608<br>                                                                                                                      |[0x800002fa]:c.sub a0, a1<br> [0x800002fc]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x01040001|- rs2_val == -262145<br> - rs1_val == 16777216<br>                                                                                            |[0x8000030c]:c.sub a0, a1<br> [0x8000030e]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x02000021|- rs2_val == -33<br> - rs1_val == 33554432<br>                                                                                                |[0x8000031a]:c.sub a0, a1<br> [0x8000031c]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0xE4000000|- rs2_val == 536870912<br> - rs1_val == 67108864<br>                                                                                          |[0x80000328]:c.sub a0, a1<br> [0x8000032a]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x07FE0000|- rs1_val == 134217728<br>                                                                                                                    |[0x80000336]:c.sub a0, a1<br> [0x80000338]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x10400001|- rs2_val == -4194305<br> - rs1_val == 268435456<br>                                                                                          |[0x80000348]:c.sub a0, a1<br> [0x8000034a]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x20000401|- rs2_val == -1025<br> - rs1_val == 536870912<br>                                                                                             |[0x80000356]:c.sub a0, a1<br> [0x80000358]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0x40000009|- rs2_val == -9<br> - rs1_val == 1073741824<br>                                                                                               |[0x80000364]:c.sub a0, a1<br> [0x80000366]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0x3FFFFFFE|- rs1_val == -2<br>                                                                                                                           |[0x80000372]:c.sub a0, a1<br> [0x80000374]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0xFFFFFFBD|- rs2_val == 64<br> - rs1_val == -3<br>                                                                                                       |[0x80000380]:c.sub a0, a1<br> [0x80000382]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFEFFFFB|- rs1_val == -5<br>                                                                                                                           |[0x8000038e]:c.sub a0, a1<br> [0x80000390]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFFFFFFF2|- rs1_val == -9<br>                                                                                                                           |[0x8000039c]:c.sub a0, a1<br> [0x8000039e]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0x00FFFFF0|- rs1_val == -17<br>                                                                                                                          |[0x800003ae]:c.sub a0, a1<br> [0x800003b0]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0xBFFFFFE0|- rs1_val == -33<br>                                                                                                                          |[0x800003c0]:c.sub a0, a1<br> [0x800003c2]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0x01800001|- rs2_val == -8388609<br>                                                                                                                     |[0x800003d2]:c.sub a0, a1<br> [0x800003d4]:sw a0, 180(ra)<br> |
|  47|[0x800032c0]<br>0x07FFFFF7|- rs2_val == -134217729<br>                                                                                                                   |[0x800003f6]:c.sub a0, a1<br> [0x800003f8]:sw a0, 188(ra)<br> |
|  48|[0x800032c4]<br>0x10008001|- rs2_val == -268435457<br>                                                                                                                   |[0x80000408]:c.sub a0, a1<br> [0x8000040a]:sw a0, 192(ra)<br> |
|  49|[0x800032c8]<br>0x1FFFFFFB|- rs2_val == -536870913<br>                                                                                                                   |[0x8000041a]:c.sub a0, a1<br> [0x8000041c]:sw a0, 196(ra)<br> |
|  50|[0x800032cc]<br>0x2AAAAAAA|- rs2_val == 1431655765<br>                                                                                                                   |[0x80000430]:c.sub a0, a1<br> [0x80000432]:sw a0, 200(ra)<br> |
|  51|[0x800032d0]<br>0xFFFFDFBF|- rs2_val == 8192<br> - rs1_val == -65<br>                                                                                                    |[0x8000043e]:c.sub a0, a1<br> [0x80000440]:sw a0, 204(ra)<br> |
|  52|[0x800032d4]<br>0xFFFEFF7F|- rs2_val == 65536<br> - rs1_val == -129<br>                                                                                                  |[0x8000044c]:c.sub a0, a1<br> [0x8000044e]:sw a0, 208(ra)<br> |
|  53|[0x800032d8]<br>0x007FFF00|- rs1_val == -257<br>                                                                                                                         |[0x8000045e]:c.sub a0, a1<br> [0x80000460]:sw a0, 212(ra)<br> |
|  54|[0x800032dc]<br>0x0FFFFE00|- rs1_val == -513<br>                                                                                                                         |[0x80000470]:c.sub a0, a1<br> [0x80000472]:sw a0, 216(ra)<br> |
|  55|[0x800032e0]<br>0xFF7FF7FF|- rs2_val == 8388608<br> - rs1_val == -2049<br>                                                                                               |[0x80000482]:c.sub a0, a1<br> [0x80000484]:sw a0, 220(ra)<br> |
|  56|[0x800032e4]<br>0x00007000|- rs2_val == -32769<br> - rs1_val == -4097<br>                                                                                                |[0x80000498]:c.sub a0, a1<br> [0x8000049a]:sw a0, 224(ra)<br> |
|  57|[0x800032e8]<br>0xFFFFC001|- rs2_val == -2<br> - rs1_val == -16385<br>                                                                                                   |[0x800004aa]:c.sub a0, a1<br> [0x800004ac]:sw a0, 228(ra)<br> |
|  58|[0x800032ec]<br>0xFFFF8080|- rs2_val == -129<br> - rs1_val == -32769<br>                                                                                                 |[0x800004bc]:c.sub a0, a1<br> [0x800004be]:sw a0, 232(ra)<br> |
|  59|[0x800032f0]<br>0xFFF6FFFF|- rs1_val == -65537<br>                                                                                                                       |[0x800004ce]:c.sub a0, a1<br> [0x800004d0]:sw a0, 236(ra)<br> |
|  60|[0x800032f4]<br>0x7FFE0000|- rs1_val == -131073<br>                                                                                                                      |[0x800004e4]:c.sub a0, a1<br> [0x800004e6]:sw a0, 240(ra)<br> |
|  61|[0x800032f8]<br>0xFFFC0010|- rs2_val == -17<br> - rs1_val == -262145<br>                                                                                                 |[0x800004f6]:c.sub a0, a1<br> [0x800004f8]:sw a0, 244(ra)<br> |
|  62|[0x800032fc]<br>0xFDF7FFFF|- rs2_val == 33554432<br> - rs1_val == -524289<br>                                                                                            |[0x80000508]:c.sub a0, a1<br> [0x8000050a]:sw a0, 248(ra)<br> |
|  63|[0x80003300]<br>0x00300000|- rs1_val == -1048577<br>                                                                                                                     |[0x8000051e]:c.sub a0, a1<br> [0x80000520]:sw a0, 252(ra)<br> |
|  64|[0x80003304]<br>0xFFDBFFFF|- rs2_val == 262144<br> - rs1_val == -2097153<br>                                                                                             |[0x80000530]:c.sub a0, a1<br> [0x80000532]:sw a0, 256(ra)<br> |
|  65|[0x80003308]<br>0xFFC02000|- rs1_val == -4194305<br>                                                                                                                     |[0x80000546]:c.sub a0, a1<br> [0x80000548]:sw a0, 260(ra)<br> |
|  66|[0x8000330c]<br>0xFF7FFFF6|- rs1_val == -8388609<br>                                                                                                                     |[0x80000558]:c.sub a0, a1<br> [0x8000055a]:sw a0, 264(ra)<br> |
|  67|[0x80003310]<br>0xA9AAAAAA|- rs1_val == -16777217<br>                                                                                                                    |[0x8000056e]:c.sub a0, a1<br> [0x80000570]:sw a0, 268(ra)<br> |
|  68|[0x80003314]<br>0xFBFFFFF8|- rs1_val == -67108865<br>                                                                                                                    |[0x80000580]:c.sub a0, a1<br> [0x80000582]:sw a0, 272(ra)<br> |
|  69|[0x80003318]<br>0xF7FFFFFB|- rs2_val == 4<br> - rs1_val == -134217729<br>                                                                                                |[0x80000592]:c.sub a0, a1<br> [0x80000594]:sw a0, 276(ra)<br> |
|  70|[0x8000331c]<br>0xE0000005|- rs1_val == -536870913<br>                                                                                                                   |[0x800005a4]:c.sub a0, a1<br> [0x800005a6]:sw a0, 280(ra)<br> |
|  71|[0x80003320]<br>0xBFFFFFFC|- rs1_val == -1073741825<br>                                                                                                                  |[0x800005b6]:c.sub a0, a1<br> [0x800005b8]:sw a0, 284(ra)<br> |
|  72|[0x80003324]<br>0x55555515|- rs1_val == 1431655765<br>                                                                                                                   |[0x800005c8]:c.sub a0, a1<br> [0x800005ca]:sw a0, 288(ra)<br> |
|  73|[0x80003328]<br>0xA6AAAAAA|- rs2_val == 67108864<br> - rs1_val == -1431655766<br>                                                                                        |[0x800005da]:c.sub a0, a1<br> [0x800005dc]:sw a0, 292(ra)<br> |
|  74|[0x8000332c]<br>0x0000003E|- rs2_val == 2<br>                                                                                                                            |[0x800005e8]:c.sub a0, a1<br> [0x800005ea]:sw a0, 296(ra)<br> |
|  75|[0x80003330]<br>0xFFFFFFF7|- rs2_val == 8<br>                                                                                                                            |[0x800005f6]:c.sub a0, a1<br> [0x800005f8]:sw a0, 300(ra)<br> |
|  76|[0x80003334]<br>0xFFFFFF88|- rs2_val == 128<br>                                                                                                                          |[0x80000604]:c.sub a0, a1<br> [0x80000606]:sw a0, 304(ra)<br> |
|  77|[0x80003338]<br>0xFFFFFF09|- rs2_val == 256<br>                                                                                                                          |[0x80000612]:c.sub a0, a1<br> [0x80000614]:sw a0, 308(ra)<br> |
|  78|[0x8000333c]<br>0xFFFFFE06|- rs2_val == 512<br>                                                                                                                          |[0x80000620]:c.sub a0, a1<br> [0x80000622]:sw a0, 312(ra)<br> |
|  79|[0x80003340]<br>0x00007C00|- rs2_val == 1024<br>                                                                                                                         |[0x8000062e]:c.sub a0, a1<br> [0x80000630]:sw a0, 316(ra)<br> |
|  80|[0x80003344]<br>0x1FFFF800|- rs2_val == 2048<br>                                                                                                                         |[0x80000640]:c.sub a0, a1<br> [0x80000642]:sw a0, 320(ra)<br> |
|  81|[0x80003348]<br>0xFFFFBFFB|- rs2_val == 16384<br>                                                                                                                        |[0x8000064e]:c.sub a0, a1<br> [0x80000650]:sw a0, 324(ra)<br> |
|  82|[0x8000334c]<br>0x03C00000|- rs2_val == 4194304<br>                                                                                                                      |[0x8000065c]:c.sub a0, a1<br> [0x8000065e]:sw a0, 328(ra)<br> |
|  83|[0x80003350]<br>0xFF400000|- rs2_val == 16777216<br>                                                                                                                     |[0x8000066a]:c.sub a0, a1<br> [0x8000066c]:sw a0, 332(ra)<br> |
|  84|[0x80003354]<br>0xEFFFFFFF|- rs2_val == 134217728<br>                                                                                                                    |[0x8000067c]:c.sub a0, a1<br> [0x8000067e]:sw a0, 336(ra)<br> |
|  85|[0x80003358]<br>0xBFFFFFDF|- rs2_val == 1073741824<br>                                                                                                                   |[0x8000068a]:c.sub a0, a1<br> [0x8000068c]:sw a0, 340(ra)<br> |
|  86|[0x8000335c]<br>0xFFE00002|- rs2_val == -3<br>                                                                                                                           |[0x8000069c]:c.sub a0, a1<br> [0x8000069e]:sw a0, 344(ra)<br> |
|  87|[0x80003360]<br>0x00000038|- rs2_val == -65<br>                                                                                                                          |[0x800006aa]:c.sub a0, a1<br> [0x800006ac]:sw a0, 348(ra)<br> |
|  88|[0x80003364]<br>0x00800101|- rs2_val == -257<br>                                                                                                                         |[0x800006b8]:c.sub a0, a1<br> [0x800006ba]:sw a0, 352(ra)<br> |
|  89|[0x80003368]<br>0x000001F8|- rs2_val == -513<br>                                                                                                                         |[0x800006c6]:c.sub a0, a1<br> [0x800006c8]:sw a0, 356(ra)<br> |
|  90|[0x8000336c]<br>0xFFFC1000|- rs2_val == -4097<br>                                                                                                                        |[0x800006dc]:c.sub a0, a1<br> [0x800006de]:sw a0, 360(ra)<br> |
|  91|[0x80003370]<br>0x00000000|- rs2_val == -16385<br>                                                                                                                       |[0x800006f2]:c.sub a0, a1<br> [0x800006f4]:sw a0, 364(ra)<br> |
|  92|[0x80003374]<br>0xFFFF8080|- rs2_val == 32768<br>                                                                                                                        |[0x80000700]:c.sub a0, a1<br> [0x80000702]:sw a0, 368(ra)<br> |
|  93|[0x80003378]<br>0x00011001|- rs2_val == -65537<br>                                                                                                                       |[0x80000712]:c.sub a0, a1<br> [0x80000714]:sw a0, 372(ra)<br> |
|  94|[0x8000337c]<br>0x00024001|- rs2_val == -131073<br>                                                                                                                      |[0x80000724]:c.sub a0, a1<br> [0x80000726]:sw a0, 376(ra)<br> |
|  95|[0x80003380]<br>0x0007FC00|- rs2_val == -524289<br>                                                                                                                      |[0x80000736]:c.sub a0, a1<br> [0x80000738]:sw a0, 380(ra)<br> |
|  96|[0x80003384]<br>0xFFE00005|- rs2_val == 2097152<br>                                                                                                                      |[0x80000744]:c.sub a0, a1<br> [0x80000746]:sw a0, 384(ra)<br> |
|  97|[0x80003388]<br>0xFDFFFFDF|- rs2_val == 32<br>                                                                                                                           |[0x80000756]:c.sub a0, a1<br> [0x80000758]:sw a0, 388(ra)<br> |
