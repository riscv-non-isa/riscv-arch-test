
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
| COV_LABELS                | zunpkd832      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/zunpkd832-01.S    |
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
      [0x80000370]:ZUNPKD832 t6, t5
      [0x80000374]:sw t6, 64(gp)
 -- Signature Address: 0x800022a8 Data: 0x00BF0000
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 191
      - rs1_b2_val == 0
      - rs1_b1_val == 255




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003f0]:ZUNPKD832 t6, t5
      [0x800003f4]:sw t6, 96(gp)
 -- Signature Address: 0x800022c8 Data: 0x0055007F
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 85
      - rs1_b2_val == 127
      - rs1_b1_val == 0






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
|   1|[0x80002210]<br>0x00000000|- opcode : zunpkd832<br> - rs1 : x26<br> - rd : x0<br> - rs1_b0_val == 0<br> - rs1_b3_val == 191<br> - rs1_b2_val == 128<br> |[0x80000108]:ZUNPKD832 zero, s10<br> [0x8000010c]:sw zero, 0(t0)<br> |
|   2|[0x80002214]<br>0x00AA0003|- rs1 : x20<br> - rd : x18<br> - rs1_b3_val == 170<br> - rs1_b1_val == 127<br> - rs1_b0_val == 223<br>                       |[0x80000118]:ZUNPKD832 s2, s4<br> [0x8000011c]:sw s2, 4(t0)<br>      |
|   3|[0x80002218]<br>0x00550020|- rs1 : x3<br> - rd : x8<br> - rs1_b3_val == 85<br> - rs1_b2_val == 32<br> - rs1_b1_val == 223<br> - rs1_b0_val == 32<br>    |[0x80000128]:ZUNPKD832 fp, gp<br> [0x8000012c]:sw fp, 8(t0)<br>      |
|   4|[0x8000221c]<br>0x007F000F|- rs1 : x22<br> - rd : x24<br> - rs1_b3_val == 127<br> - rs1_b1_val == 253<br> - rs1_b0_val == 2<br>                         |[0x80000138]:ZUNPKD832 s8, s6<br> [0x8000013c]:sw s8, 12(t0)<br>     |
|   5|[0x80002220]<br>0x00DF0013|- rs1 : x24<br> - rd : x6<br> - rs1_b3_val == 223<br>                                                                        |[0x80000148]:ZUNPKD832 t1, s8<br> [0x8000014c]:sw t1, 16(t0)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x0<br> - rd : x16<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                              |[0x80000158]:ZUNPKD832 a6, zero<br> [0x8000015c]:sw a6, 20(t0)<br>   |
|   7|[0x80002228]<br>0x00F70013|- rs1 : x19<br> - rd : x10<br> - rs1_b3_val == 247<br>                                                                       |[0x80000168]:ZUNPKD832 a0, s3<br> [0x8000016c]:sw a0, 24(t0)<br>     |
|   8|[0x8000222c]<br>0x00FB000A|- rs1 : x13<br> - rd : x28<br> - rs1_b3_val == 251<br>                                                                       |[0x80000178]:ZUNPKD832 t3, a3<br> [0x8000017c]:sw t3, 28(t0)<br>     |
|   9|[0x80002230]<br>0x00FD0005|- rs1 : x1<br> - rd : x7<br> - rs1_b3_val == 253<br>                                                                         |[0x80000188]:ZUNPKD832 t2, ra<br> [0x8000018c]:sw t2, 32(t0)<br>     |
|  10|[0x80002234]<br>0x00FE000A|- rs1 : x4<br> - rd : x26<br> - rs1_b3_val == 254<br> - rs1_b1_val == 1<br> - rs1_b0_val == 1<br>                            |[0x80000198]:ZUNPKD832 s10, tp<br> [0x8000019c]:sw s10, 36(t0)<br>   |
|  11|[0x80002238]<br>0x00800013|- rs1 : x7<br> - rd : x23<br> - rs1_b3_val == 128<br> - rs1_b1_val == 64<br>                                                 |[0x800001a8]:ZUNPKD832 s7, t2<br> [0x800001ac]:sw s7, 40(t0)<br>     |
|  12|[0x8000223c]<br>0x004000FB|- rs1 : x30<br> - rd : x12<br> - rs1_b3_val == 64<br> - rs1_b2_val == 251<br>                                                |[0x800001b8]:ZUNPKD832 a2, t5<br> [0x800001bc]:sw a2, 44(t0)<br>     |
|  13|[0x80002240]<br>0x00200011|- rs1 : x15<br> - rd : x31<br> - rs1_b3_val == 32<br> - rs1_b1_val == 85<br>                                                 |[0x800001c8]:ZUNPKD832 t6, a5<br> [0x800001cc]:sw t6, 48(t0)<br>     |
|  14|[0x80002244]<br>0x001000DF|- rs1 : x11<br> - rd : x20<br> - rs1_b3_val == 16<br> - rs1_b2_val == 223<br>                                                |[0x800001d8]:ZUNPKD832 s4, a1<br> [0x800001dc]:sw s4, 52(t0)<br>     |
|  15|[0x80002248]<br>0x00080040|- rs1 : x8<br> - rd : x4<br> - rs1_b3_val == 8<br> - rs1_b2_val == 64<br>                                                    |[0x800001e8]:ZUNPKD832 tp, fp<br> [0x800001ec]:sw tp, 56(t0)<br>     |
|  16|[0x8000224c]<br>0x000400FE|- rs1 : x31<br> - rd : x30<br> - rs1_b3_val == 4<br> - rs1_b2_val == 254<br> - rs1_b0_val == 85<br>                          |[0x800001f8]:ZUNPKD832 t5, t6<br> [0x800001fc]:sw t5, 60(t0)<br>     |
|  17|[0x80002250]<br>0x00020013|- rs1 : x12<br> - rd : x29<br> - rs1_b3_val == 2<br> - rs1_b0_val == 255<br>                                                 |[0x80000208]:ZUNPKD832 t4, a2<br> [0x8000020c]:sw t4, 64(t0)<br>     |
|  18|[0x80002254]<br>0x00010010|- rs1 : x29<br> - rd : x9<br> - rs1_b3_val == 1<br> - rs1_b2_val == 16<br> - rs1_b0_val == 253<br>                           |[0x80000218]:ZUNPKD832 s1, t4<br> [0x8000021c]:sw s1, 68(t0)<br>     |
|  19|[0x80002258]<br>0x00FF000D|- rs1 : x23<br> - rd : x21<br> - rs1_b3_val == 255<br> - rs1_b0_val == 251<br>                                               |[0x80000228]:ZUNPKD832 s5, s7<br> [0x8000022c]:sw s5, 72(t0)<br>     |
|  20|[0x8000225c]<br>0x00000005|- rs1 : x27<br> - rd : x3<br> - rs1_b1_val == 254<br>                                                                        |[0x80000238]:ZUNPKD832 gp, s11<br> [0x8000023c]:sw gp, 76(t0)<br>    |
|  21|[0x80002260]<br>0x000F00AA|- rs1 : x10<br> - rd : x2<br> - rs1_b2_val == 170<br> - rs1_b1_val == 8<br>                                                  |[0x80000248]:ZUNPKD832 sp, a0<br> [0x8000024c]:sw sp, 80(t0)<br>     |
|  22|[0x80002264]<br>0x000D0055|- rs1 : x17<br> - rd : x13<br> - rs1_b2_val == 85<br> - rs1_b0_val == 128<br>                                                |[0x80000258]:ZUNPKD832 a3, a7<br> [0x8000025c]:sw a3, 84(t0)<br>     |
|  23|[0x80002268]<br>0x0080007F|- rs1 : x9<br> - rd : x17<br> - rs1_b2_val == 127<br> - rs1_b0_val == 239<br>                                                |[0x80000270]:ZUNPKD832 a7, s1<br> [0x80000274]:sw a7, 0(gp)<br>      |
|  24|[0x8000226c]<br>0x00F7000A|- rs1 : x21<br> - rd : x1<br> - rs1_b1_val == 16<br> - rs1_b0_val == 191<br>                                                 |[0x80000280]:ZUNPKD832 ra, s5<br> [0x80000284]:sw ra, 4(gp)<br>      |
|  25|[0x80002270]<br>0x007F0003|- rs1 : x28<br> - rd : x25<br> - rs1_b0_val == 247<br>                                                                       |[0x80000290]:ZUNPKD832 s9, t3<br> [0x80000294]:sw s9, 8(gp)<br>      |
|  26|[0x80002274]<br>0x00030006|- rs1 : x6<br> - rd : x19<br> - rs1_b0_val == 254<br>                                                                        |[0x800002a0]:ZUNPKD832 s3, t1<br> [0x800002a4]:sw s3, 12(gp)<br>     |
|  27|[0x80002278]<br>0x00030080|- rs1 : x18<br> - rd : x5<br> - rs1_b0_val == 64<br>                                                                         |[0x800002b0]:ZUNPKD832 t0, s2<br> [0x800002b4]:sw t0, 16(gp)<br>     |
|  28|[0x8000227c]<br>0x00070040|- rs1 : x16<br> - rd : x15<br> - rs1_b1_val == 255<br> - rs1_b0_val == 16<br>                                                |[0x800002c0]:ZUNPKD832 a5, a6<br> [0x800002c4]:sw a5, 20(gp)<br>     |
|  29|[0x80002280]<br>0x00FD0007|- rs1 : x2<br> - rd : x14<br> - rs1_b0_val == 8<br>                                                                          |[0x800002d0]:ZUNPKD832 a4, sp<br> [0x800002d4]:sw a4, 24(gp)<br>     |
|  30|[0x80002284]<br>0x00AA000E|- rs1 : x14<br> - rd : x27<br> - rs1_b1_val == 251<br> - rs1_b0_val == 4<br>                                                 |[0x800002e0]:ZUNPKD832 s11, a4<br> [0x800002e4]:sw s11, 28(gp)<br>   |
|  31|[0x80002288]<br>0x000300BF|- rs1 : x25<br> - rd : x22<br> - rs1_b2_val == 191<br>                                                                       |[0x800002f0]:ZUNPKD832 s6, s9<br> [0x800002f4]:sw s6, 32(gp)<br>     |
|  32|[0x8000228c]<br>0x005500EF|- rs1 : x5<br> - rd : x11<br> - rs1_b2_val == 239<br>                                                                        |[0x80000300]:ZUNPKD832 a1, t0<br> [0x80000304]:sw a1, 36(gp)<br>     |
|  33|[0x80002290]<br>0x008000F7|- rs1_b2_val == 247<br>                                                                                                      |[0x80000310]:ZUNPKD832 t6, t5<br> [0x80000314]:sw t6, 40(gp)<br>     |
|  34|[0x80002294]<br>0x000A00FD|- rs1_b2_val == 253<br> - rs1_b1_val == 128<br>                                                                              |[0x80000320]:ZUNPKD832 t6, t5<br> [0x80000324]:sw t6, 44(gp)<br>     |
|  35|[0x80002298]<br>0x00010008|- rs1_b2_val == 8<br>                                                                                                        |[0x80000330]:ZUNPKD832 t6, t5<br> [0x80000334]:sw t6, 48(gp)<br>     |
|  36|[0x8000229c]<br>0x00020004|- rs1_b2_val == 4<br>                                                                                                        |[0x80000340]:ZUNPKD832 t6, t5<br> [0x80000344]:sw t6, 52(gp)<br>     |
|  37|[0x800022a0]<br>0x00AA0002|- rs1_b2_val == 2<br>                                                                                                        |[0x80000350]:ZUNPKD832 t6, t5<br> [0x80000354]:sw t6, 56(gp)<br>     |
|  38|[0x800022a4]<br>0x001200FF|- rs1_b2_val == 255<br>                                                                                                      |[0x80000360]:ZUNPKD832 t6, t5<br> [0x80000364]:sw t6, 60(gp)<br>     |
|  39|[0x800022ac]<br>0x00200006|- rs1_b1_val == 170<br>                                                                                                      |[0x80000380]:ZUNPKD832 t6, t5<br> [0x80000384]:sw t6, 68(gp)<br>     |
|  40|[0x800022b0]<br>0x0006000A|- rs1_b1_val == 191<br>                                                                                                      |[0x80000390]:ZUNPKD832 t6, t5<br> [0x80000394]:sw t6, 72(gp)<br>     |
|  41|[0x800022b4]<br>0x001100FF|- rs1_b1_val == 239<br>                                                                                                      |[0x800003a0]:ZUNPKD832 t6, t5<br> [0x800003a4]:sw t6, 76(gp)<br>     |
|  42|[0x800022b8]<br>0x0012000F|- rs1_b0_val == 127<br>                                                                                                      |[0x800003b0]:ZUNPKD832 t6, t5<br> [0x800003b4]:sw t6, 80(gp)<br>     |
|  43|[0x800022bc]<br>0x00FD0002|- rs1_b1_val == 32<br>                                                                                                       |[0x800003c0]:ZUNPKD832 t6, t5<br> [0x800003c4]:sw t6, 84(gp)<br>     |
|  44|[0x800022c0]<br>0x00100011|- rs1_b1_val == 4<br>                                                                                                        |[0x800003d0]:ZUNPKD832 t6, t5<br> [0x800003d4]:sw t6, 88(gp)<br>     |
|  45|[0x800022c4]<br>0x000C00F7|- rs1_b1_val == 2<br>                                                                                                        |[0x800003e0]:ZUNPKD832 t6, t5<br> [0x800003e4]:sw t6, 92(gp)<br>     |
|  46|[0x800022cc]<br>0x000E000C|- rs1_b1_val == 247<br> - rs1_b0_val == 170<br>                                                                              |[0x80000400]:ZUNPKD832 t6, t5<br> [0x80000404]:sw t6, 100(gp)<br>    |
|  47|[0x800022d0]<br>0x00EF0001|- rs1_b3_val == 239<br> - rs1_b2_val == 1<br>                                                                                |[0x80000410]:ZUNPKD832 t6, t5<br> [0x80000414]:sw t6, 104(gp)<br>    |
