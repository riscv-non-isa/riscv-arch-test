
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
| COV_LABELS                | srli8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srli8.u-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 45      |
| STAT1                     | 44      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003d0]:SRLI8_U t6, t5, 3
      [0x800003d4]:sw t6, 92(sp)
 -- Signature Address: 0x800022c0 Data: 0x1F000008
 -- Redundant Coverpoints hit by the op
      - opcode : srli8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 3
      - rs1_b3_val == 251
      - rs1_b2_val == 1
      - rs1_b1_val == 0
      - rs1_b0_val == 64






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

|s.no|        signature         |                                                                         coverpoints                                                                         |                                 code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xF7FB1100|- opcode : srli8.u<br> - rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 0<br> - rs1_b3_val == 247<br> - rs1_b2_val == 251<br> |[0x80000108]:SRLI8_U tp, tp, 0<br> [0x8000010c]:sw tp, 0(s1)<br>      |
|   2|[0x80002214]<br>0x00000101|- rs1 : x5<br> - rd : x26<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b1_val == 128<br> - rs1_b0_val == 64<br>                                              |[0x80000118]:SRLI8_U s10, t0, 7<br> [0x8000011c]:sw s10, 4(s1)<br>    |
|   3|[0x80002218]<br>0x00010400|- rs1 : x29<br> - rd : x17<br> - imm_val == 6<br> - rs1_b3_val == 2<br> - rs1_b2_val == 32<br> - rs1_b1_val == 239<br>                                       |[0x80000128]:SRLI8_U a7, t4, 6<br> [0x8000012c]:sw a7, 8(s1)<br>      |
|   4|[0x8000221c]<br>0x00080508|- rs1 : x14<br> - rd : x7<br> - imm_val == 5<br> - rs1_b3_val == 4<br> - rs1_b2_val == 247<br> - rs1_b1_val == 170<br> - rs1_b0_val == 255<br>               |[0x80000138]:SRLI8_U t2, a4, 5<br> [0x8000013c]:sw t2, 12(s1)<br>     |
|   5|[0x80002220]<br>0x00010100|- rs1 : x15<br> - rd : x18<br> - imm_val == 4<br>                                                                                                            |[0x80000148]:SRLI8_U s2, a5, 4<br> [0x8000014c]:sw s2, 16(s1)<br>     |
|   6|[0x80002224]<br>0x02010200|- rs1 : x2<br> - rd : x28<br> - imm_val == 3<br> - rs1_b2_val == 8<br>                                                                                       |[0x80000158]:SRLI8_U t3, sp, 3<br> [0x8000015c]:sw t3, 20(s1)<br>     |
|   7|[0x80002228]<br>0x08010130|- rs1 : x8<br> - rd : x20<br> - imm_val == 2<br> - rs1_b3_val == 32<br> - rs1_b0_val == 191<br>                                                              |[0x80000168]:SRLI8_U s4, fp, 2<br> [0x8000016c]:sw s4, 24(s1)<br>     |
|   8|[0x8000222c]<br>0x02400304|- rs1 : x11<br> - rd : x24<br> - imm_val == 1<br> - rs1_b2_val == 127<br> - rs1_b0_val == 8<br>                                                              |[0x80000178]:SRLI8_U s8, a1, 1<br> [0x8000017c]:sw s8, 28(s1)<br>     |
|   9|[0x80002230]<br>0xAA80FD01|- rs1 : x16<br> - rd : x27<br> - rs1_b3_val == 170<br> - rs1_b2_val == 128<br> - rs1_b1_val == 253<br> - rs1_b0_val == 1<br>                                 |[0x80000188]:SRLI8_U s11, a6, 0<br> [0x8000018c]:sw s11, 32(s1)<br>   |
|  10|[0x80002234]<br>0x2B40057C|- rs1 : x10<br> - rd : x31<br> - rs1_b3_val == 85<br> - rs1_b0_val == 247<br>                                                                                |[0x80000198]:SRLI8_U t6, a0, 1<br> [0x8000019c]:sw t6, 36(s1)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x0<br> - rd : x12<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                              |[0x800001a8]:SRLI8_U a2, zero, 3<br> [0x800001ac]:sw a2, 40(s1)<br>   |
|  12|[0x8000223c]<br>0x03000400|- rs1 : x25<br> - rd : x15<br> - rs1_b3_val == 191<br> - rs1_b1_val == 254<br> - rs1_b0_val == 16<br>                                                        |[0x800001b8]:SRLI8_U a5, s9, 6<br> [0x800001bc]:sw a5, 44(s1)<br>     |
|  13|[0x80002240]<br>0x38013808|- rs1 : x3<br> - rd : x29<br> - rs1_b3_val == 223<br> - rs1_b1_val == 223<br> - rs1_b0_val == 32<br>                                                         |[0x800001c8]:SRLI8_U t4, gp, 2<br> [0x800001cc]:sw t4, 48(s1)<br>     |
|  14|[0x80002244]<br>0xEFFE1220|- rs1 : x23<br> - rd : x11<br> - rs1_b3_val == 239<br> - rs1_b2_val == 254<br>                                                                               |[0x800001d8]:SRLI8_U a1, s7, 0<br> [0x800001dc]:sw a1, 52(s1)<br>     |
|  15|[0x80002248]<br>0x00000000|- rs1 : x17<br> - rd : x0<br> - rs1_b3_val == 251<br> - rs1_b2_val == 1<br>                                                                                  |[0x800001e8]:SRLI8_U zero, a7, 3<br> [0x800001ec]:sw zero, 56(s1)<br> |
|  16|[0x8000224c]<br>0x04010300|- rs1 : x7<br> - rd : x1<br> - rs1_b3_val == 253<br> - rs1_b2_val == 64<br> - rs1_b1_val == 191<br>                                                          |[0x800001f8]:SRLI8_U ra, t2, 6<br> [0x800001fc]:sw ra, 60(s1)<br>     |
|  17|[0x80002250]<br>0x04000002|- rs1 : x31<br> - rd : x25<br> - rs1_b3_val == 254<br> - rs1_b0_val == 128<br>                                                                               |[0x80000208]:SRLI8_U s9, t6, 6<br> [0x8000020c]:sw s9, 64(s1)<br>     |
|  18|[0x80002254]<br>0x40400401|- rs1 : x22<br> - rd : x2<br> - rs1_b3_val == 128<br>                                                                                                        |[0x80000218]:SRLI8_U sp, s6, 1<br> [0x8000021c]:sw sp, 68(s1)<br>     |
|  19|[0x80002258]<br>0x103E0204|- rs1 : x12<br> - rd : x6<br> - rs1_b3_val == 64<br>                                                                                                         |[0x80000228]:SRLI8_U t1, a2, 2<br> [0x8000022c]:sw t1, 72(s1)<br>     |
|  20|[0x8000225c]<br>0x00040004|- rs1 : x20<br> - rd : x19<br> - rs1_b3_val == 16<br> - rs1_b2_val == 255<br> - rs1_b0_val == 254<br>                                                        |[0x80000238]:SRLI8_U s3, s4, 6<br> [0x8000023c]:sw s3, 76(s1)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x21<br> - rd : x10<br> - rs1_b3_val == 8<br>                                                                                                         |[0x80000248]:SRLI8_U a0, s5, 7<br> [0x8000024c]:sw a0, 80(s1)<br>     |
|  22|[0x80002264]<br>0x01027F06|- rs1 : x18<br> - rd : x14<br> - rs1_b3_val == 1<br>                                                                                                         |[0x80000260]:SRLI8_U a4, s2, 1<br> [0x80000264]:sw a4, 0(sp)<br>      |
|  23|[0x80002268]<br>0x02010101|- rs1 : x28<br> - rd : x9<br> - rs1_b3_val == 255<br> - rs1_b0_val == 85<br>                                                                                 |[0x80000270]:SRLI8_U s1, t3, 7<br> [0x80000274]:sw s1, 4(sp)<br>      |
|  24|[0x8000226c]<br>0x00150103|- rs1 : x30<br> - rd : x8<br> - rs1_b2_val == 85<br> - rs1_b1_val == 4<br>                                                                                   |[0x80000280]:SRLI8_U fp, t5, 2<br> [0x80000284]:sw fp, 8(sp)<br>      |
|  25|[0x80002270]<br>0x00000000|- rs1 : x9<br> - rd : x16<br> - rs1_b1_val == 2<br>                                                                                                          |[0x80000290]:SRLI8_U a6, s1, 6<br> [0x80000294]:sw a6, 12(sp)<br>     |
|  26|[0x80002274]<br>0x060201EF|- rs1 : x19<br> - rd : x22<br> - rs1_b2_val == 2<br> - rs1_b1_val == 1<br> - rs1_b0_val == 239<br>                                                           |[0x800002a0]:SRLI8_U s6, s3, 0<br> [0x800002a4]:sw s6, 16(sp)<br>     |
|  27|[0x80002278]<br>0x1F042018|- rs1 : x26<br> - rd : x13<br> - rs1_b1_val == 255<br>                                                                                                       |[0x800002b0]:SRLI8_U a3, s10, 3<br> [0x800002b4]:sw a3, 20(sp)<br>    |
|  28|[0x8000227c]<br>0x0B000215|- rs1 : x13<br> - rd : x21<br> - rs1_b0_val == 170<br>                                                                                                       |[0x800002c0]:SRLI8_U s5, a3, 3<br> [0x800002c4]:sw s5, 24(sp)<br>     |
|  29|[0x80002280]<br>0x2B3C0320|- rs1 : x24<br> - rd : x23<br> - rs1_b2_val == 239<br> - rs1_b0_val == 127<br>                                                                               |[0x800002d0]:SRLI8_U s7, s8, 2<br> [0x800002d4]:sw s7, 28(sp)<br>     |
|  30|[0x80002284]<br>0x080C010E|- rs1 : x1<br> - rd : x30<br> - rs1_b2_val == 191<br> - rs1_b0_val == 223<br>                                                                                |[0x800002e0]:SRLI8_U t5, ra, 4<br> [0x800002e4]:sw t5, 32(sp)<br>     |
|  31|[0x80002288]<br>0x4003083F|- rs1 : x27<br> - rd : x3<br> - rs1_b1_val == 32<br> - rs1_b0_val == 251<br>                                                                                 |[0x800002f0]:SRLI8_U gp, s11, 2<br> [0x800002f4]:sw gp, 36(sp)<br>    |
|  32|[0x8000228c]<br>0x1E150220|- rs1 : x6<br> - rd : x5<br> - rs1_b2_val == 170<br> - rs1_b0_val == 253<br>                                                                                 |[0x80000300]:SRLI8_U t0, t1, 3<br> [0x80000304]:sw t0, 40(sp)<br>     |
|  33|[0x80002290]<br>0x00DF0F0C|- rs1_b2_val == 223<br>                                                                                                                                      |[0x80000310]:SRLI8_U t6, t5, 0<br> [0x80000314]:sw t6, 44(sp)<br>     |
|  34|[0x80002294]<br>0x02200110|- rs1_b2_val == 253<br>                                                                                                                                      |[0x80000320]:SRLI8_U t6, t5, 3<br> [0x80000324]:sw t6, 48(sp)<br>     |
|  35|[0x80002298]<br>0x20021F20|- rs1_b2_val == 16<br> - rs1_b1_val == 251<br>                                                                                                               |[0x80000330]:SRLI8_U t6, t5, 3<br> [0x80000334]:sw t6, 52(sp)<br>     |
|  36|[0x8000229c]<br>0x02000404|- rs1_b3_val == 127<br> - rs1_b2_val == 4<br>                                                                                                                |[0x80000340]:SRLI8_U t6, t5, 6<br> [0x80000344]:sw t6, 56(sp)<br>     |
|  37|[0x800022a0]<br>0x0100050F|- rs1_b1_val == 85<br>                                                                                                                                       |[0x80000350]:SRLI8_U t6, t5, 4<br> [0x80000354]:sw t6, 60(sp)<br>     |
|  38|[0x800022a4]<br>0x00020100|- rs1_b1_val == 127<br>                                                                                                                                      |[0x80000360]:SRLI8_U t6, t5, 7<br> [0x80000364]:sw t6, 64(sp)<br>     |
|  39|[0x800022a8]<br>0x00040400|- rs1_b0_val == 4<br>                                                                                                                                        |[0x80000370]:SRLI8_U t6, t5, 6<br> [0x80000374]:sw t6, 68(sp)<br>     |
|  40|[0x800022ac]<br>0x08070700|- rs1_b0_val == 2<br>                                                                                                                                        |[0x80000380]:SRLI8_U t6, t5, 5<br> [0x80000384]:sw t6, 72(sp)<br>     |
|  41|[0x800022b0]<br>0x02020802|- rs1_b1_val == 64<br>                                                                                                                                       |[0x80000390]:SRLI8_U t6, t5, 3<br> [0x80000394]:sw t6, 76(sp)<br>     |
|  42|[0x800022b4]<br>0x01151F1E|- rs1_b1_val == 247<br>                                                                                                                                      |[0x800003a0]:SRLI8_U t6, t5, 3<br> [0x800003a4]:sw t6, 80(sp)<br>     |
|  43|[0x800022b8]<br>0x00000220|- rs1_b1_val == 16<br>                                                                                                                                       |[0x800003b0]:SRLI8_U t6, t5, 3<br> [0x800003b4]:sw t6, 84(sp)<br>     |
|  44|[0x800022bc]<br>0x0BFF080A|- rs1_b1_val == 8<br>                                                                                                                                        |[0x800003c0]:SRLI8_U t6, t5, 0<br> [0x800003c4]:sw t6, 88(sp)<br>     |
