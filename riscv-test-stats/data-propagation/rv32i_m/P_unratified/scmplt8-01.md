
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000790')]      |
| SIG_REGION                | [('0x80002210', '0x80002330', '72 words')]      |
| COV_LABELS                | scmplt8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/scmplt8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 69      |
| STAT1                     | 63      |
| STAT2                     | 6      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000674]:SCMPLT8 t6, t5, t4
      [0x80000678]:sw t6, 112(ra)
 -- Signature Address: 0x800022f4 Data: 0xFFFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : scmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val == rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == 4
      - rs2_b2_val == 0
      - rs2_b1_val == -1
      - rs2_b0_val == -2
      - rs1_b3_val == -2
      - rs1_b0_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ec]:SCMPLT8 t6, t5, t4
      [0x800006f0]:sw t6, 132(ra)
 -- Signature Address: 0x80002308 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : scmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b3_val == -65
      - rs2_b2_val == 4
      - rs2_b1_val == 85
      - rs2_b0_val == 0
      - rs1_b3_val == 0
      - rs1_b2_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000734]:SCMPLT8 t6, t5, t4
      [0x80000738]:sw t6, 144(ra)
 -- Signature Address: 0x80002314 Data: 0x00FF0000
 -- Redundant Coverpoints hit by the op
      - opcode : scmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == -9
      - rs2_b2_val == -3
      - rs2_b1_val == 4
      - rs1_b3_val == -9
      - rs1_b1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000074c]:SCMPLT8 t6, t5, t4
      [0x80000750]:sw t6, 148(ra)
 -- Signature Address: 0x80002318 Data: 0x000000FF
 -- Redundant Coverpoints hit by the op
      - opcode : scmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == -128
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == -86
      - rs2_b2_val == -3
      - rs2_b1_val == -9
      - rs2_b0_val == -2
      - rs1_b3_val == 85
      - rs1_b2_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000764]:SCMPLT8 t6, t5, t4
      [0x80000768]:sw t6, 152(ra)
 -- Signature Address: 0x8000231c Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : scmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val == rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == -33
      - rs2_b2_val == 8
      - rs2_b0_val == 4
      - rs1_b2_val == 8
      - rs1_b1_val == -2
      - rs1_b0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000077c]:SCMPLT8 t6, t5, t4
      [0x80000780]:sw t6, 156(ra)
 -- Signature Address: 0x80002320 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : scmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 2
      - rs2_b2_val == 64
      - rs2_b1_val == 85
      - rs1_b2_val == -9
      - rs1_b1_val == -86
      - rs1_b0_val == 8






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

|s.no|        signature         |                                                                                                                                                                                                                                   coverpoints                                                                                                                                                                                                                                    |                                 code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : scmplt8<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b1_val == -3<br> - rs2_b0_val == -2<br> - rs1_b1_val == -3<br> - rs1_b0_val == -2<br> |[0x80000110]:SCMPLT8 sp, sp, sp<br> [0x80000114]:sw sp, 0(gp)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x1<br> - rs2 : x1<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b3_val == -9<br> - rs2_b2_val == -3<br> - rs2_b1_val == 4<br> - rs1_b3_val == -9<br> - rs1_b2_val == -3<br> - rs1_b1_val == 4<br>                                                                                                                                                                                        |[0x80000128]:SCMPLT8 fp, ra, ra<br> [0x8000012c]:sw fp, 4(gp)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x16<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == 127<br> - rs2_b0_val == 4<br> - rs1_b1_val == -86<br>                                                             |[0x80000140]:SCMPLT8 t3, fp, a6<br> [0x80000144]:sw t3, 8(gp)<br>      |
|   4|[0x8000221c]<br>0x00FF0000|- rs1 : x6<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b1_val == -17<br> - rs1_b3_val == 32<br> - rs1_b2_val == -65<br> - rs1_b1_val == 85<br>                                                                                                                                                                                        |[0x80000158]:SCMPLT8 a5, t1, a5<br> [0x8000015c]:sw a5, 12(gp)<br>     |
|   5|[0x80002220]<br>0xFF00FFFF|- rs1 : x22<br> - rs2 : x4<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs2_b3_val == -5<br> - rs2_b2_val == -5<br> - rs2_b0_val == 85<br> - rs1_b2_val == -5<br> - rs1_b1_val == -1<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                            |[0x80000170]:SCMPLT8 s6, s6, tp<br> [0x80000174]:sw s6, 16(gp)<br>     |
|   6|[0x80002224]<br>0xFF00FF00|- rs1 : x12<br> - rs2 : x23<br> - rd : x24<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b2_val == -86<br> - rs2_b1_val == -1<br> - rs1_b3_val == 8<br> - rs1_b2_val == 1<br> - rs1_b1_val == -17<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                           |[0x80000188]:SCMPLT8 s8, a2, s7<br> [0x8000018c]:sw s8, 20(gp)<br>     |
|   7|[0x80002228]<br>0x00FF0000|- rs1 : x26<br> - rs2 : x30<br> - rd : x6<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs2_b3_val == -3<br> - rs2_b1_val == -2<br> - rs2_b0_val == -33<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                |[0x800001a0]:SCMPLT8 t1, s10, t5<br> [0x800001a4]:sw t1, 24(gp)<br>    |
|   8|[0x8000222c]<br>0xFF000000|- rs1 : x7<br> - rs2 : x25<br> - rd : x18<br> - rs1_b3_val == -65<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x800001b8]:SCMPLT8 s2, t2, s9<br> [0x800001bc]:sw s2, 28(gp)<br>     |
|   9|[0x80002230]<br>0x00000000|- rs1 : x16<br> - rs2 : x21<br> - rd : x0<br> - rs1_b0_val == -128<br> - rs2_b3_val == -86<br> - rs2_b1_val == -9<br> - rs1_b3_val == 85<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                                               |[0x800001d0]:SCMPLT8 zero, a6, s5<br> [0x800001d4]:sw zero, 32(gp)<br> |
|  10|[0x80002234]<br>0xFFFFFF00|- rs1 : x31<br> - rs2 : x29<br> - rd : x9<br> - rs2_b3_val == 85<br> - rs2_b2_val == 127<br> - rs2_b0_val == 2<br> - rs1_b3_val == -2<br> - rs1_b2_val == 2<br> - rs1_b1_val == -33<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                     |[0x800001e8]:SCMPLT8 s1, t6, t4<br> [0x800001ec]:sw s1, 36(gp)<br>     |
|  11|[0x80002238]<br>0x000000FF|- rs1 : x11<br> - rs2 : x22<br> - rd : x26<br> - rs2_b3_val == -65<br> - rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000200]:SCMPLT8 s10, a1, s6<br> [0x80000204]:sw s10, 40(gp)<br>   |
|  12|[0x8000223c]<br>0x00FFFFFF|- rs1 : x0<br> - rs2 : x20<br> - rd : x25<br> - rs2_b3_val == -33<br> - rs2_b2_val == 8<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                               |[0x80000218]:SCMPLT8 s9, zero, s4<br> [0x8000021c]:sw s9, 44(gp)<br>   |
|  13|[0x80002240]<br>0xFFFFFF00|- rs1 : x4<br> - rs2 : x19<br> - rd : x14<br> - rs2_b3_val == -17<br> - rs1_b1_val == -5<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000230]:SCMPLT8 a4, tp, s3<br> [0x80000234]:sw a4, 48(gp)<br>     |
|  14|[0x80002244]<br>0x00FF00FF|- rs1 : x14<br> - rs2 : x13<br> - rd : x10<br> - rs2_b3_val == -2<br> - rs2_b2_val == 85<br> - rs1_b2_val == -86<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000248]:SCMPLT8 a0, a4, a3<br> [0x8000024c]:sw a0, 52(gp)<br>     |
|  15|[0x80002248]<br>0x00FFFF00|- rs1 : x23<br> - rs2 : x26<br> - rd : x17<br> - rs2_b3_val == -128<br> - rs2_b2_val == 2<br> - rs2_b1_val == -5<br> - rs2_b0_val == 1<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                 |[0x80000268]:SCMPLT8 a7, s7, s10<br> [0x8000026c]:sw a7, 0(sp)<br>     |
|  16|[0x8000224c]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x17<br> - rd : x13<br> - rs2_b3_val == 64<br> - rs2_b0_val == -65<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000280]:SCMPLT8 a3, s8, a7<br> [0x80000284]:sw a3, 4(sp)<br>      |
|  17|[0x80002250]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x31<br> - rd : x27<br> - rs2_b3_val == 32<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000298]:SCMPLT8 s11, t4, t6<br> [0x8000029c]:sw s11, 8(sp)<br>    |
|  18|[0x80002254]<br>0xFFFF0000|- rs1 : x20<br> - rs2 : x28<br> - rd : x23<br> - rs2_b3_val == 16<br> - rs2_b2_val == 32<br> - rs2_b1_val == 8<br> - rs2_b0_val == -9<br> - rs1_b2_val == 8<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                            |[0x800002b0]:SCMPLT8 s7, s4, t3<br> [0x800002b4]:sw s7, 12(sp)<br>     |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x24<br> - rd : x21<br> - rs2_b3_val == 8<br> - rs1_b2_val == -128<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                            |[0x800002c8]:SCMPLT8 s5, s2, s8<br> [0x800002cc]:sw s5, 16(sp)<br>     |
|  20|[0x8000225c]<br>0x000000FF|- rs1 : x15<br> - rs2 : x6<br> - rd : x29<br> - rs2_b3_val == 4<br> - rs1_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800002e0]:SCMPLT8 t4, a5, t1<br> [0x800002e4]:sw t4, 20(sp)<br>     |
|  21|[0x80002260]<br>0xFFFFFF00|- rs1 : x25<br> - rs2 : x0<br> - rd : x20<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                       |[0x800002f8]:SCMPLT8 s4, s9, zero<br> [0x800002fc]:sw s4, 24(sp)<br>   |
|  22|[0x80002264]<br>0xFF000000|- rs1 : x21<br> - rs2 : x11<br> - rd : x4<br> - rs2_b3_val == 1<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000310]:SCMPLT8 tp, s5, a1<br> [0x80000314]:sw tp, 28(sp)<br>     |
|  23|[0x80002268]<br>0xFF0000FF|- rs1 : x9<br> - rs2 : x14<br> - rd : x3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000328]:SCMPLT8 gp, s1, a4<br> [0x8000032c]:sw gp, 32(sp)<br>     |
|  24|[0x8000226c]<br>0xFFFF00FF|- rs1 : x30<br> - rs2 : x5<br> - rd : x19<br> - rs2_b3_val == -1<br> - rs2_b0_val == -1<br> - rs1_b3_val == -33<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000340]:SCMPLT8 s3, t5, t0<br> [0x80000344]:sw s3, 36(sp)<br>     |
|  25|[0x80002270]<br>0xFF00FFFF|- rs1 : x17<br> - rs2 : x10<br> - rd : x30<br> - rs2_b2_val == -65<br> - rs2_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000358]:SCMPLT8 t5, a7, a0<br> [0x8000035c]:sw t5, 40(sp)<br>     |
|  26|[0x80002274]<br>0xFF00FFFF|- rs1 : x19<br> - rs2 : x9<br> - rd : x5<br> - rs2_b2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000370]:SCMPLT8 t0, s3, s1<br> [0x80000374]:sw t0, 44(sp)<br>     |
|  27|[0x80002278]<br>0xFF00FFFF|- rs1 : x10<br> - rs2 : x3<br> - rd : x12<br> - rs2_b2_val == -17<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000388]:SCMPLT8 a2, a0, gp<br> [0x8000038c]:sw a2, 48(sp)<br>     |
|  28|[0x8000227c]<br>0xFF000000|- rs1 : x28<br> - rs2 : x18<br> - rd : x1<br> - rs2_b2_val == -9<br> - rs2_b1_val == -86<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800003a0]:SCMPLT8 ra, t3, s2<br> [0x800003a4]:sw ra, 52(sp)<br>     |
|  29|[0x80002280]<br>0x000000FF|- rs1 : x27<br> - rs2 : x7<br> - rd : x16<br> - rs2_b2_val == -2<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800003b8]:SCMPLT8 a6, s11, t2<br> [0x800003bc]:sw a6, 56(sp)<br>    |
|  30|[0x80002284]<br>0x00FFFF00|- rs1 : x3<br> - rs2 : x27<br> - rd : x31<br> - rs2_b1_val == -65<br> - rs1_b2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x800003d8]:SCMPLT8 t6, gp, s11<br> [0x800003dc]:sw t6, 0(ra)<br>     |
|  31|[0x80002288]<br>0xFFFFFF00|- rs1 : x13<br> - rs2 : x8<br> - rd : x7<br> - rs1_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800003f0]:SCMPLT8 t2, a3, fp<br> [0x800003f4]:sw t2, 4(ra)<br>      |
|  32|[0x8000228c]<br>0xFF00FF00|- rs1 : x5<br> - rs2 : x12<br> - rd : x11<br> - rs2_b1_val == 64<br> - rs1_b3_val == -17<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000408]:SCMPLT8 a1, t0, a2<br> [0x8000040c]:sw a1, 8(ra)<br>      |
|  33|[0x80002290]<br>0x0000FFFF|- rs2_b0_val == 64<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000420]:SCMPLT8 t6, t5, t4<br> [0x80000424]:sw t6, 12(ra)<br>     |
|  34|[0x80002294]<br>0xFF0000FF|- rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000438]:SCMPLT8 t6, t5, t4<br> [0x8000043c]:sw t6, 16(ra)<br>     |
|  35|[0x80002298]<br>0xFFFFFFFF|- rs2_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000450]:SCMPLT8 t6, t5, t4<br> [0x80000454]:sw t6, 20(ra)<br>     |
|  36|[0x8000229c]<br>0x00FF00FF|- rs2_b1_val == -128<br> - rs1_b2_val == -1<br> - rs1_b1_val == 64<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000468]:SCMPLT8 t6, t5, t4<br> [0x8000046c]:sw t6, 24(ra)<br>     |
|  37|[0x800022a0]<br>0xFF00FFFF|- rs2_b0_val == 16<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000480]:SCMPLT8 t6, t5, t4<br> [0x80000484]:sw t6, 28(ra)<br>     |
|  38|[0x800022a4]<br>0x00FF00FF|- rs2_b0_val == 127<br> - rs1_b1_val == -9<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000498]:SCMPLT8 t6, t5, t4<br> [0x8000049c]:sw t6, 32(ra)<br>     |
|  39|[0x800022a8]<br>0x00FFFFFF|- rs2_b1_val == 16<br> - rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800004b0]:SCMPLT8 t6, t5, t4<br> [0x800004b4]:sw t6, 36(ra)<br>     |
|  40|[0x800022ac]<br>0x00FF00FF|- rs1_b3_val == 1<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004c4]:SCMPLT8 t6, t5, t4<br> [0x800004c8]:sw t6, 40(ra)<br>     |
|  41|[0x800022b0]<br>0x00FFFFFF|- rs2_b0_val == -5<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004dc]:SCMPLT8 t6, t5, t4<br> [0x800004e0]:sw t6, 44(ra)<br>     |
|  42|[0x800022b4]<br>0x000000FF|- rs1_b1_val == 2<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004f4]:SCMPLT8 t6, t5, t4<br> [0x800004f8]:sw t6, 48(ra)<br>     |
|  43|[0x800022b8]<br>0x0000FF00|- rs2_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000050c]:SCMPLT8 t6, t5, t4<br> [0x80000510]:sw t6, 52(ra)<br>     |
|  44|[0x800022bc]<br>0xFF00FFFF|- rs2_b1_val == 127<br> - rs1_b3_val == -3<br> - rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000524]:SCMPLT8 t6, t5, t4<br> [0x80000528]:sw t6, 56(ra)<br>     |
|  45|[0x800022c0]<br>0x00FFFFFF|- rs2_b1_val == -33<br> - rs2_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000053c]:SCMPLT8 t6, t5, t4<br> [0x80000540]:sw t6, 60(ra)<br>     |
|  46|[0x800022c4]<br>0x0000FF00|- rs2_b1_val == 2<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000554]:SCMPLT8 t6, t5, t4<br> [0x80000558]:sw t6, 64(ra)<br>     |
|  47|[0x800022c8]<br>0xFF00FF00|- rs2_b1_val == 1<br> - rs1_b3_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000056c]:SCMPLT8 t6, t5, t4<br> [0x80000570]:sw t6, 68(ra)<br>     |
|  48|[0x800022cc]<br>0x00FF00FF|- rs2_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000584]:SCMPLT8 t6, t5, t4<br> [0x80000588]:sw t6, 72(ra)<br>     |
|  49|[0x800022d0]<br>0xFFFFFF00|- rs2_b1_val == 85<br> - rs2_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000059c]:SCMPLT8 t6, t5, t4<br> [0x800005a0]:sw t6, 76(ra)<br>     |
|  50|[0x800022d4]<br>0x00FF00FF|- rs2_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005b4]:SCMPLT8 t6, t5, t4<br> [0x800005b8]:sw t6, 80(ra)<br>     |
|  51|[0x800022d8]<br>0xFFFFFF00|- rs2_b0_val == -128<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800005cc]:SCMPLT8 t6, t5, t4<br> [0x800005d0]:sw t6, 84(ra)<br>     |
|  52|[0x800022dc]<br>0x00FF0000|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005e4]:SCMPLT8 t6, t5, t4<br> [0x800005e8]:sw t6, 88(ra)<br>     |
|  53|[0x800022e0]<br>0x0000FFFF|- rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800005fc]:SCMPLT8 t6, t5, t4<br> [0x80000600]:sw t6, 92(ra)<br>     |
|  54|[0x800022e4]<br>0xFFFFFFFF|- rs2_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000614]:SCMPLT8 t6, t5, t4<br> [0x80000618]:sw t6, 96(ra)<br>     |
|  55|[0x800022e8]<br>0xFF0000FF|- rs1_b3_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000062c]:SCMPLT8 t6, t5, t4<br> [0x80000630]:sw t6, 100(ra)<br>    |
|  56|[0x800022ec]<br>0x00FFFFFF|- rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000644]:SCMPLT8 t6, t5, t4<br> [0x80000648]:sw t6, 104(ra)<br>    |
|  57|[0x800022f0]<br>0x0000FFFF|- rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000065c]:SCMPLT8 t6, t5, t4<br> [0x80000660]:sw t6, 108(ra)<br>    |
|  58|[0x800022f8]<br>0xFFFFFFFF|- rs2_b3_val == 2<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000068c]:SCMPLT8 t6, t5, t4<br> [0x80000690]:sw t6, 116(ra)<br>    |
|  59|[0x800022fc]<br>0xFF00FF00|- rs2_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006a4]:SCMPLT8 t6, t5, t4<br> [0x800006a8]:sw t6, 120(ra)<br>    |
|  60|[0x80002300]<br>0xFFFFFF00|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006bc]:SCMPLT8 t6, t5, t4<br> [0x800006c0]:sw t6, 124(ra)<br>    |
|  61|[0x80002304]<br>0xFFFFFFFF|- rs2_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800006d4]:SCMPLT8 t6, t5, t4<br> [0x800006d8]:sw t6, 128(ra)<br>    |
|  62|[0x8000230c]<br>0x000000FF|- rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000704]:SCMPLT8 t6, t5, t4<br> [0x80000708]:sw t6, 136(ra)<br>    |
|  63|[0x80002310]<br>0xFF000000|- rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000071c]:SCMPLT8 t6, t5, t4<br> [0x80000720]:sw t6, 140(ra)<br>    |
