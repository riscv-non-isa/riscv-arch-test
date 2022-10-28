
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800003b0')]      |
| SIG_REGION                | [('0x80002210', '0x800022c0', '44 words')]      |
| COV_LABELS                | sunpkd831      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sunpkd831-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 42      |
| STAT1                     | 41      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000390]:SUNPKD831 t6, t5
      [0x80000394]:sw t6, 68(ra)
 -- Signature Address: 0x800022b0 Data: 0xFF80FFAA
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd831
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == -128
      - rs1_b1_val == -86
      - rs1_b0_val == -86






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
|   1|[0x80002210]<br>0xFFEF0004|- opcode : sunpkd831<br> - rs1 : x4<br> - rd : x6<br> - rs1_b0_val == -128<br> - rs1_b3_val == -17<br> - rs1_b1_val == 4<br> |[0x80000108]:SUNPKD831 t1, tp<br> [0x8000010c]:sw t1, 0(t2)<br>      |
|   2|[0x80002214]<br>0xFFAA007F|- rs1 : x25<br> - rd : x3<br> - rs1_b3_val == -86<br> - rs1_b2_val == -33<br> - rs1_b1_val == 127<br> - rs1_b0_val == 32<br> |[0x80000118]:SUNPKD831 gp, s9<br> [0x8000011c]:sw gp, 4(t2)<br>      |
|   3|[0x80002218]<br>0x0055FFF9|- rs1 : x23<br> - rd : x1<br> - rs1_b3_val == 85<br> - rs1_b2_val == 64<br> - rs1_b0_val == -1<br>                           |[0x80000128]:SUNPKD831 ra, s7<br> [0x8000012c]:sw ra, 8(t2)<br>      |
|   4|[0x8000221c]<br>0x007F0020|- rs1 : x12<br> - rd : x23<br> - rs1_b3_val == 127<br> - rs1_b2_val == -2<br> - rs1_b1_val == 32<br> - rs1_b0_val == 8<br>   |[0x80000138]:SUNPKD831 s7, a2<br> [0x8000013c]:sw s7, 12(t2)<br>     |
|   5|[0x80002220]<br>0xFFBFFFFE|- rs1 : x11<br> - rd : x26<br> - rs1_b3_val == -65<br> - rs1_b2_val == -86<br> - rs1_b1_val == -2<br>                        |[0x80000148]:SUNPKD831 s10, a1<br> [0x8000014c]:sw s10, 16(t2)<br>   |
|   6|[0x80002224]<br>0xFFDFFFEF|- rs1 : x30<br> - rd : x21<br> - rs1_b3_val == -33<br> - rs1_b1_val == -17<br>                                               |[0x80000158]:SUNPKD831 s5, t5<br> [0x8000015c]:sw s5, 20(t2)<br>     |
|   7|[0x80002228]<br>0xFFF7FFF7|- rs1 : x28<br> - rd : x29<br> - rs1_b3_val == -9<br> - rs1_b1_val == -9<br> - rs1_b0_val == 64<br>                          |[0x80000168]:SUNPKD831 t4, t3<br> [0x8000016c]:sw t4, 24(t2)<br>     |
|   8|[0x8000222c]<br>0xFFFB007F|- rs1 : x22<br> - rd : x11<br> - rs1_b3_val == -5<br> - rs1_b0_val == -2<br>                                                 |[0x80000178]:SUNPKD831 a1, s6<br> [0x8000017c]:sw a1, 28(t2)<br>     |
|   9|[0x80002230]<br>0xFFFD0008|- rs1 : x31<br> - rd : x19<br> - rs1_b3_val == -3<br> - rs1_b1_val == 8<br> - rs1_b0_val == -33<br>                          |[0x80000188]:SUNPKD831 s3, t6<br> [0x8000018c]:sw s3, 32(t2)<br>     |
|  10|[0x80002234]<br>0xFFFEFF80|- rs1 : x9<br> - rd : x20<br> - rs1_b3_val == -2<br> - rs1_b1_val == -128<br> - rs1_b0_val == 4<br>                          |[0x80000198]:SUNPKD831 s4, s1<br> [0x8000019c]:sw s4, 36(t2)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x15<br> - rd : x0<br> - rs1_b3_val == -128<br> - rs1_b1_val == -86<br> - rs1_b0_val == -86<br>                       |[0x800001a8]:SUNPKD831 zero, a5<br> [0x800001ac]:sw zero, 40(t2)<br> |
|  12|[0x8000223c]<br>0x0040FFFA|- rs1 : x18<br> - rd : x30<br> - rs1_b3_val == 64<br> - rs1_b2_val == 85<br>                                                 |[0x800001b8]:SUNPKD831 t5, s2<br> [0x800001bc]:sw t5, 44(t2)<br>     |
|  13|[0x80002240]<br>0x0020FFBF|- rs1 : x13<br> - rd : x12<br> - rs1_b3_val == 32<br> - rs1_b2_val == 0<br> - rs1_b1_val == -65<br>                          |[0x800001c8]:SUNPKD831 a2, a3<br> [0x800001cc]:sw a2, 48(t2)<br>     |
|  14|[0x80002244]<br>0x00100055|- rs1 : x1<br> - rd : x2<br> - rs1_b3_val == 16<br> - rs1_b1_val == 85<br>                                                   |[0x800001d8]:SUNPKD831 sp, ra<br> [0x800001dc]:sw sp, 52(t2)<br>     |
|  15|[0x80002248]<br>0x0008FFFA|- rs1 : x3<br> - rd : x17<br> - rs1_b3_val == 8<br> - rs1_b2_val == -9<br> - rs1_b0_val == -9<br>                            |[0x800001e8]:SUNPKD831 a7, gp<br> [0x800001ec]:sw a7, 56(t2)<br>     |
|  16|[0x8000224c]<br>0x00040003|- rs1 : x27<br> - rd : x13<br> - rs1_b3_val == 4<br> - rs1_b2_val == -1<br>                                                  |[0x800001f8]:SUNPKD831 a3, s11<br> [0x800001fc]:sw a3, 60(t2)<br>    |
|  17|[0x80002250]<br>0x0002FFBF|- rs1 : x21<br> - rd : x8<br> - rs1_b3_val == 2<br>                                                                          |[0x80000208]:SUNPKD831 fp, s5<br> [0x8000020c]:sw fp, 64(t2)<br>     |
|  18|[0x80002254]<br>0x0001FFFC|- rs1 : x8<br> - rd : x31<br> - rs1_b3_val == 1<br> - rs1_b2_val == 127<br> - rs1_b0_val == 127<br>                          |[0x80000218]:SUNPKD831 t6, fp<br> [0x8000021c]:sw t6, 68(t2)<br>     |
|  19|[0x80002258]<br>0x0000FFF7|- rs1 : x24<br> - rd : x5<br> - rs1_b3_val == 0<br> - rs1_b2_val == 2<br>                                                    |[0x80000228]:SUNPKD831 t0, s8<br> [0x8000022c]:sw t0, 72(t2)<br>     |
|  20|[0x8000225c]<br>0x0005FF80|- rs1 : x29<br> - rd : x9<br> - rs1_b2_val == -3<br> - rs1_b0_val == -65<br>                                                 |[0x80000238]:SUNPKD831 s1, t4<br> [0x8000023c]:sw s1, 76(t2)<br>     |
|  21|[0x80002260]<br>0x0009FFFB|- rs1 : x5<br> - rd : x24<br> - rs1_b1_val == -5<br> - rs1_b0_val == -17<br>                                                 |[0x80000248]:SUNPKD831 s8, t0<br> [0x8000024c]:sw s8, 80(t2)<br>     |
|  22|[0x80002264]<br>0xFFFEFFFE|- rs1 : x2<br> - rd : x15<br> - rs1_b0_val == -5<br>                                                                         |[0x80000258]:SUNPKD831 a5, sp<br> [0x8000025c]:sw a5, 84(t2)<br>     |
|  23|[0x80002268]<br>0x0001FFFF|- rs1 : x16<br> - rd : x14<br> - rs1_b1_val == -1<br> - rs1_b0_val == -3<br>                                                 |[0x80000268]:SUNPKD831 a4, a6<br> [0x8000026c]:sw a4, 88(t2)<br>     |
|  24|[0x8000226c]<br>0xFF800003|- rs1 : x14<br> - rd : x18<br> - rs1_b2_val == 4<br> - rs1_b0_val == 16<br>                                                  |[0x80000280]:SUNPKD831 s2, a4<br> [0x80000284]:sw s2, 0(ra)<br>      |
|  25|[0x80002270]<br>0xFFEF0000|- rs1 : x7<br> - rd : x10<br> - rs1_b1_val == 0<br> - rs1_b0_val == 2<br>                                                    |[0x80000290]:SUNPKD831 a0, t2<br> [0x80000294]:sw a0, 4(ra)<br>      |
|  26|[0x80002274]<br>0xFFF90002|- rs1 : x26<br> - rd : x7<br> - rs1_b2_val == -5<br> - rs1_b1_val == 2<br> - rs1_b0_val == 1<br>                             |[0x800002a0]:SUNPKD831 t2, s10<br> [0x800002a4]:sw t2, 8(ra)<br>     |
|  27|[0x80002278]<br>0x0005FFFB|- rs1 : x20<br> - rd : x28<br> - rs1_b0_val == 0<br>                                                                         |[0x800002b0]:SUNPKD831 t3, s4<br> [0x800002b4]:sw t3, 12(ra)<br>     |
|  28|[0x8000227c]<br>0x003F0040|- rs1 : x10<br> - rd : x25<br> - rs1_b2_val == 32<br> - rs1_b1_val == 64<br>                                                 |[0x800002c0]:SUNPKD831 s9, a0<br> [0x800002c4]:sw s9, 16(ra)<br>     |
|  29|[0x80002280]<br>0x00000000|- rs1 : x17<br> - rd : x27<br> - rs1_b2_val == 16<br>                                                                        |[0x800002d0]:SUNPKD831 s11, a7<br> [0x800002d4]:sw s11, 20(ra)<br>   |
|  30|[0x80002284]<br>0x0001FFFA|- rs1 : x19<br> - rd : x22<br> - rs1_b2_val == 8<br>                                                                         |[0x800002e0]:SUNPKD831 s6, s3<br> [0x800002e4]:sw s6, 24(ra)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x0<br> - rd : x4<br>                                                                                                 |[0x800002f0]:SUNPKD831 tp, zero<br> [0x800002f4]:sw tp, 28(ra)<br>   |
|  32|[0x8000228c]<br>0x00020055|- rs1 : x6<br> - rd : x16<br> - rs1_b2_val == 1<br>                                                                          |[0x80000300]:SUNPKD831 a6, t1<br> [0x80000304]:sw a6, 32(ra)<br>     |
|  33|[0x80002290]<br>0x007FFFDF|- rs1_b1_val == -33<br>                                                                                                      |[0x80000310]:SUNPKD831 t6, t5<br> [0x80000314]:sw t6, 36(ra)<br>     |
|  34|[0x80002294]<br>0xFFC0FFFD|- rs1_b1_val == -3<br>                                                                                                       |[0x80000320]:SUNPKD831 t6, t5<br> [0x80000324]:sw t6, 40(ra)<br>     |
|  35|[0x80002298]<br>0xFFFF0055|- rs1_b3_val == -1<br>                                                                                                       |[0x80000330]:SUNPKD831 t6, t5<br> [0x80000334]:sw t6, 44(ra)<br>     |
|  36|[0x8000229c]<br>0xFFFC0010|- rs1_b1_val == 16<br>                                                                                                       |[0x80000340]:SUNPKD831 t6, t5<br> [0x80000344]:sw t6, 48(ra)<br>     |
|  37|[0x800022a0]<br>0xFFF80010|- rs1_b2_val == -65<br>                                                                                                      |[0x80000350]:SUNPKD831 t6, t5<br> [0x80000354]:sw t6, 52(ra)<br>     |
|  38|[0x800022a4]<br>0x00090001|- rs1_b1_val == 1<br>                                                                                                        |[0x80000360]:SUNPKD831 t6, t5<br> [0x80000364]:sw t6, 56(ra)<br>     |
|  39|[0x800022a8]<br>0x00070002|- rs1_b0_val == 85<br>                                                                                                       |[0x80000370]:SUNPKD831 t6, t5<br> [0x80000374]:sw t6, 60(ra)<br>     |
|  40|[0x800022ac]<br>0xFFF70004|- rs1_b2_val == -128<br>                                                                                                     |[0x80000380]:SUNPKD831 t6, t5<br> [0x80000384]:sw t6, 64(ra)<br>     |
|  41|[0x800022b4]<br>0x003F003F|- rs1_b2_val == -17<br>                                                                                                      |[0x800003a0]:SUNPKD831 t6, t5<br> [0x800003a4]:sw t6, 72(ra)<br>     |
