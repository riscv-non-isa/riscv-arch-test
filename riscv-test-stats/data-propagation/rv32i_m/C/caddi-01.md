
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
| SIG_REGION                | [('0x80003204', '0x80003318', '69 words')]      |
| COV_LABELS                | caddi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi-01.S/caddi-01.S    |
| Total Number of coverpoints| 124     |
| Total Coverpoints Hit     | 124      |
| Total Signature Updates   | 69      |
| STAT1                     | 69      |
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

|s.no|        signature         |                                                                         coverpoints                                                                         |                              code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003204]<br>0x80000006|- opcode : c.addi<br> - rd : x20<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> |[0x80000104]:c.addi s4, 6<br> [0x80000106]:sw s4, 0(t0)<br>     |
|   2|[0x80003208]<br>0xFFFFFFF9|- rd : x13<br> - rs1_val == 0<br>                                                                                                                            |[0x8000010e]:c.addi a3, 57<br> [0x80000110]:sw a3, 4(t0)<br>    |
|   3|[0x8000320c]<br>0x7FFFFFEF|- rd : x22<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                |[0x8000011c]:c.addi s6, 48<br> [0x8000011e]:sw s6, 8(t0)<br>    |
|   4|[0x80003210]<br>0xFFFFFFF9|- rd : x21<br> - rs1_val == 1<br>                                                                                                                            |[0x80000126]:c.addi s5, 56<br> [0x80000128]:sw s5, 12(t0)<br>   |
|   5|[0x80003214]<br>0xFFFFFFDF|- rd : x27<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br>                                                           |[0x80000130]:c.addi s11, 32<br> [0x80000132]:sw s11, 16(t0)<br> |
|   6|[0x80003218]<br>0xFFDFFFFF|- rd : x31<br> - imm_val == 0<br> - rs1_val == -2097153<br>                                                                                                  |[0x8000013e]:c.addi.hint.t6<br> [0x80000140]:sw t6, 20(t0)<br>  |
|   7|[0x8000321c]<br>0x0000081F|- rd : x3<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == 2048<br>                                      |[0x8000014c]:c.addi gp, 31<br> [0x8000014e]:sw gp, 24(t0)<br>   |
|   8|[0x80003220]<br>0xFFF00000|- rd : x1<br> - imm_val == 1<br> - rs1_val == -1048577<br>                                                                                                   |[0x8000015a]:c.addi ra, 1<br> [0x8000015c]:sw ra, 28(t0)<br>    |
|   9|[0x80003224]<br>0xFFFFFFF6|- rd : x9<br> - rs1_val == imm_val<br> - imm_val == -5<br> - rs1_val == -5<br>                                                                               |[0x80000164]:c.addi s1, 59<br> [0x80000166]:sw s1, 32(t0)<br>   |
|  10|[0x80003228]<br>0xFFFFFFF9|- rd : x23<br> - imm_val == -9<br> - rs1_val == 2<br>                                                                                                        |[0x8000016e]:c.addi s7, 55<br> [0x80000170]:sw s7, 36(t0)<br>   |
|  11|[0x8000322c]<br>0x00000006|- rd : x10<br> - imm_val == 2<br> - rs1_val == 4<br>                                                                                                         |[0x80000178]:c.addi a0, 2<br> [0x8000017a]:sw a0, 40(t0)<br>    |
|  12|[0x80003230]<br>0x00000006|- rd : x29<br> - imm_val == -2<br> - rs1_val == 8<br>                                                                                                        |[0x80000182]:c.addi t4, 62<br> [0x80000184]:sw t4, 44(t0)<br>   |
|  13|[0x80003234]<br>0xFFFFFFF0|- rd : x11<br> - rs1_val == 16<br>                                                                                                                           |[0x8000018c]:c.addi a1, 32<br> [0x8000018e]:sw a1, 48(t0)<br>   |
|  14|[0x80003238]<br>0x00000030|- rd : x14<br> - imm_val == 16<br> - rs1_val == 32<br>                                                                                                       |[0x80000196]:c.addi a4, 16<br> [0x80000198]:sw a4, 52(t0)<br>   |
|  15|[0x8000323c]<br>0x0000003E|- rd : x2<br> - rs1_val == 64<br>                                                                                                                            |[0x800001a0]:c.addi sp, 62<br> [0x800001a2]:sw sp, 56(t0)<br>   |
|  16|[0x80003240]<br>0x0000007C|- rd : x28<br> - rs1_val == 128<br>                                                                                                                          |[0x800001aa]:c.addi t3, 60<br> [0x800001ac]:sw t3, 60(t0)<br>   |
|  17|[0x80003244]<br>0x00000105|- rd : x24<br> - rs1_val == 256<br>                                                                                                                          |[0x800001b4]:c.addi s8, 5<br> [0x800001b6]:sw s8, 64(t0)<br>    |
|  18|[0x80003248]<br>0x00000207|- rd : x26<br> - rs1_val == 512<br>                                                                                                                          |[0x800001be]:c.addi s10, 7<br> [0x800001c0]:sw s10, 68(t0)<br>  |
|  19|[0x8000324c]<br>0x000003FD|- rd : x16<br> - imm_val == -3<br> - rs1_val == 1024<br>                                                                                                     |[0x800001c8]:c.addi a6, 61<br> [0x800001ca]:sw a6, 72(t0)<br>   |
|  20|[0x80003250]<br>0x00000FF0|- rd : x4<br> - rs1_val == 4096<br>                                                                                                                          |[0x800001d2]:c.addi tp, 48<br> [0x800001d4]:sw tp, 76(t0)<br>   |
|  21|[0x80003254]<br>0x00002010|- rd : x25<br> - rs1_val == 8192<br>                                                                                                                         |[0x800001dc]:c.addi s9, 16<br> [0x800001de]:sw s9, 80(t0)<br>   |
|  22|[0x80003258]<br>0x00003FF0|- rd : x18<br> - rs1_val == 16384<br>                                                                                                                        |[0x800001e6]:c.addi s2, 48<br> [0x800001e8]:sw s2, 84(t0)<br>   |
|  23|[0x8000325c]<br>0x00008006|- rd : x17<br> - rs1_val == 32768<br>                                                                                                                        |[0x800001f0]:c.addi a7, 6<br> [0x800001f2]:sw a7, 88(t0)<br>    |
|  24|[0x80003260]<br>0x00010007|- rd : x7<br> - rs1_val == 65536<br>                                                                                                                         |[0x800001fa]:c.addi t2, 7<br> [0x800001fc]:sw t2, 92(t0)<br>    |
|  25|[0x80003264]<br>0x00020009|- rd : x8<br> - rs1_val == 131072<br>                                                                                                                        |[0x80000204]:c.addi fp, 9<br> [0x80000206]:sw fp, 96(t0)<br>    |
|  26|[0x80003268]<br>0x00040015|- rd : x6<br> - imm_val == 21<br> - rs1_val == 262144<br>                                                                                                    |[0x8000020e]:c.addi t1, 21<br> [0x80000210]:sw t1, 100(t0)<br>  |
|  27|[0x8000326c]<br>0x00080005|- rd : x19<br> - rs1_val == 524288<br>                                                                                                                       |[0x80000218]:c.addi s3, 5<br> [0x8000021a]:sw s3, 104(t0)<br>   |
|  28|[0x80003270]<br>0x00100008|- rd : x15<br> - imm_val == 8<br> - rs1_val == 1048576<br>                                                                                                   |[0x80000222]:c.addi a5, 8<br> [0x80000224]:sw a5, 108(t0)<br>   |
|  29|[0x80003274]<br>0x00200000|- rd : x30<br> - rs1_val == 2097152<br>                                                                                                                      |[0x80000234]:c.addi.hint.t5<br> [0x80000236]:sw t5, 0(ra)<br>   |
|  30|[0x80003278]<br>0x00400003|- rd : x5<br> - rs1_val == 4194304<br>                                                                                                                       |[0x8000023e]:c.addi t0, 3<br> [0x80000240]:sw t0, 4(ra)<br>     |
|  31|[0x8000327c]<br>0x007FFFF7|- rd : x12<br> - rs1_val == 8388608<br>                                                                                                                      |[0x80000248]:c.addi a2, 55<br> [0x8000024a]:sw a2, 8(ra)<br>    |
|  32|[0x80003280]<br>0x01000004|- imm_val == 4<br> - rs1_val == 16777216<br>                                                                                                                 |[0x80000252]:c.addi a0, 4<br> [0x80000254]:sw a0, 12(ra)<br>    |
|  33|[0x80003284]<br>0x01FFFFFD|- rs1_val == 33554432<br>                                                                                                                                    |[0x8000025c]:c.addi a0, 61<br> [0x8000025e]:sw a0, 16(ra)<br>   |
|  34|[0x80003288]<br>0x04000002|- rs1_val == 67108864<br>                                                                                                                                    |[0x80000266]:c.addi a0, 2<br> [0x80000268]:sw a0, 20(ra)<br>    |
|  35|[0x8000328c]<br>0x0800001F|- rs1_val == 134217728<br>                                                                                                                                   |[0x80000270]:c.addi a0, 31<br> [0x80000272]:sw a0, 24(ra)<br>   |
|  36|[0x80003290]<br>0x10000008|- rs1_val == 268435456<br>                                                                                                                                   |[0x8000027a]:c.addi a0, 8<br> [0x8000027c]:sw a0, 28(ra)<br>    |
|  37|[0x80003294]<br>0x1FFFFFFE|- rs1_val == 536870912<br>                                                                                                                                   |[0x80000284]:c.addi a0, 62<br> [0x80000286]:sw a0, 32(ra)<br>   |
|  38|[0x80003298]<br>0x3FFFFFE0|- rs1_val == 1073741824<br>                                                                                                                                  |[0x8000028e]:c.addi a0, 32<br> [0x80000290]:sw a0, 36(ra)<br>   |
|  39|[0x8000329c]<br>0xFFFFFFF5|- rs1_val == -2<br>                                                                                                                                          |[0x80000298]:c.addi a0, 55<br> [0x8000029a]:sw a0, 40(ra)<br>   |
|  40|[0x800032a0]<br>0xFFF7FFE9|- imm_val == -22<br> - rs1_val == -524289<br>                                                                                                                |[0x800002a6]:c.addi a0, 42<br> [0x800002a8]:sw a0, 44(ra)<br>   |
|  41|[0x800032a4]<br>0xFFBFFFF8|- rs1_val == -4194305<br>                                                                                                                                    |[0x800002b4]:c.addi a0, 57<br> [0x800002b6]:sw a0, 48(ra)<br>   |
|  42|[0x800032a8]<br>0xFF800001|- rs1_val == -8388609<br>                                                                                                                                    |[0x800002c2]:c.addi a0, 2<br> [0x800002c4]:sw a0, 52(ra)<br>    |
|  43|[0x800032ac]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                   |[0x800002d0]:c.addi.hint.a0<br> [0x800002d2]:sw a0, 56(ra)<br>  |
|  44|[0x800032b0]<br>0xFDFFFFFA|- rs1_val == -33554433<br>                                                                                                                                   |[0x800002de]:c.addi a0, 59<br> [0x800002e0]:sw a0, 60(ra)<br>   |
|  45|[0x800032b4]<br>0xFC000001|- rs1_val == -67108865<br>                                                                                                                                   |[0x800002ec]:c.addi a0, 2<br> [0x800002ee]:sw a0, 64(ra)<br>    |
|  46|[0x800032b8]<br>0xF7FFFFF9|- rs1_val == -134217729<br>                                                                                                                                  |[0x800002fa]:c.addi a0, 58<br> [0x800002fc]:sw a0, 68(ra)<br>   |
|  47|[0x800032bc]<br>0xEFFFFFE9|- rs1_val == -268435457<br>                                                                                                                                  |[0x80000308]:c.addi a0, 42<br> [0x8000030a]:sw a0, 72(ra)<br>   |
|  48|[0x800032c0]<br>0xDFFFFFFB|- rs1_val == -536870913<br>                                                                                                                                  |[0x80000316]:c.addi a0, 60<br> [0x80000318]:sw a0, 76(ra)<br>   |
|  49|[0x800032c4]<br>0xBFFFFFF7|- rs1_val == -1073741825<br>                                                                                                                                 |[0x80000324]:c.addi a0, 56<br> [0x80000326]:sw a0, 80(ra)<br>   |
|  50|[0x800032c8]<br>0x5555555C|- rs1_val == 1431655765<br>                                                                                                                                  |[0x80000332]:c.addi a0, 7<br> [0x80000334]:sw a0, 84(ra)<br>    |
|  51|[0x800032cc]<br>0xAAAAAAA0|- rs1_val == -1431655766<br>                                                                                                                                 |[0x80000340]:c.addi a0, 54<br> [0x80000342]:sw a0, 88(ra)<br>   |
|  52|[0x800032d0]<br>0x01FFFFEF|- imm_val == -17<br>                                                                                                                                         |[0x8000034a]:c.addi a0, 47<br> [0x8000034c]:sw a0, 92(ra)<br>   |
|  53|[0x800032d4]<br>0x00000004|- rs1_val == -3<br>                                                                                                                                          |[0x80000354]:c.addi a0, 7<br> [0x80000356]:sw a0, 96(ra)<br>    |
|  54|[0x800032d8]<br>0xFFFFFFE1|- rs1_val == -9<br>                                                                                                                                          |[0x8000035e]:c.addi a0, 42<br> [0x80000360]:sw a0, 100(ra)<br>  |
|  55|[0x800032dc]<br>0xFFFFFFF5|- rs1_val == -17<br>                                                                                                                                         |[0x80000368]:c.addi a0, 6<br> [0x8000036a]:sw a0, 104(ra)<br>   |
|  56|[0x800032e0]<br>0xFFFFFFDE|- rs1_val == -33<br>                                                                                                                                         |[0x80000372]:c.addi a0, 63<br> [0x80000374]:sw a0, 108(ra)<br>  |
|  57|[0x800032e4]<br>0xFFFFFFC0|- rs1_val == -65<br>                                                                                                                                         |[0x8000037c]:c.addi a0, 1<br> [0x8000037e]:sw a0, 112(ra)<br>   |
|  58|[0x800032e8]<br>0xFFFFFF7C|- rs1_val == -129<br>                                                                                                                                        |[0x80000386]:c.addi a0, 61<br> [0x80000388]:sw a0, 116(ra)<br>  |
|  59|[0x800032ec]<br>0xFFFFFEFE|- rs1_val == -257<br>                                                                                                                                        |[0x80000390]:c.addi a0, 63<br> [0x80000392]:sw a0, 120(ra)<br>  |
|  60|[0x800032f0]<br>0xFFFFFE06|- rs1_val == -513<br>                                                                                                                                        |[0x8000039a]:c.addi a0, 7<br> [0x8000039c]:sw a0, 124(ra)<br>   |
|  61|[0x800032f4]<br>0xFFFFFBFA|- rs1_val == -1025<br>                                                                                                                                       |[0x800003a4]:c.addi a0, 59<br> [0x800003a6]:sw a0, 128(ra)<br>  |
|  62|[0x800032f8]<br>0xFFFFF7EF|- rs1_val == -2049<br>                                                                                                                                       |[0x800003b2]:c.addi a0, 48<br> [0x800003b4]:sw a0, 132(ra)<br>  |
|  63|[0x800032fc]<br>0xFFFFEFFB|- rs1_val == -4097<br>                                                                                                                                       |[0x800003c0]:c.addi a0, 60<br> [0x800003c2]:sw a0, 136(ra)<br>  |
|  64|[0x80003300]<br>0xFFFFDFF6|- rs1_val == -8193<br>                                                                                                                                       |[0x800003ce]:c.addi a0, 55<br> [0x800003d0]:sw a0, 140(ra)<br>  |
|  65|[0x80003304]<br>0xFFFFC001|- rs1_val == -16385<br>                                                                                                                                      |[0x800003dc]:c.addi a0, 2<br> [0x800003de]:sw a0, 144(ra)<br>   |
|  66|[0x80003308]<br>0xFFFF8004|- rs1_val == -32769<br>                                                                                                                                      |[0x800003ea]:c.addi a0, 5<br> [0x800003ec]:sw a0, 148(ra)<br>   |
|  67|[0x8000330c]<br>0xFFFF0002|- rs1_val == -65537<br>                                                                                                                                      |[0x800003f8]:c.addi a0, 3<br> [0x800003fa]:sw a0, 152(ra)<br>   |
|  68|[0x80003310]<br>0xFFFDFFEF|- rs1_val == -131073<br>                                                                                                                                     |[0x80000406]:c.addi a0, 48<br> [0x80000408]:sw a0, 156(ra)<br>  |
|  69|[0x80003314]<br>0xFFFBFFEE|- rs1_val == -262145<br>                                                                                                                                     |[0x80000414]:c.addi a0, 47<br> [0x80000416]:sw a0, 160(ra)<br>  |
