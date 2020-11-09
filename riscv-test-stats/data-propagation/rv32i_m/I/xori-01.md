
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
| SIG_REGION                | [('0x80003204', '0x80003324', '72 words')]      |
| COV_LABELS                | xori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 72      |
| STAT1                     | 71      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c0]:xori a1, a0, 0
      [0x800004c4]:sw a1, 192(sp)
 -- Signature Address: 0x8000331c Data: 0xFDFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == 0
      - rs1_val != imm_val
      - rs1_val == -33554433






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

|s.no|        signature         |                                                                              coverpoints                                                                              |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : xori<br> - rs1 : x31<br> - rd : x9<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -33<br> - rs1_val == -33<br> |[0x80000104]:xori s1, t6, 4063<br> [0x80000108]:sw s1, 0(t2)<br>   |
|   2|[0x80003208]<br>0x00004009|- rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val == -16385<br>                                                                        |[0x80000114]:xori s9, s9, 4086<br> [0x80000118]:sw s9, 4(t2)<br>   |
|   3|[0x8000320c]<br>0x00000008|- rs1 : x26<br> - rd : x30<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br>                                                                                    |[0x80000120]:xori t5, s10, 9<br> [0x80000124]:sw t5, 8(t2)<br>     |
|   4|[0x80003210]<br>0xFFFFFFEF|- rs1 : x24<br> - rd : x17<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 16<br>                                                                                   |[0x8000012c]:xori a7, s8, 4095<br> [0x80000130]:sw a7, 12(t2)<br>  |
|   5|[0x80003214]<br>0xDFFFFFFD|- rs1 : x23<br> - rd : x20<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 2<br> - rs1_val == -536870913<br>                                                        |[0x8000013c]:xori s4, s7, 2<br> [0x80000140]:sw s4, 16(t2)<br>     |
|   6|[0x80003218]<br>0x7FFFF800|- rs1 : x12<br> - rd : x19<br> - imm_val == (-2**(12-1))<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -2048<br> - rs1_val == -2147483648<br>                       |[0x80000148]:xori s3, a2, 2048<br> [0x8000014c]:sw s3, 20(t2)<br>  |
|   7|[0x8000321c]<br>0x000007FF|- rs1 : x15<br> - rd : x2<br> - imm_val == (2**(12-1)-1)<br> - rs1_val == 0<br> - imm_val == 2047<br>                                                                  |[0x80000154]:xori sp, a5, 2047<br> [0x80000158]:sw sp, 24(t2)<br>  |
|   8|[0x80003220]<br>0x7FFFFFF9|- rs1 : x28<br> - rd : x4<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                             |[0x80000164]:xori tp, t3, 6<br> [0x80000168]:sw tp, 28(t2)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x21<br> - rd : x0<br> - imm_val == 0<br> - rs1_val == -33554433<br>                                                                                            |[0x80000174]:xori zero, s5, 0<br> [0x80000178]:sw zero, 32(t2)<br> |
|  10|[0x80003228]<br>0x00000081|- rs1 : x2<br> - rd : x5<br> - imm_val == 1<br> - rs1_val == 128<br>                                                                                                   |[0x80000180]:xori t0, sp, 1<br> [0x80000184]:sw t0, 36(t2)<br>     |
|  11|[0x8000322c]<br>0x0000000B|- rs1 : x17<br> - rd : x12<br> - rs1_val == 2<br>                                                                                                                      |[0x8000018c]:xori a2, a7, 9<br> [0x80000190]:sw a2, 40(t2)<br>     |
|  12|[0x80003230]<br>0x000003FB|- rs1 : x14<br> - rd : x29<br> - rs1_val == 4<br>                                                                                                                      |[0x80000198]:xori t4, a4, 1023<br> [0x8000019c]:sw t4, 44(t2)<br>  |
|  13|[0x80003234]<br>0x00000408|- rs1 : x13<br> - rd : x24<br> - imm_val == 1024<br> - rs1_val == 8<br>                                                                                                |[0x800001a4]:xori s8, a3, 1024<br> [0x800001a8]:sw s8, 48(t2)<br>  |
|  14|[0x80003238]<br>0xFFFFFFD6|- rs1 : x8<br> - rd : x15<br> - rs1_val == 32<br>                                                                                                                      |[0x800001b0]:xori a5, fp, 4086<br> [0x800001b4]:sw a5, 52(t2)<br>  |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x30<br> - rd : x13<br> - imm_val == 64<br> - rs1_val == 64<br>                                                                                                 |[0x800001bc]:xori a3, t5, 64<br> [0x800001c0]:sw a3, 56(t2)<br>    |
|  16|[0x80003240]<br>0xFFFFFAFF|- rs1 : x11<br> - rd : x23<br> - imm_val == -1025<br> - rs1_val == 256<br>                                                                                             |[0x800001c8]:xori s7, a1, 3071<br> [0x800001cc]:sw s7, 60(t2)<br>  |
|  17|[0x80003244]<br>0x00000207|- rs1 : x22<br> - rd : x26<br> - rs1_val == 512<br>                                                                                                                    |[0x800001d4]:xori s10, s6, 7<br> [0x800001d8]:sw s10, 64(t2)<br>   |
|  18|[0x80003248]<br>0x000007FF|- rs1 : x16<br> - rd : x1<br> - rs1_val == 1024<br>                                                                                                                    |[0x800001e0]:xori ra, a6, 1023<br> [0x800001e4]:sw ra, 68(t2)<br>  |
|  19|[0x8000324c]<br>0xFFFFF7FB|- rs1 : x29<br> - rd : x22<br> - imm_val == -5<br> - rs1_val == 2048<br>                                                                                               |[0x800001f0]:xori s6, t4, 4091<br> [0x800001f4]:sw s6, 72(t2)<br>  |
|  20|[0x80003250]<br>0x00001003|- rs1 : x10<br> - rd : x3<br> - rs1_val == 4096<br>                                                                                                                    |[0x800001fc]:xori gp, a0, 3<br> [0x80000200]:sw gp, 76(t2)<br>     |
|  21|[0x80003254]<br>0x00002100|- rs1 : x9<br> - rd : x16<br> - imm_val == 256<br> - rs1_val == 8192<br>                                                                                               |[0x80000208]:xori a6, s1, 256<br> [0x8000020c]:sw a6, 80(t2)<br>   |
|  22|[0x80003258]<br>0xFFFFBFFB|- rs1 : x6<br> - rd : x11<br> - rs1_val == 16384<br>                                                                                                                   |[0x80000214]:xori a1, t1, 4091<br> [0x80000218]:sw a1, 84(t2)<br>  |
|  23|[0x8000325c]<br>0xFFFF7FF7|- rs1 : x19<br> - rd : x31<br> - imm_val == -9<br> - rs1_val == 32768<br>                                                                                              |[0x80000228]:xori t6, s3, 4087<br> [0x8000022c]:sw t6, 0(sp)<br>   |
|  24|[0x80003260]<br>0xFFFEFFF6|- rs1 : x20<br> - rd : x14<br> - rs1_val == 65536<br>                                                                                                                  |[0x80000234]:xori a4, s4, 4086<br> [0x80000238]:sw a4, 4(sp)<br>   |
|  25|[0x80003264]<br>0xFFFDFFFB|- rs1 : x18<br> - rd : x28<br> - rs1_val == 131072<br>                                                                                                                 |[0x80000240]:xori t3, s2, 4091<br> [0x80000244]:sw t3, 8(sp)<br>   |
|  26|[0x80003268]<br>0x00000020|- rs1 : x0<br> - rd : x18<br> - imm_val == 32<br>                                                                                                                      |[0x80000250]:xori s2, zero, 32<br> [0x80000254]:sw s2, 12(sp)<br>  |
|  27|[0x8000326c]<br>0xFFF7FFF7|- rs1 : x7<br> - rd : x21<br> - rs1_val == 524288<br>                                                                                                                  |[0x8000025c]:xori s5, t2, 4087<br> [0x80000260]:sw s5, 16(sp)<br>  |
|  28|[0x80003270]<br>0x00100005|- rs1 : x1<br> - rd : x27<br> - rs1_val == 1048576<br>                                                                                                                 |[0x80000268]:xori s11, ra, 5<br> [0x8000026c]:sw s11, 20(sp)<br>   |
|  29|[0x80003274]<br>0xFFDFFFFB|- rs1 : x4<br> - rd : x7<br> - rs1_val == 2097152<br>                                                                                                                  |[0x80000274]:xori t2, tp, 4091<br> [0x80000278]:sw t2, 24(sp)<br>  |
|  30|[0x80003278]<br>0x00400200|- rs1 : x27<br> - rd : x8<br> - imm_val == 512<br> - rs1_val == 4194304<br>                                                                                            |[0x80000280]:xori fp, s11, 512<br> [0x80000284]:sw fp, 28(sp)<br>  |
|  31|[0x8000327c]<br>0x00800100|- rs1 : x3<br> - rd : x6<br> - rs1_val == 8388608<br>                                                                                                                  |[0x8000028c]:xori t1, gp, 256<br> [0x80000290]:sw t1, 32(sp)<br>   |
|  32|[0x80003280]<br>0xFEFFFFFF|- rs1 : x5<br> - rd : x10<br> - rs1_val == 16777216<br>                                                                                                                |[0x80000298]:xori a0, t0, 4095<br> [0x8000029c]:sw a0, 36(sp)<br>  |
|  33|[0x80003284]<br>0xFDFFFFFD|- imm_val == -3<br> - rs1_val == 33554432<br>                                                                                                                          |[0x800002a4]:xori a1, a0, 4093<br> [0x800002a8]:sw a1, 40(sp)<br>  |
|  34|[0x80003288]<br>0xFBFFFFF6|- rs1_val == 67108864<br>                                                                                                                                              |[0x800002b0]:xori a1, a0, 4086<br> [0x800002b4]:sw a1, 44(sp)<br>  |
|  35|[0x8000328c]<br>0xF7FFFFEF|- imm_val == -17<br> - rs1_val == 134217728<br>                                                                                                                        |[0x800002bc]:xori a1, a0, 4079<br> [0x800002c0]:sw a1, 48(sp)<br>  |
|  36|[0x80003290]<br>0x10000080|- imm_val == 128<br> - rs1_val == 268435456<br>                                                                                                                        |[0x800002c8]:xori a1, a0, 128<br> [0x800002cc]:sw a1, 52(sp)<br>   |
|  37|[0x80003294]<br>0xDFFFFF7F|- imm_val == -129<br> - rs1_val == 536870912<br>                                                                                                                       |[0x800002d4]:xori a1, a0, 3967<br> [0x800002d8]:sw a1, 56(sp)<br>  |
|  38|[0x80003298]<br>0xBFFFFDFF|- imm_val == -513<br> - rs1_val == 1073741824<br>                                                                                                                      |[0x800002e0]:xori a1, a0, 3583<br> [0x800002e4]:sw a1, 60(sp)<br>  |
|  39|[0x8000329c]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                    |[0x800002ec]:xori a1, a0, 1<br> [0x800002f0]:sw a1, 64(sp)<br>     |
|  40|[0x800032a0]<br>0xFFFFFFF9|- imm_val == 4<br> - rs1_val == -3<br>                                                                                                                                 |[0x800002f8]:xori a1, a0, 4<br> [0x800002fc]:sw a1, 68(sp)<br>     |
|  41|[0x800032a4]<br>0xFFFFFF7B|- rs1_val == -5<br>                                                                                                                                                    |[0x80000304]:xori a1, a0, 128<br> [0x80000308]:sw a1, 72(sp)<br>   |
|  42|[0x800032a8]<br>0xFFFFFBF7|- rs1_val == -9<br>                                                                                                                                                    |[0x80000310]:xori a1, a0, 1024<br> [0x80000314]:sw a1, 76(sp)<br>  |
|  43|[0x800032ac]<br>0x00000012|- rs1_val == -17<br>                                                                                                                                                   |[0x8000031c]:xori a1, a0, 4093<br> [0x80000320]:sw a1, 80(sp)<br>  |
|  44|[0x800032b0]<br>0xFFF7FFFA|- rs1_val == -524289<br>                                                                                                                                               |[0x8000032c]:xori a1, a0, 5<br> [0x80000330]:sw a1, 84(sp)<br>     |
|  45|[0x800032b4]<br>0xFFEFFFFC|- rs1_val == -1048577<br>                                                                                                                                              |[0x8000033c]:xori a1, a0, 3<br> [0x80000340]:sw a1, 88(sp)<br>     |
|  46|[0x800032b8]<br>0xFFDFFFFA|- rs1_val == -2097153<br>                                                                                                                                              |[0x8000034c]:xori a1, a0, 5<br> [0x80000350]:sw a1, 92(sp)<br>     |
|  47|[0x800032bc]<br>0xFFBFFAAA|- imm_val == 1365<br> - rs1_val == -4194305<br>                                                                                                                        |[0x8000035c]:xori a1, a0, 1365<br> [0x80000360]:sw a1, 96(sp)<br>  |
|  48|[0x800032c0]<br>0xFF7FFFEF|- imm_val == 16<br> - rs1_val == -8388609<br>                                                                                                                          |[0x8000036c]:xori a1, a0, 16<br> [0x80000370]:sw a1, 100(sp)<br>   |
|  49|[0x800032c4]<br>0xFEFFFFFE|- rs1_val == -16777217<br>                                                                                                                                             |[0x8000037c]:xori a1, a0, 1<br> [0x80000380]:sw a1, 104(sp)<br>    |
|  50|[0x800032c8]<br>0x04000004|- rs1_val == -67108865<br>                                                                                                                                             |[0x8000038c]:xori a1, a0, 4091<br> [0x80000390]:sw a1, 108(sp)<br> |
|  51|[0x800032cc]<br>0x08000002|- rs1_val == -134217729<br>                                                                                                                                            |[0x8000039c]:xori a1, a0, 4093<br> [0x800003a0]:sw a1, 112(sp)<br> |
|  52|[0x800032d0]<br>0x100003FF|- rs1_val == -268435457<br>                                                                                                                                            |[0x800003ac]:xori a1, a0, 3072<br> [0x800003b0]:sw a1, 116(sp)<br> |
|  53|[0x800032d4]<br>0x40000555|- imm_val == -1366<br> - rs1_val == -1073741825<br>                                                                                                                    |[0x800003bc]:xori a1, a0, 2730<br> [0x800003c0]:sw a1, 120(sp)<br> |
|  54|[0x800032d8]<br>0x55555550|- rs1_val == 1431655765<br>                                                                                                                                            |[0x800003cc]:xori a1, a0, 5<br> [0x800003d0]:sw a1, 124(sp)<br>    |
|  55|[0x800032dc]<br>0xAAAAAABA|- rs1_val == -1431655766<br>                                                                                                                                           |[0x800003dc]:xori a1, a0, 16<br> [0x800003e0]:sw a1, 128(sp)<br>   |
|  56|[0x800032e0]<br>0xFFDFFFF7|- imm_val == 8<br>                                                                                                                                                     |[0x800003ec]:xori a1, a0, 8<br> [0x800003f0]:sw a1, 132(sp)<br>    |
|  57|[0x800032e4]<br>0x00000240|- imm_val == -65<br> - rs1_val == -513<br>                                                                                                                             |[0x800003f8]:xori a1, a0, 4031<br> [0x800003fc]:sw a1, 136(sp)<br> |
|  58|[0x800032e8]<br>0x00000101|- imm_val == -257<br>                                                                                                                                                  |[0x80000404]:xori a1, a0, 3839<br> [0x80000408]:sw a1, 140(sp)<br> |
|  59|[0x800032ec]<br>0x00002003|- rs1_val == -8193<br>                                                                                                                                                 |[0x80000414]:xori a1, a0, 4092<br> [0x80000418]:sw a1, 144(sp)<br> |
|  60|[0x800032f0]<br>0x000007BF|- rs1_val == -65<br>                                                                                                                                                   |[0x80000420]:xori a1, a0, 2048<br> [0x80000424]:sw a1, 148(sp)<br> |
|  61|[0x800032f4]<br>0xFFFFFB7F|- rs1_val == -129<br>                                                                                                                                                  |[0x8000042c]:xori a1, a0, 1024<br> [0x80000430]:sw a1, 152(sp)<br> |
|  62|[0x800032f8]<br>0xFFFFFEEF|- rs1_val == -257<br>                                                                                                                                                  |[0x80000438]:xori a1, a0, 16<br> [0x8000043c]:sw a1, 156(sp)<br>   |
|  63|[0x800032fc]<br>0x00000155|- rs1_val == -1025<br>                                                                                                                                                 |[0x80000444]:xori a1, a0, 2730<br> [0x80000448]:sw a1, 160(sp)<br> |
|  64|[0x80003300]<br>0x00000840|- rs1_val == -2049<br>                                                                                                                                                 |[0x80000454]:xori a1, a0, 4031<br> [0x80000458]:sw a1, 164(sp)<br> |
|  65|[0x80003304]<br>0xFFFFEFBF|- rs1_val == -4097<br>                                                                                                                                                 |[0x80000464]:xori a1, a0, 64<br> [0x80000468]:sw a1, 168(sp)<br>   |
|  66|[0x80003308]<br>0xFFFFFFFA|- imm_val == -2<br>                                                                                                                                                    |[0x80000470]:xori a1, a0, 4094<br> [0x80000474]:sw a1, 172(sp)<br> |
|  67|[0x8000330c]<br>0xFFFF7FEF|- rs1_val == -32769<br>                                                                                                                                                |[0x80000480]:xori a1, a0, 16<br> [0x80000484]:sw a1, 176(sp)<br>   |
|  68|[0x80003310]<br>0xFFFEFFF9|- rs1_val == -65537<br>                                                                                                                                                |[0x80000490]:xori a1, a0, 6<br> [0x80000494]:sw a1, 180(sp)<br>    |
|  69|[0x80003314]<br>0x00020004|- rs1_val == -131073<br>                                                                                                                                               |[0x800004a0]:xori a1, a0, 4091<br> [0x800004a4]:sw a1, 184(sp)<br> |
|  70|[0x80003318]<br>0xFFFBFFF6|- rs1_val == -262145<br>                                                                                                                                               |[0x800004b0]:xori a1, a0, 9<br> [0x800004b4]:sw a1, 188(sp)<br>    |
|  71|[0x80003320]<br>0x00040020|- rs1_val == 262144<br>                                                                                                                                                |[0x800004cc]:xori a1, a0, 32<br> [0x800004d0]:sw a1, 196(sp)<br>   |
