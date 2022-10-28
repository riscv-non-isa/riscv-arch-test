
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
| COV_LABELS                | cmpeq8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/cmpeq8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 67      |
| STAT1                     | 62      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c4]:CMPEQ8 t6, t5, t4
      [0x800005c8]:sw t6, 136(ra)
 -- Signature Address: 0x800022d8 Data: 0x00FF0000
 -- Redundant Coverpoints hit by the op
      - opcode : cmpeq8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val == rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs2_b3_val == -86
      - rs2_b2_val == 1
      - rs2_b0_val == -17
      - rs1_b2_val == 1
      - rs1_b1_val == 0
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006fc]:CMPEQ8 t6, t5, t4
      [0x80000700]:sw t6, 188(ra)
 -- Signature Address: 0x8000230c Data: 0x000000FF
 -- Redundant Coverpoints hit by the op
      - opcode : cmpeq8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == -128
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val == rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == 32
      - rs2_b2_val == -1
      - rs2_b1_val == -9
      - rs2_b0_val == -128
      - rs1_b3_val == -86
      - rs1_b2_val == -5
      - rs1_b1_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000714]:CMPEQ8 t6, t5, t4
      [0x80000718]:sw t6, 192(ra)
 -- Signature Address: 0x80002310 Data: 0xFF000000
 -- Redundant Coverpoints hit by the op
      - opcode : cmpeq8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b2_val == -9
      - rs2_b1_val == -5
      - rs1_b2_val == -2
      - rs1_b1_val == 64
      - rs1_b0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:CMPEQ8 t6, t5, t4
      [0x80000730]:sw t6, 196(ra)
 -- Signature Address: 0x80002314 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : cmpeq8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == -33
      - rs2_b2_val == -65
      - rs2_b1_val == 1
      - rs1_b3_val == -65
      - rs1_b2_val == 127
      - rs1_b0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000744]:CMPEQ8 t6, t5, t4
      [0x80000748]:sw t6, 200(ra)
 -- Signature Address: 0x80002318 Data: 0x0000FF00
 -- Redundant Coverpoints hit by the op
      - opcode : cmpeq8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val == rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b3_val == -5
      - rs2_b2_val == -33






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

|s.no|        signature         |                                                                                                                                                                                                                                                                                    coverpoints                                                                                                                                                                                                                                                                                     |                                 code                                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : cmpeq8<br> - rs1 : x19<br> - rs2 : x19<br> - rd : x19<br> - rs1 == rs2 == rd<br> - rs1_b0_val == -128<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b3_val == 32<br> - rs2_b2_val == -1<br> - rs2_b1_val == -9<br> - rs2_b0_val == -128<br> - rs1_b3_val == 32<br> - rs1_b2_val == -1<br> - rs1_b1_val == -9<br> |[0x80000110]:CMPEQ8 s3, s3, s3<br> [0x80000114]:sw s3, 0(a5)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x12<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs2_b2_val == -9<br> - rs2_b1_val == -5<br> - rs1_b2_val == -9<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000128]:CMPEQ8 ra, a2, a2<br> [0x8000012c]:sw ra, 4(a5)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x31<br> - rs2 : x14<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b1_val == 1<br> - rs2_b0_val == 16<br> - rs1_b3_val == -128<br> - rs1_b0_val == 1<br>                                                                                                                                        |[0x80000140]:CMPEQ8 a1, t6, a4<br> [0x80000144]:sw a1, 8(a5)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x14<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs2_b3_val == -2<br> - rs2_b1_val == -3<br> - rs2_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                            |[0x80000158]:CMPEQ8 fp, a4, fp<br> [0x8000015c]:sw fp, 12(a5)<br>     |
|   5|[0x80002220]<br>0x00FF0000|- rs1 : x13<br> - rs2 : x28<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b1_val == 85<br> - rs1_b1_val == 1<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                            |[0x80000170]:CMPEQ8 a3, a3, t3<br> [0x80000174]:sw a3, 16(a5)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x10<br> - rs2 : x30<br> - rd : x27<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == 1<br> - rs2_b2_val == -128<br> - rs2_b1_val == 4<br> - rs1_b2_val == 1<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000188]:CMPEQ8 s11, a0, t5<br> [0x8000018c]:sw s11, 20(a5)<br>   |
|   7|[0x80002228]<br>0x00000000|- rs1 : x9<br> - rs2 : x13<br> - rd : x23<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b2_val == 1<br> - rs1_b2_val == 64<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x800001a0]:CMPEQ8 s7, s1, a3<br> [0x800001a4]:sw s7, 24(a5)<br>     |
|   8|[0x8000222c]<br>0x0000FF00|- rs1 : x4<br> - rs2 : x5<br> - rd : x6<br> - rs2_b2_val == 2<br> - rs1_b3_val == 0<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800001b8]:CMPEQ8 t1, tp, t0<br> [0x800001bc]:sw t1, 28(a5)<br>     |
|   9|[0x80002230]<br>0x00000000|- rs1 : x1<br> - rs2 : x24<br> - rd : x26<br> - rs2_b3_val == -86<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800001d0]:CMPEQ8 s10, ra, s8<br> [0x800001d4]:sw s10, 32(a5)<br>   |
|  10|[0x80002234]<br>0x00000000|- rs1 : x5<br> - rs2 : x16<br> - rd : x30<br> - rs2_b3_val == 85<br> - rs2_b2_val == -2<br> - rs2_b1_val == 32<br> - rs2_b0_val == 127<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800001e8]:CMPEQ8 t5, t0, a6<br> [0x800001ec]:sw t5, 36(a5)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x18<br> - rs2 : x10<br> - rd : x7<br> - rs2_b3_val == 127<br> - rs2_b0_val == 1<br> - rs1_b3_val == 2<br> - rs1_b1_val == -2<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000200]:CMPEQ8 t2, s2, a0<br> [0x80000204]:sw t2, 40(a5)<br>     |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x30<br> - rs2 : x27<br> - rd : x21<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b3_val == -65<br> - rs2_b1_val == -1<br> - rs1_b1_val == 4<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000218]:CMPEQ8 s5, t5, s11<br> [0x8000021c]:sw s5, 44(a5)<br>    |
|  13|[0x80002240]<br>0x00000000|- rs1 : x22<br> - rs2 : x0<br> - rd : x10<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == -65<br> - rs1_b2_val == 127<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000230]:CMPEQ8 a0, s6, zero<br> [0x80000234]:sw a0, 48(a5)<br>   |
|  14|[0x80002244]<br>0x00000000|- rs1 : x6<br> - rs2 : x1<br> - rd : x4<br> - rs2_b3_val == -17<br> - rs2_b2_val == -33<br> - rs2_b1_val == -65<br> - rs2_b0_val == 64<br> - rs1_b3_val == 85<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000248]:CMPEQ8 tp, t1, ra<br> [0x8000024c]:sw tp, 52(a5)<br>     |
|  15|[0x80002248]<br>0x00000000|- rs1 : x16<br> - rs2 : x4<br> - rd : x3<br> - rs2_b3_val == -9<br> - rs2_b1_val == -33<br> - rs2_b0_val == -3<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000260]:CMPEQ8 gp, a6, tp<br> [0x80000264]:sw gp, 56(a5)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x25<br> - rs2 : x2<br> - rd : x0<br> - rs2_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000278]:CMPEQ8 zero, s9, sp<br> [0x8000027c]:sw zero, 60(a5)<br> |
|  17|[0x80002250]<br>0x00000000|- rs1 : x23<br> - rs2 : x25<br> - rd : x15<br> - rs2_b3_val == -3<br> - rs2_b0_val == 8<br> - rs1_b2_val == 85<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000298]:CMPEQ8 a5, s7, s9<br> [0x8000029c]:sw a5, 0(ra)<br>      |
|  18|[0x80002254]<br>0x00000000|- rs1 : x28<br> - rs2 : x31<br> - rd : x14<br> - rs2_b3_val == -128<br> - rs1_b3_val == -86<br> - rs1_b2_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800002b0]:CMPEQ8 a4, t3, t6<br> [0x800002b4]:sw a4, 4(ra)<br>      |
|  19|[0x80002258]<br>0x00000000|- rs1 : x29<br> - rs2 : x17<br> - rd : x31<br> - rs2_b3_val == 64<br> - rs1_b2_val == 0<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800002c8]:CMPEQ8 t6, t4, a7<br> [0x800002cc]:sw t6, 8(ra)<br>      |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x26<br> - rs2 : x20<br> - rd : x17<br> - rs2_b3_val == 16<br> - rs2_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800002e0]:CMPEQ8 a7, s10, s4<br> [0x800002e4]:sw a7, 12(ra)<br>    |
|  21|[0x80002260]<br>0x00000000|- rs1 : x24<br> - rs2 : x21<br> - rd : x25<br> - rs2_b3_val == 8<br> - rs2_b1_val == -128<br> - rs2_b0_val == 32<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800002f8]:CMPEQ8 s9, s8, s5<br> [0x800002fc]:sw s9, 16(ra)<br>     |
|  22|[0x80002264]<br>0x00000000|- rs1 : x8<br> - rs2 : x3<br> - rd : x9<br> - rs2_b3_val == 4<br> - rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000310]:CMPEQ8 s1, fp, gp<br> [0x80000314]:sw s1, 20(ra)<br>     |
|  23|[0x80002268]<br>0x00000000|- rs1 : x0<br> - rs2 : x23<br> - rd : x20<br> - rs2_b3_val == 2<br> - rs2_b1_val == 64<br> - rs2_b0_val == 4<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000328]:CMPEQ8 s4, zero, s7<br> [0x8000032c]:sw s4, 24(ra)<br>   |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x7<br> - rs2 : x9<br> - rd : x2<br> - rs2_b2_val == 8<br> - rs1_b3_val == -33<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000340]:CMPEQ8 sp, t2, s1<br> [0x80000344]:sw sp, 28(ra)<br>     |
|  25|[0x80002270]<br>0x00000000|- rs1 : x17<br> - rs2 : x22<br> - rd : x18<br> - rs2_b3_val == -1<br> - rs2_b1_val == 2<br> - rs1_b3_val == 1<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000358]:CMPEQ8 s2, a7, s6<br> [0x8000035c]:sw s2, 32(ra)<br>     |
|  26|[0x80002274]<br>0xFF000000|- rs1 : x3<br> - rs2 : x7<br> - rd : x29<br> - rs2_b2_val == -86<br> - rs2_b0_val == -65<br> - rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000370]:CMPEQ8 t4, gp, t2<br> [0x80000374]:sw t4, 36(ra)<br>     |
|  27|[0x80002278]<br>0x00000000|- rs1 : x27<br> - rs2 : x6<br> - rd : x24<br> - rs2_b2_val == 85<br> - rs1_b3_val == 64<br> - rs1_b2_val == -65<br> - rs1_b1_val == -3<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000388]:CMPEQ8 s8, s11, t1<br> [0x8000038c]:sw s8, 40(ra)<br>    |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x11<br> - rs2 : x26<br> - rd : x5<br> - rs1_b2_val == -33<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800003a0]:CMPEQ8 t0, a1, s10<br> [0x800003a4]:sw t0, 44(ra)<br>    |
|  29|[0x80002280]<br>0x00000000|- rs1 : x2<br> - rs2 : x15<br> - rd : x12<br> - rs2_b2_val == 4<br> - rs1_b2_val == -17<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800003b8]:CMPEQ8 a2, sp, a5<br> [0x800003bc]:sw a2, 48(ra)<br>     |
|  30|[0x80002284]<br>0x00000000|- rs1 : x21<br> - rs2 : x11<br> - rd : x28<br> - rs2_b2_val == 32<br> - rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800003d0]:CMPEQ8 t3, s5, a1<br> [0x800003d4]:sw t3, 52(ra)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x20<br> - rs2 : x29<br> - rd : x16<br> - rs2_b3_val == -33<br> - rs1_b2_val == -3<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800003e8]:CMPEQ8 a6, s4, t4<br> [0x800003ec]:sw a6, 56(ra)<br>     |
|  32|[0x8000228c]<br>0xFF000000|- rs1 : x15<br> - rs2 : x18<br> - rd : x22<br> - rs1_b3_val == -3<br> - rs1_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000400]:CMPEQ8 s6, a5, s2<br> [0x80000404]:sw s6, 60(ra)<br>     |
|  33|[0x80002290]<br>0x00000000|- rs1_b3_val == -1<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000418]:CMPEQ8 t6, t5, t4<br> [0x8000041c]:sw t6, 64(ra)<br>     |
|  34|[0x80002294]<br>0x00000000|- rs1_b2_val == 4<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000430]:CMPEQ8 t6, t5, t4<br> [0x80000434]:sw t6, 68(ra)<br>     |
|  35|[0x80002298]<br>0x00000000|- rs2_b1_val == 16<br> - rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000448]:CMPEQ8 t6, t5, t4<br> [0x8000044c]:sw t6, 72(ra)<br>     |
|  36|[0x8000229c]<br>0x00000000|- rs2_b0_val == -5<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000460]:CMPEQ8 t6, t5, t4<br> [0x80000464]:sw t6, 76(ra)<br>     |
|  37|[0x800022a0]<br>0x00000000|- rs1_b1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000478]:CMPEQ8 t6, t5, t4<br> [0x8000047c]:sw t6, 80(ra)<br>     |
|  38|[0x800022a4]<br>0x00000000|- rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000490]:CMPEQ8 t6, t5, t4<br> [0x80000494]:sw t6, 84(ra)<br>     |
|  39|[0x800022a8]<br>0x00000000|- rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800004a8]:CMPEQ8 t6, t5, t4<br> [0x800004ac]:sw t6, 88(ra)<br>     |
|  40|[0x800022ac]<br>0x00000000|- rs2_b1_val == 8<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800004c0]:CMPEQ8 t6, t5, t4<br> [0x800004c4]:sw t6, 92(ra)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs1_b3_val == -2<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800004d8]:CMPEQ8 t6, t5, t4<br> [0x800004dc]:sw t6, 96(ra)<br>     |
|  42|[0x800022b4]<br>0x00000000|- rs2_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800004f0]:CMPEQ8 t6, t5, t4<br> [0x800004f4]:sw t6, 100(ra)<br>    |
|  43|[0x800022b8]<br>0x00000000|- rs2_b2_val == 127<br> - rs2_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000508]:CMPEQ8 t6, t5, t4<br> [0x8000050c]:sw t6, 104(ra)<br>    |
|  44|[0x800022bc]<br>0x00000000|- rs2_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000520]:CMPEQ8 t6, t5, t4<br> [0x80000524]:sw t6, 108(ra)<br>    |
|  45|[0x800022c0]<br>0x00000000|- rs2_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000538]:CMPEQ8 t6, t5, t4<br> [0x8000053c]:sw t6, 112(ra)<br>    |
|  46|[0x800022c4]<br>0x00000000|- rs2_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000550]:CMPEQ8 t6, t5, t4<br> [0x80000554]:sw t6, 116(ra)<br>    |
|  47|[0x800022c8]<br>0x00000000|- rs2_b0_val == -17<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000568]:CMPEQ8 t6, t5, t4<br> [0x8000056c]:sw t6, 120(ra)<br>    |
|  48|[0x800022cc]<br>0x00000000|- rs2_b0_val == -9<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000580]:CMPEQ8 t6, t5, t4<br> [0x80000584]:sw t6, 124(ra)<br>    |
|  49|[0x800022d0]<br>0x00000000|- rs2_b2_val == 64<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000598]:CMPEQ8 t6, t5, t4<br> [0x8000059c]:sw t6, 128(ra)<br>    |
|  50|[0x800022d4]<br>0x00000000|- rs2_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005b0]:CMPEQ8 t6, t5, t4<br> [0x800005b4]:sw t6, 132(ra)<br>    |
|  51|[0x800022dc]<br>0x00000000|- rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005dc]:CMPEQ8 t6, t5, t4<br> [0x800005e0]:sw t6, 140(ra)<br>    |
|  52|[0x800022e0]<br>0x00000000|- rs2_b2_val == -5<br> - rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005f4]:CMPEQ8 t6, t5, t4<br> [0x800005f8]:sw t6, 144(ra)<br>    |
|  53|[0x800022e4]<br>0x00000000|- rs2_b0_val == -1<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000060c]:CMPEQ8 t6, t5, t4<br> [0x80000610]:sw t6, 148(ra)<br>    |
|  54|[0x800022e8]<br>0xFF000000|- rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000624]:CMPEQ8 t6, t5, t4<br> [0x80000628]:sw t6, 152(ra)<br>    |
|  55|[0x800022ec]<br>0x00000000|- rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000063c]:CMPEQ8 t6, t5, t4<br> [0x80000640]:sw t6, 156(ra)<br>    |
|  56|[0x800022f0]<br>0x00000000|- rs2_b2_val == 16<br> - rs1_b3_val == -17<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000654]:CMPEQ8 t6, t5, t4<br> [0x80000658]:sw t6, 160(ra)<br>    |
|  57|[0x800022f4]<br>0x00000000|- rs1_b3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000066c]:CMPEQ8 t6, t5, t4<br> [0x80000670]:sw t6, 164(ra)<br>    |
|  58|[0x800022f8]<br>0x0000FF00|- rs2_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000684]:CMPEQ8 t6, t5, t4<br> [0x80000688]:sw t6, 168(ra)<br>    |
|  59|[0x800022fc]<br>0x00FF0000|- rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000069c]:CMPEQ8 t6, t5, t4<br> [0x800006a0]:sw t6, 172(ra)<br>    |
|  60|[0x80002300]<br>0x00000000|- rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800006b4]:CMPEQ8 t6, t5, t4<br> [0x800006b8]:sw t6, 176(ra)<br>    |
|  61|[0x80002304]<br>0x00FF0000|- rs2_b2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006cc]:CMPEQ8 t6, t5, t4<br> [0x800006d0]:sw t6, 180(ra)<br>    |
|  62|[0x80002308]<br>0x00000000|- rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006e4]:CMPEQ8 t6, t5, t4<br> [0x800006e8]:sw t6, 184(ra)<br>    |
