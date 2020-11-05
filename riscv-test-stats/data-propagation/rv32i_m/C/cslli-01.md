
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
| SIG_REGION                | [('0x80003204', '0x80003324', '72 words')]      |
| COV_LABELS                | cslli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
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

|s.no|        signature         |                                                            coverpoints                                                             |                             code                              |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFDFC|- opcode : c.slli<br> - rd : x15<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -129<br> - imm_val == 2<br>                  |[0x80000104]:c.slli a5, 2<br> [0x80000106]:sw a5, 0(ra)<br>    |
|   2|[0x80003214]<br>0x00000000|- rd : x12<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 536870912<br> - imm_val == 8<br>                                   |[0x8000010e]:c.slli a2, 8<br> [0x80000110]:sw a2, 4(ra)<br>    |
|   3|[0x80003218]<br>0x00100000|- rd : x8<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 16<br> - imm_val == 16<br>                 |[0x80000118]:c.slli fp, 16<br> [0x8000011a]:sw fp, 8(ra)<br>   |
|   4|[0x8000321c]<br>0x00000000|- rd : x11<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 23<br> |[0x80000122]:c.slli a1, 23<br> [0x80000124]:sw a1, 12(ra)<br>  |
|   5|[0x80003220]<br>0x00000000|- rd : x9<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - imm_val == 15<br>                                            |[0x8000012c]:c.slli s1, 15<br> [0x8000012e]:sw s1, 16(ra)<br>  |
|   6|[0x80003224]<br>0xFFFFFFC0|- rd : x10<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                     |[0x8000013a]:c.slli a0, 6<br> [0x8000013c]:sw a0, 20(ra)<br>   |
|   7|[0x80003228]<br>0x00080000|- rd : x14<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                            |[0x80000144]:c.slli a4, 19<br> [0x80000146]:sw a4, 24(ra)<br>  |
|   8|[0x8000322c]<br>0x00000006|- rd : x13<br> - imm_val == 1<br>                                                                                                   |[0x8000014e]:c.slli a3, 1<br> [0x80000150]:sw a3, 28(ra)<br>   |
|   9|[0x80003230]<br>0xFFFFFBF0|- rs1_val == -65<br> - imm_val == 4<br>                                                                                             |[0x80000158]:c.slli a0, 4<br> [0x8000015a]:sw a0, 32(ra)<br>   |
|  10|[0x80003234]<br>0xC0000000|- imm_val == 30<br>                                                                                                                 |[0x80000162]:c.slli a0, 30<br> [0x80000164]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0x00000000|- rs1_val == 16384<br> - imm_val == 29<br>                                                                                          |[0x8000016c]:c.slli a0, 29<br> [0x8000016e]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0x00000000|- rs1_val == 4096<br> - imm_val == 27<br>                                                                                           |[0x80000176]:c.slli a0, 27<br> [0x80000178]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0x08000000|- rs1_val == 64<br> - imm_val == 21<br>                                                                                             |[0x80000180]:c.slli a0, 21<br> [0x80000182]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0x10000000|- rs1_val == 262144<br> - imm_val == 10<br>                                                                                         |[0x8000018a]:c.slli a0, 10<br> [0x8000018c]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0x00000000|- rs1_val == 2<br>                                                                                                                  |[0x80000194]:c.slli a0, 31<br> [0x80000196]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x00040000|- rs1_val == 4<br>                                                                                                                  |[0x8000019e]:c.slli a0, 16<br> [0x800001a0]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x00001000|- rs1_val == 8<br>                                                                                                                  |[0x800001a8]:c.slli a0, 9<br> [0x800001aa]:sw a0, 64(ra)<br>   |
|  18|[0x80003254]<br>0x00020000|- rs1_val == 32<br>                                                                                                                 |[0x800001b2]:c.slli a0, 12<br> [0x800001b4]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0x00000400|- rs1_val == 128<br>                                                                                                                |[0x800001bc]:c.slli a0, 3<br> [0x800001be]:sw a0, 72(ra)<br>   |
|  20|[0x8000325c]<br>0x00000000|- rs1_val == 256<br>                                                                                                                |[0x800001c6]:c.slli a0, 27<br> [0x800001c8]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x00000000|- rs1_val == 512<br>                                                                                                                |[0x800001d0]:c.slli a0, 30<br> [0x800001d2]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0x20000000|- rs1_val == 1024<br>                                                                                                               |[0x800001da]:c.slli a0, 19<br> [0x800001dc]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0x00000000|- rs1_val == 2048<br>                                                                                                               |[0x800001e8]:c.slli a0, 30<br> [0x800001ea]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0x02000000|- rs1_val == 8192<br>                                                                                                               |[0x800001f2]:c.slli a0, 12<br> [0x800001f4]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x00200000|- rs1_val == 32768<br>                                                                                                              |[0x800001fc]:c.slli a0, 6<br> [0x800001fe]:sw a0, 96(ra)<br>   |
|  26|[0x80003274]<br>0x00000000|- rs1_val == 65536<br>                                                                                                              |[0x80000206]:c.slli a0, 29<br> [0x80000208]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0x00800000|- rs1_val == 131072<br>                                                                                                             |[0x80000210]:c.slli a0, 6<br> [0x80000212]:sw a0, 104(ra)<br>  |
|  28|[0x8000327c]<br>0x00000000|- rs1_val == 524288<br>                                                                                                             |[0x8000021a]:c.slli a0, 31<br> [0x8000021c]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                            |[0x80000224]:c.slli a0, 16<br> [0x80000226]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0x00400000|- rs1_val == 2097152<br>                                                                                                            |[0x8000022e]:c.slli a0, 1<br> [0x80000230]:sw a0, 116(ra)<br>  |
|  31|[0x80003288]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                            |[0x80000238]:c.slli a0, 13<br> [0x8000023a]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x20000000|- rs1_val == 8388608<br>                                                                                                            |[0x80000242]:c.slli a0, 6<br> [0x80000244]:sw a0, 124(ra)<br>  |
|  33|[0x80003290]<br>0x04000000|- rs1_val == 16777216<br>                                                                                                           |[0x8000024c]:c.slli a0, 2<br> [0x8000024e]:sw a0, 128(ra)<br>  |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                           |[0x80000256]:c.slli a0, 30<br> [0x80000258]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x80000000|- rs1_val == 67108864<br>                                                                                                           |[0x80000260]:c.slli a0, 5<br> [0x80000262]:sw a0, 136(ra)<br>  |
|  36|[0x8000329c]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                          |[0x8000026a]:c.slli a0, 23<br> [0x8000026c]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0x20000000|- rs1_val == 268435456<br>                                                                                                          |[0x80000274]:c.slli a0, 1<br> [0x80000276]:sw a0, 144(ra)<br>  |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                         |[0x8000027e]:c.slli a0, 3<br> [0x80000280]:sw a0, 148(ra)<br>  |
|  39|[0x800032a8]<br>0xBFFE0000|- rs1_val == -8193<br>                                                                                                              |[0x8000028c]:c.slli a0, 17<br> [0x8000028e]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0xFFF7FFE0|- rs1_val == -16385<br>                                                                                                             |[0x8000029a]:c.slli a0, 5<br> [0x8000029c]:sw a0, 156(ra)<br>  |
|  41|[0x800032b0]<br>0xFFFE0000|- rs1_val == -32769<br>                                                                                                             |[0x800002a8]:c.slli a0, 17<br> [0x800002aa]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0xBFFFC000|- rs1_val == -65537<br>                                                                                                             |[0x800002b6]:c.slli a0, 14<br> [0x800002b8]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0xE0000000|- rs1_val == -131073<br>                                                                                                            |[0x800002c4]:c.slli a0, 29<br> [0x800002c6]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0xFF7FFFE0|- rs1_val == -262145<br>                                                                                                            |[0x800002d2]:c.slli a0, 5<br> [0x800002d4]:sw a0, 172(ra)<br>  |
|  45|[0x800032c0]<br>0x80000000|- rs1_val == -524289<br>                                                                                                            |[0x800002e0]:c.slli a0, 31<br> [0x800002e2]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0xFFFFE000|- rs1_val == -1048577<br>                                                                                                           |[0x800002ee]:c.slli a0, 13<br> [0x800002f0]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0x80000000|- rs1_val == -2097153<br>                                                                                                           |[0x800002fc]:c.slli a0, 31<br> [0x800002fe]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0xE0000000|- rs1_val == -4194305<br>                                                                                                           |[0x8000030a]:c.slli a0, 29<br> [0x8000030c]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0x7FFFFF00|- rs1_val == -8388609<br>                                                                                                           |[0x80000318]:c.slli a0, 8<br> [0x8000031a]:sw a0, 192(ra)<br>  |
|  50|[0x800032d4]<br>0xFFFFFC00|- rs1_val == -16777217<br>                                                                                                          |[0x80000326]:c.slli a0, 10<br> [0x80000328]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0xFFFFFE00|- rs1_val == -33554433<br>                                                                                                          |[0x80000334]:c.slli a0, 9<br> [0x80000336]:sw a0, 200(ra)<br>  |
|  52|[0x800032dc]<br>0xBFFFFFF0|- rs1_val == -67108865<br>                                                                                                          |[0x80000342]:c.slli a0, 4<br> [0x80000344]:sw a0, 204(ra)<br>  |
|  53|[0x800032e0]<br>0xFFF80000|- rs1_val == -134217729<br>                                                                                                         |[0x80000350]:c.slli a0, 19<br> [0x80000352]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0xE0000000|- rs1_val == -268435457<br>                                                                                                         |[0x8000035e]:c.slli a0, 29<br> [0x80000360]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0xFFFFFFE0|- rs1_val == -536870913<br>                                                                                                         |[0x8000036c]:c.slli a0, 5<br> [0x8000036e]:sw a0, 216(ra)<br>  |
|  56|[0x800032ec]<br>0xFFFFFC00|- rs1_val == -1073741825<br>                                                                                                        |[0x8000037a]:c.slli a0, 10<br> [0x8000037c]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0x55555000|- rs1_val == 1431655765<br>                                                                                                         |[0x80000388]:c.slli a0, 12<br> [0x8000038a]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0xFFFFFE00|- rs1_val == -2<br>                                                                                                                 |[0x80000392]:c.slli a0, 8<br> [0x80000394]:sw a0, 228(ra)<br>  |
|  59|[0x800032f8]<br>0x55540000|- rs1_val == -1431655766<br>                                                                                                        |[0x800003a0]:c.slli a0, 17<br> [0x800003a2]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0xFFFFFE80|- rs1_val == -3<br>                                                                                                                 |[0x800003aa]:c.slli a0, 7<br> [0x800003ac]:sw a0, 236(ra)<br>  |
|  61|[0x80003300]<br>0xFFFEC000|- rs1_val == -5<br>                                                                                                                 |[0x800003b4]:c.slli a0, 14<br> [0x800003b6]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0xFFFB8000|- rs1_val == -9<br>                                                                                                                 |[0x800003be]:c.slli a0, 15<br> [0x800003c0]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0xFFFFFEF0|- rs1_val == -17<br>                                                                                                                |[0x800003c8]:c.slli a0, 4<br> [0x800003ca]:sw a0, 248(ra)<br>  |
|  64|[0x8000330c]<br>0xFFFFFFBE|- rs1_val == -33<br>                                                                                                                |[0x800003d2]:c.slli a0, 1<br> [0x800003d4]:sw a0, 252(ra)<br>  |
|  65|[0x80003310]<br>0x7F800000|- rs1_val == -257<br>                                                                                                               |[0x800003dc]:c.slli a0, 23<br> [0x800003de]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0xFF7FC000|- rs1_val == -513<br>                                                                                                               |[0x800003e6]:c.slli a0, 14<br> [0x800003e8]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0x80000000|- rs1_val == -1025<br>                                                                                                              |[0x800003f0]:c.slli a0, 31<br> [0x800003f2]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xDFFC0000|- rs1_val == -2049<br>                                                                                                              |[0x800003fe]:c.slli a0, 18<br> [0x80000400]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0x80000000|- rs1_val == -4097<br>                                                                                                              |[0x8000040c]:c.slli a0, 31<br> [0x8000040e]:sw a0, 272(ra)<br> |
