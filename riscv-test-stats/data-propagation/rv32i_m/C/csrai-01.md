
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000430')]      |
| SIG_REGION                | [('0x80003204', '0x80003320', '71 words')]      |
| COV_LABELS                | csrai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrai-01.S/csrai-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
| Total Signature Updates   | 71      |
| STAT1                     | 71      |
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

|s.no|        signature         |                                                             coverpoints                                                             |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFDFF|- opcode : c.srai<br> - rs1 : x9<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -134217729<br>                                |[0x80000108]:c.srai s1, 18<br> [0x8000010a]:sw s1, 0(ra)<br>   |
|   2|[0x80003208]<br>0x00000000|- rs1 : x12<br> - rs1_val > 0 and imm_val < xlen<br>                                                                                 |[0x80000112]:c.srai a2, 3<br> [0x80000114]:sw a2, 4(ra)<br>    |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x15<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                        |[0x8000011c]:c.srai a5, 6<br> [0x8000011e]:sw a5, 8(ra)<br>    |
|   4|[0x80003210]<br>0xFFFF0000|- rs1 : x11<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 15<br> |[0x80000126]:c.srai a1, 15<br> [0x80000128]:sw a1, 12(ra)<br>  |
|   5|[0x80003214]<br>0x00000000|- rs1 : x14<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                               |[0x80000130]:c.srai a4, 19<br> [0x80000132]:sw a4, 16(ra)<br>  |
|   6|[0x80003218]<br>0x07FFFFFF|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 4<br>   |[0x8000013e]:c.srai s0, 4<br> [0x80000140]:sw fp, 20(ra)<br>   |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x10<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 2<br>                         |[0x80000148]:c.srai a0, 2<br> [0x8000014a]:sw a0, 24(ra)<br>   |
|   8|[0x80003220]<br>0x00000001|- rs1 : x13<br> - imm_val == 1<br>                                                                                                   |[0x80000152]:c.srai a3, 1<br> [0x80000154]:sw a3, 28(ra)<br>   |
|   9|[0x80003224]<br>0xFFFFFFFF|- imm_val == 8<br>                                                                                                                   |[0x8000015c]:c.srai a0, 8<br> [0x8000015e]:sw a0, 32(ra)<br>   |
|  10|[0x80003228]<br>0xFFFFFFFF|- rs1_val == -5<br> - imm_val == 16<br>                                                                                              |[0x80000166]:c.srai a0, 16<br> [0x80000168]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0x00000000|- rs1_val == 1024<br> - imm_val == 30<br>                                                                                            |[0x80000170]:c.srai a0, 30<br> [0x80000172]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0xFFFFFFFF|- rs1_val == -67108865<br> - imm_val == 29<br>                                                                                       |[0x8000017e]:c.srai a0, 29<br> [0x80000180]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0xFFFFFFFF|- rs1_val == -33<br> - imm_val == 27<br>                                                                                             |[0x80000188]:c.srai a0, 27<br> [0x8000018a]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFFFFFFFF|- rs1_val == -2097153<br> - imm_val == 23<br>                                                                                        |[0x80000196]:c.srai a0, 23<br> [0x80000198]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0xFFFFFFFF|- rs1_val == -1048577<br> - imm_val == 21<br>                                                                                        |[0x800001a4]:c.srai a0, 21<br> [0x800001a6]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000080|- rs1_val == 131072<br> - imm_val == 10<br>                                                                                          |[0x800001ae]:c.srai a0, 10<br> [0x800001b0]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000000|- rs1_val == 2<br>                                                                                                                   |[0x800001b8]:c.srai a0, 4<br> [0x800001ba]:sw a0, 64(ra)<br>   |
|  18|[0x80003248]<br>0x00000000|- rs1_val == 4<br>                                                                                                                   |[0x800001c2]:c.srai a0, 4<br> [0x800001c4]:sw a0, 68(ra)<br>   |
|  19|[0x8000324c]<br>0x00000000|- rs1_val == 8<br>                                                                                                                   |[0x800001cc]:c.srai a0, 9<br> [0x800001ce]:sw a0, 72(ra)<br>   |
|  20|[0x80003250]<br>0x00000000|- rs1_val == 16<br>                                                                                                                  |[0x800001d6]:c.srai a0, 10<br> [0x800001d8]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00000000|- rs1_val == 32<br>                                                                                                                  |[0x800001e0]:c.srai a0, 29<br> [0x800001e2]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00000000|- rs1_val == 64<br>                                                                                                                  |[0x800001ea]:c.srai a0, 12<br> [0x800001ec]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00000000|- rs1_val == 128<br>                                                                                                                 |[0x800001f4]:c.srai a0, 23<br> [0x800001f6]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00000000|- rs1_val == 256<br>                                                                                                                 |[0x800001fe]:c.srai a0, 16<br> [0x80000200]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0x00000000|- rs1_val == 512<br>                                                                                                                 |[0x80000208]:c.srai a0, 17<br> [0x8000020a]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00000010|- rs1_val == 2048<br>                                                                                                                |[0x80000216]:c.srai a0, 7<br> [0x80000218]:sw a0, 100(ra)<br>  |
|  27|[0x8000326c]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                |[0x80000220]:c.srai a0, 14<br> [0x80000222]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0x00000000|- rs1_val == 8192<br>                                                                                                                |[0x8000022a]:c.srai a0, 29<br> [0x8000022c]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x00000080|- rs1_val == 16384<br>                                                                                                               |[0x80000234]:c.srai a0, 7<br> [0x80000236]:sw a0, 112(ra)<br>  |
|  30|[0x80003278]<br>0x00000000|- rs1_val == 32768<br>                                                                                                               |[0x8000023e]:c.srai a0, 17<br> [0x80000240]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00000400|- rs1_val == 65536<br>                                                                                                               |[0x80000248]:c.srai a0, 6<br> [0x8000024a]:sw a0, 120(ra)<br>  |
|  32|[0x80003280]<br>0x00000002|- rs1_val == 262144<br>                                                                                                              |[0x80000252]:c.srai a0, 17<br> [0x80000254]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 524288<br>                                                                                                              |[0x8000025c]:c.srai a0, 21<br> [0x8000025e]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x00000100|- rs1_val == 1048576<br>                                                                                                             |[0x80000266]:c.srai a0, 12<br> [0x80000268]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                             |[0x80000270]:c.srai a0, 30<br> [0x80000272]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x00020000|- rs1_val == 4194304<br>                                                                                                             |[0x8000027a]:c.srai a0, 5<br> [0x8000027c]:sw a0, 140(ra)<br>  |
|  37|[0x80003294]<br>0x00080000|- rs1_val == 8388608<br>                                                                                                             |[0x80000284]:c.srai a0, 4<br> [0x80000286]:sw a0, 144(ra)<br>  |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                            |[0x8000028e]:c.srai a0, 29<br> [0x80000290]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0x00000004|- rs1_val == 33554432<br>                                                                                                            |[0x80000298]:c.srai a0, 23<br> [0x8000029a]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0x00000080|- rs1_val == 67108864<br>                                                                                                            |[0x800002a2]:c.srai a0, 19<br> [0x800002a4]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                               |[0x800002b0]:c.srai a0, 27<br> [0x800002b2]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFFFFFFE|- rs1_val == -16385<br>                                                                                                              |[0x800002be]:c.srai a0, 14<br> [0x800002c0]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFFFFEFFF|- rs1_val == -32769<br>                                                                                                              |[0x800002cc]:c.srai a0, 3<br> [0x800002ce]:sw a0, 168(ra)<br>  |
|  44|[0x800032b0]<br>0xFFFFF7FF|- rs1_val == -65537<br>                                                                                                              |[0x800002da]:c.srai a0, 5<br> [0x800002dc]:sw a0, 172(ra)<br>  |
|  45|[0x800032b4]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                             |[0x800002e8]:c.srai a0, 27<br> [0x800002ea]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFFFFFFDF|- rs1_val == -262145<br>                                                                                                             |[0x800002f6]:c.srai a0, 13<br> [0x800002f8]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFFFFEFFF|- rs1_val == -524289<br>                                                                                                             |[0x80000304]:c.srai a0, 7<br> [0x80000306]:sw a0, 184(ra)<br>  |
|  48|[0x800032c0]<br>0xFFFFEFFF|- rs1_val == -4194305<br>                                                                                                            |[0x80000312]:c.srai a0, 10<br> [0x80000314]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xFFBFFFFF|- rs1_val == -8388609<br>                                                                                                            |[0x80000320]:c.srai a0, 1<br> [0x80000322]:sw a0, 192(ra)<br>  |
|  50|[0x800032c8]<br>0xFFFF7FFF|- rs1_val == -16777217<br>                                                                                                           |[0x8000032e]:c.srai a0, 9<br> [0x80000330]:sw a0, 196(ra)<br>  |
|  51|[0x800032cc]<br>0xFFFFFEFF|- rs1_val == -33554433<br>                                                                                                           |[0x8000033c]:c.srai a0, 17<br> [0x8000033e]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0xFFFFFFFF|- rs1_val == -268435457<br>                                                                                                          |[0x8000034a]:c.srai a0, 30<br> [0x8000034c]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0xFFFEFFFF|- rs1_val == -536870913<br>                                                                                                          |[0x80000358]:c.srai a0, 13<br> [0x8000035a]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0xFFFFF7FF|- rs1_val == -1073741825<br>                                                                                                         |[0x80000366]:c.srai a0, 19<br> [0x80000368]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0x00000002|- rs1_val == 1431655765<br>                                                                                                          |[0x80000374]:c.srai a0, 29<br> [0x80000376]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0xFFFFFFFE|- rs1_val == -1431655766<br>                                                                                                         |[0x80000382]:c.srai a0, 30<br> [0x80000384]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0x00000001|- rs1_val == 134217728<br>                                                                                                           |[0x8000038c]:c.srai a0, 27<br> [0x8000038e]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0x00004000|- rs1_val == 268435456<br>                                                                                                           |[0x80000396]:c.srai a0, 14<br> [0x80000398]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x00001000|- rs1_val == 536870912<br>                                                                                                           |[0x800003a0]:c.srai a0, 17<br> [0x800003a2]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0x10000000|- rs1_val == 1073741824<br>                                                                                                          |[0x800003aa]:c.srai a0, 2<br> [0x800003ac]:sw a0, 236(ra)<br>  |
|  61|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                  |[0x800003b4]:c.srai a0, 10<br> [0x800003b6]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                  |[0x800003be]:c.srai a0, 16<br> [0x800003c0]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                  |[0x800003c8]:c.srai a0, 7<br> [0x800003ca]:sw a0, 248(ra)<br>  |
|  64|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                 |[0x800003d2]:c.srai a0, 6<br> [0x800003d4]:sw a0, 252(ra)<br>  |
|  65|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                 |[0x800003dc]:c.srai a0, 13<br> [0x800003de]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0xFFFFFFF7|- rs1_val == -129<br>                                                                                                                |[0x800003e6]:c.srai a0, 4<br> [0x800003e8]:sw a0, 260(ra)<br>  |
|  67|[0x8000330c]<br>0xFFFFFFEF|- rs1_val == -257<br>                                                                                                                |[0x800003f0]:c.srai a0, 4<br> [0x800003f2]:sw a0, 264(ra)<br>  |
|  68|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                |[0x800003fa]:c.srai a0, 13<br> [0x800003fc]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                               |[0x80000404]:c.srai a0, 23<br> [0x80000406]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                               |[0x80000412]:c.srai a0, 30<br> [0x80000414]:sw a0, 276(ra)<br> |
|  71|[0x8000331c]<br>0xFFFFFFFB|- rs1_val == -4097<br>                                                                                                               |[0x80000420]:c.srai a0, 10<br> [0x80000422]:sw a0, 280(ra)<br> |
