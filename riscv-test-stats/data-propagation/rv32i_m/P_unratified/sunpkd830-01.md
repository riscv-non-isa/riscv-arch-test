
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000410')]      |
| SIG_REGION                | [('0x80002210', '0x800022d0', '48 words')]      |
| COV_LABELS                | sunpkd830      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sunpkd830-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 48      |
| STAT1                     | 48      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |                                                         coverpoints                                                         |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFAFF80|- opcode : sunpkd830<br> - rs1 : x6<br> - rd : x22<br> - rs1_b0_val == -128<br> - rs1_b2_val == 2<br>                        |[0x80000108]:SUNPKD830 s6, t1<br> [0x8000010c]:sw s6, 0(tp)<br>      |
|   2|[0x80002214]<br>0xFFAAFFEF|- rs1 : x3<br> - rd : x28<br> - rs1_b3_val == -86<br> - rs1_b2_val == -3<br> - rs1_b1_val == -3<br> - rs1_b0_val == -17<br>  |[0x80000118]:SUNPKD830 t3, gp<br> [0x8000011c]:sw t3, 4(tp)<br>      |
|   3|[0x80002218]<br>0x0055FFFE|- rs1 : x22<br> - rd : x23<br> - rs1_b3_val == 85<br> - rs1_b2_val == 16<br> - rs1_b1_val == 8<br> - rs1_b0_val == -2<br>    |[0x80000128]:SUNPKD830 s7, s6<br> [0x8000012c]:sw s7, 8(tp)<br>      |
|   4|[0x8000221c]<br>0x007FFFFB|- rs1 : x25<br> - rd : x20<br> - rs1_b3_val == 127<br> - rs1_b2_val == 85<br> - rs1_b1_val == -33<br> - rs1_b0_val == -5<br> |[0x80000138]:SUNPKD830 s4, s9<br> [0x8000013c]:sw s4, 12(tp)<br>     |
|   5|[0x80002220]<br>0xFFBF0010|- rs1 : x26<br> - rd : x12<br> - rs1_b3_val == -65<br> - rs1_b2_val == -128<br> - rs1_b0_val == 16<br>                       |[0x80000148]:SUNPKD830 a2, s10<br> [0x8000014c]:sw a2, 16(tp)<br>    |
|   6|[0x80002224]<br>0xFFDF003F|- rs1 : x11<br> - rd : x13<br> - rs1_b3_val == -33<br>                                                                       |[0x80000158]:SUNPKD830 a3, a1<br> [0x8000015c]:sw a3, 20(tp)<br>     |
|   7|[0x80002228]<br>0xFFEF0010|- rs1 : x21<br> - rd : x5<br> - rs1_b3_val == -17<br>                                                                        |[0x80000168]:SUNPKD830 t0, s5<br> [0x8000016c]:sw t0, 24(tp)<br>     |
|   8|[0x8000222c]<br>0xFFF70055|- rs1 : x2<br> - rd : x3<br> - rs1_b3_val == -9<br> - rs1_b1_val == 1<br> - rs1_b0_val == 85<br>                             |[0x80000178]:SUNPKD830 gp, sp<br> [0x8000017c]:sw gp, 28(tp)<br>     |
|   9|[0x80002230]<br>0xFFFB0000|- rs1 : x27<br> - rd : x21<br> - rs1_b3_val == -5<br> - rs1_b2_val == -9<br> - rs1_b0_val == 0<br>                           |[0x80000188]:SUNPKD830 s5, s11<br> [0x8000018c]:sw s5, 32(tp)<br>    |
|  10|[0x80002234]<br>0xFFFDFFC0|- rs1 : x15<br> - rd : x11<br> - rs1_b3_val == -3<br>                                                                        |[0x80000198]:SUNPKD830 a1, a5<br> [0x8000019c]:sw a1, 36(tp)<br>     |
|  11|[0x80002238]<br>0xFFFE0010|- rs1 : x16<br> - rd : x10<br> - rs1_b3_val == -2<br>                                                                        |[0x800001a8]:SUNPKD830 a0, a6<br> [0x800001ac]:sw a0, 40(tp)<br>     |
|  12|[0x8000223c]<br>0xFF800055|- rs1 : x20<br> - rd : x1<br> - rs1_b3_val == -128<br> - rs1_b1_val == -17<br>                                               |[0x800001b8]:SUNPKD830 ra, s4<br> [0x800001bc]:sw ra, 44(tp)<br>     |
|  13|[0x80002240]<br>0x00400005|- rs1 : x5<br> - rd : x31<br> - rs1_b3_val == 64<br>                                                                         |[0x800001c8]:SUNPKD830 t6, t0<br> [0x800001cc]:sw t6, 48(tp)<br>     |
|  14|[0x80002244]<br>0x00200002|- rs1 : x31<br> - rd : x2<br> - rs1_b3_val == 32<br> - rs1_b0_val == 2<br>                                                   |[0x800001d8]:SUNPKD830 sp, t6<br> [0x800001dc]:sw sp, 52(tp)<br>     |
|  15|[0x80002248]<br>0x0010003F|- rs1 : x18<br> - rd : x7<br> - rs1_b3_val == 16<br>                                                                         |[0x800001e8]:SUNPKD830 t2, s2<br> [0x800001ec]:sw t2, 56(tp)<br>     |
|  16|[0x8000224c]<br>0x00080055|- rs1 : x8<br> - rd : x27<br> - rs1_b3_val == 8<br>                                                                          |[0x800001f8]:SUNPKD830 s11, fp<br> [0x800001fc]:sw s11, 60(tp)<br>   |
|  17|[0x80002250]<br>0x00040055|- rs1 : x10<br> - rd : x19<br> - rs1_b3_val == 4<br>                                                                         |[0x80000208]:SUNPKD830 s3, a0<br> [0x8000020c]:sw s3, 64(tp)<br>     |
|  18|[0x80002254]<br>0x00020055|- rs1 : x12<br> - rd : x8<br> - rs1_b3_val == 2<br> - rs1_b1_val == 85<br>                                                   |[0x80000218]:SUNPKD830 fp, a2<br> [0x8000021c]:sw fp, 68(tp)<br>     |
|  19|[0x80002258]<br>0x0001FFF9|- rs1 : x28<br> - rd : x18<br> - rs1_b3_val == 1<br>                                                                         |[0x80000228]:SUNPKD830 s2, t3<br> [0x8000022c]:sw s2, 72(tp)<br>     |
|  20|[0x8000225c]<br>0x0000FFFB|- rs1 : x7<br> - rd : x16<br> - rs1_b3_val == 0<br> - rs1_b2_val == -2<br>                                                   |[0x80000238]:SUNPKD830 a6, t2<br> [0x8000023c]:sw a6, 76(tp)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x0<br> - rd : x15<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                    |[0x80000248]:SUNPKD830 a5, zero<br> [0x8000024c]:sw a5, 80(tp)<br>   |
|  22|[0x80002264]<br>0x00000000|- rs1 : x9<br> - rd : x0<br> - rs1_b2_val == -86<br> - rs1_b1_val == -5<br> - rs1_b0_val == 32<br>                           |[0x80000258]:SUNPKD830 zero, s1<br> [0x8000025c]:sw zero, 84(tp)<br> |
|  23|[0x80002268]<br>0x00020002|- rs1 : x29<br> - rd : x6<br> - rs1_b2_val == 127<br> - rs1_b1_val == -9<br>                                                 |[0x80000268]:SUNPKD830 t1, t4<br> [0x8000026c]:sw t1, 88(tp)<br>     |
|  24|[0x8000226c]<br>0x0020FFFE|- rs1 : x14<br> - rd : x17<br> - rs1_b2_val == -65<br>                                                                       |[0x80000278]:SUNPKD830 a7, a4<br> [0x8000027c]:sw a7, 92(tp)<br>     |
|  25|[0x80002270]<br>0xFFFD0004|- rs1 : x30<br> - rd : x24<br> - rs1_b2_val == -33<br> - rs1_b1_val == -2<br> - rs1_b0_val == 4<br>                          |[0x80000290]:SUNPKD830 s8, t5<br> [0x80000294]:sw s8, 0(sp)<br>      |
|  26|[0x80002274]<br>0xFFF90002|- rs1 : x23<br> - rd : x9<br> - rs1_b2_val == -17<br>                                                                        |[0x800002a0]:SUNPKD830 s1, s7<br> [0x800002a4]:sw s1, 4(sp)<br>      |
|  27|[0x80002278]<br>0xFFFEFFBF|- rs1 : x13<br> - rd : x25<br> - rs1_b1_val == 127<br> - rs1_b0_val == -65<br>                                               |[0x800002b0]:SUNPKD830 s9, a3<br> [0x800002b4]:sw s9, 8(sp)<br>      |
|  28|[0x8000227c]<br>0x0055FFDF|- rs1 : x17<br> - rd : x29<br> - rs1_b0_val == -33<br>                                                                       |[0x800002c0]:SUNPKD830 t4, a7<br> [0x800002c4]:sw t4, 12(sp)<br>     |
|  29|[0x80002280]<br>0x0002FFF7|- rs1 : x1<br> - rd : x26<br> - rs1_b2_val == -1<br> - rs1_b0_val == -9<br>                                                  |[0x800002d0]:SUNPKD830 s10, ra<br> [0x800002d4]:sw s10, 16(sp)<br>   |
|  30|[0x80002284]<br>0xFFF6FFFD|- rs1 : x19<br> - rd : x14<br> - rs1_b2_val == -5<br> - rs1_b0_val == -3<br>                                                 |[0x800002e0]:SUNPKD830 a4, s3<br> [0x800002e4]:sw a4, 20(sp)<br>     |
|  31|[0x80002288]<br>0x00400040|- rs1 : x24<br> - rd : x30<br> - rs1_b0_val == 64<br>                                                                        |[0x800002f0]:SUNPKD830 t5, s8<br> [0x800002f4]:sw t5, 24(sp)<br>     |
|  32|[0x8000228c]<br>0x003F0008|- rs1 : x4<br> - rs1_b0_val == 8<br>                                                                                         |[0x80000300]:SUNPKD830 a5, tp<br> [0x80000304]:sw a5, 28(sp)<br>     |
|  33|[0x80002290]<br>0xFFC00001|- rd : x4<br> - rs1_b0_val == 1<br>                                                                                          |[0x80000310]:SUNPKD830 tp, s3<br> [0x80000314]:sw tp, 32(sp)<br>     |
|  34|[0x80002294]<br>0xFFAAFFFF|- rs1_b0_val == -1<br>                                                                                                       |[0x80000320]:SUNPKD830 t6, t5<br> [0x80000324]:sw t6, 36(sp)<br>     |
|  35|[0x80002298]<br>0x00000008|- rs1_b2_val == 64<br> - rs1_b1_val == -128<br>                                                                              |[0x80000330]:SUNPKD830 t6, t5<br> [0x80000334]:sw t6, 40(sp)<br>     |
|  36|[0x8000229c]<br>0x00550004|- rs1_b2_val == 32<br>                                                                                                       |[0x80000340]:SUNPKD830 t6, t5<br> [0x80000344]:sw t6, 44(sp)<br>     |
|  37|[0x800022a0]<br>0x0009FFFD|- rs1_b2_val == 8<br>                                                                                                        |[0x80000350]:SUNPKD830 t6, t5<br> [0x80000354]:sw t6, 48(sp)<br>     |
|  38|[0x800022a4]<br>0xFFF7FFAA|- rs1_b2_val == 4<br> - rs1_b0_val == -86<br>                                                                                |[0x80000360]:SUNPKD830 t6, t5<br> [0x80000364]:sw t6, 52(sp)<br>     |
|  39|[0x800022a8]<br>0x00010009|- rs1_b2_val == 1<br> - rs1_b1_val == -1<br>                                                                                 |[0x80000370]:SUNPKD830 t6, t5<br> [0x80000374]:sw t6, 56(sp)<br>     |
|  40|[0x800022ac]<br>0xFFFF0002|- rs1_b3_val == -1<br>                                                                                                       |[0x80000380]:SUNPKD830 t6, t5<br> [0x80000384]:sw t6, 60(sp)<br>     |
|  41|[0x800022b0]<br>0x0004FFFD|- rs1_b1_val == -86<br>                                                                                                      |[0x80000390]:SUNPKD830 t6, t5<br> [0x80000394]:sw t6, 64(sp)<br>     |
|  42|[0x800022b4]<br>0xFFF9FFFE|- rs1_b1_val == 64<br>                                                                                                       |[0x800003a0]:SUNPKD830 t6, t5<br> [0x800003a4]:sw t6, 68(sp)<br>     |
|  43|[0x800022b8]<br>0xFFFC0020|- rs1_b1_val == 32<br>                                                                                                       |[0x800003b0]:SUNPKD830 t6, t5<br> [0x800003b4]:sw t6, 72(sp)<br>     |
|  44|[0x800022bc]<br>0xFF80FFC0|- rs1_b1_val == 16<br>                                                                                                       |[0x800003c0]:SUNPKD830 t6, t5<br> [0x800003c4]:sw t6, 76(sp)<br>     |
|  45|[0x800022c0]<br>0x00070055|- rs1_b1_val == 4<br>                                                                                                        |[0x800003d0]:SUNPKD830 t6, t5<br> [0x800003d4]:sw t6, 80(sp)<br>     |
|  46|[0x800022c4]<br>0xFFF7FFF8|- rs1_b1_val == 2<br>                                                                                                        |[0x800003e0]:SUNPKD830 t6, t5<br> [0x800003e4]:sw t6, 84(sp)<br>     |
|  47|[0x800022c8]<br>0xFFFBFFFF|- rs1_b1_val == -65<br>                                                                                                      |[0x800003f0]:SUNPKD830 t6, t5<br> [0x800003f4]:sw t6, 88(sp)<br>     |
|  48|[0x800022cc]<br>0x0002007F|- rs1_b0_val == 127<br>                                                                                                      |[0x80000400]:SUNPKD830 t6, t5<br> [0x80000404]:sw t6, 92(sp)<br>     |
