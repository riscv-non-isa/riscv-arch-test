
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
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | ori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 75      |
| STAT1                     | 74      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e4]:ori a1, a0, 9
      [0x800004e8]:sw a1, 212(sp)
 -- Signature Address: 0x80003338 Data: 0x00800009
 -- Redundant Coverpoints hit by the op
      - opcode : ori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
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

|s.no|        signature         |                                                                     coverpoints                                                                     |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFF9|- opcode : ori<br> - rs1 : x31<br> - rd : x28<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br>                         |[0x80000104]:ori t3, t6, 4089<br> [0x80000108]:sw t3, 0(a6)<br>      |
|   2|[0x80003214]<br>0xFFFFFFFF|- rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br> - rs1_val == 512<br> |[0x80000110]:ori a5, a5, 3583<br> [0x80000114]:sw a5, 4(a6)<br>      |
|   3|[0x80003218]<br>0x00000007|- rs1 : x29<br> - rd : x30<br> - rs1_val > 0 and imm_val > 0<br>                                                                                     |[0x8000011c]:ori t5, t4, 5<br> [0x80000120]:sw t5, 8(a6)<br>         |
|   4|[0x8000321c]<br>0x80000004|- rs1 : x7<br> - rd : x17<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 4<br> - rs1_val == -2147483648<br>      |[0x80000128]:ori a7, t2, 4<br> [0x8000012c]:sw a7, 12(a6)<br>        |
|   5|[0x80003220]<br>0x00000200|- rs1 : x27<br> - rd : x8<br> - rs1_val == 0<br> - imm_val == 512<br>                                                                                |[0x80000134]:ori fp, s11, 512<br> [0x80000138]:sw fp, 16(a6)<br>     |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x30<br> - rd : x2<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -257<br> - rs1_val == 2147483647<br>                                     |[0x80000144]:ori sp, t5, 3839<br> [0x80000148]:sw sp, 20(a6)<br>     |
|   7|[0x80003228]<br>0x00000005|- rs1 : x20<br> - rd : x23<br> - rs1_val == 1<br>                                                                                                    |[0x80000150]:ori s7, s4, 5<br> [0x80000154]:sw s7, 24(a6)<br>        |
|   8|[0x8000322c]<br>0xFFFFFFFF|- rs1 : x21<br> - rd : x9<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -33554433<br>                                        |[0x80000160]:ori s1, s5, 2048<br> [0x80000164]:sw s1, 28(a6)<br>     |
|   9|[0x80003230]<br>0xFBFFFFFF|- rs1 : x24<br> - rd : x10<br> - imm_val == 0<br> - rs1_val == -67108865<br>                                                                         |[0x80000170]:ori a0, s8, 0<br> [0x80000174]:sw a0, 32(a6)<br>        |
|  10|[0x80003234]<br>0xFFFFEFFF|- rs1 : x11<br> - rd : x29<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -4097<br>                                           |[0x80000180]:ori t4, a1, 2047<br> [0x80000184]:sw t4, 36(a6)<br>     |
|  11|[0x80003238]<br>0x00002001|- rs1 : x12<br> - rd : x19<br> - imm_val == 1<br> - rs1_val == 8192<br>                                                                              |[0x8000018c]:ori s3, a2, 1<br> [0x80000190]:sw s3, 40(a6)<br>        |
|  12|[0x8000323c]<br>0xFFFFFBFF|- rs1 : x2<br> - rd : x22<br> - imm_val == -1025<br> - rs1_val == 2<br>                                                                              |[0x80000198]:ori s6, sp, 3071<br> [0x8000019c]:sw s6, 44(a6)<br>     |
|  13|[0x80003240]<br>0xFFFFFFF6|- rs1 : x0<br> - rd : x26<br>                                                                                                                        |[0x800001a4]:ori s10, zero, 4086<br> [0x800001a8]:sw s10, 48(a6)<br> |
|  14|[0x80003244]<br>0x00000088|- rs1 : x19<br> - rd : x4<br> - imm_val == 128<br> - rs1_val == 8<br>                                                                                |[0x800001b0]:ori tp, s3, 128<br> [0x800001b4]:sw tp, 52(a6)<br>      |
|  15|[0x80003248]<br>0xFFFFFFFE|- rs1 : x26<br> - rd : x13<br> - imm_val == -2<br> - rs1_val == 16<br>                                                                               |[0x800001bc]:ori a3, s10, 4094<br> [0x800001c0]:sw a3, 56(a6)<br>    |
|  16|[0x8000324c]<br>0xFFFFFAAA|- rs1 : x3<br> - rd : x14<br> - imm_val == -1366<br> - rs1_val == 32<br>                                                                             |[0x800001c8]:ori a4, gp, 2730<br> [0x800001cc]:sw a4, 60(a6)<br>     |
|  17|[0x80003250]<br>0xFFFFFFFF|- rs1 : x1<br> - rd : x24<br> - imm_val == -65<br> - rs1_val == 64<br>                                                                               |[0x800001d4]:ori s8, ra, 4031<br> [0x800001d8]:sw s8, 64(a6)<br>     |
|  18|[0x80003254]<br>0x00000090|- rs1 : x23<br> - rd : x5<br> - imm_val == 16<br> - rs1_val == 128<br>                                                                               |[0x800001e0]:ori t0, s7, 16<br> [0x800001e4]:sw t0, 68(a6)<br>       |
|  19|[0x80003258]<br>0xFFFFFFFC|- rs1 : x22<br> - rd : x31<br> - rs1_val == 256<br>                                                                                                  |[0x800001ec]:ori t6, s6, 4092<br> [0x800001f0]:sw t6, 72(a6)<br>     |
|  20|[0x8000325c]<br>0xFFFFFC00|- rs1 : x9<br> - rd : x3<br> - rs1_val == 1024<br>                                                                                                   |[0x800001f8]:ori gp, s1, 3072<br> [0x800001fc]:sw gp, 76(a6)<br>     |
|  21|[0x80003260]<br>0xFFFFFFFA|- rs1 : x6<br> - rd : x25<br> - rs1_val == 2048<br>                                                                                                  |[0x80000208]:ori s9, t1, 4090<br> [0x8000020c]:sw s9, 80(a6)<br>     |
|  22|[0x80003264]<br>0xFFFFFFF9|- rs1 : x25<br> - rd : x18<br> - rs1_val == 4096<br>                                                                                                 |[0x8000021c]:ori s2, s9, 4089<br> [0x80000220]:sw s2, 0(sp)<br>      |
|  23|[0x80003268]<br>0x00004004|- rs1 : x13<br> - rd : x7<br> - rs1_val == 16384<br>                                                                                                 |[0x80000228]:ori t2, a3, 4<br> [0x8000022c]:sw t2, 4(sp)<br>         |
|  24|[0x8000326c]<br>0xFFFFFF7F|- rs1 : x14<br> - rd : x6<br> - imm_val == -129<br> - rs1_val == 32768<br>                                                                           |[0x80000234]:ori t1, a4, 3967<br> [0x80000238]:sw t1, 8(sp)<br>      |
|  25|[0x80003270]<br>0x00010007|- rs1 : x8<br> - rd : x11<br> - rs1_val == 65536<br>                                                                                                 |[0x80000240]:ori a1, fp, 7<br> [0x80000244]:sw a1, 12(sp)<br>        |
|  26|[0x80003274]<br>0xFFFFFF7F|- rs1 : x5<br> - rd : x12<br> - rs1_val == 131072<br>                                                                                                |[0x8000024c]:ori a2, t0, 3967<br> [0x80000250]:sw a2, 16(sp)<br>     |
|  27|[0x80003278]<br>0x00040007|- rs1 : x28<br> - rd : x27<br> - rs1_val == 262144<br>                                                                                               |[0x80000258]:ori s11, t3, 7<br> [0x8000025c]:sw s11, 20(sp)<br>      |
|  28|[0x8000327c]<br>0xFFFFFFFF|- rs1 : x16<br> - rd : x1<br> - rs1_val == 524288<br>                                                                                                |[0x80000264]:ori ra, a6, 4095<br> [0x80000268]:sw ra, 24(sp)<br>     |
|  29|[0x80003280]<br>0x00100555|- rs1 : x4<br> - rd : x20<br> - imm_val == 1365<br> - rs1_val == 1048576<br>                                                                         |[0x80000270]:ori s4, tp, 1365<br> [0x80000274]:sw s4, 28(sp)<br>     |
|  30|[0x80003284]<br>0xFFFFF800|- rs1 : x18<br> - rd : x21<br> - rs1_val == 2097152<br>                                                                                              |[0x8000027c]:ori s5, s2, 2048<br> [0x80000280]:sw s5, 32(sp)<br>     |
|  31|[0x80003288]<br>0x00400001|- rs1 : x10<br> - rd : x16<br> - rs1_val == 4194304<br>                                                                                              |[0x80000288]:ori a6, a0, 1<br> [0x8000028c]:sw a6, 36(sp)<br>        |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x17<br> - rd : x0<br> - rs1_val == 8388608<br>                                                                                               |[0x80000294]:ori zero, a7, 9<br> [0x80000298]:sw zero, 40(sp)<br>    |
|  33|[0x80003290]<br>0x01000080|- rs1_val == 16777216<br>                                                                                                                            |[0x800002a0]:ori a1, a0, 128<br> [0x800002a4]:sw a1, 44(sp)<br>      |
|  34|[0x80003294]<br>0xFFFFFFFE|- rs1_val == 33554432<br>                                                                                                                            |[0x800002ac]:ori a1, a0, 4094<br> [0x800002b0]:sw a1, 48(sp)<br>     |
|  35|[0x80003298]<br>0x040003FF|- rs1_val == 67108864<br>                                                                                                                            |[0x800002b8]:ori a1, a0, 1023<br> [0x800002bc]:sw a1, 52(sp)<br>     |
|  36|[0x8000329c]<br>0xFFFFFFFD|- imm_val == -3<br> - rs1_val == 134217728<br>                                                                                                       |[0x800002c4]:ori a1, a0, 4093<br> [0x800002c8]:sw a1, 56(sp)<br>     |
|  37|[0x800032a0]<br>0x10000004|- rs1_val == 268435456<br>                                                                                                                           |[0x800002d0]:ori a1, a0, 4<br> [0x800002d4]:sw a1, 60(sp)<br>        |
|  38|[0x800032a4]<br>0x20000004|- rs1_val == 536870912<br>                                                                                                                           |[0x800002dc]:ori a1, a0, 4<br> [0x800002e0]:sw a1, 64(sp)<br>        |
|  39|[0x800032a8]<br>0x40000006|- rs1_val == 1073741824<br>                                                                                                                          |[0x800002e8]:ori a1, a0, 6<br> [0x800002ec]:sw a1, 68(sp)<br>        |
|  40|[0x800032ac]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                  |[0x800002f4]:ori a1, a0, 1<br> [0x800002f8]:sw a1, 72(sp)<br>        |
|  41|[0x800032b0]<br>0xFFFFFFFF|- imm_val == -17<br> - rs1_val == -3<br>                                                                                                             |[0x80000300]:ori a1, a0, 4079<br> [0x80000304]:sw a1, 76(sp)<br>     |
|  42|[0x800032b4]<br>0xFFFFFFFB|- imm_val == 256<br> - rs1_val == -5<br>                                                                                                             |[0x8000030c]:ori a1, a0, 256<br> [0x80000310]:sw a1, 80(sp)<br>      |
|  43|[0x800032b8]<br>0xFFFFFFF7|- rs1_val == -9<br>                                                                                                                                  |[0x80000318]:ori a1, a0, 1365<br> [0x8000031c]:sw a1, 84(sp)<br>     |
|  44|[0x800032bc]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                 |[0x80000324]:ori a1, a0, 4079<br> [0x80000328]:sw a1, 88(sp)<br>     |
|  45|[0x800032c0]<br>0xFFFFFFFF|- imm_val == -9<br> - rs1_val == -33<br>                                                                                                             |[0x80000330]:ori a1, a0, 4087<br> [0x80000334]:sw a1, 92(sp)<br>     |
|  46|[0x800032c4]<br>0xFFFFFFBF|- imm_val == 2<br> - rs1_val == -65<br>                                                                                                              |[0x8000033c]:ori a1, a0, 2<br> [0x80000340]:sw a1, 96(sp)<br>        |
|  47|[0x800032c8]<br>0xFFFFFFFF|- rs1_val == -524289<br>                                                                                                                             |[0x8000034c]:ori a1, a0, 4095<br> [0x80000350]:sw a1, 100(sp)<br>    |
|  48|[0x800032cc]<br>0xFFFFFFFF|- imm_val == -33<br> - rs1_val == -1048577<br>                                                                                                       |[0x8000035c]:ori a1, a0, 4063<br> [0x80000360]:sw a1, 104(sp)<br>    |
|  49|[0x800032d0]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                                            |[0x8000036c]:ori a1, a0, 4079<br> [0x80000370]:sw a1, 108(sp)<br>    |
|  50|[0x800032d4]<br>0xFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                            |[0x8000037c]:ori a1, a0, 4094<br> [0x80000380]:sw a1, 112(sp)<br>    |
|  51|[0x800032d8]<br>0xFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                            |[0x8000038c]:ori a1, a0, 4063<br> [0x80000390]:sw a1, 116(sp)<br>    |
|  52|[0x800032dc]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                           |[0x8000039c]:ori a1, a0, 4087<br> [0x800003a0]:sw a1, 120(sp)<br>    |
|  53|[0x800032e0]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                          |[0x800003ac]:ori a1, a0, 3<br> [0x800003b0]:sw a1, 124(sp)<br>       |
|  54|[0x800032e4]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                          |[0x800003bc]:ori a1, a0, 1<br> [0x800003c0]:sw a1, 128(sp)<br>       |
|  55|[0x800032e8]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                          |[0x800003cc]:ori a1, a0, 6<br> [0x800003d0]:sw a1, 132(sp)<br>       |
|  56|[0x800032ec]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                         |[0x800003dc]:ori a1, a0, 256<br> [0x800003e0]:sw a1, 136(sp)<br>     |
|  57|[0x800032f0]<br>0xFFFFFDFF|- rs1_val == 1431655765<br>                                                                                                                          |[0x800003ec]:ori a1, a0, 3583<br> [0x800003f0]:sw a1, 140(sp)<br>    |
|  58|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -1431655766<br>                                                                                                                         |[0x800003fc]:ori a1, a0, 4095<br> [0x80000400]:sw a1, 144(sp)<br>    |
|  59|[0x800032f8]<br>0x08000008|- imm_val == 8<br>                                                                                                                                   |[0x80000408]:ori a1, a0, 8<br> [0x8000040c]:sw a1, 148(sp)<br>       |
|  60|[0x800032fc]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                               |[0x80000418]:ori a1, a0, 7<br> [0x8000041c]:sw a1, 152(sp)<br>       |
|  61|[0x80003300]<br>0xFFFFFFFF|- imm_val == -5<br>                                                                                                                                  |[0x80000424]:ori a1, a0, 4091<br> [0x80000428]:sw a1, 156(sp)<br>    |
|  62|[0x80003304]<br>0x00000029|- imm_val == 32<br>                                                                                                                                  |[0x80000430]:ori a1, a0, 32<br> [0x80000434]:sw a1, 160(sp)<br>      |
|  63|[0x80003308]<br>0x00004040|- imm_val == 64<br>                                                                                                                                  |[0x8000043c]:ori a1, a0, 64<br> [0x80000440]:sw a1, 164(sp)<br>      |
|  64|[0x8000330c]<br>0xFFFFFF7F|- rs1_val == -129<br>                                                                                                                                |[0x80000448]:ori a1, a0, 4<br> [0x8000044c]:sw a1, 168(sp)<br>       |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                |[0x80000454]:ori a1, a0, 4094<br> [0x80000458]:sw a1, 172(sp)<br>    |
|  66|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                |[0x80000460]:ori a1, a0, 3839<br> [0x80000464]:sw a1, 176(sp)<br>    |
|  67|[0x80003318]<br>0xFFFFFBFF|- rs1_val == -1025<br>                                                                                                                               |[0x8000046c]:ori a1, a0, 128<br> [0x80000470]:sw a1, 180(sp)<br>     |
|  68|[0x8000331c]<br>0xFFFFBFFF|- imm_val == 1024<br> - rs1_val == -16385<br>                                                                                                        |[0x8000047c]:ori a1, a0, 1024<br> [0x80000480]:sw a1, 184(sp)<br>    |
|  69|[0x80003320]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                               |[0x8000048c]:ori a1, a0, 4092<br> [0x80000490]:sw a1, 188(sp)<br>    |
|  70|[0x80003324]<br>0xFFFF7FFF|- rs1_val == -32769<br>                                                                                                                              |[0x8000049c]:ori a1, a0, 9<br> [0x800004a0]:sw a1, 192(sp)<br>       |
|  71|[0x80003328]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                                              |[0x800004ac]:ori a1, a0, 512<br> [0x800004b0]:sw a1, 196(sp)<br>     |
|  72|[0x8000332c]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                             |[0x800004bc]:ori a1, a0, 1023<br> [0x800004c0]:sw a1, 200(sp)<br>    |
|  73|[0x80003330]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                             |[0x800004cc]:ori a1, a0, 3967<br> [0x800004d0]:sw a1, 204(sp)<br>    |
|  74|[0x80003334]<br>0xFFFFFFF6|- rs1_val == 4<br>                                                                                                                                   |[0x800004d8]:ori a1, a0, 4086<br> [0x800004dc]:sw a1, 208(sp)<br>    |
