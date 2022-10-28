
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800003c0')]      |
| SIG_REGION                | [('0x80002210', '0x800022c0', '44 words')]      |
| COV_LABELS                | clrs8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/clrs8-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 43      |
| STAT1                     | 42      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000390]:CLRS8 t6, t5
      [0x80000394]:sw t6, 68(sp)
 -- Signature Address: 0x800022b0 Data: 0x00000703
 -- Redundant Coverpoints hit by the op
      - opcode : clrs8
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == -86
      - rs1_b2_val == 64
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

|s.no|        signature         |                                                        coverpoints                                                        |                              code                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80002210]<br>0x04050500|- opcode : clrs8<br> - rs1 : x30<br> - rd : x18<br> - rs1_b0_val == -128<br> - rs1_b2_val == -3<br>                        |[0x80000108]:CLRS8 s2, t5<br> [0x8000010c]:sw s2, 0(t0)<br>     |
|   2|[0x80002214]<br>0x00000000|- rs1 : x19<br> - rd : x0<br> - rs1_b3_val == -86<br> - rs1_b2_val == -5<br>                                               |[0x80000118]:CLRS8 zero, s3<br> [0x8000011c]:sw zero, 4(t0)<br> |
|   3|[0x80002218]<br>0x00010105|- rs1 : x15<br> - rd : x1<br> - rs1_b3_val == 85<br> - rs1_b2_val == 32<br> - rs1_b0_val == 2<br>                          |[0x80000128]:CLRS8 ra, a5<br> [0x8000012c]:sw ra, 8(t0)<br>     |
|   4|[0x8000221c]<br>0x00030305|- rs1 : x27<br> - rd : x24<br> - rs1_b3_val == 127<br> - rs1_b1_val == -9<br> - rs1_b0_val == -3<br>                       |[0x80000138]:CLRS8 s8, s11<br> [0x8000013c]:sw s8, 12(t0)<br>   |
|   5|[0x80002220]<br>0x00040107|- rs1 : x14<br> - rd : x6<br> - rs1_b3_val == -65<br> - rs1_b1_val == -33<br> - rs1_b0_val == 0<br>                        |[0x80000148]:CLRS8 t1, a4<br> [0x8000014c]:sw t1, 16(t0)<br>    |
|   6|[0x80002224]<br>0x01020404|- rs1 : x2<br> - rd : x28<br> - rs1_b3_val == -33<br> - rs1_b2_val == -17<br> - rs1_b0_val == -5<br>                       |[0x80000158]:CLRS8 t3, sp<br> [0x8000015c]:sw t3, 20(t0)<br>    |
|   7|[0x80002228]<br>0x02030005|- rs1 : x28<br> - rd : x16<br> - rs1_b3_val == -17<br> - rs1_b2_val == 8<br> - rs1_b1_val == -128<br>                      |[0x80000168]:CLRS8 a6, t3<br> [0x8000016c]:sw a6, 24(t0)<br>    |
|   8|[0x8000222c]<br>0x03040104|- rs1 : x29<br> - rd : x20<br> - rs1_b3_val == -9<br> - rs1_b1_val == 32<br>                                               |[0x80000178]:CLRS8 s4, t4<br> [0x8000017c]:sw s4, 28(t0)<br>    |
|   9|[0x80002230]<br>0x04000000|- rs1 : x21<br> - rd : x31<br> - rs1_b3_val == -5<br> - rs1_b2_val == -65<br> - rs1_b1_val == 127<br>                      |[0x80000188]:CLRS8 t6, s5<br> [0x8000018c]:sw t6, 32(t0)<br>    |
|  10|[0x80002234]<br>0x05030404|- rs1 : x26<br> - rd : x29<br> - rs1_b3_val == -3<br> - rs1_b2_val == -9<br> - rs1_b1_val == -5<br>                        |[0x80000198]:CLRS8 t4, s10<br> [0x8000019c]:sw t4, 36(t0)<br>   |
|  11|[0x80002238]<br>0x06010703|- rs1 : x12<br> - rd : x2<br> - rs1_b3_val == -2<br> - rs1_b2_val == -33<br> - rs1_b1_val == -1<br> - rs1_b0_val == -9<br> |[0x800001a8]:CLRS8 sp, a2<br> [0x800001ac]:sw sp, 40(t0)<br>    |
|  12|[0x8000223c]<br>0x00050406|- rs1 : x3<br> - rd : x22<br> - rs1_b3_val == -128<br> - rs1_b2_val == 2<br> - rs1_b0_val == -2<br>                        |[0x800001b8]:CLRS8 s6, gp<br> [0x800001bc]:sw s6, 44(t0)<br>    |
|  13|[0x80002240]<br>0x07070707|- rs1 : x0<br> - rd : x15<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                            |[0x800001c8]:CLRS8 a5, zero<br> [0x800001cc]:sw a5, 48(t0)<br>  |
|  14|[0x80002244]<br>0x01040004|- rs1 : x25<br> - rd : x8<br> - rs1_b3_val == 32<br> - rs1_b1_val == -86<br>                                               |[0x800001d8]:CLRS8 fp, s9<br> [0x800001dc]:sw fp, 52(t0)<br>    |
|  15|[0x80002248]<br>0x02070503|- rs1 : x4<br> - rd : x12<br> - rs1_b3_val == 16<br> - rs1_b2_val == -1<br>                                                |[0x800001e8]:CLRS8 a2, tp<br> [0x800001ec]:sw a2, 56(t0)<br>    |
|  16|[0x8000224c]<br>0x03050201|- rs1 : x17<br> - rd : x14<br> - rs1_b3_val == 8<br> - rs1_b1_val == -17<br> - rs1_b0_val == -33<br>                       |[0x800001f8]:CLRS8 a4, a7<br> [0x800001fc]:sw a4, 60(t0)<br>    |
|  17|[0x80002250]<br>0x04020700|- rs1 : x31<br> - rd : x4<br> - rs1_b3_val == 4<br> - rs1_b2_val == 16<br> - rs1_b0_val == 64<br>                          |[0x80000208]:CLRS8 tp, t6<br> [0x8000020c]:sw tp, 64(t0)<br>    |
|  18|[0x80002254]<br>0x05030504|- rs1 : x6<br> - rd : x27<br> - rs1_b3_val == 2<br> - rs1_b1_val == 2<br>                                                  |[0x80000218]:CLRS8 s11, t1<br> [0x8000021c]:sw s11, 68(t0)<br>  |
|  19|[0x80002258]<br>0x06020603|- rs1 : x7<br> - rd : x3<br> - rs1_b3_val == 1<br> - rs1_b1_val == 1<br>                                                   |[0x80000228]:CLRS8 gp, t2<br> [0x8000022c]:sw gp, 72(t0)<br>    |
|  20|[0x8000225c]<br>0x07070505|- rs1 : x22<br> - rd : x13<br>                                                                                             |[0x80000238]:CLRS8 a3, s6<br> [0x8000023c]:sw a3, 76(t0)<br>    |
|  21|[0x80002260]<br>0x02040400|- rs1 : x16<br> - rd : x30<br> - rs1_b0_val == -65<br>                                                                     |[0x80000248]:CLRS8 t5, a6<br> [0x8000024c]:sw t5, 80(t0)<br>    |
|  22|[0x80002264]<br>0x04000502|- rs1 : x9<br> - rd : x7<br> - rs1_b2_val == -128<br> - rs1_b0_val == -17<br>                                              |[0x80000258]:CLRS8 t2, s1<br> [0x8000025c]:sw t2, 84(t0)<br>    |
|  23|[0x80002268]<br>0x01030501|- rs1 : x23<br> - rd : x26<br> - rs1_b0_val == 32<br>                                                                      |[0x80000268]:CLRS8 s10, s7<br> [0x8000026c]:sw s10, 88(t0)<br>  |
|  24|[0x8000226c]<br>0x01040602|- rs1 : x24<br> - rd : x10<br> - rs1_b0_val == 16<br>                                                                      |[0x80000280]:CLRS8 a0, s8<br> [0x80000284]:sw a0, 0(sp)<br>     |
|  25|[0x80002270]<br>0x00070603|- rs1 : x1<br> - rd : x25<br> - rs1_b0_val == 8<br>                                                                        |[0x80000290]:CLRS8 s9, ra<br> [0x80000294]:sw s9, 4(sp)<br>     |
|  26|[0x80002274]<br>0x00040604|- rs1 : x20<br> - rd : x11<br> - rs1_b3_val == 64<br> - rs1_b2_val == 4<br> - rs1_b0_val == 4<br>                          |[0x800002a0]:CLRS8 a1, s4<br> [0x800002a4]:sw a1, 8(sp)<br>     |
|  27|[0x80002278]<br>0x01020306|- rs1 : x11<br> - rd : x17<br> - rs1_b0_val == 1<br>                                                                       |[0x800002b0]:CLRS8 a7, a1<br> [0x800002b4]:sw a7, 12(sp)<br>    |
|  28|[0x8000227c]<br>0x02050407|- rs1 : x13<br> - rd : x23<br> - rs1_b1_val == 4<br> - rs1_b0_val == -1<br>                                                |[0x800002c0]:CLRS8 s7, a3<br> [0x800002c4]:sw s7, 16(sp)<br>    |
|  29|[0x80002280]<br>0x07040004|- rs1 : x18<br> - rd : x5<br> - rs1_b3_val == -1<br> - rs1_b1_val == 85<br>                                                |[0x800002d0]:CLRS8 t0, s2<br> [0x800002d4]:sw t0, 20(sp)<br>    |
|  30|[0x80002284]<br>0x06000407|- rs1 : x10<br> - rd : x21<br> - rs1_b2_val == -86<br>                                                                     |[0x800002e0]:CLRS8 s5, a0<br> [0x800002e4]:sw s5, 24(sp)<br>    |
|  31|[0x80002288]<br>0x05000303|- rs1 : x5<br> - rd : x9<br> - rs1_b2_val == 64<br>                                                                        |[0x800002f0]:CLRS8 s1, t0<br> [0x800002f4]:sw s1, 28(sp)<br>    |
|  32|[0x8000228c]<br>0x04060006|- rs1 : x8<br> - rd : x19<br> - rs1_b2_val == 1<br>                                                                        |[0x80000300]:CLRS8 s3, fp<br> [0x80000304]:sw s3, 32(sp)<br>    |
|  33|[0x80002290]<br>0x00050000|- rs1_b1_val == -65<br> - rs1_b0_val == 127<br>                                                                            |[0x80000310]:CLRS8 t6, t5<br> [0x80000314]:sw t6, 36(sp)<br>    |
|  34|[0x80002294]<br>0x04070500|- rs1_b1_val == -3<br>                                                                                                     |[0x80000320]:CLRS8 t6, t5<br> [0x80000324]:sw t6, 40(sp)<br>    |
|  35|[0x80002298]<br>0x04030604|- rs1_b1_val == -2<br>                                                                                                     |[0x80000330]:CLRS8 t6, t5<br> [0x80000334]:sw t6, 44(sp)<br>    |
|  36|[0x8000229c]<br>0x00050000|- rs1_b1_val == 64<br>                                                                                                     |[0x80000340]:CLRS8 t6, t5<br> [0x80000344]:sw t6, 48(sp)<br>    |
|  37|[0x800022a0]<br>0x05030302|- rs1_b1_val == 8<br>                                                                                                      |[0x80000350]:CLRS8 t6, t5<br> [0x80000354]:sw t6, 52(sp)<br>    |
|  38|[0x800022a4]<br>0x01060604|- rs1_b2_val == -2<br>                                                                                                     |[0x80000360]:CLRS8 t6, t5<br> [0x80000364]:sw t6, 56(sp)<br>    |
|  39|[0x800022a8]<br>0x04000302|- rs1_b2_val == 85<br>                                                                                                     |[0x80000370]:CLRS8 t6, t5<br> [0x80000374]:sw t6, 60(sp)<br>    |
|  40|[0x800022ac]<br>0x01070200|- rs1_b1_val == 16<br> - rs1_b0_val == 85<br>                                                                              |[0x80000380]:CLRS8 t6, t5<br> [0x80000384]:sw t6, 64(sp)<br>    |
|  41|[0x800022b4]<br>0x00030500|- rs1_b0_val == -86<br>                                                                                                    |[0x800003a0]:CLRS8 t6, t5<br> [0x800003a4]:sw t6, 72(sp)<br>    |
|  42|[0x800022b8]<br>0x07000002|- rs1_b2_val == 127<br>                                                                                                    |[0x800003b0]:CLRS8 t6, t5<br> [0x800003b4]:sw t6, 76(sp)<br>    |
