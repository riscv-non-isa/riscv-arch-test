
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
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 73      |
| STAT1                     | 69      |
| STAT2                     | 4      |
| STAT3                     | 54     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003f0]:addi a1, a0, 4031
      [0x800003f4]:sw a1, 144(ra)
 -- Signature Address: 0x800032e4 Data: 0xFFFFFFB9
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003fc]:addi a1, a0, 4094
      [0x80000400]:sw a1, 148(ra)
 -- Signature Address: 0x800032e8 Data: 0x000000FE
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -2
      - rs1_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000498]:addi a1, a0, 4087
      [0x8000049c]:sw a1, 192(ra)
 -- Signature Address: 0x80003314 Data: 0x01FFFFF7
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -9
      - rs1_val == 33554432




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c4]:addi a1, a0, 64
      [0x800004c8]:sw a1, 204(ra)
 -- Signature Address: 0x80003320 Data: 0x00000042
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 64
      - rs1_val == 2






```

## Details of STAT3

```
[0x800000fc]:addi s4, s4, 268

[0x80000100]:addi s3, zero, 4079

[0x80000118]:addi a4, zero, 512

[0x80000128]:addi tp, tp, 4095

[0x80000140]:addi ra, zero, 0

[0x80000150]:addi a2, a2, 4095

[0x8000015c]:addi t4, zero, 1

[0x8000016c]:addi s11, s11, 4095

[0x80000190]:addi s10, zero, 2

[0x8000019c]:addi a3, zero, 4

[0x800001a8]:addi a1, zero, 8

[0x800001b4]:addi s2, zero, 16

[0x800001c0]:addi t2, zero, 32

[0x800001cc]:addi gp, zero, 64

[0x800001d8]:addi a5, zero, 128

[0x800001e4]:addi s9, zero, 256

[0x800001f0]:addi s5, zero, 1024

[0x80000200]:addi ra, ra, 88
[0x80000204]:lui fp, 1

[0x80000208]:addi fp, fp, 2048

[0x80000278]:addi zero, zero, 0

[0x800002e4]:addi a0, zero, 4094

[0x800002f0]:addi a0, zero, 4093

[0x800002fc]:addi a0, zero, 4091

[0x80000308]:addi a0, zero, 4087

[0x80000314]:addi a0, zero, 4063

[0x80000320]:addi a0, zero, 4031

[0x80000330]:addi a0, a0, 4095

[0x80000340]:addi a0, a0, 4095

[0x80000350]:addi a0, a0, 4095

[0x80000360]:addi a0, a0, 4095

[0x80000370]:addi a0, a0, 4095

[0x80000380]:addi a0, a0, 4095

[0x80000390]:addi a0, a0, 4095

[0x800003a0]:addi a0, a0, 4095

[0x800003b0]:addi a0, a0, 4095

[0x800003c0]:addi a0, a0, 4095

[0x800003d0]:addi a0, a0, 1365

[0x800003e0]:addi a0, a0, 2730

[0x800003ec]:addi a0, zero, 4090

[0x800003f8]:addi a0, zero, 256

[0x80000408]:addi a0, a0, 4095

[0x80000414]:addi a0, zero, 3967

[0x80000420]:addi a0, zero, 3839

[0x8000042c]:addi a0, zero, 3583

[0x80000438]:addi a0, zero, 3071

[0x80000448]:addi a0, a0, 2047

[0x80000458]:addi a0, a0, 4095

[0x80000468]:addi a0, a0, 4095

[0x80000478]:addi a0, a0, 4095

[0x80000488]:addi a0, a0, 4095

[0x800004a4]:addi a0, a0, 4095

[0x800004b4]:addi a0, a0, 4095

[0x800004c0]:addi a0, zero, 2

[0x800004d8]:addi zero, zero, 0



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

|s.no|        signature         |                                                   coverpoints                                                   |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFDE|- rs1 : x19<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -17<br>                  |[0x80000104]:addi s3, s3, 4079<br> [0x80000108]:sw s3, 0(s4)<br>     |
|   2|[0x80003208]<br>0x10000400|- rs1 : x16<br> - rd : x8<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 1024<br> - rs1_val == 268435456<br> |[0x80000110]:addi fp, a6, 1024<br> [0x80000114]:sw fp, 4(s4)<br>     |
|   3|[0x8000320c]<br>0x000001FD|- rs1 : x14<br> - rd : x21<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -3<br> - rs1_val == 512<br>        |[0x8000011c]:addi s5, a4, 4093<br> [0x80000120]:sw s5, 8(s4)<br>     |
|   4|[0x80003210]<br>0xFFF00007|- rd : x23<br> - imm_val == 8<br> - rs1_val == -1048577<br>                                                      |[0x8000012c]:addi s7, tp, 8<br> [0x80000130]:sw s7, 12(s4)<br>       |
|   5|[0x80003214]<br>0x7FFFFFFD|- rs1 : x22<br> - rd : x2<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                       |[0x80000138]:addi sp, s6, 4093<br> [0x8000013c]:sw sp, 16(s4)<br>    |
|   6|[0x80003218]<br>0x00000000|- rs1 : x1<br> - rd : x6<br>                                                                                     |[0x80000144]:addi t1, ra, 0<br> [0x80000148]:sw t1, 20(s4)<br>       |
|   7|[0x8000321c]<br>0x800003FF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                     |[0x80000154]:addi a4, a2, 1024<br> [0x80000158]:sw a4, 24(s4)<br>    |
|   8|[0x80003220]<br>0xFFFFFE00|- rs1 : x29<br> - rd : x24<br> - rs1_val == 1<br> - imm_val == -513<br>                                          |[0x80000160]:addi s8, t4, 3583<br> [0x80000164]:sw s8, 28(s4)<br>    |
|   9|[0x80003224]<br>0xFFBFF7FF|- imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -4194305<br>                                   |[0x80000170]:addi tp, s11, 2048<br> [0x80000174]:sw tp, 32(s4)<br>   |
|  10|[0x80003228]<br>0x000207FF|- rs1 : x5<br> - rd : x18<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == 131072<br>       |[0x8000017c]:addi s2, t0, 2047<br> [0x80000180]:sw s2, 36(s4)<br>    |
|  11|[0x8000322c]<br>0x00020001|- rs1 : x10<br> - rd : x15<br>                                                                                   |[0x80000188]:addi a5, a0, 1<br> [0x8000018c]:sw a5, 40(s4)<br>       |
|  12|[0x80003230]<br>0x00000000|- rs1 : x26<br> - rd : x0<br> - imm_val == 64<br> - rs1_val == 2<br>                                             |[0x80000194]:addi zero, s10, 64<br> [0x80000198]:sw zero, 44(s4)<br> |
|  13|[0x80003234]<br>0x00000009|- rs1 : x13<br> - rd : x10<br> - rs1_val == 4<br>                                                                |[0x800001a0]:addi a0, a3, 5<br> [0x800001a4]:sw a0, 48(s4)<br>       |
|  14|[0x80003238]<br>0x00000088|- rs1 : x11<br> - rd : x5<br> - imm_val == 128<br> - rs1_val == 8<br>                                            |[0x800001ac]:addi t0, a1, 128<br> [0x800001b0]:sw t0, 52(s4)<br>     |
|  15|[0x8000323c]<br>0x00000015|- rs1 : x18<br> - rd : x3<br> - rs1_val == 16<br>                                                                |[0x800001b8]:addi gp, s2, 5<br> [0x800001bc]:sw gp, 56(s4)<br>       |
|  16|[0x80003240]<br>0x00000026|- rs1 : x7<br> - rd : x31<br> - rs1_val == 32<br>                                                                |[0x800001c4]:addi t6, t2, 6<br> [0x800001c8]:sw t6, 60(s4)<br>       |
|  17|[0x80003244]<br>0x00000036|- rs1 : x3<br> - rs1_val == 64<br>                                                                               |[0x800001d0]:addi s11, gp, 4086<br> [0x800001d4]:sw s11, 64(s4)<br>  |
|  18|[0x80003248]<br>0x0000087F|- rs1 : x15<br> - rs1_val == 128<br>                                                                             |[0x800001dc]:addi ra, a5, 2047<br> [0x800001e0]:sw ra, 68(s4)<br>    |
|  19|[0x8000324c]<br>0x00000500|- rs1 : x25<br> - rd : x17<br> - rs1_val == 256<br>                                                              |[0x800001e8]:addi a7, s9, 1024<br> [0x800001ec]:sw a7, 72(s4)<br>    |
|  20|[0x80003250]<br>0xFFFFFC00|- rs1 : x21<br> - rd : x9<br> - rs1_val == 1024<br>                                                              |[0x800001f4]:addi s1, s5, 2048<br> [0x800001f8]:sw s1, 76(s4)<br>    |
|  21|[0x80003254]<br>0x00000900|- rd : x30<br> - rs1_val == 2048<br>                                                                             |[0x8000020c]:addi t5, fp, 256<br> [0x80000210]:sw t5, 0(ra)<br>      |
|  22|[0x80003258]<br>0x00000BFF|- rs1 : x30<br> - imm_val == -1025<br>                                                                           |[0x80000218]:addi s10, t5, 3071<br> [0x8000021c]:sw s10, 4(ra)<br>   |
|  23|[0x8000325c]<br>0x00001FFD|- rs1_val == 8192<br>                                                                                            |[0x80000224]:addi t4, s4, 4093<br> [0x80000228]:sw t4, 8(ra)<br>     |
|  24|[0x80003260]<br>0x00004080|- rs1 : x17<br> - rd : x28<br> - rs1_val == 16384<br>                                                            |[0x80000230]:addi t3, a7, 128<br> [0x80000234]:sw t3, 12(ra)<br>     |
|  25|[0x80003264]<br>0x00008400|- rs1 : x2<br> - rs1_val == 32768<br>                                                                            |[0x8000023c]:addi a3, sp, 1024<br> [0x80000240]:sw a3, 16(ra)<br>    |
|  26|[0x80003268]<br>0x0000FFEF|- rs1 : x24<br> - rs1_val == 65536<br>                                                                           |[0x80000248]:addi a2, s8, 4079<br> [0x8000024c]:sw a2, 20(ra)<br>    |
|  27|[0x8000326c]<br>0x00040007|- rs1 : x6<br> - rd : x22<br> - rs1_val == 262144<br>                                                            |[0x80000254]:addi s6, t1, 7<br> [0x80000258]:sw s6, 24(ra)<br>       |
|  28|[0x80003270]<br>0x0007FFFF|- rs1 : x28<br> - rs1_val == 524288<br>                                                                          |[0x80000260]:addi s4, t3, 4095<br> [0x80000264]:sw s4, 28(ra)<br>    |
|  29|[0x80003274]<br>0x000FFF7F|- rs1 : x23<br> - imm_val == -129<br> - rs1_val == 1048576<br>                                                   |[0x8000026c]:addi a1, s7, 3967<br> [0x80000270]:sw a1, 32(ra)<br>    |
|  30|[0x80003278]<br>0x00000020|- rd : x16<br>                                                                                                   |[0x8000027c]:addi a6, zero, 32<br> [0x80000280]:sw a6, 36(ra)<br>    |
|  31|[0x8000327c]<br>0x00400005|- rs1 : x9<br> - rs1_val == 4194304<br>                                                                          |[0x80000288]:addi s9, s1, 5<br> [0x8000028c]:sw s9, 40(ra)<br>       |
|  32|[0x80003280]<br>0x00800100|- rs1 : x31<br> - rs1_val == 8388608<br>                                                                         |[0x80000294]:addi t2, t6, 256<br> [0x80000298]:sw t2, 44(ra)<br>     |
|  33|[0x80003284]<br>0x01000010|- rs1_val == 16777216<br>                                                                                        |[0x800002a0]:addi a1, a0, 16<br> [0x800002a4]:sw a1, 48(ra)<br>      |
|  34|[0x80003288]<br>0x01FFFFFB|- imm_val == -5<br> - rs1_val == 33554432<br>                                                                    |[0x800002ac]:addi a1, a0, 4091<br> [0x800002b0]:sw a1, 52(ra)<br>    |
|  35|[0x8000328c]<br>0x03FFFFF6|- rs1_val == 67108864<br>                                                                                        |[0x800002b8]:addi a1, a0, 4086<br> [0x800002bc]:sw a1, 56(ra)<br>    |
|  36|[0x80003290]<br>0x08000002|- rs1_val == 134217728<br>                                                                                       |[0x800002c4]:addi a1, a0, 2<br> [0x800002c8]:sw a1, 60(ra)<br>       |
|  37|[0x80003294]<br>0x1FFFFAAA|- imm_val == -1366<br> - rs1_val == 536870912<br>                                                                |[0x800002d0]:addi a1, a0, 2730<br> [0x800002d4]:sw a1, 64(ra)<br>    |
|  38|[0x80003298]<br>0x40000010|- rs1_val == 1073741824<br>                                                                                      |[0x800002dc]:addi a1, a0, 16<br> [0x800002e0]:sw a1, 68(ra)<br>      |
|  39|[0x8000329c]<br>0x00000003|- rs1_val == -2<br>                                                                                              |[0x800002e8]:addi a1, a0, 5<br> [0x800002ec]:sw a1, 72(ra)<br>       |
|  40|[0x800032a0]<br>0x00000004|- rs1_val == -3<br>                                                                                              |[0x800002f4]:addi a1, a0, 7<br> [0x800002f8]:sw a1, 76(ra)<br>       |
|  41|[0x800032a4]<br>0xFFFFFEFA|- imm_val == -257<br> - rs1_val == -5<br>                                                                        |[0x80000300]:addi a1, a0, 3839<br> [0x80000304]:sw a1, 80(ra)<br>    |
|  42|[0x800032a8]<br>0x000003F7|- rs1_val == -9<br>                                                                                              |[0x8000030c]:addi a1, a0, 1024<br> [0x80000310]:sw a1, 84(ra)<br>    |
|  43|[0x800032ac]<br>0xFFFFFDDE|- rs1_val == -33<br>                                                                                             |[0x80000318]:addi a1, a0, 3583<br> [0x8000031c]:sw a1, 88(ra)<br>    |
|  44|[0x800032b0]<br>0xFFFFFA69|- rs1_val == -65<br>                                                                                             |[0x80000324]:addi a1, a0, 2730<br> [0x80000328]:sw a1, 92(ra)<br>    |
|  45|[0x800032b4]<br>0xFFF803FF|- rs1_val == -524289<br>                                                                                         |[0x80000334]:addi a1, a0, 1024<br> [0x80000338]:sw a1, 96(ra)<br>    |
|  46|[0x800032b8]<br>0xFFE001FF|- rs1_val == -2097153<br>                                                                                        |[0x80000344]:addi a1, a0, 512<br> [0x80000348]:sw a1, 100(ra)<br>    |
|  47|[0x800032bc]<br>0xFF800004|- rs1_val == -8388609<br>                                                                                        |[0x80000354]:addi a1, a0, 5<br> [0x80000358]:sw a1, 104(ra)<br>      |
|  48|[0x800032c0]<br>0xFEFFFFFC|- rs1_val == -16777217<br>                                                                                       |[0x80000364]:addi a1, a0, 4093<br> [0x80000368]:sw a1, 108(ra)<br>   |
|  49|[0x800032c4]<br>0xFE000003|- rs1_val == -33554433<br>                                                                                       |[0x80000374]:addi a1, a0, 4<br> [0x80000378]:sw a1, 112(ra)<br>      |
|  50|[0x800032c8]<br>0xFBFFFFF9|- rs1_val == -67108865<br>                                                                                       |[0x80000384]:addi a1, a0, 4090<br> [0x80000388]:sw a1, 116(ra)<br>   |
|  51|[0x800032cc]<br>0xF8000554|- imm_val == 1365<br> - rs1_val == -134217729<br>                                                                |[0x80000394]:addi a1, a0, 1365<br> [0x80000398]:sw a1, 120(ra)<br>   |
|  52|[0x800032d0]<br>0xEFFFF7FF|- rs1_val == -268435457<br>                                                                                      |[0x800003a4]:addi a1, a0, 2048<br> [0x800003a8]:sw a1, 124(ra)<br>   |
|  53|[0x800032d4]<br>0xDFFFFFDE|- rs1_val == -536870913<br>                                                                                      |[0x800003b4]:addi a1, a0, 4063<br> [0x800003b8]:sw a1, 128(ra)<br>   |
|  54|[0x800032d8]<br>0xBFFFFFDE|- rs1_val == -1073741825<br>                                                                                     |[0x800003c4]:addi a1, a0, 4063<br> [0x800003c8]:sw a1, 132(ra)<br>   |
|  55|[0x800032dc]<br>0x55554D55|- rs1_val == 1431655765<br>                                                                                      |[0x800003d4]:addi a1, a0, 2048<br> [0x800003d8]:sw a1, 136(ra)<br>   |
|  56|[0x800032e0]<br>0xAAAAAAAB|- rs1_val == -1431655766<br>                                                                                     |[0x800003e4]:addi a1, a0, 1<br> [0x800003e8]:sw a1, 140(ra)<br>      |
|  57|[0x800032ec]<br>0xFFFF07FE|- rs1_val == -65537<br>                                                                                          |[0x8000040c]:addi a1, a0, 2047<br> [0x80000410]:sw a1, 152(ra)<br>   |
|  58|[0x800032f0]<br>0xFFFFF77F|- rs1_val == -129<br>                                                                                            |[0x80000418]:addi a1, a0, 2048<br> [0x8000041c]:sw a1, 156(ra)<br>   |
|  59|[0x800032f4]<br>0xFFFFF6FF|- rs1_val == -257<br>                                                                                            |[0x80000424]:addi a1, a0, 2048<br> [0x80000428]:sw a1, 160(ra)<br>   |
|  60|[0x800032f8]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                            |[0x80000430]:addi a1, a0, 0<br> [0x80000434]:sw a1, 164(ra)<br>      |
|  61|[0x800032fc]<br>0x000003FE|- rs1_val == -1025<br>                                                                                           |[0x8000043c]:addi a1, a0, 2047<br> [0x80000440]:sw a1, 168(ra)<br>   |
|  62|[0x80003300]<br>0xFFFFEFFF|- rs1_val == -2049<br>                                                                                           |[0x8000044c]:addi a1, a0, 2048<br> [0x80000450]:sw a1, 172(ra)<br>   |
|  63|[0x80003304]<br>0xFFFFEDFE|- rs1_val == -4097<br>                                                                                           |[0x8000045c]:addi a1, a0, 3583<br> [0x80000460]:sw a1, 176(ra)<br>   |
|  64|[0x80003308]<br>0xFFFFDFEE|- rs1_val == -8193<br>                                                                                           |[0x8000046c]:addi a1, a0, 4079<br> [0x80000470]:sw a1, 180(ra)<br>   |
|  65|[0x8000330c]<br>0xFFFFBBFF|- rs1_val == -16385<br>                                                                                          |[0x8000047c]:addi a1, a0, 3072<br> [0x80000480]:sw a1, 184(ra)<br>   |
|  66|[0x80003310]<br>0xFFFF7FDE|- rs1_val == -32769<br>                                                                                          |[0x8000048c]:addi a1, a0, 4063<br> [0x80000490]:sw a1, 188(ra)<br>   |
|  67|[0x80003318]<br>0xFFFE03FF|- rs1_val == -131073<br>                                                                                         |[0x800004a8]:addi a1, a0, 1024<br> [0x800004ac]:sw a1, 196(ra)<br>   |
|  68|[0x8000331c]<br>0xFFFBFFFA|- rs1_val == -262145<br>                                                                                         |[0x800004b8]:addi a1, a0, 4091<br> [0x800004bc]:sw a1, 200(ra)<br>   |
|  69|[0x80003324]<br>0x00200020|- rs1_val == 2097152<br>                                                                                         |[0x800004d0]:addi a1, a0, 32<br> [0x800004d4]:sw a1, 208(ra)<br>     |
