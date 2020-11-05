
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000750')]      |
| SIG_REGION                | [('0x80003204', '0x80003394', '100 words')]      |
| COV_LABELS                | cand      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cand-01.S/cand-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 97      |
| STAT1                     | 97      |
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

|s.no|        signature         |                                                                                coverpoints                                                                                 |                             code                             |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : c.and<br> - rs1 : x12<br> - rs2 : x14<br> - rs1 != rs2<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs2_val == 65536<br> - rs1_val == -2147483648<br> |[0x80000108]:c.and a2, a4<br> [0x8000010a]:sw a2, 0(ra)<br>   |
|   2|[0x80003214]<br>0x00002000|- rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val == 8192<br> - rs1_val == 8192<br>                                                                                |[0x80000116]:c.and a5, a5<br> [0x80000118]:sw a5, 4(ra)<br>   |
|   3|[0x80003218]<br>0x00000000|- rs1 : x10<br> - rs2 : x11<br> - rs1_val == 0<br> - rs2_val == 1048576<br>                                                                                                 |[0x80000124]:c.and a0, a1<br> [0x80000126]:sw a0, 8(ra)<br>   |
|   4|[0x8000321c]<br>0x77FFFFFF|- rs1 : x8<br> - rs2 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val < 0<br> - rs2_val == -134217729<br> - rs1_val == 2147483647<br>                                   |[0x8000013a]:c.and s0, a3<br> [0x8000013c]:sw fp, 12(ra)<br>  |
|   5|[0x80003220]<br>0x00000001|- rs1 : x14<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == -257<br>                                                                                                     |[0x80000148]:c.and a4, s1<br> [0x8000014a]:sw a4, 16(ra)<br>  |
|   6|[0x80003224]<br>0x80000000|- rs1 : x13<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -33<br>                                                           |[0x80000156]:c.and a3, a0<br> [0x80000158]:sw a3, 20(ra)<br>  |
|   7|[0x80003228]<br>0x00000000|- rs1 : x11<br> - rs2 : x8<br> - rs2_val == 0<br> - rs1_val == 33554432<br>                                                                                                 |[0x80000164]:c.and a1, s0<br> [0x80000166]:sw a1, 24(ra)<br>  |
|   8|[0x8000322c]<br>0x7DFFFFFF|- rs1 : x9<br> - rs2 : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -33554433<br>                                                      |[0x8000017a]:c.and s1, a2<br> [0x8000017c]:sw s1, 28(ra)<br>  |
|   9|[0x80003230]<br>0x00000000|- rs2_val == 1<br> - rs1_val == -2<br>                                                                                                                                      |[0x80000188]:c.and a0, a1<br> [0x8000018a]:sw a0, 32(ra)<br>  |
|  10|[0x80003234]<br>0x00000002|- rs2_val == -268435457<br> - rs1_val == 2<br>                                                                                                                              |[0x8000019a]:c.and a0, a1<br> [0x8000019c]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0x00000000|- rs2_val == 64<br> - rs1_val == 4<br>                                                                                                                                      |[0x800001a8]:c.and a0, a1<br> [0x800001aa]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0x00000000|- rs2_val == 8388608<br> - rs1_val == 8<br>                                                                                                                                 |[0x800001b6]:c.and a0, a1<br> [0x800001b8]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0x00000000|- rs2_val == 262144<br> - rs1_val == 16<br>                                                                                                                                 |[0x800001c4]:c.and a0, a1<br> [0x800001c6]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0x00000000|- rs2_val == 4194304<br> - rs1_val == 32<br>                                                                                                                                |[0x800001d2]:c.and a0, a1<br> [0x800001d4]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0x00000040|- rs2_val == -65537<br> - rs1_val == 64<br>                                                                                                                                 |[0x800001e4]:c.and a0, a1<br> [0x800001e6]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                        |[0x800001f2]:c.and a0, a1<br> [0x800001f4]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                                        |[0x80000200]:c.and a0, a1<br> [0x80000202]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0x00000200|- rs2_val == -2097153<br> - rs1_val == 512<br>                                                                                                                              |[0x80000212]:c.and a0, a1<br> [0x80000214]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0x00000000|- rs2_val == 134217728<br> - rs1_val == 1024<br>                                                                                                                            |[0x80000220]:c.and a0, a1<br> [0x80000222]:sw a0, 72(ra)<br>  |
|  20|[0x8000325c]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                                                       |[0x80000232]:c.and a0, a1<br> [0x80000234]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                                                       |[0x80000240]:c.and a0, a1<br> [0x80000242]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0x00004000|- rs2_val == -1025<br> - rs1_val == 16384<br>                                                                                                                               |[0x8000024e]:c.and a0, a1<br> [0x80000250]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0x00000000|- rs2_val == 16777216<br> - rs1_val == 32768<br>                                                                                                                            |[0x8000025c]:c.and a0, a1<br> [0x8000025e]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0x00010000|- rs2_val == -1048577<br> - rs1_val == 65536<br>                                                                                                                            |[0x8000026e]:c.and a0, a1<br> [0x80000270]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x00020000|- rs1_val == 131072<br>                                                                                                                                                     |[0x80000280]:c.and a0, a1<br> [0x80000282]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0x00000000|- rs2_val == 4<br> - rs1_val == 262144<br>                                                                                                                                  |[0x8000028e]:c.and a0, a1<br> [0x80000290]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0x00080000|- rs2_val == -1431655766<br> - rs1_val == 524288<br>                                                                                                                        |[0x800002a0]:c.and a0, a1<br> [0x800002a2]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0x00000000|- rs2_val == 33554432<br> - rs1_val == 1048576<br>                                                                                                                          |[0x800002ae]:c.and a0, a1<br> [0x800002b0]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0x00000000|- rs2_val == 1024<br> - rs1_val == 2097152<br>                                                                                                                              |[0x800002bc]:c.and a0, a1<br> [0x800002be]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                    |[0x800002ca]:c.and a0, a1<br> [0x800002cc]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                                                    |[0x800002dc]:c.and a0, a1<br> [0x800002de]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x01000000|- rs1_val == 16777216<br>                                                                                                                                                   |[0x800002ea]:c.and a0, a1<br> [0x800002ec]:sw a0, 124(ra)<br> |
|  33|[0x80003290]<br>0x04000000|- rs2_val == -8193<br> - rs1_val == 67108864<br>                                                                                                                            |[0x800002fc]:c.and a0, a1<br> [0x800002fe]:sw a0, 128(ra)<br> |
|  34|[0x80003294]<br>0x00000000|- rs2_val == 512<br> - rs1_val == 134217728<br>                                                                                                                             |[0x8000030a]:c.and a0, a1<br> [0x8000030c]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x10000000|- rs2_val == -16777217<br> - rs1_val == 268435456<br>                                                                                                                       |[0x8000031c]:c.and a0, a1<br> [0x8000031e]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                                  |[0x8000032a]:c.and a0, a1<br> [0x8000032c]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                 |[0x80000338]:c.and a0, a1<br> [0x8000033a]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0xFFDFFFFD|- rs1_val == -3<br>                                                                                                                                                         |[0x8000034a]:c.and a0, a1<br> [0x8000034c]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0x80000000|- rs1_val == -5<br>                                                                                                                                                         |[0x80000358]:c.and a0, a1<br> [0x8000035a]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0xFBFFFFF7|- rs2_val == -67108865<br> - rs1_val == -9<br>                                                                                                                              |[0x8000036a]:c.and a0, a1<br> [0x8000036c]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0xFFFBFFEF|- rs2_val == -262145<br> - rs1_val == -17<br>                                                                                                                               |[0x8000037c]:c.and a0, a1<br> [0x8000037e]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0xFFFFFEBF|- rs1_val == -65<br>                                                                                                                                                        |[0x8000038a]:c.and a0, a1<br> [0x8000038c]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0x00020000|- rs2_val == -4194305<br>                                                                                                                                                   |[0x8000039c]:c.and a0, a1<br> [0x8000039e]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0x00004000|- rs2_val == -8388609<br>                                                                                                                                                   |[0x800003ae]:c.and a0, a1<br> [0x800003b0]:sw a0, 172(ra)<br> |
|  45|[0x800032c0]<br>0x00008000|- rs2_val == -33554433<br>                                                                                                                                                  |[0x800003c0]:c.and a0, a1<br> [0x800003c2]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0xDFFFFFEF|- rs2_val == -536870913<br>                                                                                                                                                 |[0x800003d2]:c.and a0, a1<br> [0x800003d4]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0x00000080|- rs2_val == -1073741825<br>                                                                                                                                                |[0x800003e4]:c.and a0, a1<br> [0x800003e6]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == 1431655765<br>                                                                                                                                                 |[0x800003fa]:c.and a0, a1<br> [0x800003fc]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0xFFFFFF3F|- rs2_val == -65<br> - rs1_val == -129<br>                                                                                                                                  |[0x80000408]:c.and a0, a1<br> [0x8000040a]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0x00800000|- rs1_val == -257<br>                                                                                                                                                       |[0x80000416]:c.and a0, a1<br> [0x80000418]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0x80000000|- rs1_val == -513<br>                                                                                                                                                       |[0x80000424]:c.and a0, a1<br> [0x80000426]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0x7FFFFBFF|- rs1_val == -1025<br>                                                                                                                                                      |[0x80000436]:c.and a0, a1<br> [0x80000438]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0xFFFFF7F7|- rs2_val == -9<br> - rs1_val == -2049<br>                                                                                                                                  |[0x80000448]:c.and a0, a1<br> [0x8000044a]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0x00000000|- rs1_val == -4097<br>                                                                                                                                                      |[0x8000045a]:c.and a0, a1<br> [0x8000045c]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0x40000000|- rs2_val == 1073741824<br> - rs1_val == -8193<br>                                                                                                                          |[0x8000046c]:c.and a0, a1<br> [0x8000046e]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0xFFFFBFF9|- rs1_val == -16385<br>                                                                                                                                                     |[0x8000047e]:c.and a0, a1<br> [0x80000480]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0x00000005|- rs1_val == -32769<br>                                                                                                                                                     |[0x80000490]:c.and a0, a1<br> [0x80000492]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0x00000010|- rs2_val == 16<br> - rs1_val == -65537<br>                                                                                                                                 |[0x800004a2]:c.and a0, a1<br> [0x800004a4]:sw a0, 228(ra)<br> |
|  59|[0x800032f8]<br>0x00040000|- rs1_val == -131073<br>                                                                                                                                                    |[0x800004b4]:c.and a0, a1<br> [0x800004b6]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0x00080000|- rs2_val == 524288<br> - rs1_val == -262145<br>                                                                                                                            |[0x800004c6]:c.and a0, a1<br> [0x800004c8]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0x00400000|- rs1_val == -524289<br>                                                                                                                                                    |[0x800004d8]:c.and a0, a1<br> [0x800004da]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0x00000200|- rs1_val == -1048577<br>                                                                                                                                                   |[0x800004ea]:c.and a0, a1<br> [0x800004ec]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0xFFDFFFFA|- rs1_val == -2097153<br>                                                                                                                                                   |[0x800004fc]:c.and a0, a1<br> [0x800004fe]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0x00000040|- rs1_val == -4194305<br>                                                                                                                                                   |[0x8000050e]:c.and a0, a1<br> [0x80000510]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0xFF7EFFFF|- rs1_val == -8388609<br>                                                                                                                                                   |[0x80000524]:c.and a0, a1<br> [0x80000526]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0x00000080|- rs2_val == 128<br> - rs1_val == -16777217<br>                                                                                                                             |[0x80000536]:c.and a0, a1<br> [0x80000538]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0x00000007|- rs1_val == -67108865<br>                                                                                                                                                  |[0x80000548]:c.and a0, a1<br> [0x8000054a]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xF7FFFF7F|- rs2_val == -129<br> - rs1_val == -134217729<br>                                                                                                                           |[0x8000055a]:c.and a0, a1<br> [0x8000055c]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0x00000007|- rs1_val == -268435457<br>                                                                                                                                                 |[0x8000056c]:c.and a0, a1<br> [0x8000056e]:sw a0, 272(ra)<br> |
|  70|[0x80003324]<br>0x00002000|- rs1_val == -536870913<br>                                                                                                                                                 |[0x8000057e]:c.and a0, a1<br> [0x80000580]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0x00800000|- rs1_val == -1073741825<br>                                                                                                                                                |[0x80000590]:c.and a0, a1<br> [0x80000592]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0x15555555|- rs1_val == 1431655765<br>                                                                                                                                                 |[0x800005a6]:c.and a0, a1<br> [0x800005a8]:sw a0, 284(ra)<br> |
|  73|[0x80003330]<br>0xAAAAAAAA|- rs2_val == -5<br> - rs1_val == -1431655766<br>                                                                                                                            |[0x800005b8]:c.and a0, a1<br> [0x800005ba]:sw a0, 288(ra)<br> |
|  74|[0x80003334]<br>0x00000000|- rs2_val == 2<br>                                                                                                                                                          |[0x800005c6]:c.and a0, a1<br> [0x800005c8]:sw a0, 292(ra)<br> |
|  75|[0x80003338]<br>0x00000008|- rs2_val == 8<br>                                                                                                                                                          |[0x800005d4]:c.and a0, a1<br> [0x800005d6]:sw a0, 296(ra)<br> |
|  76|[0x8000333c]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                                         |[0x800005e2]:c.and a0, a1<br> [0x800005e4]:sw a0, 300(ra)<br> |
|  77|[0x80003340]<br>0x00000000|- rs2_val == 256<br>                                                                                                                                                        |[0x800005f0]:c.and a0, a1<br> [0x800005f2]:sw a0, 304(ra)<br> |
|  78|[0x80003344]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                       |[0x80000602]:c.and a0, a1<br> [0x80000604]:sw a0, 308(ra)<br> |
|  79|[0x80003348]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                                       |[0x80000614]:c.and a0, a1<br> [0x80000616]:sw a0, 312(ra)<br> |
|  80|[0x8000334c]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                      |[0x80000622]:c.and a0, a1<br> [0x80000624]:sw a0, 316(ra)<br> |
|  81|[0x80003350]<br>0x00000000|- rs2_val == 32768<br>                                                                                                                                                      |[0x80000630]:c.and a0, a1<br> [0x80000632]:sw a0, 320(ra)<br> |
|  82|[0x80003354]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                                                     |[0x80000642]:c.and a0, a1<br> [0x80000644]:sw a0, 324(ra)<br> |
|  83|[0x80003358]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                   |[0x80000650]:c.and a0, a1<br> [0x80000652]:sw a0, 328(ra)<br> |
|  84|[0x8000335c]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                  |[0x8000065e]:c.and a0, a1<br> [0x80000660]:sw a0, 332(ra)<br> |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                                  |[0x8000066c]:c.and a0, a1<br> [0x8000066e]:sw a0, 336(ra)<br> |
|  86|[0x80003364]<br>0xFFFFFFEE|- rs2_val == -2<br>                                                                                                                                                         |[0x8000067a]:c.and a0, a1<br> [0x8000067c]:sw a0, 340(ra)<br> |
|  87|[0x80003368]<br>0xFFFF7FFD|- rs2_val == -3<br>                                                                                                                                                         |[0x8000068c]:c.and a0, a1<br> [0x8000068e]:sw a0, 344(ra)<br> |
|  88|[0x8000336c]<br>0xFFFFFFE9|- rs2_val == -17<br>                                                                                                                                                        |[0x8000069a]:c.and a0, a1<br> [0x8000069c]:sw a0, 348(ra)<br> |
|  89|[0x80003370]<br>0x08000000|- rs2_val == -33<br>                                                                                                                                                        |[0x800006a8]:c.and a0, a1<br> [0x800006aa]:sw a0, 352(ra)<br> |
|  90|[0x80003374]<br>0xFFFFBDFF|- rs2_val == -513<br>                                                                                                                                                       |[0x800006ba]:c.and a0, a1<br> [0x800006bc]:sw a0, 356(ra)<br> |
|  91|[0x80003378]<br>0xFFFFF7FD|- rs2_val == -2049<br>                                                                                                                                                      |[0x800006cc]:c.and a0, a1<br> [0x800006ce]:sw a0, 360(ra)<br> |
|  92|[0x8000337c]<br>0x00000040|- rs2_val == -4097<br>                                                                                                                                                      |[0x800006de]:c.and a0, a1<br> [0x800006e0]:sw a0, 364(ra)<br> |
|  93|[0x80003380]<br>0xFDFFBFFF|- rs2_val == -16385<br>                                                                                                                                                     |[0x800006f4]:c.and a0, a1<br> [0x800006f6]:sw a0, 368(ra)<br> |
|  94|[0x80003384]<br>0xFFFF5FFF|- rs2_val == -32769<br>                                                                                                                                                     |[0x8000070a]:c.and a0, a1<br> [0x8000070c]:sw a0, 372(ra)<br> |
|  95|[0x80003388]<br>0xAAA8AAAA|- rs2_val == -131073<br>                                                                                                                                                    |[0x80000720]:c.and a0, a1<br> [0x80000722]:sw a0, 376(ra)<br> |
|  96|[0x8000338c]<br>0x00020000|- rs2_val == -524289<br>                                                                                                                                                    |[0x80000732]:c.and a0, a1<br> [0x80000734]:sw a0, 380(ra)<br> |
|  97|[0x80003390]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                                    |[0x80000744]:c.and a0, a1<br> [0x80000746]:sw a0, 384(ra)<br> |
