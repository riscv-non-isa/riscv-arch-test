
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
| COV_LABELS                | candi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/candi-01.S/candi-01.S    |
| Total Number of coverpoints| 101     |
| Total Coverpoints Hit     | 101      |
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

|s.no|        signature         |                                                                                   coverpoints                                                                                   |                             code                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0x80000000|- opcode : c.andi<br> - rs1 : x8<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -5<br> - rs1_val == -2147483648<br> |[0x80000104]:c.andi s0, 59<br> [0x80000106]:sw fp, 0(ra)<br>   |
|   2|[0x80003208]<br>0x00000000|- rs1 : x12<br> - rs1_val == 0<br> - imm_val == 4<br>                                                                                                                            |[0x8000010e]:c.andi a2, 4<br> [0x80000110]:sw a2, 4(ra)<br>    |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x15<br> - imm_val == 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                  |[0x8000011c]:c.andi a5, 0<br> [0x8000011e]:sw a5, 8(ra)<br>    |
|   4|[0x80003210]<br>0x00000001|- rs1 : x14<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 1<br>                                                                                                             |[0x80000126]:c.andi a4, 9<br> [0x80000128]:sw a4, 12(ra)<br>   |
|   5|[0x80003214]<br>0xFFFFFFE0|- rs1 : x13<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br>                                                                                                                |[0x80000130]:c.andi a3, 32<br> [0x80000132]:sw a3, 16(ra)<br>  |
|   6|[0x80003218]<br>0x0000001F|- rs1 : x9<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == -16385<br>                                                       |[0x8000013e]:c.andi s1, 31<br> [0x80000140]:sw s1, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x11<br> - imm_val == 1<br> - rs1_val == 8<br>                                                                                                                            |[0x80000148]:c.andi a1, 1<br> [0x8000014a]:sw a1, 24(ra)<br>   |
|   8|[0x80003220]<br>0xFFFFFFF9|- rs1 : x10<br> - rs1_val == imm_val<br>                                                                                                                                         |[0x80000152]:c.andi a0, 57<br> [0x80000154]:sw a0, 28(ra)<br>  |
|   9|[0x80003224]<br>0x08000000|- rs1_val > 0 and imm_val < 0<br> - imm_val == -2<br> - rs1_val == 134217728<br>                                                                                                 |[0x8000015c]:c.andi a0, 62<br> [0x8000015e]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x00000000|- rs1_val == 2<br>                                                                                                                                                               |[0x80000166]:c.andi a0, 57<br> [0x80000168]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0x00000000|- rs1_val == 4<br>                                                                                                                                                               |[0x80000170]:c.andi a0, 57<br> [0x80000172]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00000010|- rs1_val == 16<br>                                                                                                                                                              |[0x8000017a]:c.andi a0, 59<br> [0x8000017c]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000020|- rs1_val == 32<br>                                                                                                                                                              |[0x80000184]:c.andi a0, 62<br> [0x80000186]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0x00000040|- imm_val == -17<br> - rs1_val == 64<br>                                                                                                                                         |[0x8000018e]:c.andi a0, 47<br> [0x80000190]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x00000080|- imm_val == -9<br> - rs1_val == 128<br>                                                                                                                                         |[0x80000198]:c.andi a0, 55<br> [0x8000019a]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000100|- rs1_val == 256<br>                                                                                                                                                             |[0x800001a2]:c.andi a0, 32<br> [0x800001a4]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000200|- rs1_val == 512<br>                                                                                                                                                             |[0x800001ac]:c.andi a0, 47<br> [0x800001ae]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                                                            |[0x800001b6]:c.andi a0, 6<br> [0x800001b8]:sw a0, 68(ra)<br>   |
|  19|[0x8000324c]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                                                            |[0x800001c4]:c.andi a0, 15<br> [0x800001c6]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                                                            |[0x800001ce]:c.andi a0, 3<br> [0x800001d0]:sw a0, 76(ra)<br>   |
|  21|[0x80003254]<br>0x00002000|- imm_val == -22<br> - rs1_val == 8192<br>                                                                                                                                       |[0x800001d8]:c.andi a0, 42<br> [0x800001da]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00004000|- rs1_val == 16384<br>                                                                                                                                                           |[0x800001e2]:c.andi a0, 63<br> [0x800001e4]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00000000|- imm_val == 16<br> - rs1_val == 32768<br>                                                                                                                                       |[0x800001ec]:c.andi a0, 16<br> [0x800001ee]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                                           |[0x800001f6]:c.andi a0, 7<br> [0x800001f8]:sw a0, 92(ra)<br>   |
|  25|[0x80003264]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                                          |[0x80000200]:c.andi a0, 15<br> [0x80000202]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                          |[0x8000020a]:c.andi a0, 3<br> [0x8000020c]:sw a0, 100(ra)<br>  |
|  27|[0x8000326c]<br>0x00000000|- imm_val == 8<br> - rs1_val == 524288<br>                                                                                                                                       |[0x80000214]:c.andi a0, 8<br> [0x80000216]:sw a0, 104(ra)<br>  |
|  28|[0x80003270]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                                                         |[0x8000021e]:c.andi a0, 8<br> [0x80000220]:sw a0, 108(ra)<br>  |
|  29|[0x80003274]<br>0x00200000|- rs1_val == 2097152<br>                                                                                                                                                         |[0x80000228]:c.andi a0, 47<br> [0x8000022a]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x00400000|- rs1_val == 4194304<br>                                                                                                                                                         |[0x80000232]:c.andi a0, 58<br> [0x80000234]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                                                         |[0x8000023c]:c.andi a0, 62<br> [0x8000023e]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0x01000000|- rs1_val == 16777216<br>                                                                                                                                                        |[0x80000246]:c.andi a0, 32<br> [0x80000248]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                        |[0x80000250]:c.andi a0, 15<br> [0x80000252]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                        |[0x8000025a]:c.andi a0, 9<br> [0x8000025c]:sw a0, 132(ra)<br>  |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                       |[0x80000264]:c.andi a0, 16<br> [0x80000266]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                                       |[0x8000026e]:c.andi a0, 32<br> [0x80000270]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x00000000|- imm_val == 21<br> - rs1_val == 1073741824<br>                                                                                                                                  |[0x80000278]:c.andi a0, 21<br> [0x8000027a]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0xFFFFFFFC|- rs1_val == -2<br>                                                                                                                                                              |[0x80000282]:c.andi a0, 60<br> [0x80000284]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0xFFFFFFF8|- rs1_val == -3<br>                                                                                                                                                              |[0x8000028c]:c.andi a0, 58<br> [0x8000028e]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                              |[0x80000296]:c.andi a0, 0<br> [0x80000298]:sw a0, 156(ra)<br>  |
|  41|[0x800032a4]<br>0x0000000F|- rs1_val == -524289<br>                                                                                                                                                         |[0x800002a4]:c.andi a0, 15<br> [0x800002a6]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFEFFFEF|- rs1_val == -1048577<br>                                                                                                                                                        |[0x800002b2]:c.andi a0, 47<br> [0x800002b4]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0x00000004|- rs1_val == -2097153<br>                                                                                                                                                        |[0x800002c0]:c.andi a0, 4<br> [0x800002c2]:sw a0, 168(ra)<br>  |
|  44|[0x800032b0]<br>0x00000007|- rs1_val == -4194305<br>                                                                                                                                                        |[0x800002ce]:c.andi a0, 7<br> [0x800002d0]:sw a0, 172(ra)<br>  |
|  45|[0x800032b4]<br>0xFF7FFFFD|- imm_val == -3<br> - rs1_val == -8388609<br>                                                                                                                                    |[0x800002dc]:c.andi a0, 61<br> [0x800002de]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFEFFFFF9|- rs1_val == -16777217<br>                                                                                                                                                       |[0x800002ea]:c.andi a0, 57<br> [0x800002ec]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFDFFFFF8|- rs1_val == -33554433<br>                                                                                                                                                       |[0x800002f8]:c.andi a0, 56<br> [0x800002fa]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                       |[0x80000306]:c.andi a0, 63<br> [0x80000308]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xF7FFFFEA|- rs1_val == -134217729<br>                                                                                                                                                      |[0x80000314]:c.andi a0, 42<br> [0x80000316]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0xEFFFFFE0|- rs1_val == -268435457<br>                                                                                                                                                      |[0x80000322]:c.andi a0, 32<br> [0x80000324]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0xDFFFFFFA|- rs1_val == -536870913<br>                                                                                                                                                      |[0x80000330]:c.andi a0, 58<br> [0x80000332]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0xBFFFFFF8|- rs1_val == -1073741825<br>                                                                                                                                                     |[0x8000033e]:c.andi a0, 56<br> [0x80000340]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                      |[0x8000034c]:c.andi a0, 8<br> [0x8000034e]:sw a0, 208(ra)<br>  |
|  54|[0x800032d8]<br>0x0000000A|- rs1_val == -1431655766<br>                                                                                                                                                     |[0x8000035a]:c.andi a0, 15<br> [0x8000035c]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0x00000002|- imm_val == 2<br>                                                                                                                                                               |[0x80000368]:c.andi a0, 2<br> [0x8000036a]:sw a0, 216(ra)<br>  |
|  56|[0x800032e0]<br>0x00000010|- rs1_val == -9<br>                                                                                                                                                              |[0x80000372]:c.andi a0, 16<br> [0x80000374]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0xFFFFFFEC|- rs1_val == -17<br>                                                                                                                                                             |[0x8000037c]:c.andi a0, 60<br> [0x8000037e]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0x0000001F|- rs1_val == -33<br>                                                                                                                                                             |[0x80000386]:c.andi a0, 31<br> [0x80000388]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x00000004|- rs1_val == -65<br>                                                                                                                                                             |[0x80000390]:c.andi a0, 4<br> [0x80000392]:sw a0, 232(ra)<br>  |
|  60|[0x800032f0]<br>0xFFFFFF7C|- rs1_val == -129<br>                                                                                                                                                            |[0x8000039a]:c.andi a0, 60<br> [0x8000039c]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0x00000000|- rs1_val == -257<br>                                                                                                                                                            |[0x800003a4]:c.andi a0, 0<br> [0x800003a6]:sw a0, 240(ra)<br>  |
|  62|[0x800032f8]<br>0xFFFFFDE0|- rs1_val == -513<br>                                                                                                                                                            |[0x800003ae]:c.andi a0, 32<br> [0x800003b0]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xFFFFFBFC|- rs1_val == -1025<br>                                                                                                                                                           |[0x800003b8]:c.andi a0, 60<br> [0x800003ba]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0x00000002|- rs1_val == -2049<br>                                                                                                                                                           |[0x800003c6]:c.andi a0, 2<br> [0x800003c8]:sw a0, 252(ra)<br>  |
|  65|[0x80003304]<br>0x00000005|- rs1_val == -4097<br>                                                                                                                                                           |[0x800003d4]:c.andi a0, 5<br> [0x800003d6]:sw a0, 256(ra)<br>  |
|  66|[0x80003308]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                                           |[0x800003e2]:c.andi a0, 1<br> [0x800003e4]:sw a0, 260(ra)<br>  |
|  67|[0x8000330c]<br>0xFFFF7FFC|- rs1_val == -32769<br>                                                                                                                                                          |[0x800003f0]:c.andi a0, 60<br> [0x800003f2]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0xFFFEFFFD|- rs1_val == -65537<br>                                                                                                                                                          |[0x800003fe]:c.andi a0, 61<br> [0x80000400]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                                         |[0x8000040c]:c.andi a0, 63<br> [0x8000040e]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0x00000006|- rs1_val == -262145<br>                                                                                                                                                         |[0x8000041a]:c.andi a0, 6<br> [0x8000041c]:sw a0, 276(ra)<br>  |
