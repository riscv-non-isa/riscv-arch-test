
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000450')]      |
| SIG_REGION                | [('0x80003204', '0x80003330', '75 words')]      |
| COV_LABELS                | caddi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi-01.S/caddi-01.S    |
| Total Number of coverpoints| 124     |
| Total Coverpoints Hit     | 124      |
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

|s.no|        signature         |                                                                                  coverpoints                                                                                   |                             code                              |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0x80000004|- opcode : c.addi<br> - rd : x11<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 4<br> - rs1_val == -2147483648<br> |[0x80000104]:c.addi a1, 4<br> [0x80000106]:sw a1, 0(tp)<br>    |
|   2|[0x80003214]<br>0x00000001|- rd : x25<br> - imm_val == 1<br> - rs1_val == 0<br>                                                                                                                            |[0x8000010e]:c.addi s9, 1<br> [0x80000110]:sw s9, 4(tp)<br>    |
|   3|[0x80003218]<br>0x7FFFFFFB|- rd : x28<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                   |[0x8000011c]:c.addi t3, 60<br> [0x8000011e]:sw t3, 8(tp)<br>   |
|   4|[0x8000321c]<br>0xFFFFFFEB|- rd : x29<br> - rs1_val == 1<br> - imm_val == -22<br>                                                                                                                          |[0x80000126]:c.addi t4, 42<br> [0x80000128]:sw t4, 12(tp)<br>  |
|   5|[0x80003220]<br>0xFBFFFFDF|- rd : x1<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == -67108865<br>                                                    |[0x80000134]:c.addi ra, 32<br> [0x80000136]:sw ra, 16(tp)<br>  |
|   6|[0x80003224]<br>0xFBFFFFFF|- rd : x10<br> - imm_val == 0<br>                                                                                                                                               |[0x80000142]:c.addi.hint.a0<br> [0x80000144]:sw a0, 20(tp)<br> |
|   7|[0x80003228]<br>0xFFF0001E|- rd : x5<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == -1048577<br>                                                                                       |[0x80000150]:c.addi t0, 31<br> [0x80000152]:sw t0, 24(tp)<br>  |
|   8|[0x8000322c]<br>0x00000012|- rd : x7<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                                                                                                        |[0x8000015a]:c.addi t2, 9<br> [0x8000015c]:sw t2, 28(tp)<br>   |
|   9|[0x80003230]<br>0x00000009|- rd : x16<br> - rs1_val == 2<br>                                                                                                                                               |[0x80000164]:c.addi a6, 7<br> [0x80000166]:sw a6, 32(tp)<br>   |
|  10|[0x80003234]<br>0x00000004|- rd : x6<br> - rs1_val == 4<br>                                                                                                                                                |[0x8000016e]:c.addi.hint.t1<br> [0x80000170]:sw t1, 36(tp)<br> |
|  11|[0x80003238]<br>0xFFFFFFF7|- rd : x21<br> - imm_val == -17<br> - rs1_val == 8<br>                                                                                                                          |[0x80000178]:c.addi s5, 47<br> [0x8000017a]:sw s5, 40(tp)<br>  |
|  12|[0x8000323c]<br>0x00000015|- rd : x15<br> - rs1_val == 16<br>                                                                                                                                              |[0x80000182]:c.addi a5, 5<br> [0x80000184]:sw a5, 44(tp)<br>   |
|  13|[0x80003240]<br>0x0000001E|- rd : x20<br> - imm_val == -2<br> - rs1_val == 32<br>                                                                                                                          |[0x8000018c]:c.addi s4, 62<br> [0x8000018e]:sw s4, 48(tp)<br>  |
|  14|[0x80003244]<br>0x00000037|- rd : x9<br> - imm_val == -9<br> - rs1_val == 64<br>                                                                                                                           |[0x80000196]:c.addi s1, 55<br> [0x80000198]:sw s1, 52(tp)<br>  |
|  15|[0x80003248]<br>0x00000087|- rd : x27<br> - rs1_val == 128<br>                                                                                                                                             |[0x800001a0]:c.addi s11, 7<br> [0x800001a2]:sw s11, 56(tp)<br> |
|  16|[0x8000324c]<br>0x000000F0|- rd : x31<br> - rs1_val == 256<br>                                                                                                                                             |[0x800001aa]:c.addi t6, 48<br> [0x800001ac]:sw t6, 60(tp)<br>  |
|  17|[0x80003250]<br>0x000001F8|- rd : x2<br> - rs1_val == 512<br>                                                                                                                                              |[0x800001b4]:c.addi sp, 56<br> [0x800001b6]:sw sp, 64(tp)<br>  |
|  18|[0x80003254]<br>0x00000408|- rd : x19<br> - imm_val == 8<br> - rs1_val == 1024<br>                                                                                                                         |[0x800001be]:c.addi s3, 8<br> [0x800001c0]:sw s3, 68(tp)<br>   |
|  19|[0x80003258]<br>0x000007FA|- rd : x8<br> - rs1_val == 2048<br>                                                                                                                                             |[0x800001cc]:c.addi fp, 58<br> [0x800001ce]:sw fp, 72(tp)<br>  |
|  20|[0x8000325c]<br>0x00000FF8|- rd : x24<br> - rs1_val == 4096<br>                                                                                                                                            |[0x800001d6]:c.addi s8, 56<br> [0x800001d8]:sw s8, 76(tp)<br>  |
|  21|[0x80003260]<br>0x00001FFC|- rd : x13<br> - rs1_val == 8192<br>                                                                                                                                            |[0x800001e0]:c.addi a3, 60<br> [0x800001e2]:sw a3, 80(tp)<br>  |
|  22|[0x80003264]<br>0x00004001|- rd : x3<br> - rs1_val == 16384<br>                                                                                                                                            |[0x800001ea]:c.addi gp, 1<br> [0x800001ec]:sw gp, 84(tp)<br>   |
|  23|[0x80003268]<br>0x00007FF0|- rd : x22<br> - rs1_val == 32768<br>                                                                                                                                           |[0x800001f4]:c.addi s6, 48<br> [0x800001f6]:sw s6, 88(tp)<br>  |
|  24|[0x8000326c]<br>0x0000FFFB|- rd : x30<br> - imm_val == -5<br> - rs1_val == 65536<br>                                                                                                                       |[0x800001fe]:c.addi t5, 59<br> [0x80000200]:sw t5, 92(tp)<br>  |
|  25|[0x80003270]<br>0x0002001F|- rd : x12<br> - rs1_val == 131072<br>                                                                                                                                          |[0x80000208]:c.addi a2, 31<br> [0x8000020a]:sw a2, 96(tp)<br>  |
|  26|[0x80003274]<br>0x0004001F|- rd : x14<br> - rs1_val == 262144<br>                                                                                                                                          |[0x80000212]:c.addi a4, 31<br> [0x80000214]:sw a4, 100(tp)<br> |
|  27|[0x80003278]<br>0x0007FFF0|- rd : x17<br> - rs1_val == 524288<br>                                                                                                                                          |[0x8000021c]:c.addi a7, 48<br> [0x8000021e]:sw a7, 104(tp)<br> |
|  28|[0x8000327c]<br>0x000FFFF9|- rd : x18<br> - rs1_val == 1048576<br>                                                                                                                                         |[0x80000226]:c.addi s2, 57<br> [0x80000228]:sw s2, 108(tp)<br> |
|  29|[0x80003280]<br>0x001FFFF9|- rd : x4<br> - rs1_val == 2097152<br>                                                                                                                                          |[0x80000238]:c.addi tp, 57<br> [0x8000023a]:sw tp, 0(ra)<br>   |
|  30|[0x80003284]<br>0x00400003|- rd : x26<br> - rs1_val == 4194304<br>                                                                                                                                         |[0x80000242]:c.addi s10, 3<br> [0x80000244]:sw s10, 4(ra)<br>  |
|  31|[0x80003288]<br>0x00800006|- rd : x23<br> - rs1_val == 8388608<br>                                                                                                                                         |[0x8000024c]:c.addi s7, 6<br> [0x8000024e]:sw s7, 8(ra)<br>    |
|  32|[0x8000328c]<br>0x00FFFFFB|- rs1_val == 16777216<br>                                                                                                                                                       |[0x80000256]:c.addi a0, 59<br> [0x80000258]:sw a0, 12(ra)<br>  |
|  33|[0x80003290]<br>0x01FFFFFF|- rs1_val == 33554432<br>                                                                                                                                                       |[0x80000260]:c.addi a0, 63<br> [0x80000262]:sw a0, 16(ra)<br>  |
|  34|[0x80003294]<br>0x03FFFFFA|- rs1_val == 67108864<br>                                                                                                                                                       |[0x8000026a]:c.addi a0, 58<br> [0x8000026c]:sw a0, 20(ra)<br>  |
|  35|[0x80003298]<br>0x0800001F|- rs1_val == 134217728<br>                                                                                                                                                      |[0x80000274]:c.addi a0, 31<br> [0x80000276]:sw a0, 24(ra)<br>  |
|  36|[0x8000329c]<br>0x0FFFFFF6|- rs1_val == 268435456<br>                                                                                                                                                      |[0x8000027e]:c.addi a0, 54<br> [0x80000280]:sw a0, 28(ra)<br>  |
|  37|[0x800032a0]<br>0x20000007|- rs1_val == 536870912<br>                                                                                                                                                      |[0x80000288]:c.addi a0, 7<br> [0x8000028a]:sw a0, 32(ra)<br>   |
|  38|[0x800032a4]<br>0x3FFFFFF8|- rs1_val == 1073741824<br>                                                                                                                                                     |[0x80000292]:c.addi a0, 56<br> [0x80000294]:sw a0, 36(ra)<br>  |
|  39|[0x800032a8]<br>0x0000001D|- rs1_val == -2<br>                                                                                                                                                             |[0x8000029c]:c.addi a0, 31<br> [0x8000029e]:sw a0, 40(ra)<br>  |
|  40|[0x800032ac]<br>0xFFFFFFE7|- rs1_val == -3<br>                                                                                                                                                             |[0x800002a6]:c.addi a0, 42<br> [0x800002a8]:sw a0, 44(ra)<br>  |
|  41|[0x800032b0]<br>0xFFFFFFEA|- rs1_val == -5<br>                                                                                                                                                             |[0x800002b0]:c.addi a0, 47<br> [0x800002b2]:sw a0, 48(ra)<br>  |
|  42|[0x800032b4]<br>0xFFFFFFF4|- imm_val == -3<br> - rs1_val == -9<br>                                                                                                                                         |[0x800002ba]:c.addi a0, 61<br> [0x800002bc]:sw a0, 52(ra)<br>  |
|  43|[0x800032b8]<br>0xFFF7FFDF|- rs1_val == -524289<br>                                                                                                                                                        |[0x800002c8]:c.addi a0, 32<br> [0x800002ca]:sw a0, 56(ra)<br>  |
|  44|[0x800032bc]<br>0xFFDFFFEF|- rs1_val == -2097153<br>                                                                                                                                                       |[0x800002d6]:c.addi a0, 48<br> [0x800002d8]:sw a0, 60(ra)<br>  |
|  45|[0x800032c0]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                       |[0x800002e4]:c.addi.hint.a0<br> [0x800002e6]:sw a0, 64(ra)<br> |
|  46|[0x800032c4]<br>0xFF800003|- rs1_val == -8388609<br>                                                                                                                                                       |[0x800002f2]:c.addi a0, 4<br> [0x800002f4]:sw a0, 68(ra)<br>   |
|  47|[0x800032c8]<br>0xFF00000E|- rs1_val == -16777217<br>                                                                                                                                                      |[0x80000300]:c.addi a0, 15<br> [0x80000302]:sw a0, 72(ra)<br>  |
|  48|[0x800032cc]<br>0xFE00001E|- rs1_val == -33554433<br>                                                                                                                                                      |[0x8000030e]:c.addi a0, 31<br> [0x80000310]:sw a0, 76(ra)<br>  |
|  49|[0x800032d0]<br>0xF8000006|- rs1_val == -134217729<br>                                                                                                                                                     |[0x8000031c]:c.addi a0, 7<br> [0x8000031e]:sw a0, 80(ra)<br>   |
|  50|[0x800032d4]<br>0xF000001E|- rs1_val == -268435457<br>                                                                                                                                                     |[0x8000032a]:c.addi a0, 31<br> [0x8000032c]:sw a0, 84(ra)<br>  |
|  51|[0x800032d8]<br>0xDFFFFFFB|- rs1_val == -536870913<br>                                                                                                                                                     |[0x80000338]:c.addi a0, 60<br> [0x8000033a]:sw a0, 88(ra)<br>  |
|  52|[0x800032dc]<br>0xBFFFFFF7|- rs1_val == -1073741825<br>                                                                                                                                                    |[0x80000346]:c.addi a0, 56<br> [0x80000348]:sw a0, 92(ra)<br>  |
|  53|[0x800032e0]<br>0x55555559|- rs1_val == 1431655765<br>                                                                                                                                                     |[0x80000354]:c.addi a0, 4<br> [0x80000356]:sw a0, 96(ra)<br>   |
|  54|[0x800032e4]<br>0xAAAAAAA6|- rs1_val == -1431655766<br>                                                                                                                                                    |[0x80000362]:c.addi a0, 60<br> [0x80000364]:sw a0, 100(ra)<br> |
|  55|[0x800032e8]<br>0x80000002|- imm_val == 2<br>                                                                                                                                                              |[0x8000036c]:c.addi a0, 2<br> [0x8000036e]:sw a0, 104(ra)<br>  |
|  56|[0x800032ec]<br>0x55555565|- imm_val == 16<br>                                                                                                                                                             |[0x8000037a]:c.addi a0, 16<br> [0x8000037c]:sw a0, 108(ra)<br> |
|  57|[0x800032f0]<br>0x00000815|- imm_val == 21<br>                                                                                                                                                             |[0x80000388]:c.addi a0, 21<br> [0x8000038a]:sw a0, 112(ra)<br> |
|  58|[0x800032f4]<br>0xFFFFFFFE|- rs1_val == -17<br>                                                                                                                                                            |[0x80000392]:c.addi a0, 15<br> [0x80000394]:sw a0, 116(ra)<br> |
|  59|[0x800032f8]<br>0xFFFFFFDD|- rs1_val == -33<br>                                                                                                                                                            |[0x8000039c]:c.addi a0, 62<br> [0x8000039e]:sw a0, 120(ra)<br> |
|  60|[0x800032fc]<br>0xFFFFFFB5|- rs1_val == -65<br>                                                                                                                                                            |[0x800003a6]:c.addi a0, 54<br> [0x800003a8]:sw a0, 124(ra)<br> |
|  61|[0x80003300]<br>0xFFFFFF94|- rs1_val == -129<br>                                                                                                                                                           |[0x800003b0]:c.addi a0, 21<br> [0x800003b2]:sw a0, 128(ra)<br> |
|  62|[0x80003304]<br>0xFFFFFF01|- rs1_val == -257<br>                                                                                                                                                           |[0x800003ba]:c.addi a0, 2<br> [0x800003bc]:sw a0, 132(ra)<br>  |
|  63|[0x80003308]<br>0xFFFFFE14|- rs1_val == -513<br>                                                                                                                                                           |[0x800003c4]:c.addi a0, 21<br> [0x800003c6]:sw a0, 136(ra)<br> |
|  64|[0x8000330c]<br>0xFFFFFBEF|- rs1_val == -1025<br>                                                                                                                                                          |[0x800003ce]:c.addi a0, 48<br> [0x800003d0]:sw a0, 140(ra)<br> |
|  65|[0x80003310]<br>0xFFFFF808|- rs1_val == -2049<br>                                                                                                                                                          |[0x800003dc]:c.addi a0, 9<br> [0x800003de]:sw a0, 144(ra)<br>  |
|  66|[0x80003314]<br>0xFFFFF00F|- rs1_val == -4097<br>                                                                                                                                                          |[0x800003ea]:c.addi a0, 16<br> [0x800003ec]:sw a0, 148(ra)<br> |
|  67|[0x80003318]<br>0xFFFFE005|- rs1_val == -8193<br>                                                                                                                                                          |[0x800003f8]:c.addi a0, 6<br> [0x800003fa]:sw a0, 152(ra)<br>  |
|  68|[0x8000331c]<br>0xFFFFBFFD|- rs1_val == -16385<br>                                                                                                                                                         |[0x80000406]:c.addi a0, 62<br> [0x80000408]:sw a0, 156(ra)<br> |
|  69|[0x80003320]<br>0xFFFF8014|- rs1_val == -32769<br>                                                                                                                                                         |[0x80000414]:c.addi a0, 21<br> [0x80000416]:sw a0, 160(ra)<br> |
|  70|[0x80003324]<br>0xFFFEFFF7|- rs1_val == -65537<br>                                                                                                                                                         |[0x80000422]:c.addi a0, 56<br> [0x80000424]:sw a0, 164(ra)<br> |
|  71|[0x80003328]<br>0xFFFE0008|- rs1_val == -131073<br>                                                                                                                                                        |[0x80000430]:c.addi a0, 9<br> [0x80000432]:sw a0, 168(ra)<br>  |
|  72|[0x8000332c]<br>0xFFFBFFFE|- rs1_val == -262145<br>                                                                                                                                                        |[0x8000043e]:c.addi a0, 63<br> [0x80000440]:sw a0, 172(ra)<br> |
