
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000520')]      |
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | sltiu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sltiu-01.S/sltiu-01.S    |
| Total Number of coverpoints| 165     |
| Total Coverpoints Hit     | 165      |
| Total Signature Updates   | 78      |
| STAT1                     | 77      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000510]:sltiu a1, a0, 4079
      [0x80000514]:sw a1, 216(ra)
 -- Signature Address: 0x80003338 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : sltiu
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val and rs1_val > 0 and imm_val > 0
      - imm_val == 4079
      - rs1_val == 1024






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

|s.no|        signature         |                                                        coverpoints                                                         |                                 code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : sltiu<br> - rs1 : x4<br> - rd : x12<br> - rs1 != rd<br> - rs1_val == imm_val and rs1_val > 0 and imm_val > 0<br> |[0x80000104]:sltiu a2, tp, 10<br> [0x80000108]:sw a2, 0(t0)<br>        |
|   2|[0x80003208]<br>0x00000001|- rs1 : x13<br> - rd : x13<br> - rs1 == rd<br> - rs1_val != imm_val and rs1_val > 0 and imm_val > 0<br>                     |[0x80000110]:sltiu a3, a3, 17<br> [0x80000114]:sw a3, 4(t0)<br>        |
|   3|[0x8000320c]<br>0x00000001|- rs1 : x18<br> - rd : x2<br> - rs1_val == 0<br> - imm_val == 32<br>                                                        |[0x8000011c]:sltiu sp, s2, 32<br> [0x80000120]:sw sp, 8(t0)<br>        |
|   4|[0x80003210]<br>0x00000000|- rs1 : x9<br> - rd : x21<br> - rs1_val == (2**(xlen)-1)<br>                                                                |[0x80000128]:sltiu s5, s1, 7<br> [0x8000012c]:sw s5, 12(t0)<br>        |
|   5|[0x80003214]<br>0x00000001|- rs1 : x8<br> - rd : x31<br> - rs1_val == 1<br> - imm_val == 2<br>                                                         |[0x80000134]:sltiu t6, fp, 2<br> [0x80000138]:sw t6, 16(t0)<br>        |
|   6|[0x80003218]<br>0x00000000|- rs1 : x23<br> - rd : x10<br> - imm_val == 0<br> - rs1_val == 4294836223<br>                                               |[0x80000144]:sltiu a0, s7, 0<br> [0x80000148]:sw a0, 20(t0)<br>        |
|   7|[0x8000321c]<br>0x00000001|- rs1 : x12<br> - rd : x27<br> - imm_val == (2**(12)-1)<br> - rs1_val == 4<br>                                              |[0x80000150]:sltiu s11, a2, 4095<br> [0x80000154]:sw s11, 24(t0)<br>   |
|   8|[0x80003220]<br>0x00000000|- rs1 : x25<br> - rd : x16<br> - imm_val == 1<br> - rs1_val == 2048<br>                                                     |[0x80000160]:sltiu a6, s9, 1<br> [0x80000164]:sw a6, 28(t0)<br>        |
|   9|[0x80003224]<br>0x00000001|- rs1 : x6<br> - rd : x24<br> - rs1_val == 2<br>                                                                            |[0x8000016c]:sltiu s8, t1, 9<br> [0x80000170]:sw s8, 32(t0)<br>        |
|  10|[0x80003228]<br>0x00000000|- rs1 : x29<br> - rd : x1<br> - rs1_val == 8<br>                                                                            |[0x80000178]:sltiu ra, t4, 2<br> [0x8000017c]:sw ra, 36(t0)<br>        |
|  11|[0x8000322c]<br>0x00000001|- rs1 : x21<br> - rd : x25<br> - imm_val == 64<br> - rs1_val == 16<br>                                                      |[0x80000184]:sltiu s9, s5, 64<br> [0x80000188]:sw s9, 40(t0)<br>       |
|  12|[0x80003230]<br>0x00000000|- rs1 : x14<br> - rd : x18<br> - rs1_val == 32<br>                                                                          |[0x80000190]:sltiu s2, a4, 32<br> [0x80000194]:sw s2, 44(t0)<br>       |
|  13|[0x80003234]<br>0x00000001|- rs1 : x3<br> - rd : x20<br> - imm_val == 2048<br> - rs1_val == 64<br>                                                     |[0x8000019c]:sltiu s4, gp, 2048<br> [0x800001a0]:sw s4, 48(t0)<br>     |
|  14|[0x80003238]<br>0x00000001|- rs1 : x0<br> - rd : x9<br> - imm_val == 3583<br>                                                                          |[0x800001a8]:sltiu s1, zero, 3583<br> [0x800001ac]:sw s1, 52(t0)<br>   |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x27<br> - rd : x22<br> - rs1_val == 256<br>                                                                         |[0x800001b4]:sltiu s6, s11, 11<br> [0x800001b8]:sw s6, 56(t0)<br>      |
|  16|[0x80003240]<br>0x00000000|- rs1 : x7<br> - rd : x29<br> - rs1_val == 512<br>                                                                          |[0x800001c0]:sltiu t4, t2, 1<br> [0x800001c4]:sw t4, 60(t0)<br>        |
|  17|[0x80003244]<br>0x00000000|- rs1 : x22<br> - rd : x0<br> - imm_val == 4079<br> - rs1_val == 1024<br>                                                   |[0x800001cc]:sltiu zero, s6, 4079<br> [0x800001d0]:sw zero, 64(t0)<br> |
|  18|[0x80003248]<br>0x00000000|- rs1 : x17<br> - rd : x30<br> - imm_val == 256<br> - rs1_val == 4096<br>                                                   |[0x800001d8]:sltiu t5, a7, 256<br> [0x800001dc]:sw t5, 68(t0)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x30<br> - rd : x7<br> - rs1_val == 8192<br>                                                                         |[0x800001e4]:sltiu t2, t5, 14<br> [0x800001e8]:sw t2, 72(t0)<br>       |
|  20|[0x80003250]<br>0x00000001|- rs1 : x1<br> - rd : x14<br> - rs1_val == 16384<br>                                                                        |[0x800001f0]:sltiu a4, ra, 4095<br> [0x800001f4]:sw a4, 76(t0)<br>     |
|  21|[0x80003254]<br>0x00000001|- rs1 : x11<br> - rd : x8<br> - imm_val == 3967<br> - rs1_val == 32768<br>                                                  |[0x800001fc]:sltiu fp, a1, 3967<br> [0x80000200]:sw fp, 80(t0)<br>     |
|  22|[0x80003258]<br>0x00000001|- rs1 : x31<br> - rd : x26<br> - imm_val == 4094<br> - rs1_val == 65536<br>                                                 |[0x80000208]:sltiu s10, t6, 4094<br> [0x8000020c]:sw s10, 84(t0)<br>   |
|  23|[0x8000325c]<br>0x00000001|- rs1 : x15<br> - rd : x28<br> - imm_val == 4031<br> - rs1_val == 131072<br>                                                |[0x80000214]:sltiu t3, a5, 4031<br> [0x80000218]:sw t3, 88(t0)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1 : x16<br> - rd : x4<br> - rs1_val == 262144<br>                                                                       |[0x80000228]:sltiu tp, a6, 32<br> [0x8000022c]:sw tp, 0(ra)<br>        |
|  25|[0x80003264]<br>0x00000001|- rs1 : x26<br> - rd : x11<br> - imm_val == 4091<br> - rs1_val == 524288<br>                                                |[0x80000234]:sltiu a1, s10, 4091<br> [0x80000238]:sw a1, 4(ra)<br>     |
|  26|[0x80003268]<br>0x00000000|- rs1 : x10<br> - rd : x5<br> - imm_val == 1024<br> - rs1_val == 1048576<br>                                                |[0x80000240]:sltiu t0, a0, 1024<br> [0x80000244]:sw t0, 8(ra)<br>      |
|  27|[0x8000326c]<br>0x00000001|- rs1 : x20<br> - rd : x6<br> - rs1_val == 2097152<br>                                                                      |[0x8000024c]:sltiu t1, s4, 4079<br> [0x80000250]:sw t1, 12(ra)<br>     |
|  28|[0x80003270]<br>0x00000001|- rs1 : x19<br> - rd : x15<br> - imm_val == 4093<br> - rs1_val == 4194304<br>                                               |[0x80000258]:sltiu a5, s3, 4093<br> [0x8000025c]:sw a5, 16(ra)<br>     |
|  29|[0x80003274]<br>0x00000001|- rs1 : x24<br> - rd : x23<br> - imm_val == 2730<br> - rs1_val == 8388608<br>                                               |[0x80000264]:sltiu s7, s8, 2730<br> [0x80000268]:sw s7, 20(ra)<br>     |
|  30|[0x80003278]<br>0x00000000|- rs1 : x28<br> - rd : x3<br> - rs1_val == 16777216<br>                                                                     |[0x80000270]:sltiu gp, t3, 12<br> [0x80000274]:sw gp, 24(ra)<br>       |
|  31|[0x8000327c]<br>0x00000001|- rs1 : x5<br> - rd : x17<br> - rs1_val == 33554432<br>                                                                     |[0x8000027c]:sltiu a7, t0, 4091<br> [0x80000280]:sw a7, 28(ra)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x2<br> - rd : x19<br> - rs1_val == 67108864<br>                                                                     |[0x80000288]:sltiu s3, sp, 13<br> [0x8000028c]:sw s3, 32(ra)<br>       |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                  |[0x80000294]:sltiu a1, a0, 11<br> [0x80000298]:sw a1, 36(ra)<br>       |
|  34|[0x80003288]<br>0x00000001|- rs1_val == 268435456<br>                                                                                                  |[0x800002a0]:sltiu a1, a0, 2730<br> [0x800002a4]:sw a1, 40(ra)<br>     |
|  35|[0x8000328c]<br>0x00000001|- rs1_val == 536870912<br>                                                                                                  |[0x800002ac]:sltiu a1, a0, 3583<br> [0x800002b0]:sw a1, 44(ra)<br>     |
|  36|[0x80003290]<br>0x00000001|- rs1_val == 1073741824<br>                                                                                                 |[0x800002b8]:sltiu a1, a0, 4091<br> [0x800002bc]:sw a1, 48(ra)<br>     |
|  37|[0x80003294]<br>0x00000001|- imm_val == 3839<br> - rs1_val == 2147483648<br>                                                                           |[0x800002c4]:sltiu a1, a0, 3839<br> [0x800002c8]:sw a1, 52(ra)<br>     |
|  38|[0x80003298]<br>0x00000000|- imm_val == 128<br> - rs1_val == 4294967294<br>                                                                            |[0x800002d0]:sltiu a1, a0, 128<br> [0x800002d4]:sw a1, 56(ra)<br>      |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 4294967293<br>                                                                                                 |[0x800002dc]:sltiu a1, a0, 17<br> [0x800002e0]:sw a1, 60(ra)<br>       |
|  40|[0x800032a0]<br>0x00000001|- rs1_val == 4294967291<br>                                                                                                 |[0x800002e8]:sltiu a1, a0, 4093<br> [0x800002ec]:sw a1, 64(ra)<br>     |
|  41|[0x800032a4]<br>0x00000001|- rs1_val == 4294967287<br>                                                                                                 |[0x800002f4]:sltiu a1, a0, 4091<br> [0x800002f8]:sw a1, 68(ra)<br>     |
|  42|[0x800032a8]<br>0x00000000|- imm_val == 3071<br> - rs1_val == 4294967279<br>                                                                           |[0x80000300]:sltiu a1, a0, 3071<br> [0x80000304]:sw a1, 72(ra)<br>     |
|  43|[0x800032ac]<br>0x00000000|- rs1_val == 4294967263<br>                                                                                                 |[0x8000030c]:sltiu a1, a0, 9<br> [0x80000310]:sw a1, 76(ra)<br>        |
|  44|[0x800032b0]<br>0x00000000|- rs1_val == 4294967231<br>                                                                                                 |[0x80000318]:sltiu a1, a0, 12<br> [0x8000031c]:sw a1, 80(ra)<br>       |
|  45|[0x800032b4]<br>0x00000000|- rs1_val == 4294967167<br>                                                                                                 |[0x80000324]:sltiu a1, a0, 1<br> [0x80000328]:sw a1, 84(ra)<br>        |
|  46|[0x800032b8]<br>0x00000001|- rs1_val == 4294967039<br>                                                                                                 |[0x80000330]:sltiu a1, a0, 4031<br> [0x80000334]:sw a1, 88(ra)<br>     |
|  47|[0x800032bc]<br>0x00000000|- imm_val == 8<br> - rs1_val == 4294966783<br>                                                                              |[0x8000033c]:sltiu a1, a0, 8<br> [0x80000340]:sw a1, 92(ra)<br>        |
|  48|[0x800032c0]<br>0x00000000|- rs1_val == 4261412863<br>                                                                                                 |[0x8000034c]:sltiu a1, a0, 3<br> [0x80000350]:sw a1, 96(ra)<br>        |
|  49|[0x800032c4]<br>0x00000001|- rs1_val == 4227858431<br>                                                                                                 |[0x8000035c]:sltiu a1, a0, 2730<br> [0x80000360]:sw a1, 100(ra)<br>    |
|  50|[0x800032c8]<br>0x00000000|- rs1_val == 4160749567<br>                                                                                                 |[0x8000036c]:sltiu a1, a0, 15<br> [0x80000370]:sw a1, 104(ra)<br>      |
|  51|[0x800032cc]<br>0x00000001|- rs1_val == 4026531839<br>                                                                                                 |[0x8000037c]:sltiu a1, a0, 3583<br> [0x80000380]:sw a1, 108(ra)<br>    |
|  52|[0x800032d0]<br>0x00000000|- rs1_val == 3758096383<br>                                                                                                 |[0x8000038c]:sltiu a1, a0, 64<br> [0x80000390]:sw a1, 112(ra)<br>      |
|  53|[0x800032d4]<br>0x00000000|- rs1_val == 3221225471<br>                                                                                                 |[0x8000039c]:sltiu a1, a0, 2<br> [0x800003a0]:sw a1, 116(ra)<br>       |
|  54|[0x800032d8]<br>0x00000000|- rs1_val == 2147483647<br>                                                                                                 |[0x800003ac]:sltiu a1, a0, 15<br> [0x800003b0]:sw a1, 120(ra)<br>      |
|  55|[0x800032dc]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                 |[0x800003bc]:sltiu a1, a0, 14<br> [0x800003c0]:sw a1, 124(ra)<br>      |
|  56|[0x800032e0]<br>0x00000000|- rs1_val == 2863311530<br>                                                                                                 |[0x800003cc]:sltiu a1, a0, 10<br> [0x800003d0]:sw a1, 128(ra)<br>      |
|  57|[0x800032e4]<br>0x00000000|- imm_val == 4<br>                                                                                                          |[0x800003dc]:sltiu a1, a0, 4<br> [0x800003e0]:sw a1, 132(ra)<br>       |
|  58|[0x800032e8]<br>0x00000000|- imm_val == 16<br> - rs1_val == 4292870143<br>                                                                             |[0x800003ec]:sltiu a1, a0, 16<br> [0x800003f0]:sw a1, 136(ra)<br>      |
|  59|[0x800032ec]<br>0x00000000|- imm_val == 512<br>                                                                                                        |[0x800003f8]:sltiu a1, a0, 512<br> [0x800003fc]:sw a1, 140(ra)<br>     |
|  60|[0x800032f0]<br>0x00000001|- imm_val == 4087<br>                                                                                                       |[0x80000404]:sltiu a1, a0, 4087<br> [0x80000408]:sw a1, 144(ra)<br>    |
|  61|[0x800032f4]<br>0x00000001|- imm_val == 4063<br>                                                                                                       |[0x80000414]:sltiu a1, a0, 4063<br> [0x80000418]:sw a1, 148(ra)<br>    |
|  62|[0x800032f8]<br>0x00000000|- imm_val == 1365<br>                                                                                                       |[0x80000420]:sltiu a1, a0, 1365<br> [0x80000424]:sw a1, 152(ra)<br>    |
|  63|[0x800032fc]<br>0x00000001|- rs1_val == 4294966271<br>                                                                                                 |[0x8000042c]:sltiu a1, a0, 4031<br> [0x80000430]:sw a1, 156(ra)<br>    |
|  64|[0x80003300]<br>0x00000001|- rs1_val == 4294965247<br>                                                                                                 |[0x8000043c]:sltiu a1, a0, 4091<br> [0x80000440]:sw a1, 160(ra)<br>    |
|  65|[0x80003304]<br>0x00000000|- rs1_val == 4294963199<br>                                                                                                 |[0x8000044c]:sltiu a1, a0, 64<br> [0x80000450]:sw a1, 164(ra)<br>      |
|  66|[0x80003308]<br>0x00000000|- rs1_val == 4278190079<br>                                                                                                 |[0x8000045c]:sltiu a1, a0, 17<br> [0x80000460]:sw a1, 168(ra)<br>      |
|  67|[0x8000330c]<br>0x00000001|- rs1_val == 4294959103<br>                                                                                                 |[0x8000046c]:sltiu a1, a0, 2730<br> [0x80000470]:sw a1, 172(ra)<br>    |
|  68|[0x80003310]<br>0x00000000|- rs1_val == 4294950911<br>                                                                                                 |[0x8000047c]:sltiu a1, a0, 18<br> [0x80000480]:sw a1, 176(ra)<br>      |
|  69|[0x80003314]<br>0x00000000|- rs1_val == 4294934527<br>                                                                                                 |[0x8000048c]:sltiu a1, a0, 8<br> [0x80000490]:sw a1, 180(ra)<br>       |
|  70|[0x80003318]<br>0x00000000|- rs1_val == 4294901759<br>                                                                                                 |[0x8000049c]:sltiu a1, a0, 12<br> [0x800004a0]:sw a1, 184(ra)<br>      |
|  71|[0x8000331c]<br>0x00000000|- rs1_val == 4294705151<br>                                                                                                 |[0x800004ac]:sltiu a1, a0, 12<br> [0x800004b0]:sw a1, 188(ra)<br>      |
|  72|[0x80003320]<br>0x00000000|- rs1_val == 4294443007<br>                                                                                                 |[0x800004bc]:sltiu a1, a0, 18<br> [0x800004c0]:sw a1, 192(ra)<br>      |
|  73|[0x80003324]<br>0x00000000|- rs1_val == 4293918719<br>                                                                                                 |[0x800004cc]:sltiu a1, a0, 19<br> [0x800004d0]:sw a1, 196(ra)<br>      |
|  74|[0x80003328]<br>0x00000001|- rs1_val == 4290772991<br>                                                                                                 |[0x800004dc]:sltiu a1, a0, 4094<br> [0x800004e0]:sw a1, 200(ra)<br>    |
|  75|[0x8000332c]<br>0x00000000|- rs1_val == 4286578687<br>                                                                                                 |[0x800004ec]:sltiu a1, a0, 2<br> [0x800004f0]:sw a1, 204(ra)<br>       |
|  76|[0x80003330]<br>0x00000000|- imm_val == 2047<br>                                                                                                       |[0x800004f8]:sltiu a1, a0, 2047<br> [0x800004fc]:sw a1, 208(ra)<br>    |
|  77|[0x80003334]<br>0x00000001|- rs1_val == 128<br>                                                                                                        |[0x80000504]:sltiu a1, a0, 3583<br> [0x80000508]:sw a1, 212(ra)<br>    |
