
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000440')]      |
| SIG_REGION                | [('0x80002210', '0x800022e0', '52 words')]      |
| COV_LABELS                | srai8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srai8.u-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 51      |
| STAT1                     | 50      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000430]:SRAI8_U t6, t5, 4
      [0x80000434]:sw t6, 104(ra)
 -- Signature Address: 0x800022d8 Data: 0x040400FC
 -- Redundant Coverpoints hit by the op
      - opcode : srai8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 4
      - rs1_b3_val == 64
      - rs1_b1_val == 2






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

|s.no|        signature         |                                                              coverpoints                                                               |                                code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00FF01F0|- opcode : srai8.u<br> - rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 3<br> - rs1_b3_val == 1<br> |[0x80000108]:SRAI8_U s9, s9, 3<br> [0x8000010c]:sw s9, 0(a5)<br>     |
|   2|[0x80002214]<br>0x00010000|- rs1 : x4<br> - rd : x22<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b2_val == 64<br> - rs1_b1_val == -9<br>                          |[0x80000118]:SRAI8_U s6, tp, 7<br> [0x8000011c]:sw s6, 4(a5)<br>     |
|   3|[0x80002218]<br>0x00FE0000|- rs1 : x23<br> - rd : x7<br> - imm_val == 6<br> - rs1_b2_val == -128<br> - rs1_b0_val == 0<br>                                         |[0x80000128]:SRAI8_U t2, s7, 6<br> [0x8000012c]:sw t2, 8(a5)<br>     |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x3<br> - rd : x1<br> - imm_val == 5<br> - rs1_b3_val == 0<br> - rs1_b2_val == 1<br> - rs1_b1_val == -3<br>                      |[0x80000138]:SRAI8_U ra, gp, 5<br> [0x8000013c]:sw ra, 12(a5)<br>    |
|   5|[0x80002220]<br>0xFCFFFB05|- rs1 : x12<br> - rd : x27<br> - imm_val == 4<br> - rs1_b3_val == -65<br> - rs1_b1_val == -86<br> - rs1_b0_val == 85<br>                |[0x80000148]:SRAI8_U s11, a2, 4<br> [0x8000014c]:sw s11, 16(a5)<br>  |
|   6|[0x80002224]<br>0x0102E001|- rs1 : x26<br> - rd : x12<br> - imm_val == 2<br> - rs1_b1_val == -128<br> - rs1_b0_val == 4<br>                                        |[0x80000158]:SRAI8_U a2, s10, 2<br> [0x8000015c]:sw a2, 20(a5)<br>   |
|   7|[0x80002228]<br>0xFCC0F000|- rs1 : x29<br> - rd : x31<br> - imm_val == 1<br> - rs1_b1_val == -33<br> - rs1_b0_val == -1<br>                                        |[0x80000168]:SRAI8_U t6, t4, 1<br> [0x8000016c]:sw t6, 24(a5)<br>    |
|   8|[0x8000222c]<br>0x08FAF906|- rs1 : x7<br> - rd : x4<br> - imm_val == 0<br> - rs1_b3_val == 8<br>                                                                   |[0x80000178]:SRAI8_U tp, t2, 0<br> [0x8000017c]:sw tp, 28(a5)<br>    |
|   9|[0x80002230]<br>0xFBFF0000|- rs1 : x5<br> - rd : x10<br> - rs1_b3_val == -86<br> - rs1_b2_val == -17<br> - rs1_b1_val == -1<br>                                    |[0x80000188]:SRAI8_U a0, t0, 4<br> [0x8000018c]:sw a0, 32(a5)<br>    |
|  10|[0x80002234]<br>0x00000000|- rs1 : x0<br> - rd : x23<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                               |[0x80000198]:SRAI8_U s7, zero, 7<br> [0x8000019c]:sw s7, 36(a5)<br>  |
|  11|[0x80002238]<br>0x02FF0000|- rs1 : x24<br> - rd : x26<br> - rs1_b3_val == 127<br> - rs1_b2_val == -65<br>                                                          |[0x800001a8]:SRAI8_U s10, s8, 6<br> [0x800001ac]:sw s10, 40(a5)<br>  |
|  12|[0x8000223c]<br>0x00FF0000|- rs1 : x10<br> - rd : x9<br> - rs1_b3_val == -33<br>                                                                                   |[0x800001b8]:SRAI8_U s1, a0, 7<br> [0x800001bc]:sw s1, 44(a5)<br>    |
|  13|[0x80002240]<br>0xF8200204|- rs1 : x27<br> - rd : x8<br> - rs1_b3_val == -17<br> - rs1_b1_val == 4<br>                                                             |[0x800001c8]:SRAI8_U fp, s11, 1<br> [0x800001cc]:sw fp, 48(a5)<br>   |
|  14|[0x80002244]<br>0xF73FFB07|- rs1 : x18<br> - rd : x28<br> - rs1_b3_val == -9<br> - rs1_b1_val == -5<br>                                                            |[0x800001d8]:SRAI8_U t3, s2, 0<br> [0x800001dc]:sw t3, 52(a5)<br>    |
|  15|[0x80002248]<br>0xFF00FCF8|- rs1 : x2<br> - rd : x19<br> - rs1_b3_val == -5<br> - rs1_b2_val == -2<br>                                                             |[0x800001e8]:SRAI8_U s3, sp, 3<br> [0x800001ec]:sw s3, 56(a5)<br>    |
|  16|[0x8000224c]<br>0x00010000|- rs1 : x13<br> - rd : x21<br> - rs1_b3_val == -3<br> - rs1_b0_val == -17<br>                                                           |[0x800001f8]:SRAI8_U s5, a3, 6<br> [0x800001fc]:sw s5, 60(a5)<br>    |
|  17|[0x80002250]<br>0x00000000|- rs1 : x17<br> - rd : x6<br> - rs1_b3_val == -2<br> - rs1_b1_val == 8<br>                                                              |[0x80000208]:SRAI8_U t1, a7, 5<br> [0x8000020c]:sw t1, 64(a5)<br>    |
|  18|[0x80002254]<br>0x8001FE09|- rs1 : x1<br> - rd : x30<br> - rs1_b3_val == -128<br> - rs1_b1_val == -2<br>                                                           |[0x80000218]:SRAI8_U t5, ra, 0<br> [0x8000021c]:sw t5, 68(a5)<br>    |
|  19|[0x80002258]<br>0x01000101|- rs1 : x21<br> - rd : x13<br> - rs1_b3_val == 64<br> - rs1_b2_val == 4<br> - rs1_b1_val == 32<br>                                      |[0x80000228]:SRAI8_U a3, s5, 6<br> [0x8000022c]:sw a3, 72(a5)<br>    |
|  20|[0x8000225c]<br>0x000000FF|- rs1 : x31<br> - rd : x14<br> - rs1_b3_val == 32<br>                                                                                   |[0x80000238]:SRAI8_U a4, t6, 7<br> [0x8000023c]:sw a4, 76(a5)<br>    |
|  21|[0x80002260]<br>0x08FCFEFF|- rs1 : x30<br> - rd : x24<br> - rs1_b3_val == 16<br> - rs1_b0_val == -2<br>                                                            |[0x80000248]:SRAI8_U s8, t5, 1<br> [0x8000024c]:sw s8, 80(a5)<br>    |
|  22|[0x80002264]<br>0x0000FB00|- rs1 : x22<br> - rd : x5<br> - rs1_b3_val == 4<br>                                                                                     |[0x80000258]:SRAI8_U t0, s6, 4<br> [0x8000025c]:sw t0, 84(a5)<br>    |
|  23|[0x80002268]<br>0x00000000|- rs1 : x28<br> - rd : x29<br> - rs1_b3_val == 2<br>                                                                                    |[0x80000268]:SRAI8_U t4, t3, 7<br> [0x8000026c]:sw t4, 88(a5)<br>    |
|  24|[0x8000226c]<br>0x00FFFEFD|- rs1 : x11<br> - rd : x2<br> - rs1_b3_val == -1<br>                                                                                    |[0x80000278]:SRAI8_U sp, a1, 1<br> [0x8000027c]:sw sp, 92(a5)<br>    |
|  25|[0x80002270]<br>0x20AAAAFC|- rs1 : x16<br> - rd : x3<br> - rs1_b2_val == -86<br>                                                                                   |[0x80000290]:SRAI8_U gp, a6, 0<br> [0x80000294]:sw gp, 0(ra)<br>     |
|  26|[0x80002274]<br>0x00000000|- rs1 : x8<br> - rd : x0<br> - rs1_b1_val == 2<br>                                                                                      |[0x800002a0]:SRAI8_U zero, fp, 4<br> [0x800002a4]:sw zero, 4(ra)<br> |
|  27|[0x80002278]<br>0x02000000|- rs1 : x15<br> - rd : x20<br> - rs1_b1_val == 1<br>                                                                                    |[0x800002b0]:SRAI8_U s4, a5, 4<br> [0x800002b4]:sw s4, 8(ra)<br>     |
|  28|[0x8000227c]<br>0x000000FF|- rs1 : x20<br> - rd : x17<br> - rs1_b2_val == -1<br> - rs1_b0_val == -86<br>                                                           |[0x800002c0]:SRAI8_U a7, s4, 6<br> [0x800002c4]:sw a7, 12(ra)<br>    |
|  29|[0x80002280]<br>0xFF0400FC|- rs1 : x19<br> - rd : x15<br> - rs1_b0_val == -65<br>                                                                                  |[0x800002d0]:SRAI8_U a5, s3, 4<br> [0x800002d4]:sw a5, 16(ra)<br>    |
|  30|[0x80002284]<br>0x0101FFFC|- rs1 : x9<br> - rd : x18<br> - rs1_b0_val == -33<br>                                                                                   |[0x800002e0]:SRAI8_U s2, s1, 3<br> [0x800002e4]:sw s2, 20(ra)<br>    |
|  31|[0x80002288]<br>0x00000000|- rs1 : x6<br> - rd : x11<br> - rs1_b2_val == 2<br> - rs1_b0_val == -9<br>                                                              |[0x800002f0]:SRAI8_U a1, t1, 7<br> [0x800002f4]:sw a1, 24(ra)<br>    |
|  32|[0x8000228c]<br>0x02FE0000|- rs1 : x14<br> - rd : x16<br> - rs1_b0_val == -5<br>                                                                                   |[0x80000300]:SRAI8_U a6, a4, 6<br> [0x80000304]:sw a6, 28(ra)<br>    |
|  33|[0x80002290]<br>0xFB010400|- rs1_b2_val == 8<br> - rs1_b1_val == 64<br> - rs1_b0_val == -3<br>                                                                     |[0x80000310]:SRAI8_U t6, t5, 4<br> [0x80000314]:sw t6, 32(ra)<br>    |
|  34|[0x80002294]<br>0x0102F010|- rs1_b1_val == -65<br> - rs1_b0_val == 64<br>                                                                                          |[0x80000320]:SRAI8_U t6, t5, 2<br> [0x80000324]:sw t6, 36(ra)<br>    |
|  35|[0x80002298]<br>0xFB04FD10|- rs1_b0_val == 32<br>                                                                                                                  |[0x80000330]:SRAI8_U t6, t5, 1<br> [0x80000334]:sw t6, 40(ra)<br>    |
|  36|[0x8000229c]<br>0x00000001|- rs1_b0_val == 16<br>                                                                                                                  |[0x80000340]:SRAI8_U t6, t5, 5<br> [0x80000344]:sw t6, 44(ra)<br>    |
|  37|[0x800022a0]<br>0xFF000000|- rs1_b0_val == 8<br>                                                                                                                   |[0x80000350]:SRAI8_U t6, t5, 5<br> [0x80000354]:sw t6, 48(ra)<br>    |
|  38|[0x800022a4]<br>0x04F0202B|- rs1_b2_val == -33<br>                                                                                                                 |[0x80000360]:SRAI8_U t6, t5, 1<br> [0x80000364]:sw t6, 52(ra)<br>    |
|  39|[0x800022a8]<br>0xFF000000|- rs1_b2_val == -9<br>                                                                                                                  |[0x80000370]:SRAI8_U t6, t5, 5<br> [0x80000374]:sw t6, 56(ra)<br>    |
|  40|[0x800022ac]<br>0xFEFE4004|- rs1_b2_val == -5<br> - rs1_b1_val == 127<br>                                                                                          |[0x80000380]:SRAI8_U t6, t5, 1<br> [0x80000384]:sw t6, 60(ra)<br>    |
|  41|[0x800022b0]<br>0xC0FF2BC0|- rs1_b2_val == -3<br> - rs1_b1_val == 85<br>                                                                                           |[0x80000390]:SRAI8_U t6, t5, 1<br> [0x80000394]:sw t6, 64(ra)<br>    |
|  42|[0x800022b4]<br>0x00010000|- rs1_b2_val == 32<br>                                                                                                                  |[0x800003a0]:SRAI8_U t6, t5, 5<br> [0x800003a4]:sw t6, 68(ra)<br>    |
|  43|[0x800022b8]<br>0x0000FF00|- rs1_b2_val == 16<br>                                                                                                                  |[0x800003b0]:SRAI8_U t6, t5, 6<br> [0x800003b4]:sw t6, 72(ra)<br>    |
|  44|[0x800022bc]<br>0x02FFFF00|- rs1_b0_val == 2<br>                                                                                                                   |[0x800003c0]:SRAI8_U t6, t5, 3<br> [0x800003c4]:sw t6, 76(ra)<br>    |
|  45|[0x800022c0]<br>0x01000100|- rs1_b0_val == 1<br>                                                                                                                   |[0x800003d0]:SRAI8_U t6, t5, 3<br> [0x800003d4]:sw t6, 80(ra)<br>    |
|  46|[0x800022c4]<br>0x00000000|- rs1_b1_val == 16<br>                                                                                                                  |[0x800003e0]:SRAI8_U t6, t5, 7<br> [0x800003e4]:sw t6, 84(ra)<br>    |
|  47|[0x800022c8]<br>0x0001FF00|- rs1_b2_val == 85<br>                                                                                                                  |[0x800003f0]:SRAI8_U t6, t5, 7<br> [0x800003f4]:sw t6, 88(ra)<br>    |
|  48|[0x800022cc]<br>0xF9DFEF7F|- rs1_b1_val == -17<br> - rs1_b0_val == 127<br>                                                                                         |[0x80000400]:SRAI8_U t6, t5, 0<br> [0x80000404]:sw t6, 92(ra)<br>    |
|  49|[0x800022d0]<br>0x00010000|- rs1_b2_val == 127<br>                                                                                                                 |[0x80000410]:SRAI8_U t6, t5, 7<br> [0x80000414]:sw t6, 96(ra)<br>    |
|  50|[0x800022d4]<br>0x0100FF01|- rs1_b3_val == 85<br>                                                                                                                  |[0x80000420]:SRAI8_U t6, t5, 7<br> [0x80000424]:sw t6, 100(ra)<br>   |
