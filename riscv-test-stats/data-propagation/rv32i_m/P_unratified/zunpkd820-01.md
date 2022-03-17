
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
| COV_LABELS                | zunpkd820      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/zunpkd820-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 49      |
| STAT1                     | 47      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003e0]:ZUNPKD820 t6, t5
      [0x800003e4]:sw t6, 88(ra)
 -- Signature Address: 0x800022c4 Data: 0x00200055
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd820
      - rs1 : x30
      - rd : x31
      - rs1_b2_val == 32
      - rs1_b1_val == 0
      - rs1_b0_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000410]:ZUNPKD820 t6, t5
      [0x80000414]:sw t6, 100(ra)
 -- Signature Address: 0x800022d0 Data: 0x0013000E
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd820
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 247
      - rs1_b1_val == 239






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

|s.no|        signature         |                                              coverpoints                                              |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00030000|- opcode : zunpkd820<br> - rs1 : x2<br> - rd : x3<br> - rs1_b0_val == 0<br> - rs1_b3_val == 0<br>      |[0x80000108]:ZUNPKD820 gp, sp<br> [0x8000010c]:sw gp, 0(fp)<br>      |
|   2|[0x80002214]<br>0x00DF0004|- rs1 : x25<br> - rd : x2<br> - rs1_b3_val == 170<br> - rs1_b2_val == 223<br> - rs1_b0_val == 4<br>    |[0x80000118]:ZUNPKD820 sp, s9<br> [0x8000011c]:sw sp, 4(fp)<br>      |
|   3|[0x80002218]<br>0x000D00FB|- rs1 : x19<br> - rd : x11<br> - rs1_b3_val == 85<br> - rs1_b0_val == 251<br>                          |[0x80000128]:ZUNPKD820 a1, s3<br> [0x8000012c]:sw a1, 8(fp)<br>      |
|   4|[0x8000221c]<br>0x0000000D|- rs1 : x31<br> - rd : x29<br> - rs1_b3_val == 127<br> - rs1_b2_val == 0<br>                           |[0x80000138]:ZUNPKD820 t4, t6<br> [0x8000013c]:sw t4, 12(fp)<br>     |
|   5|[0x80002220]<br>0x00000000|- rs1 : x0<br> - rd : x16<br> - rs1_b1_val == 0<br>                                                    |[0x80000148]:ZUNPKD820 a6, zero<br> [0x8000014c]:sw a6, 16(fp)<br>   |
|   6|[0x80002224]<br>0x000F0004|- rs1 : x15<br> - rd : x9<br> - rs1_b3_val == 223<br> - rs1_b1_val == 64<br>                           |[0x80000158]:ZUNPKD820 s1, a5<br> [0x8000015c]:sw s1, 20(fp)<br>     |
|   7|[0x80002228]<br>0x00000001|- rs1 : x16<br> - rd : x27<br> - rs1_b3_val == 239<br> - rs1_b1_val == 8<br> - rs1_b0_val == 1<br>     |[0x80000168]:ZUNPKD820 s11, a6<br> [0x8000016c]:sw s11, 24(fp)<br>   |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x29<br> - rd : x0<br> - rs1_b3_val == 247<br> - rs1_b1_val == 239<br>                          |[0x80000178]:ZUNPKD820 zero, t4<br> [0x8000017c]:sw zero, 28(fp)<br> |
|   9|[0x80002230]<br>0x00FD000F|- rs1 : x13<br> - rd : x17<br> - rs1_b3_val == 251<br> - rs1_b2_val == 253<br>                         |[0x80000188]:ZUNPKD820 a7, a3<br> [0x8000018c]:sw a7, 32(fp)<br>     |
|  10|[0x80002234]<br>0x00800007|- rs1 : x28<br> - rd : x4<br> - rs1_b3_val == 253<br> - rs1_b2_val == 128<br>                          |[0x80000198]:ZUNPKD820 tp, t3<br> [0x8000019c]:sw tp, 36(fp)<br>     |
|  11|[0x80002238]<br>0x00AA00FD|- rs1 : x20<br> - rd : x23<br> - rs1_b3_val == 254<br> - rs1_b2_val == 170<br> - rs1_b0_val == 253<br> |[0x800001a8]:ZUNPKD820 s7, s4<br> [0x800001ac]:sw s7, 40(fp)<br>     |
|  12|[0x8000223c]<br>0x000D0013|- rs1 : x14<br> - rd : x31<br> - rs1_b3_val == 128<br> - rs1_b1_val == 253<br>                         |[0x800001b8]:ZUNPKD820 t6, a4<br> [0x800001bc]:sw t6, 44(fp)<br>     |
|  13|[0x80002240]<br>0x004000EF|- rs1 : x4<br> - rd : x26<br> - rs1_b3_val == 64<br> - rs1_b2_val == 64<br> - rs1_b0_val == 239<br>    |[0x800001c8]:ZUNPKD820 s10, tp<br> [0x800001cc]:sw s10, 48(fp)<br>   |
|  14|[0x80002244]<br>0x000700EF|- rs1 : x23<br> - rd : x21<br> - rs1_b3_val == 32<br>                                                  |[0x800001d8]:ZUNPKD820 s5, s7<br> [0x800001dc]:sw s5, 52(fp)<br>     |
|  15|[0x80002248]<br>0x00FD0008|- rs1 : x5<br> - rd : x7<br> - rs1_b3_val == 16<br> - rs1_b0_val == 8<br>                              |[0x800001e8]:ZUNPKD820 t2, t0<br> [0x800001ec]:sw t2, 56(fp)<br>     |
|  16|[0x8000224c]<br>0x00FF000D|- rs1 : x27<br> - rd : x5<br> - rs1_b3_val == 8<br> - rs1_b2_val == 255<br>                            |[0x800001f8]:ZUNPKD820 t0, s11<br> [0x800001fc]:sw t0, 60(fp)<br>    |
|  17|[0x80002250]<br>0x000B0011|- rs1 : x30<br> - rd : x13<br> - rs1_b3_val == 4<br>                                                   |[0x80000208]:ZUNPKD820 a3, t5<br> [0x8000020c]:sw a3, 64(fp)<br>     |
|  18|[0x80002254]<br>0x0010000F|- rs1 : x6<br> - rd : x1<br> - rs1_b3_val == 2<br> - rs1_b2_val == 16<br>                              |[0x80000218]:ZUNPKD820 ra, t1<br> [0x8000021c]:sw ra, 68(fp)<br>     |
|  19|[0x80002258]<br>0x00FD0006|- rs1 : x21<br> - rd : x18<br> - rs1_b3_val == 1<br> - rs1_b1_val == 1<br>                             |[0x80000228]:ZUNPKD820 s2, s5<br> [0x8000022c]:sw s2, 72(fp)<br>     |
|  20|[0x8000225c]<br>0x00080006|- rs1 : x3<br> - rd : x10<br> - rs1_b3_val == 255<br> - rs1_b2_val == 8<br> - rs1_b1_val == 255<br>    |[0x80000238]:ZUNPKD820 a0, gp<br> [0x8000023c]:sw a0, 76(fp)<br>     |
|  21|[0x80002260]<br>0x00550006|- rs1 : x26<br> - rd : x19<br> - rs1_b2_val == 85<br>                                                  |[0x80000248]:ZUNPKD820 s3, s10<br> [0x8000024c]:sw s3, 80(fp)<br>    |
|  22|[0x80002264]<br>0x007F0007|- rs1 : x1<br> - rd : x15<br> - rs1_b2_val == 127<br> - rs1_b1_val == 170<br>                          |[0x80000258]:ZUNPKD820 a5, ra<br> [0x8000025c]:sw a5, 84(fp)<br>     |
|  23|[0x80002268]<br>0x00BF0008|- rs1 : x11<br> - rd : x12<br> - rs1_b2_val == 191<br>                                                 |[0x80000268]:ZUNPKD820 a2, a1<br> [0x8000026c]:sw a2, 88(fp)<br>     |
|  24|[0x8000226c]<br>0x00EF0012|- rs1 : x10<br> - rd : x20<br> - rs1_b2_val == 239<br>                                                 |[0x80000280]:ZUNPKD820 s4, a0<br> [0x80000284]:sw s4, 0(ra)<br>      |
|  25|[0x80002270]<br>0x00F70040|- rs1 : x24<br> - rd : x14<br> - rs1_b2_val == 247<br> - rs1_b0_val == 64<br>                          |[0x80000290]:ZUNPKD820 a4, s8<br> [0x80000294]:sw a4, 4(ra)<br>      |
|  26|[0x80002274]<br>0x00FB0080|- rs1 : x18<br> - rd : x22<br> - rs1_b2_val == 251<br> - rs1_b1_val == 16<br> - rs1_b0_val == 128<br>  |[0x800002a0]:ZUNPKD820 s6, s2<br> [0x800002a4]:sw s6, 8(ra)<br>      |
|  27|[0x80002278]<br>0x007F00BF|- rs1 : x7<br> - rd : x25<br> - rs1_b1_val == 191<br> - rs1_b0_val == 191<br>                          |[0x800002b0]:ZUNPKD820 s9, t2<br> [0x800002b4]:sw s9, 12(ra)<br>     |
|  28|[0x8000227c]<br>0x000700DF|- rs1 : x9<br> - rd : x30<br> - rs1_b0_val == 223<br>                                                  |[0x800002c0]:ZUNPKD820 t5, s1<br> [0x800002c4]:sw t5, 16(ra)<br>     |
|  29|[0x80002280]<br>0x000F00F7|- rs1 : x8<br> - rd : x24<br> - rs1_b0_val == 247<br>                                                  |[0x800002d0]:ZUNPKD820 s8, fp<br> [0x800002d4]:sw s8, 20(ra)<br>     |
|  30|[0x80002284]<br>0x00BF00FE|- rs1 : x12<br> - rd : x6<br> - rs1_b0_val == 254<br>                                                  |[0x800002e0]:ZUNPKD820 t1, a2<br> [0x800002e4]:sw t1, 24(ra)<br>     |
|  31|[0x80002288]<br>0x000B0020|- rs1 : x22<br> - rd : x8<br> - rs1_b0_val == 32<br>                                                   |[0x800002f0]:ZUNPKD820 fp, s6<br> [0x800002f4]:sw fp, 28(ra)<br>     |
|  32|[0x8000228c]<br>0x00050010|- rs1 : x17<br> - rd : x28<br> - rs1_b0_val == 16<br>                                                  |[0x80000300]:ZUNPKD820 t3, a7<br> [0x80000304]:sw t3, 32(ra)<br>     |
|  33|[0x80002290]<br>0x00100002|- rs1_b1_val == 247<br> - rs1_b0_val == 2<br>                                                          |[0x80000310]:ZUNPKD820 t6, t5<br> [0x80000314]:sw t6, 36(ra)<br>     |
|  34|[0x80002294]<br>0x000200FF|- rs1_b2_val == 2<br> - rs1_b0_val == 255<br>                                                          |[0x80000320]:ZUNPKD820 t6, t5<br> [0x80000324]:sw t6, 40(ra)<br>     |
|  35|[0x80002298]<br>0x00FE0002|- rs1_b2_val == 254<br>                                                                                |[0x80000330]:ZUNPKD820 t6, t5<br> [0x80000334]:sw t6, 44(ra)<br>     |
|  36|[0x8000229c]<br>0x0020000B|- rs1_b2_val == 32<br> - rs1_b1_val == 4<br>                                                           |[0x80000340]:ZUNPKD820 t6, t5<br> [0x80000344]:sw t6, 48(ra)<br>     |
|  37|[0x800022a0]<br>0x0004000E|- rs1_b2_val == 4<br> - rs1_b1_val == 254<br>                                                          |[0x80000350]:ZUNPKD820 t6, t5<br> [0x80000354]:sw t6, 52(ra)<br>     |
|  38|[0x800022a4]<br>0x00010080|- rs1_b2_val == 1<br>                                                                                  |[0x80000360]:ZUNPKD820 t6, t5<br> [0x80000364]:sw t6, 56(ra)<br>     |
|  39|[0x800022a8]<br>0x00EF00FE|- rs1_b1_val == 85<br>                                                                                 |[0x80000370]:ZUNPKD820 t6, t5<br> [0x80000374]:sw t6, 60(ra)<br>     |
|  40|[0x800022ac]<br>0x00F70007|- rs1_b1_val == 127<br>                                                                                |[0x80000380]:ZUNPKD820 t6, t5<br> [0x80000384]:sw t6, 64(ra)<br>     |
|  41|[0x800022b0]<br>0x00030006|- rs1_b1_val == 223<br>                                                                                |[0x80000390]:ZUNPKD820 t6, t5<br> [0x80000394]:sw t6, 68(ra)<br>     |
|  42|[0x800022b4]<br>0x000C00FE|- rs1_b1_val == 251<br>                                                                                |[0x800003a0]:ZUNPKD820 t6, t5<br> [0x800003a4]:sw t6, 72(ra)<br>     |
|  43|[0x800022b8]<br>0x00060055|- rs1_b1_val == 128<br> - rs1_b0_val == 85<br>                                                         |[0x800003b0]:ZUNPKD820 t6, t5<br> [0x800003b4]:sw t6, 76(ra)<br>     |
|  44|[0x800022bc]<br>0x0020000A|- rs1_b1_val == 32<br>                                                                                 |[0x800003c0]:ZUNPKD820 t6, t5<br> [0x800003c4]:sw t6, 80(ra)<br>     |
|  45|[0x800022c0]<br>0x005500AA|- rs1_b1_val == 2<br> - rs1_b0_val == 170<br>                                                          |[0x800003d0]:ZUNPKD820 t6, t5<br> [0x800003d4]:sw t6, 84(ra)<br>     |
|  46|[0x800022c8]<br>0x0004007F|- rs1_b0_val == 127<br>                                                                                |[0x800003f0]:ZUNPKD820 t6, t5<br> [0x800003f4]:sw t6, 92(ra)<br>     |
|  47|[0x800022cc]<br>0x0009000C|- rs1_b3_val == 191<br>                                                                                |[0x80000400]:ZUNPKD820 t6, t5<br> [0x80000404]:sw t6, 96(ra)<br>     |
