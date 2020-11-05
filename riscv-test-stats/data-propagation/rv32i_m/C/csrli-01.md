
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
| SIG_REGION                | [('0x80003204', '0x80003330', '75 words')]      |
| COV_LABELS                | csrli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrli-01.S/csrli-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
| Total Signature Updates   | 72      |
| STAT1                     | 72      |
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

|s.no|        signature         |                                                            coverpoints                                                             |                             code                              |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0x0001FFFF|- opcode : c.srli<br> - rs1 : x11<br> - rs1_val < 0 and imm_val < xlen<br> - imm_val == 15<br>                                      |[0x80000104]:c.srli a1, 15<br> [0x80000106]:sw a1, 0(ra)<br>   |
|   2|[0x80003214]<br>0x00000000|- rs1 : x12<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 32768<br>                                                         |[0x8000010e]:c.srli a2, 17<br> [0x80000110]:sw a2, 4(ra)<br>   |
|   3|[0x80003218]<br>0x00000000|- rs1 : x10<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                       |[0x80000118]:c.srli a0, 6<br> [0x8000011a]:sw a0, 8(ra)<br>    |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x14<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                    |[0x80000122]:c.srli a4, 31<br> [0x80000124]:sw a4, 12(ra)<br>  |
|   5|[0x80003220]<br>0x00000000|- rs1 : x8<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - imm_val == 21<br>                                           |[0x8000012c]:c.srli s0, 21<br> [0x8000012e]:sw fp, 16(ra)<br>  |
|   6|[0x80003224]<br>0x0000000F|- rs1 : x9<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 27<br> |[0x8000013a]:c.srli s1, 27<br> [0x8000013c]:sw s1, 20(ra)<br>  |
|   7|[0x80003228]<br>0x00000000|- rs1 : x15<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                           |[0x80000144]:c.srli a5, 7<br> [0x80000146]:sw a5, 24(ra)<br>   |
|   8|[0x8000322c]<br>0x7FFFFFF7|- rs1 : x13<br> - rs1_val == -17<br> - imm_val == 1<br>                                                                             |[0x8000014e]:c.srli a3, 1<br> [0x80000150]:sw a3, 28(ra)<br>   |
|   9|[0x80003230]<br>0x00000002|- imm_val == 2<br>                                                                                                                  |[0x80000158]:c.srli a0, 2<br> [0x8000015a]:sw a0, 32(ra)<br>   |
|  10|[0x80003234]<br>0x0AAAAAAA|- rs1_val == -1431655766<br> - imm_val == 4<br>                                                                                     |[0x80000166]:c.srli a0, 4<br> [0x80000168]:sw a0, 36(ra)<br>   |
|  11|[0x80003238]<br>0x00000400|- rs1_val == 262144<br> - imm_val == 8<br>                                                                                          |[0x80000170]:c.srli a0, 8<br> [0x80000172]:sw a0, 40(ra)<br>   |
|  12|[0x8000323c]<br>0x00008000|- imm_val == 16<br>                                                                                                                 |[0x8000017a]:c.srli a0, 16<br> [0x8000017c]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0x00000003|- imm_val == 30<br>                                                                                                                 |[0x80000184]:c.srli a0, 30<br> [0x80000186]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0x00000000|- rs1_val == 8388608<br> - imm_val == 29<br>                                                                                        |[0x8000018e]:c.srli a0, 29<br> [0x80000190]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0x00000000|- rs1_val == 512<br> - imm_val == 23<br>                                                                                            |[0x80000198]:c.srli a0, 23<br> [0x8000019a]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x00000000|- rs1_val == 128<br> - imm_val == 10<br>                                                                                            |[0x800001a2]:c.srli a0, 10<br> [0x800001a4]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x00000000|- rs1_val == 2<br>                                                                                                                  |[0x800001ac]:c.srli a0, 29<br> [0x800001ae]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0x00000000|- rs1_val == 4<br>                                                                                                                  |[0x800001b6]:c.srli a0, 12<br> [0x800001b8]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0x00000000|- rs1_val == 8<br>                                                                                                                  |[0x800001c0]:c.srli a0, 4<br> [0x800001c2]:sw a0, 72(ra)<br>   |
|  20|[0x8000325c]<br>0x00000000|- rs1_val == 16<br>                                                                                                                 |[0x800001ca]:c.srli a0, 23<br> [0x800001cc]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x00000000|- rs1_val == 32<br>                                                                                                                 |[0x800001d4]:c.srli a0, 13<br> [0x800001d6]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0x00000000|- rs1_val == 64<br>                                                                                                                 |[0x800001de]:c.srli a0, 12<br> [0x800001e0]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0x00000000|- rs1_val == 256<br>                                                                                                                |[0x800001e8]:c.srli a0, 19<br> [0x800001ea]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0x00000000|- rs1_val == 1024<br>                                                                                                               |[0x800001f2]:c.srli a0, 18<br> [0x800001f4]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x00000002|- rs1_val == 2048<br>                                                                                                               |[0x80000200]:c.srli a0, 10<br> [0x80000202]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0x00000000|- rs1_val == 4096<br>                                                                                                               |[0x8000020a]:c.srli a0, 19<br> [0x8000020c]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0x00000000|- rs1_val == 8192<br>                                                                                                               |[0x80000214]:c.srli a0, 16<br> [0x80000216]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0x00000080|- rs1_val == 16384<br>                                                                                                              |[0x8000021e]:c.srli a0, 7<br> [0x80000220]:sw a0, 108(ra)<br>  |
|  29|[0x80003280]<br>0x00008000|- rs1_val == 65536<br>                                                                                                              |[0x80000228]:c.srli a0, 1<br> [0x8000022a]:sw a0, 112(ra)<br>  |
|  30|[0x80003284]<br>0x00000002|- rs1_val == 131072<br>                                                                                                             |[0x80000232]:c.srli a0, 16<br> [0x80000234]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0x00000004|- rs1_val == 524288<br>                                                                                                             |[0x8000023c]:c.srli a0, 17<br> [0x8000023e]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x00020000|- rs1_val == 1048576<br>                                                                                                            |[0x80000246]:c.srli a0, 3<br> [0x80000248]:sw a0, 124(ra)<br>  |
|  33|[0x80003290]<br>0x00040000|- rs1_val == 2097152<br>                                                                                                            |[0x80000250]:c.srli a0, 3<br> [0x80000252]:sw a0, 128(ra)<br>  |
|  34|[0x80003294]<br>0x00100000|- rs1_val == 4194304<br>                                                                                                            |[0x8000025a]:c.srli a0, 2<br> [0x8000025c]:sw a0, 132(ra)<br>  |
|  35|[0x80003298]<br>0x00000800|- rs1_val == 16777216<br>                                                                                                           |[0x80000264]:c.srli a0, 13<br> [0x80000266]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0x00080000|- rs1_val == 33554432<br>                                                                                                           |[0x8000026e]:c.srli a0, 6<br> [0x80000270]:sw a0, 140(ra)<br>  |
|  37|[0x800032a0]<br>0x00001000|- rs1_val == 67108864<br>                                                                                                           |[0x80000278]:c.srli a0, 14<br> [0x8000027a]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0x00000200|- rs1_val == 134217728<br>                                                                                                          |[0x80000282]:c.srli a0, 18<br> [0x80000284]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0x00400000|- rs1_val == 268435456<br>                                                                                                          |[0x8000028c]:c.srli a0, 6<br> [0x8000028e]:sw a0, 152(ra)<br>  |
|  40|[0x800032ac]<br>0x00002000|- rs1_val == 536870912<br>                                                                                                          |[0x80000296]:c.srli a0, 16<br> [0x80000298]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0x10000000|- rs1_val == 1073741824<br>                                                                                                         |[0x800002a0]:c.srli a0, 2<br> [0x800002a2]:sw a0, 160(ra)<br>  |
|  42|[0x800032b4]<br>0x00000003|- rs1_val == -8193<br>                                                                                                              |[0x800002ae]:c.srli a0, 30<br> [0x800002b0]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0x00FFFFBF|- rs1_val == -16385<br>                                                                                                             |[0x800002bc]:c.srli a0, 8<br> [0x800002be]:sw a0, 168(ra)<br>  |
|  44|[0x800032bc]<br>0x7FFFBFFF|- rs1_val == -32769<br>                                                                                                             |[0x800002ca]:c.srli a0, 1<br> [0x800002cc]:sw a0, 172(ra)<br>  |
|  45|[0x800032c0]<br>0x7FFF7FFF|- rs1_val == -65537<br>                                                                                                             |[0x800002d8]:c.srli a0, 1<br> [0x800002da]:sw a0, 176(ra)<br>  |
|  46|[0x800032c4]<br>0x00001FFF|- rs1_val == -131073<br>                                                                                                            |[0x800002e6]:c.srli a0, 19<br> [0x800002e8]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0x00000007|- rs1_val == -262145<br>                                                                                                            |[0x800002f4]:c.srli a0, 29<br> [0x800002f6]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0x07FFBFFF|- rs1_val == -524289<br>                                                                                                            |[0x80000302]:c.srli a0, 5<br> [0x80000304]:sw a0, 188(ra)<br>  |
|  49|[0x800032d0]<br>0x0000FFEF|- rs1_val == -1048577<br>                                                                                                           |[0x80000310]:c.srli a0, 16<br> [0x80000312]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0x00001FFB|- rs1_val == -2097153<br>                                                                                                           |[0x8000031e]:c.srli a0, 19<br> [0x80000320]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0x000001FF|- rs1_val == -4194305<br>                                                                                                           |[0x8000032c]:c.srli a0, 23<br> [0x8000032e]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0x0007FBFF|- rs1_val == -8388609<br>                                                                                                           |[0x8000033a]:c.srli a0, 13<br> [0x8000033c]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0x00003FBF|- rs1_val == -16777217<br>                                                                                                          |[0x80000348]:c.srli a0, 18<br> [0x8000034a]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                          |[0x80000356]:c.srli a0, 31<br> [0x80000358]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0x000007DF|- rs1_val == -67108865<br>                                                                                                          |[0x80000364]:c.srli a0, 21<br> [0x80000366]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0x0F7FFFFF|- rs1_val == -134217729<br>                                                                                                         |[0x80000372]:c.srli a0, 4<br> [0x80000374]:sw a0, 220(ra)<br>  |
|  57|[0x800032f0]<br>0x0000077F|- rs1_val == -268435457<br>                                                                                                         |[0x80000380]:c.srli a0, 21<br> [0x80000382]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0x1BFFFFFF|- rs1_val == -536870913<br>                                                                                                         |[0x8000038e]:c.srli a0, 3<br> [0x80000390]:sw a0, 228(ra)<br>  |
|  59|[0x800032f8]<br>0x00000005|- rs1_val == -1073741825<br>                                                                                                        |[0x8000039c]:c.srli a0, 29<br> [0x8000039e]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0x0000000A|- rs1_val == 1431655765<br>                                                                                                         |[0x800003aa]:c.srli a0, 27<br> [0x800003ac]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0x00001FFF|- rs1_val == -2<br>                                                                                                                 |[0x800003b4]:c.srli a0, 19<br> [0x800003b6]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0x0001FFFF|- rs1_val == -3<br>                                                                                                                 |[0x800003be]:c.srli a0, 15<br> [0x800003c0]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0x000FFFFF|- rs1_val == -5<br>                                                                                                                 |[0x800003c8]:c.srli a0, 12<br> [0x800003ca]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0x0003FFFF|- rs1_val == -9<br>                                                                                                                 |[0x800003d2]:c.srli a0, 14<br> [0x800003d4]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0x03FFFFFF|- rs1_val == -33<br>                                                                                                                |[0x800003dc]:c.srli a0, 6<br> [0x800003de]:sw a0, 256(ra)<br>  |
|  66|[0x80003314]<br>0x00000003|- rs1_val == -65<br>                                                                                                                |[0x800003e6]:c.srli a0, 30<br> [0x800003e8]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0x007FFFFF|- rs1_val == -129<br>                                                                                                               |[0x800003f0]:c.srli a0, 9<br> [0x800003f2]:sw a0, 264(ra)<br>  |
|  68|[0x8000331c]<br>0x0000001F|- rs1_val == -257<br>                                                                                                               |[0x800003fa]:c.srli a0, 27<br> [0x800003fc]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0x00FFFFFD|- rs1_val == -513<br>                                                                                                               |[0x80000404]:c.srli a0, 8<br> [0x80000406]:sw a0, 272(ra)<br>  |
|  70|[0x80003324]<br>0x0001FFFF|- rs1_val == -1025<br>                                                                                                              |[0x8000040e]:c.srli a0, 15<br> [0x80000410]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0x000007FF|- rs1_val == -2049<br>                                                                                                              |[0x8000041c]:c.srli a0, 21<br> [0x8000041e]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0x00000001|- rs1_val == -4097<br>                                                                                                              |[0x8000042a]:c.srli a0, 31<br> [0x8000042c]:sw a0, 284(ra)<br> |
