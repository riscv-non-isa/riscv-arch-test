
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000750')]      |
| SIG_REGION                | [('0x80002210', '0x80002320', '68 words')]      |
| COV_LABELS                | umaqa      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/umaqa-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 67      |
| STAT1                     | 63      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000598]:UMAQA t6, t5, t4
      [0x8000059c]:sw t6, 132(gp)
 -- Signature Address: 0x800022d0 Data: 0x200D6182
 -- Redundant Coverpoints hit by the op
      - opcode : umaqa
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 127
      - rs2_b2_val == 8
      - rs2_b1_val == 255
      - rs2_b0_val == 0
      - rs1_b0_val == 255




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e8]:UMAQA t6, t5, t4
      [0x800006ec]:sw t6, 188(gp)
 -- Signature Address: 0x80002308 Data: 0x2013CEDB
 -- Redundant Coverpoints hit by the op
      - opcode : umaqa
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == 0
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 32
      - rs2_b2_val == 170
      - rs1_b3_val == 191
      - rs1_b2_val == 8
      - rs1_b1_val == 247




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000700]:UMAQA t6, t5, t4
      [0x80000704]:sw t6, 192(gp)
 -- Signature Address: 0x8000230c Data: 0x20144612
 -- Redundant Coverpoints hit by the op
      - opcode : umaqa
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 32
      - rs2_b0_val == 239
      - rs1_b2_val == 0
      - rs1_b0_val == 127




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000718]:UMAQA t6, t5, t4
      [0x8000071c]:sw t6, 196(gp)
 -- Signature Address: 0x80002310 Data: 0x20144952
 -- Redundant Coverpoints hit by the op
      - opcode : umaqa
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 2
      - rs2_b1_val == 64
      - rs1_b3_val == 0
      - rs1_b1_val == 0
      - rs1_b0_val == 254






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

|s.no|        signature         |                                                                                                                                                                                                                                 coverpoints                                                                                                                                                                                                                                 |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x20AA7C6F|- opcode : umaqa<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 32<br> - rs2_b2_val == 170<br> - rs1_b3_val == 32<br> - rs1_b2_val == 170<br> |[0x80000110]:UMAQA t3, t3, t3<br> [0x80000114]:sw t3, 0(sp)<br>      |
|   2|[0x80002214]<br>0xB6FB9C76|- rs1 : x24<br> - rs2 : x24<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_b2_val == 32<br> - rs2_b0_val == 239<br> - rs1_b2_val == 32<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                          |[0x80000128]:UMAQA s7, s8, s8<br> [0x8000012c]:sw s7, 4(sp)<br>      |
|   3|[0x80002218]<br>0x8000CDD6|- rs1 : x14<br> - rs2 : x19<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 170<br> - rs2_b2_val == 8<br> - rs2_b1_val == 32<br> - rs1_b3_val == 223<br> - rs1_b2_val == 8<br> - rs1_b1_val == 191<br> - rs1_b0_val == 32<br> |[0x80000140]:UMAQA t1, a4, s3<br> [0x80000144]:sw t1, 8(sp)<br>      |
|   4|[0x8000221c]<br>0x0806239D|- rs1 : x22<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b3_val == 8<br> - rs2_b1_val == 4<br> - rs2_b0_val == 191<br> - rs1_b2_val == 253<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                   |[0x80000158]:UMAQA gp, s6, gp<br> [0x8000015c]:sw gp, 12(sp)<br>     |
|   5|[0x80002220]<br>0x0FF09A0F|- rs1 : x21<br> - rs2 : x13<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs2_b0_val == 255<br> - rs1_b2_val == 239<br> - rs1_b1_val == 128<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                        |[0x80000170]:UMAQA s5, s5, a3<br> [0x80000174]:sw s5, 16(sp)<br>     |
|   6|[0x80002224]<br>0xB7FBDACB|- rs1 : x4<br> - rs2 : x6<br> - rd : x7<br> - rs2_b3_val == 85<br> - rs2_b1_val == 254<br> - rs1_b2_val == 2<br> - rs1_b1_val == 32<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                |[0x80000188]:UMAQA t2, tp, t1<br> [0x8000018c]:sw t2, 20(sp)<br>     |
|   7|[0x80002228]<br>0xDF094DF9|- rs1 : x25<br> - rs2 : x7<br> - rd : x14<br> - rs2_b3_val == 127<br> - rs2_b2_val == 1<br> - rs2_b1_val == 191<br> - rs2_b0_val == 4<br> - rs1_b3_val == 253<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                    |[0x800001a0]:UMAQA a4, s9, t2<br> [0x800001a4]:sw a4, 24(sp)<br>     |
|   8|[0x8000222c]<br>0x8000BAF3|- rs1 : x26<br> - rs2 : x29<br> - rd : x5<br> - rs2_b3_val == 191<br> - rs1_b3_val == 239<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800001b8]:UMAQA t0, s10, t4<br> [0x800001bc]:sw t0, 28(sp)<br>    |
|   9|[0x80002230]<br>0xDF57C663|- rs1 : x20<br> - rs2 : x16<br> - rd : x18<br> - rs2_b3_val == 223<br> - rs2_b2_val == 64<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                         |[0x800001d0]:UMAQA s2, s4, a6<br> [0x800001d4]:sw s2, 32(sp)<br>     |
|  10|[0x80002234]<br>0xAA092964|- rs1 : x3<br> - rs2 : x17<br> - rd : x19<br> - rs2_b3_val == 239<br> - rs2_b2_val == 127<br> - rs2_b1_val == 85<br> - rs1_b2_val == 251<br> - rs1_b1_val == 255<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                  |[0x800001e8]:UMAQA s3, gp, a7<br> [0x800001ec]:sw s3, 36(sp)<br>     |
|  11|[0x80002238]<br>0xF76E9CC3|- rs1 : x19<br> - rs2 : x14<br> - rd : x30<br> - rs2_b3_val == 247<br> - rs2_b1_val == 255<br> - rs1_b3_val == 128<br> - rs1_b2_val == 255<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                        |[0x80000200]:UMAQA t5, s3, a4<br> [0x80000204]:sw t5, 40(sp)<br>     |
|  12|[0x8000223c]<br>0xEF80DDE6|- rs1 : x23<br> - rs2 : x18<br> - rd : x17<br> - rs2_b3_val == 251<br> - rs2_b2_val == 254<br> - rs1_b3_val == 191<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                               |[0x80000218]:UMAQA a7, s7, s2<br> [0x8000021c]:sw a7, 44(sp)<br>     |
|  13|[0x80002240]<br>0xBB70E17B|- rs1 : x29<br> - rs2 : x15<br> - rd : x27<br> - rs2_b3_val == 253<br> - rs2_b1_val == 128<br> - rs2_b0_val == 32<br> - rs1_b2_val == 127<br> - rs1_b1_val == 170<br>                                                                                                                                                                                                                                                                                                        |[0x80000230]:UMAQA s11, t4, a5<br> [0x80000234]:sw s11, 48(sp)<br>   |
|  14|[0x80002244]<br>0xAB809A07|- rs1 : x10<br> - rs2 : x1<br> - rd : x11<br> - rs2_b3_val == 254<br> - rs2_b2_val == 251<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000248]:UMAQA a1, a0, ra<br> [0x8000024c]:sw a1, 52(sp)<br>     |
|  15|[0x80002248]<br>0xADFFFC83|- rs1 : x16<br> - rs2 : x23<br> - rd : x9<br> - rs2_b3_val == 128<br> - rs2_b1_val == 247<br> - rs2_b0_val == 251<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000260]:UMAQA s1, a6, s7<br> [0x80000264]:sw s1, 56(sp)<br>     |
|  16|[0x8000224c]<br>0x0B202553|- rs1 : x18<br> - rs2 : x22<br> - rd : x24<br> - rs2_b3_val == 64<br> - rs2_b1_val == 253<br> - rs2_b0_val == 16<br> - rs1_b3_val == 0<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                           |[0x80000280]:UMAQA s8, s2, s6<br> [0x80000284]:sw s8, 0(gp)<br>      |
|  17|[0x80002250]<br>0xBF110165|- rs1 : x12<br> - rs2 : x8<br> - rd : x10<br> - rs2_b3_val == 16<br> - rs2_b2_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000298]:UMAQA a0, a2, fp<br> [0x8000029c]:sw a0, 4(gp)<br>      |
|  18|[0x80002254]<br>0xFBB7A726|- rs1 : x15<br> - rs2 : x27<br> - rd : x31<br> - rs2_b3_val == 4<br> - rs2_b1_val == 170<br> - rs1_b3_val == 170<br> - rs1_b2_val == 4<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                           |[0x800002b0]:UMAQA t6, a5, s11<br> [0x800002b4]:sw t6, 8(gp)<br>     |
|  19|[0x80002258]<br>0x00000000|- rs1 : x8<br> - rs2 : x20<br> - rd : x0<br> - rs2_b3_val == 2<br> - rs2_b1_val == 64<br> - rs1_b1_val == 0<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                      |[0x800002c8]:UMAQA zero, fp, s4<br> [0x800002cc]:sw zero, 12(gp)<br> |
|  20|[0x8000225c]<br>0x0E1311FF|- rs1 : x11<br> - rs2 : x0<br> - rd : x13<br> - rs1_b0_val == 0<br> - rs2_b3_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                  |[0x800002e0]:UMAQA a3, a1, zero<br> [0x800002e4]:sw a3, 16(gp)<br>   |
|  21|[0x80002260]<br>0xEF21B2AB|- rs1 : x5<br> - rs2 : x11<br> - rd : x26<br> - rs2_b3_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800002f8]:UMAQA s10, t0, a1<br> [0x800002fc]:sw s10, 20(gp)<br>   |
|  22|[0x80002264]<br>0xAA040B0D|- rs1 : x7<br> - rs2 : x2<br> - rd : x15<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000310]:UMAQA a5, t2, sp<br> [0x80000314]:sw a5, 24(gp)<br>     |
|  23|[0x80002268]<br>0xFD0C2AE9|- rs1 : x2<br> - rs2 : x30<br> - rd : x25<br> - rs2_b2_val == 85<br> - rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000328]:UMAQA s9, sp, t5<br> [0x8000032c]:sw s9, 28(gp)<br>     |
|  24|[0x8000226c]<br>0x0114F6D1|- rs1 : x1<br> - rs2 : x31<br> - rd : x2<br> - rs2_b2_val == 191<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000340]:UMAQA sp, ra, t6<br> [0x80000344]:sw sp, 32(gp)<br>     |
|  25|[0x80002270]<br>0xDF809A22|- rs1 : x17<br> - rs2 : x9<br> - rd : x29<br> - rs2_b2_val == 223<br> - rs1_b2_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x80000358]:UMAQA t4, a7, s1<br> [0x8000035c]:sw t4, 36(gp)<br>     |
|  26|[0x80002274]<br>0x2001325D|- rs1 : x13<br> - rs2 : x5<br> - rd : x16<br> - rs2_b0_val == 247<br> - rs1_b1_val == 127<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                          |[0x80000370]:UMAQA a6, a3, t0<br> [0x80000374]:sw a6, 40(gp)<br>     |
|  27|[0x80002278]<br>0x0502E7CF|- rs1 : x6<br> - rs2 : x25<br> - rd : x1<br> - rs2_b0_val == 1<br> - rs1_b3_val == 255<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                                           |[0x80000388]:UMAQA ra, t1, s9<br> [0x8000038c]:sw ra, 44(gp)<br>     |
|  28|[0x8000227c]<br>0x0B030816|- rs1 : x31<br> - rs2 : x12<br> - rd : x4<br> - rs2_b1_val == 239<br> - rs1_b1_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x800003a0]:UMAQA tp, t6, a2<br> [0x800003a4]:sw tp, 48(gp)<br>     |
|  29|[0x80002280]<br>0x000AE2B4|- rs1 : x27<br> - rs2 : x21<br> - rd : x8<br> - rs2_b2_val == 239<br> - rs1_b2_val == 223<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800003b8]:UMAQA fp, s11, s5<br> [0x800003bc]:sw fp, 52(gp)<br>    |
|  30|[0x80002284]<br>0x0E07EFFF|- rs1 : x0<br> - rs2 : x26<br> - rd : x12<br> - rs1_b2_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800003d0]:UMAQA a2, zero, s10<br> [0x800003d4]:sw a2, 56(gp)<br>  |
|  31|[0x80002288]<br>0x400C0298|- rs1 : x9<br> - rs2 : x10<br> - rd : x22<br> - rs2_b2_val == 4<br> - rs1_b2_val == 191<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                            |[0x800003e8]:UMAQA s6, s1, a0<br> [0x800003ec]:sw s6, 60(gp)<br>     |
|  32|[0x8000228c]<br>0x0208A109|- rs1 : x30<br> - rs2 : x4<br> - rd : x20<br> - rs2_b0_val == 170<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000400]:UMAQA s4, t5, tp<br> [0x80000404]:sw s4, 64(gp)<br>     |
|  33|[0x80002290]<br>0x20090915|- rs2_b2_val == 255<br> - rs2_b0_val == 8<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000418]:UMAQA t6, t5, t4<br> [0x8000041c]:sw t6, 68(gp)<br>     |
|  34|[0x80002294]<br>0x20092018|- rs2_b2_val == 128<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000430]:UMAQA t6, t5, t4<br> [0x80000434]:sw t6, 72(gp)<br>     |
|  35|[0x80002298]<br>0x200964BA|- rs2_b1_val == 16<br> - rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000448]:UMAQA t6, t5, t4<br> [0x8000044c]:sw t6, 76(gp)<br>     |
|  36|[0x8000229c]<br>0x20097F96|- rs2_b2_val == 247<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000460]:UMAQA t6, t5, t4<br> [0x80000464]:sw t6, 80(gp)<br>     |
|  37|[0x800022a0]<br>0x200A8A90|- rs1_b3_val == 4<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000478]:UMAQA t6, t5, t4<br> [0x8000047c]:sw t6, 84(gp)<br>     |
|  38|[0x800022a4]<br>0x200ABE82|- rs2_b2_val == 2<br> - rs2_b0_val == 85<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000490]:UMAQA t6, t5, t4<br> [0x80000494]:sw t6, 88(gp)<br>     |
|  39|[0x800022a8]<br>0x200AC693|- rs1_b3_val == 247<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004a8]:UMAQA t6, t5, t4<br> [0x800004ac]:sw t6, 92(gp)<br>     |
|  40|[0x800022ac]<br>0x200B4F37|- rs2_b1_val == 2<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800004c0]:UMAQA t6, t5, t4<br> [0x800004c4]:sw t6, 96(gp)<br>     |
|  41|[0x800022b0]<br>0x200B5612|- rs2_b2_val == 16<br> - rs2_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800004d8]:UMAQA t6, t5, t4<br> [0x800004dc]:sw t6, 100(gp)<br>    |
|  42|[0x800022b4]<br>0x200B86E9|- rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004f0]:UMAQA t6, t5, t4<br> [0x800004f4]:sw t6, 104(gp)<br>    |
|  43|[0x800022b8]<br>0x200BE96E|- rs2_b0_val == 127<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000508]:UMAQA t6, t5, t4<br> [0x8000050c]:sw t6, 108(gp)<br>    |
|  44|[0x800022bc]<br>0x200BF363|- rs2_b1_val == 223<br> - rs2_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000520]:UMAQA t6, t5, t4<br> [0x80000524]:sw t6, 112(gp)<br>    |
|  45|[0x800022c0]<br>0x200D2AD6|- rs2_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000538]:UMAQA t6, t5, t4<br> [0x8000053c]:sw t6, 116(gp)<br>    |
|  46|[0x800022c4]<br>0x200D3119|- rs2_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000550]:UMAQA t6, t5, t4<br> [0x80000554]:sw t6, 120(gp)<br>    |
|  47|[0x800022c8]<br>0x200D39DB|- rs2_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000568]:UMAQA t6, t5, t4<br> [0x8000056c]:sw t6, 124(gp)<br>    |
|  48|[0x800022cc]<br>0x200D52C2|- rs2_b0_val == 2<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000580]:UMAQA t6, t5, t4<br> [0x80000584]:sw t6, 128(gp)<br>    |
|  49|[0x800022d4]<br>0x200D9388|- rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800005b0]:UMAQA t6, t5, t4<br> [0x800005b4]:sw t6, 136(gp)<br>    |
|  50|[0x800022d8]<br>0x200E8DC6|- rs1_b3_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800005c8]:UMAQA t6, t5, t4<br> [0x800005cc]:sw t6, 140(gp)<br>    |
|  51|[0x800022dc]<br>0x200F3707|- rs1_b3_val == 64<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005e0]:UMAQA t6, t5, t4<br> [0x800005e4]:sw t6, 144(gp)<br>    |
|  52|[0x800022e0]<br>0x20104BA0|- rs2_b2_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800005f8]:UMAQA t6, t5, t4<br> [0x800005fc]:sw t6, 148(gp)<br>    |
|  53|[0x800022e4]<br>0x2010B57F|- rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000610]:UMAQA t6, t5, t4<br> [0x80000614]:sw t6, 152(gp)<br>    |
|  54|[0x800022e8]<br>0x2010BCC6|- rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000628]:UMAQA t6, t5, t4<br> [0x8000062c]:sw t6, 156(gp)<br>    |
|  55|[0x800022ec]<br>0x20113AF2|- rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000640]:UMAQA t6, t5, t4<br> [0x80000644]:sw t6, 160(gp)<br>    |
|  56|[0x800022f0]<br>0x2011FED7|- rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000658]:UMAQA t6, t5, t4<br> [0x8000065c]:sw t6, 164(gp)<br>    |
|  57|[0x800022f4]<br>0x2012FC2E|- rs1_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000670]:UMAQA t6, t5, t4<br> [0x80000674]:sw t6, 168(gp)<br>    |
|  58|[0x800022f8]<br>0x20131D54|- rs2_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000688]:UMAQA t6, t5, t4<br> [0x8000068c]:sw t6, 172(gp)<br>    |
|  59|[0x800022fc]<br>0x20137678|- rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800006a0]:UMAQA t6, t5, t4<br> [0x800006a4]:sw t6, 176(gp)<br>    |
|  60|[0x80002300]<br>0x20139E96|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800006b8]:UMAQA t6, t5, t4<br> [0x800006bc]:sw t6, 180(gp)<br>    |
|  61|[0x80002304]<br>0x2013AAEA|- rs1_b2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006d0]:UMAQA t6, t5, t4<br> [0x800006d4]:sw t6, 184(gp)<br>    |
|  62|[0x80002314]<br>0x20146824|- rs2_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000730]:UMAQA t6, t5, t4<br> [0x80000734]:sw t6, 200(gp)<br>    |
|  63|[0x80002318]<br>0x20148D0E|- rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000748]:UMAQA t6, t5, t4<br> [0x8000074c]:sw t6, 204(gp)<br>    |
