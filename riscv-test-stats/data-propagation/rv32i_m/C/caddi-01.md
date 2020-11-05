
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000440')]      |
| SIG_REGION                | [('0x80003204', '0x8000332c', '74 words')]      |
| COV_LABELS                | caddi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi-01.S/caddi-01.S    |
| Total Number of coverpoints| 124     |
| Total Coverpoints Hit     | 124      |
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

|s.no|        signature         |                                                                         coverpoints                                                                         |                              code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003210]<br>0x7FFFFFFC|- opcode : c.addi<br> - rd : x10<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> |[0x80000104]:c.addi a0, 60<br> [0x80000106]:sw a0, 0(s4)<br>    |
|   2|[0x80003214]<br>0x00000002|- rd : x4<br> - rs1_val == 0<br> - imm_val == 2<br>                                                                                                          |[0x8000010e]:c.addi tp, 2<br> [0x80000110]:sw tp, 4(s4)<br>     |
|   3|[0x80003218]<br>0x7FFFFFEE|- rd : x12<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -17<br> - rs1_val == 2147483647<br>                           |[0x8000011c]:c.addi a2, 47<br> [0x8000011e]:sw a2, 8(s4)<br>    |
|   4|[0x8000321c]<br>0x00000016|- rd : x5<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 1<br> - imm_val == 21<br>                                                                       |[0x80000126]:c.addi t0, 21<br> [0x80000128]:sw t0, 12(s4)<br>   |
|   5|[0x80003220]<br>0x000001E0|- rd : x9<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == 512<br>                                                                         |[0x80000130]:c.addi s1, 32<br> [0x80000132]:sw s1, 16(s4)<br>   |
|   6|[0x80003224]<br>0x00000040|- rd : x29<br> - imm_val == 0<br> - rs1_val == 64<br>                                                                                                        |[0x8000013a]:c.addi.hint.t4<br> [0x8000013c]:sw t4, 20(s4)<br>  |
|   7|[0x80003228]<br>0x0080001F|- rd : x19<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == 8388608<br>                                                                    |[0x80000144]:c.addi s3, 31<br> [0x80000146]:sw s3, 24(s4)<br>   |
|   8|[0x8000322c]<br>0x10000001|- rd : x8<br> - imm_val == 1<br> - rs1_val == 268435456<br>                                                                                                  |[0x8000014e]:c.addi fp, 1<br> [0x80000150]:sw fp, 28(s4)<br>    |
|   9|[0x80003230]<br>0xFFFFFFDE|- rd : x13<br> - rs1_val == imm_val<br> - rs1_val == -17<br>                                                                                                 |[0x80000158]:c.addi a3, 47<br> [0x8000015a]:sw a3, 32(s4)<br>   |
|  10|[0x80003234]<br>0x0000000F|- rd : x14<br> - rs1_val < 0 and imm_val > 0<br>                                                                                                             |[0x80000162]:c.addi a4, 21<br> [0x80000164]:sw a4, 36(s4)<br>   |
|  11|[0x80003238]<br>0xFFFFFFF8|- rd : x18<br> - rs1_val == 2<br>                                                                                                                            |[0x8000016c]:c.addi s2, 54<br> [0x8000016e]:sw s2, 40(s4)<br>   |
|  12|[0x8000323c]<br>0xFFFFFFFD|- rd : x30<br> - rs1_val == 4<br>                                                                                                                            |[0x80000176]:c.addi t5, 57<br> [0x80000178]:sw t5, 44(s4)<br>   |
|  13|[0x80003240]<br>0x00000007|- rd : x22<br> - rs1_val == 8<br>                                                                                                                            |[0x80000180]:c.addi s6, 63<br> [0x80000182]:sw s6, 48(s4)<br>   |
|  14|[0x80003244]<br>0x00000009|- rd : x28<br> - rs1_val == 16<br>                                                                                                                           |[0x8000018a]:c.addi t3, 57<br> [0x8000018c]:sw t3, 52(s4)<br>   |
|  15|[0x80003248]<br>0x0000001C|- rd : x2<br> - rs1_val == 32<br>                                                                                                                            |[0x80000194]:c.addi sp, 60<br> [0x80000196]:sw sp, 56(s4)<br>   |
|  16|[0x8000324c]<br>0x00000089|- rd : x27<br> - rs1_val == 128<br>                                                                                                                          |[0x8000019e]:c.addi s11, 9<br> [0x800001a0]:sw s11, 60(s4)<br>  |
|  17|[0x80003250]<br>0x000000E0|- rd : x16<br> - rs1_val == 256<br>                                                                                                                          |[0x800001a8]:c.addi a6, 32<br> [0x800001aa]:sw a6, 64(s4)<br>   |
|  18|[0x80003254]<br>0x000003FF|- rd : x1<br> - rs1_val == 1024<br>                                                                                                                          |[0x800001b2]:c.addi ra, 63<br> [0x800001b4]:sw ra, 68(s4)<br>   |
|  19|[0x80003258]<br>0x000007F7|- rd : x23<br> - imm_val == -9<br> - rs1_val == 2048<br>                                                                                                     |[0x800001c0]:c.addi s7, 55<br> [0x800001c2]:sw s7, 72(s4)<br>   |
|  20|[0x8000325c]<br>0x00001004|- rd : x7<br> - imm_val == 4<br> - rs1_val == 4096<br>                                                                                                       |[0x800001ca]:c.addi t2, 4<br> [0x800001cc]:sw t2, 76(s4)<br>    |
|  21|[0x80003260]<br>0x00002008|- rd : x26<br> - imm_val == 8<br> - rs1_val == 8192<br>                                                                                                      |[0x800001d4]:c.addi s10, 8<br> [0x800001d6]:sw s10, 80(s4)<br>  |
|  22|[0x80003264]<br>0x0000400F|- rd : x15<br> - rs1_val == 16384<br>                                                                                                                        |[0x800001de]:c.addi a5, 15<br> [0x800001e0]:sw a5, 84(s4)<br>   |
|  23|[0x80003268]<br>0x00008003|- rd : x3<br> - rs1_val == 32768<br>                                                                                                                         |[0x800001e8]:c.addi gp, 3<br> [0x800001ea]:sw gp, 88(s4)<br>    |
|  24|[0x8000326c]<br>0x00010002|- rd : x25<br> - rs1_val == 65536<br>                                                                                                                        |[0x800001f2]:c.addi s9, 2<br> [0x800001f4]:sw s9, 92(s4)<br>    |
|  25|[0x80003270]<br>0x0001FFF7|- rd : x31<br> - rs1_val == 131072<br>                                                                                                                       |[0x800001fc]:c.addi t6, 55<br> [0x800001fe]:sw t6, 96(s4)<br>   |
|  26|[0x80003274]<br>0x0004000F|- rd : x11<br> - rs1_val == 262144<br>                                                                                                                       |[0x80000206]:c.addi a1, 15<br> [0x80000208]:sw a1, 100(s4)<br>  |
|  27|[0x80003278]<br>0x0007FFF6|- rd : x6<br> - rs1_val == 524288<br>                                                                                                                        |[0x80000210]:c.addi t1, 54<br> [0x80000212]:sw t1, 104(s4)<br>  |
|  28|[0x8000327c]<br>0x000FFFF9|- rd : x17<br> - rs1_val == 1048576<br>                                                                                                                      |[0x8000021a]:c.addi a7, 57<br> [0x8000021c]:sw a7, 108(s4)<br>  |
|  29|[0x80003280]<br>0x00200003|- rd : x24<br> - rs1_val == 2097152<br>                                                                                                                      |[0x8000022c]:c.addi s8, 3<br> [0x8000022e]:sw s8, 0(ra)<br>     |
|  30|[0x80003284]<br>0x00400000|- rd : x20<br> - rs1_val == 4194304<br>                                                                                                                      |[0x80000236]:c.addi.hint.s4<br> [0x80000238]:sw s4, 4(ra)<br>   |
|  31|[0x80003288]<br>0x00FFFFFC|- rd : x21<br> - rs1_val == 16777216<br>                                                                                                                     |[0x80000240]:c.addi s5, 60<br> [0x80000242]:sw s5, 8(ra)<br>    |
|  32|[0x8000328c]<br>0x01FFFFFE|- imm_val == -2<br> - rs1_val == 33554432<br>                                                                                                                |[0x8000024a]:c.addi a0, 62<br> [0x8000024c]:sw a0, 12(ra)<br>   |
|  33|[0x80003290]<br>0x04000002|- rs1_val == 67108864<br>                                                                                                                                    |[0x80000254]:c.addi a0, 2<br> [0x80000256]:sw a0, 16(ra)<br>    |
|  34|[0x80003294]<br>0x08000007|- rs1_val == 134217728<br>                                                                                                                                   |[0x8000025e]:c.addi a0, 7<br> [0x80000260]:sw a0, 20(ra)<br>    |
|  35|[0x80003298]<br>0x1FFFFFFC|- rs1_val == 536870912<br>                                                                                                                                   |[0x80000268]:c.addi a0, 60<br> [0x8000026a]:sw a0, 24(ra)<br>   |
|  36|[0x8000329c]<br>0x3FFFFFFB|- imm_val == -5<br> - rs1_val == 1073741824<br>                                                                                                              |[0x80000272]:c.addi a0, 59<br> [0x80000274]:sw a0, 28(ra)<br>   |
|  37|[0x800032a0]<br>0xFFFFFFEE|- rs1_val == -2<br>                                                                                                                                          |[0x8000027c]:c.addi a0, 48<br> [0x8000027e]:sw a0, 32(ra)<br>   |
|  38|[0x800032a4]<br>0xFFFFFFEC|- rs1_val == -3<br>                                                                                                                                          |[0x80000286]:c.addi a0, 47<br> [0x80000288]:sw a0, 36(ra)<br>   |
|  39|[0x800032a8]<br>0xFFFFFFEA|- rs1_val == -5<br>                                                                                                                                          |[0x80000290]:c.addi a0, 47<br> [0x80000292]:sw a0, 40(ra)<br>   |
|  40|[0x800032ac]<br>0xFFFFFFF3|- rs1_val == -9<br>                                                                                                                                          |[0x8000029a]:c.addi a0, 60<br> [0x8000029c]:sw a0, 44(ra)<br>   |
|  41|[0x800032b0]<br>0xFFF7FFDF|- rs1_val == -524289<br>                                                                                                                                     |[0x800002a8]:c.addi a0, 32<br> [0x800002aa]:sw a0, 48(ra)<br>   |
|  42|[0x800032b4]<br>0xFFEFFFFB|- rs1_val == -1048577<br>                                                                                                                                    |[0x800002b6]:c.addi a0, 60<br> [0x800002b8]:sw a0, 52(ra)<br>   |
|  43|[0x800032b8]<br>0xFFDFFFDF|- rs1_val == -2097153<br>                                                                                                                                    |[0x800002c4]:c.addi a0, 32<br> [0x800002c6]:sw a0, 56(ra)<br>   |
|  44|[0x800032bc]<br>0xFFBFFFFD|- rs1_val == -4194305<br>                                                                                                                                    |[0x800002d2]:c.addi a0, 62<br> [0x800002d4]:sw a0, 60(ra)<br>   |
|  45|[0x800032c0]<br>0xFF800008|- rs1_val == -8388609<br>                                                                                                                                    |[0x800002e0]:c.addi a0, 9<br> [0x800002e2]:sw a0, 64(ra)<br>    |
|  46|[0x800032c4]<br>0xFEFFFFF6|- rs1_val == -16777217<br>                                                                                                                                   |[0x800002ee]:c.addi a0, 55<br> [0x800002f0]:sw a0, 68(ra)<br>   |
|  47|[0x800032c8]<br>0xFE000014|- rs1_val == -33554433<br>                                                                                                                                   |[0x800002fc]:c.addi a0, 21<br> [0x800002fe]:sw a0, 72(ra)<br>   |
|  48|[0x800032cc]<br>0xFC000005|- rs1_val == -67108865<br>                                                                                                                                   |[0x8000030a]:c.addi a0, 6<br> [0x8000030c]:sw a0, 76(ra)<br>    |
|  49|[0x800032d0]<br>0xF8000003|- rs1_val == -134217729<br>                                                                                                                                  |[0x80000318]:c.addi a0, 4<br> [0x8000031a]:sw a0, 80(ra)<br>    |
|  50|[0x800032d4]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                  |[0x80000326]:c.addi.hint.a0<br> [0x80000328]:sw a0, 84(ra)<br>  |
|  51|[0x800032d8]<br>0xDFFFFFF7|- rs1_val == -536870913<br>                                                                                                                                  |[0x80000334]:c.addi a0, 56<br> [0x80000336]:sw a0, 88(ra)<br>   |
|  52|[0x800032dc]<br>0xBFFFFFFB|- rs1_val == -1073741825<br>                                                                                                                                 |[0x80000342]:c.addi a0, 60<br> [0x80000344]:sw a0, 92(ra)<br>   |
|  53|[0x800032e0]<br>0x55555551|- rs1_val == 1431655765<br>                                                                                                                                  |[0x80000350]:c.addi a0, 60<br> [0x80000352]:sw a0, 96(ra)<br>   |
|  54|[0x800032e4]<br>0xAAAAAAB1|- rs1_val == -1431655766<br>                                                                                                                                 |[0x8000035e]:c.addi a0, 7<br> [0x80000360]:sw a0, 100(ra)<br>   |
|  55|[0x800032e8]<br>0x00000015|- imm_val == 16<br>                                                                                                                                          |[0x80000368]:c.addi a0, 16<br> [0x8000036a]:sw a0, 104(ra)<br>  |
|  56|[0x800032ec]<br>0xFFFFFFFA|- imm_val == -3<br>                                                                                                                                          |[0x80000372]:c.addi a0, 61<br> [0x80000374]:sw a0, 108(ra)<br>  |
|  57|[0x800032f0]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                      |[0x80000380]:c.addi.hint.a0<br> [0x80000382]:sw a0, 112(ra)<br> |
|  58|[0x800032f4]<br>0xFFFFFFE1|- rs1_val == -33<br>                                                                                                                                         |[0x8000038a]:c.addi a0, 2<br> [0x8000038c]:sw a0, 116(ra)<br>   |
|  59|[0x800032f8]<br>0xFFFFFF9F|- rs1_val == -65<br>                                                                                                                                         |[0x80000394]:c.addi a0, 32<br> [0x80000396]:sw a0, 120(ra)<br>  |
|  60|[0x800032fc]<br>0xFFFFFF84|- rs1_val == -129<br>                                                                                                                                        |[0x8000039e]:c.addi a0, 5<br> [0x800003a0]:sw a0, 124(ra)<br>   |
|  61|[0x80003300]<br>0xFFFFFEDF|- rs1_val == -257<br>                                                                                                                                        |[0x800003a8]:c.addi a0, 32<br> [0x800003aa]:sw a0, 128(ra)<br>  |
|  62|[0x80003304]<br>0xFFFFFDFC|- rs1_val == -513<br>                                                                                                                                        |[0x800003b2]:c.addi a0, 61<br> [0x800003b4]:sw a0, 132(ra)<br>  |
|  63|[0x80003308]<br>0xFFFFFBF7|- rs1_val == -1025<br>                                                                                                                                       |[0x800003bc]:c.addi a0, 56<br> [0x800003be]:sw a0, 136(ra)<br>  |
|  64|[0x8000330c]<br>0xFFFFF7EE|- rs1_val == -2049<br>                                                                                                                                       |[0x800003ca]:c.addi a0, 47<br> [0x800003cc]:sw a0, 140(ra)<br>  |
|  65|[0x80003310]<br>0xFFFFF00F|- rs1_val == -4097<br>                                                                                                                                       |[0x800003d8]:c.addi a0, 16<br> [0x800003da]:sw a0, 144(ra)<br>  |
|  66|[0x80003314]<br>0xFFFFDFDF|- rs1_val == -8193<br>                                                                                                                                       |[0x800003e6]:c.addi a0, 32<br> [0x800003e8]:sw a0, 148(ra)<br>  |
|  67|[0x80003318]<br>0xFFBFFFE9|- imm_val == -22<br>                                                                                                                                         |[0x800003f4]:c.addi a0, 42<br> [0x800003f6]:sw a0, 152(ra)<br>  |
|  68|[0x8000331c]<br>0xFFFF8007|- rs1_val == -32769<br>                                                                                                                                      |[0x80000402]:c.addi a0, 8<br> [0x80000404]:sw a0, 156(ra)<br>   |
|  69|[0x80003320]<br>0xFFFF0006|- rs1_val == -65537<br>                                                                                                                                      |[0x80000410]:c.addi a0, 7<br> [0x80000412]:sw a0, 160(ra)<br>   |
|  70|[0x80003324]<br>0xFFFE0002|- rs1_val == -131073<br>                                                                                                                                     |[0x8000041e]:c.addi a0, 3<br> [0x80000420]:sw a0, 164(ra)<br>   |
|  71|[0x80003328]<br>0xFFFC0001|- rs1_val == -262145<br>                                                                                                                                     |[0x8000042c]:c.addi a0, 2<br> [0x8000042e]:sw a0, 168(ra)<br>   |
