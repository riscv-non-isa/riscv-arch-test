
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004e0')]      |
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 156     |
| Total Signature Updates   | 73      |
| Total Coverpoints Covered | 156      |
| STAT1                     | 72      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c8]:srli a1, a0, 0
      [0x800004cc]:sw a1, 204(ra)
 -- Signature Address: 0x8000332c Data: 0x00800000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val == 0
      - rs1_val == 8388608






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

|s.no|        signature         |                                                                             coverpoints                                                                             |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000001F|- opcode : srli<br> - rs1 : x2<br> - rd : x31<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -8388609<br> - imm_val == 27<br> |[0x80000108]:srli t6, sp, 27<br> [0x8000010c]:sw t6, 0(t2)<br>     |
|   2|[0x80003214]<br>0x00000010|- rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4096<br> - imm_val == 8<br>                           |[0x80000114]:srli t0, t0, 8<br> [0x80000118]:sw t0, 4(t2)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFB|- rs1 : x15<br> - rd : x14<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -5<br>                                                                                |[0x80000120]:srli a4, a5, 0<br> [0x80000124]:sw a4, 8(t2)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x18<br> - rd : x0<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8388608<br>                                                                            |[0x8000012c]:srli zero, s2, 0<br> [0x80000130]:sw zero, 12(t2)<br> |
|   5|[0x80003220]<br>0x00000001|- rs1 : x31<br> - rd : x4<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -524289<br>                                                                     |[0x8000013c]:srli tp, t6, 31<br> [0x80000140]:sw tp, 16(t2)<br>    |
|   6|[0x80003224]<br>0x00000000|- rs1 : x29<br> - rd : x3<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 1024<br>                                                                        |[0x80000148]:srli gp, t4, 31<br> [0x8000014c]:sw gp, 20(t2)<br>    |
|   7|[0x80003228]<br>0x00000000|- rs1 : x6<br> - rd : x15<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                            |[0x80000154]:srli a5, t1, 5<br> [0x80000158]:sw a5, 24(t2)<br>     |
|   8|[0x8000322c]<br>0x80000000|- rs1 : x17<br> - rd : x1<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                       |[0x80000160]:srli ra, a7, 0<br> [0x80000164]:sw ra, 28(t2)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x10<br> - rd : x6<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - imm_val == 16<br>                                                             |[0x8000016c]:srli t1, a0, 16<br> [0x80000170]:sw t1, 32(t2)<br>    |
|  10|[0x80003234]<br>0x0FFFFFFF|- rs1 : x8<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                       |[0x8000017c]:srli s6, fp, 3<br> [0x80000180]:sw s6, 36(t2)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x27<br> - rd : x18<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                             |[0x80000188]:srli s2, s11, 13<br> [0x8000018c]:sw s2, 40(t2)<br>   |
|  12|[0x8000323c]<br>0x7FFFFFFD|- rs1 : x21<br> - rd : x28<br> - imm_val == 1<br>                                                                                                                    |[0x80000194]:srli t3, s5, 1<br> [0x80000198]:sw t3, 44(t2)<br>     |
|  13|[0x80003240]<br>0x3FF7FFFF|- rs1 : x1<br> - rd : x12<br> - rs1_val == -2097153<br> - imm_val == 2<br>                                                                                           |[0x800001a4]:srli a2, ra, 2<br> [0x800001a8]:sw a2, 48(t2)<br>     |
|  14|[0x80003244]<br>0x00400000|- rs1 : x25<br> - rd : x24<br> - rs1_val == 67108864<br> - imm_val == 4<br>                                                                                          |[0x800001b0]:srli s8, s9, 4<br> [0x800001b4]:sw s8, 52(t2)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x11<br> - rd : x16<br> - rs1_val == 4<br> - imm_val == 30<br>                                                                                                |[0x800001bc]:srli a6, a1, 30<br> [0x800001c0]:sw a6, 56(t2)<br>    |
|  16|[0x8000324c]<br>0x00000007|- rs1 : x9<br> - rd : x19<br> - imm_val == 29<br>                                                                                                                    |[0x800001cc]:srli s3, s1, 29<br> [0x800001d0]:sw s3, 60(t2)<br>    |
|  17|[0x80003250]<br>0x000001FF|- rs1 : x12<br> - rd : x25<br> - imm_val == 23<br>                                                                                                                   |[0x800001d8]:srli s9, a2, 23<br> [0x800001dc]:sw s9, 64(t2)<br>    |
|  18|[0x80003254]<br>0x00000000|- rs1 : x4<br> - rd : x20<br> - rs1_val == 256<br> - imm_val == 15<br>                                                                                               |[0x800001e4]:srli s4, tp, 15<br> [0x800001e8]:sw s4, 68(t2)<br>    |
|  19|[0x80003258]<br>0x000005FF|- rs1 : x3<br> - rd : x30<br> - rs1_val == -1073741825<br> - imm_val == 21<br>                                                                                       |[0x800001f4]:srli t5, gp, 21<br> [0x800001f8]:sw t5, 72(t2)<br>    |
|  20|[0x8000325c]<br>0x003FFFDF|- rs1 : x28<br> - rd : x23<br> - rs1_val == -32769<br> - imm_val == 10<br>                                                                                           |[0x80000204]:srli s7, t3, 10<br> [0x80000208]:sw s7, 76(t2)<br>    |
|  21|[0x80003260]<br>0x00000000|- rs1 : x30<br> - rd : x2<br> - rs1_val == 2<br>                                                                                                                     |[0x80000218]:srli sp, t5, 14<br> [0x8000021c]:sw sp, 0(ra)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x7<br> - rd : x21<br> - rs1_val == 8<br>                                                                                                                     |[0x80000224]:srli s5, t2, 11<br> [0x80000228]:sw s5, 4(ra)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x14<br> - rd : x11<br> - rs1_val == 16<br>                                                                                                                   |[0x80000230]:srli a1, a4, 12<br> [0x80000234]:sw a1, 8(ra)<br>     |
|  24|[0x8000326c]<br>0x00000010|- rs1 : x22<br> - rd : x27<br> - rs1_val == 32<br>                                                                                                                   |[0x8000023c]:srli s11, s6, 1<br> [0x80000240]:sw s11, 12(ra)<br>   |
|  25|[0x80003270]<br>0x00000000|- rs1 : x20<br> - rd : x26<br> - rs1_val == 64<br>                                                                                                                   |[0x80000248]:srli s10, s4, 12<br> [0x8000024c]:sw s10, 16(ra)<br>  |
|  26|[0x80003274]<br>0x00000000|- rs1 : x19<br> - rd : x17<br> - rs1_val == 128<br>                                                                                                                  |[0x80000254]:srli a7, s3, 29<br> [0x80000258]:sw a7, 20(ra)<br>    |
|  27|[0x80003278]<br>0x00000000|- rs1 : x16<br> - rd : x8<br> - rs1_val == 512<br>                                                                                                                   |[0x80000260]:srli fp, a6, 14<br> [0x80000264]:sw fp, 24(ra)<br>    |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x23<br> - rd : x7<br> - rs1_val == 2048<br>                                                                                                                  |[0x80000270]:srli t2, s7, 12<br> [0x80000274]:sw t2, 28(ra)<br>    |
|  29|[0x80003280]<br>0x00000002|- rs1 : x13<br> - rd : x29<br> - rs1_val == 8192<br>                                                                                                                 |[0x8000027c]:srli t4, a3, 12<br> [0x80000280]:sw t4, 32(ra)<br>    |
|  30|[0x80003284]<br>0x00001000|- rs1 : x26<br> - rd : x13<br> - rs1_val == 16384<br>                                                                                                                |[0x80000288]:srli a3, s10, 2<br> [0x8000028c]:sw a3, 36(ra)<br>    |
|  31|[0x80003288]<br>0x00000001|- rs1 : x24<br> - rd : x9<br> - rs1_val == 32768<br>                                                                                                                 |[0x80000294]:srli s1, s8, 15<br> [0x80000298]:sw s1, 40(ra)<br>    |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x0<br> - rd : x10<br>                                                                                                                                        |[0x800002a4]:srli a0, zero, 31<br> [0x800002a8]:sw a0, 44(ra)<br>  |
|  33|[0x80003290]<br>0x00000100|- rs1_val == 131072<br>                                                                                                                                              |[0x800002b0]:srli a1, a0, 9<br> [0x800002b4]:sw a1, 48(ra)<br>     |
|  34|[0x80003294]<br>0x00000800|- rs1_val == 262144<br>                                                                                                                                              |[0x800002bc]:srli a1, a0, 7<br> [0x800002c0]:sw a1, 52(ra)<br>     |
|  35|[0x80003298]<br>0x00040000|- rs1_val == 524288<br>                                                                                                                                              |[0x800002c8]:srli a1, a0, 1<br> [0x800002cc]:sw a1, 56(ra)<br>     |
|  36|[0x8000329c]<br>0x00000010|- rs1_val == 1048576<br>                                                                                                                                             |[0x800002d4]:srli a1, a0, 16<br> [0x800002d8]:sw a1, 60(ra)<br>    |
|  37|[0x800032a0]<br>0x00000080|- rs1_val == 2097152<br>                                                                                                                                             |[0x800002e0]:srli a1, a0, 14<br> [0x800002e4]:sw a1, 64(ra)<br>    |
|  38|[0x800032a4]<br>0x00010000|- rs1_val == 4194304<br>                                                                                                                                             |[0x800002ec]:srli a1, a0, 6<br> [0x800002f0]:sw a1, 68(ra)<br>     |
|  39|[0x800032a8]<br>0x00000008|- rs1_val == 16777216<br>                                                                                                                                            |[0x800002f8]:srli a1, a0, 21<br> [0x800002fc]:sw a1, 72(ra)<br>    |
|  40|[0x800032ac]<br>0x00800000|- rs1_val == 33554432<br>                                                                                                                                            |[0x80000304]:srli a1, a0, 2<br> [0x80000308]:sw a1, 76(ra)<br>     |
|  41|[0x800032b0]<br>0x03FFFFF7|- rs1_val == -513<br>                                                                                                                                                |[0x80000310]:srli a1, a0, 6<br> [0x80000314]:sw a1, 80(ra)<br>     |
|  42|[0x800032b4]<br>0x00001FFF|- rs1_val == -1025<br>                                                                                                                                               |[0x8000031c]:srli a1, a0, 19<br> [0x80000320]:sw a1, 84(ra)<br>    |
|  43|[0x800032b8]<br>0x00FFFFF7|- rs1_val == -2049<br>                                                                                                                                               |[0x8000032c]:srli a1, a0, 8<br> [0x80000330]:sw a1, 88(ra)<br>     |
|  44|[0x800032bc]<br>0x0FFFFEFF|- rs1_val == -4097<br>                                                                                                                                               |[0x8000033c]:srli a1, a0, 4<br> [0x80000340]:sw a1, 92(ra)<br>     |
|  45|[0x800032c0]<br>0x00001FFF|- rs1_val == -8193<br>                                                                                                                                               |[0x8000034c]:srli a1, a0, 19<br> [0x80000350]:sw a1, 96(ra)<br>    |
|  46|[0x800032c4]<br>0x7FFFDFFF|- rs1_val == -16385<br>                                                                                                                                              |[0x8000035c]:srli a1, a0, 1<br> [0x80000360]:sw a1, 100(ra)<br>    |
|  47|[0x800032c8]<br>0x001FFFDF|- rs1_val == -65537<br>                                                                                                                                              |[0x8000036c]:srli a1, a0, 11<br> [0x80000370]:sw a1, 104(ra)<br>   |
|  48|[0x800032cc]<br>0x000001FF|- rs1_val == -131073<br>                                                                                                                                             |[0x8000037c]:srli a1, a0, 23<br> [0x80000380]:sw a1, 108(ra)<br>   |
|  49|[0x800032d0]<br>0x00007FFD|- rs1_val == -262145<br>                                                                                                                                             |[0x8000038c]:srli a1, a0, 17<br> [0x80000390]:sw a1, 112(ra)<br>   |
|  50|[0x800032d4]<br>0x00000007|- rs1_val == -1048577<br>                                                                                                                                            |[0x8000039c]:srli a1, a0, 29<br> [0x800003a0]:sw a1, 116(ra)<br>   |
|  51|[0x800032d8]<br>0x1FF7FFFF|- rs1_val == -4194305<br>                                                                                                                                            |[0x800003ac]:srli a1, a0, 3<br> [0x800003b0]:sw a1, 120(ra)<br>    |
|  52|[0x800032dc]<br>0x0000001F|- rs1_val == -16777217<br>                                                                                                                                           |[0x800003bc]:srli a1, a0, 27<br> [0x800003c0]:sw a1, 124(ra)<br>   |
|  53|[0x800032e0]<br>0x07EFFFFF|- rs1_val == -33554433<br>                                                                                                                                           |[0x800003cc]:srli a1, a0, 5<br> [0x800003d0]:sw a1, 128(ra)<br>    |
|  54|[0x800032e4]<br>0x001F7FFF|- rs1_val == -67108865<br>                                                                                                                                           |[0x800003dc]:srli a1, a0, 11<br> [0x800003e0]:sw a1, 132(ra)<br>   |
|  55|[0x800032e8]<br>0x0007BFFF|- rs1_val == -134217729<br>                                                                                                                                          |[0x800003ec]:srli a1, a0, 13<br> [0x800003f0]:sw a1, 136(ra)<br>   |
|  56|[0x800032ec]<br>0x0003BFFF|- rs1_val == -268435457<br>                                                                                                                                          |[0x800003fc]:srli a1, a0, 14<br> [0x80000400]:sw a1, 140(ra)<br>   |
|  57|[0x800032f0]<br>0x000007FF|- rs1_val == -9<br>                                                                                                                                                  |[0x80000408]:srli a1, a0, 21<br> [0x8000040c]:sw a1, 144(ra)<br>   |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                           |[0x80000414]:srli a1, a0, 29<br> [0x80000418]:sw a1, 148(ra)<br>   |
|  59|[0x800032f8]<br>0x00004000|- rs1_val == 268435456<br>                                                                                                                                           |[0x80000420]:srli a1, a0, 14<br> [0x80000424]:sw a1, 152(ra)<br>   |
|  60|[0x800032fc]<br>0x0037FFFF|- rs1_val == -536870913<br>                                                                                                                                          |[0x80000430]:srli a1, a0, 10<br> [0x80000434]:sw a1, 156(ra)<br>   |
|  61|[0x80003300]<br>0x00000001|- rs1_val == 536870912<br>                                                                                                                                           |[0x8000043c]:srli a1, a0, 29<br> [0x80000440]:sw a1, 160(ra)<br>   |
|  62|[0x80003304]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                          |[0x80000448]:srli a1, a0, 31<br> [0x8000044c]:sw a1, 164(ra)<br>   |
|  63|[0x80003308]<br>0x01FFFFFF|- rs1_val == -2<br>                                                                                                                                                  |[0x80000454]:srli a1, a0, 7<br> [0x80000458]:sw a1, 168(ra)<br>    |
|  64|[0x8000330c]<br>0x00001555|- rs1_val == 1431655765<br>                                                                                                                                          |[0x80000464]:srli a1, a0, 18<br> [0x80000468]:sw a1, 172(ra)<br>   |
|  65|[0x80003310]<br>0x2AAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                         |[0x80000474]:srli a1, a0, 2<br> [0x80000478]:sw a1, 176(ra)<br>    |
|  66|[0x80003314]<br>0x001FFFFF|- rs1_val == -3<br>                                                                                                                                                  |[0x80000480]:srli a1, a0, 11<br> [0x80000484]:sw a1, 180(ra)<br>   |
|  67|[0x80003318]<br>0x0003FFFF|- rs1_val == -17<br>                                                                                                                                                 |[0x8000048c]:srli a1, a0, 14<br> [0x80000490]:sw a1, 184(ra)<br>   |
|  68|[0x8000331c]<br>0x0000FFFF|- rs1_val == -33<br>                                                                                                                                                 |[0x80000498]:srli a1, a0, 16<br> [0x8000049c]:sw a1, 188(ra)<br>   |
|  69|[0x80003320]<br>0x000FFFFF|- rs1_val == -65<br>                                                                                                                                                 |[0x800004a4]:srli a1, a0, 12<br> [0x800004a8]:sw a1, 192(ra)<br>   |
|  70|[0x80003324]<br>0x0003FFFF|- rs1_val == -129<br>                                                                                                                                                |[0x800004b0]:srli a1, a0, 14<br> [0x800004b4]:sw a1, 196(ra)<br>   |
|  71|[0x80003328]<br>0x001FFFFF|- rs1_val == -257<br>                                                                                                                                                |[0x800004bc]:srli a1, a0, 11<br> [0x800004c0]:sw a1, 200(ra)<br>   |
|  72|[0x80003330]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                               |[0x800004d4]:srli a1, a0, 31<br> [0x800004d8]:sw a1, 208(ra)<br>   |
