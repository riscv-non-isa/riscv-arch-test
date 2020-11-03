
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
| SIG_REGION                | [('0x80003204', '0x80003338', '77 words')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 156     |
| Total Signature Updates   | 74      |
| Total Coverpoints Covered | 156      |
| STAT1                     | 73      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d8]:slli a1, a0, 10
      [0x800004dc]:sw a1, 196(ra)
 -- Signature Address: 0x80003334 Data: 0x00020000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 128
      - imm_val == 10






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

|s.no|        signature         |                                                                    coverpoints                                                                    |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFC00000|- opcode : slli<br> - rs1 : x18<br> - rd : x10<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br>                            |[0x80000104]:slli a0, s2, 19<br> [0x80000108]:sw a0, 0(s1)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x26<br> - rd : x26<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8388608<br>                       |[0x80000110]:slli s10, s10, 11<br> [0x80000114]:sw s10, 4(s1)<br>   |
|   3|[0x80003218]<br>0xFFDFFFFF|- rs1 : x12<br> - rd : x6<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -2097153<br>                                                         |[0x80000120]:slli t1, a2, 0<br> [0x80000124]:sw t1, 8(s1)<br>       |
|   4|[0x8000321c]<br>0x10000000|- rs1 : x1<br> - rd : x11<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 268435456<br>                                                        |[0x8000012c]:slli a1, ra, 0<br> [0x80000130]:sw a1, 12(s1)<br>      |
|   5|[0x80003220]<br>0x80000000|- rs1 : x19<br> - rd : x29<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -131073<br>                                                  |[0x8000013c]:slli t4, s3, 31<br> [0x80000140]:sw t4, 16(s1)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x28<br> - rd : x23<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 524288<br>                                                   |[0x80000148]:slli s7, t3, 31<br> [0x8000014c]:sw s7, 20(s1)<br>     |
|   7|[0x80003228]<br>0x00000040|- rs1 : x20<br> - rd : x17<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4<br> - imm_val == 4<br>                   |[0x80000154]:slli a7, s4, 4<br> [0x80000158]:sw a7, 24(s1)<br>      |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x16<br> - rd : x3<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 23<br> |[0x80000160]:slli gp, a6, 23<br> [0x80000164]:sw gp, 28(s1)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x13<br> - rd : x28<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                              |[0x8000016c]:slli t3, a3, 13<br> [0x80000170]:sw t3, 32(s1)<br>     |
|  10|[0x80003234]<br>0xFFFFFFF8|- rs1 : x23<br> - rd : x1<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                     |[0x8000017c]:slli ra, s7, 3<br> [0x80000180]:sw ra, 36(s1)<br>      |
|  11|[0x80003238]<br>0x00020000|- rs1 : x4<br> - rd : x15<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                            |[0x80000188]:slli a5, tp, 17<br> [0x8000018c]:sw a5, 40(s1)<br>     |
|  12|[0x8000323c]<br>0x01000000|- rs1 : x22<br> - rd : x2<br> - imm_val == 1<br>                                                                                                   |[0x80000194]:slli sp, s6, 1<br> [0x80000198]:sw sp, 44(s1)<br>      |
|  13|[0x80003240]<br>0xFFFBFFFC|- rs1 : x11<br> - rd : x20<br> - rs1_val == -65537<br> - imm_val == 2<br>                                                                          |[0x800001a4]:slli s4, a1, 2<br> [0x800001a8]:sw s4, 48(s1)<br>      |
|  14|[0x80003244]<br>0xBFFFFF00|- rs1 : x10<br> - rd : x7<br> - rs1_val == -4194305<br> - imm_val == 8<br>                                                                         |[0x800001b4]:slli t2, a0, 8<br> [0x800001b8]:sw t2, 52(s1)<br>      |
|  15|[0x80003248]<br>0x00000000|- rs1 : x8<br> - rd : x12<br> - rs1_val == 67108864<br> - imm_val == 16<br>                                                                        |[0x800001c0]:slli a2, fp, 16<br> [0x800001c4]:sw a2, 56(s1)<br>     |
|  16|[0x8000324c]<br>0xC0000000|- rs1 : x29<br> - rd : x22<br> - rs1_val == -134217729<br> - imm_val == 30<br>                                                                     |[0x800001d0]:slli s6, t4, 30<br> [0x800001d4]:sw s6, 60(s1)<br>     |
|  17|[0x80003250]<br>0xE0000000|- rs1 : x15<br> - rd : x18<br> - rs1_val == -8193<br> - imm_val == 29<br>                                                                          |[0x800001e0]:slli s2, a5, 29<br> [0x800001e4]:sw s2, 64(s1)<br>     |
|  18|[0x80003254]<br>0xC0000000|- rs1 : x7<br> - rd : x5<br> - imm_val == 27<br>                                                                                                   |[0x800001ec]:slli t0, t2, 27<br> [0x800001f0]:sw t0, 68(s1)<br>     |
|  19|[0x80003258]<br>0xFFBF8000|- rs1 : x3<br> - rd : x24<br> - rs1_val == -129<br> - imm_val == 15<br>                                                                            |[0x800001f8]:slli s8, gp, 15<br> [0x800001fc]:sw s8, 72(s1)<br>     |
|  20|[0x8000325c]<br>0x01200000|- rs1 : x6<br> - rd : x14<br> - imm_val == 21<br>                                                                                                  |[0x80000204]:slli a4, t1, 21<br> [0x80000208]:sw a4, 76(s1)<br>     |
|  21|[0x80003260]<br>0xFFFFE400|- rs1 : x5<br> - rd : x19<br> - imm_val == 10<br>                                                                                                  |[0x80000210]:slli s3, t0, 10<br> [0x80000214]:sw s3, 80(s1)<br>     |
|  22|[0x80003264]<br>0x80000000|- rs1 : x14<br> - rd : x16<br> - rs1_val == 2<br>                                                                                                  |[0x8000021c]:slli a6, a4, 30<br> [0x80000220]:sw a6, 84(s1)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x0<br> - rd : x27<br>                                                                                                                      |[0x80000228]:slli s11, zero, 11<br> [0x8000022c]:sw s11, 88(s1)<br> |
|  24|[0x8000326c]<br>0x00400000|- rs1 : x31<br> - rd : x21<br> - rs1_val == 16<br>                                                                                                 |[0x80000234]:slli s5, t6, 18<br> [0x80000238]:sw s5, 92(s1)<br>     |
|  25|[0x80003270]<br>0x00400000|- rs1 : x9<br> - rd : x8<br> - rs1_val == 32<br>                                                                                                   |[0x80000248]:slli fp, s1, 17<br> [0x8000024c]:sw fp, 0(ra)<br>      |
|  26|[0x80003274]<br>0x00000000|- rs1 : x17<br> - rd : x25<br> - rs1_val == 64<br>                                                                                                 |[0x80000254]:slli s9, a7, 27<br> [0x80000258]:sw s9, 4(ra)<br>      |
|  27|[0x80003278]<br>0x00000000|- rs1 : x24<br> - rd : x0<br> - rs1_val == 128<br>                                                                                                 |[0x80000260]:slli zero, s8, 10<br> [0x80000264]:sw zero, 8(ra)<br>  |
|  28|[0x8000327c]<br>0x00100000|- rs1 : x25<br> - rd : x31<br> - rs1_val == 256<br>                                                                                                |[0x8000026c]:slli t6, s9, 12<br> [0x80000270]:sw t6, 12(ra)<br>     |
|  29|[0x80003280]<br>0x10000000|- rs1 : x2<br> - rd : x30<br> - rs1_val == 512<br>                                                                                                 |[0x80000278]:slli t5, sp, 19<br> [0x8000027c]:sw t5, 16(ra)<br>     |
|  30|[0x80003284]<br>0x00000400|- rs1 : x27<br> - rd : x13<br> - rs1_val == 1024<br>                                                                                               |[0x80000284]:slli a3, s11, 0<br> [0x80000288]:sw a3, 20(ra)<br>     |
|  31|[0x80003288]<br>0x08000000|- rs1 : x30<br> - rd : x9<br> - rs1_val == 2048<br>                                                                                                |[0x80000294]:slli s1, t5, 16<br> [0x80000298]:sw s1, 24(ra)<br>     |
|  32|[0x8000328c]<br>0x00004000|- rs1 : x21<br> - rd : x4<br> - rs1_val == 4096<br>                                                                                                |[0x800002a0]:slli tp, s5, 2<br> [0x800002a4]:sw tp, 28(ra)<br>      |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 8192<br>                                                                                                                              |[0x800002ac]:slli a1, a0, 23<br> [0x800002b0]:sw a1, 32(ra)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                             |[0x800002b8]:slli a1, a0, 23<br> [0x800002bc]:sw a1, 36(ra)<br>     |
|  35|[0x80003298]<br>0x00200000|- rs1_val == 32768<br>                                                                                                                             |[0x800002c4]:slli a1, a0, 6<br> [0x800002c8]:sw a1, 40(ra)<br>      |
|  36|[0x8000329c]<br>0x08000000|- rs1_val == 65536<br>                                                                                                                             |[0x800002d0]:slli a1, a0, 11<br> [0x800002d4]:sw a1, 44(ra)<br>     |
|  37|[0x800032a0]<br>0x08000000|- rs1_val == 131072<br>                                                                                                                            |[0x800002dc]:slli a1, a0, 10<br> [0x800002e0]:sw a1, 48(ra)<br>     |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                            |[0x800002e8]:slli a1, a0, 17<br> [0x800002ec]:sw a1, 52(ra)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                           |[0x800002f4]:slli a1, a0, 17<br> [0x800002f8]:sw a1, 56(ra)<br>     |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                           |[0x80000300]:slli a1, a0, 31<br> [0x80000304]:sw a1, 60(ra)<br>     |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                           |[0x8000030c]:slli a1, a0, 17<br> [0x80000310]:sw a1, 64(ra)<br>     |
|  42|[0x800032b4]<br>0xFFFDFF00|- rs1_val == -513<br>                                                                                                                              |[0x80000318]:slli a1, a0, 8<br> [0x8000031c]:sw a1, 68(ra)<br>      |
|  43|[0x800032b8]<br>0xFFFBFF00|- rs1_val == -1025<br>                                                                                                                             |[0x80000324]:slli a1, a0, 8<br> [0x80000328]:sw a1, 72(ra)<br>      |
|  44|[0x800032bc]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                             |[0x80000334]:slli a1, a0, 0<br> [0x80000338]:sw a1, 76(ra)<br>      |
|  45|[0x800032c0]<br>0x80000000|- rs1_val == -4097<br>                                                                                                                             |[0x80000344]:slli a1, a0, 31<br> [0x80000348]:sw a1, 80(ra)<br>     |
|  46|[0x800032c4]<br>0xFFDFFF80|- rs1_val == -16385<br>                                                                                                                            |[0x80000354]:slli a1, a0, 7<br> [0x80000358]:sw a1, 84(ra)<br>      |
|  47|[0x800032c8]<br>0xFFFBFFF8|- rs1_val == -32769<br>                                                                                                                            |[0x80000364]:slli a1, a0, 3<br> [0x80000368]:sw a1, 88(ra)<br>      |
|  48|[0x800032cc]<br>0xFF800000|- rs1_val == -262145<br>                                                                                                                           |[0x80000374]:slli a1, a0, 23<br> [0x80000378]:sw a1, 92(ra)<br>     |
|  49|[0x800032d0]<br>0xFF7FFFF0|- rs1_val == -524289<br>                                                                                                                           |[0x80000384]:slli a1, a0, 4<br> [0x80000388]:sw a1, 96(ra)<br>      |
|  50|[0x800032d4]<br>0xE0000000|- rs1_val == -1048577<br>                                                                                                                          |[0x80000394]:slli a1, a0, 29<br> [0x80000398]:sw a1, 100(ra)<br>    |
|  51|[0x800032d8]<br>0xE0000000|- rs1_val == -8388609<br>                                                                                                                          |[0x800003a4]:slli a1, a0, 29<br> [0x800003a8]:sw a1, 104(ra)<br>    |
|  52|[0x800032dc]<br>0xFF800000|- rs1_val == -16777217<br>                                                                                                                         |[0x800003b4]:slli a1, a0, 23<br> [0x800003b8]:sw a1, 108(ra)<br>    |
|  53|[0x800032e0]<br>0xFFFFFF80|- rs1_val == -33554433<br>                                                                                                                         |[0x800003c4]:slli a1, a0, 7<br> [0x800003c8]:sw a1, 112(ra)<br>     |
|  54|[0x800032e4]<br>0x80000000|- rs1_val == -67108865<br>                                                                                                                         |[0x800003d4]:slli a1, a0, 31<br> [0x800003d8]:sw a1, 116(ra)<br>    |
|  55|[0x800032e8]<br>0xFFFE0000|- rs1_val == -268435457<br>                                                                                                                        |[0x800003e4]:slli a1, a0, 17<br> [0x800003e8]:sw a1, 120(ra)<br>    |
|  56|[0x800032ec]<br>0xFFFC0000|- rs1_val == -536870913<br>                                                                                                                        |[0x800003f4]:slli a1, a0, 18<br> [0x800003f8]:sw a1, 124(ra)<br>    |
|  57|[0x800032f0]<br>0xFFFFFFF0|- rs1_val == -1073741825<br>                                                                                                                       |[0x80000404]:slli a1, a0, 4<br> [0x80000408]:sw a1, 128(ra)<br>     |
|  58|[0x800032f4]<br>0xFFFFFEE0|- rs1_val == -9<br>                                                                                                                                |[0x80000410]:slli a1, a0, 5<br> [0x80000414]:sw a1, 132(ra)<br>     |
|  59|[0x800032f8]<br>0x80000000|- rs1_val == 16777216<br>                                                                                                                          |[0x8000041c]:slli a1, a0, 7<br> [0x80000420]:sw a1, 136(ra)<br>     |
|  60|[0x800032fc]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                          |[0x80000428]:slli a1, a0, 7<br> [0x8000042c]:sw a1, 140(ra)<br>     |
|  61|[0x80003300]<br>0x20000000|- rs1_val == 134217728<br>                                                                                                                         |[0x80000434]:slli a1, a0, 2<br> [0x80000438]:sw a1, 144(ra)<br>     |
|  62|[0x80003304]<br>0x80000000|- rs1_val == 536870912<br>                                                                                                                         |[0x80000440]:slli a1, a0, 2<br> [0x80000444]:sw a1, 148(ra)<br>     |
|  63|[0x80003308]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                        |[0x8000044c]:slli a1, a0, 4<br> [0x80000450]:sw a1, 152(ra)<br>     |
|  64|[0x8000330c]<br>0x80000000|- rs1_val == -2<br>                                                                                                                                |[0x80000458]:slli a1, a0, 30<br> [0x8000045c]:sw a1, 156(ra)<br>    |
|  65|[0x80003310]<br>0x55550000|- rs1_val == 1431655765<br>                                                                                                                        |[0x80000468]:slli a1, a0, 16<br> [0x8000046c]:sw a1, 160(ra)<br>    |
|  66|[0x80003314]<br>0x55555000|- rs1_val == -1431655766<br>                                                                                                                       |[0x80000478]:slli a1, a0, 11<br> [0x8000047c]:sw a1, 164(ra)<br>    |
|  67|[0x80003318]<br>0xFFFA0000|- rs1_val == -3<br>                                                                                                                                |[0x80000484]:slli a1, a0, 17<br> [0x80000488]:sw a1, 168(ra)<br>    |
|  68|[0x8000331c]<br>0xFFFFFFD8|- rs1_val == -5<br>                                                                                                                                |[0x80000490]:slli a1, a0, 3<br> [0x80000494]:sw a1, 172(ra)<br>     |
|  69|[0x80003320]<br>0xE0000000|- rs1_val == -17<br>                                                                                                                               |[0x8000049c]:slli a1, a0, 29<br> [0x800004a0]:sw a1, 176(ra)<br>    |
|  70|[0x80003324]<br>0xFFFFFFBE|- rs1_val == -33<br>                                                                                                                               |[0x800004a8]:slli a1, a0, 1<br> [0x800004ac]:sw a1, 180(ra)<br>     |
|  71|[0x80003328]<br>0xFFFFBF00|- rs1_val == -65<br>                                                                                                                               |[0x800004b4]:slli a1, a0, 8<br> [0x800004b8]:sw a1, 184(ra)<br>     |
|  72|[0x8000332c]<br>0xFFFF7F80|- rs1_val == -257<br>                                                                                                                              |[0x800004c0]:slli a1, a0, 7<br> [0x800004c4]:sw a1, 188(ra)<br>     |
|  73|[0x80003330]<br>0x00004000|- rs1_val == 8<br>                                                                                                                                 |[0x800004cc]:slli a1, a0, 11<br> [0x800004d0]:sw a1, 192(ra)<br>    |
