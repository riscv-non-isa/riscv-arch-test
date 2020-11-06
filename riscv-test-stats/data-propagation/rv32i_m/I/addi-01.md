
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
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 76      |
| STAT1                     | 70      |
| STAT2                     | 6      |
| STAT3                     | 59     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800002f0]:addi a1, a0, 4095
      [0x800002f4]:sw a1, 72(ra)
 -- Signature Address: 0x800032a0 Data: 0x3FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - rs1_val == 1073741824




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000428]:addi a1, a0, 256
      [0x8000042c]:sw a1, 156(ra)
 -- Signature Address: 0x800032f4 Data: 0x800000FF
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == (2**(xlen-1)-1)
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 256
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000460]:addi a1, a0, 4087
      [0x80000464]:sw a1, 172(ra)
 -- Signature Address: 0x80003304 Data: 0xFFFFFFF2
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -9
      - rs1_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000494]:addi a1, a0, 4094
      [0x80000498]:sw a1, 188(ra)
 -- Signature Address: 0x80003314 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e0]:addi a1, a0, 4063
      [0x800004e4]:sw a1, 208(ra)
 -- Signature Address: 0x80003328 Data: 0x0000005F
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -33
      - rs1_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004fc]:addi a1, a0, 1024
      [0x80000500]:sw a1, 216(ra)
 -- Signature Address: 0x80003330 Data: 0x00004400
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 1024
      - rs1_val == 16384






```

## Details of STAT3

```
[0x800000fc]:addi a0, a0, 268

[0x80000100]:addi a2, zero, 3967

[0x8000010c]:addi s1, zero, 9

[0x80000118]:addi t0, zero, 3

[0x80000128]:addi zero, zero, 2047

[0x80000140]:addi s5, zero, 0

[0x80000150]:addi s11, s11, 4095

[0x8000015c]:addi s2, zero, 1

[0x8000016c]:addi s7, s7, 4095

[0x80000178]:addi sp, zero, 3583

[0x80000184]:addi s10, zero, 2

[0x80000190]:addi t4, zero, 4

[0x8000019c]:addi a6, zero, 8

[0x800001a8]:addi a4, zero, 16

[0x800001b4]:addi ra, zero, 32

[0x800001c0]:addi fp, zero, 64

[0x800001cc]:addi tp, zero, 128

[0x800001d8]:addi s4, zero, 256

[0x800001e4]:addi s8, zero, 512

[0x800001f0]:addi a3, zero, 1024

[0x80000200]:addi gp, gp, 2048

[0x80000210]:addi ra, ra, 76
[0x80000214]:lui s6, 1

[0x800002f8]:addi a0, zero, 4094

[0x80000304]:addi a0, zero, 4093

[0x80000310]:addi a0, zero, 4091

[0x8000031c]:addi a0, zero, 4087

[0x80000328]:addi a0, zero, 4079

[0x80000334]:addi a0, zero, 4063

[0x80000344]:addi a0, a0, 4095

[0x80000354]:addi a0, a0, 4095

[0x80000364]:addi a0, a0, 4095

[0x80000374]:addi a0, a0, 4095

[0x80000384]:addi a0, a0, 4095

[0x80000394]:addi a0, a0, 4095

[0x800003a4]:addi a0, a0, 4095

[0x800003b4]:addi a0, a0, 4095

[0x800003c4]:addi a0, a0, 4095

[0x800003d4]:addi a0, a0, 4095

[0x800003e4]:addi a0, a0, 4095

[0x800003f4]:addi a0, a0, 4095

[0x80000404]:addi a0, a0, 1365

[0x80000414]:addi a0, a0, 2730

[0x80000424]:addi a0, a0, 4095

[0x80000434]:addi a0, a0, 4095

[0x80000440]:addi a0, zero, 4031

[0x80000450]:addi a0, a0, 4095

[0x8000045c]:addi a0, zero, 4091

[0x80000468]:addi a0, zero, 3839

[0x80000474]:addi a0, zero, 3071

[0x80000484]:addi a0, a0, 4095

[0x80000490]:addi a0, zero, 6

[0x800004a0]:addi a0, a0, 4095

[0x800004b0]:addi a0, a0, 4095

[0x800004c0]:addi a0, a0, 4095

[0x800004d0]:addi a0, a0, 4095

[0x800004dc]:addi a0, zero, 128

[0x800004ec]:addi a0, a0, 2047

[0x80000504]:addi zero, zero, 0

[0x80000508]:addi zero, zero, 0



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

|s.no|        signature         |                                                    coverpoints                                                    |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFEFE|- rs1 : x12<br> - rd : x26<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -129<br>    |[0x80000104]:addi s10, a2, 3967<br> [0x80000108]:sw s10, 0(a0)<br>   |
|   2|[0x80003208]<br>0xFFFFF809|- rs1 : x9<br> - imm_val == (-2**(12-1))<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -2048<br>              |[0x80000110]:addi s1, s1, 2048<br> [0x80000114]:sw s1, 4(a0)<br>     |
|   3|[0x8000320c]<br>0x00000203|- rs1 : x5<br> - rd : x1<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 512<br>                                |[0x8000011c]:addi ra, t0, 512<br> [0x80000120]:sw ra, 8(a0)<br>      |
|   4|[0x80003210]<br>0x00000006|- rd : x25<br>                                                                                                     |[0x8000012c]:addi s9, zero, 6<br> [0x80000130]:sw s9, 12(a0)<br>     |
|   5|[0x80003214]<br>0x7FFFFBFF|- rs1 : x11<br> - rd : x22<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -1025<br> - rs1_val == -2147483648<br> |[0x80000138]:addi s6, a1, 3071<br> [0x8000013c]:sw s6, 16(a0)<br>    |
|   6|[0x80003218]<br>0xFFFFFFFD|- rs1 : x21<br> - rd : x2<br> - imm_val == -3<br>                                                                  |[0x80000144]:addi sp, s5, 4093<br> [0x80000148]:sw sp, 20(a0)<br>    |
|   7|[0x8000321c]<br>0x80000002|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                       |[0x80000154]:addi t0, s11, 3<br> [0x80000158]:sw t0, 24(a0)<br>      |
|   8|[0x80003220]<br>0x00000800|- rs1 : x18<br> - rd : x29<br> - rs1_val == 1<br>                                                                  |[0x80000160]:addi t4, s2, 2047<br> [0x80000164]:sw t4, 28(a0)<br>    |
|   9|[0x80003224]<br>0x3FFFFFFF|- rd : x6<br>                                                                                                      |[0x80000170]:addi t1, s7, 0<br> [0x80000174]:sw t1, 32(a0)<br>       |
|  10|[0x80003228]<br>0xFFFFFE00|- rs1 : x2<br> - rd : x17<br> - rs1_val == -513<br>                                                                |[0x8000017c]:addi a7, sp, 1<br> [0x80000180]:sw a7, 36(a0)<br>       |
|  11|[0x8000322c]<br>0x00000022|- rs1 : x26<br> - rd : x30<br> - imm_val == 32<br> - rs1_val == 2<br>                                              |[0x80000188]:addi t5, s10, 32<br> [0x8000018c]:sw t5, 40(a0)<br>     |
|  12|[0x80003230]<br>0xFFFFFFFC|- rs1 : x29<br> - rd : x19<br> - rs1_val == 4<br>                                                                  |[0x80000194]:addi s3, t4, 4088<br> [0x80000198]:sw s3, 44(a0)<br>    |
|  13|[0x80003234]<br>0xFFFFFFF7|- rs1 : x16<br> - rd : x14<br> - imm_val == -17<br> - rs1_val == 8<br>                                             |[0x800001a0]:addi a4, a6, 4079<br> [0x800001a4]:sw a4, 48(a0)<br>    |
|  14|[0x80003238]<br>0x00000014|- rs1 : x14<br> - rs1_val == 16<br>                                                                                |[0x800001ac]:addi a2, a4, 4<br> [0x800001b0]:sw a2, 52(a0)<br>       |
|  15|[0x8000323c]<br>0x000000A0|- rs1 : x1<br> - imm_val == 128<br> - rs1_val == 32<br>                                                            |[0x800001b8]:addi s11, ra, 128<br> [0x800001bc]:sw s11, 56(a0)<br>   |
|  16|[0x80003240]<br>0x0000003C|- rs1 : x8<br> - rd : x4<br> - rs1_val == 64<br>                                                                   |[0x800001c4]:addi tp, fp, 4092<br> [0x800001c8]:sw tp, 60(a0)<br>    |
|  17|[0x80003244]<br>0x000005D5|- rs1 : x4<br> - imm_val == 1365<br> - rs1_val == 128<br>                                                          |[0x800001d0]:addi a6, tp, 1365<br> [0x800001d4]:sw a6, 64(a0)<br>    |
|  18|[0x80003248]<br>0x000000FA|- rs1 : x20<br> - rd : x31<br> - rs1_val == 256<br>                                                                |[0x800001dc]:addi t6, s4, 4090<br> [0x800001e0]:sw t6, 68(a0)<br>    |
|  19|[0x8000324c]<br>0x000001F8|- rs1 : x24<br> - rd : x7<br> - rs1_val == 512<br>                                                                 |[0x800001e8]:addi t2, s8, 4088<br> [0x800001ec]:sw t2, 72(a0)<br>    |
|  20|[0x80003250]<br>0x000003EF|- rs1 : x13<br> - rs1_val == 1024<br>                                                                              |[0x800001f4]:addi s7, a3, 4079<br> [0x800001f8]:sw s7, 76(a0)<br>    |
|  21|[0x80003254]<br>0x000002AA|- imm_val == -1366<br> - rs1_val == 2048<br>                                                                       |[0x80000204]:addi a3, gp, 2730<br> [0x80000208]:sw a3, 80(a0)<br>    |
|  22|[0x80003258]<br>0x00001010|- rs1 : x22<br> - rd : x15<br>                                                                                     |[0x80000218]:addi a5, s6, 16<br> [0x8000021c]:sw a5, 0(ra)<br>       |
|  23|[0x8000325c]<br>0x00001EFF|- rs1 : x28<br> - imm_val == -257<br> - rs1_val == 8192<br>                                                        |[0x80000224]:addi s4, t3, 3839<br> [0x80000228]:sw s4, 4(ra)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1_val == 16384<br>                                                                                             |[0x80000230]:addi zero, a0, 1024<br> [0x80000234]:sw zero, 8(ra)<br> |
|  25|[0x80003264]<br>0x00007FFD|- rs1 : x15<br> - rd : x28<br> - rs1_val == 32768<br>                                                              |[0x8000023c]:addi t3, a5, 4093<br> [0x80000240]:sw t3, 12(ra)<br>    |
|  26|[0x80003268]<br>0x00010555|- rs1 : x17<br> - rs1_val == 65536<br>                                                                             |[0x80000248]:addi s2, a7, 1365<br> [0x8000024c]:sw s2, 16(ra)<br>    |
|  27|[0x8000326c]<br>0x00020020|- rs1 : x19<br> - rs1_val == 131072<br>                                                                            |[0x80000254]:addi a0, s3, 32<br> [0x80000258]:sw a0, 20(ra)<br>      |
|  28|[0x80003270]<br>0x00040200|- rs1 : x25<br> - rs1_val == 262144<br>                                                                            |[0x80000260]:addi gp, s9, 512<br> [0x80000264]:sw gp, 24(ra)<br>     |
|  29|[0x80003274]<br>0x00080006|- rs1 : x7<br> - rs1_val == 524288<br>                                                                             |[0x8000026c]:addi s8, t2, 6<br> [0x80000270]:sw s8, 28(ra)<br>       |
|  30|[0x80003278]<br>0x000FFFFD|- rs1 : x31<br> - rd : x11<br> - rs1_val == 1048576<br>                                                            |[0x80000278]:addi a1, t6, 4093<br> [0x8000027c]:sw a1, 32(ra)<br>    |
|  31|[0x8000327c]<br>0x001FFF7F|- rs1 : x6<br> - rs1_val == 2097152<br>                                                                            |[0x80000284]:addi fp, t1, 3967<br> [0x80000288]:sw fp, 36(ra)<br>    |
|  32|[0x80003280]<br>0x00400020|- rs1 : x30<br> - rs1_val == 4194304<br>                                                                           |[0x80000290]:addi s5, t5, 32<br> [0x80000294]:sw s5, 40(ra)<br>      |
|  33|[0x80003284]<br>0x007FFFBF|- imm_val == -65<br> - rs1_val == 8388608<br>                                                                      |[0x8000029c]:addi a1, a0, 4031<br> [0x800002a0]:sw a1, 44(ra)<br>    |
|  34|[0x80003288]<br>0x01000000|- rs1_val == 16777216<br>                                                                                          |[0x800002a8]:addi a1, a0, 0<br> [0x800002ac]:sw a1, 48(ra)<br>       |
|  35|[0x8000328c]<br>0x02000009|- rs1_val == 33554432<br>                                                                                          |[0x800002b4]:addi a1, a0, 9<br> [0x800002b8]:sw a1, 52(ra)<br>       |
|  36|[0x80003290]<br>0x03FFFDFF|- rs1_val == 67108864<br>                                                                                          |[0x800002c0]:addi a1, a0, 3583<br> [0x800002c4]:sw a1, 56(ra)<br>    |
|  37|[0x80003294]<br>0x07FFFDFF|- rs1_val == 134217728<br>                                                                                         |[0x800002cc]:addi a1, a0, 3583<br> [0x800002d0]:sw a1, 60(ra)<br>    |
|  38|[0x80003298]<br>0x0FFFFF7F|- rs1_val == 268435456<br>                                                                                         |[0x800002d8]:addi a1, a0, 3967<br> [0x800002dc]:sw a1, 64(ra)<br>    |
|  39|[0x8000329c]<br>0x20000002|- rs1_val == 536870912<br>                                                                                         |[0x800002e4]:addi a1, a0, 2<br> [0x800002e8]:sw a1, 68(ra)<br>       |
|  40|[0x800032a4]<br>0xFFFFFFFD|- rs1_val == -2<br>                                                                                                |[0x800002fc]:addi a1, a0, 4095<br> [0x80000300]:sw a1, 76(ra)<br>    |
|  41|[0x800032a8]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                |[0x80000308]:addi a1, a0, 0<br> [0x8000030c]:sw a1, 80(ra)<br>       |
|  42|[0x800032ac]<br>0xFFFFFDFA|- rs1_val == -5<br>                                                                                                |[0x80000314]:addi a1, a0, 3583<br> [0x80000318]:sw a1, 84(ra)<br>    |
|  43|[0x800032b0]<br>0xFFFFFFEF|- rs1_val == -9<br>                                                                                                |[0x80000320]:addi a1, a0, 4088<br> [0x80000324]:sw a1, 88(ra)<br>    |
|  44|[0x800032b4]<br>0x000003EE|- rs1_val == -17<br>                                                                                               |[0x8000032c]:addi a1, a0, 1023<br> [0x80000330]:sw a1, 92(ra)<br>    |
|  45|[0x800032b8]<br>0xFFFFFFE6|- rs1_val == -33<br>                                                                                               |[0x80000338]:addi a1, a0, 7<br> [0x8000033c]:sw a1, 96(ra)<br>       |
|  46|[0x800032bc]<br>0xFFF7FFEE|- rs1_val == -524289<br>                                                                                           |[0x80000348]:addi a1, a0, 4079<br> [0x8000034c]:sw a1, 100(ra)<br>   |
|  47|[0x800032c0]<br>0xFFEFFFFE|- rs1_val == -1048577<br>                                                                                          |[0x80000358]:addi a1, a0, 4095<br> [0x8000035c]:sw a1, 104(ra)<br>   |
|  48|[0x800032c4]<br>0xFFDFFDFE|- rs1_val == -2097153<br>                                                                                          |[0x80000368]:addi a1, a0, 3583<br> [0x8000036c]:sw a1, 108(ra)<br>   |
|  49|[0x800032c8]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                          |[0x80000378]:addi a1, a0, 0<br> [0x8000037c]:sw a1, 112(ra)<br>      |
|  50|[0x800032cc]<br>0xFF7FFFBE|- rs1_val == -8388609<br>                                                                                          |[0x80000388]:addi a1, a0, 4031<br> [0x8000038c]:sw a1, 116(ra)<br>   |
|  51|[0x800032d0]<br>0xFEFFFAA9|- rs1_val == -16777217<br>                                                                                         |[0x80000398]:addi a1, a0, 2730<br> [0x8000039c]:sw a1, 120(ra)<br>   |
|  52|[0x800032d4]<br>0xFDFFFAA9|- rs1_val == -33554433<br>                                                                                         |[0x800003a8]:addi a1, a0, 2730<br> [0x800003ac]:sw a1, 124(ra)<br>   |
|  53|[0x800032d8]<br>0xFBFFFFFC|- rs1_val == -67108865<br>                                                                                         |[0x800003b8]:addi a1, a0, 4093<br> [0x800003bc]:sw a1, 128(ra)<br>   |
|  54|[0x800032dc]<br>0xF8000002|- rs1_val == -134217729<br>                                                                                        |[0x800003c8]:addi a1, a0, 3<br> [0x800003cc]:sw a1, 132(ra)<br>      |
|  55|[0x800032e0]<br>0xF0000554|- rs1_val == -268435457<br>                                                                                        |[0x800003d8]:addi a1, a0, 1365<br> [0x800003dc]:sw a1, 136(ra)<br>   |
|  56|[0x800032e4]<br>0xDFFFFFEE|- rs1_val == -536870913<br>                                                                                        |[0x800003e8]:addi a1, a0, 4079<br> [0x800003ec]:sw a1, 140(ra)<br>   |
|  57|[0x800032e8]<br>0xC00007FE|- rs1_val == -1073741825<br>                                                                                       |[0x800003f8]:addi a1, a0, 2047<br> [0x800003fc]:sw a1, 144(ra)<br>   |
|  58|[0x800032ec]<br>0x55555595|- rs1_val == 1431655765<br>                                                                                        |[0x80000408]:addi a1, a0, 64<br> [0x8000040c]:sw a1, 148(ra)<br>     |
|  59|[0x800032f0]<br>0xAAAAAAB2|- rs1_val == -1431655766<br>                                                                                       |[0x80000418]:addi a1, a0, 8<br> [0x8000041c]:sw a1, 152(ra)<br>      |
|  60|[0x800032f8]<br>0xFFFFDFFA|- rs1_val == -8193<br>                                                                                             |[0x80000438]:addi a1, a0, 4091<br> [0x8000043c]:sw a1, 160(ra)<br>   |
|  61|[0x800032fc]<br>0xFFFFFEBE|- rs1_val == -65<br>                                                                                               |[0x80000444]:addi a1, a0, 3839<br> [0x80000448]:sw a1, 164(ra)<br>   |
|  62|[0x80003300]<br>0xFFFBFBFF|- rs1_val == -262145<br>                                                                                           |[0x80000454]:addi a1, a0, 3072<br> [0x80000458]:sw a1, 168(ra)<br>   |
|  63|[0x80003308]<br>0xFFFFF6FF|- rs1_val == -257<br>                                                                                              |[0x8000046c]:addi a1, a0, 2048<br> [0x80000470]:sw a1, 176(ra)<br>   |
|  64|[0x8000330c]<br>0x000003FE|- rs1_val == -1025<br>                                                                                             |[0x80000478]:addi a1, a0, 2047<br> [0x8000047c]:sw a1, 180(ra)<br>   |
|  65|[0x80003310]<br>0xFFFFF0FF|- rs1_val == -4097<br>                                                                                             |[0x80000488]:addi a1, a0, 256<br> [0x8000048c]:sw a1, 184(ra)<br>    |
|  66|[0x80003318]<br>0xFFFFC01F|- rs1_val == -16385<br>                                                                                            |[0x800004a4]:addi a1, a0, 32<br> [0x800004a8]:sw a1, 192(ra)<br>     |
|  67|[0x8000331c]<br>0xFFFF7FF7|- rs1_val == -32769<br>                                                                                            |[0x800004b4]:addi a1, a0, 4088<br> [0x800004b8]:sw a1, 196(ra)<br>   |
|  68|[0x80003320]<br>0xFFFF0005|- rs1_val == -65537<br>                                                                                            |[0x800004c4]:addi a1, a0, 6<br> [0x800004c8]:sw a1, 200(ra)<br>      |
|  69|[0x80003324]<br>0xFFFDFBFF|- rs1_val == -131073<br>                                                                                           |[0x800004d4]:addi a1, a0, 3072<br> [0x800004d8]:sw a1, 204(ra)<br>   |
|  70|[0x8000332c]<br>0xFFFFF805|- rs1_val == -2049<br>                                                                                             |[0x800004f0]:addi a1, a0, 6<br> [0x800004f4]:sw a1, 212(ra)<br>      |
