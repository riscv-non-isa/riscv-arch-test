
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000780')]      |
| SIG_REGION                | [('0x80003204', '0x8000332c', '74 words')]      |
| COV_LABELS                | csw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csw-01.S/csw-01.S    |
| Total Number of coverpoints| 101     |
| Total Coverpoints Hit     | 101      |
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

|s.no|        signature         |                                                          coverpoints                                                          |               code               |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80003210]<br>0xFFFFFFF7|- opcode : c.sw<br> - rs1 : x12<br> - rs2 : x14<br> - rs1 != rs2<br> - imm_val > 0<br> - rs2_val == -9<br> - imm_val == 40<br> |[0x80000110]:c.sw a2, a4, 40<br>  |
|   2|[0x80003214]<br>0xFFFDFFFF|- rs1 : x13<br> - rs2 : x15<br> - imm_val == 0<br> - rs2_val == -131073<br>                                                    |[0x8000012a]:c.sw a3, a5, 0<br>   |
|   3|[0x80003218]<br>0x80000000|- rs1 : x8<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                    |[0x80000140]:c.sw s0, a1, 20<br>  |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x14<br> - rs2 : x10<br> - rs2_val == 0<br>                                                                             |[0x80000156]:c.sw a4, a0, 68<br>  |
|   5|[0x80003220]<br>0x7FFFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                    |[0x80000170]:c.sw s1, a3, 28<br>  |
|   6|[0x80003224]<br>0x00000001|- rs1 : x10<br> - rs2 : x12<br> - rs2_val == 1<br>                                                                             |[0x80000186]:c.sw a0, a2, 68<br>  |
|   7|[0x80003228]<br>0xFFFFFFF7|- rs1 : x11<br> - rs2 : x8<br> - imm_val == 4<br>                                                                              |[0x8000019c]:c.sw a1, s0, 4<br>   |
|   8|[0x8000322c]<br>0xFFFFFFFE|- rs1 : x15<br> - rs2 : x9<br> - rs2_val == -2<br> - imm_val == 8<br>                                                          |[0x800001b2]:c.sw a5, s1, 8<br>   |
|   9|[0x80003230]<br>0xFFEFFFFF|- rs2_val == -1048577<br> - imm_val == 16<br>                                                                                  |[0x800001cc]:c.sw a0, a1, 16<br>  |
|  10|[0x80003234]<br>0xFFFFFFF7|- imm_val == 32<br>                                                                                                            |[0x800001e2]:c.sw a0, a1, 32<br>  |
|  11|[0x80003238]<br>0xFFFFFFF6|- imm_val == 64<br>                                                                                                            |[0x800001f8]:c.sw a0, a1, 64<br>  |
|  12|[0x8000323c]<br>0xFFFF7FFF|- rs2_val == -32769<br> - imm_val == 120<br>                                                                                   |[0x80000212]:c.sw a0, a1, 120<br> |
|  13|[0x80003240]<br>0x00000800|- rs2_val == 2048<br> - imm_val == 116<br>                                                                                     |[0x8000022c]:c.sw a0, a1, 116<br> |
|  14|[0x80003244]<br>0x04000000|- rs2_val == 67108864<br> - imm_val == 108<br>                                                                                 |[0x80000242]:c.sw a0, a1, 108<br> |
|  15|[0x80003248]<br>0xFFFFFFFF|- imm_val == 92<br>                                                                                                            |[0x80000258]:c.sw a0, a1, 92<br>  |
|  16|[0x8000324c]<br>0x00001000|- rs2_val == 4096<br> - imm_val == 60<br>                                                                                      |[0x8000026e]:c.sw a0, a1, 60<br>  |
|  17|[0x80003250]<br>0x00000010|- rs2_val == 16<br> - imm_val == 84<br>                                                                                        |[0x80000284]:c.sw a0, a1, 84<br>  |
|  18|[0x80003254]<br>0x00000002|- rs2_val == 2<br>                                                                                                             |[0x8000029a]:c.sw a0, a1, 36<br>  |
|  19|[0x80003258]<br>0x00000004|- rs2_val == 4<br>                                                                                                             |[0x800002b0]:c.sw a0, a1, 60<br>  |
|  20|[0x8000325c]<br>0x00000008|- rs2_val == 8<br>                                                                                                             |[0x800002c6]:c.sw a0, a1, 32<br>  |
|  21|[0x80003260]<br>0x00000020|- rs2_val == 32<br>                                                                                                            |[0x800002dc]:c.sw a0, a1, 116<br> |
|  22|[0x80003264]<br>0x00000040|- rs2_val == 64<br>                                                                                                            |[0x800002f2]:c.sw a0, a1, 32<br>  |
|  23|[0x80003268]<br>0x00000080|- rs2_val == 128<br>                                                                                                           |[0x80000308]:c.sw a0, a1, 84<br>  |
|  24|[0x8000326c]<br>0x00000100|- rs2_val == 256<br>                                                                                                           |[0x8000031e]:c.sw a0, a1, 28<br>  |
|  25|[0x80003270]<br>0x00000200|- rs2_val == 512<br>                                                                                                           |[0x80000334]:c.sw a0, a1, 52<br>  |
|  26|[0x80003274]<br>0x00000400|- rs2_val == 1024<br>                                                                                                          |[0x8000034a]:c.sw a0, a1, 8<br>   |
|  27|[0x80003278]<br>0x00002000|- rs2_val == 8192<br>                                                                                                          |[0x80000360]:c.sw a0, a1, 116<br> |
|  28|[0x8000327c]<br>0x00004000|- rs2_val == 16384<br>                                                                                                         |[0x80000376]:c.sw a0, a1, 4<br>   |
|  29|[0x80003280]<br>0x00008000|- rs2_val == 32768<br>                                                                                                         |[0x8000038c]:c.sw a0, a1, 72<br>  |
|  30|[0x80003284]<br>0x00010000|- rs2_val == 65536<br>                                                                                                         |[0x800003a2]:c.sw a0, a1, 0<br>   |
|  31|[0x80003288]<br>0x00020000|- rs2_val == 131072<br>                                                                                                        |[0x800003b8]:c.sw a0, a1, 52<br>  |
|  32|[0x8000328c]<br>0x00040000|- rs2_val == 262144<br>                                                                                                        |[0x800003ce]:c.sw a0, a1, 64<br>  |
|  33|[0x80003290]<br>0x00080000|- rs2_val == 524288<br>                                                                                                        |[0x800003e4]:c.sw a0, a1, 44<br>  |
|  34|[0x80003294]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                       |[0x800003fa]:c.sw a0, a1, 92<br>  |
|  35|[0x80003298]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                       |[0x80000410]:c.sw a0, a1, 36<br>  |
|  36|[0x8000329c]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                       |[0x80000426]:c.sw a0, a1, 48<br>  |
|  37|[0x800032a0]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                       |[0x8000043c]:c.sw a0, a1, 32<br>  |
|  38|[0x800032a4]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                      |[0x80000452]:c.sw a0, a1, 40<br>  |
|  39|[0x800032a8]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                      |[0x80000468]:c.sw a0, a1, 28<br>  |
|  40|[0x800032ac]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                     |[0x8000047e]:c.sw a0, a1, 36<br>  |
|  41|[0x800032b0]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                        |[0x80000498]:c.sw a0, a1, 48<br>  |
|  42|[0x800032b4]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                       |[0x800004b2]:c.sw a0, a1, 24<br>  |
|  43|[0x800032b8]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                       |[0x800004cc]:c.sw a0, a1, 60<br>  |
|  44|[0x800032bc]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                      |[0x800004e6]:c.sw a0, a1, 76<br>  |
|  45|[0x800032c0]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                      |[0x80000500]:c.sw a0, a1, 120<br> |
|  46|[0x800032c4]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                      |[0x8000051a]:c.sw a0, a1, 120<br> |
|  47|[0x800032c8]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                     |[0x80000534]:c.sw a0, a1, 40<br>  |
|  48|[0x800032cc]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                     |[0x8000054e]:c.sw a0, a1, 8<br>   |
|  49|[0x800032d0]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                     |[0x80000568]:c.sw a0, a1, 20<br>  |
|  50|[0x800032d4]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                    |[0x80000582]:c.sw a0, a1, 32<br>  |
|  51|[0x800032d8]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                    |[0x8000059c]:c.sw a0, a1, 40<br>  |
|  52|[0x800032dc]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                    |[0x800005b6]:c.sw a0, a1, 20<br>  |
|  53|[0x800032e0]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                   |[0x800005d0]:c.sw a0, a1, 40<br>  |
|  54|[0x800032e4]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                    |[0x800005ea]:c.sw a0, a1, 124<br> |
|  55|[0x800032e8]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                   |[0x80000604]:c.sw a0, a1, 92<br>  |
|  56|[0x800032ec]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                     |[0x8000061a]:c.sw a0, a1, 108<br> |
|  57|[0x800032f0]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                     |[0x80000630]:c.sw a0, a1, 4<br>   |
|  58|[0x800032f4]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                    |[0x80000646]:c.sw a0, a1, 32<br>  |
|  59|[0x800032f8]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                            |[0x8000065c]:c.sw a0, a1, 16<br>  |
|  60|[0x800032fc]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                            |[0x80000672]:c.sw a0, a1, 56<br>  |
|  61|[0x80003300]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                           |[0x80000688]:c.sw a0, a1, 60<br>  |
|  62|[0x80003304]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                           |[0x8000069e]:c.sw a0, a1, 84<br>  |
|  63|[0x80003308]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                           |[0x800006b4]:c.sw a0, a1, 108<br> |
|  64|[0x8000330c]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                          |[0x800006ca]:c.sw a0, a1, 56<br>  |
|  65|[0x80003310]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                          |[0x800006e0]:c.sw a0, a1, 68<br>  |
|  66|[0x80003314]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                          |[0x800006f6]:c.sw a0, a1, 72<br>  |
|  67|[0x80003318]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                         |[0x8000070c]:c.sw a0, a1, 76<br>  |
|  68|[0x8000331c]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                         |[0x80000726]:c.sw a0, a1, 120<br> |
|  69|[0x80003320]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                         |[0x80000740]:c.sw a0, a1, 24<br>  |
|  70|[0x80003324]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                         |[0x8000075a]:c.sw a0, a1, 8<br>   |
|  71|[0x80003328]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                        |[0x80000774]:c.sw a0, a1, 32<br>  |
