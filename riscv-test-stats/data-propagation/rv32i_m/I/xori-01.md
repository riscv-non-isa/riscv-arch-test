
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION                | [('0x80003204', '0x8000332c', '74 words')]      |
| COV_LABELS                | xori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 74      |
| STAT1                     | 73      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e0]:xori a1, a0, 4088
      [0x800004e4]:sw a1, 200(ra)
 -- Signature Address: 0x80003328 Data: 0xFFFDFFF8
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - rs1_val == 131072






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

|s.no|        signature         |                                                                                    coverpoints                                                                                    |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : xori<br> - rs1 : x2<br> - rd : x2<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -3<br> - rs1_val == -3<br>                |[0x80000104]:xori sp, sp, 4093<br> [0x80000108]:sw sp, 0(fp)<br>     |
|   2|[0x80003208]<br>0x000006FF|- rs1 : x14<br> - rd : x5<br> - rs1 != rd<br> - imm_val == (2**(12-1)-1)<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 2047<br> - rs1_val == 256<br> |[0x80000110]:xori t0, a4, 2047<br> [0x80000114]:sw t0, 4(fp)<br>     |
|   3|[0x8000320c]<br>0xFFFFFDFE|- rs1 : x26<br> - rd : x14<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br>                                                                          |[0x8000011c]:xori a4, s10, 3583<br> [0x80000120]:sw a4, 8(fp)<br>    |
|   4|[0x80003210]<br>0xFFFDFC00|- rs1 : x18<br> - rd : x12<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -131073<br>                                                                                          |[0x8000012c]:xori a2, s2, 1023<br> [0x80000130]:sw a2, 12(fp)<br>    |
|   5|[0x80003214]<br>0x80000008|- rs1 : x1<br> - rd : x10<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 8<br> - rs1_val == -2147483648<br>                                                                      |[0x80000138]:xori a0, ra, 8<br> [0x8000013c]:sw a0, 16(fp)<br>       |
|   6|[0x80003218]<br>0x00000020|- rs1 : x20<br> - rd : x23<br> - rs1_val == 0<br> - imm_val == 32<br>                                                                                                              |[0x80000144]:xori s7, s4, 32<br> [0x80000148]:sw s7, 20(fp)<br>      |
|   7|[0x8000321c]<br>0x800003FF|- rs1 : x13<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                        |[0x80000154]:xori s6, a3, 3072<br> [0x80000158]:sw s6, 24(fp)<br>    |
|   8|[0x80003220]<br>0x000007FB|- rs1 : x7<br> - rd : x1<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -5<br>                                                                              |[0x80000160]:xori ra, t2, 2048<br> [0x80000164]:sw ra, 28(fp)<br>    |
|   9|[0x80003224]<br>0x00000000|- rs1 : x0<br> - rd : x31<br> - imm_val == 0<br>                                                                                                                                   |[0x8000016c]:xori t6, zero, 0<br> [0x80000170]:sw t6, 32(fp)<br>     |
|  10|[0x80003228]<br>0x04000001|- rs1 : x22<br> - rd : x26<br> - imm_val == 1<br> - rs1_val == 67108864<br>                                                                                                        |[0x80000178]:xori s10, s6, 1<br> [0x8000017c]:sw s10, 36(fp)<br>     |
|  11|[0x8000322c]<br>0x00000003|- rs1 : x6<br> - rd : x24<br> - rs1_val == 2<br>                                                                                                                                   |[0x80000184]:xori s8, t1, 1<br> [0x80000188]:sw s8, 40(fp)<br>       |
|  12|[0x80003230]<br>0xFFFFFEFB|- rs1 : x30<br> - rd : x29<br> - imm_val == -257<br> - rs1_val == 4<br>                                                                                                            |[0x80000190]:xori t4, t5, 3839<br> [0x80000194]:sw t4, 44(fp)<br>    |
|  13|[0x80003234]<br>0xFFFFF808|- rs1 : x15<br> - rd : x20<br> - rs1_val == 8<br>                                                                                                                                  |[0x8000019c]:xori s4, a5, 2048<br> [0x800001a0]:sw s4, 48(fp)<br>    |
|  14|[0x80003238]<br>0xFFFFFFCF|- rs1 : x4<br> - rd : x28<br> - imm_val == -33<br> - rs1_val == 16<br>                                                                                                             |[0x800001a8]:xori t3, tp, 4063<br> [0x800001ac]:sw t3, 52(fp)<br>    |
|  15|[0x8000323c]<br>0xFFFFFFD7|- rs1 : x29<br> - rd : x6<br> - imm_val == -9<br> - rs1_val == 32<br>                                                                                                              |[0x800001b4]:xori t1, t4, 4087<br> [0x800001b8]:sw t1, 56(fp)<br>    |
|  16|[0x80003240]<br>0xFFFFFEBF|- rs1 : x25<br> - rd : x18<br> - rs1_val == 64<br>                                                                                                                                 |[0x800001c0]:xori s2, s9, 3839<br> [0x800001c4]:sw s2, 60(fp)<br>    |
|  17|[0x80003244]<br>0xFFFFFB7F|- rs1 : x9<br> - rd : x3<br> - imm_val == -1025<br> - rs1_val == 128<br>                                                                                                           |[0x800001cc]:xori gp, s1, 3071<br> [0x800001d0]:sw gp, 64(fp)<br>    |
|  18|[0x80003248]<br>0xFFFFFDFE|- rs1 : x27<br> - rd : x4<br> - imm_val == -2<br> - rs1_val == 512<br>                                                                                                             |[0x800001d8]:xori tp, s11, 4094<br> [0x800001dc]:sw tp, 68(fp)<br>   |
|  19|[0x8000324c]<br>0x00000420|- rs1 : x10<br> - rd : x7<br> - rs1_val == 1024<br>                                                                                                                                |[0x800001e4]:xori t2, a0, 32<br> [0x800001e8]:sw t2, 72(fp)<br>      |
|  20|[0x80003250]<br>0xFFFFF7F7|- rs1 : x3<br> - rd : x15<br> - rs1_val == 2048<br>                                                                                                                                |[0x800001f4]:xori a5, gp, 4087<br> [0x800001f8]:sw a5, 76(fp)<br>    |
|  21|[0x80003254]<br>0x00001000|- rs1 : x5<br> - rd : x19<br> - rs1_val == 4096<br>                                                                                                                                |[0x80000200]:xori s3, t0, 0<br> [0x80000204]:sw s3, 80(fp)<br>       |
|  22|[0x80003258]<br>0xFFFFDAAA|- rs1 : x31<br> - rd : x9<br> - imm_val == -1366<br> - rs1_val == 8192<br>                                                                                                         |[0x8000020c]:xori s1, t6, 2730<br> [0x80000210]:sw s1, 84(fp)<br>    |
|  23|[0x8000325c]<br>0xFFFFBFFD|- rs1 : x11<br> - rd : x17<br> - rs1_val == 16384<br>                                                                                                                              |[0x80000218]:xori a7, a1, 4093<br> [0x8000021c]:sw a7, 88(fp)<br>    |
|  24|[0x80003260]<br>0x00008080|- rs1 : x17<br> - rd : x8<br> - imm_val == 128<br> - rs1_val == 32768<br>                                                                                                          |[0x8000022c]:xori fp, a7, 128<br> [0x80000230]:sw fp, 0(ra)<br>      |
|  25|[0x80003264]<br>0x00010020|- rs1 : x8<br> - rd : x21<br> - rs1_val == 65536<br>                                                                                                                               |[0x80000238]:xori s5, fp, 32<br> [0x8000023c]:sw s5, 4(ra)<br>       |
|  26|[0x80003268]<br>0x00000000|- rs1 : x28<br> - rd : x0<br> - rs1_val == 131072<br>                                                                                                                              |[0x80000244]:xori zero, t3, 4088<br> [0x80000248]:sw zero, 8(ra)<br> |
|  27|[0x8000326c]<br>0xFFFBFFFC|- rs1 : x23<br> - rd : x25<br> - rs1_val == 262144<br>                                                                                                                             |[0x80000250]:xori s9, s7, 4092<br> [0x80000254]:sw s9, 12(ra)<br>    |
|  28|[0x80003270]<br>0x00080001|- rs1 : x12<br> - rd : x13<br> - rs1_val == 524288<br>                                                                                                                             |[0x8000025c]:xori a3, a2, 1<br> [0x80000260]:sw a3, 16(ra)<br>       |
|  29|[0x80003274]<br>0x00100555|- rs1 : x19<br> - rd : x30<br> - imm_val == 1365<br> - rs1_val == 1048576<br>                                                                                                      |[0x80000268]:xori t5, s3, 1365<br> [0x8000026c]:sw t5, 20(ra)<br>    |
|  30|[0x80003278]<br>0x002007FF|- rs1 : x21<br> - rd : x11<br> - rs1_val == 2097152<br>                                                                                                                            |[0x80000274]:xori a1, s5, 2047<br> [0x80000278]:sw a1, 24(ra)<br>    |
|  31|[0x8000327c]<br>0xFFBFFFF6|- rs1 : x24<br> - rd : x16<br> - rs1_val == 4194304<br>                                                                                                                            |[0x80000280]:xori a6, s8, 4086<br> [0x80000284]:sw a6, 28(ra)<br>    |
|  32|[0x80003280]<br>0x00800040|- rs1 : x16<br> - rd : x27<br> - imm_val == 64<br> - rs1_val == 8388608<br>                                                                                                        |[0x8000028c]:xori s11, a6, 64<br> [0x80000290]:sw s11, 32(ra)<br>    |
|  33|[0x80003284]<br>0xFEFFFBFF|- rs1_val == 16777216<br>                                                                                                                                                          |[0x80000298]:xori a1, a0, 3071<br> [0x8000029c]:sw a1, 36(ra)<br>    |
|  34|[0x80003288]<br>0xFDFFFDFF|- rs1_val == 33554432<br>                                                                                                                                                          |[0x800002a4]:xori a1, a0, 3583<br> [0x800002a8]:sw a1, 40(ra)<br>    |
|  35|[0x8000328c]<br>0x080007FF|- rs1_val == 134217728<br>                                                                                                                                                         |[0x800002b0]:xori a1, a0, 2047<br> [0x800002b4]:sw a1, 44(ra)<br>    |
|  36|[0x80003290]<br>0xEFFFFFFB|- imm_val == -5<br> - rs1_val == 268435456<br>                                                                                                                                     |[0x800002bc]:xori a1, a0, 4091<br> [0x800002c0]:sw a1, 48(ra)<br>    |
|  37|[0x80003294]<br>0xDFFFFFEF|- imm_val == -17<br> - rs1_val == 536870912<br>                                                                                                                                    |[0x800002c8]:xori a1, a0, 4079<br> [0x800002cc]:sw a1, 52(ra)<br>    |
|  38|[0x80003298]<br>0xBFFFFFDF|- rs1_val == 1073741824<br>                                                                                                                                                        |[0x800002d4]:xori a1, a0, 4063<br> [0x800002d8]:sw a1, 56(ra)<br>    |
|  39|[0x8000329c]<br>0x00000041|- imm_val == -65<br> - rs1_val == -2<br>                                                                                                                                           |[0x800002e0]:xori a1, a0, 4031<br> [0x800002e4]:sw a1, 60(ra)<br>    |
|  40|[0x800032a0]<br>0xFFFFFFF1|- rs1_val == -9<br>                                                                                                                                                                |[0x800002ec]:xori a1, a0, 6<br> [0x800002f0]:sw a1, 64(ra)<br>       |
|  41|[0x800032a4]<br>0xFFFFF810|- rs1_val == -17<br>                                                                                                                                                               |[0x800002f8]:xori a1, a0, 2047<br> [0x800002fc]:sw a1, 68(ra)<br>    |
|  42|[0x800032a8]<br>0x000003DF|- rs1_val == -33<br>                                                                                                                                                               |[0x80000304]:xori a1, a0, 3072<br> [0x80000308]:sw a1, 72(ra)<br>    |
|  43|[0x800032ac]<br>0x000000C0|- imm_val == -129<br> - rs1_val == -65<br>                                                                                                                                         |[0x80000310]:xori a1, a0, 3967<br> [0x80000314]:sw a1, 76(ra)<br>    |
|  44|[0x800032b0]<br>0xFFFFFE7F|- imm_val == 256<br> - rs1_val == -129<br>                                                                                                                                         |[0x8000031c]:xori a1, a0, 256<br> [0x80000320]:sw a1, 80(ra)<br>     |
|  45|[0x800032b4]<br>0x00080080|- rs1_val == -524289<br>                                                                                                                                                           |[0x8000032c]:xori a1, a0, 3967<br> [0x80000330]:sw a1, 84(ra)<br>    |
|  46|[0x800032b8]<br>0x00100002|- rs1_val == -1048577<br>                                                                                                                                                          |[0x8000033c]:xori a1, a0, 4093<br> [0x80000340]:sw a1, 88(ra)<br>    |
|  47|[0x800032bc]<br>0xFFDFFFFA|- rs1_val == -2097153<br>                                                                                                                                                          |[0x8000034c]:xori a1, a0, 5<br> [0x80000350]:sw a1, 92(ra)<br>       |
|  48|[0x800032c0]<br>0x004003FF|- rs1_val == -4194305<br>                                                                                                                                                          |[0x8000035c]:xori a1, a0, 3072<br> [0x80000360]:sw a1, 96(ra)<br>    |
|  49|[0x800032c4]<br>0x008007FF|- rs1_val == -8388609<br>                                                                                                                                                          |[0x8000036c]:xori a1, a0, 2048<br> [0x80000370]:sw a1, 100(ra)<br>   |
|  50|[0x800032c8]<br>0xFEFFFFF6|- rs1_val == -16777217<br>                                                                                                                                                         |[0x8000037c]:xori a1, a0, 9<br> [0x80000380]:sw a1, 104(ra)<br>      |
|  51|[0x800032cc]<br>0xFDFFFFF9|- rs1_val == -33554433<br>                                                                                                                                                         |[0x8000038c]:xori a1, a0, 6<br> [0x80000390]:sw a1, 108(ra)<br>      |
|  52|[0x800032d0]<br>0x04000006|- rs1_val == -67108865<br>                                                                                                                                                         |[0x8000039c]:xori a1, a0, 4089<br> [0x800003a0]:sw a1, 112(ra)<br>   |
|  53|[0x800032d4]<br>0x08000400|- rs1_val == -134217729<br>                                                                                                                                                        |[0x800003ac]:xori a1, a0, 3071<br> [0x800003b0]:sw a1, 116(ra)<br>   |
|  54|[0x800032d8]<br>0xEFFFFFFE|- rs1_val == -268435457<br>                                                                                                                                                        |[0x800003bc]:xori a1, a0, 1<br> [0x800003c0]:sw a1, 120(ra)<br>      |
|  55|[0x800032dc]<br>0xDFFFFFFE|- rs1_val == -536870913<br>                                                                                                                                                        |[0x800003cc]:xori a1, a0, 1<br> [0x800003d0]:sw a1, 124(ra)<br>      |
|  56|[0x800032e0]<br>0xBFFFFFF9|- rs1_val == -1073741825<br>                                                                                                                                                       |[0x800003dc]:xori a1, a0, 6<br> [0x800003e0]:sw a1, 128(ra)<br>      |
|  57|[0x800032e4]<br>0x55555515|- rs1_val == 1431655765<br>                                                                                                                                                        |[0x800003ec]:xori a1, a0, 64<br> [0x800003f0]:sw a1, 132(ra)<br>     |
|  58|[0x800032e8]<br>0xAAAAAAA9|- rs1_val == -1431655766<br>                                                                                                                                                       |[0x800003fc]:xori a1, a0, 3<br> [0x80000400]:sw a1, 136(ra)<br>      |
|  59|[0x800032ec]<br>0x00002004|- rs1_val == -8193<br>                                                                                                                                                             |[0x8000040c]:xori a1, a0, 4091<br> [0x80000410]:sw a1, 140(ra)<br>   |
|  60|[0x800032f0]<br>0xFFFFEC00|- rs1_val == -4097<br>                                                                                                                                                             |[0x8000041c]:xori a1, a0, 1023<br> [0x80000420]:sw a1, 144(ra)<br>   |
|  61|[0x800032f4]<br>0x00040002|- imm_val == 2<br>                                                                                                                                                                 |[0x80000428]:xori a1, a0, 2<br> [0x8000042c]:sw a1, 148(ra)<br>      |
|  62|[0x800032f8]<br>0xFFDFFFFB|- imm_val == 4<br>                                                                                                                                                                 |[0x80000438]:xori a1, a0, 4<br> [0x8000043c]:sw a1, 152(ra)<br>      |
|  63|[0x800032fc]<br>0xFFBFFFEF|- imm_val == 16<br>                                                                                                                                                                |[0x80000448]:xori a1, a0, 16<br> [0x8000044c]:sw a1, 156(ra)<br>     |
|  64|[0x80003300]<br>0xFFFFFEFA|- rs1_val == -257<br>                                                                                                                                                              |[0x80000454]:xori a1, a0, 5<br> [0x80000458]:sw a1, 160(ra)<br>      |
|  65|[0x80003304]<br>0x00000400|- rs1_val == -1025<br>                                                                                                                                                             |[0x80000460]:xori a1, a0, 4095<br> [0x80000464]:sw a1, 164(ra)<br>   |
|  66|[0x80003308]<br>0x00000200|- rs1_val == -513<br>                                                                                                                                                              |[0x8000046c]:xori a1, a0, 4095<br> [0x80000470]:sw a1, 168(ra)<br>   |
|  67|[0x8000330c]<br>0x20000200|- imm_val == 512<br>                                                                                                                                                               |[0x80000478]:xori a1, a0, 512<br> [0x8000047c]:sw a1, 172(ra)<br>    |
|  68|[0x80003310]<br>0x00000440|- imm_val == 1024<br>                                                                                                                                                              |[0x80000484]:xori a1, a0, 1024<br> [0x80000488]:sw a1, 176(ra)<br>   |
|  69|[0x80003314]<br>0x00000804|- rs1_val == -2049<br>                                                                                                                                                             |[0x80000494]:xori a1, a0, 4091<br> [0x80000498]:sw a1, 180(ra)<br>   |
|  70|[0x80003318]<br>0x00004004|- rs1_val == -16385<br>                                                                                                                                                            |[0x800004a4]:xori a1, a0, 4091<br> [0x800004a8]:sw a1, 184(ra)<br>   |
|  71|[0x8000331c]<br>0xFFFF7FFA|- rs1_val == -32769<br>                                                                                                                                                            |[0x800004b4]:xori a1, a0, 5<br> [0x800004b8]:sw a1, 188(ra)<br>      |
|  72|[0x80003320]<br>0xFFFEFAAA|- rs1_val == -65537<br>                                                                                                                                                            |[0x800004c4]:xori a1, a0, 1365<br> [0x800004c8]:sw a1, 192(ra)<br>   |
|  73|[0x80003324]<br>0xFFFBFFF8|- rs1_val == -262145<br>                                                                                                                                                           |[0x800004d4]:xori a1, a0, 7<br> [0x800004d8]:sw a1, 196(ra)<br>      |
