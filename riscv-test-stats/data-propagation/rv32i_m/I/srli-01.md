
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004e0')]      |
| SIG_REGION                | [('0x80003204', '0x80003328', '73 words')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 156      |
| Total Signature Updates   | 73      |
| STAT1                     | 72      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004cc]:srli a1, a0, 6
      [0x800004d0]:sw a1, 208(ra)
 -- Signature Address: 0x80003324 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 256






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

|s.no|        signature         |                                                                                     coverpoints                                                                                      |                               code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00FFFFFF|- opcode : srli<br> - rs1 : x30<br> - rd : x18<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -65<br> - imm_val == 8<br>                       |[0x80000104]:srli s2, t5, 8<br> [0x80000108]:sw s2, 0(t0)<br>      |
|   2|[0x80003208]<br>0x00000400|- rs1 : x22<br> - rd : x22<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 2097152<br>                                                          |[0x80000110]:srli s6, s6, 11<br> [0x80000114]:sw s6, 4(t0)<br>     |
|   3|[0x8000320c]<br>0xFFBFFFFF|- rs1 : x31<br> - rd : x20<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -4194305<br>                                                                                           |[0x80000120]:srli s4, t6, 0<br> [0x80000124]:sw s4, 8(t0)<br>      |
|   4|[0x80003210]<br>0x00800000|- rs1 : x4<br> - rd : x9<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8388608<br>                                                                                              |[0x8000012c]:srli s1, tp, 0<br> [0x80000130]:sw s1, 12(t0)<br>     |
|   5|[0x80003214]<br>0x00000001|- rs1 : x26<br> - rd : x15<br> - rs1_val < 0 and imm_val == (xlen-1)<br>                                                                                                              |[0x80000138]:srli a5, s10, 31<br> [0x8000013c]:sw a5, 16(t0)<br>   |
|   6|[0x80003218]<br>0x00000000|- rs1 : x12<br> - rd : x23<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 16<br>                                                                                          |[0x80000144]:srli s7, a2, 31<br> [0x80000148]:sw s7, 20(t0)<br>    |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x8<br> - rd : x4<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x80000150]:srli tp, fp, 1<br> [0x80000154]:sw tp, 24(t0)<br>     |
|   8|[0x80003220]<br>0x00010000|- rs1 : x20<br> - rd : x10<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 15<br>                                   |[0x8000015c]:srli a0, s4, 15<br> [0x80000160]:sw a0, 28(t0)<br>    |
|   9|[0x80003224]<br>0x00000000|- rs1 : x23<br> - rd : x7<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                                  |[0x80000168]:srli t2, s7, 18<br> [0x8000016c]:sw t2, 32(t0)<br>    |
|  10|[0x80003228]<br>0x000003FF|- rs1 : x29<br> - rd : x27<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 21<br>                                   |[0x80000178]:srli s11, t4, 21<br> [0x8000017c]:sw s11, 36(t0)<br>  |
|  11|[0x8000322c]<br>0x3FFFFF7F|- rs1 : x10<br> - rd : x6<br> - rs1_val == -513<br> - imm_val == 2<br>                                                                                                                |[0x80000184]:srli t1, a0, 2<br> [0x80000188]:sw t1, 40(t0)<br>     |
|  12|[0x80003230]<br>0x00200000|- rs1 : x6<br> - rd : x30<br> - rs1_val == 33554432<br> - imm_val == 4<br>                                                                                                            |[0x80000190]:srli t5, t1, 4<br> [0x80000194]:sw t5, 44(t0)<br>     |
|  13|[0x80003234]<br>0x0000FFFF|- rs1 : x13<br> - rd : x31<br> - imm_val == 16<br>                                                                                                                                    |[0x8000019c]:srli t6, a3, 16<br> [0x800001a0]:sw t6, 48(t0)<br>    |
|  14|[0x80003238]<br>0x00000003|- rs1 : x3<br> - rd : x2<br> - rs1_val == -67108865<br> - imm_val == 30<br>                                                                                                           |[0x800001ac]:srli sp, gp, 30<br> [0x800001b0]:sw sp, 52(t0)<br>    |
|  15|[0x8000323c]<br>0x00000007|- rs1 : x14<br> - rd : x3<br> - imm_val == 29<br>                                                                                                                                     |[0x800001b8]:srli gp, a4, 29<br> [0x800001bc]:sw gp, 56(t0)<br>    |
|  16|[0x80003240]<br>0x0000001F|- rs1 : x25<br> - rd : x1<br> - imm_val == 27<br>                                                                                                                                     |[0x800001c4]:srli ra, s9, 27<br> [0x800001c8]:sw ra, 60(t0)<br>    |
|  17|[0x80003244]<br>0x00000000|- rs1 : x21<br> - rd : x28<br> - rs1_val == 512<br> - imm_val == 23<br>                                                                                                               |[0x800001d0]:srli t3, s5, 23<br> [0x800001d4]:sw t3, 64(t0)<br>    |
|  18|[0x80003248]<br>0x003FFFEF|- rs1 : x1<br> - rd : x17<br> - rs1_val == -16385<br> - imm_val == 10<br>                                                                                                             |[0x800001e0]:srli a7, ra, 10<br> [0x800001e4]:sw a7, 68(t0)<br>    |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x16<br> - rd : x26<br> - rs1_val == 2<br>                                                                                                                                     |[0x800001ec]:srli s10, a6, 13<br> [0x800001f0]:sw s10, 72(t0)<br>  |
|  20|[0x80003250]<br>0x00000000|- rs1 : x0<br> - rd : x24<br>                                                                                                                                                         |[0x800001f8]:srli s8, zero, 7<br> [0x800001fc]:sw s8, 76(t0)<br>   |
|  21|[0x80003254]<br>0x00000000|- rs1 : x17<br> - rd : x29<br> - rs1_val == 8<br>                                                                                                                                     |[0x8000020c]:srli t4, a7, 30<br> [0x80000210]:sw t4, 0(ra)<br>     |
|  22|[0x80003258]<br>0x00000000|- rs1 : x18<br> - rd : x5<br> - rs1_val == 32<br>                                                                                                                                     |[0x80000218]:srli t0, s2, 19<br> [0x8000021c]:sw t0, 4(ra)<br>     |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x5<br> - rd : x11<br> - rs1_val == 64<br>                                                                                                                                     |[0x80000224]:srli a1, t0, 11<br> [0x80000228]:sw a1, 8(ra)<br>     |
|  24|[0x80003260]<br>0x00000002|- rs1 : x15<br> - rd : x14<br> - rs1_val == 128<br>                                                                                                                                   |[0x80000230]:srli a4, a5, 6<br> [0x80000234]:sw a4, 12(ra)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x7<br> - rd : x0<br> - rs1_val == 256<br>                                                                                                                                     |[0x8000023c]:srli zero, t2, 6<br> [0x80000240]:sw zero, 16(ra)<br> |
|  26|[0x80003268]<br>0x00000020|- rs1 : x24<br> - rd : x13<br> - rs1_val == 1024<br>                                                                                                                                  |[0x80000248]:srli a3, s8, 5<br> [0x8000024c]:sw a3, 20(ra)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x27<br> - rd : x19<br> - rs1_val == 2048<br>                                                                                                                                  |[0x80000258]:srli s3, s11, 29<br> [0x8000025c]:sw s3, 24(ra)<br>   |
|  28|[0x80003270]<br>0x00000800|- rs1 : x9<br> - rd : x25<br> - rs1_val == 4096<br>                                                                                                                                   |[0x80000264]:srli s9, s1, 1<br> [0x80000268]:sw s9, 28(ra)<br>     |
|  29|[0x80003274]<br>0x00000000|- rs1 : x11<br> - rd : x21<br> - rs1_val == 8192<br>                                                                                                                                  |[0x80000270]:srli s5, a1, 17<br> [0x80000274]:sw s5, 32(ra)<br>    |
|  30|[0x80003278]<br>0x00000000|- rs1 : x2<br> - rd : x8<br> - rs1_val == 16384<br>                                                                                                                                   |[0x8000027c]:srli fp, sp, 19<br> [0x80000280]:sw fp, 36(ra)<br>    |
|  31|[0x8000327c]<br>0x00000008|- rs1 : x28<br> - rd : x16<br> - rs1_val == 32768<br>                                                                                                                                 |[0x80000288]:srli a6, t3, 12<br> [0x8000028c]:sw a6, 40(ra)<br>    |
|  32|[0x80003280]<br>0x00000000|- rs1 : x19<br> - rd : x12<br> - rs1_val == 65536<br>                                                                                                                                 |[0x80000294]:srli a2, s3, 27<br> [0x80000298]:sw a2, 44(ra)<br>    |
|  33|[0x80003284]<br>0x00000200|- rs1_val == 131072<br>                                                                                                                                                               |[0x800002a0]:srli a1, a0, 8<br> [0x800002a4]:sw a1, 48(ra)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                               |[0x800002ac]:srli a1, a0, 29<br> [0x800002b0]:sw a1, 52(ra)<br>    |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                                               |[0x800002b8]:srli a1, a0, 31<br> [0x800002bc]:sw a1, 56(ra)<br>    |
|  36|[0x80003290]<br>0x00000004|- rs1_val == 1048576<br>                                                                                                                                                              |[0x800002c4]:srli a1, a0, 18<br> [0x800002c8]:sw a1, 60(ra)<br>    |
|  37|[0x80003294]<br>0x00000002|- rs1_val == 4194304<br>                                                                                                                                                              |[0x800002d0]:srli a1, a0, 21<br> [0x800002d4]:sw a1, 64(ra)<br>    |
|  38|[0x80003298]<br>0x00000008|- rs1_val == 16777216<br>                                                                                                                                                             |[0x800002dc]:srli a1, a0, 21<br> [0x800002e0]:sw a1, 68(ra)<br>    |
|  39|[0x8000329c]<br>0x00004000|- rs1_val == 67108864<br>                                                                                                                                                             |[0x800002e8]:srli a1, a0, 12<br> [0x800002ec]:sw a1, 72(ra)<br>    |
|  40|[0x800032a0]<br>0x00008000|- rs1_val == 134217728<br>                                                                                                                                                            |[0x800002f4]:srli a1, a0, 12<br> [0x800002f8]:sw a1, 76(ra)<br>    |
|  41|[0x800032a4]<br>0x0000FFFF|- rs1_val == -1025<br>                                                                                                                                                                |[0x80000300]:srli a1, a0, 16<br> [0x80000304]:sw a1, 80(ra)<br>    |
|  42|[0x800032a8]<br>0x0003FFFF|- rs1_val == -2049<br>                                                                                                                                                                |[0x80000310]:srli a1, a0, 14<br> [0x80000314]:sw a1, 84(ra)<br>    |
|  43|[0x800032ac]<br>0x3FFFFBFF|- rs1_val == -4097<br>                                                                                                                                                                |[0x80000320]:srli a1, a0, 2<br> [0x80000324]:sw a1, 88(ra)<br>     |
|  44|[0x800032b0]<br>0x001FFFFB|- rs1_val == -8193<br>                                                                                                                                                                |[0x80000330]:srli a1, a0, 11<br> [0x80000334]:sw a1, 92(ra)<br>    |
|  45|[0x800032b4]<br>0x0000FFFF|- rs1_val == -32769<br>                                                                                                                                                               |[0x80000340]:srli a1, a0, 16<br> [0x80000344]:sw a1, 96(ra)<br>    |
|  46|[0x800032b8]<br>0x000007FF|- rs1_val == -65537<br>                                                                                                                                                               |[0x80000350]:srli a1, a0, 21<br> [0x80000354]:sw a1, 100(ra)<br>   |
|  47|[0x800032bc]<br>0x0007FFEF|- rs1_val == -131073<br>                                                                                                                                                              |[0x80000360]:srli a1, a0, 13<br> [0x80000364]:sw a1, 104(ra)<br>   |
|  48|[0x800032c0]<br>0x00000001|- rs1_val == -262145<br>                                                                                                                                                              |[0x80000370]:srli a1, a0, 31<br> [0x80000374]:sw a1, 108(ra)<br>   |
|  49|[0x800032c4]<br>0x00001FFE|- rs1_val == -524289<br>                                                                                                                                                              |[0x80000380]:srli a1, a0, 19<br> [0x80000384]:sw a1, 112(ra)<br>   |
|  50|[0x800032c8]<br>0x003FFBFF|- rs1_val == -1048577<br>                                                                                                                                                             |[0x80000390]:srli a1, a0, 10<br> [0x80000394]:sw a1, 116(ra)<br>   |
|  51|[0x800032cc]<br>0x03FF7FFF|- rs1_val == -2097153<br>                                                                                                                                                             |[0x800003a0]:srli a1, a0, 6<br> [0x800003a4]:sw a1, 120(ra)<br>    |
|  52|[0x800032d0]<br>0x00003FDF|- rs1_val == -8388609<br>                                                                                                                                                             |[0x800003b0]:srli a1, a0, 18<br> [0x800003b4]:sw a1, 124(ra)<br>   |
|  53|[0x800032d4]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                            |[0x800003c0]:srli a1, a0, 0<br> [0x800003c4]:sw a1, 128(ra)<br>    |
|  54|[0x800032d8]<br>0x00007EFF|- rs1_val == -33554433<br>                                                                                                                                                            |[0x800003d0]:srli a1, a0, 17<br> [0x800003d4]:sw a1, 132(ra)<br>   |
|  55|[0x800032dc]<br>0x00F7FFFF|- rs1_val == -134217729<br>                                                                                                                                                           |[0x800003e0]:srli a1, a0, 8<br> [0x800003e4]:sw a1, 136(ra)<br>    |
|  56|[0x800032e0]<br>0x1DFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                           |[0x800003f0]:srli a1, a0, 3<br> [0x800003f4]:sw a1, 140(ra)<br>    |
|  57|[0x800032e4]<br>0x3FFFFFFF|- rs1_val == -3<br>                                                                                                                                                                   |[0x800003fc]:srli a1, a0, 2<br> [0x80000400]:sw a1, 144(ra)<br>    |
|  58|[0x800032e8]<br>0x0007FFFF|- rs1_val == -17<br>                                                                                                                                                                  |[0x80000408]:srli a1, a0, 13<br> [0x8000040c]:sw a1, 148(ra)<br>   |
|  59|[0x800032ec]<br>0x000FFFFF|- rs1_val == -9<br>                                                                                                                                                                   |[0x80000414]:srli a1, a0, 12<br> [0x80000418]:sw a1, 152(ra)<br>   |
|  60|[0x800032f0]<br>0x00000020|- rs1_val == 268435456<br>                                                                                                                                                            |[0x80000420]:srli a1, a0, 23<br> [0x80000424]:sw a1, 156(ra)<br>   |
|  61|[0x800032f4]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                           |[0x80000430]:srli a1, a0, 0<br> [0x80000434]:sw a1, 160(ra)<br>    |
|  62|[0x800032f8]<br>0x00000400|- rs1_val == 536870912<br>                                                                                                                                                            |[0x8000043c]:srli a1, a0, 19<br> [0x80000440]:sw a1, 164(ra)<br>   |
|  63|[0x800032fc]<br>0x00000017|- rs1_val == -1073741825<br>                                                                                                                                                          |[0x8000044c]:srli a1, a0, 27<br> [0x80000450]:sw a1, 168(ra)<br>   |
|  64|[0x80003300]<br>0x00010000|- rs1_val == 1073741824<br>                                                                                                                                                           |[0x80000458]:srli a1, a0, 14<br> [0x8000045c]:sw a1, 172(ra)<br>   |
|  65|[0x80003304]<br>0x15555555|- rs1_val == 1431655765<br>                                                                                                                                                           |[0x80000468]:srli a1, a0, 2<br> [0x8000046c]:sw a1, 176(ra)<br>    |
|  66|[0x80003308]<br>0x00FFFFFF|- rs1_val == -2<br>                                                                                                                                                                   |[0x80000474]:srli a1, a0, 8<br> [0x80000478]:sw a1, 180(ra)<br>    |
|  67|[0x8000330c]<br>0x00000555|- rs1_val == -1431655766<br>                                                                                                                                                          |[0x80000484]:srli a1, a0, 21<br> [0x80000488]:sw a1, 184(ra)<br>   |
|  68|[0x80003310]<br>0x3FFFFFFE|- rs1_val == -5<br>                                                                                                                                                                   |[0x80000490]:srli a1, a0, 2<br> [0x80000494]:sw a1, 188(ra)<br>    |
|  69|[0x80003314]<br>0x000001FF|- rs1_val == -33<br>                                                                                                                                                                  |[0x8000049c]:srli a1, a0, 23<br> [0x800004a0]:sw a1, 192(ra)<br>   |
|  70|[0x80003318]<br>0x07FFFFFB|- rs1_val == -129<br>                                                                                                                                                                 |[0x800004a8]:srli a1, a0, 5<br> [0x800004ac]:sw a1, 196(ra)<br>    |
|  71|[0x8000331c]<br>0x00FFFFFE|- rs1_val == -257<br>                                                                                                                                                                 |[0x800004b4]:srli a1, a0, 8<br> [0x800004b8]:sw a1, 200(ra)<br>    |
|  72|[0x80003320]<br>0x00000000|- rs1_val == 4<br>                                                                                                                                                                    |[0x800004c0]:srli a1, a0, 7<br> [0x800004c4]:sw a1, 204(ra)<br>    |
