
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000500')]      |
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 171     |
| Total Signature Updates   | 75      |
| Total Coverpoints Covered | 171      |
| STAT1                     | 69      |
| STAT2                     | 6      |
| STAT3                     | 57     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000025c]:addi s4, zero, 8
      [0x80000260]:sw s4, 28(ra)
 -- Signature Address: 0x80003278 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x0
      - rd : x20
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - imm_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800002ec]:addi a1, a0, 64
      [0x800002f0]:sw a1, 76(ra)
 -- Signature Address: 0x800032a8 Data: 0x40000040
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 64
      - rs1_val == 1073741824




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000424]:addi a1, a0, 4031
      [0x80000428]:sw a1, 164(ra)
 -- Signature Address: 0x80003300 Data: 0xFFFFFFBC
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -65
      - rs1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000047c]:addi a1, a0, 1024
      [0x80000480]:sw a1, 188(ra)
 -- Signature Address: 0x80003318 Data: 0x800003FF
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == (2**(xlen-1)-1)
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 1024
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b8]:addi a1, a0, 4087
      [0x800004bc]:sw a1, 204(ra)
 -- Signature Address: 0x80003328 Data: 0xFFFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e4]:addi a1, a0, 2048
      [0x800004e8]:sw a1, 216(ra)
 -- Signature Address: 0x80003334 Data: 0x0001F800
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == (-2**(12-1))
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -2048
      - rs1_val == 131072






```

## Details of STAT3

```
[0x800000fc]:addi s1, s1, 280

[0x80000100]:addi fp, zero, 16

[0x80000110]:addi t1, t1, 4095

[0x8000011c]:addi t4, zero, 4088

[0x8000012c]:addi a1, a1, 4095

[0x80000144]:addi s4, zero, 0

[0x80000154]:addi s8, s8, 4095

[0x80000160]:addi ra, zero, 1

[0x8000016c]:addi a3, zero, 4095

[0x8000017c]:addi a2, a2, 4095

[0x800001a0]:addi t2, zero, 2

[0x800001ac]:addi tp, zero, 4

[0x800001b8]:addi s6, zero, 8

[0x800001c4]:addi a4, zero, 32

[0x800001d0]:addi sp, zero, 64

[0x800001dc]:addi t5, zero, 128

[0x800001e8]:addi a7, zero, 256

[0x800001f8]:addi ra, ra, 104

[0x800001fc]:addi s7, zero, 512

[0x80000208]:addi s2, zero, 1024

[0x80000218]:addi t6, t6, 2048

[0x80000258]:addi zero, zero, 0

[0x800002f4]:addi a0, zero, 4094

[0x80000300]:addi a0, zero, 4093

[0x8000030c]:addi a0, zero, 4091

[0x80000318]:addi a0, zero, 4087

[0x80000324]:addi a0, zero, 4079

[0x80000330]:addi a0, zero, 4063

[0x8000033c]:addi a0, zero, 4031

[0x8000034c]:addi a0, a0, 4095

[0x8000035c]:addi a0, a0, 4095

[0x8000036c]:addi a0, a0, 4095

[0x8000037c]:addi a0, a0, 4095

[0x8000038c]:addi a0, a0, 4095

[0x8000039c]:addi a0, a0, 4095

[0x800003ac]:addi a0, a0, 4095

[0x800003bc]:addi a0, a0, 4095

[0x800003cc]:addi a0, a0, 4095

[0x800003dc]:addi a0, a0, 4095

[0x800003ec]:addi a0, a0, 1365

[0x800003fc]:addi a0, a0, 2730

[0x80000408]:addi a0, zero, 3583

[0x80000414]:addi a0, zero, 3839

[0x80000420]:addi a0, zero, 4093

[0x80000430]:addi a0, a0, 4095

[0x80000440]:addi a0, a0, 4095

[0x8000044c]:addi a0, zero, 3967

[0x80000458]:addi a0, zero, 3071

[0x80000468]:addi a0, a0, 2047

[0x80000478]:addi a0, a0, 4095

[0x80000488]:addi a0, a0, 4095

[0x80000498]:addi a0, a0, 4095

[0x800004a8]:addi a0, a0, 4095

[0x800004b4]:addi a0, zero, 4088

[0x800004c4]:addi a0, a0, 4095

[0x800004d4]:addi a0, a0, 4095

[0x800004f8]:addi zero, zero, 0



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

|s.no|        signature         |                                                 coverpoints                                                 |                                 code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000020|- rs1 : x8<br> - rd : x22<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16<br> |[0x80000104]:addi s6, fp, 16<br> [0x80000108]:sw s6, 0(s1)<br>        |
|   2|[0x80003214]<br>0x3FFFFBFE|- imm_val == -1025<br>                                                                                       |[0x80000114]:addi t1, t1, 3071<br> [0x80000118]:sw t1, 4(s1)<br>      |
|   3|[0x80003218]<br>0x00000001|- rs1 : x29<br> - rd : x3<br>                                                                                |[0x80000120]:addi gp, t4, 9<br> [0x80000124]:sw gp, 8(s1)<br>         |
|   4|[0x8000321c]<br>0xDFFFFBFE|- rd : x1<br> - rs1_val == -536870913<br>                                                                    |[0x80000130]:addi ra, a1, 3071<br> [0x80000134]:sw ra, 12(s1)<br>     |
|   5|[0x80003220]<br>0x80000003|- rs1 : x5<br> - rd : x28<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                   |[0x8000013c]:addi t3, t0, 3<br> [0x80000140]:sw t3, 16(s1)<br>        |
|   6|[0x80003224]<br>0xFFFFFDFF|- rs1 : x20<br> - rd : x18<br> - imm_val == -513<br>                                                         |[0x80000148]:addi s2, s4, 3583<br> [0x8000014c]:sw s2, 20(s1)<br>     |
|   7|[0x80003228]<br>0x8000007F|- rd : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == 128<br> - rs1_val == 2147483647<br>             |[0x80000158]:addi a0, s8, 128<br> [0x8000015c]:sw a0, 24(s1)<br>      |
|   8|[0x8000322c]<br>0x00000006|- rs1 : x1<br> - rd : x30<br> - rs1_val == 1<br>                                                             |[0x80000164]:addi t5, ra, 5<br> [0x80000168]:sw t5, 28(s1)<br>        |
|   9|[0x80003230]<br>0xFFFFF7FF|- rs1 : x13<br> - rd : x14<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                          |[0x80000170]:addi a4, a3, 2048<br> [0x80000174]:sw a4, 32(s1)<br>     |
|  10|[0x80003234]<br>0xFFBFFFFF|- rd : x23<br> - rs1_val == -4194305<br>                                                                     |[0x80000180]:addi s7, a2, 0<br> [0x80000184]:sw s7, 36(s1)<br>        |
|  11|[0x80003238]<br>0x000027FF|- rs1 : x3<br> - rd : x26<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == 8192<br>     |[0x8000018c]:addi s10, gp, 2047<br> [0x80000190]:sw s10, 40(s1)<br>   |
|  12|[0x8000323c]<br>0x00010001|- rs1 : x27<br> - rd : x25<br> - rs1_val == 65536<br>                                                        |[0x80000198]:addi s9, s11, 1<br> [0x8000019c]:sw s9, 44(s1)<br>       |
|  13|[0x80003240]<br>0x00000022|- rs1 : x7<br> - rd : x19<br> - imm_val == 32<br> - rs1_val == 2<br>                                         |[0x800001a4]:addi s3, t2, 32<br> [0x800001a8]:sw s3, 48(s1)<br>       |
|  14|[0x80003244]<br>0xFFFFFFFC|- rs1 : x4<br> - rd : x16<br> - rs1_val == 4<br>                                                             |[0x800001b0]:addi a6, tp, 4088<br> [0x800001b4]:sw a6, 52(s1)<br>     |
|  15|[0x80003248]<br>0x0000000E|- rs1 : x22<br> - rs1_val == 8<br>                                                                           |[0x800001bc]:addi fp, s6, 6<br> [0x800001c0]:sw fp, 56(s1)<br>        |
|  16|[0x8000324c]<br>0x00000575|- rs1 : x14<br> - imm_val == 1365<br> - rs1_val == 32<br>                                                    |[0x800001c8]:addi s8, a4, 1365<br> [0x800001cc]:sw s8, 60(s1)<br>     |
|  17|[0x80003250]<br>0x00000040|- rs1 : x2<br> - rd : x27<br> - rs1_val == 64<br>                                                            |[0x800001d4]:addi s11, sp, 0<br> [0x800001d8]:sw s11, 64(s1)<br>      |
|  18|[0x80003254]<br>0x00000083|- rs1 : x30<br> - rs1_val == 128<br>                                                                         |[0x800001e0]:addi a1, t5, 3<br> [0x800001e4]:sw a1, 68(s1)<br>        |
|  19|[0x80003258]<br>0x000000FF|- rs1 : x17<br> - rd : x15<br> - rs1_val == 256<br>                                                          |[0x800001ec]:addi a5, a7, 4095<br> [0x800001f0]:sw a5, 72(s1)<br>     |
|  20|[0x8000325c]<br>0x00000205|- rs1 : x23<br> - rs1_val == 512<br>                                                                         |[0x80000200]:addi a7, s7, 5<br> [0x80000204]:sw a7, 0(ra)<br>         |
|  21|[0x80003260]<br>0x00000400|- rs1 : x18<br> - rd : x31<br> - rs1_val == 1024<br>                                                         |[0x8000020c]:addi t6, s2, 0<br> [0x80000210]:sw t6, 4(ra)<br>         |
|  22|[0x80003264]<br>0x000007F6|- rs1_val == 2048<br>                                                                                        |[0x8000021c]:addi sp, t6, 4086<br> [0x80000220]:sw sp, 8(ra)<br>      |
|  23|[0x80003268]<br>0x00001000|- rs1 : x25<br>                                                                                              |[0x80000228]:addi s1, s9, 0<br> [0x8000022c]:sw s1, 12(ra)<br>        |
|  24|[0x8000326c]<br>0x00003FFC|- rs1 : x26<br> - rd : x5<br> - rs1_val == 16384<br>                                                         |[0x80000234]:addi t0, s10, 4092<br> [0x80000238]:sw t0, 16(ra)<br>    |
|  25|[0x80003270]<br>0x00008200|- rs1 : x21<br> - rs1_val == 32768<br>                                                                       |[0x80000240]:addi a2, s5, 512<br> [0x80000244]:sw a2, 20(ra)<br>      |
|  26|[0x80003274]<br>0x00000000|- rs1 : x19<br> - rd : x0<br> - rs1_val == 131072<br>                                                        |[0x8000024c]:addi zero, s3, 2048<br> [0x80000250]:sw zero, 24(ra)<br> |
|  27|[0x8000327c]<br>0x00080001|- rs1 : x15<br> - rs1_val == 524288<br>                                                                      |[0x80000268]:addi t4, a5, 1<br> [0x8000026c]:sw t4, 32(ra)<br>        |
|  28|[0x80003280]<br>0x000FFFFD|- rs1 : x10<br> - imm_val == -3<br> - rs1_val == 1048576<br>                                                 |[0x80000274]:addi tp, a0, 4093<br> [0x80000278]:sw tp, 36(ra)<br>     |
|  29|[0x80003284]<br>0x001FFFEF|- rs1 : x28<br> - imm_val == -17<br> - rs1_val == 2097152<br>                                                |[0x80000280]:addi a3, t3, 4079<br> [0x80000284]:sw a3, 40(ra)<br>     |
|  30|[0x80003288]<br>0x003FFFFA|- rs1 : x16<br> - rd : x21<br> - rs1_val == 4194304<br>                                                      |[0x8000028c]:addi s5, a6, 4090<br> [0x80000290]:sw s5, 44(ra)<br>     |
|  31|[0x8000328c]<br>0x007FFAAA|- imm_val == -1366<br> - rs1_val == 8388608<br>                                                              |[0x80000298]:addi t2, s1, 2730<br> [0x8000029c]:sw t2, 48(ra)<br>     |
|  32|[0x80003290]<br>0x00FFFFF8|- rs1_val == 16777216<br>                                                                                    |[0x800002a4]:addi a1, a0, 4088<br> [0x800002a8]:sw a1, 52(ra)<br>     |
|  33|[0x80003294]<br>0x02000004|- rs1_val == 33554432<br>                                                                                    |[0x800002b0]:addi a1, a0, 4<br> [0x800002b4]:sw a1, 56(ra)<br>        |
|  34|[0x80003298]<br>0x04000001|- rs1_val == 67108864<br>                                                                                    |[0x800002bc]:addi a1, a0, 1<br> [0x800002c0]:sw a1, 60(ra)<br>        |
|  35|[0x8000329c]<br>0x080003FF|- rs1_val == 134217728<br>                                                                                   |[0x800002c8]:addi a1, a0, 1023<br> [0x800002cc]:sw a1, 64(ra)<br>     |
|  36|[0x800032a0]<br>0x0FFFFFFB|- imm_val == -5<br> - rs1_val == 268435456<br>                                                               |[0x800002d4]:addi a1, a0, 4091<br> [0x800002d8]:sw a1, 68(ra)<br>     |
|  37|[0x800032a4]<br>0x1FFFFC00|- rs1_val == 536870912<br>                                                                                   |[0x800002e0]:addi a1, a0, 3072<br> [0x800002e4]:sw a1, 72(ra)<br>     |
|  38|[0x800032ac]<br>0x00000006|- rs1_val == -2<br>                                                                                          |[0x800002f8]:addi a1, a0, 8<br> [0x800002fc]:sw a1, 80(ra)<br>        |
|  39|[0x800032b0]<br>0xFFFFFFF3|- rs1_val == -3<br>                                                                                          |[0x80000304]:addi a1, a0, 4086<br> [0x80000308]:sw a1, 84(ra)<br>     |
|  40|[0x800032b4]<br>0xFFFFFF7A|- imm_val == -129<br> - rs1_val == -5<br>                                                                    |[0x80000310]:addi a1, a0, 3967<br> [0x80000314]:sw a1, 88(ra)<br>     |
|  41|[0x800032b8]<br>0xFFFFFFED|- rs1_val == -9<br>                                                                                          |[0x8000031c]:addi a1, a0, 4086<br> [0x80000320]:sw a1, 92(ra)<br>     |
|  42|[0x800032bc]<br>0xFFFFFBEE|- rs1_val == -17<br>                                                                                         |[0x80000328]:addi a1, a0, 3071<br> [0x8000032c]:sw a1, 96(ra)<br>     |
|  43|[0x800032c0]<br>0xFFFFFFDD|- rs1_val == -33<br>                                                                                         |[0x80000334]:addi a1, a0, 4094<br> [0x80000338]:sw a1, 100(ra)<br>    |
|  44|[0x800032c4]<br>0x000007BE|- rs1_val == -65<br>                                                                                         |[0x80000340]:addi a1, a0, 2047<br> [0x80000344]:sw a1, 104(ra)<br>    |
|  45|[0x800032c8]<br>0xFFF80008|- rs1_val == -524289<br>                                                                                     |[0x80000350]:addi a1, a0, 9<br> [0x80000354]:sw a1, 108(ra)<br>       |
|  46|[0x800032cc]<br>0xFFF00003|- rs1_val == -1048577<br>                                                                                    |[0x80000360]:addi a1, a0, 4<br> [0x80000364]:sw a1, 112(ra)<br>       |
|  47|[0x800032d0]<br>0xFFDFFFEE|- rs1_val == -2097153<br>                                                                                    |[0x80000370]:addi a1, a0, 4079<br> [0x80000374]:sw a1, 116(ra)<br>    |
|  48|[0x800032d4]<br>0xFF7FFFFD|- rs1_val == -8388609<br>                                                                                    |[0x80000380]:addi a1, a0, 4094<br> [0x80000384]:sw a1, 120(ra)<br>    |
|  49|[0x800032d8]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                   |[0x80000390]:addi a1, a0, 0<br> [0x80000394]:sw a1, 124(ra)<br>       |
|  50|[0x800032dc]<br>0xFE000002|- rs1_val == -33554433<br>                                                                                   |[0x800003a0]:addi a1, a0, 3<br> [0x800003a4]:sw a1, 128(ra)<br>       |
|  51|[0x800032e0]<br>0xFBFFFAA9|- rs1_val == -67108865<br>                                                                                   |[0x800003b0]:addi a1, a0, 2730<br> [0x800003b4]:sw a1, 132(ra)<br>    |
|  52|[0x800032e4]<br>0xF7FFFFFB|- rs1_val == -134217729<br>                                                                                  |[0x800003c0]:addi a1, a0, 4092<br> [0x800003c4]:sw a1, 136(ra)<br>    |
|  53|[0x800032e8]<br>0xF0000004|- rs1_val == -268435457<br>                                                                                  |[0x800003d0]:addi a1, a0, 5<br> [0x800003d4]:sw a1, 140(ra)<br>       |
|  54|[0x800032ec]<br>0xC000000F|- rs1_val == -1073741825<br>                                                                                 |[0x800003e0]:addi a1, a0, 16<br> [0x800003e4]:sw a1, 144(ra)<br>      |
|  55|[0x800032f0]<br>0x55555550|- rs1_val == 1431655765<br>                                                                                  |[0x800003f0]:addi a1, a0, 4091<br> [0x800003f4]:sw a1, 148(ra)<br>    |
|  56|[0x800032f4]<br>0xAAAAAA89|- rs1_val == -1431655766<br>                                                                                 |[0x80000400]:addi a1, a0, 4063<br> [0x80000404]:sw a1, 152(ra)<br>    |
|  57|[0x800032f8]<br>0xFFFFFE01|- rs1_val == -513<br>                                                                                        |[0x8000040c]:addi a1, a0, 2<br> [0x80000410]:sw a1, 156(ra)<br>       |
|  58|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                        |[0x80000418]:addi a1, a0, 256<br> [0x8000041c]:sw a1, 160(ra)<br>     |
|  59|[0x80003304]<br>0xFFFFBEFE|- rs1_val == -16385<br>                                                                                      |[0x80000434]:addi a1, a0, 3839<br> [0x80000438]:sw a1, 168(ra)<br>    |
|  60|[0x80003308]<br>0xFFFEFFBE|- rs1_val == -65537<br>                                                                                      |[0x80000444]:addi a1, a0, 4031<br> [0x80000448]:sw a1, 172(ra)<br>    |
|  61|[0x8000330c]<br>0xFFFFFF83|- rs1_val == -129<br>                                                                                        |[0x80000450]:addi a1, a0, 4<br> [0x80000454]:sw a1, 176(ra)<br>       |
|  62|[0x80003310]<br>0xFFFFFBFB|- rs1_val == -1025<br>                                                                                       |[0x8000045c]:addi a1, a0, 4092<br> [0x80000460]:sw a1, 180(ra)<br>    |
|  63|[0x80003314]<br>0xFFFFF5FE|- rs1_val == -2049<br>                                                                                       |[0x8000046c]:addi a1, a0, 3583<br> [0x80000470]:sw a1, 184(ra)<br>    |
|  64|[0x8000331c]<br>0xFFFFF7FE|- rs1_val == -4097<br>                                                                                       |[0x8000048c]:addi a1, a0, 2047<br> [0x80000490]:sw a1, 192(ra)<br>    |
|  65|[0x80003320]<br>0xFFFFE03F|- rs1_val == -8193<br>                                                                                       |[0x8000049c]:addi a1, a0, 64<br> [0x800004a0]:sw a1, 196(ra)<br>      |
|  66|[0x80003324]<br>0xFFFF8001|- rs1_val == -32769<br>                                                                                      |[0x800004ac]:addi a1, a0, 2<br> [0x800004b0]:sw a1, 200(ra)<br>       |
|  67|[0x8000332c]<br>0xFFFDFFFA|- rs1_val == -131073<br>                                                                                     |[0x800004c8]:addi a1, a0, 4091<br> [0x800004cc]:sw a1, 208(ra)<br>    |
|  68|[0x80003330]<br>0xFFFBFFF5|- rs1_val == -262145<br>                                                                                     |[0x800004d8]:addi a1, a0, 4086<br> [0x800004dc]:sw a1, 212(ra)<br>    |
|  69|[0x80003338]<br>0x00040008|- rs1_val == 262144<br>                                                                                      |[0x800004f0]:addi a1, a0, 8<br> [0x800004f4]:sw a1, 220(ra)<br>       |
