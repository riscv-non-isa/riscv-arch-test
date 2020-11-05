
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000510')]      |
| SIG_REGION                | [('0x80003204', '0x80003344', '80 words')]      |
| COV_LABELS                | andi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/andi-01.S/andi-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 77      |
| STAT1                     | 77      |
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

|s.no|        signature         |                                                                            coverpoints                                                                            |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000002|- opcode : andi<br> - rs1 : x7<br> - rd : x21<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 2<br> - rs1_val == 2<br> |[0x80000104]:andi s5, t2, 2<br> [0x80000108]:sw s5, 0(a5)<br>       |
|   2|[0x80003214]<br>0x00000006|- rs1 : x14<br> - rd : x14<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br>                                                          |[0x80000110]:andi a4, a4, 6<br> [0x80000114]:sw a4, 4(a5)<br>       |
|   3|[0x80003218]<br>0x00000200|- rs1 : x4<br> - rd : x2<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -65<br> - rs1_val == 512<br>                                                           |[0x8000011c]:andi sp, tp, 4031<br> [0x80000120]:sw sp, 8(a5)<br>    |
|   4|[0x8000321c]<br>0xFFFFFFF2|- rs1 : x21<br> - rd : x24<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -9<br>                                                                               |[0x80000128]:andi s8, s5, 4087<br> [0x8000012c]:sw s8, 12(a5)<br>   |
|   5|[0x80003220]<br>0x00000000|- rs1 : x12<br> - rd : x27<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                        |[0x80000134]:andi s11, a2, 2<br> [0x80000138]:sw s11, 16(a5)<br>    |
|   6|[0x80003224]<br>0x00000000|- rs1 : x3<br> - rd : x10<br> - rs1_val == 0<br>                                                                                                                   |[0x80000140]:andi a0, gp, 5<br> [0x80000144]:sw a0, 20(a5)<br>      |
|   7|[0x80003228]<br>0x7FFFFBFF|- rs1 : x22<br> - rd : x5<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -1025<br> - rs1_val == 2147483647<br>                                                  |[0x80000150]:andi t0, s6, 3071<br> [0x80000154]:sw t0, 24(a5)<br>   |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x26<br> - rd : x18<br> - rs1_val == 1<br> - imm_val == 256<br>                                                                                             |[0x8000015c]:andi s2, s10, 256<br> [0x80000160]:sw s2, 28(a5)<br>   |
|   9|[0x80003230]<br>0x00400000|- rs1 : x2<br> - rd : x11<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 4194304<br>                                                        |[0x80000168]:andi a1, sp, 2048<br> [0x8000016c]:sw a1, 32(a5)<br>   |
|  10|[0x80003234]<br>0x00000000|- rs1 : x6<br> - rd : x30<br> - imm_val == 0<br> - rs1_val == 524288<br>                                                                                           |[0x80000174]:andi t5, t1, 0<br> [0x80000178]:sw t5, 36(a5)<br>      |
|  11|[0x80003238]<br>0x000007FF|- rs1 : x24<br> - rd : x19<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -8388609<br>                                                      |[0x80000184]:andi s3, s8, 2047<br> [0x80000188]:sw s3, 40(a5)<br>   |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x27<br> - rd : x0<br> - imm_val == 1<br>                                                                                                                   |[0x80000190]:andi zero, s11, 1<br> [0x80000194]:sw zero, 44(a5)<br> |
|  13|[0x80003240]<br>0x00000000|- rs1 : x8<br> - rd : x25<br> - rs1_val == 4<br>                                                                                                                   |[0x8000019c]:andi s9, fp, 9<br> [0x800001a0]:sw s9, 48(a5)<br>      |
|  14|[0x80003244]<br>0x00000008|- rs1 : x19<br> - rd : x8<br> - imm_val == 8<br> - rs1_val == 8<br>                                                                                                |[0x800001a8]:andi fp, s3, 8<br> [0x800001ac]:sw fp, 52(a5)<br>      |
|  15|[0x80003248]<br>0x00000000|- rs1 : x10<br> - rd : x17<br> - rs1_val == 16<br>                                                                                                                 |[0x800001b4]:andi a7, a0, 8<br> [0x800001b8]:sw a7, 56(a5)<br>      |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x25<br> - rd : x6<br> - rs1_val == 32<br>                                                                                                                  |[0x800001c0]:andi t1, s9, 0<br> [0x800001c4]:sw t1, 60(a5)<br>      |
|  17|[0x80003250]<br>0x00000040|- rs1 : x9<br> - rd : x26<br> - rs1_val == 64<br>                                                                                                                  |[0x800001cc]:andi s10, s1, 4090<br> [0x800001d0]:sw s10, 64(a5)<br> |
|  18|[0x80003254]<br>0x00000080|- rs1 : x11<br> - rd : x13<br> - imm_val == -5<br> - rs1_val == 128<br>                                                                                            |[0x800001d8]:andi a3, a1, 4091<br> [0x800001dc]:sw a3, 68(a5)<br>   |
|  19|[0x80003258]<br>0x00000000|- rs1 : x18<br> - rd : x22<br> - rs1_val == 256<br>                                                                                                                |[0x800001e4]:andi s6, s2, 2048<br> [0x800001e8]:sw s6, 72(a5)<br>   |
|  20|[0x8000325c]<br>0x00000400|- rs1 : x28<br> - rd : x16<br> - rs1_val == 1024<br>                                                                                                               |[0x800001f0]:andi a6, t3, 3072<br> [0x800001f4]:sw a6, 76(a5)<br>   |
|  21|[0x80003260]<br>0x00000000|- rs1 : x23<br> - rd : x28<br> - rs1_val == 2048<br>                                                                                                               |[0x80000200]:andi t3, s7, 1<br> [0x80000204]:sw t3, 80(a5)<br>      |
|  22|[0x80003264]<br>0x00001000|- rs1 : x1<br> - rd : x29<br> - rs1_val == 4096<br>                                                                                                                |[0x8000020c]:andi t4, ra, 4092<br> [0x80000210]:sw t4, 84(a5)<br>   |
|  23|[0x80003268]<br>0x00002000|- rs1 : x15<br> - rd : x23<br> - rs1_val == 8192<br>                                                                                                               |[0x80000220]:andi s7, a5, 4088<br> [0x80000224]:sw s7, 0(sp)<br>    |
|  24|[0x8000326c]<br>0x00004000|- rs1 : x20<br> - rd : x31<br> - imm_val == -129<br> - rs1_val == 16384<br>                                                                                        |[0x8000022c]:andi t6, s4, 3967<br> [0x80000230]:sw t6, 4(sp)<br>    |
|  25|[0x80003270]<br>0x00008000|- rs1 : x31<br> - rd : x3<br> - rs1_val == 32768<br>                                                                                                               |[0x80000238]:andi gp, t6, 3071<br> [0x8000023c]:sw gp, 8(sp)<br>    |
|  26|[0x80003274]<br>0x00010000|- rs1 : x5<br> - rd : x7<br> - rs1_val == 65536<br>                                                                                                                |[0x80000244]:andi t2, t0, 3071<br> [0x80000248]:sw t2, 12(sp)<br>   |
|  27|[0x80003278]<br>0x00000000|- rs1 : x0<br> - rd : x15<br> - imm_val == 512<br>                                                                                                                 |[0x80000254]:andi a5, zero, 512<br> [0x80000258]:sw a5, 16(sp)<br>  |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x13<br> - rd : x12<br> - rs1_val == 262144<br>                                                                                                             |[0x80000260]:andi a2, a3, 0<br> [0x80000264]:sw a2, 20(sp)<br>      |
|  29|[0x80003280]<br>0x00100000|- rs1 : x29<br> - rd : x20<br> - imm_val == -1366<br> - rs1_val == 1048576<br>                                                                                     |[0x8000026c]:andi s4, t4, 2730<br> [0x80000270]:sw s4, 24(sp)<br>   |
|  30|[0x80003284]<br>0x00000000|- rs1 : x16<br> - rd : x4<br> - rs1_val == 2097152<br>                                                                                                             |[0x80000278]:andi tp, a6, 512<br> [0x8000027c]:sw tp, 28(sp)<br>    |
|  31|[0x80003288]<br>0x00000000|- rs1 : x30<br> - rd : x1<br> - imm_val == 16<br> - rs1_val == 8388608<br>                                                                                         |[0x80000284]:andi ra, t5, 16<br> [0x80000288]:sw ra, 32(sp)<br>     |
|  32|[0x8000328c]<br>0x01000000|- rs1 : x17<br> - rd : x9<br> - imm_val == -3<br> - rs1_val == 16777216<br>                                                                                        |[0x80000290]:andi s1, a7, 4093<br> [0x80000294]:sw s1, 36(sp)<br>   |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                          |[0x8000029c]:andi a1, a0, 5<br> [0x800002a0]:sw a1, 40(sp)<br>      |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                          |[0x800002a8]:andi a1, a0, 2<br> [0x800002ac]:sw a1, 44(sp)<br>      |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                         |[0x800002b4]:andi a1, a0, 0<br> [0x800002b8]:sw a1, 48(sp)<br>      |
|  36|[0x8000329c]<br>0x00000000|- imm_val == 64<br> - rs1_val == 268435456<br>                                                                                                                     |[0x800002c0]:andi a1, a0, 64<br> [0x800002c4]:sw a1, 52(sp)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                         |[0x800002cc]:andi a1, a0, 1023<br> [0x800002d0]:sw a1, 56(sp)<br>   |
|  38|[0x800032a4]<br>0x40000000|- imm_val == -17<br> - rs1_val == 1073741824<br>                                                                                                                   |[0x800002d8]:andi a1, a0, 4079<br> [0x800002dc]:sw a1, 60(sp)<br>   |
|  39|[0x800032a8]<br>0xFFFFFBFE|- rs1_val == -2<br>                                                                                                                                                |[0x800002e4]:andi a1, a0, 3071<br> [0x800002e8]:sw a1, 64(sp)<br>   |
|  40|[0x800032ac]<br>0xFFFFFFDD|- imm_val == -33<br> - rs1_val == -3<br>                                                                                                                           |[0x800002f0]:andi a1, a0, 4063<br> [0x800002f4]:sw a1, 68(sp)<br>   |
|  41|[0x800032b0]<br>0xFFFFFBFB|- rs1_val == -5<br>                                                                                                                                                |[0x800002fc]:andi a1, a0, 3071<br> [0x80000300]:sw a1, 72(sp)<br>   |
|  42|[0x800032b4]<br>0x00000006|- rs1_val == -9<br>                                                                                                                                                |[0x80000308]:andi a1, a0, 6<br> [0x8000030c]:sw a1, 76(sp)<br>      |
|  43|[0x800032b8]<br>0xFFFFFFE7|- rs1_val == -17<br>                                                                                                                                               |[0x80000314]:andi a1, a0, 4087<br> [0x80000318]:sw a1, 80(sp)<br>   |
|  44|[0x800032bc]<br>0x00000040|- rs1_val == -33<br>                                                                                                                                               |[0x80000320]:andi a1, a0, 64<br> [0x80000324]:sw a1, 84(sp)<br>     |
|  45|[0x800032c0]<br>0x00000400|- imm_val == 1024<br> - rs1_val == -65<br>                                                                                                                         |[0x8000032c]:andi a1, a0, 1024<br> [0x80000330]:sw a1, 88(sp)<br>   |
|  46|[0x800032c4]<br>0xFFFFFF6F|- rs1_val == -129<br>                                                                                                                                              |[0x80000338]:andi a1, a0, 4079<br> [0x8000033c]:sw a1, 92(sp)<br>   |
|  47|[0x800032c8]<br>0x00000009|- rs1_val == -524289<br>                                                                                                                                           |[0x80000348]:andi a1, a0, 9<br> [0x8000034c]:sw a1, 96(sp)<br>      |
|  48|[0x800032cc]<br>0xFFEFFBFF|- rs1_val == -1048577<br>                                                                                                                                          |[0x80000358]:andi a1, a0, 3071<br> [0x8000035c]:sw a1, 100(sp)<br>  |
|  49|[0x800032d0]<br>0x00000003|- rs1_val == -2097153<br>                                                                                                                                          |[0x80000368]:andi a1, a0, 3<br> [0x8000036c]:sw a1, 104(sp)<br>     |
|  50|[0x800032d4]<br>0x00000020|- imm_val == 32<br> - rs1_val == -4194305<br>                                                                                                                      |[0x80000378]:andi a1, a0, 32<br> [0x8000037c]:sw a1, 108(sp)<br>    |
|  51|[0x800032d8]<br>0xFEFFFAAA|- rs1_val == -16777217<br>                                                                                                                                         |[0x80000388]:andi a1, a0, 2730<br> [0x8000038c]:sw a1, 112(sp)<br>  |
|  52|[0x800032dc]<br>0x00000006|- rs1_val == -33554433<br>                                                                                                                                         |[0x80000398]:andi a1, a0, 6<br> [0x8000039c]:sw a1, 116(sp)<br>     |
|  53|[0x800032e0]<br>0x000003FF|- rs1_val == -67108865<br>                                                                                                                                         |[0x800003a8]:andi a1, a0, 1023<br> [0x800003ac]:sw a1, 120(sp)<br>  |
|  54|[0x800032e4]<br>0xF7FFFF7F|- rs1_val == -134217729<br>                                                                                                                                        |[0x800003b8]:andi a1, a0, 3967<br> [0x800003bc]:sw a1, 124(sp)<br>  |
|  55|[0x800032e8]<br>0xEFFFFFF7|- rs1_val == -268435457<br>                                                                                                                                        |[0x800003c8]:andi a1, a0, 4087<br> [0x800003cc]:sw a1, 128(sp)<br>  |
|  56|[0x800032ec]<br>0x00000007|- rs1_val == -536870913<br>                                                                                                                                        |[0x800003d8]:andi a1, a0, 7<br> [0x800003dc]:sw a1, 132(sp)<br>     |
|  57|[0x800032f0]<br>0x00000400|- rs1_val == -1073741825<br>                                                                                                                                       |[0x800003e8]:andi a1, a0, 1024<br> [0x800003ec]:sw a1, 136(sp)<br>  |
|  58|[0x800032f4]<br>0x55555000|- rs1_val == 1431655765<br>                                                                                                                                        |[0x800003f8]:andi a1, a0, 2730<br> [0x800003fc]:sw a1, 140(sp)<br>  |
|  59|[0x800032f8]<br>0xAAAAAAA8|- rs1_val == -1431655766<br>                                                                                                                                       |[0x80000408]:andi a1, a0, 4088<br> [0x8000040c]:sw a1, 144(sp)<br>  |
|  60|[0x800032fc]<br>0x00000000|- imm_val == 4<br>                                                                                                                                                 |[0x80000414]:andi a1, a0, 4<br> [0x80000418]:sw a1, 148(sp)<br>     |
|  61|[0x80003300]<br>0x00000000|- imm_val == 128<br>                                                                                                                                               |[0x80000420]:andi a1, a0, 128<br> [0x80000424]:sw a1, 152(sp)<br>   |
|  62|[0x80003304]<br>0xFDFFFEFF|- imm_val == -257<br>                                                                                                                                              |[0x80000430]:andi a1, a0, 3839<br> [0x80000434]:sw a1, 156(sp)<br>  |
|  63|[0x80003308]<br>0x00000001|- imm_val == -513<br>                                                                                                                                              |[0x8000043c]:andi a1, a0, 3583<br> [0x80000440]:sw a1, 160(sp)<br>  |
|  64|[0x8000330c]<br>0xFFFFDFF8|- rs1_val == -8193<br>                                                                                                                                             |[0x8000044c]:andi a1, a0, 4088<br> [0x80000450]:sw a1, 164(sp)<br>  |
|  65|[0x80003310]<br>0x00000005|- imm_val == 1365<br>                                                                                                                                              |[0x80000458]:andi a1, a0, 1365<br> [0x8000045c]:sw a1, 168(sp)<br>  |
|  66|[0x80003314]<br>0x00000400|- rs1_val == -257<br>                                                                                                                                              |[0x80000464]:andi a1, a0, 1024<br> [0x80000468]:sw a1, 172(sp)<br>  |
|  67|[0x80003318]<br>0x00000400|- rs1_val == -513<br>                                                                                                                                              |[0x80000470]:andi a1, a0, 1024<br> [0x80000474]:sw a1, 176(sp)<br>  |
|  68|[0x8000331c]<br>0xFFFFFBBF|- rs1_val == -1025<br>                                                                                                                                             |[0x8000047c]:andi a1, a0, 4031<br> [0x80000480]:sw a1, 180(sp)<br>  |
|  69|[0x80003320]<br>0xFFFFF3FF|- rs1_val == -2049<br>                                                                                                                                             |[0x8000048c]:andi a1, a0, 3071<br> [0x80000490]:sw a1, 184(sp)<br>  |
|  70|[0x80003324]<br>0x00000555|- rs1_val == -4097<br>                                                                                                                                             |[0x8000049c]:andi a1, a0, 1365<br> [0x800004a0]:sw a1, 188(sp)<br>  |
|  71|[0x80003328]<br>0xFFFFFFDE|- imm_val == -2<br>                                                                                                                                                |[0x800004a8]:andi a1, a0, 4094<br> [0x800004ac]:sw a1, 192(sp)<br>  |
|  72|[0x8000332c]<br>0xFFFFBFFA|- rs1_val == -16385<br>                                                                                                                                            |[0x800004b8]:andi a1, a0, 4090<br> [0x800004bc]:sw a1, 196(sp)<br>  |
|  73|[0x80003330]<br>0xFFFF7FEF|- rs1_val == -32769<br>                                                                                                                                            |[0x800004c8]:andi a1, a0, 4079<br> [0x800004cc]:sw a1, 200(sp)<br>  |
|  74|[0x80003334]<br>0xFFFEFFF8|- rs1_val == -65537<br>                                                                                                                                            |[0x800004d8]:andi a1, a0, 4088<br> [0x800004dc]:sw a1, 204(sp)<br>  |
|  75|[0x80003338]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                           |[0x800004e8]:andi a1, a0, 4095<br> [0x800004ec]:sw a1, 208(sp)<br>  |
|  76|[0x8000333c]<br>0x000003FF|- rs1_val == -262145<br>                                                                                                                                           |[0x800004f8]:andi a1, a0, 1023<br> [0x800004fc]:sw a1, 212(sp)<br>  |
|  77|[0x80003340]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                            |[0x80000504]:andi a1, a0, 512<br> [0x80000508]:sw a1, 216(sp)<br>   |
