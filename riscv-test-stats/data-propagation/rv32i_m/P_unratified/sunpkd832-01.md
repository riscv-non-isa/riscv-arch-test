
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
| COV_LABELS                | sunpkd832      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sunpkd832-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 51      |
| STAT1                     | 49      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000033c]:SUNPKD832 t6, t5
      [0x80000340]:sw t6, 44(sp)
 -- Signature Address: 0x8000229c Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 0
      - rs1_b2_val == 8
      - rs1_b1_val == 0
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000041c]:SUNPKD832 t6, t5
      [0x80000420]:sw t6, 100(sp)
 -- Signature Address: 0x800022d4 Data: 0x0001FFAA
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 1
      - rs1_b2_val == -86
      - rs1_b1_val == -5
      - rs1_b0_val == -9






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
|   1|[0x80002210]<br>0xFFF6007F|- opcode : sunpkd832<br> - rs1 : x7<br> - rd : x25<br> - rs1_b0_val == -128<br> - rs1_b2_val == 127<br>                      |[0x80000108]:SUNPKD832 s9, t2<br> [0x8000010c]:sw s9, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFAAFFBF|- rs1 : x23<br> - rd : x12<br> - rs1_b3_val == -86<br> - rs1_b2_val == -65<br> - rs1_b1_val == 0<br> - rs1_b0_val == 127<br> |[0x80000118]:SUNPKD832 a2, s7<br> [0x8000011c]:sw a2, 4(ra)<br>      |
|   3|[0x80002218]<br>0x00550055|- rs1 : x29<br> - rd : x28<br> - rs1_b3_val == 85<br> - rs1_b2_val == 85<br> - rs1_b0_val == 85<br>                          |[0x80000128]:SUNPKD832 t3, t4<br> [0x8000012c]:sw t3, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x007F0000|- rs1 : x13<br> - rd : x24<br> - rs1_b3_val == 127<br> - rs1_b2_val == 0<br> - rs1_b1_val == 85<br>                          |[0x80000138]:SUNPKD832 s8, a3<br> [0x8000013c]:sw s8, 12(ra)<br>     |
|   5|[0x80002220]<br>0xFFBF0008|- rs1 : x22<br> - rd : x15<br> - rs1_b3_val == -65<br> - rs1_b2_val == 8<br>                                                 |[0x80000148]:SUNPKD832 a5, s6<br> [0x8000014c]:sw a5, 16(ra)<br>     |
|   6|[0x80002224]<br>0xFFDFFFFC|- rs1 : x18<br> - rd : x23<br> - rs1_b3_val == -33<br> - rs1_b0_val == -33<br>                                               |[0x80000158]:SUNPKD832 s7, s2<br> [0x8000015c]:sw s7, 20(ra)<br>     |
|   7|[0x80002228]<br>0xFFEF0008|- rs1 : x15<br> - rd : x11<br> - rs1_b3_val == -17<br>                                                                       |[0x80000168]:SUNPKD832 a1, a5<br> [0x8000016c]:sw a1, 24(ra)<br>     |
|   8|[0x8000222c]<br>0xFFF70008|- rs1 : x16<br> - rd : x3<br> - rs1_b3_val == -9<br>                                                                         |[0x80000178]:SUNPKD832 gp, a6<br> [0x8000017c]:sw gp, 28(ra)<br>     |
|   9|[0x80002230]<br>0xFFFB003F|- rs1 : x2<br> - rd : x6<br> - rs1_b3_val == -5<br> - rs1_b0_val == 64<br>                                                   |[0x80000188]:SUNPKD832 t1, sp<br> [0x8000018c]:sw t1, 32(ra)<br>     |
|  10|[0x80002234]<br>0xFFFDFFFF|- rs1 : x26<br> - rd : x19<br> - rs1_b3_val == -3<br> - rs1_b2_val == -1<br>                                                 |[0x80000198]:SUNPKD832 s3, s10<br> [0x8000019c]:sw s3, 36(ra)<br>    |
|  11|[0x80002238]<br>0xFFFE0002|- rs1 : x21<br> - rd : x9<br> - rs1_b3_val == -2<br> - rs1_b2_val == 2<br> - rs1_b1_val == -17<br>                           |[0x800001a8]:SUNPKD832 s1, s5<br> [0x800001ac]:sw s1, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFF80FFFB|- rs1 : x5<br> - rd : x4<br> - rs1_b3_val == -128<br> - rs1_b2_val == -5<br> - rs1_b1_val == 127<br>                         |[0x800001b8]:SUNPKD832 tp, t0<br> [0x800001bc]:sw tp, 44(ra)<br>     |
|  13|[0x80002240]<br>0x00400000|- rs1 : x25<br> - rd : x8<br> - rs1_b3_val == 64<br>                                                                         |[0x800001c8]:SUNPKD832 fp, s9<br> [0x800001cc]:sw fp, 48(ra)<br>     |
|  14|[0x80002244]<br>0x0020FFC0|- rs1 : x6<br> - rd : x31<br> - rs1_b3_val == 32<br>                                                                         |[0x800001d8]:SUNPKD832 t6, t1<br> [0x800001dc]:sw t6, 52(ra)<br>     |
|  15|[0x80002248]<br>0x0010FFFF|- rs1 : x14<br> - rd : x21<br> - rs1_b3_val == 16<br> - rs1_b1_val == -65<br>                                                |[0x800001e8]:SUNPKD832 s5, a4<br> [0x800001ec]:sw s5, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x0008FFFF|- rs1 : x4<br> - rd : x26<br> - rs1_b3_val == 8<br>                                                                          |[0x800001f8]:SUNPKD832 s10, tp<br> [0x800001fc]:sw s10, 60(ra)<br>   |
|  17|[0x80002250]<br>0x00040001|- rs1 : x27<br> - rd : x29<br> - rs1_b3_val == 4<br> - rs1_b2_val == 1<br>                                                   |[0x80000208]:SUNPKD832 t4, s11<br> [0x8000020c]:sw t4, 64(ra)<br>    |
|  18|[0x80002254]<br>0x00020002|- rs1 : x11<br> - rd : x16<br> - rs1_b3_val == 2<br>                                                                         |[0x80000218]:SUNPKD832 a6, a1<br> [0x8000021c]:sw a6, 68(ra)<br>     |
|  19|[0x80002258]<br>0x0001FFDF|- rs1 : x8<br> - rd : x5<br> - rs1_b3_val == 1<br> - rs1_b2_val == -33<br> - rs1_b1_val == -128<br>                          |[0x80000228]:SUNPKD832 t0, fp<br> [0x8000022c]:sw t0, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x0000FFFF|- rs1 : x31<br> - rd : x20<br> - rs1_b3_val == 0<br> - rs1_b1_val == 4<br>                                                   |[0x80000238]:SUNPKD832 s4, t6<br> [0x8000023c]:sw s4, 76(ra)<br>     |
|  21|[0x80002260]<br>0xFFFFFFBF|- rs1 : x12<br> - rd : x2<br> - rs1_b3_val == -1<br> - rs1_b1_val == 64<br>                                                  |[0x80000248]:SUNPKD832 sp, a2<br> [0x8000024c]:sw sp, 80(ra)<br>     |
|  22|[0x80002264]<br>0x00000000|- rs1 : x20<br> - rd : x0<br> - rs1_b2_val == -86<br> - rs1_b1_val == -5<br> - rs1_b0_val == -9<br>                          |[0x80000258]:SUNPKD832 zero, s4<br> [0x8000025c]:sw zero, 84(ra)<br> |
|  23|[0x80002268]<br>0x0040FFEF|- rs1 : x9<br> - rd : x14<br> - rs1_b2_val == -17<br>                                                                        |[0x80000268]:SUNPKD832 a4, s1<br> [0x8000026c]:sw a4, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xFFEFFFF7|- rs1 : x3<br> - rd : x17<br> - rs1_b2_val == -9<br> - rs1_b1_val == 2<br> - rs1_b0_val == -17<br>                           |[0x80000278]:SUNPKD832 a7, gp<br> [0x8000027c]:sw a7, 92(ra)<br>     |
|  25|[0x80002270]<br>0x003FFFFD|- rs1 : x28<br> - rd : x13<br> - rs1_b2_val == -3<br> - rs1_b1_val == -86<br>                                                |[0x80000290]:SUNPKD832 a3, t3<br> [0x80000294]:sw a3, 0(sp)<br>      |
|  26|[0x80002274]<br>0x0003FFFD|- rs1 : x1<br> - rd : x30<br> - rs1_b1_val == 16<br> - rs1_b0_val == -65<br>                                                 |[0x800002a0]:SUNPKD832 t5, ra<br> [0x800002a4]:sw t5, 4(sp)<br>      |
|  27|[0x80002278]<br>0x00200008|- rs1 : x19<br> - rd : x22<br> - rs1_b0_val == -5<br>                                                                        |[0x800002b0]:SUNPKD832 s6, s3<br> [0x800002b4]:sw s6, 8(sp)<br>      |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x0<br> - rd : x27<br> - rs1_b0_val == 0<br>                                                                          |[0x800002c0]:SUNPKD832 s11, zero<br> [0x800002c4]:sw s11, 12(sp)<br> |
|  29|[0x80002280]<br>0xFFF8007F|- rs1 : x10<br> - rd : x1<br> - rs1_b0_val == -2<br>                                                                         |[0x800002d0]:SUNPKD832 ra, a0<br> [0x800002d4]:sw ra, 16(sp)<br>     |
|  30|[0x80002284]<br>0x0040FFF9|- rs1 : x17<br> - rd : x10<br> - rs1_b0_val == 32<br>                                                                        |[0x800002e0]:SUNPKD832 a0, a7<br> [0x800002e4]:sw a0, 20(sp)<br>     |
|  31|[0x80002288]<br>0xFF800006|- rs1 : x30<br> - rd : x18<br> - rs1_b0_val == 16<br>                                                                        |[0x800002f0]:SUNPKD832 s2, t5<br> [0x800002f4]:sw s2, 24(sp)<br>     |
|  32|[0x8000228c]<br>0x00550007|- rs1 : x24<br> - rd : x7<br> - rs1_b0_val == 8<br>                                                                          |[0x80000300]:SUNPKD832 t2, s8<br> [0x80000304]:sw t2, 28(sp)<br>     |
|  33|[0x80002290]<br>0xFFF80004|- rs1_b2_val == 4<br> - rs1_b0_val == 4<br>                                                                                  |[0x80000310]:SUNPKD832 t6, t5<br> [0x80000314]:sw t6, 32(sp)<br>     |
|  34|[0x80002294]<br>0x00010000|- rs1_b0_val == 2<br>                                                                                                        |[0x80000320]:SUNPKD832 t6, t5<br> [0x80000324]:sw t6, 36(sp)<br>     |
|  35|[0x80002298]<br>0x0055007F|- rs1_b1_val == -3<br> - rs1_b0_val == 1<br>                                                                                 |[0x80000330]:SUNPKD832 t6, t5<br> [0x80000334]:sw t6, 40(sp)<br>     |
|  36|[0x800022a0]<br>0x00080040|- rs1_b2_val == 64<br>                                                                                                       |[0x8000034c]:SUNPKD832 t6, t5<br> [0x80000350]:sw t6, 48(sp)<br>     |
|  37|[0x800022a4]<br>0xFFF90020|- rs1_b2_val == 32<br> - rs1_b1_val == 1<br>                                                                                 |[0x8000035c]:SUNPKD832 t6, t5<br> [0x80000360]:sw t6, 52(sp)<br>     |
|  38|[0x800022a8]<br>0xFFBF0010|- rs1_b2_val == 16<br>                                                                                                       |[0x8000036c]:SUNPKD832 t6, t5<br> [0x80000370]:sw t6, 56(sp)<br>     |
|  39|[0x800022ac]<br>0xFFAAFFDF|- rs1_b1_val == -33<br>                                                                                                      |[0x8000037c]:SUNPKD832 t6, t5<br> [0x80000380]:sw t6, 60(sp)<br>     |
|  40|[0x800022b0]<br>0xFF80FFFD|- rs1_b0_val == -1<br>                                                                                                       |[0x8000038c]:SUNPKD832 t6, t5<br> [0x80000390]:sw t6, 64(sp)<br>     |
|  41|[0x800022b4]<br>0x0006FFFD|- rs1_b1_val == -9<br>                                                                                                       |[0x8000039c]:SUNPKD832 t6, t5<br> [0x800003a0]:sw t6, 68(sp)<br>     |
|  42|[0x800022b8]<br>0xFFFBFFF9|- rs1_b1_val == -2<br>                                                                                                       |[0x800003ac]:SUNPKD832 t6, t5<br> [0x800003b0]:sw t6, 72(sp)<br>     |
|  43|[0x800022bc]<br>0xFFF6FFDF|- rs1_b1_val == 32<br>                                                                                                       |[0x800003bc]:SUNPKD832 t6, t5<br> [0x800003c0]:sw t6, 76(sp)<br>     |
|  44|[0x800022c0]<br>0x00020003|- rs1_b1_val == 8<br>                                                                                                        |[0x800003cc]:SUNPKD832 t6, t5<br> [0x800003d0]:sw t6, 80(sp)<br>     |
|  45|[0x800022c4]<br>0xFFFDFFDF|- rs1_b1_val == -1<br>                                                                                                       |[0x800003dc]:SUNPKD832 t6, t5<br> [0x800003e0]:sw t6, 84(sp)<br>     |
|  46|[0x800022c8]<br>0x007F0020|- rs1_b0_val == -86<br>                                                                                                      |[0x800003ec]:SUNPKD832 t6, t5<br> [0x800003f0]:sw t6, 88(sp)<br>     |
|  47|[0x800022cc]<br>0x0004FFFE|- rs1_b2_val == -2<br>                                                                                                       |[0x800003fc]:SUNPKD832 t6, t5<br> [0x80000400]:sw t6, 92(sp)<br>     |
|  48|[0x800022d0]<br>0x0004FF80|- rs1_b2_val == -128<br>                                                                                                     |[0x8000040c]:SUNPKD832 t6, t5<br> [0x80000410]:sw t6, 96(sp)<br>     |
|  49|[0x800022d8]<br>0xFFFE0004|- rs1_b0_val == -3<br>                                                                                                       |[0x8000042c]:SUNPKD832 t6, t5<br> [0x80000430]:sw t6, 104(sp)<br>    |
