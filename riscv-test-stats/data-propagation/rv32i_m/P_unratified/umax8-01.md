
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000730')]      |
| SIG_REGION                | [('0x80002210', '0x80002320', '68 words')]      |
| COV_LABELS                | umax8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/umax8-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 65      |
| STAT1                     | 62      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:UMAX8 t6, t5, t4
      [0x800005ec]:sw t6, 84(sp)
 -- Signature Address: 0x800022dc Data: 0xBF550320
 -- Redundant Coverpoints hit by the op
      - opcode : umax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 191
      - rs2_b1_val == 2
      - rs2_b0_val == 32
      - rs1_b3_val == 32
      - rs1_b2_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000618]:UMAX8 t6, t5, t4
      [0x8000061c]:sw t6, 92(sp)
 -- Signature Address: 0x800022e4 Data: 0xFBAA0E7F
 -- Redundant Coverpoints hit by the op
      - opcode : umax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 251
      - rs2_b0_val == 127
      - rs1_b3_val == 247
      - rs1_b2_val == 170




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000630]:UMAX8 t6, t5, t4
      [0x80000634]:sw t6, 96(sp)
 -- Signature Address: 0x800022e8 Data: 0xFB070A0A
 -- Redundant Coverpoints hit by the op
      - opcode : umax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 0
      - rs2_b1_val == 4
      - rs1_b3_val == 251






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

|s.no|        signature         |                                                                                                                                                                                            coverpoints                                                                                                                                                                                             |                                code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x20110006|- opcode : umax8<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 32<br> - rs2_b1_val == 0<br> - rs1_b3_val == 32<br> - rs1_b1_val == 0<br> |[0x80000110]:UMAX8 a2, a2, a2<br> [0x80000114]:sw a2, 0(fp)<br>      |
|   2|[0x80002214]<br>0x09AA0AEF|- rs1 : x31<br> - rs2 : x31<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b2_val == 170<br> - rs2_b0_val == 239<br> - rs1_b2_val == 170<br> - rs1_b0_val == 239<br>                                                                                                                                                          |[0x80000128]:UMAX8 t3, t6, t6<br> [0x8000012c]:sw t3, 4(fp)<br>      |
|   3|[0x80002218]<br>0x080FBFFB|- rs1 : x20<br> - rs2 : x28<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 4<br> - rs2_b1_val == 191<br> - rs1_b3_val == 8<br> - rs1_b0_val == 251<br>                                                                   |[0x80000140]:UMAX8 sp, s4, t3<br> [0x80000144]:sw sp, 8(fp)<br>      |
|   4|[0x8000221c]<br>0xFF0E7F11|- rs1 : x22<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b3_val == 255<br> - rs2_b0_val == 16<br> - rs1_b1_val == 127<br>                                                                                                              |[0x80000158]:UMAX8 s7, s6, s7<br> [0x8000015c]:sw s7, 12(fp)<br>     |
|   5|[0x80002220]<br>0x04100C04|- rs1 : x18<br> - rs2 : x1<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_b1_val == 1<br> - rs2_b0_val == 4<br> - rs1_b3_val == 2<br> - rs1_b2_val == 16<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                 |[0x80000170]:UMAX8 s2, s2, ra<br> [0x80000174]:sw s2, 16(fp)<br>     |
|   6|[0x80002224]<br>0xAA0CFFF7|- rs1 : x24<br> - rs2 : x14<br> - rd : x17<br> - rs2_b3_val == 170<br> - rs2_b0_val == 247<br> - rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                              |[0x80000188]:UMAX8 a7, s8, a4<br> [0x8000018c]:sw a7, 20(fp)<br>     |
|   7|[0x80002228]<br>0x80100502|- rs1 : x26<br> - rs2 : x0<br> - rd : x6<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == 128<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                        |[0x800001a0]:UMAX8 t1, s10, zero<br> [0x800001a4]:sw t1, 24(fp)<br>  |
|   8|[0x8000222c]<br>0x7F0D7FF7|- rs1 : x9<br> - rs2 : x22<br> - rd : x19<br> - rs2_b3_val == 127<br> - rs2_b1_val == 127<br> - rs1_b3_val == 0<br> - rs1_b2_val == 8<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                    |[0x800001b8]:UMAX8 s3, s1, s6<br> [0x800001bc]:sw s3, 28(fp)<br>     |
|   9|[0x80002230]<br>0xBF1200FD|- rs1 : x30<br> - rs2 : x29<br> - rd : x22<br> - rs2_b3_val == 191<br> - rs2_b0_val == 253<br> - rs1_b3_val == 191<br>                                                                                                                                                                                                                                                                              |[0x800001d0]:UMAX8 s6, t5, t4<br> [0x800001d4]:sw s6, 32(fp)<br>     |
|  10|[0x80002234]<br>0xDF0A0955|- rs1 : x2<br> - rs2 : x16<br> - rd : x24<br> - rs2_b3_val == 223<br> - rs2_b0_val == 85<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                  |[0x800001e8]:UMAX8 s8, sp, a6<br> [0x800001ec]:sw s8, 36(fp)<br>     |
|  11|[0x80002238]<br>0xEFF7FFFD|- rs1 : x17<br> - rs2 : x27<br> - rd : x31<br> - rs2_b3_val == 239<br> - rs2_b1_val == 2<br> - rs1_b2_val == 247<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                         |[0x80000200]:UMAX8 t6, a7, s11<br> [0x80000204]:sw t6, 40(fp)<br>    |
|  12|[0x8000223c]<br>0xF707BF0F|- rs1 : x11<br> - rs2 : x3<br> - rd : x5<br> - rs2_b3_val == 247<br> - rs2_b2_val == 1<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                   |[0x80000218]:UMAX8 t0, a1, gp<br> [0x8000021c]:sw t0, 44(fp)<br>     |
|  13|[0x80002240]<br>0xFBFBFD05|- rs1 : x14<br> - rs2 : x10<br> - rd : x11<br> - rs2_b3_val == 251<br> - rs2_b2_val == 251<br> - rs2_b1_val == 253<br> - rs1_b3_val == 170<br>                                                                                                                                                                                                                                                      |[0x80000230]:UMAX8 a1, a4, a0<br> [0x80000234]:sw a1, 48(fp)<br>     |
|  14|[0x80002244]<br>0xFD097FAA|- rs1 : x0<br> - rs2 : x2<br> - rd : x16<br> - rs1_b0_val == 0<br> - rs2_b3_val == 253<br> - rs2_b0_val == 170<br> - rs1_b2_val == 0<br>                                                                                                                                                                                                                                                            |[0x80000248]:UMAX8 a6, zero, sp<br> [0x8000024c]:sw a6, 52(fp)<br>   |
|  15|[0x80002248]<br>0xFEFDDF13|- rs1 : x25<br> - rs2 : x4<br> - rd : x7<br> - rs2_b3_val == 254<br> - rs2_b2_val == 85<br> - rs1_b2_val == 253<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                         |[0x80000260]:UMAX8 t2, s9, tp<br> [0x80000264]:sw t2, 56(fp)<br>     |
|  16|[0x8000224c]<br>0x80F7100D|- rs1 : x7<br> - rs2 : x26<br> - rd : x8<br> - rs2_b3_val == 128<br> - rs2_b2_val == 247<br>                                                                                                                                                                                                                                                                                                        |[0x80000280]:UMAX8 fp, t2, s10<br> [0x80000284]:sw fp, 0(sp)<br>     |
|  17|[0x80002250]<br>0x40BF0BFD|- rs1 : x1<br> - rs2 : x18<br> - rd : x27<br> - rs2_b3_val == 64<br> - rs2_b2_val == 191<br> - rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                 |[0x80000298]:UMAX8 s11, ra, s2<br> [0x8000029c]:sw s11, 4(sp)<br>    |
|  18|[0x80002254]<br>0xBF0A400D|- rs1 : x13<br> - rs2 : x15<br> - rd : x29<br> - rs2_b3_val == 16<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                        |[0x800002b0]:UMAX8 t4, a3, a5<br> [0x800002b4]:sw t4, 8(sp)<br>      |
|  19|[0x80002258]<br>0xFF0D80DF|- rs1 : x19<br> - rs2 : x24<br> - rd : x20<br> - rs2_b3_val == 8<br> - rs2_b1_val == 128<br> - rs2_b0_val == 223<br> - rs1_b3_val == 255<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                |[0x800002c8]:UMAX8 s4, s3, s8<br> [0x800002cc]:sw s4, 12(sp)<br>     |
|  20|[0x8000225c]<br>0x0E0EFB08|- rs1 : x5<br> - rs2 : x11<br> - rd : x9<br> - rs2_b3_val == 2<br> - rs2_b1_val == 251<br> - rs2_b0_val == 8<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                              |[0x800002e0]:UMAX8 s1, t0, a1<br> [0x800002e4]:sw s1, 16(sp)<br>     |
|  21|[0x80002260]<br>0x10AABF20|- rs1 : x10<br> - rs2 : x25<br> - rd : x26<br> - rs2_b3_val == 1<br> - rs2_b1_val == 32<br> - rs2_b0_val == 1<br> - rs1_b1_val == 191<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                    |[0x800002f8]:UMAX8 s10, a0, s9<br> [0x800002fc]:sw s10, 20(sp)<br>   |
|  22|[0x80002264]<br>0x0906FF0B|- rs1 : x8<br> - rs2 : x17<br> - rd : x3<br>                                                                                                                                                                                                                                                                                                                                                        |[0x80000310]:UMAX8 gp, fp, a7<br> [0x80000314]:sw gp, 24(sp)<br>     |
|  23|[0x80002268]<br>0xEFFFBF0F|- rs1 : x16<br> - rs2 : x30<br> - rd : x10<br> - rs2_b2_val == 127<br> - rs1_b2_val == 255<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                |[0x80000328]:UMAX8 a0, a6, t5<br> [0x8000032c]:sw a0, 28(sp)<br>     |
|  24|[0x8000226c]<br>0x0CFF10DF|- rs1 : x3<br> - rs2 : x21<br> - rd : x30<br> - rs2_b2_val == 223<br> - rs2_b1_val == 16<br>                                                                                                                                                                                                                                                                                                        |[0x80000340]:UMAX8 t5, gp, s5<br> [0x80000344]:sw t5, 32(sp)<br>     |
|  25|[0x80002270]<br>0x00000000|- rs1 : x4<br> - rs2 : x6<br> - rd : x0<br> - rs2_b2_val == 239<br> - rs1_b3_val == 247<br> - rs1_b1_val == 254<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                         |[0x80000358]:UMAX8 zero, tp, t1<br> [0x8000035c]:sw zero, 36(sp)<br> |
|  26|[0x80002274]<br>0x0FFF80FF|- rs1 : x23<br> - rs2 : x20<br> - rd : x14<br> - rs2_b2_val == 253<br> - rs2_b0_val == 191<br>                                                                                                                                                                                                                                                                                                      |[0x80000370]:UMAX8 a4, s7, s4<br> [0x80000374]:sw a4, 40(sp)<br>     |
|  27|[0x80002278]<br>0xFBFE7F55|- rs1 : x21<br> - rs2 : x13<br> - rd : x4<br> - rs2_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                               |[0x80000388]:UMAX8 tp, s5, a3<br> [0x8000038c]:sw tp, 44(sp)<br>     |
|  28|[0x8000227c]<br>0xF780F713|- rs1 : x6<br> - rs2 : x8<br> - rd : x21<br> - rs2_b2_val == 128<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                        |[0x800003a0]:UMAX8 s5, t1, fp<br> [0x800003a4]:sw s5, 48(sp)<br>     |
|  29|[0x80002280]<br>0x7F40FB03|- rs1 : x29<br> - rs2 : x9<br> - rd : x25<br> - rs2_b2_val == 64<br> - rs1_b3_val == 127<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                |[0x800003b8]:UMAX8 s9, t4, s1<br> [0x800003bc]:sw s9, 52(sp)<br>     |
|  30|[0x80002284]<br>0xF780BFFF|- rs1 : x28<br> - rs2 : x19<br> - rd : x13<br> - rs2_b2_val == 2<br> - rs2_b0_val == 255<br> - rs1_b2_val == 128<br> - rs1_b1_val == 170<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                |[0x800003d0]:UMAX8 a3, t3, s3<br> [0x800003d4]:sw a3, 56(sp)<br>     |
|  31|[0x80002288]<br>0xFF7FEF80|- rs1 : x27<br> - rs2 : x5<br> - rd : x15<br> - rs2_b3_val == 85<br> - rs2_b0_val == 128<br> - rs1_b2_val == 127<br> - rs1_b1_val == 239<br>                                                                                                                                                                                                                                                        |[0x800003f0]:UMAX8 a5, s11, t0<br> [0x800003f4]:sw a5, 0(sp)<br>     |
|  32|[0x8000228c]<br>0xFB11FDFB|- rs1 : x15<br> - rs2 : x7<br> - rd : x1<br> - rs2_b2_val == 4<br> - rs2_b0_val == 251<br> - rs1_b3_val == 251<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                          |[0x80000408]:UMAX8 ra, a5, t2<br> [0x8000040c]:sw ra, 4(sp)<br>      |
|  33|[0x80002290]<br>0x0F80800C|- rs1_b1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000420]:UMAX8 t6, t5, t4<br> [0x80000424]:sw t6, 8(sp)<br>      |
|  34|[0x80002294]<br>0xAAFDFBAA|- rs2_b0_val == 127<br> - rs1_b1_val == 32<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                              |[0x80000438]:UMAX8 t6, t5, t4<br> [0x8000043c]:sw t6, 12(sp)<br>     |
|  35|[0x80002298]<br>0x807F09F7|- rs1_b1_val == 2<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000450]:UMAX8 t6, t5, t4<br> [0x80000454]:sw t6, 16(sp)<br>     |
|  36|[0x8000229c]<br>0x07800BFF|- rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x80000468]:UMAX8 t6, t5, t4<br> [0x8000046c]:sw t6, 20(sp)<br>     |
|  37|[0x800022a0]<br>0xFBDF07F7|- rs1_b2_val == 32<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                      |[0x80000480]:UMAX8 t6, t5, t4<br> [0x80000484]:sw t6, 24(sp)<br>     |
|  38|[0x800022a4]<br>0xEFEFAADF|- rs2_b1_val == 170<br> - rs1_b3_val == 4<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                               |[0x80000498]:UMAX8 t6, t5, t4<br> [0x8000049c]:sw t6, 28(sp)<br>     |
|  39|[0x800022a8]<br>0x7FFF40FD|- rs2_b2_val == 255<br> - rs2_b0_val == 2<br> - rs1_b2_val == 2<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                         |[0x800004b0]:UMAX8 t6, t5, t4<br> [0x800004b4]:sw t6, 32(sp)<br>     |
|  40|[0x800022ac]<br>0xFFFE80FD|- rs1_b2_val == 254<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                     |[0x800004c8]:UMAX8 t6, t5, t4<br> [0x800004cc]:sw t6, 36(sp)<br>     |
|  41|[0x800022b0]<br>0xEFFBBF40|- rs1_b3_val == 1<br> - rs1_b2_val == 251<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                |[0x800004e0]:UMAX8 t6, t5, t4<br> [0x800004e4]:sw t6, 40(sp)<br>     |
|  42|[0x800022b4]<br>0xFDFE200E|- rs2_b1_val == 4<br> - rs1_b2_val == 223<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800004f8]:UMAX8 t6, t5, t4<br> [0x800004fc]:sw t6, 44(sp)<br>     |
|  43|[0x800022b8]<br>0x1310FF13|- rs2_b2_val == 16<br> - rs2_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                      |[0x80000510]:UMAX8 t6, t5, t4<br> [0x80000514]:sw t6, 48(sp)<br>     |
|  44|[0x800022bc]<br>0x1306FEFE|- rs2_b1_val == 247<br> - rs2_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                                     |[0x80000528]:UMAX8 t6, t5, t4<br> [0x8000052c]:sw t6, 52(sp)<br>     |
|  45|[0x800022c0]<br>0xFB800EFE|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000540]:UMAX8 t6, t5, t4<br> [0x80000544]:sw t6, 56(sp)<br>     |
|  46|[0x800022c4]<br>0x400EAA40|- rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000558]:UMAX8 t6, t5, t4<br> [0x8000055c]:sw t6, 60(sp)<br>     |
|  47|[0x800022c8]<br>0xDF7F1305|- rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000570]:UMAX8 t6, t5, t4<br> [0x80000574]:sw t6, 64(sp)<br>     |
|  48|[0x800022cc]<br>0xEFFFEFDF|- rs1_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000588]:UMAX8 t6, t5, t4<br> [0x8000058c]:sw t6, 68(sp)<br>     |
|  49|[0x800022d0]<br>0xFDEFFBFF|- rs1_b3_val == 253<br> - rs1_b2_val == 239<br>                                                                                                                                                                                                                                                                                                                                                     |[0x800005a0]:UMAX8 t6, t5, t4<br> [0x800005a4]:sw t6, 72(sp)<br>     |
|  50|[0x800022d4]<br>0xFDAA13F7|- rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x800005b8]:UMAX8 t6, t5, t4<br> [0x800005bc]:sw t6, 76(sp)<br>     |
|  51|[0x800022d8]<br>0xFE55BF08|- rs2_b2_val == 8<br> - rs1_b3_val == 254<br> - rs1_b2_val == 85<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                          |[0x800005d0]:UMAX8 t6, t5, t4<br> [0x800005d4]:sw t6, 80(sp)<br>     |
|  52|[0x800022e0]<br>0x0520100D|- rs2_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000600]:UMAX8 t6, t5, t4<br> [0x80000604]:sw t6, 88(sp)<br>     |
|  53|[0x800022ec]<br>0xBFBFFEFB|- rs2_b1_val == 254<br> - rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                                                     |[0x80000648]:UMAX8 t6, t5, t4<br> [0x8000064c]:sw t6, 100(sp)<br>    |
|  54|[0x800022f0]<br>0x11BF5507|- rs2_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000660]:UMAX8 t6, t5, t4<br> [0x80000664]:sw t6, 104(sp)<br>    |
|  55|[0x800022f4]<br>0x0680400B|- rs2_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000678]:UMAX8 t6, t5, t4<br> [0x8000067c]:sw t6, 108(sp)<br>    |
|  56|[0x800022f8]<br>0x08BFDF12|- rs2_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000690]:UMAX8 t6, t5, t4<br> [0x80000694]:sw t6, 112(sp)<br>    |
|  57|[0x800022fc]<br>0xBF55EF12|- rs2_b1_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800006a8]:UMAX8 t6, t5, t4<br> [0x800006ac]:sw t6, 116(sp)<br>    |
|  58|[0x80002300]<br>0x11FF08FE|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x800006c0]:UMAX8 t6, t5, t4<br> [0x800006c4]:sw t6, 120(sp)<br>    |
|  59|[0x80002304]<br>0x7F115506|- rs1_b2_val == 1<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800006d8]:UMAX8 t6, t5, t4<br> [0x800006dc]:sw t6, 124(sp)<br>    |
|  60|[0x80002308]<br>0x09AA0AEF|- rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x800006f0]:UMAX8 t6, t5, t4<br> [0x800006f4]:sw t6, 128(sp)<br>    |
|  61|[0x8000230c]<br>0x80FF1240|- rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000708]:UMAX8 t6, t5, t4<br> [0x8000070c]:sw t6, 132(sp)<br>    |
|  62|[0x80002310]<br>0xFD407FAA|- rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000720]:UMAX8 t6, t5, t4<br> [0x80000724]:sw t6, 136(sp)<br>    |
