
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80003204', '0x8000331c', '70 words')]      |
| COV_LABELS                | cslli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
| Total Signature Updates   | 70      |
| STAT1                     | 70      |
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
|   1|[0x80003204]<br>0xFFFDFFF0|- opcode : c.slli<br> - rd : x9<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -8193<br> - imm_val == 4<br>                  |[0x80000108]:c.slli s1, 4<br> [0x8000010a]:sw s1, 0(ra)<br>    |
|   2|[0x80003208]<br>0x00020000|- rd : x10<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 128<br> - imm_val == 10<br>                                        |[0x80000112]:c.slli a0, 10<br> [0x80000114]:sw a0, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x00001200|- rd : x11<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                        |[0x8000011c]:c.slli a1, 9<br> [0x8000011e]:sw a1, 8(ra)<br>    |
|   4|[0x80003210]<br>0x00000000|- rd : x12<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 23<br> |[0x80000126]:c.slli a2, 23<br> [0x80000128]:sw a2, 12(ra)<br>  |
|   5|[0x80003214]<br>0x00000000|- rd : x14<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                               |[0x80000130]:c.slli a4, 13<br> [0x80000132]:sw a4, 16(ra)<br>  |
|   6|[0x80003218]<br>0xFFFFFFF0|- rd : x13<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                     |[0x8000013e]:c.slli a3, 4<br> [0x80000140]:sw a3, 20(ra)<br>   |
|   7|[0x8000321c]<br>0x00000004|- rd : x15<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 2<br>                         |[0x80000148]:c.slli a5, 2<br> [0x8000014a]:sw a5, 24(ra)<br>   |
|   8|[0x80003220]<br>0xF7FFFFFE|- rd : x8<br> - rs1_val == -67108865<br> - imm_val == 1<br>                                                                         |[0x80000156]:c.slli fp, 1<br> [0x80000158]:sw fp, 28(ra)<br>   |
|   9|[0x80003224]<br>0xFFFFBF00|- rs1_val == -65<br> - imm_val == 8<br>                                                                                             |[0x80000160]:c.slli a0, 8<br> [0x80000162]:sw a0, 32(ra)<br>   |
|  10|[0x80003228]<br>0x00030000|- imm_val == 16<br>                                                                                                                 |[0x8000016a]:c.slli a0, 16<br> [0x8000016c]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0xC0000000|- imm_val == 30<br>                                                                                                                 |[0x80000174]:c.slli a0, 30<br> [0x80000176]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00000000|- rs1_val == 268435456<br> - imm_val == 29<br>                                                                                      |[0x8000017e]:c.slli a0, 29<br> [0x80000180]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000000|- rs1_val == 65536<br> - imm_val == 27<br>                                                                                          |[0x80000188]:c.slli a0, 27<br> [0x8000018a]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0x00020000|- rs1_val == 4<br> - imm_val == 15<br>                                                                                              |[0x80000192]:c.slli a0, 15<br> [0x80000194]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x00000000|- rs1_val == 16777216<br> - imm_val == 21<br>                                                                                       |[0x8000019c]:c.slli a0, 21<br> [0x8000019e]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000040|- rs1_val == 2<br>                                                                                                                  |[0x800001a6]:c.slli a0, 5<br> [0x800001a8]:sw a0, 60(ra)<br>   |
|  17|[0x80003244]<br>0x00000000|- rs1_val == 8<br>                                                                                                                  |[0x800001b0]:c.slli a0, 31<br> [0x800001b2]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00020000|- rs1_val == 16<br>                                                                                                                 |[0x800001ba]:c.slli a0, 13<br> [0x800001bc]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x04000000|- rs1_val == 32<br>                                                                                                                 |[0x800001c4]:c.slli a0, 21<br> [0x800001c6]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x02000000|- rs1_val == 64<br>                                                                                                                 |[0x800001ce]:c.slli a0, 19<br> [0x800001d0]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00004000|- rs1_val == 256<br>                                                                                                                |[0x800001d8]:c.slli a0, 6<br> [0x800001da]:sw a0, 80(ra)<br>   |
|  22|[0x80003258]<br>0x40000000|- rs1_val == 512<br>                                                                                                                |[0x800001e2]:c.slli a0, 21<br> [0x800001e4]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00000800|- rs1_val == 1024<br>                                                                                                               |[0x800001ec]:c.slli a0, 1<br> [0x800001ee]:sw a0, 88(ra)<br>   |
|  24|[0x80003260]<br>0x01000000|- rs1_val == 2048<br>                                                                                                               |[0x800001fa]:c.slli a0, 13<br> [0x800001fc]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0x00800000|- rs1_val == 4096<br>                                                                                                               |[0x80000204]:c.slli a0, 11<br> [0x80000206]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00000000|- rs1_val == 8192<br>                                                                                                               |[0x8000020e]:c.slli a0, 19<br> [0x80000210]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0x04000000|- rs1_val == 16384<br>                                                                                                              |[0x80000218]:c.slli a0, 12<br> [0x8000021a]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0x00000000|- rs1_val == 32768<br>                                                                                                              |[0x80000222]:c.slli a0, 23<br> [0x80000224]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x00000000|- rs1_val == 131072<br>                                                                                                             |[0x8000022c]:c.slli a0, 30<br> [0x8000022e]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x40000000|- rs1_val == 262144<br>                                                                                                             |[0x80000236]:c.slli a0, 12<br> [0x80000238]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x01000000|- rs1_val == 524288<br>                                                                                                             |[0x80000240]:c.slli a0, 5<br> [0x80000242]:sw a0, 120(ra)<br>  |
|  32|[0x80003280]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                            |[0x8000024a]:c.slli a0, 12<br> [0x8000024c]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                            |[0x80000254]:c.slli a0, 17<br> [0x80000256]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                            |[0x8000025e]:c.slli a0, 17<br> [0x80000260]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                            |[0x80000268]:c.slli a0, 14<br> [0x8000026a]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                           |[0x80000272]:c.slli a0, 9<br> [0x80000274]:sw a0, 140(ra)<br>  |
|  37|[0x80003294]<br>0x20000000|- rs1_val == 67108864<br>                                                                                                           |[0x8000027c]:c.slli a0, 3<br> [0x8000027e]:sw a0, 144(ra)<br>  |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                          |[0x80000286]:c.slli a0, 31<br> [0x80000288]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0x40000000|- rs1_val == 536870912<br>                                                                                                          |[0x80000290]:c.slli a0, 1<br> [0x80000292]:sw a0, 152(ra)<br>  |
|  40|[0x800032a0]<br>0x7FFE0000|- rs1_val == -16385<br>                                                                                                             |[0x8000029e]:c.slli a0, 17<br> [0x800002a0]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0xFFFEFFFE|- rs1_val == -32769<br>                                                                                                             |[0x800002ac]:c.slli a0, 1<br> [0x800002ae]:sw a0, 160(ra)<br>  |
|  42|[0x800032a8]<br>0xBFFFC000|- rs1_val == -65537<br>                                                                                                             |[0x800002ba]:c.slli a0, 14<br> [0x800002bc]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFFDFFFF0|- rs1_val == -131073<br>                                                                                                            |[0x800002c8]:c.slli a0, 4<br> [0x800002ca]:sw a0, 168(ra)<br>  |
|  44|[0x800032b0]<br>0xFFBFFFF0|- rs1_val == -262145<br>                                                                                                            |[0x800002d6]:c.slli a0, 4<br> [0x800002d8]:sw a0, 172(ra)<br>  |
|  45|[0x800032b4]<br>0xC0000000|- rs1_val == -524289<br>                                                                                                            |[0x800002e4]:c.slli a0, 30<br> [0x800002e6]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFFE00000|- rs1_val == -1048577<br>                                                                                                           |[0x800002f2]:c.slli a0, 21<br> [0x800002f4]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFFFF8000|- rs1_val == -2097153<br>                                                                                                           |[0x80000300]:c.slli a0, 15<br> [0x80000302]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xFFFFE000|- rs1_val == -4194305<br>                                                                                                           |[0x8000030e]:c.slli a0, 13<br> [0x80000310]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xDFFFFFC0|- rs1_val == -8388609<br>                                                                                                           |[0x8000031c]:c.slli a0, 6<br> [0x8000031e]:sw a0, 192(ra)<br>  |
|  50|[0x800032c8]<br>0xE0000000|- rs1_val == -16777217<br>                                                                                                          |[0x8000032a]:c.slli a0, 29<br> [0x8000032c]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0xFBFFFFFE|- rs1_val == -33554433<br>                                                                                                          |[0x80000338]:c.slli a0, 1<br> [0x8000033a]:sw a0, 200(ra)<br>  |
|  52|[0x800032d0]<br>0xFFFFFFE0|- rs1_val == -134217729<br>                                                                                                         |[0x80000346]:c.slli a0, 5<br> [0x80000348]:sw a0, 204(ra)<br>  |
|  53|[0x800032d4]<br>0xF8000000|- rs1_val == -268435457<br>                                                                                                         |[0x80000354]:c.slli a0, 27<br> [0x80000356]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0xFFF80000|- rs1_val == -536870913<br>                                                                                                         |[0x80000362]:c.slli a0, 19<br> [0x80000364]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0xFFFFE000|- rs1_val == -1073741825<br>                                                                                                        |[0x80000370]:c.slli a0, 13<br> [0x80000372]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0xC0000000|- rs1_val == -129<br>                                                                                                               |[0x8000037a]:c.slli a0, 30<br> [0x8000037c]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                         |[0x80000384]:c.slli a0, 29<br> [0x80000386]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0xAAAAAAA0|- rs1_val == 1431655765<br>                                                                                                         |[0x80000392]:c.slli a0, 5<br> [0x80000394]:sw a0, 228(ra)<br>  |
|  59|[0x800032ec]<br>0xF0000000|- rs1_val == -2<br>                                                                                                                 |[0x8000039c]:c.slli a0, 27<br> [0x8000039e]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0xAAAAAA00|- rs1_val == -1431655766<br>                                                                                                        |[0x800003aa]:c.slli a0, 8<br> [0x800003ac]:sw a0, 236(ra)<br>  |
|  61|[0x800032f4]<br>0xFFA00000|- rs1_val == -3<br>                                                                                                                 |[0x800003b4]:c.slli a0, 21<br> [0x800003b6]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFD800000|- rs1_val == -5<br>                                                                                                                 |[0x800003be]:c.slli a0, 23<br> [0x800003c0]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xFFFFFFB8|- rs1_val == -9<br>                                                                                                                 |[0x800003c8]:c.slli a0, 3<br> [0x800003ca]:sw a0, 248(ra)<br>  |
|  64|[0x80003300]<br>0xFFFFFFBC|- rs1_val == -17<br>                                                                                                                |[0x800003d2]:c.slli a0, 2<br> [0x800003d4]:sw a0, 252(ra)<br>  |
|  65|[0x80003304]<br>0x80000000|- rs1_val == -33<br>                                                                                                                |[0x800003dc]:c.slli a0, 31<br> [0x800003de]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0xFFFFEFF0|- rs1_val == -257<br>                                                                                                               |[0x800003e6]:c.slli a0, 4<br> [0x800003e8]:sw a0, 260(ra)<br>  |
|  67|[0x8000330c]<br>0xFFEFF800|- rs1_val == -513<br>                                                                                                               |[0x800003f0]:c.slli a0, 11<br> [0x800003f2]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0xFFDFF800|- rs1_val == -1025<br>                                                                                                              |[0x800003fa]:c.slli a0, 11<br> [0x800003fc]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0xFFFBFF80|- rs1_val == -2049<br>                                                                                                              |[0x80000408]:c.slli a0, 7<br> [0x8000040a]:sw a0, 272(ra)<br>  |
|  70|[0x80003318]<br>0x7FF80000|- rs1_val == -4097<br>                                                                                                              |[0x80000416]:c.slli a0, 19<br> [0x80000418]:sw a0, 276(ra)<br> |
