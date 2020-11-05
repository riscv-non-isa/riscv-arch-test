
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
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 73      |
| STAT1                     | 67      |
| STAT2                     | 6      |
| STAT3                     | 53     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000021c]:addi tp, zero, 4086
      [0x80000220]:sw tp, 0(t0)
 -- Signature Address: 0x80003264 Data: 0xFFFFFFF6
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x0
      - rd : x4
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003ec]:addi a1, a0, 4
      [0x800003f0]:sw a1, 136(t0)
 -- Signature Address: 0x800032ec Data: 0x40000003
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003f8]:addi a1, a0, 8
      [0x800003fc]:sw a1, 140(t0)
 -- Signature Address: 0x800032f0 Data: 0x02000008
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 8
      - rs1_val == 33554432




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000404]:addi a1, a0, 1365
      [0x80000408]:sw a1, 144(t0)
 -- Signature Address: 0x800032f4 Data: 0x00000552
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val > 0
      - imm_val == 1365
      - rs1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000046c]:addi a1, a0, 4094
      [0x80000470]:sw a1, 176(t0)
 -- Signature Address: 0x80003314 Data: 0x03FFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -2
      - rs1_val == 67108864




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c8]:addi a1, a0, 2048
      [0x800004cc]:sw a1, 200(t0)
 -- Signature Address: 0x8000332c Data: 0xFFFFF820
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == (-2**(12-1))
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -2048
      - rs1_val == 32






```

## Details of STAT3

```
[0x800000fc]:addi tp, tp, 280

[0x80000100]:addi t2, zero, 4087

[0x8000010c]:addi t0, zero, 4063

[0x80000118]:addi a4, zero, 2

[0x80000124]:addi a3, zero, 16

[0x80000134]:addi s3, s3, 4095

[0x8000014c]:addi s2, zero, 0

[0x8000015c]:addi s1, s1, 4095

[0x80000168]:addi sp, zero, 1

[0x80000174]:addi s7, zero, 32

[0x80000180]:addi s9, zero, 3967

[0x80000190]:addi t1, t1, 4095

[0x8000019c]:addi t5, zero, 4

[0x800001a8]:addi fp, zero, 8

[0x800001b4]:addi ra, zero, 64

[0x800001c0]:addi s6, zero, 128

[0x800001cc]:addi a6, zero, 256

[0x800001d8]:addi s11, zero, 512

[0x800001e4]:addi a5, zero, 1024

[0x800001f4]:addi t3, t3, 2048

[0x80000210]:addi t0, t0, 88
[0x80000214]:lui zero, 2

[0x80000218]:addi zero, zero, 0

[0x800002f0]:addi a0, zero, 4094

[0x800002fc]:addi a0, zero, 4093

[0x80000308]:addi a0, zero, 4091

[0x80000318]:addi a0, a0, 4095

[0x80000328]:addi a0, a0, 4095

[0x80000338]:addi a0, a0, 4095

[0x80000348]:addi a0, a0, 4095

[0x80000358]:addi a0, a0, 4095

[0x80000368]:addi a0, a0, 4095

[0x80000378]:addi a0, a0, 4095

[0x80000388]:addi a0, a0, 4095

[0x80000398]:addi a0, a0, 4095

[0x800003a8]:addi a0, a0, 4095

[0x800003b8]:addi a0, a0, 4095

[0x800003c8]:addi a0, a0, 1365

[0x800003d8]:addi a0, a0, 2730

[0x800003e8]:addi a0, a0, 4095

[0x80000400]:addi a0, zero, 4093

[0x8000040c]:addi a0, zero, 4079

[0x80000418]:addi a0, zero, 3839

[0x80000424]:addi a0, zero, 4031

[0x80000430]:addi a0, zero, 3583

[0x8000043c]:addi a0, zero, 3071

[0x8000044c]:addi a0, a0, 2047

[0x8000045c]:addi a0, a0, 4095

[0x80000478]:addi a0, a0, 4095

[0x80000488]:addi a0, a0, 4095

[0x80000498]:addi a0, a0, 4095

[0x800004a8]:addi a0, a0, 4095

[0x800004b8]:addi a0, a0, 4095

[0x800004c4]:addi a0, zero, 32



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
|   1|[0x80003210]<br>0xFFFFFFEE|- rs1 : x7<br> - rd : x19<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -9<br> |[0x80000104]:addi s3, t2, 4087<br> [0x80000108]:sw s3, 0(tp)<br>      |
|   2|[0x80003214]<br>0xFFFFFFCE|- rs1 : x5<br> - imm_val == -17<br> - rs1_val == -33<br>                                                     |[0x80000110]:addi t0, t0, 4079<br> [0x80000114]:sw t0, 4(tp)<br>      |
|   3|[0x80003218]<br>0x00000009|- rs1 : x14<br> - rd : x18<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 2<br>                          |[0x8000011c]:addi s2, a4, 7<br> [0x80000120]:sw s2, 8(tp)<br>         |
|   4|[0x8000321c]<br>0x00000009|- rs1 : x13<br> - rd : x3<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 16<br>                          |[0x80000128]:addi gp, a3, 4089<br> [0x8000012c]:sw gp, 12(tp)<br>     |
|   5|[0x80003220]<br>0xF80003FE|- rd : x8<br> - rs1_val == -134217729<br>                                                                    |[0x80000138]:addi fp, s3, 1023<br> [0x8000013c]:sw fp, 16(tp)<br>     |
|   6|[0x80003224]<br>0x80000009|- rs1 : x21<br> - rd : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                  |[0x80000144]:addi a2, s5, 9<br> [0x80000148]:sw a2, 20(tp)<br>        |
|   7|[0x80003228]<br>0xFFFFFBFF|- rs1 : x18<br> - rd : x25<br> - imm_val == -1025<br>                                                        |[0x80000150]:addi s9, s2, 3071<br> [0x80000154]:sw s9, 24(tp)<br>     |
|   8|[0x8000322c]<br>0x7FFFFFFF|- rd : x31<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                  |[0x80000160]:addi t6, s1, 0<br> [0x80000164]:sw t6, 28(tp)<br>        |
|   9|[0x80003230]<br>0xFFFFFFE0|- rs1 : x2<br> - rd : x17<br> - rs1_val == 1<br>                                                             |[0x8000016c]:addi a7, sp, 4063<br> [0x80000170]:sw a7, 32(tp)<br>     |
|  10|[0x80003234]<br>0x00000000|- rs1 : x23<br> - rd : x0<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 32<br>       |[0x80000178]:addi zero, s7, 2048<br> [0x8000017c]:sw zero, 36(tp)<br> |
|  11|[0x80003238]<br>0x0000077E|- rs1 : x25<br> - rd : x6<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -129<br>     |[0x80000184]:addi t1, s9, 2047<br> [0x80000188]:sw t1, 40(tp)<br>     |
|  12|[0x8000323c]<br>0xFFFFE000|- rd : x10<br> - rs1_val == -8193<br>                                                                        |[0x80000194]:addi a0, t1, 1<br> [0x80000198]:sw a0, 44(tp)<br>        |
|  13|[0x80003240]<br>0xFFFFFFFF|- rs1 : x30<br> - rd : x27<br> - imm_val == -5<br> - rs1_val == 4<br>                                        |[0x800001a0]:addi s11, t5, 4091<br> [0x800001a4]:sw s11, 48(tp)<br>   |
|  14|[0x80003244]<br>0x00000048|- rs1 : x8<br> - rd : x15<br> - imm_val == 64<br> - rs1_val == 8<br>                                         |[0x800001ac]:addi a5, fp, 64<br> [0x800001b0]:sw a5, 52(tp)<br>       |
|  15|[0x80003248]<br>0x00000140|- rs1 : x1<br> - rd : x22<br> - imm_val == 256<br> - rs1_val == 64<br>                                       |[0x800001b8]:addi s6, ra, 256<br> [0x800001bc]:sw s6, 56(tp)<br>      |
|  16|[0x8000324c]<br>0x00000077|- rs1 : x22<br> - rd : x20<br> - rs1_val == 128<br>                                                          |[0x800001c4]:addi s4, s6, 4087<br> [0x800001c8]:sw s4, 60(tp)<br>     |
|  17|[0x80003250]<br>0x00000200|- rs1 : x16<br> - rd : x29<br> - rs1_val == 256<br>                                                          |[0x800001d0]:addi t4, a6, 256<br> [0x800001d4]:sw t4, 64(tp)<br>      |
|  18|[0x80003254]<br>0x00000280|- rs1 : x27<br> - rs1_val == 512<br>                                                                         |[0x800001dc]:addi a6, s11, 128<br> [0x800001e0]:sw a6, 68(tp)<br>     |
|  19|[0x80003258]<br>0x00000000|- rs1 : x15<br> - rd : x21<br> - rs1_val == 1024<br>                                                         |[0x800001e8]:addi s5, a5, 3072<br> [0x800001ec]:sw s5, 72(tp)<br>     |
|  20|[0x8000325c]<br>0x000007F6|- rs1_val == 2048<br>                                                                                        |[0x800001f8]:addi t2, t3, 4086<br> [0x800001fc]:sw t2, 76(tp)<br>     |
|  21|[0x80003260]<br>0x00000FFD|- rs1 : x26<br> - imm_val == -3<br>                                                                          |[0x80000204]:addi a3, s10, 4093<br> [0x80000208]:sw a3, 80(tp)<br>    |
|  22|[0x80003268]<br>0x00003C00|- rs1 : x29<br> - rs1_val == 16384<br>                                                                       |[0x80000228]:addi t5, t4, 3072<br> [0x8000022c]:sw t5, 4(t0)<br>      |
|  23|[0x8000326c]<br>0x00008002|- rs1 : x24<br> - rs1_val == 32768<br>                                                                       |[0x80000234]:addi s7, s8, 2<br> [0x80000238]:sw s7, 8(t0)<br>         |
|  24|[0x80003270]<br>0x0000F800|- rs1 : x20<br> - rs1_val == 65536<br>                                                                       |[0x80000240]:addi ra, s4, 2048<br> [0x80000244]:sw ra, 12(t0)<br>     |
|  25|[0x80003274]<br>0x0001FDFF|- rs1 : x10<br> - imm_val == -513<br> - rs1_val == 131072<br>                                                |[0x8000024c]:addi s1, a0, 3583<br> [0x80000250]:sw s1, 16(t0)<br>     |
|  26|[0x80003278]<br>0x0003FEFF|- rs1 : x12<br> - rd : x11<br> - imm_val == -257<br> - rs1_val == 262144<br>                                 |[0x80000258]:addi a1, a2, 3839<br> [0x8000025c]:sw a1, 20(t0)<br>     |
|  27|[0x8000327c]<br>0x00080400|- rs1 : x3<br> - rd : x24<br> - rs1_val == 524288<br>                                                        |[0x80000264]:addi s8, gp, 1024<br> [0x80000268]:sw s8, 24(t0)<br>     |
|  28|[0x80003280]<br>0x000FFAAA|- rs1 : x11<br> - imm_val == -1366<br> - rs1_val == 1048576<br>                                              |[0x80000270]:addi t3, a1, 2730<br> [0x80000274]:sw t3, 28(t0)<br>     |
|  29|[0x80003284]<br>0x00200020|- rs1 : x17<br> - rs1_val == 2097152<br>                                                                     |[0x8000027c]:addi a4, a7, 32<br> [0x80000280]:sw a4, 32(t0)<br>       |
|  30|[0x80003288]<br>0x003FFFF9|- rs1_val == 4194304<br>                                                                                     |[0x80000288]:addi sp, tp, 4089<br> [0x8000028c]:sw sp, 36(t0)<br>     |
|  31|[0x8000328c]<br>0x00800002|- rs1 : x31<br> - rd : x26<br> - rs1_val == 8388608<br>                                                      |[0x80000294]:addi s10, t6, 2<br> [0x80000298]:sw s10, 40(t0)<br>      |
|  32|[0x80003290]<br>0x00FFFFFC|- rs1_val == 16777216<br>                                                                                    |[0x800002a0]:addi a1, a0, 4092<br> [0x800002a4]:sw a1, 44(t0)<br>     |
|  33|[0x80003294]<br>0x01FFFF7F|- rs1_val == 33554432<br>                                                                                    |[0x800002ac]:addi a1, a0, 3967<br> [0x800002b0]:sw a1, 48(t0)<br>     |
|  34|[0x80003298]<br>0x040003FF|- rs1_val == 67108864<br>                                                                                    |[0x800002b8]:addi a1, a0, 1023<br> [0x800002bc]:sw a1, 52(t0)<br>     |
|  35|[0x8000329c]<br>0x08000009|- rs1_val == 134217728<br>                                                                                   |[0x800002c4]:addi a1, a0, 9<br> [0x800002c8]:sw a1, 56(t0)<br>        |
|  36|[0x800032a0]<br>0x10000020|- rs1_val == 268435456<br>                                                                                   |[0x800002d0]:addi a1, a0, 32<br> [0x800002d4]:sw a1, 60(t0)<br>       |
|  37|[0x800032a4]<br>0x1FFFFFF6|- rs1_val == 536870912<br>                                                                                   |[0x800002dc]:addi a1, a0, 4086<br> [0x800002e0]:sw a1, 64(t0)<br>     |
|  38|[0x800032a8]<br>0x3FFFFFF7|- rs1_val == 1073741824<br>                                                                                  |[0x800002e8]:addi a1, a0, 4087<br> [0x800002ec]:sw a1, 68(t0)<br>     |
|  39|[0x800032ac]<br>0x0000001E|- rs1_val == -2<br>                                                                                          |[0x800002f4]:addi a1, a0, 32<br> [0x800002f8]:sw a1, 72(t0)<br>       |
|  40|[0x800032b0]<br>0xFFFFFFBC|- imm_val == -65<br> - rs1_val == -3<br>                                                                     |[0x80000300]:addi a1, a0, 4031<br> [0x80000304]:sw a1, 76(t0)<br>     |
|  41|[0x800032b4]<br>0x0000003B|- rs1_val == -5<br>                                                                                          |[0x8000030c]:addi a1, a0, 64<br> [0x80000310]:sw a1, 80(t0)<br>       |
|  42|[0x800032b8]<br>0xFFF7FFBE|- rs1_val == -524289<br>                                                                                     |[0x8000031c]:addi a1, a0, 4031<br> [0x80000320]:sw a1, 84(t0)<br>     |
|  43|[0x800032bc]<br>0xFFEFFFF9|- rs1_val == -1048577<br>                                                                                    |[0x8000032c]:addi a1, a0, 4090<br> [0x80000330]:sw a1, 88(t0)<br>     |
|  44|[0x800032c0]<br>0xFFE001FF|- rs1_val == -2097153<br>                                                                                    |[0x8000033c]:addi a1, a0, 512<br> [0x80000340]:sw a1, 92(t0)<br>      |
|  45|[0x800032c4]<br>0xFFC0003F|- rs1_val == -4194305<br>                                                                                    |[0x8000034c]:addi a1, a0, 64<br> [0x80000350]:sw a1, 96(t0)<br>       |
|  46|[0x800032c8]<br>0xFF8001FF|- rs1_val == -8388609<br>                                                                                    |[0x8000035c]:addi a1, a0, 512<br> [0x80000360]:sw a1, 100(t0)<br>     |
|  47|[0x800032cc]<br>0xFEFFFF7E|- rs1_val == -16777217<br>                                                                                   |[0x8000036c]:addi a1, a0, 3967<br> [0x80000370]:sw a1, 104(t0)<br>    |
|  48|[0x800032d0]<br>0xFDFFFFFC|- rs1_val == -33554433<br>                                                                                   |[0x8000037c]:addi a1, a0, 4093<br> [0x80000380]:sw a1, 108(t0)<br>    |
|  49|[0x800032d4]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                   |[0x8000038c]:addi a1, a0, 0<br> [0x80000390]:sw a1, 112(t0)<br>       |
|  50|[0x800032d8]<br>0xF000003F|- rs1_val == -268435457<br>                                                                                  |[0x8000039c]:addi a1, a0, 64<br> [0x800003a0]:sw a1, 116(t0)<br>      |
|  51|[0x800032dc]<br>0xDFFFFFF7|- rs1_val == -536870913<br>                                                                                  |[0x800003ac]:addi a1, a0, 4088<br> [0x800003b0]:sw a1, 120(t0)<br>    |
|  52|[0x800032e0]<br>0xBFFFFFDE|- rs1_val == -1073741825<br>                                                                                 |[0x800003bc]:addi a1, a0, 4063<br> [0x800003c0]:sw a1, 124(t0)<br>    |
|  53|[0x800032e4]<br>0x55555544|- rs1_val == 1431655765<br>                                                                                  |[0x800003cc]:addi a1, a0, 4079<br> [0x800003d0]:sw a1, 128(t0)<br>    |
|  54|[0x800032e8]<br>0xAAAAAAA7|- rs1_val == -1431655766<br>                                                                                 |[0x800003dc]:addi a1, a0, 4093<br> [0x800003e0]:sw a1, 132(t0)<br>    |
|  55|[0x800032f8]<br>0xFFFFFFEA|- rs1_val == -17<br>                                                                                         |[0x80000410]:addi a1, a0, 4091<br> [0x80000414]:sw a1, 148(t0)<br>    |
|  56|[0x800032fc]<br>0xFFFFFF0F|- rs1_val == -257<br>                                                                                        |[0x8000041c]:addi a1, a0, 16<br> [0x80000420]:sw a1, 152(t0)<br>      |
|  57|[0x80003300]<br>0xFFFFF7BF|- rs1_val == -65<br>                                                                                         |[0x80000428]:addi a1, a0, 2048<br> [0x8000042c]:sw a1, 156(t0)<br>    |
|  58|[0x80003304]<br>0xFFFFFDFE|- rs1_val == -513<br>                                                                                        |[0x80000434]:addi a1, a0, 4095<br> [0x80000438]:sw a1, 160(t0)<br>    |
|  59|[0x80003308]<br>0xFFFFFC07|- rs1_val == -1025<br>                                                                                       |[0x80000440]:addi a1, a0, 8<br> [0x80000444]:sw a1, 164(t0)<br>       |
|  60|[0x8000330c]<br>0xFFFFF800|- rs1_val == -2049<br>                                                                                       |[0x80000450]:addi a1, a0, 1<br> [0x80000454]:sw a1, 168(t0)<br>       |
|  61|[0x80003310]<br>0xFFFFEFF5|- rs1_val == -4097<br>                                                                                       |[0x80000460]:addi a1, a0, 4086<br> [0x80000464]:sw a1, 172(t0)<br>    |
|  62|[0x80003318]<br>0xFFFFC00F|- rs1_val == -16385<br>                                                                                      |[0x8000047c]:addi a1, a0, 16<br> [0x80000480]:sw a1, 180(t0)<br>      |
|  63|[0x8000331c]<br>0xFFFF8006|- rs1_val == -32769<br>                                                                                      |[0x8000048c]:addi a1, a0, 7<br> [0x80000490]:sw a1, 184(t0)<br>       |
|  64|[0x80003320]<br>0xFFFEFFFC|- rs1_val == -65537<br>                                                                                      |[0x8000049c]:addi a1, a0, 4093<br> [0x800004a0]:sw a1, 188(t0)<br>    |
|  65|[0x80003324]<br>0xFFFE03FF|- rs1_val == -131073<br>                                                                                     |[0x800004ac]:addi a1, a0, 1024<br> [0x800004b0]:sw a1, 192(t0)<br>    |
|  66|[0x80003328]<br>0xFFFBFFFB|- rs1_val == -262145<br>                                                                                     |[0x800004bc]:addi a1, a0, 4092<br> [0x800004c0]:sw a1, 196(t0)<br>    |
|  67|[0x80003330]<br>0x00001FF6|- rs1_val == 8192<br>                                                                                        |[0x800004d4]:addi a1, a0, 4086<br> [0x800004d8]:sw a1, 204(t0)<br>    |
