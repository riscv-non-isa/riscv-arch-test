
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800003e0')]      |
| SIG_REGION                | [('0x80002210', '0x800022d0', '48 words')]      |
| COV_LABELS                | zunpkd810      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/zunpkd810-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 45      |
| STAT1                     | 43      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000320]:ZUNPKD810 t6, t5
      [0x80000324]:sw t6, 52(t2)
 -- Signature Address: 0x80002294 Data: 0x0011000D
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd810
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 85
      - rs1_b2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003d0]:ZUNPKD810 t6, t5
      [0x800003d4]:sw t6, 96(t2)
 -- Signature Address: 0x800022c0 Data: 0x000B00FB
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd810
      - rs1 : x30
      - rd : x31
      - rs1_b2_val == 16
      - rs1_b0_val == 251






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
|   1|[0x80002210]<br>0x000C0000|- opcode : zunpkd810<br> - rs1 : x31<br> - rd : x22<br> - rs1_b0_val == 0<br> - rs1_b2_val == 254<br>                        |[0x80000108]:ZUNPKD810 s6, t6<br> [0x8000010c]:sw s6, 0(tp)<br>      |
|   2|[0x80002214]<br>0x00EF0008|- rs1 : x22<br> - rd : x13<br> - rs1_b3_val == 170<br> - rs1_b1_val == 239<br> - rs1_b0_val == 8<br>                         |[0x80000118]:ZUNPKD810 a3, s6<br> [0x8000011c]:sw a3, 4(tp)<br>      |
|   3|[0x80002218]<br>0x00EF000A|- rs1 : x25<br> - rd : x28<br> - rs1_b3_val == 85<br> - rs1_b2_val == 251<br>                                                |[0x80000128]:ZUNPKD810 t3, s9<br> [0x8000012c]:sw t3, 8(tp)<br>      |
|   4|[0x8000221c]<br>0x000B0020|- rs1 : x7<br> - rd : x29<br> - rs1_b3_val == 127<br> - rs1_b0_val == 32<br>                                                 |[0x80000138]:ZUNPKD810 t4, t2<br> [0x8000013c]:sw t4, 12(tp)<br>     |
|   5|[0x80002220]<br>0x0055007F|- rs1 : x21<br> - rd : x18<br> - rs1_b3_val == 191<br> - rs1_b2_val == 64<br> - rs1_b1_val == 85<br> - rs1_b0_val == 127<br> |[0x80000148]:ZUNPKD810 s2, s5<br> [0x8000014c]:sw s2, 16(tp)<br>     |
|   6|[0x80002224]<br>0x00020009|- rs1 : x18<br> - rd : x15<br> - rs1_b3_val == 223<br> - rs1_b1_val == 2<br>                                                 |[0x80000158]:ZUNPKD810 a5, s2<br> [0x8000015c]:sw a5, 20(tp)<br>     |
|   7|[0x80002228]<br>0x00080006|- rs1 : x28<br> - rd : x31<br> - rs1_b3_val == 239<br> - rs1_b2_val == 128<br> - rs1_b1_val == 8<br>                         |[0x80000168]:ZUNPKD810 t6, t3<br> [0x8000016c]:sw t6, 24(tp)<br>     |
|   8|[0x8000222c]<br>0x00EF00FD|- rs1 : x29<br> - rd : x2<br> - rs1_b3_val == 247<br> - rs1_b0_val == 253<br>                                                |[0x80000178]:ZUNPKD810 sp, t4<br> [0x8000017c]:sw sp, 28(tp)<br>     |
|   9|[0x80002230]<br>0x00DF000B|- rs1 : x26<br> - rd : x9<br> - rs1_b3_val == 251<br> - rs1_b1_val == 223<br>                                                |[0x80000188]:ZUNPKD810 s1, s10<br> [0x8000018c]:sw s1, 32(tp)<br>    |
|  10|[0x80002234]<br>0x00200003|- rs1 : x3<br> - rd : x26<br> - rs1_b3_val == 253<br> - rs1_b1_val == 32<br>                                                 |[0x80000198]:ZUNPKD810 s10, gp<br> [0x8000019c]:sw s10, 36(tp)<br>   |
|  11|[0x80002238]<br>0x0005000B|- rs1 : x14<br> - rd : x23<br> - rs1_b3_val == 254<br>                                                                       |[0x800001a8]:ZUNPKD810 s7, a4<br> [0x800001ac]:sw s7, 40(tp)<br>     |
|  12|[0x8000223c]<br>0x007F0020|- rs1 : x1<br> - rd : x7<br> - rs1_b3_val == 128<br> - rs1_b1_val == 127<br>                                                 |[0x800001b8]:ZUNPKD810 t2, ra<br> [0x800001bc]:sw t2, 44(tp)<br>     |
|  13|[0x80002240]<br>0x0005000B|- rs1 : x30<br> - rd : x27<br> - rs1_b3_val == 64<br>                                                                        |[0x800001c8]:ZUNPKD810 s11, t5<br> [0x800001cc]:sw s11, 48(tp)<br>   |
|  14|[0x80002244]<br>0x00BF0000|- rs1 : x11<br> - rd : x30<br> - rs1_b3_val == 32<br> - rs1_b2_val == 8<br> - rs1_b1_val == 191<br>                          |[0x800001d8]:ZUNPKD810 t5, a1<br> [0x800001dc]:sw t5, 52(tp)<br>     |
|  15|[0x80002248]<br>0x000D00DF|- rs1 : x10<br> - rd : x24<br> - rs1_b3_val == 16<br> - rs1_b2_val == 255<br> - rs1_b0_val == 223<br>                        |[0x800001e8]:ZUNPKD810 s8, a0<br> [0x800001ec]:sw s8, 56(tp)<br>     |
|  16|[0x8000224c]<br>0x00FD0013|- rs1 : x12<br> - rd : x17<br> - rs1_b3_val == 8<br> - rs1_b2_val == 32<br> - rs1_b1_val == 253<br>                          |[0x800001f8]:ZUNPKD810 a7, a2<br> [0x800001fc]:sw a7, 60(tp)<br>     |
|  17|[0x80002250]<br>0x00FE0040|- rs1 : x19<br> - rd : x10<br> - rs1_b3_val == 4<br> - rs1_b2_val == 253<br> - rs1_b1_val == 254<br> - rs1_b0_val == 64<br>  |[0x80000208]:ZUNPKD810 a0, s3<br> [0x8000020c]:sw a0, 64(tp)<br>     |
|  18|[0x80002254]<br>0x00000004|- rs1 : x20<br> - rd : x19<br> - rs1_b3_val == 2<br> - rs1_b1_val == 0<br> - rs1_b0_val == 4<br>                             |[0x80000218]:ZUNPKD810 s3, s4<br> [0x8000021c]:sw s3, 68(tp)<br>     |
|  19|[0x80002258]<br>0x0055007F|- rs1 : x24<br> - rd : x16<br> - rs1_b3_val == 1<br>                                                                         |[0x80000228]:ZUNPKD810 a6, s8<br> [0x8000022c]:sw a6, 72(tp)<br>     |
|  20|[0x8000225c]<br>0x00FF0006|- rs1 : x16<br> - rd : x6<br> - rs1_b3_val == 255<br> - rs1_b1_val == 255<br>                                                |[0x80000238]:ZUNPKD810 t1, a6<br> [0x8000023c]:sw t1, 76(tp)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x0<br> - rd : x20<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br>                                                    |[0x80000250]:ZUNPKD810 s4, zero<br> [0x80000254]:sw s4, 0(t2)<br>    |
|  22|[0x80002264]<br>0x000C0012|- rs1 : x2<br> - rd : x21<br> - rs1_b2_val == 170<br>                                                                        |[0x80000260]:ZUNPKD810 s5, sp<br> [0x80000264]:sw s5, 4(t2)<br>      |
|  23|[0x80002268]<br>0x00FD00BF|- rs1 : x5<br> - rd : x12<br> - rs1_b2_val == 247<br> - rs1_b0_val == 191<br>                                                |[0x80000270]:ZUNPKD810 a2, t0<br> [0x80000274]:sw a2, 8(t2)<br>      |
|  24|[0x8000226c]<br>0x00FD00EF|- rs1 : x9<br> - rd : x5<br> - rs1_b0_val == 239<br>                                                                         |[0x80000280]:ZUNPKD810 t0, s1<br> [0x80000284]:sw t0, 12(t2)<br>     |
|  25|[0x80002270]<br>0x008000F7|- rs1 : x15<br> - rd : x4<br> - rs1_b2_val == 127<br> - rs1_b1_val == 128<br> - rs1_b0_val == 247<br>                        |[0x80000290]:ZUNPKD810 tp, a5<br> [0x80000294]:sw tp, 16(t2)<br>     |
|  26|[0x80002274]<br>0x000800FB|- rs1 : x13<br> - rd : x1<br> - rs1_b0_val == 251<br>                                                                        |[0x800002a0]:ZUNPKD810 ra, a3<br> [0x800002a4]:sw ra, 20(t2)<br>     |
|  27|[0x80002278]<br>0x000100FE|- rs1 : x6<br> - rd : x14<br> - rs1_b2_val == 239<br> - rs1_b1_val == 1<br> - rs1_b0_val == 254<br>                          |[0x800002b0]:ZUNPKD810 a4, t1<br> [0x800002b4]:sw a4, 24(t2)<br>     |
|  28|[0x8000227c]<br>0x00070080|- rs1 : x17<br> - rd : x11<br> - rs1_b0_val == 128<br>                                                                       |[0x800002c0]:ZUNPKD810 a1, a7<br> [0x800002c4]:sw a1, 28(t2)<br>     |
|  29|[0x80002280]<br>0x00400010|- rs1 : x23<br> - rd : x8<br> - rs1_b2_val == 1<br> - rs1_b1_val == 64<br> - rs1_b0_val == 16<br>                            |[0x800002d0]:ZUNPKD810 fp, s7<br> [0x800002d4]:sw fp, 32(t2)<br>     |
|  30|[0x80002284]<br>0x007F0002|- rs1 : x4<br> - rd : x3<br> - rs1_b0_val == 2<br>                                                                           |[0x800002e0]:ZUNPKD810 gp, tp<br> [0x800002e4]:sw gp, 36(t2)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x8<br> - rd : x0<br> - rs1_b2_val == 16<br>                                                                          |[0x800002f0]:ZUNPKD810 zero, fp<br> [0x800002f4]:sw zero, 40(t2)<br> |
|  32|[0x8000228c]<br>0x00DF00FD|- rs1 : x27<br> - rd : x25<br> - rs1_b2_val == 4<br>                                                                         |[0x80000300]:ZUNPKD810 s9, s11<br> [0x80000304]:sw s9, 44(t2)<br>    |
|  33|[0x80002290]<br>0x00080008|- rs1_b2_val == 2<br>                                                                                                        |[0x80000310]:ZUNPKD810 t6, t5<br> [0x80000314]:sw t6, 48(t2)<br>     |
|  34|[0x80002298]<br>0x00AA00FE|- rs1_b1_val == 170<br>                                                                                                      |[0x80000330]:ZUNPKD810 t6, t5<br> [0x80000334]:sw t6, 56(t2)<br>     |
|  35|[0x8000229c]<br>0x008000FF|- rs1_b0_val == 255<br>                                                                                                      |[0x80000340]:ZUNPKD810 t6, t5<br> [0x80000344]:sw t6, 60(t2)<br>     |
|  36|[0x800022a0]<br>0x00F70055|- rs1_b1_val == 247<br> - rs1_b0_val == 85<br>                                                                               |[0x80000350]:ZUNPKD810 t6, t5<br> [0x80000354]:sw t6, 64(t2)<br>     |
|  37|[0x800022a4]<br>0x00FB0008|- rs1_b1_val == 251<br>                                                                                                      |[0x80000360]:ZUNPKD810 t6, t5<br> [0x80000364]:sw t6, 68(t2)<br>     |
|  38|[0x800022a8]<br>0x000A00FD|- rs1_b2_val == 85<br>                                                                                                       |[0x80000370]:ZUNPKD810 t6, t5<br> [0x80000374]:sw t6, 72(t2)<br>     |
|  39|[0x800022ac]<br>0x00080055|- rs1_b2_val == 191<br>                                                                                                      |[0x80000380]:ZUNPKD810 t6, t5<br> [0x80000384]:sw t6, 76(t2)<br>     |
|  40|[0x800022b0]<br>0x00040020|- rs1_b1_val == 4<br>                                                                                                        |[0x80000390]:ZUNPKD810 t6, t5<br> [0x80000394]:sw t6, 80(t2)<br>     |
|  41|[0x800022b4]<br>0x005500FB|- rs1_b2_val == 223<br>                                                                                                      |[0x800003a0]:ZUNPKD810 t6, t5<br> [0x800003a4]:sw t6, 84(t2)<br>     |
|  42|[0x800022b8]<br>0x007F00AA|- rs1_b0_val == 170<br>                                                                                                      |[0x800003b0]:ZUNPKD810 t6, t5<br> [0x800003b4]:sw t6, 88(t2)<br>     |
|  43|[0x800022bc]<br>0x00100001|- rs1_b1_val == 16<br> - rs1_b0_val == 1<br>                                                                                 |[0x800003c0]:ZUNPKD810 t6, t5<br> [0x800003c4]:sw t6, 92(t2)<br>     |
