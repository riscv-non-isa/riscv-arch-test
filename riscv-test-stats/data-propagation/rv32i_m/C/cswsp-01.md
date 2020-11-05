
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000790')]      |
| SIG_REGION                | [('0x80003204', '0x8000332c', '74 words')]      |
| COV_LABELS                | cswsp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cswsp-01.S/cswsp-01.S    |
| Total Number of coverpoints| 118     |
| Total Coverpoints Hit     | 118      |
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

|s.no|        signature         |                                 coverpoints                                 |              code               |
|---:|--------------------------|-----------------------------------------------------------------------------|---------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFC|- opcode : c.swsp<br> - rs2 : x19<br> - imm_val > 0<br> - imm_val == 84<br>  |[0x80000110]:c.swsp s3, 21<br>   |
|   2|[0x80003214]<br>0xFFFDFFFF|- rs2 : x29<br> - imm_val == 0<br> - rs2_val == -131073<br>                  |[0x8000012a]:c.swsp t4, 0<br>    |
|   3|[0x80003218]<br>0x80000000|- rs2 : x30<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000140]:c.swsp t5, 3<br>    |
|   4|[0x8000321c]<br>0x00000000|- rs2 : x10<br> - rs2_val == 0<br> - imm_val == 16<br>                       |[0x80000156]:c.swsp a0, 4<br>    |
|   5|[0x80003220]<br>0x7FFFFFFF|- rs2 : x20<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> |[0x80000170]:c.swsp s4, 15<br>   |
|   6|[0x80003224]<br>0x00000001|- rs2 : x18<br> - rs2_val == 1<br>                                           |[0x80000186]:c.swsp s2, 18<br>   |
|   7|[0x80003228]<br>0x00000100|- rs2 : x22<br> - rs2_val == 256<br> - imm_val == 4<br>                      |[0x8000019c]:c.swsp s6, 1<br>    |
|   8|[0x8000322c]<br>0xFFFFF7FF|- rs2 : x25<br> - rs2_val == -2049<br> - imm_val == 8<br>                    |[0x800001b6]:c.swsp s9, 2<br>    |
|   9|[0x80003230]<br>0x00000800|- rs2 : x24<br> - rs2_val == 2048<br> - imm_val == 32<br>                    |[0x800001d0]:c.swsp s8, 8<br>    |
|  10|[0x80003234]<br>0xFFBFFFFF|- rs2 : x7<br> - rs2_val == -4194305<br> - imm_val == 64<br>                 |[0x800001ea]:c.swsp t2, 16<br>   |
|  11|[0x80003238]<br>0x00002000|- rs2 : x21<br> - rs2_val == 8192<br> - imm_val == 128<br>                   |[0x80000200]:c.swsp s5, 32<br>   |
|  12|[0x8000323c]<br>0xFFDFFFFF|- rs2 : x9<br> - rs2_val == -2097153<br> - imm_val == 248<br>                |[0x8000021a]:c.swsp s1, 62<br>   |
|  13|[0x80003240]<br>0xFFFDFFFF|- rs2 : x3<br> - imm_val == 244<br>                                          |[0x80000234]:c.swsp gp, 61<br>   |
|  14|[0x80003244]<br>0xAAAAAAAA|- rs2 : x14<br> - rs2_val == -1431655766<br> - imm_val == 236<br>            |[0x8000024e]:c.swsp a4, 59<br>   |
|  15|[0x80003248]<br>0xFFFFFFFD|- rs2 : x4<br> - rs2_val == -3<br> - imm_val == 220<br>                      |[0x80000264]:c.swsp tp, 55<br>   |
|  16|[0x8000324c]<br>0xFDFFFFFF|- rs2 : x26<br> - rs2_val == -33554433<br> - imm_val == 188<br>              |[0x8000027e]:c.swsp s10, 47<br>  |
|  17|[0x80003250]<br>0xFFFFDFFF|- rs2 : x27<br> - rs2_val == -8193<br> - imm_val == 124<br>                  |[0x80000298]:c.swsp s11, 31<br>  |
|  18|[0x80003254]<br>0xFFFFFFFB|- rs2 : x15<br> - rs2_val == -5<br> - imm_val == 168<br>                     |[0x800002ae]:c.swsp a5, 42<br>   |
|  19|[0x80003258]<br>0x00000000|- rs2 : x0<br>                                                               |[0x800002c4]:c.swsp zero, 13<br> |
|  20|[0x8000325c]<br>0x00000004|- rs2 : x23<br> - rs2_val == 4<br>                                           |[0x800002da]:c.swsp s7, 17<br>   |
|  21|[0x80003260]<br>0x00000008|- rs2 : x12<br> - rs2_val == 8<br>                                           |[0x800002f0]:c.swsp a2, 7<br>    |
|  22|[0x80003264]<br>0x80003188|- rs2 : x2<br>                                                               |[0x80000306]:c.swsp sp, 55<br>   |
|  23|[0x80003268]<br>0x00000020|- rs2 : x28<br> - rs2_val == 32<br>                                          |[0x8000031c]:c.swsp t3, 13<br>   |
|  24|[0x8000326c]<br>0x00000040|- rs2 : x1<br> - rs2_val == 64<br>                                           |[0x80000332]:c.swsp ra, 6<br>    |
|  25|[0x80003270]<br>0x00000080|- rs2 : x17<br> - rs2_val == 128<br>                                         |[0x80000348]:c.swsp a7, 6<br>    |
|  26|[0x80003274]<br>0x00000200|- rs2 : x16<br> - rs2_val == 512<br>                                         |[0x8000035e]:c.swsp a6, 42<br>   |
|  27|[0x80003278]<br>0x00000400|- rs2 : x13<br> - rs2_val == 1024<br>                                        |[0x80000374]:c.swsp a3, 21<br>   |
|  28|[0x8000327c]<br>0x00001000|- rs2 : x31<br> - rs2_val == 4096<br>                                        |[0x8000038a]:c.swsp t6, 18<br>   |
|  29|[0x80003280]<br>0x00004000|- rs2 : x11<br> - rs2_val == 16384<br>                                       |[0x800003a0]:c.swsp a1, 8<br>    |
|  30|[0x80003284]<br>0x00008000|- rs2 : x8<br> - rs2_val == 32768<br>                                        |[0x800003be]:c.swsp fp, 32<br>   |
|  31|[0x80003288]<br>0x00010000|- rs2 : x6<br> - rs2_val == 65536<br>                                        |[0x800003d4]:c.swsp t1, 55<br>   |
|  32|[0x8000328c]<br>0x00020000|- rs2 : x5<br> - rs2_val == 131072<br>                                       |[0x800003ea]:c.swsp t0, 16<br>   |
|  33|[0x80003290]<br>0x00040000|- rs2_val == 262144<br>                                                      |[0x80000400]:c.swsp a0, 55<br>   |
|  34|[0x80003294]<br>0x00080000|- rs2_val == 524288<br>                                                      |[0x80000416]:c.swsp a0, 15<br>   |
|  35|[0x80003298]<br>0x00100000|- rs2_val == 1048576<br>                                                     |[0x8000042c]:c.swsp a0, 1<br>    |
|  36|[0x8000329c]<br>0x00200000|- rs2_val == 2097152<br>                                                     |[0x80000442]:c.swsp a0, 14<br>   |
|  37|[0x800032a0]<br>0x00400000|- rs2_val == 4194304<br>                                                     |[0x80000458]:c.swsp a0, 11<br>   |
|  38|[0x800032a4]<br>0x00800000|- rs2_val == 8388608<br>                                                     |[0x8000046e]:c.swsp a0, 9<br>    |
|  39|[0x800032a8]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                      |[0x80000488]:c.swsp a0, 12<br>   |
|  40|[0x800032ac]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                      |[0x800004a2]:c.swsp a0, 31<br>   |
|  41|[0x800032b0]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                      |[0x800004bc]:c.swsp a0, 15<br>   |
|  42|[0x800032b4]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                     |[0x800004d6]:c.swsp a0, 62<br>   |
|  43|[0x800032b8]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                     |[0x800004f0]:c.swsp a0, 59<br>   |
|  44|[0x800032bc]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                    |[0x8000050a]:c.swsp a0, 63<br>   |
|  45|[0x800032c0]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                    |[0x80000524]:c.swsp a0, 32<br>   |
|  46|[0x800032c4]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                   |[0x8000053e]:c.swsp a0, 42<br>   |
|  47|[0x800032c8]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                   |[0x80000558]:c.swsp a0, 6<br>    |
|  48|[0x800032cc]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                  |[0x80000572]:c.swsp a0, 12<br>   |
|  49|[0x800032d0]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                  |[0x8000058c]:c.swsp a0, 32<br>   |
|  50|[0x800032d4]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                  |[0x800005a6]:c.swsp a0, 13<br>   |
|  51|[0x800032d8]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                 |[0x800005c0]:c.swsp a0, 13<br>   |
|  52|[0x800032dc]<br>0x55555555|- rs2_val == 1431655765<br>                                                  |[0x800005da]:c.swsp a0, 7<br>    |
|  53|[0x800032e0]<br>0x01000000|- rs2_val == 16777216<br>                                                    |[0x800005f0]:c.swsp a0, 13<br>   |
|  54|[0x800032e4]<br>0x02000000|- rs2_val == 33554432<br>                                                    |[0x80000606]:c.swsp a0, 61<br>   |
|  55|[0x800032e8]<br>0x04000000|- rs2_val == 67108864<br>                                                    |[0x8000061c]:c.swsp a0, 47<br>   |
|  56|[0x800032ec]<br>0x08000000|- rs2_val == 134217728<br>                                                   |[0x80000632]:c.swsp a0, 2<br>    |
|  57|[0x800032f0]<br>0x10000000|- rs2_val == 268435456<br>                                                   |[0x80000648]:c.swsp a0, 15<br>   |
|  58|[0x800032f4]<br>0x20000000|- rs2_val == 536870912<br>                                                   |[0x8000065e]:c.swsp a0, 21<br>   |
|  59|[0x800032f8]<br>0x40000000|- rs2_val == 1073741824<br>                                                  |[0x80000674]:c.swsp a0, 21<br>   |
|  60|[0x800032fc]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                          |[0x8000068a]:c.swsp a0, 42<br>   |
|  61|[0x80003300]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                          |[0x800006a0]:c.swsp a0, 17<br>   |
|  62|[0x80003304]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                         |[0x800006b6]:c.swsp a0, 2<br>    |
|  63|[0x80003308]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                         |[0x800006cc]:c.swsp a0, 55<br>   |
|  64|[0x8000330c]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                         |[0x800006e2]:c.swsp a0, 4<br>    |
|  65|[0x80003310]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                        |[0x800006f8]:c.swsp a0, 61<br>   |
|  66|[0x80003314]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                        |[0x8000070e]:c.swsp a0, 17<br>   |
|  67|[0x80003318]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                        |[0x80000724]:c.swsp a0, 7<br>    |
|  68|[0x8000331c]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                       |[0x8000073a]:c.swsp a0, 11<br>   |
|  69|[0x80003320]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                       |[0x80000754]:c.swsp a0, 47<br>   |
|  70|[0x80003324]<br>0x00000002|- rs2_val == 2<br>                                                           |[0x8000076a]:c.swsp a0, 13<br>   |
|  71|[0x80003328]<br>0x00000010|- rs2_val == 16<br>                                                          |[0x80000780]:c.swsp a0, 55<br>   |
