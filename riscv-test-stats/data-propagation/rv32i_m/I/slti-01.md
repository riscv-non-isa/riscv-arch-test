
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | slti      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slti-01.S/slti-01.S    |
| Total Number of coverpoints| 171     |
| Total Signature Updates   | 75      |
| Total Coverpoints Covered | 171      |
| STAT1                     | 74      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e8]:slti a1, a0, 1024
      [0x800004ec]:sw a1, 208(ra)
 -- Signature Address: 0x80003338 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slti
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 1024
      - rs1_val == 128






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

|s.no|        signature         |                                                                             coverpoints                                                                             |                                 code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : slti<br> - rs1 : x11<br> - rd : x2<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 16<br> - rs1_val == 16<br> |[0x80000104]:slti sp, a1, 16<br> [0x80000108]:sw sp, 0(s3)<br>        |
|   2|[0x80003214]<br>0x00000000|- rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2048<br>                                      |[0x80000114]:slti s9, s9, 4089<br> [0x80000118]:sw s9, 4(s3)<br>      |
|   3|[0x80003218]<br>0x00000001|- rs1 : x9<br> - rd : x15<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 32<br> - rs1_val == -257<br>                                                            |[0x80000120]:slti a5, s1, 32<br> [0x80000124]:sw a5, 8(s3)<br>        |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x13<br> - rd : x14<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -33<br>                                                                                |[0x8000012c]:slti a4, a3, 4092<br> [0x80000130]:sw a4, 12(s3)<br>     |
|   5|[0x80003220]<br>0x00000001|- rs1 : x17<br> - rd : x1<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                           |[0x80000138]:slti ra, a7, 4089<br> [0x8000013c]:sw ra, 16(s3)<br>     |
|   6|[0x80003224]<br>0x00000001|- rs1 : x10<br> - rd : x3<br> - rs1_val == 0<br> - imm_val == 4<br>                                                                                                  |[0x80000144]:slti gp, a0, 4<br> [0x80000148]:sw gp, 20(s3)<br>        |
|   7|[0x80003228]<br>0x00000000|- rs1 : x4<br> - rd : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                           |[0x80000154]:slti a3, tp, 5<br> [0x80000158]:sw a3, 24(s3)<br>        |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x18<br> - rd : x29<br> - imm_val == (-2**(12-1))<br> - rs1_val == 1<br> - imm_val == -2048<br>                                                               |[0x80000160]:slti t4, s2, 2048<br> [0x80000164]:sw t4, 28(s3)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x12<br> - rd : x11<br> - imm_val == 0<br> - rs1_val == 67108864<br>                                                                                          |[0x8000016c]:slti a1, a2, 0<br> [0x80000170]:sw a1, 32(s3)<br>        |
|  10|[0x80003234]<br>0x00000001|- rs1 : x20<br> - rd : x28<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -2049<br>                                                           |[0x8000017c]:slti t3, s4, 2047<br> [0x80000180]:sw t3, 36(s3)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x23<br> - rd : x26<br> - imm_val == 1<br> - rs1_val == 1048576<br>                                                                                           |[0x80000188]:slti s10, s7, 1<br> [0x8000018c]:sw s10, 40(s3)<br>      |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x29<br> - rd : x31<br> - imm_val == -2<br> - rs1_val == 2<br>                                                                                                |[0x80000194]:slti t6, t4, 4094<br> [0x80000198]:sw t6, 44(s3)<br>     |
|  13|[0x80003240]<br>0x00000001|- rs1 : x16<br> - rd : x18<br> - imm_val == 8<br> - rs1_val == 4<br>                                                                                                 |[0x800001a0]:slti s2, a6, 8<br> [0x800001a4]:sw s2, 48(s3)<br>        |
|  14|[0x80003244]<br>0x00000001|- rs1 : x30<br> - rd : x9<br> - rs1_val == 8<br>                                                                                                                     |[0x800001ac]:slti s1, t5, 1023<br> [0x800001b0]:sw s1, 52(s3)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x0<br> - rd : x12<br> - imm_val == -257<br>                                                                                                                  |[0x800001b8]:slti a2, zero, 3839<br> [0x800001bc]:sw a2, 56(s3)<br>   |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x8<br> - rd : x20<br> - rs1_val == 64<br>                                                                                                                    |[0x800001c4]:slti s4, fp, 8<br> [0x800001c8]:sw s4, 60(s3)<br>        |
|  17|[0x80003250]<br>0x00000000|- rs1 : x24<br> - rd : x0<br> - imm_val == 1024<br> - rs1_val == 128<br>                                                                                             |[0x800001d0]:slti zero, s8, 1024<br> [0x800001d4]:sw zero, 64(s3)<br> |
|  18|[0x80003254]<br>0x00000000|- rs1 : x14<br> - rd : x30<br> - rs1_val == 256<br>                                                                                                                  |[0x800001dc]:slti t5, a4, 6<br> [0x800001e0]:sw t5, 68(s3)<br>        |
|  19|[0x80003258]<br>0x00000000|- rs1 : x7<br> - rd : x22<br> - rs1_val == 512<br>                                                                                                                   |[0x800001e8]:slti s6, t2, 3072<br> [0x800001ec]:sw s6, 72(s3)<br>     |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x1<br> - rd : x5<br> - imm_val == 64<br> - rs1_val == 1024<br>                                                                                               |[0x800001f4]:slti t0, ra, 64<br> [0x800001f8]:sw t0, 76(s3)<br>       |
|  21|[0x80003260]<br>0x00000000|- rs1 : x5<br> - rd : x16<br> - imm_val == -17<br> - rs1_val == 4096<br>                                                                                             |[0x80000200]:slti a6, t0, 4079<br> [0x80000204]:sw a6, 80(s3)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x6<br> - rd : x27<br> - rs1_val == 8192<br>                                                                                                                  |[0x8000020c]:slti s11, t1, 5<br> [0x80000210]:sw s11, 84(s3)<br>      |
|  23|[0x80003268]<br>0x00000000|- rs1 : x31<br> - rd : x4<br> - rs1_val == 16384<br>                                                                                                                 |[0x80000220]:slti tp, t6, 0<br> [0x80000224]:sw tp, 0(ra)<br>         |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x21<br> - rd : x19<br> - imm_val == 512<br> - rs1_val == 32768<br>                                                                                           |[0x8000022c]:slti s3, s5, 512<br> [0x80000230]:sw s3, 4(ra)<br>       |
|  25|[0x80003270]<br>0x00000000|- rs1 : x27<br> - rd : x8<br> - rs1_val == 65536<br>                                                                                                                 |[0x80000238]:slti fp, s11, 64<br> [0x8000023c]:sw fp, 8(ra)<br>       |
|  26|[0x80003274]<br>0x00000000|- rs1 : x19<br> - rd : x21<br> - imm_val == -33<br> - rs1_val == 131072<br>                                                                                          |[0x80000244]:slti s5, s3, 4063<br> [0x80000248]:sw s5, 12(ra)<br>     |
|  27|[0x80003278]<br>0x00000000|- rs1 : x28<br> - rd : x7<br> - rs1_val == 262144<br>                                                                                                                |[0x80000250]:slti t2, t3, 6<br> [0x80000254]:sw t2, 16(ra)<br>        |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x2<br> - rd : x6<br> - imm_val == 256<br> - rs1_val == 524288<br>                                                                                            |[0x8000025c]:slti t1, sp, 256<br> [0x80000260]:sw t1, 20(ra)<br>      |
|  29|[0x80003280]<br>0x00000000|- rs1 : x22<br> - rd : x10<br> - rs1_val == 2097152<br>                                                                                                              |[0x80000268]:slti a0, s6, 4086<br> [0x8000026c]:sw a0, 24(ra)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x3<br> - rd : x23<br> - rs1_val == 4194304<br>                                                                                                               |[0x80000274]:slti s7, gp, 4063<br> [0x80000278]:sw s7, 28(ra)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x26<br> - rd : x24<br> - rs1_val == 8388608<br>                                                                                                              |[0x80000280]:slti s8, s10, 1024<br> [0x80000284]:sw s8, 32(ra)<br>    |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x15<br> - rd : x17<br> - rs1_val == 16777216<br>                                                                                                             |[0x8000028c]:slti a7, a5, 64<br> [0x80000290]:sw a7, 36(ra)<br>       |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                            |[0x80000298]:slti a1, a0, 4086<br> [0x8000029c]:sw a1, 40(ra)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                           |[0x800002a4]:slti a1, a0, 4095<br> [0x800002a8]:sw a1, 44(ra)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                           |[0x800002b0]:slti a1, a0, 1024<br> [0x800002b4]:sw a1, 48(ra)<br>     |
|  36|[0x8000329c]<br>0x00000000|- imm_val == -9<br> - rs1_val == 536870912<br>                                                                                                                       |[0x800002bc]:slti a1, a0, 4087<br> [0x800002c0]:sw a1, 52(ra)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                          |[0x800002c8]:slti a1, a0, 8<br> [0x800002cc]:sw a1, 56(ra)<br>        |
|  38|[0x800032a4]<br>0x00000001|- rs1_val == -2<br>                                                                                                                                                  |[0x800002d4]:slti a1, a0, 9<br> [0x800002d8]:sw a1, 60(ra)<br>        |
|  39|[0x800032a8]<br>0x00000000|- imm_val == -5<br> - rs1_val == -3<br>                                                                                                                              |[0x800002e0]:slti a1, a0, 4091<br> [0x800002e4]:sw a1, 64(ra)<br>     |
|  40|[0x800032ac]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                  |[0x800002ec]:slti a1, a0, 1024<br> [0x800002f0]:sw a1, 68(ra)<br>     |
|  41|[0x800032b0]<br>0x00000001|- rs1_val == -9<br>                                                                                                                                                  |[0x800002f8]:slti a1, a0, 512<br> [0x800002fc]:sw a1, 72(ra)<br>      |
|  42|[0x800032b4]<br>0x00000001|- rs1_val == -17<br>                                                                                                                                                 |[0x80000304]:slti a1, a0, 4<br> [0x80000308]:sw a1, 76(ra)<br>        |
|  43|[0x800032b8]<br>0x00000001|- imm_val == 1365<br> - rs1_val == -65<br>                                                                                                                           |[0x80000310]:slti a1, a0, 1365<br> [0x80000314]:sw a1, 80(ra)<br>     |
|  44|[0x800032bc]<br>0x00000001|- rs1_val == -129<br>                                                                                                                                                |[0x8000031c]:slti a1, a0, 6<br> [0x80000320]:sw a1, 84(ra)<br>        |
|  45|[0x800032c0]<br>0x00000001|- rs1_val == -524289<br>                                                                                                                                             |[0x8000032c]:slti a1, a0, 1<br> [0x80000330]:sw a1, 88(ra)<br>        |
|  46|[0x800032c4]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                                                            |[0x8000033c]:slti a1, a0, 7<br> [0x80000340]:sw a1, 92(ra)<br>        |
|  47|[0x800032c8]<br>0x00000001|- rs1_val == -2097153<br>                                                                                                                                            |[0x8000034c]:slti a1, a0, 3839<br> [0x80000350]:sw a1, 96(ra)<br>     |
|  48|[0x800032cc]<br>0x00000001|- imm_val == -65<br> - rs1_val == -4194305<br>                                                                                                                       |[0x8000035c]:slti a1, a0, 4031<br> [0x80000360]:sw a1, 100(ra)<br>    |
|  49|[0x800032d0]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                            |[0x8000036c]:slti a1, a0, 32<br> [0x80000370]:sw a1, 104(ra)<br>      |
|  50|[0x800032d4]<br>0x00000001|- rs1_val == -16777217<br>                                                                                                                                           |[0x8000037c]:slti a1, a0, 4094<br> [0x80000380]:sw a1, 108(ra)<br>    |
|  51|[0x800032d8]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                           |[0x8000038c]:slti a1, a0, 4079<br> [0x80000390]:sw a1, 112(ra)<br>    |
|  52|[0x800032dc]<br>0x00000001|- rs1_val == -67108865<br>                                                                                                                                           |[0x8000039c]:slti a1, a0, 3<br> [0x800003a0]:sw a1, 116(ra)<br>       |
|  53|[0x800032e0]<br>0x00000001|- imm_val == -1025<br> - rs1_val == -134217729<br>                                                                                                                   |[0x800003ac]:slti a1, a0, 3071<br> [0x800003b0]:sw a1, 120(ra)<br>    |
|  54|[0x800032e4]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                                                          |[0x800003bc]:slti a1, a0, 1023<br> [0x800003c0]:sw a1, 124(ra)<br>    |
|  55|[0x800032e8]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                                                          |[0x800003cc]:slti a1, a0, 9<br> [0x800003d0]:sw a1, 128(ra)<br>       |
|  56|[0x800032ec]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                                                         |[0x800003dc]:slti a1, a0, 4090<br> [0x800003e0]:sw a1, 132(ra)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                          |[0x800003ec]:slti a1, a0, 8<br> [0x800003f0]:sw a1, 136(ra)<br>       |
|  58|[0x800032f4]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                                                         |[0x800003fc]:slti a1, a0, 1024<br> [0x80000400]:sw a1, 140(ra)<br>    |
|  59|[0x800032f8]<br>0x00000000|- imm_val == -129<br>                                                                                                                                                |[0x80000408]:slti a1, a0, 3967<br> [0x8000040c]:sw a1, 144(ra)<br>    |
|  60|[0x800032fc]<br>0x00000000|- imm_val == -513<br>                                                                                                                                                |[0x80000414]:slti a1, a0, 3583<br> [0x80000418]:sw a1, 148(ra)<br>    |
|  61|[0x80003300]<br>0x00000000|- imm_val == -1366<br>                                                                                                                                               |[0x80000424]:slti a1, a0, 2730<br> [0x80000428]:sw a1, 152(ra)<br>    |
|  62|[0x80003304]<br>0x00000000|- imm_val == -3<br>                                                                                                                                                  |[0x80000430]:slti a1, a0, 4093<br> [0x80000434]:sw a1, 156(ra)<br>    |
|  63|[0x80003308]<br>0x00000000|- imm_val == 2<br>                                                                                                                                                   |[0x8000043c]:slti a1, a0, 2<br> [0x80000440]:sw a1, 160(ra)<br>       |
|  64|[0x8000330c]<br>0x00000000|- imm_val == 128<br>                                                                                                                                                 |[0x80000448]:slti a1, a0, 128<br> [0x8000044c]:sw a1, 164(ra)<br>     |
|  65|[0x80003310]<br>0x00000001|- rs1_val == -513<br>                                                                                                                                                |[0x80000454]:slti a1, a0, 4063<br> [0x80000458]:sw a1, 168(ra)<br>    |
|  66|[0x80003314]<br>0x00000001|- rs1_val == -1025<br>                                                                                                                                               |[0x80000460]:slti a1, a0, 16<br> [0x80000464]:sw a1, 172(ra)<br>      |
|  67|[0x80003318]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                               |[0x80000470]:slti a1, a0, 0<br> [0x80000474]:sw a1, 176(ra)<br>       |
|  68|[0x8000331c]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                               |[0x80000480]:slti a1, a0, 4<br> [0x80000484]:sw a1, 180(ra)<br>       |
|  69|[0x80003320]<br>0x00000001|- rs1_val == -16385<br>                                                                                                                                              |[0x80000490]:slti a1, a0, 0<br> [0x80000494]:sw a1, 184(ra)<br>       |
|  70|[0x80003324]<br>0x00000001|- rs1_val == -32769<br>                                                                                                                                              |[0x800004a0]:slti a1, a0, 4090<br> [0x800004a4]:sw a1, 188(ra)<br>    |
|  71|[0x80003328]<br>0x00000001|- rs1_val == -65537<br>                                                                                                                                              |[0x800004b0]:slti a1, a0, 16<br> [0x800004b4]:sw a1, 192(ra)<br>      |
|  72|[0x8000332c]<br>0x00000001|- rs1_val == -131073<br>                                                                                                                                             |[0x800004c0]:slti a1, a0, 4063<br> [0x800004c4]:sw a1, 196(ra)<br>    |
|  73|[0x80003330]<br>0x00000001|- rs1_val == -262145<br>                                                                                                                                             |[0x800004d0]:slti a1, a0, 6<br> [0x800004d4]:sw a1, 200(ra)<br>       |
|  74|[0x80003334]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                                  |[0x800004dc]:slti a1, a0, 3839<br> [0x800004e0]:sw a1, 204(ra)<br>    |
