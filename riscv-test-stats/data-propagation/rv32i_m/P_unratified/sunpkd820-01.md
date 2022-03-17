
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80002210', '0x800022e0', '52 words')]      |
| COV_LABELS                | sunpkd820      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sunpkd820-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 49      |
| STAT1                     | 48      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003d0]:SUNPKD820 t6, t5
      [0x800003d4]:sw t6, 80(ra)
 -- Signature Address: 0x800022c0 Data: 0x00080020
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd820
      - rs1 : x30
      - rd : x31
      - rs1_b2_val == 8
      - rs1_b1_val == 0
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

|s.no|        signature         |                                                                  coverpoints                                                                  |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : sunpkd820<br> - rs1 : x0<br> - rd : x30<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br> |[0x80000108]:SUNPKD820 t5, zero<br> [0x8000010c]:sw t5, 0(a7)<br>    |
|   2|[0x80002214]<br>0x00400010|- rs1 : x13<br> - rd : x22<br> - rs1_b3_val == -86<br> - rs1_b2_val == 64<br> - rs1_b0_val == 16<br>                                           |[0x80000118]:SUNPKD820 s6, a3<br> [0x8000011c]:sw s6, 4(a7)<br>      |
|   3|[0x80002218]<br>0xFFDFFFF9|- rs1 : x2<br> - rd : x18<br> - rs1_b3_val == 85<br> - rs1_b2_val == -33<br> - rs1_b1_val == 32<br>                                            |[0x80000128]:SUNPKD820 s2, sp<br> [0x8000012c]:sw s2, 8(a7)<br>      |
|   4|[0x8000221c]<br>0xFFFCFFC0|- rs1 : x8<br> - rd : x4<br> - rs1_b3_val == 127<br>                                                                                           |[0x80000138]:SUNPKD820 tp, fp<br> [0x8000013c]:sw tp, 12(a7)<br>     |
|   5|[0x80002220]<br>0xFFFDFFFD|- rs1 : x27<br> - rd : x24<br> - rs1_b3_val == -65<br> - rs1_b2_val == -3<br> - rs1_b0_val == -3<br>                                           |[0x80000148]:SUNPKD820 s8, s11<br> [0x8000014c]:sw s8, 16(a7)<br>    |
|   6|[0x80002224]<br>0x0007FFF9|- rs1 : x6<br> - rd : x10<br> - rs1_b3_val == -33<br> - rs1_b1_val == -3<br>                                                                   |[0x80000158]:SUNPKD820 a0, t1<br> [0x8000015c]:sw a0, 20(a7)<br>     |
|   7|[0x80002228]<br>0xFFFCFFF8|- rs1 : x28<br> - rd : x20<br> - rs1_b3_val == -17<br>                                                                                         |[0x80000168]:SUNPKD820 s4, t3<br> [0x8000016c]:sw s4, 24(a7)<br>     |
|   8|[0x8000222c]<br>0x0003FFF9|- rs1 : x30<br> - rd : x28<br> - rs1_b3_val == -9<br>                                                                                          |[0x80000178]:SUNPKD820 t3, t5<br> [0x8000017c]:sw t3, 28(a7)<br>     |
|   9|[0x80002230]<br>0x0055007F|- rs1 : x31<br> - rd : x3<br> - rs1_b3_val == -5<br> - rs1_b2_val == 85<br> - rs1_b0_val == 127<br>                                            |[0x80000188]:SUNPKD820 gp, t6<br> [0x8000018c]:sw gp, 32(a7)<br>     |
|  10|[0x80002234]<br>0x0005FFF7|- rs1 : x12<br> - rd : x5<br> - rs1_b3_val == -3<br> - rs1_b1_val == -1<br> - rs1_b0_val == -9<br>                                             |[0x80000198]:SUNPKD820 t0, a2<br> [0x8000019c]:sw t0, 36(a7)<br>     |
|  11|[0x80002238]<br>0xFFFA0005|- rs1 : x14<br> - rd : x29<br> - rs1_b3_val == -2<br>                                                                                          |[0x800001a8]:SUNPKD820 t4, a4<br> [0x800001ac]:sw t4, 40(a7)<br>     |
|  12|[0x8000223c]<br>0x0000FFFD|- rs1 : x20<br> - rd : x31<br> - rs1_b3_val == -128<br> - rs1_b1_val == 2<br>                                                                  |[0x800001b8]:SUNPKD820 t6, s4<br> [0x800001bc]:sw t6, 44(a7)<br>     |
|  13|[0x80002240]<br>0xFFC00002|- rs1 : x4<br> - rd : x9<br> - rs1_b3_val == 64<br> - rs1_b0_val == 2<br>                                                                      |[0x800001c8]:SUNPKD820 s1, tp<br> [0x800001cc]:sw s1, 48(a7)<br>     |
|  14|[0x80002244]<br>0x003F0002|- rs1 : x1<br> - rd : x26<br> - rs1_b3_val == 32<br>                                                                                           |[0x800001d8]:SUNPKD820 s10, ra<br> [0x800001dc]:sw s10, 52(a7)<br>   |
|  15|[0x80002248]<br>0x00000000|- rs1 : x25<br> - rd : x0<br> - rs1_b3_val == 16<br> - rs1_b1_val == 1<br> - rs1_b0_val == 4<br>                                               |[0x800001e8]:SUNPKD820 zero, s9<br> [0x800001ec]:sw zero, 56(a7)<br> |
|  16|[0x8000224c]<br>0xFFFA0007|- rs1 : x10<br> - rd : x1<br> - rs1_b3_val == 8<br>                                                                                            |[0x800001f8]:SUNPKD820 ra, a0<br> [0x800001fc]:sw ra, 60(a7)<br>     |
|  17|[0x80002250]<br>0x00400000|- rs1 : x7<br> - rd : x8<br> - rs1_b3_val == 4<br>                                                                                             |[0x80000208]:SUNPKD820 fp, t2<br> [0x8000020c]:sw fp, 64(a7)<br>     |
|  18|[0x80002254]<br>0x00050000|- rs1 : x19<br> - rd : x25<br> - rs1_b3_val == 2<br>                                                                                           |[0x80000218]:SUNPKD820 s9, s3<br> [0x8000021c]:sw s9, 68(a7)<br>     |
|  19|[0x80002258]<br>0xFFBFFFFF|- rs1 : x5<br> - rd : x12<br> - rs1_b3_val == 1<br> - rs1_b2_val == -65<br> - rs1_b1_val == -5<br> - rs1_b0_val == -1<br>                      |[0x80000228]:SUNPKD820 a2, t0<br> [0x8000022c]:sw a2, 72(a7)<br>     |
|  20|[0x8000225c]<br>0x007FFF80|- rs1 : x26<br> - rd : x2<br> - rs1_b0_val == -128<br> - rs1_b2_val == 127<br>                                                                 |[0x80000238]:SUNPKD820 sp, s10<br> [0x8000023c]:sw sp, 76(a7)<br>    |
|  21|[0x80002260]<br>0x0004003F|- rs1 : x22<br> - rd : x11<br> - rs1_b3_val == -1<br> - rs1_b2_val == 4<br>                                                                    |[0x80000248]:SUNPKD820 a1, s6<br> [0x8000024c]:sw a1, 80(a7)<br>     |
|  22|[0x80002264]<br>0xFFAA0009|- rs1 : x3<br> - rd : x15<br> - rs1_b2_val == -86<br> - rs1_b1_val == -9<br>                                                                   |[0x80000258]:SUNPKD820 a5, gp<br> [0x8000025c]:sw a5, 84(a7)<br>     |
|  23|[0x80002268]<br>0xFFEF0055|- rs1 : x18<br> - rd : x6<br> - rs1_b2_val == -17<br> - rs1_b1_val == -17<br> - rs1_b0_val == 85<br>                                           |[0x80000268]:SUNPKD820 t1, s2<br> [0x8000026c]:sw t1, 88(a7)<br>     |
|  24|[0x8000226c]<br>0xFFF7FFEF|- rs1 : x11<br> - rd : x16<br> - rs1_b2_val == -9<br> - rs1_b1_val == 127<br> - rs1_b0_val == -17<br>                                          |[0x80000278]:SUNPKD820 a6, a1<br> [0x8000027c]:sw a6, 92(a7)<br>     |
|  25|[0x80002270]<br>0x0006FFBF|- rs1 : x23<br> - rd : x21<br> - rs1_b0_val == -65<br>                                                                                         |[0x80000290]:SUNPKD820 s5, s7<br> [0x80000294]:sw s5, 0(ra)<br>      |
|  26|[0x80002274]<br>0x0006FFDF|- rs1 : x15<br> - rd : x17<br> - rs1_b0_val == -33<br>                                                                                         |[0x800002a0]:SUNPKD820 a7, a5<br> [0x800002a4]:sw a7, 4(ra)<br>      |
|  27|[0x80002278]<br>0x0009FFFB|- rs1 : x16<br> - rd : x27<br> - rs1_b0_val == -5<br>                                                                                          |[0x800002b0]:SUNPKD820 s11, a6<br> [0x800002b4]:sw s11, 8(ra)<br>    |
|  28|[0x8000227c]<br>0x0001FFFE|- rs1 : x21<br> - rd : x13<br> - rs1_b2_val == 1<br> - rs1_b0_val == -2<br>                                                                    |[0x800002c0]:SUNPKD820 a3, s5<br> [0x800002c4]:sw a3, 12(ra)<br>     |
|  29|[0x80002280]<br>0xFFDF0040|- rs1 : x9<br> - rd : x23<br> - rs1_b1_val == 85<br> - rs1_b0_val == 64<br>                                                                    |[0x800002d0]:SUNPKD820 s7, s1<br> [0x800002d4]:sw s7, 16(ra)<br>     |
|  30|[0x80002284]<br>0xFFFD0020|- rs1 : x24<br> - rd : x19<br> - rs1_b0_val == 32<br>                                                                                          |[0x800002e0]:SUNPKD820 s3, s8<br> [0x800002e4]:sw s3, 20(ra)<br>     |
|  31|[0x80002288]<br>0xFFF70008|- rs1 : x17<br> - rd : x7<br> - rs1_b0_val == 8<br>                                                                                            |[0x800002f0]:SUNPKD820 t2, a7<br> [0x800002f4]:sw t2, 24(ra)<br>     |
|  32|[0x8000228c]<br>0x00020001|- rs1 : x29<br> - rd : x14<br> - rs1_b2_val == 2<br> - rs1_b1_val == -86<br> - rs1_b0_val == 1<br>                                             |[0x80000300]:SUNPKD820 a4, t4<br> [0x80000304]:sw a4, 28(ra)<br>     |
|  33|[0x80002290]<br>0xFFFBFFF9|- rs1_b2_val == -5<br>                                                                                                                         |[0x80000310]:SUNPKD820 t6, t5<br> [0x80000314]:sw t6, 32(ra)<br>     |
|  34|[0x80002294]<br>0x0020FFF7|- rs1_b2_val == 32<br>                                                                                                                         |[0x80000320]:SUNPKD820 t6, t5<br> [0x80000324]:sw t6, 36(ra)<br>     |
|  35|[0x80002298]<br>0x0010FFFF|- rs1_b2_val == 16<br>                                                                                                                         |[0x80000330]:SUNPKD820 t6, t5<br> [0x80000334]:sw t6, 40(ra)<br>     |
|  36|[0x8000229c]<br>0x00080007|- rs1_b2_val == 8<br>                                                                                                                          |[0x80000340]:SUNPKD820 t6, t5<br> [0x80000344]:sw t6, 44(ra)<br>     |
|  37|[0x800022a0]<br>0xFFF80003|- rs1_b1_val == -65<br>                                                                                                                        |[0x80000350]:SUNPKD820 t6, t5<br> [0x80000354]:sw t6, 48(ra)<br>     |
|  38|[0x800022a4]<br>0xFFEFFFF6|- rs1_b1_val == -33<br>                                                                                                                        |[0x80000360]:SUNPKD820 t6, t5<br> [0x80000364]:sw t6, 52(ra)<br>     |
|  39|[0x800022a8]<br>0x0009FFDF|- rs1_b1_val == -2<br>                                                                                                                         |[0x80000370]:SUNPKD820 t6, t5<br> [0x80000374]:sw t6, 56(ra)<br>     |
|  40|[0x800022ac]<br>0xFFFDFFFB|- rs1_b1_val == -128<br>                                                                                                                       |[0x80000380]:SUNPKD820 t6, t5<br> [0x80000384]:sw t6, 60(ra)<br>     |
|  41|[0x800022b0]<br>0x00010004|- rs1_b1_val == 64<br>                                                                                                                         |[0x80000390]:SUNPKD820 t6, t5<br> [0x80000394]:sw t6, 64(ra)<br>     |
|  42|[0x800022b4]<br>0x00070055|- rs1_b1_val == 16<br>                                                                                                                         |[0x800003a0]:SUNPKD820 t6, t5<br> [0x800003a4]:sw t6, 68(ra)<br>     |
|  43|[0x800022b8]<br>0xFFFB0055|- rs1_b1_val == 8<br>                                                                                                                          |[0x800003b0]:SUNPKD820 t6, t5<br> [0x800003b4]:sw t6, 72(ra)<br>     |
|  44|[0x800022bc]<br>0xFFF70001|- rs1_b1_val == 4<br>                                                                                                                          |[0x800003c0]:SUNPKD820 t6, t5<br> [0x800003c4]:sw t6, 76(ra)<br>     |
|  45|[0x800022c4]<br>0x007FFFAA|- rs1_b0_val == -86<br>                                                                                                                        |[0x800003e0]:SUNPKD820 t6, t5<br> [0x800003e4]:sw t6, 84(ra)<br>     |
|  46|[0x800022c8]<br>0xFFFE0008|- rs1_b2_val == -2<br>                                                                                                                         |[0x800003f0]:SUNPKD820 t6, t5<br> [0x800003f4]:sw t6, 88(ra)<br>     |
|  47|[0x800022cc]<br>0xFF800003|- rs1_b2_val == -128<br>                                                                                                                       |[0x80000400]:SUNPKD820 t6, t5<br> [0x80000404]:sw t6, 92(ra)<br>     |
|  48|[0x800022d0]<br>0xFFFFFF80|- rs1_b2_val == -1<br>                                                                                                                         |[0x80000410]:SUNPKD820 t6, t5<br> [0x80000414]:sw t6, 96(ra)<br>     |
