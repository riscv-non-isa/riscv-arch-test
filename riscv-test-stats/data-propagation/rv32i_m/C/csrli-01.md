
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
| SIG_REGION                | [('0x80003204', '0x8000331c', '70 words')]      |
| COV_LABELS                | csrli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrli-01.S/csrli-01.S    |
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

|s.no|        signature         |                                                                    coverpoints                                                                    |                             code                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0x000001FF|- opcode : c.srli<br> - rs1 : x8<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -5<br> - imm_val == 23<br>                                  |[0x80000104]:c.srli s0, 23<br> [0x80000106]:sw fp, 0(ra)<br>   |
|   2|[0x80003208]<br>0x00000000|- rs1 : x13<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 15<br> |[0x8000010e]:c.srli a3, 15<br> [0x80000110]:sw a3, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x9<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                                       |[0x80000118]:c.srli s1, 5<br> [0x8000011a]:sw s1, 8(ra)<br>    |
|   4|[0x80003210]<br>0x00100000|- rs1 : x15<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                   |[0x80000122]:c.srli a5, 11<br> [0x80000124]:sw a5, 12(ra)<br>  |
|   5|[0x80003214]<br>0x00000000|- rs1 : x14<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                                             |[0x8000012c]:c.srli a4, 11<br> [0x8000012e]:sw a4, 16(ra)<br>  |
|   6|[0x80003218]<br>0x000000FF|- rs1 : x11<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                   |[0x8000013a]:c.srli a1, 23<br> [0x8000013c]:sw a1, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x7FFFFBFF|- rs1 : x10<br> - rs1_val == -2049<br> - imm_val == 1<br>                                                                                          |[0x80000148]:c.srli a0, 1<br> [0x8000014a]:sw a0, 24(ra)<br>   |
|   8|[0x80003220]<br>0x00000004|- rs1 : x12<br> - rs1_val == 16<br> - imm_val == 2<br>                                                                                             |[0x80000152]:c.srli a2, 2<br> [0x80000154]:sw a2, 28(ra)<br>   |
|   9|[0x80003224]<br>0x0FFEFFFF|- rs1_val == -1048577<br> - imm_val == 4<br>                                                                                                       |[0x80000160]:c.srli a0, 4<br> [0x80000162]:sw a0, 32(ra)<br>   |
|  10|[0x80003228]<br>0x003FFFFF|- imm_val == 8<br>                                                                                                                                 |[0x8000016e]:c.srli a0, 8<br> [0x80000170]:sw a0, 36(ra)<br>   |
|  11|[0x8000322c]<br>0x00003FFF|- imm_val == 16<br>                                                                                                                                |[0x8000017c]:c.srli a0, 16<br> [0x8000017e]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00000003|- rs1_val == -65<br> - imm_val == 30<br>                                                                                                           |[0x80000186]:c.srli a0, 30<br> [0x80000188]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000007|- rs1_val == -32769<br> - imm_val == 29<br>                                                                                                        |[0x80000194]:c.srli a0, 29<br> [0x80000196]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0x0000001F|- rs1_val == -16385<br> - imm_val == 27<br>                                                                                                        |[0x800001a2]:c.srli a0, 27<br> [0x800001a4]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x000007FF|- rs1_val == -8193<br> - imm_val == 21<br>                                                                                                         |[0x800001b0]:c.srli a0, 21<br> [0x800001b2]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000200|- rs1_val == 524288<br> - imm_val == 10<br>                                                                                                        |[0x800001ba]:c.srli a0, 10<br> [0x800001bc]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000000|- rs1_val == 2<br>                                                                                                                                 |[0x800001c4]:c.srli a0, 27<br> [0x800001c6]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000000|- rs1_val == 4<br>                                                                                                                                 |[0x800001ce]:c.srli a0, 30<br> [0x800001d0]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x00000000|- rs1_val == 8<br>                                                                                                                                 |[0x800001d8]:c.srli a0, 16<br> [0x800001da]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                |[0x800001e2]:c.srli a0, 23<br> [0x800001e4]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00000000|- rs1_val == 64<br>                                                                                                                                |[0x800001ec]:c.srli a0, 7<br> [0x800001ee]:sw a0, 80(ra)<br>   |
|  22|[0x80003258]<br>0x00000008|- rs1_val == 128<br>                                                                                                                               |[0x800001f6]:c.srli a0, 4<br> [0x800001f8]:sw a0, 84(ra)<br>   |
|  23|[0x8000325c]<br>0x00000010|- rs1_val == 256<br>                                                                                                                               |[0x80000200]:c.srli a0, 4<br> [0x80000202]:sw a0, 88(ra)<br>   |
|  24|[0x80003260]<br>0x00000000|- rs1_val == 512<br>                                                                                                                               |[0x8000020a]:c.srli a0, 19<br> [0x8000020c]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                              |[0x80000214]:c.srli a0, 12<br> [0x80000216]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                              |[0x80000222]:c.srli a0, 30<br> [0x80000224]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0x00000008|- rs1_val == 4096<br>                                                                                                                              |[0x8000022c]:c.srli a0, 9<br> [0x8000022e]:sw a0, 104(ra)<br>  |
|  28|[0x80003270]<br>0x00000000|- rs1_val == 8192<br>                                                                                                                              |[0x80000236]:c.srli a0, 15<br> [0x80000238]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x00000200|- rs1_val == 16384<br>                                                                                                                             |[0x80000240]:c.srli a0, 5<br> [0x80000242]:sw a0, 112(ra)<br>  |
|  30|[0x80003278]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                             |[0x8000024a]:c.srli a0, 27<br> [0x8000024c]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00000080|- rs1_val == 65536<br>                                                                                                                             |[0x80000254]:c.srli a0, 9<br> [0x80000256]:sw a0, 120(ra)<br>  |
|  32|[0x80003280]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                            |[0x8000025e]:c.srli a0, 31<br> [0x80000260]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x00004000|- rs1_val == 262144<br>                                                                                                                            |[0x80000268]:c.srli a0, 4<br> [0x8000026a]:sw a0, 128(ra)<br>  |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                           |[0x80000272]:c.srli a0, 23<br> [0x80000274]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x00000080|- rs1_val == 2097152<br>                                                                                                                           |[0x8000027c]:c.srli a0, 14<br> [0x8000027e]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                           |[0x80000286]:c.srli a0, 31<br> [0x80000288]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x00000001|- rs1_val == 8388608<br>                                                                                                                           |[0x80000290]:c.srli a0, 23<br> [0x80000292]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x00000080|- rs1_val == 16777216<br>                                                                                                                          |[0x8000029a]:c.srli a0, 17<br> [0x8000029c]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0x00800000|- rs1_val == 33554432<br>                                                                                                                          |[0x800002a4]:c.srli a0, 2<br> [0x800002a6]:sw a0, 152(ra)<br>  |
|  40|[0x800032a0]<br>0x0000FFFE|- rs1_val == -65537<br>                                                                                                                            |[0x800002b2]:c.srli a0, 16<br> [0x800002b4]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0x00001FFF|- rs1_val == -131073<br>                                                                                                                           |[0x800002c0]:c.srli a0, 19<br> [0x800002c2]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0x0007FFDF|- rs1_val == -262145<br>                                                                                                                           |[0x800002ce]:c.srli a0, 13<br> [0x800002d0]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0x003FFDFF|- rs1_val == -524289<br>                                                                                                                           |[0x800002dc]:c.srli a0, 10<br> [0x800002de]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0x0007FEFF|- rs1_val == -2097153<br>                                                                                                                          |[0x800002ea]:c.srli a0, 13<br> [0x800002ec]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0x0001FF7F|- rs1_val == -4194305<br>                                                                                                                          |[0x800002f8]:c.srli a0, 15<br> [0x800002fa]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0x001FEFFF|- rs1_val == -8388609<br>                                                                                                                          |[0x80000306]:c.srli a0, 11<br> [0x80000308]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0x0003FBFF|- rs1_val == -16777217<br>                                                                                                                         |[0x80000314]:c.srli a0, 14<br> [0x80000316]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0x1FBFFFFF|- rs1_val == -33554433<br>                                                                                                                         |[0x80000322]:c.srli a0, 3<br> [0x80000324]:sw a0, 188(ra)<br>  |
|  49|[0x800032c4]<br>0x00003EFF|- rs1_val == -67108865<br>                                                                                                                         |[0x80000330]:c.srli a0, 18<br> [0x80000332]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0x07BFFFFF|- rs1_val == -134217729<br>                                                                                                                        |[0x8000033e]:c.srli a0, 5<br> [0x80000340]:sw a0, 196(ra)<br>  |
|  51|[0x800032cc]<br>0x00077FFF|- rs1_val == -268435457<br>                                                                                                                        |[0x8000034c]:c.srli a0, 13<br> [0x8000034e]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0x000001BF|- rs1_val == -536870913<br>                                                                                                                        |[0x8000035a]:c.srli a0, 23<br> [0x8000035c]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0x0BFFFFFF|- rs1_val == -1073741825<br>                                                                                                                       |[0x80000368]:c.srli a0, 4<br> [0x8000036a]:sw a0, 208(ra)<br>  |
|  54|[0x800032d8]<br>0x000AAAAA|- rs1_val == 1431655765<br>                                                                                                                        |[0x80000376]:c.srli a0, 11<br> [0x80000378]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0x00000005|- rs1_val == -1431655766<br>                                                                                                                       |[0x80000384]:c.srli a0, 29<br> [0x80000386]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0x00020000|- rs1_val == 67108864<br>                                                                                                                          |[0x8000038e]:c.srli a0, 9<br> [0x80000390]:sw a0, 220(ra)<br>  |
|  57|[0x800032e4]<br>0x00100000|- rs1_val == 134217728<br>                                                                                                                         |[0x80000398]:c.srli a0, 7<br> [0x8000039a]:sw a0, 224(ra)<br>  |
|  58|[0x800032e8]<br>0x00040000|- rs1_val == 268435456<br>                                                                                                                         |[0x800003a2]:c.srli a0, 10<br> [0x800003a4]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x01000000|- rs1_val == 536870912<br>                                                                                                                         |[0x800003ac]:c.srli a0, 5<br> [0x800003ae]:sw a0, 232(ra)<br>  |
|  60|[0x800032f0]<br>0x00001000|- rs1_val == 1073741824<br>                                                                                                                        |[0x800003b6]:c.srli a0, 18<br> [0x800003b8]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0x001FFFFF|- rs1_val == -2<br>                                                                                                                                |[0x800003c0]:c.srli a0, 11<br> [0x800003c2]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0x1FFFFFFF|- rs1_val == -3<br>                                                                                                                                |[0x800003ca]:c.srli a0, 3<br> [0x800003cc]:sw a0, 244(ra)<br>  |
|  63|[0x800032fc]<br>0x00000003|- rs1_val == -9<br>                                                                                                                                |[0x800003d4]:c.srli a0, 30<br> [0x800003d6]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0x00001FFF|- rs1_val == -17<br>                                                                                                                               |[0x800003de]:c.srli a0, 19<br> [0x800003e0]:sw a0, 252(ra)<br> |
|  65|[0x80003304]<br>0x00001FFF|- rs1_val == -33<br>                                                                                                                               |[0x800003e8]:c.srli a0, 19<br> [0x800003ea]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0x00001FFF|- rs1_val == -129<br>                                                                                                                              |[0x800003f2]:c.srli a0, 19<br> [0x800003f4]:sw a0, 260(ra)<br> |
|  67|[0x8000330c]<br>0x0007FFFF|- rs1_val == -257<br>                                                                                                                              |[0x800003fc]:c.srli a0, 13<br> [0x800003fe]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0x00003FFF|- rs1_val == -513<br>                                                                                                                              |[0x80000406]:c.srli a0, 18<br> [0x80000408]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0x01FFFFF7|- rs1_val == -1025<br>                                                                                                                             |[0x80000410]:c.srli a0, 7<br> [0x80000412]:sw a0, 272(ra)<br>  |
|  70|[0x80003318]<br>0x07FFFF7F|- rs1_val == -4097<br>                                                                                                                             |[0x8000041e]:c.srli a0, 5<br> [0x80000420]:sw a0, 276(ra)<br>  |