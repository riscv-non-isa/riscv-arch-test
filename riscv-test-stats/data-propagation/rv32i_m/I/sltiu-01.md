
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
| COV_LABELS                | sltiu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sltiu-01.S/sltiu-01.S    |
| Total Number of coverpoints| 165     |
| Total Coverpoints Hit     | 165      |
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

|s.no|        signature         |                                                                              coverpoints                                                                              |                                 code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : sltiu<br> - rs1 : x5<br> - rd : x4<br> - rs1 != rd<br> - rs1_val == imm_val and rs1_val > 0 and imm_val > 0<br> - imm_val == 1024<br> - rs1_val == 1024<br> |[0x80000104]:sltiu tp, t0, 1024<br> [0x80000108]:sw tp, 0(t2)<br>      |
|   2|[0x80003214]<br>0x00000001|- rs1 : x28<br> - rd : x28<br> - rs1 == rd<br> - rs1_val != imm_val and rs1_val > 0 and imm_val > 0<br> - imm_val == 4063<br> - rs1_val == 4160749567<br>              |[0x80000114]:sltiu t3, t3, 4063<br> [0x80000118]:sw t3, 4(t2)<br>      |
|   3|[0x80003218]<br>0x00000001|- rs1 : x6<br> - rd : x1<br> - rs1_val == 0<br>                                                                                                                        |[0x80000120]:sltiu ra, t1, 15<br> [0x80000124]:sw ra, 8(t2)<br>        |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x14<br> - rd : x22<br> - rs1_val == (2**(xlen)-1)<br> - imm_val == 256<br>                                                                                     |[0x8000012c]:sltiu s6, a4, 256<br> [0x80000130]:sw s6, 12(t2)<br>      |
|   5|[0x80003220]<br>0x00000000|- rs1 : x26<br> - rd : x29<br> - imm_val == 0<br> - rs1_val == 1<br>                                                                                                   |[0x80000138]:sltiu t4, s10, 0<br> [0x8000013c]:sw t4, 16(t2)<br>       |
|   6|[0x80003224]<br>0x00000001|- rs1 : x22<br> - rd : x8<br> - imm_val == (2**(12)-1)<br> - rs1_val == 8<br>                                                                                          |[0x80000144]:sltiu fp, s6, 4095<br> [0x80000148]:sw fp, 20(t2)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x15<br> - rd : x17<br> - imm_val == 1<br>                                                                                                                      |[0x80000150]:sltiu a7, a5, 1<br> [0x80000154]:sw a7, 24(t2)<br>        |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x20<br> - rd : x10<br> - rs1_val == 2<br>                                                                                                                      |[0x8000015c]:sltiu a0, s4, 17<br> [0x80000160]:sw a0, 28(t2)<br>       |
|   9|[0x80003230]<br>0x00000001|- rs1 : x12<br> - rd : x11<br> - rs1_val == 4<br>                                                                                                                      |[0x80000168]:sltiu a1, a2, 11<br> [0x8000016c]:sw a1, 32(t2)<br>       |
|  10|[0x80003234]<br>0x00000000|- rs1 : x10<br> - rd : x0<br> - imm_val == 3583<br> - rs1_val == 16<br>                                                                                                |[0x80000174]:sltiu zero, a0, 3583<br> [0x80000178]:sw zero, 36(t2)<br> |
|  11|[0x80003238]<br>0x00000001|- rs1 : x3<br> - rd : x20<br> - rs1_val == 32<br>                                                                                                                      |[0x80000180]:sltiu s4, gp, 3583<br> [0x80000184]:sw s4, 40(t2)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x27<br> - rd : x5<br> - imm_val == 32<br> - rs1_val == 64<br>                                                                                                  |[0x8000018c]:sltiu t0, s11, 32<br> [0x80000190]:sw t0, 44(t2)<br>      |
|  13|[0x80003240]<br>0x00000001|- rs1 : x2<br> - rd : x14<br> - imm_val == 4031<br> - rs1_val == 128<br>                                                                                               |[0x80000198]:sltiu a4, sp, 4031<br> [0x8000019c]:sw a4, 48(t2)<br>     |
|  14|[0x80003244]<br>0x00000001|- rs1 : x8<br> - rd : x6<br> - imm_val == 4094<br> - rs1_val == 256<br>                                                                                                |[0x800001a4]:sltiu t1, fp, 4094<br> [0x800001a8]:sw t1, 52(t2)<br>     |
|  15|[0x80003248]<br>0x00000001|- rs1 : x25<br> - rd : x26<br> - rs1_val == 512<br>                                                                                                                    |[0x800001b0]:sltiu s10, s9, 3583<br> [0x800001b4]:sw s10, 56(t2)<br>   |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x23<br> - rd : x27<br> - rs1_val == 2048<br>                                                                                                                   |[0x800001c0]:sltiu s11, s7, 1024<br> [0x800001c4]:sw s11, 60(t2)<br>   |
|  17|[0x80003250]<br>0x00000001|- rs1 : x0<br> - rd : x21<br>                                                                                                                                          |[0x800001d0]:sltiu s5, zero, 3583<br> [0x800001d4]:sw s5, 64(t2)<br>   |
|  18|[0x80003254]<br>0x00000000|- rs1 : x13<br> - rd : x18<br> - imm_val == 2<br> - rs1_val == 8192<br>                                                                                                |[0x800001dc]:sltiu s2, a3, 2<br> [0x800001e0]:sw s2, 68(t2)<br>        |
|  19|[0x80003258]<br>0x00000001|- rs1 : x31<br> - rd : x16<br> - rs1_val == 16384<br>                                                                                                                  |[0x800001e8]:sltiu a6, t6, 4031<br> [0x800001ec]:sw a6, 72(t2)<br>     |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x9<br> - rd : x30<br> - rs1_val == 32768<br>                                                                                                                   |[0x800001f4]:sltiu t5, s1, 32<br> [0x800001f8]:sw t5, 76(t2)<br>       |
|  21|[0x80003260]<br>0x00000000|- rs1 : x1<br> - rd : x19<br> - rs1_val == 65536<br>                                                                                                                   |[0x80000208]:sltiu s3, ra, 2<br> [0x8000020c]:sw s3, 0(t0)<br>         |
|  22|[0x80003264]<br>0x00000000|- rs1 : x18<br> - rd : x15<br> - rs1_val == 131072<br>                                                                                                                 |[0x80000214]:sltiu a5, s2, 1<br> [0x80000218]:sw a5, 4(t0)<br>         |
|  23|[0x80003268]<br>0x00000000|- rs1 : x16<br> - rd : x31<br> - imm_val == 8<br> - rs1_val == 262144<br>                                                                                              |[0x80000220]:sltiu t6, a6, 8<br> [0x80000224]:sw t6, 8(t0)<br>         |
|  24|[0x8000326c]<br>0x00000001|- rs1 : x21<br> - rd : x7<br> - rs1_val == 524288<br>                                                                                                                  |[0x8000022c]:sltiu t2, s5, 4095<br> [0x80000230]:sw t2, 12(t0)<br>     |
|  25|[0x80003270]<br>0x00000000|- rs1 : x19<br> - rd : x13<br> - rs1_val == 1048576<br>                                                                                                                |[0x80000238]:sltiu a3, s3, 1024<br> [0x8000023c]:sw a3, 16(t0)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x17<br> - rd : x24<br> - rs1_val == 2097152<br>                                                                                                                |[0x80000244]:sltiu s8, a7, 18<br> [0x80000248]:sw s8, 20(t0)<br>       |
|  27|[0x80003278]<br>0x00000000|- rs1 : x11<br> - rd : x23<br> - rs1_val == 4194304<br>                                                                                                                |[0x80000250]:sltiu s7, a1, 6<br> [0x80000254]:sw s7, 24(t0)<br>        |
|  28|[0x8000327c]<br>0x00000001|- rs1 : x30<br> - rd : x25<br> - imm_val == 3071<br> - rs1_val == 8388608<br>                                                                                          |[0x8000025c]:sltiu s9, t5, 3071<br> [0x80000260]:sw s9, 28(t0)<br>     |
|  29|[0x80003280]<br>0x00000001|- rs1 : x24<br> - rd : x9<br> - rs1_val == 16777216<br>                                                                                                                |[0x80000268]:sltiu s1, s8, 3583<br> [0x8000026c]:sw s1, 32(t0)<br>     |
|  30|[0x80003284]<br>0x00000001|- rs1 : x29<br> - rd : x2<br> - imm_val == 2048<br> - rs1_val == 33554432<br>                                                                                          |[0x80000274]:sltiu sp, t4, 2048<br> [0x80000278]:sw sp, 36(t0)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x7<br> - rd : x12<br> - rs1_val == 67108864<br>                                                                                                                |[0x80000280]:sltiu a2, t2, 13<br> [0x80000284]:sw a2, 40(t0)<br>       |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x4<br> - rd : x3<br> - imm_val == 2047<br> - rs1_val == 134217728<br>                                                                                          |[0x8000028c]:sltiu gp, tp, 2047<br> [0x80000290]:sw gp, 44(t0)<br>     |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                             |[0x80000298]:sltiu a1, a0, 18<br> [0x8000029c]:sw a1, 48(t0)<br>       |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                             |[0x800002a4]:sltiu a1, a0, 2<br> [0x800002a8]:sw a1, 52(t0)<br>        |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                            |[0x800002b0]:sltiu a1, a0, 14<br> [0x800002b4]:sw a1, 56(t0)<br>       |
|  36|[0x8000329c]<br>0x00000000|- rs1_val == 2147483648<br>                                                                                                                                            |[0x800002bc]:sltiu a1, a0, 3<br> [0x800002c0]:sw a1, 60(t0)<br>        |
|  37|[0x800032a0]<br>0x00000000|- imm_val == 2730<br> - rs1_val == 4294967294<br>                                                                                                                      |[0x800002c8]:sltiu a1, a0, 2730<br> [0x800002cc]:sw a1, 64(t0)<br>     |
|  38|[0x800032a4]<br>0x00000000|- imm_val == 4093<br> - rs1_val == 4294967293<br>                                                                                                                      |[0x800002d4]:sltiu a1, a0, 4093<br> [0x800002d8]:sw a1, 68(t0)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == 4294967291<br>                                                                                                                                            |[0x800002e0]:sltiu a1, a0, 2<br> [0x800002e4]:sw a1, 72(t0)<br>        |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == 4294967287<br>                                                                                                                                            |[0x800002ec]:sltiu a1, a0, 4031<br> [0x800002f0]:sw a1, 76(t0)<br>     |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == 4294967279<br>                                                                                                                                            |[0x800002f8]:sltiu a1, a0, 13<br> [0x800002fc]:sw a1, 80(t0)<br>       |
|  42|[0x800032b4]<br>0x00000001|- imm_val == 4087<br> - rs1_val == 4294967263<br>                                                                                                                      |[0x80000304]:sltiu a1, a0, 4087<br> [0x80000308]:sw a1, 84(t0)<br>     |
|  43|[0x800032b8]<br>0x00000000|- rs1_val == 4294967231<br>                                                                                                                                            |[0x80000310]:sltiu a1, a0, 10<br> [0x80000314]:sw a1, 88(t0)<br>       |
|  44|[0x800032bc]<br>0x00000000|- rs1_val == 4294967167<br>                                                                                                                                            |[0x8000031c]:sltiu a1, a0, 2048<br> [0x80000320]:sw a1, 92(t0)<br>     |
|  45|[0x800032c0]<br>0x00000000|- rs1_val == 4294967039<br>                                                                                                                                            |[0x80000328]:sltiu a1, a0, 17<br> [0x8000032c]:sw a1, 96(t0)<br>       |
|  46|[0x800032c4]<br>0x00000001|- rs1_val == 4294966783<br>                                                                                                                                            |[0x80000334]:sltiu a1, a0, 4063<br> [0x80000338]:sw a1, 100(t0)<br>    |
|  47|[0x800032c8]<br>0x00000000|- rs1_val == 4294966271<br>                                                                                                                                            |[0x80000340]:sltiu a1, a0, 17<br> [0x80000344]:sw a1, 104(t0)<br>      |
|  48|[0x800032cc]<br>0x00000001|- rs1_val == 4294965247<br>                                                                                                                                            |[0x80000350]:sltiu a1, a0, 4087<br> [0x80000354]:sw a1, 108(t0)<br>    |
|  49|[0x800032d0]<br>0x00000000|- rs1_val == 4261412863<br>                                                                                                                                            |[0x80000360]:sltiu a1, a0, 7<br> [0x80000364]:sw a1, 112(t0)<br>       |
|  50|[0x800032d4]<br>0x00000001|- rs1_val == 4227858431<br>                                                                                                                                            |[0x80000370]:sltiu a1, a0, 2730<br> [0x80000374]:sw a1, 116(t0)<br>    |
|  51|[0x800032d8]<br>0x00000000|- rs1_val == 4026531839<br>                                                                                                                                            |[0x80000380]:sltiu a1, a0, 7<br> [0x80000384]:sw a1, 120(t0)<br>       |
|  52|[0x800032dc]<br>0x00000000|- imm_val == 64<br> - rs1_val == 3758096383<br>                                                                                                                        |[0x80000390]:sltiu a1, a0, 64<br> [0x80000394]:sw a1, 124(t0)<br>      |
|  53|[0x800032e0]<br>0x00000000|- rs1_val == 3221225471<br>                                                                                                                                            |[0x800003a0]:sltiu a1, a0, 8<br> [0x800003a4]:sw a1, 128(t0)<br>       |
|  54|[0x800032e4]<br>0x00000000|- rs1_val == 2147483647<br>                                                                                                                                            |[0x800003b0]:sltiu a1, a0, 1024<br> [0x800003b4]:sw a1, 132(t0)<br>    |
|  55|[0x800032e8]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                            |[0x800003c0]:sltiu a1, a0, 3071<br> [0x800003c4]:sw a1, 136(t0)<br>    |
|  56|[0x800032ec]<br>0x00000001|- imm_val == 3967<br> - rs1_val == 2863311530<br>                                                                                                                      |[0x800003d0]:sltiu a1, a0, 3967<br> [0x800003d4]:sw a1, 140(t0)<br>    |
|  57|[0x800032f0]<br>0x00000000|- imm_val == 4<br>                                                                                                                                                     |[0x800003dc]:sltiu a1, a0, 4<br> [0x800003e0]:sw a1, 144(t0)<br>       |
|  58|[0x800032f4]<br>0x00000000|- imm_val == 16<br>                                                                                                                                                    |[0x800003ec]:sltiu a1, a0, 16<br> [0x800003f0]:sw a1, 148(t0)<br>      |
|  59|[0x800032f8]<br>0x00000001|- imm_val == 128<br>                                                                                                                                                   |[0x800003f8]:sltiu a1, a0, 128<br> [0x800003fc]:sw a1, 152(t0)<br>     |
|  60|[0x800032fc]<br>0x00000000|- imm_val == 512<br>                                                                                                                                                   |[0x80000404]:sltiu a1, a0, 512<br> [0x80000408]:sw a1, 156(t0)<br>     |
|  61|[0x80003300]<br>0x00000001|- imm_val == 4091<br> - rs1_val == 4278190079<br>                                                                                                                      |[0x80000414]:sltiu a1, a0, 4091<br> [0x80000418]:sw a1, 160(t0)<br>    |
|  62|[0x80003304]<br>0x00000001|- imm_val == 4079<br>                                                                                                                                                  |[0x80000420]:sltiu a1, a0, 4079<br> [0x80000424]:sw a1, 164(t0)<br>    |
|  63|[0x80003308]<br>0x00000001|- imm_val == 1365<br>                                                                                                                                                  |[0x8000042c]:sltiu a1, a0, 1365<br> [0x80000430]:sw a1, 168(t0)<br>    |
|  64|[0x8000330c]<br>0x00000001|- imm_val == 3839<br>                                                                                                                                                  |[0x80000438]:sltiu a1, a0, 3839<br> [0x8000043c]:sw a1, 172(t0)<br>    |
|  65|[0x80003310]<br>0x00000000|- rs1_val == 4294963199<br>                                                                                                                                            |[0x80000448]:sltiu a1, a0, 9<br> [0x8000044c]:sw a1, 176(t0)<br>       |
|  66|[0x80003314]<br>0x00000000|- rs1_val == 4294959103<br>                                                                                                                                            |[0x80000458]:sltiu a1, a0, 12<br> [0x8000045c]:sw a1, 180(t0)<br>      |
|  67|[0x80003318]<br>0x00000000|- rs1_val == 4294950911<br>                                                                                                                                            |[0x80000468]:sltiu a1, a0, 17<br> [0x8000046c]:sw a1, 184(t0)<br>      |
|  68|[0x8000331c]<br>0x00000000|- rs1_val == 4294934527<br>                                                                                                                                            |[0x80000478]:sltiu a1, a0, 7<br> [0x8000047c]:sw a1, 188(t0)<br>       |
|  69|[0x80003320]<br>0x00000000|- rs1_val == 4294901759<br>                                                                                                                                            |[0x80000488]:sltiu a1, a0, 512<br> [0x8000048c]:sw a1, 192(t0)<br>     |
|  70|[0x80003324]<br>0x00000001|- rs1_val == 4294836223<br>                                                                                                                                            |[0x80000498]:sltiu a1, a0, 2048<br> [0x8000049c]:sw a1, 196(t0)<br>    |
|  71|[0x80003328]<br>0x00000000|- rs1_val == 4294705151<br>                                                                                                                                            |[0x800004a8]:sltiu a1, a0, 17<br> [0x800004ac]:sw a1, 200(t0)<br>      |
|  72|[0x8000332c]<br>0x00000000|- rs1_val == 4294443007<br>                                                                                                                                            |[0x800004b8]:sltiu a1, a0, 17<br> [0x800004bc]:sw a1, 204(t0)<br>      |
|  73|[0x80003330]<br>0x00000000|- rs1_val == 4293918719<br>                                                                                                                                            |[0x800004c8]:sltiu a1, a0, 1365<br> [0x800004cc]:sw a1, 208(t0)<br>    |
|  74|[0x80003334]<br>0x00000001|- rs1_val == 4292870143<br>                                                                                                                                            |[0x800004d8]:sltiu a1, a0, 2730<br> [0x800004dc]:sw a1, 212(t0)<br>    |
|  75|[0x80003338]<br>0x00000000|- rs1_val == 4290772991<br>                                                                                                                                            |[0x800004e8]:sltiu a1, a0, 128<br> [0x800004ec]:sw a1, 216(t0)<br>     |
|  76|[0x8000333c]<br>0x00000001|- rs1_val == 4286578687<br>                                                                                                                                            |[0x800004f8]:sltiu a1, a0, 3839<br> [0x800004fc]:sw a1, 220(t0)<br>    |
|  77|[0x80003340]<br>0x00000001|- rs1_val == 4096<br>                                                                                                                                                  |[0x80000504]:sltiu a1, a0, 3583<br> [0x80000508]:sw a1, 224(t0)<br>    |
