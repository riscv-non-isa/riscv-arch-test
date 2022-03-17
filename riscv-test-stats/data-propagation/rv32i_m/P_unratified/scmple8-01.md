
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000710')]      |
| SIG_REGION                | [('0x80002210', '0x80002310', '64 words')]      |
| COV_LABELS                | scmple8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/scmple8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 64      |
| STAT1                     | 59      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000448]:SCMPLE8 t6, t5, t4
      [0x8000044c]:sw t6, 64(gp)
 -- Signature Address: 0x80002298 Data: 0x00FFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : scmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b0_val == 2
      - rs1_b3_val == 127
      - rs1_b2_val == -9
      - rs1_b1_val == -5
      - rs1_b0_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000550]:SCMPLE8 t6, t5, t4
      [0x80000554]:sw t6, 108(gp)
 -- Signature Address: 0x800022c4 Data: 0xFFFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : scmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == 32
      - rs2_b1_val == 4
      - rs1_b3_val == -33
      - rs1_b2_val == 2
      - rs1_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b8]:SCMPLE8 t6, t5, t4
      [0x800006bc]:sw t6, 168(gp)
 -- Signature Address: 0x80002300 Data: 0xFFFF00FF
 -- Redundant Coverpoints hit by the op
      - opcode : scmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == -128
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b2_val == 127
      - rs2_b1_val == -65
      - rs1_b3_val == -65
      - rs1_b1_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d0]:SCMPLE8 t6, t5, t4
      [0x800006d4]:sw t6, 172(gp)
 -- Signature Address: 0x80002304 Data: 0xFFFF00FF
 -- Redundant Coverpoints hit by the op
      - opcode : scmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b3_val == 127
      - rs2_b1_val == -1
      - rs2_b0_val == 32
      - rs1_b3_val == -3
      - rs1_b2_val == -65
      - rs1_b1_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e8]:SCMPLE8 t6, t5, t4
      [0x800006ec]:sw t6, 176(gp)
 -- Signature Address: 0x80002308 Data: 0x00FFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : scmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b3_val == 85
      - rs2_b2_val == 32
      - rs2_b1_val == 1
      - rs1_b3_val == 127
      - rs1_b2_val == 0
      - rs1_b1_val == -86
      - rs1_b0_val == 0






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

|s.no|        signature         |                                                                                                                                                                                                                                        coverpoints                                                                                                                                                                                                                                        |                                 code                                  |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : scmple8<br> - rs1 : x19<br> - rs2 : x19<br> - rd : x19<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b2_val == 127<br> - rs2_b1_val == -65<br> - rs1_b2_val == 127<br> - rs1_b1_val == -65<br>   |[0x80000110]:SCMPLE8 s3, s3, s3<br> [0x80000114]:sw s3, 0(t2)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x27<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs2_b3_val == -5<br> - rs2_b2_val == -17<br> - rs2_b1_val == -5<br> - rs2_b0_val == -86<br> - rs1_b3_val == -5<br> - rs1_b2_val == -17<br> - rs1_b1_val == -5<br> - rs1_b0_val == -86<br>                                                                                                                                                                                  |[0x80000128]:SCMPLE8 t5, s11, s11<br> [0x8000012c]:sw t5, 4(t2)<br>    |
|   3|[0x80002218]<br>0x00000000|- rs1 : x4<br> - rs2 : x10<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == 127<br> - rs2_b1_val == -1<br> - rs2_b0_val == 32<br> - rs1_b3_val == -3<br> - rs1_b2_val == -65<br> - rs1_b1_val == 85<br> |[0x80000140]:SCMPLE8 zero, tp, a0<br> [0x80000144]:sw zero, 8(t2)<br>  |
|   4|[0x8000221c]<br>0x00FFFF00|- rs1 : x22<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == -3<br> - rs2_b0_val == -3<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                                        |[0x80000158]:SCMPLE8 a3, s6, a3<br> [0x8000015c]:sw a3, 12(t2)<br>     |
|   5|[0x80002220]<br>0x0000FF00|- rs1 : x10<br> - rs2 : x6<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 8<br> - rs2_b1_val == 2<br> - rs1_b1_val == -2<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                    |[0x80000170]:SCMPLE8 a0, a0, t1<br> [0x80000174]:sw a0, 16(t2)<br>     |
|   6|[0x80002224]<br>0x00FFFFFF|- rs1 : x8<br> - rs2 : x21<br> - rd : x31<br> - rs2_b3_val == 2<br> - rs2_b2_val == 32<br> - rs2_b0_val == 8<br> - rs1_b2_val == 32<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                              |[0x80000188]:SCMPLE8 t6, fp, s5<br> [0x8000018c]:sw t6, 20(t2)<br>     |
|   7|[0x80002228]<br>0x000000FF|- rs1 : x2<br> - rs2 : x4<br> - rd : x29<br> - rs1_b0_val == -128<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs2_b1_val == -3<br> - rs1_b3_val == 85<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                        |[0x800001a0]:SCMPLE8 t4, sp, tp<br> [0x800001a4]:sw t4, 24(t2)<br>     |
|   8|[0x8000222c]<br>0xFF00FF00|- rs1 : x23<br> - rs2 : x9<br> - rd : x6<br> - rs2_b1_val == -86<br> - rs1_b3_val == 0<br> - rs1_b2_val == 2<br> - rs1_b1_val == -86<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                            |[0x800001b8]:SCMPLE8 t1, s7, s1<br> [0x800001bc]:sw t1, 28(t2)<br>     |
|   9|[0x80002230]<br>0xFFFF00FF|- rs1 : x16<br> - rs2 : x28<br> - rd : x2<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b3_val == 64<br> - rs2_b0_val == 16<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                 |[0x800001d0]:SCMPLE8 sp, a6, t3<br> [0x800001d4]:sw sp, 32(t2)<br>     |
|  10|[0x80002234]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x29<br> - rd : x18<br> - rs2_b3_val == 1<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800001e8]:SCMPLE8 s2, t6, t4<br> [0x800001ec]:sw s2, 36(t2)<br>     |
|  11|[0x80002238]<br>0xFF000000|- rs1 : x13<br> - rs2 : x30<br> - rd : x3<br> - rs2_b3_val == -86<br> - rs2_b2_val == -1<br> - rs2_b1_val == -128<br> - rs2_b0_val == 4<br> - rs1_b3_val == -86<br> - rs1_b2_val == 85<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                           |[0x80000200]:SCMPLE8 gp, a3, t5<br> [0x80000204]:sw gp, 40(t2)<br>     |
|  12|[0x8000223c]<br>0x00FFFFFF|- rs1 : x24<br> - rs2 : x0<br> - rd : x27<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b2_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                          |[0x80000218]:SCMPLE8 s11, s8, zero<br> [0x8000021c]:sw s11, 44(t2)<br> |
|  13|[0x80002240]<br>0x0000FFFF|- rs1 : x11<br> - rs2 : x23<br> - rd : x12<br> - rs2_b3_val == -65<br> - rs2_b2_val == 4<br> - rs2_b1_val == 127<br> - rs2_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000230]:SCMPLE8 a2, a1, s7<br> [0x80000234]:sw a2, 48(t2)<br>     |
|  14|[0x80002244]<br>0xFFFFFF00|- rs1 : x14<br> - rs2 : x5<br> - rd : x20<br> - rs2_b3_val == -33<br> - rs2_b2_val == 2<br> - rs2_b0_val == -17<br> - rs1_b3_val == -33<br> - rs1_b2_val == -86<br> - rs1_b1_val == -33<br>                                                                                                                                                                                                                                                                                                |[0x80000248]:SCMPLE8 s4, a4, t0<br> [0x8000024c]:sw s4, 52(t2)<br>     |
|  15|[0x80002248]<br>0x0000FFFF|- rs1 : x29<br> - rs2 : x3<br> - rd : x9<br> - rs2_b3_val == -17<br> - rs2_b1_val == 16<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000260]:SCMPLE8 s1, t4, gp<br> [0x80000264]:sw s1, 56(t2)<br>     |
|  16|[0x8000224c]<br>0x00FF00FF|- rs1 : x28<br> - rs2 : x11<br> - rd : x21<br> - rs2_b3_val == -9<br> - rs2_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000278]:SCMPLE8 s5, t3, a1<br> [0x8000027c]:sw s5, 60(t2)<br>     |
|  17|[0x80002250]<br>0x00000000|- rs1 : x3<br> - rs2 : x17<br> - rd : x14<br> - rs2_b3_val == -2<br> - rs2_b2_val == 16<br> - rs2_b0_val == -2<br> - rs1_b1_val == 8<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                            |[0x80000290]:SCMPLE8 a4, gp, a7<br> [0x80000294]:sw a4, 64(t2)<br>     |
|  18|[0x80002254]<br>0x00FFFFFF|- rs1 : x1<br> - rs2 : x22<br> - rd : x15<br> - rs2_b3_val == -128<br> - rs2_b2_val == 1<br> - rs2_b1_val == 64<br> - rs2_b0_val == 2<br> - rs1_b2_val == -33<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                  |[0x800002a8]:SCMPLE8 a5, ra, s6<br> [0x800002ac]:sw a5, 68(t2)<br>     |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x24<br> - rd : x16<br> - rs2_b3_val == 32<br> - rs2_b2_val == 64<br> - rs1_b3_val == 32<br> - rs1_b2_val == 8<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                            |[0x800002c8]:SCMPLE8 a6, s4, s8<br> [0x800002cc]:sw a6, 0(gp)<br>      |
|  20|[0x8000225c]<br>0xFFFFFF00|- rs1 : x12<br> - rs2 : x25<br> - rd : x24<br> - rs2_b3_val == 16<br> - rs2_b0_val == -128<br> - rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800002e0]:SCMPLE8 s8, a2, s9<br> [0x800002e4]:sw s8, 4(gp)<br>      |
|  21|[0x80002260]<br>0x00FFFF00|- rs1 : x5<br> - rs2 : x7<br> - rd : x26<br> - rs2_b3_val == 4<br> - rs2_b2_val == -65<br> - rs2_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x800002f8]:SCMPLE8 s10, t0, t2<br> [0x800002fc]:sw s10, 8(gp)<br>    |
|  22|[0x80002264]<br>0x00FFFF00|- rs1 : x30<br> - rs2 : x26<br> - rd : x23<br> - rs2_b1_val == 85<br> - rs1_b2_val == -9<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000310]:SCMPLE8 s7, t5, s10<br> [0x80000314]:sw s7, 12(gp)<br>    |
|  23|[0x80002268]<br>0xFF000000|- rs1 : x25<br> - rs2 : x18<br> - rd : x1<br> - rs2_b3_val == -1<br> - rs2_b0_val == -5<br> - rs1_b3_val == -128<br> - rs1_b2_val == -3<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                          |[0x80000328]:SCMPLE8 ra, s9, s2<br> [0x8000032c]:sw ra, 16(gp)<br>     |
|  24|[0x8000226c]<br>0x00FF0000|- rs1 : x9<br> - rs2 : x15<br> - rd : x25<br> - rs2_b2_val == -86<br> - rs1_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000340]:SCMPLE8 s9, s1, a5<br> [0x80000344]:sw s9, 20(gp)<br>     |
|  25|[0x80002270]<br>0x00FF00FF|- rs1 : x6<br> - rs2 : x16<br> - rd : x4<br> - rs2_b0_val == 127<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000358]:SCMPLE8 tp, t1, a6<br> [0x8000035c]:sw tp, 24(gp)<br>     |
|  26|[0x80002274]<br>0x000000FF|- rs1 : x0<br> - rs2 : x12<br> - rd : x8<br> - rs2_b2_val == -33<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000370]:SCMPLE8 fp, zero, a2<br> [0x80000374]:sw fp, 28(gp)<br>   |
|  27|[0x80002278]<br>0xFF00FF00|- rs1 : x7<br> - rs2 : x8<br> - rd : x17<br> - rs2_b3_val == 85<br> - rs2_b0_val == -65<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000388]:SCMPLE8 a7, t2, fp<br> [0x8000038c]:sw a7, 32(gp)<br>     |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x21<br> - rs2 : x20<br> - rd : x11<br> - rs1_b2_val == 64<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x800003a0]:SCMPLE8 a1, s5, s4<br> [0x800003a4]:sw a1, 36(gp)<br>     |
|  29|[0x80002280]<br>0xFF00FFFF|- rs1 : x26<br> - rs2 : x2<br> - rd : x7<br> - rs1_b2_val == 16<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800003b8]:SCMPLE8 t2, s10, sp<br> [0x800003bc]:sw t2, 40(gp)<br>    |
|  30|[0x80002284]<br>0xFF0000FF|- rs1 : x15<br> - rs2 : x1<br> - rd : x28<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800003d0]:SCMPLE8 t3, a5, ra<br> [0x800003d4]:sw t3, 44(gp)<br>     |
|  31|[0x80002288]<br>0x00FF0000|- rs1 : x17<br> - rs2 : x31<br> - rd : x22<br> - rs1_b2_val == 1<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800003e8]:SCMPLE8 s6, a7, t6<br> [0x800003ec]:sw s6, 48(gp)<br>     |
|  32|[0x8000228c]<br>0x00FFFF00|- rs1 : x18<br> - rs2 : x14<br> - rd : x5<br> - rs1_b2_val == -1<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000400]:SCMPLE8 t0, s2, a4<br> [0x80000404]:sw t0, 52(gp)<br>     |
|  33|[0x80002290]<br>0x0000FF00|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000418]:SCMPLE8 t6, t5, t4<br> [0x8000041c]:sw t6, 56(gp)<br>     |
|  34|[0x80002294]<br>0xFF00FF00|- rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000430]:SCMPLE8 t6, t5, t4<br> [0x80000434]:sw t6, 60(gp)<br>     |
|  35|[0x8000229c]<br>0xFF000000|- rs2_b0_val == -33<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000460]:SCMPLE8 t6, t5, t4<br> [0x80000464]:sw t6, 68(gp)<br>     |
|  36|[0x800022a0]<br>0x00FF00FF|- rs2_b1_val == 32<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000478]:SCMPLE8 t6, t5, t4<br> [0x8000047c]:sw t6, 72(gp)<br>     |
|  37|[0x800022a4]<br>0x00FF00FF|- rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000490]:SCMPLE8 t6, t5, t4<br> [0x80000494]:sw t6, 76(gp)<br>     |
|  38|[0x800022a8]<br>0x00000000|- rs2_b1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800004a8]:SCMPLE8 t6, t5, t4<br> [0x800004ac]:sw t6, 80(gp)<br>     |
|  39|[0x800022ac]<br>0xFF000000|- rs2_b1_val == -17<br> - rs2_b0_val == -9<br> - rs1_b3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004c0]:SCMPLE8 t6, t5, t4<br> [0x800004c4]:sw t6, 84(gp)<br>     |
|  40|[0x800022b0]<br>0xFFFF0000|- rs2_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800004d8]:SCMPLE8 t6, t5, t4<br> [0x800004dc]:sw t6, 88(gp)<br>     |
|  41|[0x800022b4]<br>0xFFFFFF00|- rs2_b1_val == 4<br> - rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004f0]:SCMPLE8 t6, t5, t4<br> [0x800004f4]:sw t6, 92(gp)<br>     |
|  42|[0x800022b8]<br>0xFFFF00FF|- rs2_b0_val == 85<br> - rs1_b3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000508]:SCMPLE8 t6, t5, t4<br> [0x8000050c]:sw t6, 96(gp)<br>     |
|  43|[0x800022bc]<br>0x00FFFFFF|- rs2_b1_val == 1<br> - rs2_b0_val == 64<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000520]:SCMPLE8 t6, t5, t4<br> [0x80000524]:sw t6, 100(gp)<br>    |
|  44|[0x800022c0]<br>0xFFFF00FF|- rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000538]:SCMPLE8 t6, t5, t4<br> [0x8000053c]:sw t6, 104(gp)<br>    |
|  45|[0x800022c8]<br>0x00FF00FF|- rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000568]:SCMPLE8 t6, t5, t4<br> [0x8000056c]:sw t6, 112(gp)<br>    |
|  46|[0x800022cc]<br>0x000000FF|- rs1_b3_val == 64<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000580]:SCMPLE8 t6, t5, t4<br> [0x80000584]:sw t6, 116(gp)<br>    |
|  47|[0x800022d0]<br>0xFFFFFF00|- rs1_b3_val == 4<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000598]:SCMPLE8 t6, t5, t4<br> [0x8000059c]:sw t6, 120(gp)<br>    |
|  48|[0x800022d4]<br>0xFFFF0000|- rs2_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800005b0]:SCMPLE8 t6, t5, t4<br> [0x800005b4]:sw t6, 124(gp)<br>    |
|  49|[0x800022d8]<br>0xFFFF0000|- rs1_b3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800005c8]:SCMPLE8 t6, t5, t4<br> [0x800005cc]:sw t6, 128(gp)<br>    |
|  50|[0x800022dc]<br>0x0000FF00|- rs2_b2_val == -9<br> - rs1_b3_val == 16<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800005e0]:SCMPLE8 t6, t5, t4<br> [0x800005e4]:sw t6, 132(gp)<br>    |
|  51|[0x800022e0]<br>0x00FFFF00|- rs1_b3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800005f8]:SCMPLE8 t6, t5, t4<br> [0x800005fc]:sw t6, 136(gp)<br>    |
|  52|[0x800022e4]<br>0xFFFFFFFF|- rs2_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000610]:SCMPLE8 t6, t5, t4<br> [0x80000614]:sw t6, 140(gp)<br>    |
|  53|[0x800022e8]<br>0xFFFFFF00|- rs2_b2_val == -3<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000628]:SCMPLE8 t6, t5, t4<br> [0x8000062c]:sw t6, 144(gp)<br>    |
|  54|[0x800022ec]<br>0xFF0000FF|- rs2_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000640]:SCMPLE8 t6, t5, t4<br> [0x80000644]:sw t6, 148(gp)<br>    |
|  55|[0x800022f0]<br>0x0000FF00|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000658]:SCMPLE8 t6, t5, t4<br> [0x8000065c]:sw t6, 152(gp)<br>    |
|  56|[0x800022f4]<br>0xFF00FF00|- rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000670]:SCMPLE8 t6, t5, t4<br> [0x80000674]:sw t6, 156(gp)<br>    |
|  57|[0x800022f8]<br>0x00FF00FF|- rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000688]:SCMPLE8 t6, t5, t4<br> [0x8000068c]:sw t6, 160(gp)<br>    |
|  58|[0x800022fc]<br>0x000000FF|- rs2_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800006a0]:SCMPLE8 t6, t5, t4<br> [0x800006a4]:sw t6, 164(gp)<br>    |
|  59|[0x8000230c]<br>0xFF0000FF|- rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000700]:SCMPLE8 t6, t5, t4<br> [0x80000704]:sw t6, 180(gp)<br>    |
