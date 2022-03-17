
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000460')]      |
| SIG_REGION                | [('0x80002210', '0x800022f0', '56 words')]      |
| COV_LABELS                | slli8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/slli8-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 53      |
| STAT1                     | 52      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003d0]:SLLI8 t6, t5, 0
      [0x800003d4]:sw t6, 96(sp)
 -- Signature Address: 0x800022c0 Data: 0xFB000E20
 -- Redundant Coverpoints hit by the op
      - opcode : slli8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 0
      - rs1_b3_val == 251
      - rs1_b2_val == 0
      - rs1_b0_val == 32






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

|s.no|        signature         |                                                                        coverpoints                                                                         |                                code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0xF8009000|- opcode : slli8<br> - rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 3<br> - rs1_b3_val == 223<br> - rs1_b2_val == 32<br> |[0x80000108]:SLLI8 s8, s8, 3<br> [0x8000010c]:sw s8, 0(tp)<br>      |
|   2|[0x80002214]<br>0x00800080|- rs1 : x13<br> - rd : x26<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b2_val == 85<br> - rs1_b0_val == 127<br>                                            |[0x80000118]:SLLI8 s10, a3, 7<br> [0x8000011c]:sw s10, 4(tp)<br>    |
|   3|[0x80002218]<br>0x4000C040|- rs1 : x29<br> - rd : x30<br> - imm_val == 6<br> - rs1_b3_val == 1<br> - rs1_b2_val == 16<br>                                                              |[0x80000128]:SLLI8 t5, t4, 6<br> [0x8000012c]:sw t5, 8(tp)<br>      |
|   4|[0x8000221c]<br>0x806060E0|- rs1 : x17<br> - rd : x19<br> - imm_val == 5<br> - rs1_b3_val == 4<br> - rs1_b1_val == 251<br> - rs1_b0_val == 247<br>                                     |[0x80000138]:SLLI8 s3, a7, 5<br> [0x8000013c]:sw s3, 12(tp)<br>     |
|   5|[0x80002220]<br>0xD0E0B070|- rs1 : x20<br> - rd : x14<br> - imm_val == 4<br> - rs1_b3_val == 253<br> - rs1_b2_val == 254<br>                                                           |[0x80000148]:SLLI8 a4, s4, 4<br> [0x8000014c]:sw a4, 16(tp)<br>     |
|   6|[0x80002224]<br>0x4C182048|- rs1 : x8<br> - rd : x11<br> - imm_val == 2<br> - rs1_b1_val == 8<br>                                                                                      |[0x80000158]:SLLI8 a1, fp, 2<br> [0x8000015c]:sw a1, 20(tp)<br>     |
|   7|[0x80002228]<br>0x0008BE80|- rs1 : x5<br> - rd : x21<br> - imm_val == 1<br> - rs1_b3_val == 0<br> - rs1_b2_val == 4<br> - rs1_b1_val == 223<br> - rs1_b0_val == 64<br>                 |[0x80000168]:SLLI8 s5, t0, 1<br> [0x8000016c]:sw s5, 24(tp)<br>     |
|   8|[0x8000222c]<br>0x0A0CFB0A|- rs1 : x27<br> - rd : x12<br> - imm_val == 0<br>                                                                                                           |[0x80000178]:SLLI8 a2, s11, 0<br> [0x8000017c]:sw a2, 28(tp)<br>    |
|   9|[0x80002230]<br>0x00000000|- rs1 : x21<br> - rd : x27<br> - rs1_b3_val == 170<br> - rs1_b2_val == 2<br> - rs1_b1_val == 2<br>                                                          |[0x80000188]:SLLI8 s11, s5, 7<br> [0x8000018c]:sw s11, 32(tp)<br>   |
|  10|[0x80002234]<br>0x544C0C48|- rs1 : x2<br> - rd : x23<br> - rs1_b3_val == 85<br>                                                                                                        |[0x80000198]:SLLI8 s7, sp, 2<br> [0x8000019c]:sw s7, 36(tp)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x7<br> - rd : x0<br> - rs1_b3_val == 127<br>                                                                                                        |[0x800001a8]:SLLI8 zero, t2, 1<br> [0x800001ac]:sw zero, 40(tp)<br> |
|  12|[0x8000223c]<br>0xE080E000|- rs1 : x9<br> - rd : x25<br> - rs1_b3_val == 191<br> - rs1_b0_val == 128<br>                                                                               |[0x800001b8]:SLLI8 s9, s1, 5<br> [0x800001bc]:sw s9, 44(tp)<br>     |
|  13|[0x80002240]<br>0xEF0C1311|- rs1 : x18<br> - rd : x3<br> - rs1_b3_val == 239<br>                                                                                                       |[0x800001c8]:SLLI8 gp, s2, 0<br> [0x800001cc]:sw gp, 48(tp)<br>     |
|  14|[0x80002244]<br>0xDC344824|- rs1 : x23<br> - rd : x2<br> - rs1_b3_val == 247<br>                                                                                                       |[0x800001d8]:SLLI8 sp, s7, 2<br> [0x800001dc]:sw sp, 52(tp)<br>     |
|  15|[0x80002248]<br>0x80000080|- rs1 : x25<br> - rd : x22<br> - rs1_b3_val == 251<br> - rs1_b1_val == 4<br>                                                                                |[0x800001e8]:SLLI8 s6, s9, 7<br> [0x800001ec]:sw s6, 56(tp)<br>     |
|  16|[0x8000224c]<br>0xC0E0A0E0|- rs1 : x16<br> - rd : x29<br> - rs1_b3_val == 254<br> - rs1_b2_val == 247<br> - rs1_b0_val == 223<br>                                                      |[0x800001f8]:SLLI8 t4, a6, 5<br> [0x800001fc]:sw t4, 60(tp)<br>     |
|  17|[0x80002250]<br>0x00282018|- rs1 : x19<br> - rd : x6<br> - rs1_b3_val == 128<br>                                                                                                       |[0x80000208]:SLLI8 t1, s3, 3<br> [0x8000020c]:sw t1, 64(tp)<br>     |
|  18|[0x80002254]<br>0x00800000|- rs1 : x1<br> - rd : x16<br> - rs1_b3_val == 64<br> - rs1_b2_val == 127<br>                                                                                |[0x80000218]:SLLI8 a6, ra, 7<br> [0x8000021c]:sw a6, 68(tp)<br>     |
|  19|[0x80002258]<br>0x00000000|- rs1 : x0<br> - rd : x7<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                    |[0x80000228]:SLLI8 t2, zero, 7<br> [0x8000022c]:sw t2, 72(tp)<br>   |
|  20|[0x8000225c]<br>0x0000C040|- rs1 : x15<br> - rd : x31<br> - rs1_b3_val == 16<br> - rs1_b1_val == 127<br>                                                                               |[0x80000238]:SLLI8 t6, a5, 6<br> [0x8000023c]:sw t6, 76(tp)<br>     |
|  21|[0x80002260]<br>0x00408080|- rs1 : x4<br> - rd : x20<br> - rs1_b3_val == 8<br>                                                                                                         |[0x80000250]:SLLI8 s4, tp, 6<br> [0x80000254]:sw s4, 0(sp)<br>      |
|  22|[0x80002264]<br>0x40E0E0A0|- rs1 : x3<br> - rd : x4<br> - rs1_b3_val == 2<br>                                                                                                          |[0x80000260]:SLLI8 tp, gp, 5<br> [0x80000264]:sw tp, 4(sp)<br>      |
|  23|[0x80002268]<br>0xF030E020|- rs1 : x28<br> - rd : x1<br> - rs1_b3_val == 255<br>                                                                                                       |[0x80000270]:SLLI8 ra, t3, 4<br> [0x80000274]:sw ra, 8(sp)<br>      |
|  24|[0x8000226c]<br>0x80000080|- rs1 : x6<br> - rd : x10<br> - rs1_b2_val == 170<br>                                                                                                       |[0x80000280]:SLLI8 a0, t1, 7<br> [0x80000284]:sw a0, 12(sp)<br>     |
|  25|[0x80002270]<br>0xF7BF0B20|- rs1 : x12<br> - rd : x15<br> - rs1_b2_val == 191<br> - rs1_b0_val == 32<br>                                                                               |[0x80000290]:SLLI8 a5, a2, 0<br> [0x80000294]:sw a5, 16(sp)<br>     |
|  26|[0x80002274]<br>0x06BE1C04|- rs1 : x30<br> - rd : x28<br> - rs1_b2_val == 223<br> - rs1_b0_val == 2<br>                                                                                |[0x800002a0]:SLLI8 t3, t5, 1<br> [0x800002a4]:sw t3, 20(sp)<br>     |
|  27|[0x80002278]<br>0xF8BC0054|- rs1 : x11<br> - rd : x5<br> - rs1_b2_val == 239<br> - rs1_b0_val == 85<br>                                                                                |[0x800002b0]:SLLI8 t0, a1, 2<br> [0x800002b4]:sw t0, 24(sp)<br>     |
|  28|[0x8000227c]<br>0xE8D81040|- rs1 : x22<br> - rd : x9<br> - rs1_b2_val == 251<br> - rs1_b0_val == 8<br>                                                                                 |[0x800002c0]:SLLI8 s1, s6, 3<br> [0x800002c4]:sw s1, 28(sp)<br>     |
|  29|[0x80002280]<br>0x40380868|- rs1 : x14<br> - rd : x8<br> - rs1_b1_val == 1<br>                                                                                                         |[0x800002d0]:SLLI8 fp, a4, 3<br> [0x800002d4]:sw fp, 32(sp)<br>     |
|  30|[0x80002284]<br>0x0C10FE06|- rs1 : x31<br> - rd : x18<br> - rs1_b2_val == 8<br> - rs1_b1_val == 255<br>                                                                                |[0x800002e0]:SLLI8 s2, t6, 1<br> [0x800002e4]:sw s2, 36(sp)<br>     |
|  31|[0x80002288]<br>0x80808000|- rs1 : x26<br> - rd : x17<br> - rs1_b0_val == 170<br>                                                                                                      |[0x800002f0]:SLLI8 a7, s10, 7<br> [0x800002f4]:sw a7, 40(sp)<br>    |
|  32|[0x8000228c]<br>0x006080E0|- rs1 : x10<br> - rd : x13<br> - rs1_b0_val == 191<br>                                                                                                      |[0x80000300]:SLLI8 a3, a0, 5<br> [0x80000304]:sw a3, 44(sp)<br>     |
|  33|[0x80002290]<br>0x087CBCBC|- rs1_b1_val == 239<br> - rs1_b0_val == 239<br>                                                                                                             |[0x80000310]:SLLI8 t6, t5, 2<br> [0x80000314]:sw t6, 48(sp)<br>     |
|  34|[0x80002294]<br>0xC0C000C0|- rs1_b1_val == 32<br> - rs1_b0_val == 251<br>                                                                                                              |[0x80000320]:SLLI8 t6, t5, 6<br> [0x80000324]:sw t6, 52(sp)<br>     |
|  35|[0x80002298]<br>0x548010F4|- rs1_b0_val == 253<br>                                                                                                                                     |[0x80000330]:SLLI8 t6, t5, 2<br> [0x80000334]:sw t6, 56(sp)<br>     |
|  36|[0x8000229c]<br>0x7EBE18FC|- rs1_b0_val == 254<br>                                                                                                                                     |[0x80000340]:SLLI8 t6, t5, 1<br> [0x80000344]:sw t6, 60(sp)<br>     |
|  37|[0x800022a0]<br>0x00808000|- rs1_b0_val == 4<br>                                                                                                                                       |[0x80000350]:SLLI8 t6, t5, 7<br> [0x80000354]:sw t6, 64(sp)<br>     |
|  38|[0x800022a4]<br>0x18286008|- rs1_b0_val == 1<br>                                                                                                                                       |[0x80000360]:SLLI8 t6, t5, 3<br> [0x80000364]:sw t6, 68(sp)<br>     |
|  39|[0x800022a8]<br>0xC040C0C0|- rs1_b1_val == 247<br> - rs1_b0_val == 255<br>                                                                                                             |[0x80000370]:SLLI8 t6, t5, 6<br> [0x80000374]:sw t6, 72(sp)<br>     |
|  40|[0x800022ac]<br>0x00808080|- rs1_b2_val == 253<br>                                                                                                                                     |[0x80000380]:SLLI8 t6, t5, 7<br> [0x80000384]:sw t6, 76(sp)<br>     |
|  41|[0x800022b0]<br>0xE00000A0|- rs1_b2_val == 128<br> - rs1_b1_val == 128<br>                                                                                                             |[0x80000390]:SLLI8 t6, t5, 5<br> [0x80000394]:sw t6, 80(sp)<br>     |
|  42|[0x800022b4]<br>0x0000A040|- rs1_b2_val == 64<br>                                                                                                                                      |[0x800003a0]:SLLI8 t6, t5, 4<br> [0x800003a4]:sw t6, 84(sp)<br>     |
|  43|[0x800022b8]<br>0x00400080|- rs1_b2_val == 1<br>                                                                                                                                       |[0x800003b0]:SLLI8 t6, t5, 6<br> [0x800003b4]:sw t6, 88(sp)<br>     |
|  44|[0x800022bc]<br>0x10FC28F8|- rs1_b2_val == 255<br>                                                                                                                                     |[0x800003c0]:SLLI8 t6, t5, 2<br> [0x800003c4]:sw t6, 92(sp)<br>     |
|  45|[0x800022c4]<br>0x0E40AA09|- rs1_b1_val == 170<br>                                                                                                                                     |[0x800003e0]:SLLI8 t6, t5, 0<br> [0x800003e4]:sw t6, 100(sp)<br>    |
|  46|[0x800022c8]<br>0x04EF5555|- rs1_b1_val == 85<br>                                                                                                                                      |[0x800003f0]:SLLI8 t6, t5, 0<br> [0x800003f4]:sw t6, 104(sp)<br>    |
|  47|[0x800022cc]<br>0x0612BF07|- rs1_b1_val == 191<br>                                                                                                                                     |[0x80000400]:SLLI8 t6, t5, 0<br> [0x80000404]:sw t6, 108(sp)<br>    |
|  48|[0x800022d0]<br>0x80008080|- rs1_b1_val == 253<br>                                                                                                                                     |[0x80000410]:SLLI8 t6, t5, 7<br> [0x80000414]:sw t6, 112(sp)<br>    |
|  49|[0x800022d4]<br>0x7FEFFEF7|- rs1_b1_val == 254<br>                                                                                                                                     |[0x80000420]:SLLI8 t6, t5, 0<br> [0x80000424]:sw t6, 116(sp)<br>    |
|  50|[0x800022d8]<br>0x00000000|- rs1_b1_val == 64<br>                                                                                                                                      |[0x80000430]:SLLI8 t6, t5, 7<br> [0x80000434]:sw t6, 120(sp)<br>    |
|  51|[0x800022dc]<br>0x20A00020|- rs1_b1_val == 16<br>                                                                                                                                      |[0x80000440]:SLLI8 t6, t5, 5<br> [0x80000444]:sw t6, 124(sp)<br>    |
|  52|[0x800022e0]<br>0x00008000|- rs1_b3_val == 32<br> - rs1_b0_val == 16<br>                                                                                                               |[0x80000450]:SLLI8 t6, t5, 7<br> [0x80000454]:sw t6, 128(sp)<br>    |
