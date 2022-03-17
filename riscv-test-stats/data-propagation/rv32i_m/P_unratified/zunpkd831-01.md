
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
| COV_LABELS                | zunpkd831      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/zunpkd831-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 51      |
| STAT1                     | 48      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000360]:ZUNPKD831 t6, t5
      [0x80000364]:sw t6, 68(ra)
 -- Signature Address: 0x800022a4 Data: 0x00080009
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd831
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 8
      - rs1_b2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003dc]:ZUNPKD831 t6, t5
      [0x800003e0]:sw t6, 100(ra)
 -- Signature Address: 0x800022c4 Data: 0x00060000
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd831
      - rs1 : x30
      - rd : x31
      - rs1_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000042c]:ZUNPKD831 t6, t5
      [0x80000430]:sw t6, 120(ra)
 -- Signature Address: 0x800022d8 Data: 0x00110020
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd831
      - rs1 : x30
      - rd : x31
      - rs1_b1_val == 32
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

|s.no|        signature         |                                                                    coverpoints                                                                    |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x005500DF|- opcode : zunpkd831<br> - rs1 : x9<br> - rd : x26<br> - rs1_b0_val == 0<br> - rs1_b3_val == 85<br> - rs1_b2_val == 85<br> - rs1_b1_val == 223<br> |[0x80000108]:ZUNPKD831 s10, s1<br> [0x8000010c]:sw s10, 0(sp)<br>    |
|   2|[0x80002214]<br>0x00AA00DF|- rs1 : x30<br> - rd : x20<br> - rs1_b3_val == 170<br>                                                                                             |[0x80000118]:ZUNPKD831 s4, t5<br> [0x8000011c]:sw s4, 4(sp)<br>      |
|   3|[0x80002218]<br>0x007F00F7|- rs1 : x7<br> - rd : x27<br> - rs1_b3_val == 127<br> - rs1_b2_val == 191<br> - rs1_b1_val == 247<br>                                              |[0x80000128]:ZUNPKD831 s11, t2<br> [0x8000012c]:sw s11, 8(sp)<br>    |
|   4|[0x8000221c]<br>0x00BF0020|- rs1 : x28<br> - rd : x25<br> - rs1_b3_val == 191<br> - rs1_b2_val == 64<br> - rs1_b1_val == 32<br> - rs1_b0_val == 239<br>                       |[0x80000138]:ZUNPKD831 s9, t3<br> [0x8000013c]:sw s9, 12(sp)<br>     |
|   5|[0x80002220]<br>0x00DF0003|- rs1 : x22<br> - rd : x12<br> - rs1_b3_val == 223<br>                                                                                             |[0x80000148]:ZUNPKD831 a2, s6<br> [0x8000014c]:sw a2, 16(sp)<br>     |
|   6|[0x80002224]<br>0x00EF00EF|- rs1 : x18<br> - rd : x9<br> - rs1_b3_val == 239<br> - rs1_b2_val == 253<br> - rs1_b1_val == 239<br> - rs1_b0_val == 127<br>                      |[0x80000158]:ZUNPKD831 s1, s2<br> [0x8000015c]:sw s1, 20(sp)<br>     |
|   7|[0x80002228]<br>0x00F70009|- rs1 : x21<br> - rd : x13<br> - rs1_b3_val == 247<br> - rs1_b2_val == 32<br>                                                                      |[0x80000168]:ZUNPKD831 a3, s5<br> [0x8000016c]:sw a3, 24(sp)<br>     |
|   8|[0x8000222c]<br>0x00FB000F|- rs1 : x31<br> - rd : x6<br> - rs1_b3_val == 251<br> - rs1_b0_val == 254<br>                                                                      |[0x80000178]:ZUNPKD831 t1, t6<br> [0x8000017c]:sw t1, 28(sp)<br>     |
|   9|[0x80002230]<br>0x00FD0005|- rs1 : x15<br> - rd : x29<br> - rs1_b3_val == 253<br>                                                                                             |[0x80000188]:ZUNPKD831 t4, a5<br> [0x8000018c]:sw t4, 32(sp)<br>     |
|  10|[0x80002234]<br>0x00FE0007|- rs1 : x1<br> - rd : x23<br> - rs1_b3_val == 254<br> - rs1_b2_val == 223<br>                                                                      |[0x80000198]:ZUNPKD831 s7, ra<br> [0x8000019c]:sw s7, 36(sp)<br>     |
|  11|[0x80002238]<br>0x008000AA|- rs1 : x16<br> - rd : x19<br> - rs1_b3_val == 128<br> - rs1_b2_val == 239<br> - rs1_b1_val == 170<br>                                             |[0x800001a8]:ZUNPKD831 s3, a6<br> [0x800001ac]:sw s3, 40(sp)<br>     |
|  12|[0x8000223c]<br>0x00400020|- rs1 : x14<br> - rd : x4<br> - rs1_b3_val == 64<br> - rs1_b2_val == 4<br> - rs1_b0_val == 85<br>                                                  |[0x800001b8]:ZUNPKD831 tp, a4<br> [0x800001bc]:sw tp, 44(sp)<br>     |
|  13|[0x80002240]<br>0x00200006|- rs1 : x13<br> - rd : x31<br> - rs1_b3_val == 32<br> - rs1_b0_val == 251<br>                                                                      |[0x800001c8]:ZUNPKD831 t6, a3<br> [0x800001cc]:sw t6, 48(sp)<br>     |
|  14|[0x80002244]<br>0x0010000A|- rs1 : x8<br> - rd : x16<br> - rs1_b3_val == 16<br>                                                                                               |[0x800001d8]:ZUNPKD831 a6, fp<br> [0x800001dc]:sw a6, 52(sp)<br>     |
|  15|[0x80002248]<br>0x000800FE|- rs1 : x4<br> - rd : x11<br> - rs1_b3_val == 8<br> - rs1_b2_val == 255<br> - rs1_b1_val == 254<br>                                                |[0x800001e8]:ZUNPKD831 a1, tp<br> [0x800001ec]:sw a1, 56(sp)<br>     |
|  16|[0x8000224c]<br>0x00040040|- rs1 : x25<br> - rd : x18<br> - rs1_b3_val == 4<br> - rs1_b1_val == 64<br>                                                                        |[0x800001f8]:ZUNPKD831 s2, s9<br> [0x800001fc]:sw s2, 60(sp)<br>     |
|  17|[0x80002250]<br>0x00020008|- rs1 : x23<br> - rd : x5<br> - rs1_b3_val == 2<br> - rs1_b1_val == 8<br>                                                                          |[0x80000208]:ZUNPKD831 t0, s7<br> [0x8000020c]:sw t0, 64(sp)<br>     |
|  18|[0x80002254]<br>0x0001000A|- rs1 : x12<br> - rd : x22<br> - rs1_b3_val == 1<br> - rs1_b2_val == 16<br> - rs1_b0_val == 247<br>                                                |[0x80000218]:ZUNPKD831 s6, a2<br> [0x8000021c]:sw s6, 68(sp)<br>     |
|  19|[0x80002258]<br>0x00FF0007|- rs1 : x10<br> - rd : x7<br> - rs1_b3_val == 255<br>                                                                                              |[0x80000228]:ZUNPKD831 t2, a0<br> [0x8000022c]:sw t2, 72(sp)<br>     |
|  20|[0x8000225c]<br>0x000000FD|- rs1 : x17<br> - rd : x1<br> - rs1_b3_val == 0<br> - rs1_b1_val == 253<br>                                                                        |[0x80000238]:ZUNPKD831 ra, a7<br> [0x8000023c]:sw ra, 76(sp)<br>     |
|  21|[0x80002260]<br>0x00FE000B|- rs1 : x26<br> - rd : x28<br> - rs1_b2_val == 170<br> - rs1_b0_val == 4<br>                                                                       |[0x80000250]:ZUNPKD831 t3, s10<br> [0x80000254]:sw t3, 0(ra)<br>     |
|  22|[0x80002264]<br>0x000600FB|- rs1 : x19<br> - rd : x15<br> - rs1_b2_val == 127<br> - rs1_b1_val == 251<br>                                                                     |[0x80000260]:ZUNPKD831 a5, s3<br> [0x80000264]:sw a5, 4(ra)<br>      |
|  23|[0x80002268]<br>0x008000AA|- rs1 : x29<br> - rd : x8<br> - rs1_b0_val == 191<br>                                                                                              |[0x80000270]:ZUNPKD831 fp, t4<br> [0x80000274]:sw fp, 8(ra)<br>      |
|  24|[0x8000226c]<br>0x00400080|- rs1 : x27<br> - rd : x10<br> - rs1_b1_val == 128<br> - rs1_b0_val == 223<br>                                                                     |[0x80000280]:ZUNPKD831 a0, s11<br> [0x80000284]:sw a0, 12(ra)<br>    |
|  25|[0x80002270]<br>0x00000000|- rs1 : x0<br> - rd : x21<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                          |[0x80000290]:ZUNPKD831 s5, zero<br> [0x80000294]:sw s5, 16(ra)<br>   |
|  26|[0x80002274]<br>0x0020000C|- rs1 : x24<br> - rd : x17<br> - rs1_b0_val == 128<br>                                                                                             |[0x800002a0]:ZUNPKD831 a7, s8<br> [0x800002a4]:sw a7, 20(ra)<br>     |
|  27|[0x80002278]<br>0x007F00FB|- rs1 : x11<br> - rd : x2<br> - rs1_b0_val == 64<br>                                                                                               |[0x800002b0]:ZUNPKD831 sp, a1<br> [0x800002b4]:sw sp, 24(ra)<br>     |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x3<br> - rd : x0<br> - rs1_b0_val == 32<br>                                                                                                |[0x800002c0]:ZUNPKD831 zero, gp<br> [0x800002c4]:sw zero, 28(ra)<br> |
|  29|[0x80002280]<br>0x00080007|- rs1 : x6<br> - rd : x30<br> - rs1_b0_val == 16<br>                                                                                               |[0x800002d0]:ZUNPKD831 t5, t1<br> [0x800002d4]:sw t5, 32(ra)<br>     |
|  30|[0x80002284]<br>0x000400FB|- rs1 : x20<br> - rd : x24<br> - rs1_b0_val == 8<br>                                                                                               |[0x800002e0]:ZUNPKD831 s8, s4<br> [0x800002e4]:sw s8, 36(ra)<br>     |
|  31|[0x80002288]<br>0x0080000E|- rs1 : x2<br> - rd : x14<br> - rs1_b0_val == 2<br>                                                                                                |[0x800002f0]:ZUNPKD831 a4, sp<br> [0x800002f4]:sw a4, 40(ra)<br>     |
|  32|[0x8000228c]<br>0x000A0004|- rs1 : x5<br> - rd : x3<br> - rs1_b1_val == 4<br> - rs1_b0_val == 1<br>                                                                           |[0x80000300]:ZUNPKD831 gp, t0<br> [0x80000304]:sw gp, 44(ra)<br>     |
|  33|[0x80002290]<br>0x000900FF|- rs1_b1_val == 255<br> - rs1_b0_val == 255<br>                                                                                                    |[0x80000310]:ZUNPKD831 t6, t5<br> [0x80000314]:sw t6, 48(ra)<br>     |
|  34|[0x80002294]<br>0x000A0020|- rs1_b2_val == 247<br>                                                                                                                            |[0x80000320]:ZUNPKD831 t6, t5<br> [0x80000324]:sw t6, 52(ra)<br>     |
|  35|[0x80002298]<br>0x00BF0005|- rs1_b2_val == 8<br>                                                                                                                              |[0x80000330]:ZUNPKD831 t6, t5<br> [0x80000334]:sw t6, 56(ra)<br>     |
|  36|[0x8000229c]<br>0x000E00FF|- rs1_b2_val == 2<br>                                                                                                                              |[0x80000340]:ZUNPKD831 t6, t5<br> [0x80000344]:sw t6, 60(ra)<br>     |
|  37|[0x800022a0]<br>0x000C00FF|- rs1_b2_val == 1<br>                                                                                                                              |[0x80000350]:ZUNPKD831 t6, t5<br> [0x80000354]:sw t6, 64(ra)<br>     |
|  38|[0x800022a8]<br>0x00DF0055|- rs1_b1_val == 85<br>                                                                                                                             |[0x80000370]:ZUNPKD831 t6, t5<br> [0x80000374]:sw t6, 72(ra)<br>     |
|  39|[0x800022ac]<br>0x0000007F|- rs1_b1_val == 127<br>                                                                                                                            |[0x80000380]:ZUNPKD831 t6, t5<br> [0x80000384]:sw t6, 76(ra)<br>     |
|  40|[0x800022b0]<br>0x00FD00BF|- rs1_b1_val == 191<br>                                                                                                                            |[0x80000390]:ZUNPKD831 t6, t5<br> [0x80000394]:sw t6, 80(ra)<br>     |
|  41|[0x800022b4]<br>0x00120040|- rs1_b2_val == 251<br>                                                                                                                            |[0x8000039c]:ZUNPKD831 t6, t5<br> [0x800003a0]:sw t6, 84(ra)<br>     |
|  42|[0x800022b8]<br>0x00110010|- rs1_b1_val == 16<br>                                                                                                                             |[0x800003ac]:ZUNPKD831 t6, t5<br> [0x800003b0]:sw t6, 88(ra)<br>     |
|  43|[0x800022bc]<br>0x00DF0002|- rs1_b1_val == 2<br>                                                                                                                              |[0x800003bc]:ZUNPKD831 t6, t5<br> [0x800003c0]:sw t6, 92(ra)<br>     |
|  44|[0x800022c0]<br>0x000A0001|- rs1_b1_val == 1<br>                                                                                                                              |[0x800003cc]:ZUNPKD831 t6, t5<br> [0x800003d0]:sw t6, 96(ra)<br>     |
|  45|[0x800022c8]<br>0x00200005|- rs1_b0_val == 170<br>                                                                                                                            |[0x800003ec]:ZUNPKD831 t6, t5<br> [0x800003f0]:sw t6, 104(ra)<br>    |
|  46|[0x800022cc]<br>0x000A000E|- rs1_b2_val == 254<br>                                                                                                                            |[0x800003fc]:ZUNPKD831 t6, t5<br> [0x80000400]:sw t6, 108(ra)<br>    |
|  47|[0x800022d0]<br>0x00DF00FD|- rs1_b2_val == 128<br>                                                                                                                            |[0x8000040c]:ZUNPKD831 t6, t5<br> [0x80000410]:sw t6, 112(ra)<br>    |
|  48|[0x800022d4]<br>0x00030003|- rs1_b0_val == 253<br>                                                                                                                            |[0x8000041c]:ZUNPKD831 t6, t5<br> [0x80000420]:sw t6, 116(ra)<br>    |
