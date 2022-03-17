
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800003d0')]      |
| SIG_REGION                | [('0x80002210', '0x800022c0', '44 words')]      |
| COV_LABELS                | srai8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srai8-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 44      |
| STAT1                     | 43      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000034c]:SRAI8 t6, t5, 5
      [0x80000350]:sw t6, 68(ra)
 -- Signature Address: 0x800022a0 Data: 0x0000FC00
 -- Redundant Coverpoints hit by the op
      - opcode : srai8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 5
      - rs1_b3_val == 8
      - rs1_b2_val == 0
      - rs1_b1_val == -128






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

|s.no|        signature         |                                                                          coverpoints                                                                          |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00FE01E0|- opcode : srai8<br> - rs1 : x7<br> - rd : x7<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 2<br>                                                  |[0x80000108]:SRAI8 t2, t2, 2<br> [0x8000010c]:sw t2, 0(s2)<br>       |
|   2|[0x80002214]<br>0x0000FFFF|- rs1 : x6<br> - rd : x14<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b3_val == 32<br> - rs1_b2_val == 85<br> - rs1_b1_val == -65<br> - rs1_b0_val == -86<br> |[0x80000118]:SRAI8 a4, t1, 7<br> [0x8000011c]:sw a4, 4(s2)<br>       |
|   3|[0x80002218]<br>0x00FFFFFF|- rs1 : x15<br> - rd : x28<br> - imm_val == 6<br> - rs1_b3_val == 2<br> - rs1_b2_val == -33<br>                                                                |[0x80000128]:SRAI8 t3, a5, 6<br> [0x8000012c]:sw t3, 8(s2)<br>       |
|   4|[0x8000221c]<br>0x00FD00FF|- rs1 : x16<br> - rd : x27<br> - imm_val == 5<br> - rs1_b2_val == -65<br> - rs1_b0_val == -1<br>                                                               |[0x80000138]:SRAI8 s11, a6, 5<br> [0x8000013c]:sw s11, 12(s2)<br>    |
|   5|[0x80002220]<br>0xFF070000|- rs1 : x13<br> - rd : x30<br> - imm_val == 4<br> - rs1_b3_val == -9<br> - rs1_b2_val == 127<br>                                                               |[0x80000148]:SRAI8 t5, a3, 4<br> [0x8000014c]:sw t5, 16(s2)<br>      |
|   6|[0x80002224]<br>0x00000000|- rs1 : x0<br> - rd : x4<br> - imm_val == 3<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                        |[0x80000158]:SRAI8 tp, zero, 3<br> [0x8000015c]:sw tp, 20(s2)<br>    |
|   7|[0x80002228]<br>0xFCD5EFFC|- rs1 : x22<br> - rd : x13<br> - imm_val == 1<br> - rs1_b2_val == -86<br> - rs1_b1_val == -33<br>                                                              |[0x80000168]:SRAI8 a3, s6, 1<br> [0x8000016c]:sw a3, 24(s2)<br>      |
|   8|[0x8000222c]<br>0xF7FFFDBF|- rs1 : x31<br> - rd : x1<br> - imm_val == 0<br> - rs1_b2_val == -1<br> - rs1_b1_val == -3<br> - rs1_b0_val == -65<br>                                         |[0x80000178]:SRAI8 ra, t6, 0<br> [0x8000017c]:sw ra, 28(s2)<br>      |
|   9|[0x80002230]<br>0xFEFF00FF|- rs1 : x5<br> - rd : x17<br> - rs1_b3_val == -86<br> - rs1_b1_val == 1<br>                                                                                    |[0x80000188]:SRAI8 a7, t0, 6<br> [0x8000018c]:sw a7, 32(s2)<br>      |
|  10|[0x80002234]<br>0x2AFDFEFD|- rs1 : x30<br> - rd : x12<br> - rs1_b3_val == 85<br> - rs1_b2_val == -5<br>                                                                                   |[0x80000198]:SRAI8 a2, t5, 1<br> [0x8000019c]:sw a2, 36(s2)<br>      |
|  11|[0x80002238]<br>0x00FF0000|- rs1 : x24<br> - rd : x22<br> - rs1_b3_val == 127<br> - rs1_b1_val == 4<br> - rs1_b0_val == 2<br>                                                             |[0x800001a8]:SRAI8 s6, s8, 7<br> [0x800001ac]:sw s6, 40(s2)<br>      |
|  12|[0x8000223c]<br>0xFD00FFFD|- rs1 : x9<br> - rd : x16<br> - rs1_b3_val == -65<br> - rs1_b2_val == 8<br>                                                                                    |[0x800001b8]:SRAI8 a6, s1, 5<br> [0x800001bc]:sw a6, 44(s2)<br>      |
|  13|[0x80002240]<br>0xFD00FFFB|- rs1 : x8<br> - rd : x3<br> - rs1_b3_val == -33<br> - rs1_b2_val == 1<br>                                                                                     |[0x800001c8]:SRAI8 gp, fp, 4<br> [0x800001cc]:sw gp, 48(s2)<br>      |
|  14|[0x80002244]<br>0xEF3F00DF|- rs1 : x2<br> - rd : x25<br> - rs1_b3_val == -17<br> - rs1_b0_val == -33<br>                                                                                  |[0x800001d8]:SRAI8 s9, sp, 0<br> [0x800001dc]:sw s9, 52(s2)<br>      |
|  15|[0x80002248]<br>0x00000000|- rs1 : x26<br> - rd : x0<br> - rs1_b3_val == -5<br>                                                                                                           |[0x800001e8]:SRAI8 zero, s10, 1<br> [0x800001ec]:sw zero, 56(s2)<br> |
|  16|[0x8000224c]<br>0xFDFB20DF|- rs1 : x29<br> - rd : x20<br> - rs1_b3_val == -3<br> - rs1_b1_val == 32<br>                                                                                   |[0x800001f8]:SRAI8 s4, t4, 0<br> [0x800001fc]:sw s4, 60(s2)<br>      |
|  17|[0x80002250]<br>0xFF01FD02|- rs1 : x1<br> - rd : x15<br> - rs1_b3_val == -2<br> - rs1_b1_val == -9<br> - rs1_b0_val == 8<br>                                                              |[0x80000208]:SRAI8 a5, ra, 2<br> [0x8000020c]:sw a5, 64(s2)<br>      |
|  18|[0x80002254]<br>0xC008013F|- rs1 : x11<br> - rd : x2<br> - rs1_b3_val == -128<br> - rs1_b2_val == 16<br> - rs1_b1_val == 2<br> - rs1_b0_val == 127<br>                                    |[0x80000218]:SRAI8 sp, a1, 1<br> [0x8000021c]:sw sp, 68(s2)<br>      |
|  19|[0x80002258]<br>0x20F70400|- rs1 : x10<br> - rd : x23<br> - rs1_b3_val == 64<br> - rs1_b2_val == -17<br> - rs1_b1_val == 8<br> - rs1_b0_val == 1<br>                                      |[0x80000228]:SRAI8 s7, a0, 1<br> [0x8000022c]:sw s7, 72(s2)<br>      |
|  20|[0x8000225c]<br>0x107F02FA|- rs1 : x27<br> - rd : x18<br> - rs1_b3_val == 16<br>                                                                                                          |[0x80000240]:SRAI8 s2, s11, 0<br> [0x80000244]:sw s2, 0(ra)<br>      |
|  21|[0x80002260]<br>0x00FEFC00|- rs1 : x25<br> - rd : x24<br> - rs1_b3_val == 8<br> - rs1_b1_val == -128<br> - rs1_b0_val == 16<br>                                                           |[0x80000250]:SRAI8 s8, s9, 5<br> [0x80000254]:sw s8, 4(ra)<br>       |
|  22|[0x80002264]<br>0x00FF0000|- rs1 : x23<br> - rd : x6<br> - rs1_b3_val == 1<br>                                                                                                            |[0x8000025c]:SRAI8 t1, s7, 3<br> [0x80000260]:sw t1, 8(ra)<br>       |
|  23|[0x80002268]<br>0x0800FF00|- rs1 : x19<br> - rd : x8<br> - rs1_b1_val == -1<br>                                                                                                           |[0x8000026c]:SRAI8 fp, s3, 3<br> [0x80000270]:sw fp, 12(ra)<br>      |
|  24|[0x8000226c]<br>0xFEFDFD15|- rs1 : x20<br> - rd : x10<br> - rs1_b2_val == -9<br> - rs1_b0_val == 85<br>                                                                                   |[0x8000027c]:SRAI8 a0, s4, 2<br> [0x80000280]:sw a0, 16(ra)<br>      |
|  25|[0x80002270]<br>0xEFFFFFFB|- rs1 : x12<br> - rd : x26<br> - rs1_b0_val == -17<br>                                                                                                         |[0x8000028c]:SRAI8 s10, a2, 2<br> [0x80000290]:sw s10, 20(ra)<br>    |
|  26|[0x80002274]<br>0x01FFFAFF|- rs1 : x18<br> - rd : x21<br> - rs1_b2_val == -2<br> - rs1_b1_val == -86<br> - rs1_b0_val == -9<br>                                                           |[0x8000029c]:SRAI8 s5, s2, 4<br> [0x800002a0]:sw s5, 24(ra)<br>      |
|  27|[0x80002278]<br>0xFE03FDFF|- rs1 : x17<br> - rd : x5<br> - rs1_b0_val == -5<br>                                                                                                           |[0x800002ac]:SRAI8 t0, a7, 4<br> [0x800002b0]:sw t0, 28(ra)<br>      |
|  28|[0x8000227c]<br>0xFF00FFFF|- rs1 : x28<br> - rd : x31<br> - rs1_b0_val == -3<br>                                                                                                          |[0x800002bc]:SRAI8 t6, t3, 5<br> [0x800002c0]:sw t6, 32(ra)<br>      |
|  29|[0x80002280]<br>0x00FFFEFF|- rs1 : x4<br> - rd : x11<br> - rs1_b0_val == -2<br>                                                                                                           |[0x800002cc]:SRAI8 a1, tp, 5<br> [0x800002d0]:sw a1, 36(ra)<br>      |
|  30|[0x80002284]<br>0x04071040|- rs1 : x3<br> - rd : x19<br> - rs1_b3_val == 4<br> - rs1_b1_val == 16<br> - rs1_b0_val == 64<br>                                                              |[0x800002dc]:SRAI8 s3, gp, 0<br> [0x800002e0]:sw s3, 40(ra)<br>      |
|  31|[0x80002288]<br>0xFFC0FE10|- rs1 : x21<br> - rd : x29<br> - rs1_b2_val == -128<br> - rs1_b0_val == 32<br>                                                                                 |[0x800002ec]:SRAI8 t4, s5, 1<br> [0x800002f0]:sw t4, 44(ra)<br>      |
|  32|[0x8000228c]<br>0xFFFFFFFF|- rs1 : x14<br> - rd : x9<br> - rs1_b2_val == -3<br>                                                                                                           |[0x800002fc]:SRAI8 s1, a4, 7<br> [0x80000300]:sw s1, 48(ra)<br>      |
|  33|[0x80002290]<br>0x0000FF00|- rs1_b2_val == 64<br>                                                                                                                                         |[0x8000030c]:SRAI8 t6, t5, 7<br> [0x80000310]:sw t6, 52(ra)<br>      |
|  34|[0x80002294]<br>0x00000000|- rs1_b2_val == 32<br>                                                                                                                                         |[0x8000031c]:SRAI8 t6, t5, 7<br> [0x80000320]:sw t6, 56(ra)<br>      |
|  35|[0x80002298]<br>0xFC02FB03|- rs1_b2_val == 4<br>                                                                                                                                          |[0x8000032c]:SRAI8 t6, t5, 1<br> [0x80000330]:sw t6, 60(ra)<br>      |
|  36|[0x8000229c]<br>0x010F0800|- rs1_b1_val == 64<br>                                                                                                                                         |[0x8000033c]:SRAI8 t6, t5, 3<br> [0x80000340]:sw t6, 64(ra)<br>      |
|  37|[0x800022a4]<br>0xFFFF0500|- rs1_b1_val == 85<br>                                                                                                                                         |[0x8000035c]:SRAI8 t6, t5, 4<br> [0x80000360]:sw t6, 72(ra)<br>      |
|  38|[0x800022a8]<br>0xD5200102|- rs1_b0_val == 4<br>                                                                                                                                          |[0x8000036c]:SRAI8 t6, t5, 1<br> [0x80000370]:sw t6, 76(ra)<br>      |
|  39|[0x800022ac]<br>0x80FA7FF6|- rs1_b1_val == 127<br>                                                                                                                                        |[0x8000037c]:SRAI8 t6, t5, 0<br> [0x80000380]:sw t6, 80(ra)<br>      |
|  40|[0x800022b0]<br>0xC055FBBF|- rs1_b1_val == -5<br>                                                                                                                                         |[0x8000038c]:SRAI8 t6, t5, 0<br> [0x80000390]:sw t6, 84(ra)<br>      |
|  41|[0x800022b4]<br>0x0F00FFF7|- rs1_b1_val == -2<br>                                                                                                                                         |[0x8000039c]:SRAI8 t6, t5, 2<br> [0x800003a0]:sw t6, 88(ra)<br>      |
|  42|[0x800022b8]<br>0xFF0000FF|- rs1_b3_val == -1<br> - rs1_b2_val == 2<br>                                                                                                                   |[0x800003ac]:SRAI8 t6, t5, 6<br> [0x800003b0]:sw t6, 92(ra)<br>      |
|  43|[0x800022bc]<br>0xFF00FFFF|- rs1_b1_val == -17<br>                                                                                                                                        |[0x800003bc]:SRAI8 t6, t5, 5<br> [0x800003c0]:sw t6, 96(ra)<br>      |
