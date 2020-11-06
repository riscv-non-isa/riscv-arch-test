
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
| COV_LABELS                | andi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/andi-01.S/andi-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
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
      [0x800004c4]:andi a1, a0, 4091
      [0x800004c8]:sw a1, 200(t0)
 -- Signature Address: 0x80003320 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - opcode : andi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -5
      - rs1_val == 16






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

|s.no|        signature         |                                                                      coverpoints                                                                      |                                 code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000005|- opcode : andi<br> - rs1 : x22<br> - rd : x6<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                           |[0x80000104]:andi t1, s6, 5<br> [0x80000108]:sw t1, 0(a7)<br>         |
|   2|[0x80003208]<br>0xFFFFBFBF|- rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -65<br> - rs1_val == -16385<br> |[0x80000114]:andi s8, s8, 4031<br> [0x80000118]:sw s8, 4(a7)<br>      |
|   3|[0x8000320c]<br>0x00000800|- rs1 : x10<br> - rd : x14<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2048<br>                                                                 |[0x80000124]:andi a4, a0, 3072<br> [0x80000128]:sw a4, 8(a7)<br>      |
|   4|[0x80003210]<br>0x00000002|- rs1 : x31<br> - rd : x16<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 2<br> - rs1_val == -262145<br>                                           |[0x80000134]:andi a6, t6, 2<br> [0x80000138]:sw a6, 12(a7)<br>        |
|   5|[0x80003214]<br>0x00000000|- rs1 : x6<br> - rd : x20<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 4<br> - rs1_val == -2147483648<br>                                          |[0x80000140]:andi s4, t1, 4<br> [0x80000144]:sw s4, 16(a7)<br>        |
|   6|[0x80003218]<br>0x00000000|- rs1 : x5<br> - rd : x15<br> - rs1_val == 0<br> - imm_val == -1025<br>                                                                                |[0x8000014c]:andi a5, t0, 3071<br> [0x80000150]:sw a5, 20(a7)<br>     |
|   7|[0x8000321c]<br>0x00000001|- rs1 : x25<br> - rd : x31<br> - imm_val == 1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                         |[0x8000015c]:andi t6, s9, 1<br> [0x80000160]:sw t6, 24(a7)<br>        |
|   8|[0x80003220]<br>0x00000001|- rs1 : x2<br> - rd : x27<br> - rs1_val == 1<br> - imm_val == -257<br>                                                                                 |[0x80000168]:andi s11, sp, 3839<br> [0x8000016c]:sw s11, 28(a7)<br>   |
|   9|[0x80003224]<br>0xFFFFF800|- rs1 : x26<br> - rd : x10<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -17<br>                                               |[0x80000174]:andi a0, s10, 2048<br> [0x80000178]:sw a0, 32(a7)<br>    |
|  10|[0x80003228]<br>0x00000000|- rs1 : x3<br> - rd : x29<br> - imm_val == 0<br> - rs1_val == -4194305<br>                                                                             |[0x80000184]:andi t4, gp, 0<br> [0x80000188]:sw t4, 36(a7)<br>        |
|  11|[0x8000322c]<br>0x000007FB|- rs1 : x15<br> - rd : x1<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -5<br>                                                 |[0x80000190]:andi ra, a5, 2047<br> [0x80000194]:sw ra, 40(a7)<br>     |
|  12|[0x80003230]<br>0x00000002|- rs1 : x28<br> - rd : x11<br> - imm_val == -513<br> - rs1_val == 2<br>                                                                                |[0x8000019c]:andi a1, t3, 3583<br> [0x800001a0]:sw a1, 44(a7)<br>     |
|  13|[0x80003234]<br>0x00000000|- rs1 : x11<br> - rd : x8<br> - rs1_val == 4<br>                                                                                                       |[0x800001a8]:andi fp, a1, 4089<br> [0x800001ac]:sw fp, 48(a7)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x27<br> - rd : x19<br> - imm_val == 128<br> - rs1_val == 8<br>                                                                                 |[0x800001b4]:andi s3, s11, 128<br> [0x800001b8]:sw s3, 52(a7)<br>     |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x12<br> - rd : x0<br> - imm_val == -5<br> - rs1_val == 16<br>                                                                                  |[0x800001c0]:andi zero, a2, 4091<br> [0x800001c4]:sw zero, 56(a7)<br> |
|  16|[0x80003240]<br>0x00000020|- rs1 : x20<br> - rd : x9<br> - rs1_val == 32<br>                                                                                                      |[0x800001cc]:andi s1, s4, 4092<br> [0x800001d0]:sw s1, 60(a7)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x0<br> - rd : x28<br> - imm_val == -2<br>                                                                                                      |[0x800001d8]:andi t3, zero, 4094<br> [0x800001dc]:sw t3, 64(a7)<br>   |
|  18|[0x80003248]<br>0x00000080|- rs1 : x21<br> - rd : x5<br> - rs1_val == 128<br>                                                                                                     |[0x800001e4]:andi t0, s5, 128<br> [0x800001e8]:sw t0, 68(a7)<br>      |
|  19|[0x8000324c]<br>0x00000100|- rs1 : x4<br> - rd : x7<br> - imm_val == 1365<br> - rs1_val == 256<br>                                                                                |[0x800001f0]:andi t2, tp, 1365<br> [0x800001f4]:sw t2, 72(a7)<br>     |
|  20|[0x80003250]<br>0x00000000|- rs1 : x7<br> - rd : x13<br> - imm_val == 64<br> - rs1_val == 512<br>                                                                                 |[0x800001fc]:andi a3, t2, 64<br> [0x80000200]:sw a3, 76(a7)<br>       |
|  21|[0x80003254]<br>0x00000000|- rs1 : x9<br> - rd : x23<br> - rs1_val == 1024<br>                                                                                                    |[0x80000208]:andi s7, s1, 64<br> [0x8000020c]:sw s7, 80(a7)<br>       |
|  22|[0x80003258]<br>0x00000000|- rs1 : x18<br> - rd : x2<br> - rs1_val == 4096<br>                                                                                                    |[0x8000021c]:andi sp, s2, 0<br> [0x80000220]:sw sp, 0(t0)<br>         |
|  23|[0x8000325c]<br>0x00002000|- rs1 : x8<br> - rd : x21<br> - imm_val == -129<br> - rs1_val == 8192<br>                                                                              |[0x80000228]:andi s5, fp, 3967<br> [0x8000022c]:sw s5, 4(t0)<br>      |
|  24|[0x80003260]<br>0x00004000|- rs1 : x14<br> - rd : x25<br> - rs1_val == 16384<br>                                                                                                  |[0x80000234]:andi s9, a4, 4091<br> [0x80000238]:sw s9, 8(t0)<br>      |
|  25|[0x80003264]<br>0x00000000|- rs1 : x17<br> - rd : x26<br> - imm_val == 512<br> - rs1_val == 32768<br>                                                                             |[0x80000240]:andi s10, a7, 512<br> [0x80000244]:sw s10, 12(t0)<br>    |
|  26|[0x80003268]<br>0x00000000|- rs1 : x16<br> - rd : x4<br> - rs1_val == 65536<br>                                                                                                   |[0x8000024c]:andi tp, a6, 6<br> [0x80000250]:sw tp, 16(t0)<br>        |
|  27|[0x8000326c]<br>0x00020000|- rs1 : x13<br> - rd : x30<br> - rs1_val == 131072<br>                                                                                                 |[0x80000258]:andi t5, a3, 3071<br> [0x8000025c]:sw t5, 20(t0)<br>     |
|  28|[0x80003270]<br>0x00040000|- rs1 : x19<br> - rd : x12<br> - rs1_val == 262144<br>                                                                                                 |[0x80000264]:andi a2, s3, 3072<br> [0x80000268]:sw a2, 24(t0)<br>     |
|  29|[0x80003274]<br>0x00080000|- rs1 : x1<br> - rd : x22<br> - rs1_val == 524288<br>                                                                                                  |[0x80000270]:andi s6, ra, 3583<br> [0x80000274]:sw s6, 28(t0)<br>     |
|  30|[0x80003278]<br>0x00000000|- rs1 : x30<br> - rd : x17<br> - rs1_val == 1048576<br>                                                                                                |[0x8000027c]:andi a7, t5, 2<br> [0x80000280]:sw a7, 32(t0)<br>        |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x23<br> - rd : x3<br> - imm_val == 256<br> - rs1_val == 2097152<br>                                                                            |[0x80000288]:andi gp, s7, 256<br> [0x8000028c]:sw gp, 36(t0)<br>      |
|  32|[0x80003280]<br>0x00000000|- rs1 : x29<br> - rd : x18<br> - rs1_val == 4194304<br>                                                                                                |[0x80000294]:andi s2, t4, 6<br> [0x80000298]:sw s2, 40(t0)<br>        |
|  33|[0x80003284]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                               |[0x800002a0]:andi a1, a0, 3583<br> [0x800002a4]:sw a1, 44(t0)<br>     |
|  34|[0x80003288]<br>0x01000000|- imm_val == -3<br> - rs1_val == 16777216<br>                                                                                                          |[0x800002ac]:andi a1, a0, 4093<br> [0x800002b0]:sw a1, 48(t0)<br>     |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                              |[0x800002b8]:andi a1, a0, 2<br> [0x800002bc]:sw a1, 52(t0)<br>        |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                              |[0x800002c4]:andi a1, a0, 5<br> [0x800002c8]:sw a1, 56(t0)<br>        |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                             |[0x800002d0]:andi a1, a0, 2<br> [0x800002d4]:sw a1, 60(t0)<br>        |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                             |[0x800002dc]:andi a1, a0, 2047<br> [0x800002e0]:sw a1, 64(t0)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                             |[0x800002e8]:andi a1, a0, 9<br> [0x800002ec]:sw a1, 68(t0)<br>        |
|  40|[0x800032a0]<br>0x40000000|- rs1_val == 1073741824<br>                                                                                                                            |[0x800002f4]:andi a1, a0, 4086<br> [0x800002f8]:sw a1, 72(t0)<br>     |
|  41|[0x800032a4]<br>0xFFFFFFF6|- imm_val == -9<br> - rs1_val == -2<br>                                                                                                                |[0x80000300]:andi a1, a0, 4087<br> [0x80000304]:sw a1, 76(t0)<br>     |
|  42|[0x800032a8]<br>0xFFFFFFED|- imm_val == -17<br> - rs1_val == -3<br>                                                                                                               |[0x8000030c]:andi a1, a0, 4079<br> [0x80000310]:sw a1, 80(t0)<br>     |
|  43|[0x800032ac]<br>0x00000001|- rs1_val == -9<br>                                                                                                                                    |[0x80000318]:andi a1, a0, 1<br> [0x8000031c]:sw a1, 84(t0)<br>        |
|  44|[0x800032b0]<br>0x00000006|- rs1_val == -524289<br>                                                                                                                               |[0x80000328]:andi a1, a0, 6<br> [0x8000032c]:sw a1, 88(t0)<br>        |
|  45|[0x800032b4]<br>0xFFEFFC00|- rs1_val == -1048577<br>                                                                                                                              |[0x80000338]:andi a1, a0, 3072<br> [0x8000033c]:sw a1, 92(t0)<br>     |
|  46|[0x800032b8]<br>0x00000200|- rs1_val == -2097153<br>                                                                                                                              |[0x80000348]:andi a1, a0, 512<br> [0x8000034c]:sw a1, 96(t0)<br>      |
|  47|[0x800032bc]<br>0x00000200|- rs1_val == -8388609<br>                                                                                                                              |[0x80000358]:andi a1, a0, 512<br> [0x8000035c]:sw a1, 100(t0)<br>     |
|  48|[0x800032c0]<br>0xFEFFFFF9|- rs1_val == -16777217<br>                                                                                                                             |[0x80000368]:andi a1, a0, 4089<br> [0x8000036c]:sw a1, 104(t0)<br>    |
|  49|[0x800032c4]<br>0xFDFFFAAA|- imm_val == -1366<br> - rs1_val == -33554433<br>                                                                                                      |[0x80000378]:andi a1, a0, 2730<br> [0x8000037c]:sw a1, 108(t0)<br>    |
|  50|[0x800032c8]<br>0xFBFFFFDF|- imm_val == -33<br> - rs1_val == -67108865<br>                                                                                                        |[0x80000388]:andi a1, a0, 4063<br> [0x8000038c]:sw a1, 112(t0)<br>    |
|  51|[0x800032cc]<br>0x00000010|- imm_val == 16<br> - rs1_val == -134217729<br>                                                                                                        |[0x80000398]:andi a1, a0, 16<br> [0x8000039c]:sw a1, 116(t0)<br>      |
|  52|[0x800032d0]<br>0xEFFFFBFF|- rs1_val == -268435457<br>                                                                                                                            |[0x800003a8]:andi a1, a0, 3071<br> [0x800003ac]:sw a1, 120(t0)<br>    |
|  53|[0x800032d4]<br>0x00000002|- rs1_val == -536870913<br>                                                                                                                            |[0x800003b8]:andi a1, a0, 2<br> [0x800003bc]:sw a1, 124(t0)<br>       |
|  54|[0x800032d8]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                           |[0x800003c8]:andi a1, a0, 4095<br> [0x800003cc]:sw a1, 128(t0)<br>    |
|  55|[0x800032dc]<br>0x55555555|- rs1_val == 1431655765<br>                                                                                                                            |[0x800003d8]:andi a1, a0, 3583<br> [0x800003dc]:sw a1, 132(t0)<br>    |
|  56|[0x800032e0]<br>0x00000000|- rs1_val == -1431655766<br>                                                                                                                           |[0x800003e8]:andi a1, a0, 1365<br> [0x800003ec]:sw a1, 136(t0)<br>    |
|  57|[0x800032e4]<br>0xFFFFDFDF|- rs1_val == -8193<br>                                                                                                                                 |[0x800003f8]:andi a1, a0, 4063<br> [0x800003fc]:sw a1, 140(t0)<br>    |
|  58|[0x800032e8]<br>0x00000008|- imm_val == 8<br>                                                                                                                                     |[0x80000408]:andi a1, a0, 8<br> [0x8000040c]:sw a1, 144(t0)<br>       |
|  59|[0x800032ec]<br>0x000007DF|- rs1_val == -33<br>                                                                                                                                   |[0x80000414]:andi a1, a0, 2047<br> [0x80000418]:sw a1, 148(t0)<br>    |
|  60|[0x800032f0]<br>0x00000000|- imm_val == 32<br>                                                                                                                                    |[0x80000420]:andi a1, a0, 32<br> [0x80000424]:sw a1, 152(t0)<br>      |
|  61|[0x800032f4]<br>0xFFFFFFBC|- rs1_val == -65<br>                                                                                                                                   |[0x8000042c]:andi a1, a0, 4092<br> [0x80000430]:sw a1, 156(t0)<br>    |
|  62|[0x800032f8]<br>0x00000555|- rs1_val == -129<br>                                                                                                                                  |[0x80000438]:andi a1, a0, 1365<br> [0x8000043c]:sw a1, 160(t0)<br>    |
|  63|[0x800032fc]<br>0xFFFFFAAA|- rs1_val == -257<br>                                                                                                                                  |[0x80000444]:andi a1, a0, 2730<br> [0x80000448]:sw a1, 164(t0)<br>    |
|  64|[0x80003300]<br>0xFFFFFD7F|- rs1_val == -513<br>                                                                                                                                  |[0x80000450]:andi a1, a0, 3967<br> [0x80000454]:sw a1, 168(t0)<br>    |
|  65|[0x80003304]<br>0xFFFFFAFF|- rs1_val == -1025<br>                                                                                                                                 |[0x8000045c]:andi a1, a0, 3839<br> [0x80000460]:sw a1, 172(t0)<br>    |
|  66|[0x80003308]<br>0x00000000|- imm_val == 1024<br>                                                                                                                                  |[0x80000468]:andi a1, a0, 1024<br> [0x8000046c]:sw a1, 176(t0)<br>    |
|  67|[0x8000330c]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                 |[0x80000478]:andi a1, a0, 4095<br> [0x8000047c]:sw a1, 180(t0)<br>    |
|  68|[0x80003310]<br>0x00000004|- rs1_val == -4097<br>                                                                                                                                 |[0x80000488]:andi a1, a0, 4<br> [0x8000048c]:sw a1, 184(t0)<br>       |
|  69|[0x80003314]<br>0x00000001|- rs1_val == -32769<br>                                                                                                                                |[0x80000498]:andi a1, a0, 1<br> [0x8000049c]:sw a1, 188(t0)<br>       |
|  70|[0x80003318]<br>0xFFFEFFFE|- rs1_val == -65537<br>                                                                                                                                |[0x800004a8]:andi a1, a0, 4094<br> [0x800004ac]:sw a1, 192(t0)<br>    |
|  71|[0x8000331c]<br>0x000003FF|- rs1_val == -131073<br>                                                                                                                               |[0x800004b8]:andi a1, a0, 1023<br> [0x800004bc]:sw a1, 196(t0)<br>    |
|  72|[0x80003324]<br>0x00000040|- rs1_val == 64<br>                                                                                                                                    |[0x800004d0]:andi a1, a0, 4094<br> [0x800004d4]:sw a1, 204(t0)<br>    |
