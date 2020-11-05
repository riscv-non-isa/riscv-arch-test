
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
| SIG_REGION                | [('0x80003204', '0x80003390', '99 words')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 99      |
| STAT1                     | 97      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d2]:c.xor a0, a1
      [0x800005d4]:sw a0, 292(ra)
 -- Signature Address: 0x80003328 Data: 0x00008200
 -- Redundant Coverpoints hit by the op
      - opcode : c.xor
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 512
      - rs1_val == 32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000778]:c.xor a0, a1
      [0x8000077a]:sw a0, 392(ra)
 -- Signature Address: 0x8000338c Data: 0x00000209
 -- Redundant Coverpoints hit by the op
      - opcode : c.xor
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
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

|s.no|        signature         |                                                           coverpoints                                                            |                             code                             |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : c.xor<br> - rs1 : x12<br> - rs2 : x12<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 512<br> - rs1_val == 512<br> |[0x80000108]:c.xor a2, a2<br> [0x8000010a]:sw a2, 0(ra)<br>   |
|   2|[0x80003208]<br>0x7FFFFFF8|- rs1 : x15<br> - rs2 : x14<br> - rs1 != rs2<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs1_val == -2147483648<br>   |[0x80000116]:c.xor a5, a4<br> [0x80000118]:sw a5, 4(ra)<br>   |
|   3|[0x8000320c]<br>0xFEFFFFFF|- rs1 : x14<br> - rs2 : x10<br> - rs1_val == 0<br> - rs2_val == -16777217<br>                                                     |[0x80000128]:c.xor a4, a0<br> [0x8000012a]:sw a4, 8(ra)<br>   |
|   4|[0x80003210]<br>0x3FFFFFFF|- rs1 : x8<br> - rs2 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1073741824<br> - rs1_val == 2147483647<br>           |[0x8000013a]:c.xor s0, a3<br> [0x8000013c]:sw fp, 12(ra)<br>  |
|   5|[0x80003214]<br>0xFBFFFFFE|- rs1 : x9<br> - rs2 : x8<br> - rs1_val == 1<br> - rs2_val == -67108865<br>                                                       |[0x8000014c]:c.xor s1, s0<br> [0x8000014e]:sw s1, 16(ra)<br>  |
|   6|[0x80003218]<br>0x80000020|- rs1 : x13<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 32<br>                  |[0x8000015a]:c.xor a3, a1<br> [0x8000015c]:sw a3, 20(ra)<br>  |
|   7|[0x8000321c]<br>0xFFFFBFFF|- rs1 : x10<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == -16385<br>                                                         |[0x8000016c]:c.xor a0, s1<br> [0x8000016e]:sw a0, 24(ra)<br>  |
|   8|[0x80003220]<br>0x80200000|- rs1 : x11<br> - rs2 : x15<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -2097153<br>            |[0x80000182]:c.xor a1, a5<br> [0x80000184]:sw a1, 28(ra)<br>  |
|   9|[0x80003224]<br>0xFFFFFFFF|- rs2_val == 1<br> - rs1_val == -2<br>                                                                                            |[0x80000190]:c.xor a0, a1<br> [0x80000192]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x00000006|- rs2_val == 4<br> - rs1_val == 2<br>                                                                                             |[0x8000019e]:c.xor a0, a1<br> [0x800001a0]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0xFFFFF7FB|- rs2_val == -2049<br> - rs1_val == 4<br>                                                                                         |[0x800001b0]:c.xor a0, a1<br> [0x800001b2]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0xFFFFFFE7|- rs2_val == -17<br> - rs1_val == 8<br>                                                                                           |[0x800001be]:c.xor a0, a1<br> [0x800001c0]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000011|- rs1_val == 16<br>                                                                                                               |[0x800001cc]:c.xor a0, a1<br> [0x800001ce]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFFFFFF3F|- rs2_val == -129<br> - rs1_val == 64<br>                                                                                         |[0x800001da]:c.xor a0, a1<br> [0x800001dc]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0xFFBFFF7F|- rs2_val == -4194305<br> - rs1_val == 128<br>                                                                                    |[0x800001ec]:c.xor a0, a1<br> [0x800001ee]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000110|- rs2_val == 16<br> - rs1_val == 256<br>                                                                                          |[0x800001fa]:c.xor a0, a1<br> [0x800001fc]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000420|- rs2_val == 32<br> - rs1_val == 1024<br>                                                                                         |[0x80000208]:c.xor a0, a1<br> [0x8000020a]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0xFFBFF7FF|- rs1_val == 2048<br>                                                                                                             |[0x8000021e]:c.xor a0, a1<br> [0x80000220]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0xFFFFEEFF|- rs2_val == -257<br> - rs1_val == 4096<br>                                                                                       |[0x8000022c]:c.xor a0, a1<br> [0x8000022e]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00022000|- rs2_val == 131072<br> - rs1_val == 8192<br>                                                                                     |[0x8000023a]:c.xor a0, a1<br> [0x8000023c]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x02004000|- rs2_val == 33554432<br> - rs1_val == 16384<br>                                                                                  |[0x80000248]:c.xor a0, a1<br> [0x8000024a]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00008100|- rs2_val == 256<br> - rs1_val == 32768<br>                                                                                       |[0x80000256]:c.xor a0, a1<br> [0x80000258]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00010000|- rs1_val == 65536<br>                                                                                                            |[0x80000264]:c.xor a0, a1<br> [0x80000266]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0xFFFDFFFF|- rs1_val == 131072<br>                                                                                                           |[0x80000272]:c.xor a0, a1<br> [0x80000274]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0xFFFBF7FF|- rs1_val == 262144<br>                                                                                                           |[0x80000284]:c.xor a0, a1<br> [0x80000286]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x3FF7FFFF|- rs1_val == 524288<br>                                                                                                           |[0x80000296]:c.xor a0, a1<br> [0x80000298]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0xFEEFFFFF|- rs1_val == 1048576<br>                                                                                                          |[0x800002a8]:c.xor a0, a1<br> [0x800002aa]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0xFFDFDFFF|- rs2_val == -8193<br> - rs1_val == 2097152<br>                                                                                   |[0x800002ba]:c.xor a0, a1<br> [0x800002bc]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x00408000|- rs2_val == 32768<br> - rs1_val == 4194304<br>                                                                                   |[0x800002c8]:c.xor a0, a1<br> [0x800002ca]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0xFF7FFF7F|- rs1_val == 8388608<br>                                                                                                          |[0x800002d6]:c.xor a0, a1<br> [0x800002d8]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x01400000|- rs2_val == 4194304<br> - rs1_val == 16777216<br>                                                                                |[0x800002e4]:c.xor a0, a1<br> [0x800002e6]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0xFDFFFFF8|- rs1_val == 33554432<br>                                                                                                         |[0x800002f2]:c.xor a0, a1<br> [0x800002f4]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0xFBBFFFFF|- rs1_val == 67108864<br>                                                                                                         |[0x80000304]:c.xor a0, a1<br> [0x80000306]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x08000002|- rs2_val == 2<br> - rs1_val == 134217728<br>                                                                                     |[0x80000312]:c.xor a0, a1<br> [0x80000314]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x10000007|- rs1_val == 268435456<br>                                                                                                        |[0x80000320]:c.xor a0, a1<br> [0x80000322]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x20000009|- rs1_val == 536870912<br>                                                                                                        |[0x8000032e]:c.xor a0, a1<br> [0x80000330]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x40002000|- rs2_val == 8192<br> - rs1_val == 1073741824<br>                                                                                 |[0x8000033c]:c.xor a0, a1<br> [0x8000033e]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x10000002|- rs2_val == -268435457<br> - rs1_val == -3<br>                                                                                   |[0x8000034e]:c.xor a0, a1<br> [0x80000350]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0xFFFFFBFB|- rs2_val == 1024<br> - rs1_val == -5<br>                                                                                         |[0x8000035c]:c.xor a0, a1<br> [0x8000035e]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0x00000048|- rs2_val == -65<br> - rs1_val == -9<br>                                                                                          |[0x8000036a]:c.xor a0, a1<br> [0x8000036c]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0x00000011|- rs2_val == -2<br> - rs1_val == -17<br>                                                                                          |[0x80000378]:c.xor a0, a1<br> [0x8000037a]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFFFFEDF|- rs1_val == -33<br>                                                                                                              |[0x80000386]:c.xor a0, a1<br> [0x80000388]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0x40000040|- rs2_val == -1073741825<br> - rs1_val == -65<br>                                                                                 |[0x80000398]:c.xor a0, a1<br> [0x8000039a]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0x00000000|- rs1_val == -129<br>                                                                                                             |[0x800003a6]:c.xor a0, a1<br> [0x800003a8]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFFFFFFFF|- rs2_val == -8388609<br>                                                                                                         |[0x800003b8]:c.xor a0, a1<br> [0x800003ba]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0x02800000|- rs2_val == -33554433<br> - rs1_val == -8388609<br>                                                                              |[0x800003ce]:c.xor a0, a1<br> [0x800003d0]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0x08004000|- rs2_val == -134217729<br>                                                                                                       |[0x800003e4]:c.xor a0, a1<br> [0x800003e6]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xDEFFFFFF|- rs2_val == -536870913<br>                                                                                                       |[0x800003f6]:c.xor a0, a1<br> [0x800003f8]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0x5D555555|- rs2_val == 1431655765<br>                                                                                                       |[0x80000408]:c.xor a0, a1<br> [0x8000040a]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0xAAAA8AAA|- rs2_val == -1431655766<br>                                                                                                      |[0x8000041a]:c.xor a0, a1<br> [0x8000041c]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0xFFEFFEFF|- rs2_val == 1048576<br> - rs1_val == -257<br>                                                                                    |[0x80000428]:c.xor a0, a1<br> [0x8000042a]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0xFFFFDDFF|- rs1_val == -513<br>                                                                                                             |[0x80000436]:c.xor a0, a1<br> [0x80000438]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0xFDFFFBFF|- rs1_val == -1025<br>                                                                                                            |[0x80000444]:c.xor a0, a1<br> [0x80000446]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0x00000900|- rs1_val == -2049<br>                                                                                                            |[0x80000456]:c.xor a0, a1<br> [0x80000458]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0xFFFFEFFC|- rs1_val == -4097<br>                                                                                                            |[0x80000468]:c.xor a0, a1<br> [0x8000046a]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0xFFF7DFFF|- rs2_val == 524288<br> - rs1_val == -8193<br>                                                                                    |[0x8000047a]:c.xor a0, a1<br> [0x8000047c]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0x5555D555|- rs1_val == -32769<br>                                                                                                           |[0x80000490]:c.xor a0, a1<br> [0x80000492]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0xFFFEFBFF|- rs1_val == -65537<br>                                                                                                           |[0x800004a2]:c.xor a0, a1<br> [0x800004a4]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x01020000|- rs1_val == -131073<br>                                                                                                          |[0x800004b8]:c.xor a0, a1<br> [0x800004ba]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0xEFFBFFFF|- rs2_val == 268435456<br> - rs1_val == -262145<br>                                                                               |[0x800004ca]:c.xor a0, a1<br> [0x800004cc]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0x00080004|- rs2_val == -5<br> - rs1_val == -524289<br>                                                                                      |[0x800004dc]:c.xor a0, a1<br> [0x800004de]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFFE7FFFF|- rs1_val == -1048577<br>                                                                                                         |[0x800004ee]:c.xor a0, a1<br> [0x800004f0]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xC0400000|- rs1_val == -4194305<br>                                                                                                         |[0x80000504]:c.xor a0, a1<br> [0x80000506]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0x01000800|- rs1_val == -16777217<br>                                                                                                        |[0x8000051a]:c.xor a0, a1<br> [0x8000051c]:sw a0, 252(ra)<br> |
|  65|[0x80003304]<br>0x02000800|- rs1_val == -33554433<br>                                                                                                        |[0x80000530]:c.xor a0, a1<br> [0x80000532]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0xFBFFFFF7|- rs2_val == 8<br> - rs1_val == -67108865<br>                                                                                     |[0x80000542]:c.xor a0, a1<br> [0x80000544]:sw a0, 260(ra)<br> |
|  67|[0x8000330c]<br>0xF7FFFFF8|- rs1_val == -134217729<br>                                                                                                       |[0x80000554]:c.xor a0, a1<br> [0x80000556]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0xEFFFFFBF|- rs2_val == 64<br> - rs1_val == -268435457<br>                                                                                   |[0x80000566]:c.xor a0, a1<br> [0x80000568]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                       |[0x80000578]:c.xor a0, a1<br> [0x8000057a]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0xBFBFFFFF|- rs1_val == -1073741825<br>                                                                                                      |[0x8000058a]:c.xor a0, a1<br> [0x8000058c]:sw a0, 276(ra)<br> |
|  71|[0x8000331c]<br>0x54555555|- rs2_val == 16777216<br> - rs1_val == 1431655765<br>                                                                             |[0x8000059c]:c.xor a0, a1<br> [0x8000059e]:sw a0, 280(ra)<br> |
|  72|[0x80003320]<br>0x57555555|- rs1_val == -1431655766<br>                                                                                                      |[0x800005b2]:c.xor a0, a1<br> [0x800005b4]:sw a0, 284(ra)<br> |
|  73|[0x80003324]<br>0xFFDFFF7F|- rs2_val == 128<br>                                                                                                              |[0x800005c4]:c.xor a0, a1<br> [0x800005c6]:sw a0, 288(ra)<br> |
|  74|[0x8000332c]<br>0xFF7FF7FF|- rs2_val == 2048<br>                                                                                                             |[0x800005e8]:c.xor a0, a1<br> [0x800005ea]:sw a0, 296(ra)<br> |
|  75|[0x80003330]<br>0x40001000|- rs2_val == 4096<br>                                                                                                             |[0x800005f6]:c.xor a0, a1<br> [0x800005f8]:sw a0, 300(ra)<br> |
|  76|[0x80003334]<br>0xFFBFBFFF|- rs2_val == 16384<br>                                                                                                            |[0x80000608]:c.xor a0, a1<br> [0x8000060a]:sw a0, 304(ra)<br> |
|  77|[0x80003338]<br>0xDFFEFFFF|- rs2_val == 65536<br>                                                                                                            |[0x8000061a]:c.xor a0, a1<br> [0x8000061c]:sw a0, 308(ra)<br> |
|  78|[0x8000333c]<br>0xFFFBFFFC|- rs2_val == 262144<br>                                                                                                           |[0x80000628]:c.xor a0, a1<br> [0x8000062a]:sw a0, 312(ra)<br> |
|  79|[0x80003340]<br>0x00220000|- rs2_val == 2097152<br>                                                                                                          |[0x80000636]:c.xor a0, a1<br> [0x80000638]:sw a0, 316(ra)<br> |
|  80|[0x80003344]<br>0x00810000|- rs2_val == 8388608<br>                                                                                                          |[0x80000644]:c.xor a0, a1<br> [0x80000646]:sw a0, 320(ra)<br> |
|  81|[0x80003348]<br>0x05000000|- rs2_val == 67108864<br>                                                                                                         |[0x80000652]:c.xor a0, a1<br> [0x80000654]:sw a0, 324(ra)<br> |
|  82|[0x8000334c]<br>0x77FFFFFF|- rs2_val == 134217728<br>                                                                                                        |[0x80000664]:c.xor a0, a1<br> [0x80000666]:sw a0, 328(ra)<br> |
|  83|[0x80003350]<br>0xDFFFFFFB|- rs2_val == 536870912<br>                                                                                                        |[0x80000672]:c.xor a0, a1<br> [0x80000674]:sw a0, 332(ra)<br> |
|  84|[0x80003354]<br>0x00400002|- rs2_val == -3<br>                                                                                                               |[0x80000684]:c.xor a0, a1<br> [0x80000686]:sw a0, 336(ra)<br> |
|  85|[0x80003358]<br>0x02000008|- rs2_val == -9<br>                                                                                                               |[0x80000696]:c.xor a0, a1<br> [0x80000698]:sw a0, 340(ra)<br> |
|  86|[0x8000335c]<br>0x10000020|- rs2_val == -33<br>                                                                                                              |[0x800006a8]:c.xor a0, a1<br> [0x800006aa]:sw a0, 344(ra)<br> |
|  87|[0x80003360]<br>0xFFFDFDFF|- rs2_val == -513<br>                                                                                                             |[0x800006b6]:c.xor a0, a1<br> [0x800006b8]:sw a0, 348(ra)<br> |
|  88|[0x80003364]<br>0x00000000|- rs2_val == -1025<br>                                                                                                            |[0x800006c4]:c.xor a0, a1<br> [0x800006c6]:sw a0, 352(ra)<br> |
|  89|[0x80003368]<br>0xFDFFEFFF|- rs2_val == -4097<br>                                                                                                            |[0x800006d6]:c.xor a0, a1<br> [0x800006d8]:sw a0, 356(ra)<br> |
|  90|[0x8000336c]<br>0xFFFBBFFF|- rs2_val == -16385<br>                                                                                                           |[0x800006e8]:c.xor a0, a1<br> [0x800006ea]:sw a0, 360(ra)<br> |
|  91|[0x80003370]<br>0xFFFF7F7F|- rs2_val == -32769<br>                                                                                                           |[0x800006fa]:c.xor a0, a1<br> [0x800006fc]:sw a0, 364(ra)<br> |
|  92|[0x80003374]<br>0x10010000|- rs2_val == -65537<br>                                                                                                           |[0x80000710]:c.xor a0, a1<br> [0x80000712]:sw a0, 368(ra)<br> |
|  93|[0x80003378]<br>0x00020400|- rs2_val == -131073<br>                                                                                                          |[0x80000722]:c.xor a0, a1<br> [0x80000724]:sw a0, 372(ra)<br> |
|  94|[0x8000337c]<br>0xFEFBFFFF|- rs2_val == -262145<br>                                                                                                          |[0x80000734]:c.xor a0, a1<br> [0x80000736]:sw a0, 376(ra)<br> |
|  95|[0x80003380]<br>0x00080000|- rs2_val == -524289<br>                                                                                                          |[0x80000746]:c.xor a0, a1<br> [0x80000748]:sw a0, 380(ra)<br> |
|  96|[0x80003384]<br>0xFFEFFFF8|- rs2_val == -1048577<br>                                                                                                         |[0x80000758]:c.xor a0, a1<br> [0x8000075a]:sw a0, 384(ra)<br> |
|  97|[0x80003388]<br>0xFFDFFFFE|- rs2_val == -2097153<br>                                                                                                         |[0x8000076a]:c.xor a0, a1<br> [0x8000076c]:sw a0, 388(ra)<br> |
