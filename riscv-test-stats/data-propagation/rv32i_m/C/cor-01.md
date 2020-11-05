
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
| SIG_REGION                | [('0x80003204', '0x80003388', '97 words')]      |
| COV_LABELS                | cor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 97      |
| STAT1                     | 96      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000734]:c.or a0, a1
      [0x80000736]:sw a0, 376(ra)
 -- Signature Address: 0x8000337c Data: 0x00084000
 -- Redundant Coverpoints hit by the op
      - opcode : c.or
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 524288
      - rs1_val == 16384






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

|s.no|        signature         |                                                                       coverpoints                                                                        |                            code                             |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
|   1|[0x80003204]<br>0x00080000|- opcode : c.or<br> - rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 524288<br> - rs1_val == 524288<br>                    |[0x80000108]:c.or a5, a5<br> [0x8000010a]:sw a5, 0(ra)<br>   |
|   2|[0x80003208]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs2_val == -16385<br>                                                                  |[0x8000011e]:c.or s1, s0<br> [0x80000120]:sw s1, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x80000400|- rs1 : x14<br> - rs2 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 1024<br> - rs1_val == -2147483648<br>                                        |[0x8000012c]:c.or a4, a0<br> [0x8000012e]:sw a4, 8(ra)<br>   |
|   4|[0x80003210]<br>0xFFDFFFFF|- rs1 : x13<br> - rs2 : x9<br> - rs1_val == 0<br> - rs2_val == -2097153<br>                                                                               |[0x8000013e]:c.or a3, s1<br> [0x80000140]:sw a3, 12(ra)<br>  |
|   5|[0x80003214]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x13<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -2147483648<br> - rs1_val == 2147483647<br> |[0x80000150]:c.or a1, a3<br> [0x80000152]:sw a1, 16(ra)<br>  |
|   6|[0x80003218]<br>0xFFFFDFFF|- rs1 : x12<br> - rs2 : x11<br> - rs1_val == 1<br> - rs2_val == -8193<br>                                                                                 |[0x80000162]:c.or a2, a1<br> [0x80000164]:sw a2, 20(ra)<br>  |
|   7|[0x8000321c]<br>0xFFFFEFFF|- rs1 : x10<br> - rs2 : x12<br> - rs2_val == 0<br> - rs1_val == -4097<br>                                                                                 |[0x80000174]:c.or a0, a2<br> [0x80000176]:sw a0, 24(ra)<br>  |
|   8|[0x80003220]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x14<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -2049<br>                                        |[0x8000018a]:c.or s0, a4<br> [0x8000018c]:sw fp, 28(ra)<br>  |
|   9|[0x80003224]<br>0xFFF7FFFF|- rs2_val == 1<br> - rs1_val == -524289<br>                                                                                                               |[0x8000019c]:c.or a0, a1<br> [0x8000019e]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x00002002|- rs2_val == 8192<br> - rs1_val == 2<br>                                                                                                                  |[0x800001aa]:c.or a0, a1<br> [0x800001ac]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0xFFFFFFFE|- rs2_val == -2<br> - rs1_val == 4<br>                                                                                                                    |[0x800001b8]:c.or a0, a1<br> [0x800001ba]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00000009|- rs1_val == 8<br>                                                                                                                                        |[0x800001c6]:c.or a0, a1<br> [0x800001c8]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0xFEFFFFFF|- rs2_val == -16777217<br> - rs1_val == 16<br>                                                                                                            |[0x800001d8]:c.or a0, a1<br> [0x800001da]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFFFBFFFF|- rs2_val == -262145<br> - rs1_val == 32<br>                                                                                                              |[0x800001ea]:c.or a0, a1<br> [0x800001ec]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0xFFFFBFFF|- rs1_val == 64<br>                                                                                                                                       |[0x800001fc]:c.or a0, a1<br> [0x800001fe]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x02000080|- rs2_val == 33554432<br> - rs1_val == 128<br>                                                                                                            |[0x8000020a]:c.or a0, a1<br> [0x8000020c]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00002100|- rs1_val == 256<br>                                                                                                                                      |[0x80000218]:c.or a0, a1<br> [0x8000021a]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00200200|- rs2_val == 2097152<br> - rs1_val == 512<br>                                                                                                             |[0x80000226]:c.or a0, a1<br> [0x80000228]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x55555555|- rs2_val == 1431655765<br> - rs1_val == 1024<br>                                                                                                         |[0x80000238]:c.or a0, a1<br> [0x8000023a]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00001800|- rs2_val == 4096<br> - rs1_val == 2048<br>                                                                                                               |[0x8000024a]:c.or a0, a1<br> [0x8000024c]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00011000|- rs2_val == 65536<br> - rs1_val == 4096<br>                                                                                                              |[0x80000258]:c.or a0, a1<br> [0x8000025a]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00402000|- rs2_val == 4194304<br> - rs1_val == 8192<br>                                                                                                            |[0x80000266]:c.or a0, a1<br> [0x80000268]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00004001|- rs1_val == 16384<br>                                                                                                                                    |[0x80000274]:c.or a0, a1<br> [0x80000276]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x08008000|- rs2_val == 134217728<br> - rs1_val == 32768<br>                                                                                                         |[0x80000282]:c.or a0, a1<br> [0x80000284]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0xFFFFFFBF|- rs2_val == -65<br> - rs1_val == 65536<br>                                                                                                               |[0x80000290]:c.or a0, a1<br> [0x80000292]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00020001|- rs1_val == 131072<br>                                                                                                                                   |[0x8000029e]:c.or a0, a1<br> [0x800002a0]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0xC0040000|- rs1_val == 262144<br>                                                                                                                                   |[0x800002ac]:c.or a0, a1<br> [0x800002ae]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0xFFF7FFFF|- rs2_val == -524289<br> - rs1_val == 1048576<br>                                                                                                         |[0x800002be]:c.or a0, a1<br> [0x800002c0]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0xFFFFFFF8|- rs1_val == 2097152<br>                                                                                                                                  |[0x800002cc]:c.or a0, a1<br> [0x800002ce]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x02400000|- rs1_val == 4194304<br>                                                                                                                                  |[0x800002da]:c.or a0, a1<br> [0x800002dc]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0xFFFFEFFF|- rs2_val == -4097<br> - rs1_val == 8388608<br>                                                                                                           |[0x800002ec]:c.or a0, a1<br> [0x800002ee]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0xFFFBFFFF|- rs1_val == 16777216<br>                                                                                                                                 |[0x800002fe]:c.or a0, a1<br> [0x80000300]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x82000000|- rs1_val == 33554432<br>                                                                                                                                 |[0x8000030c]:c.or a0, a1<br> [0x8000030e]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x06000000|- rs1_val == 67108864<br>                                                                                                                                 |[0x8000031a]:c.or a0, a1<br> [0x8000031c]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x08800000|- rs2_val == 8388608<br> - rs1_val == 134217728<br>                                                                                                       |[0x80000328]:c.or a0, a1<br> [0x8000032a]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0xFFFFFFFB|- rs2_val == -5<br> - rs1_val == 268435456<br>                                                                                                            |[0x80000336]:c.or a0, a1<br> [0x80000338]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x20004000|- rs2_val == 16384<br> - rs1_val == 536870912<br>                                                                                                         |[0x80000344]:c.or a0, a1<br> [0x80000346]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x41000000|- rs2_val == 16777216<br> - rs1_val == 1073741824<br>                                                                                                     |[0x80000352]:c.or a0, a1<br> [0x80000354]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0xFFFFFFFF|- rs2_val == -131073<br> - rs1_val == -2<br>                                                                                                              |[0x80000364]:c.or a0, a1<br> [0x80000366]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                       |[0x80000372]:c.or a0, a1<br> [0x80000374]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0xFFFFFFFB|- rs2_val == 8<br> - rs1_val == -5<br>                                                                                                                    |[0x80000380]:c.or a0, a1<br> [0x80000382]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFFFFFFF|- rs2_val == -33<br> - rs1_val == -9<br>                                                                                                                  |[0x8000038e]:c.or a0, a1<br> [0x80000390]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFFFFFFFF|- rs2_val == -268435457<br> - rs1_val == -17<br>                                                                                                          |[0x800003a0]:c.or a0, a1<br> [0x800003a2]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0xFFFFFFFF|- rs2_val == -4194305<br>                                                                                                                                 |[0x800003b6]:c.or a0, a1<br> [0x800003b8]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFFFFFFFF|- rs2_val == -8388609<br> - rs1_val == -257<br>                                                                                                           |[0x800003c8]:c.or a0, a1<br> [0x800003ca]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                |[0x800003da]:c.or a0, a1<br> [0x800003dc]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                |[0x800003ec]:c.or a0, a1<br> [0x800003ee]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xFFFFFFFF|- rs2_val == -134217729<br>                                                                                                                               |[0x80000402]:c.or a0, a1<br> [0x80000404]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                               |[0x80000414]:c.or a0, a1<br> [0x80000416]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                              |[0x80000426]:c.or a0, a1<br> [0x80000428]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0xBAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                              |[0x80000438]:c.or a0, a1<br> [0x8000043a]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                      |[0x8000044a]:c.or a0, a1<br> [0x8000044c]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0xFFFFFFBF|- rs2_val == 2048<br> - rs1_val == -65<br>                                                                                                                |[0x8000045c]:c.or a0, a1<br> [0x8000045e]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0xFFFFFFFF|- rs2_val == -9<br> - rs1_val == -129<br>                                                                                                                 |[0x8000046a]:c.or a0, a1<br> [0x8000046c]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                                     |[0x80000478]:c.or a0, a1<br> [0x8000047a]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0xFFFFFBFF|- rs2_val == 262144<br> - rs1_val == -1025<br>                                                                                                            |[0x80000486]:c.or a0, a1<br> [0x80000488]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                    |[0x80000498]:c.or a0, a1<br> [0x8000049a]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                   |[0x800004aa]:c.or a0, a1<br> [0x800004ac]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                   |[0x800004bc]:c.or a0, a1<br> [0x800004be]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                   |[0x800004ce]:c.or a0, a1<br> [0x800004d0]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                  |[0x800004e0]:c.or a0, a1<br> [0x800004e2]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                  |[0x800004f2]:c.or a0, a1<br> [0x800004f4]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xFFFFFFFF|- rs2_val == -32769<br> - rs1_val == -1048577<br>                                                                                                         |[0x80000508]:c.or a0, a1<br> [0x8000050a]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0xFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                 |[0x8000051a]:c.or a0, a1<br> [0x8000051c]:sw a0, 252(ra)<br> |
|  65|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                 |[0x8000052c]:c.or a0, a1<br> [0x8000052e]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                 |[0x8000053e]:c.or a0, a1<br> [0x80000540]:sw a0, 260(ra)<br> |
|  67|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                |[0x80000554]:c.or a0, a1<br> [0x80000556]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                                |[0x8000056a]:c.or a0, a1<br> [0x8000056c]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                |[0x8000057c]:c.or a0, a1<br> [0x8000057e]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                               |[0x80000592]:c.or a0, a1<br> [0x80000594]:sw a0, 276(ra)<br> |
|  71|[0x8000331c]<br>0xFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                               |[0x800005a8]:c.or a0, a1<br> [0x800005aa]:sw a0, 280(ra)<br> |
|  72|[0x80003320]<br>0xFFFFFFFF|- rs2_val == -257<br> - rs1_val == -536870913<br>                                                                                                         |[0x800005ba]:c.or a0, a1<br> [0x800005bc]:sw a0, 284(ra)<br> |
|  73|[0x80003324]<br>0xBFFFFFFF|- rs2_val == 128<br> - rs1_val == -1073741825<br>                                                                                                         |[0x800005cc]:c.or a0, a1<br> [0x800005ce]:sw a0, 288(ra)<br> |
|  74|[0x80003328]<br>0xFFFFFFFF|- rs1_val == 1431655765<br>                                                                                                                               |[0x800005e2]:c.or a0, a1<br> [0x800005e4]:sw a0, 292(ra)<br> |
|  75|[0x8000332c]<br>0xAAAAAAAA|- rs2_val == 512<br> - rs1_val == -1431655766<br>                                                                                                         |[0x800005f4]:c.or a0, a1<br> [0x800005f6]:sw a0, 296(ra)<br> |
|  76|[0x80003330]<br>0x00010002|- rs2_val == 2<br>                                                                                                                                        |[0x80000602]:c.or a0, a1<br> [0x80000604]:sw a0, 300(ra)<br> |
|  77|[0x80003334]<br>0xFFFFDFFF|- rs2_val == 4<br>                                                                                                                                        |[0x80000614]:c.or a0, a1<br> [0x80000616]:sw a0, 304(ra)<br> |
|  78|[0x80003338]<br>0x00002020|- rs2_val == 32<br>                                                                                                                                       |[0x80000622]:c.or a0, a1<br> [0x80000624]:sw a0, 308(ra)<br> |
|  79|[0x8000333c]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                       |[0x80000630]:c.or a0, a1<br> [0x80000632]:sw a0, 312(ra)<br> |
|  80|[0x80003340]<br>0xFFFFDFFF|- rs2_val == 256<br>                                                                                                                                      |[0x80000642]:c.or a0, a1<br> [0x80000644]:sw a0, 316(ra)<br> |
|  81|[0x80003344]<br>0x00008009|- rs2_val == 32768<br>                                                                                                                                    |[0x80000650]:c.or a0, a1<br> [0x80000652]:sw a0, 320(ra)<br> |
|  82|[0x80003348]<br>0xFFFFFFFF|- rs2_val == -1048577<br>                                                                                                                                 |[0x80000666]:c.or a0, a1<br> [0x80000668]:sw a0, 324(ra)<br> |
|  83|[0x8000334c]<br>0xFFBFFFFF|- rs2_val == 67108864<br>                                                                                                                                 |[0x80000678]:c.or a0, a1<br> [0x8000067a]:sw a0, 328(ra)<br> |
|  84|[0x80003350]<br>0xFFFFFFF7|- rs2_val == 268435456<br>                                                                                                                                |[0x80000686]:c.or a0, a1<br> [0x80000688]:sw a0, 332(ra)<br> |
|  85|[0x80003354]<br>0xFFEFFFFF|- rs2_val == 536870912<br>                                                                                                                                |[0x80000698]:c.or a0, a1<br> [0x8000069a]:sw a0, 336(ra)<br> |
|  86|[0x80003358]<br>0xFFFFFF7F|- rs2_val == 1073741824<br>                                                                                                                               |[0x800006a6]:c.or a0, a1<br> [0x800006a8]:sw a0, 340(ra)<br> |
|  87|[0x8000335c]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                       |[0x800006b4]:c.or a0, a1<br> [0x800006b6]:sw a0, 344(ra)<br> |
|  88|[0x80003360]<br>0xFFFFFFFF|- rs2_val == -17<br>                                                                                                                                      |[0x800006c6]:c.or a0, a1<br> [0x800006c8]:sw a0, 348(ra)<br> |
|  89|[0x80003364]<br>0xFFFFFFFF|- rs2_val == -129<br>                                                                                                                                     |[0x800006d4]:c.or a0, a1<br> [0x800006d6]:sw a0, 352(ra)<br> |
|  90|[0x80003368]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                     |[0x800006e2]:c.or a0, a1<br> [0x800006e4]:sw a0, 356(ra)<br> |
|  91|[0x8000336c]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                    |[0x800006f0]:c.or a0, a1<br> [0x800006f2]:sw a0, 360(ra)<br> |
|  92|[0x80003370]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                    |[0x80000702]:c.or a0, a1<br> [0x80000704]:sw a0, 364(ra)<br> |
|  93|[0x80003374]<br>0xFFFFFFFF|- rs2_val == -65537<br>                                                                                                                                   |[0x80000718]:c.or a0, a1<br> [0x8000071a]:sw a0, 368(ra)<br> |
|  94|[0x80003378]<br>0xC0020000|- rs2_val == 131072<br>                                                                                                                                   |[0x80000726]:c.or a0, a1<br> [0x80000728]:sw a0, 372(ra)<br> |
|  95|[0x80003380]<br>0xFEFFFFFF|- rs2_val == 1048576<br>                                                                                                                                  |[0x80000746]:c.or a0, a1<br> [0x80000748]:sw a0, 380(ra)<br> |
|  96|[0x80003384]<br>0x00080010|- rs2_val == 16<br>                                                                                                                                       |[0x80000754]:c.or a0, a1<br> [0x80000756]:sw a0, 384(ra)<br> |
