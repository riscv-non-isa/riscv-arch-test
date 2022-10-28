
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000770')]      |
| SIG_REGION                | [('0x80002210', '0x80002320', '68 words')]      |
| COV_LABELS                | smin8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smin8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 68      |
| STAT1                     | 65      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006fc]:SMIN8 t6, t5, t4
      [0x80000700]:sw t6, 176(gp)
 -- Signature Address: 0x8000230c Data: 0xF800EFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smin8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b2_val == 0
      - rs2_b1_val == -17
      - rs2_b0_val == 2
      - rs1_b3_val == 8
      - rs1_b1_val == 1
      - rs1_b0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000714]:SMIN8 t6, t5, t4
      [0x80000718]:sw t6, 180(gp)
 -- Signature Address: 0x80002310 Data: 0x06BF0280
 -- Redundant Coverpoints hit by the op
      - opcode : smin8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == -128
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val == rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b2_val == -65
      - rs2_b1_val == 2
      - rs1_b1_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:SMIN8 t6, t5, t4
      [0x80000730]:sw t6, 184(gp)
 -- Signature Address: 0x80002314 Data: 0xAAC0C0AA
 -- Redundant Coverpoints hit by the op
      - opcode : smin8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b3_val == -86
      - rs2_b2_val == 8
      - rs2_b0_val == -86
      - rs1_b3_val == -86
      - rs1_b1_val == 85






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

|s.no|        signature         |                                                                                                                                                                                                                                    coverpoints                                                                                                                                                                                                                                    |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x06BF02F8|- opcode : smin8<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b2_val == -65<br> - rs2_b1_val == 2<br> - rs1_b2_val == -65<br> - rs1_b1_val == 2<br>    |[0x80000110]:SMIN8 gp, gp, gp<br> [0x80000114]:sw gp, 0(a6)<br>      |
|   2|[0x80002214]<br>0xAA08C0AA|- rs1 : x10<br> - rs2 : x10<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs2_b3_val == -86<br> - rs2_b2_val == 8<br> - rs2_b0_val == -86<br> - rs1_b3_val == -86<br> - rs1_b2_val == 8<br> - rs1_b0_val == -86<br>                                                                                                                                           |[0x80000128]:SMIN8 fp, a0, a0<br> [0x8000012c]:sw fp, 4(a6)<br>      |
|   3|[0x80002218]<br>0xF6FDC0FA|- rs1 : x9<br> - rs2 : x2<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == 64<br> - rs2_b2_val == 127<br> - rs2_b0_val == 4<br> - rs1_b2_val == -3<br> |[0x80000140]:SMIN8 a7, s1, sp<br> [0x80000144]:sw a7, 8(a6)<br>      |
|   4|[0x8000221c]<br>0xFEFFBF03|- rs1 : x23<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == -2<br> - rs2_b2_val == -1<br> - rs2_b1_val == -33<br> - rs1_b3_val == 2<br> - rs1_b2_val == 4<br> - rs1_b1_val == -65<br> - rs1_b0_val == 64<br>                                                                                                                     |[0x80000158]:SMIN8 a2, s7, a2<br> [0x8000015c]:sw a2, 12(a6)<br>     |
|   5|[0x80002220]<br>0x01C0F8EF|- rs1 : x11<br> - rs2 : x20<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs2_b1_val == -1<br> - rs1_b3_val == 1<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000170]:SMIN8 a1, a1, s4<br> [0x80000174]:sw a1, 16(a6)<br>     |
|   6|[0x80002224]<br>0x8003C000|- rs1 : x24<br> - rs2 : x13<br> - rd : x2<br> - rs2_b3_val == -33<br> - rs2_b1_val == 127<br> - rs2_b0_val == 85<br> - rs1_b3_val == -128<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                |[0x80000184]:SMIN8 sp, s8, a3<br> [0x80000188]:sw sp, 20(a6)<br>     |
|   7|[0x80002228]<br>0x07FEDFC0|- rs1 : x18<br> - rs2 : x1<br> - rd : x31<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b2_val == 1<br> - rs1_b3_val == 32<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                          |[0x8000019c]:SMIN8 t6, s2, ra<br> [0x800001a0]:sw t6, 24(a6)<br>     |
|   8|[0x8000222c]<br>0xF7F9BFDF|- rs1 : x19<br> - rs2 : x22<br> - rd : x28<br> - rs2_b3_val == 85<br> - rs2_b1_val == -65<br> - rs2_b0_val == 64<br> - rs1_b3_val == -9<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                |[0x800001b4]:SMIN8 t3, s3, s6<br> [0x800001b8]:sw t3, 28(a6)<br>     |
|   9|[0x80002230]<br>0xFD06DFF7|- rs1 : x13<br> - rs2 : x18<br> - rd : x20<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == 127<br> - rs2_b2_val == 32<br> - rs2_b0_val == -9<br> - rs1_b3_val == -3<br> - rs1_b1_val == -33<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                 |[0x800001cc]:SMIN8 s4, a3, s2<br> [0x800001d0]:sw s4, 32(a6)<br>     |
|  10|[0x80002234]<br>0xBFC0AA05|- rs1 : x28<br> - rs2 : x9<br> - rd : x24<br> - rs2_b3_val == -65<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x800001e4]:SMIN8 s8, t3, s1<br> [0x800001e8]:sw s8, 36(a6)<br>     |
|  11|[0x80002238]<br>0xEFFFBF80|- rs1 : x6<br> - rs2 : x28<br> - rd : x10<br> - rs2_b3_val == -17<br> - rs2_b0_val == -128<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800001fc]:SMIN8 a0, t1, t3<br> [0x80000200]:sw a0, 40(a6)<br>     |
|  12|[0x8000223c]<br>0xF703EFC0|- rs1 : x30<br> - rs2 : x19<br> - rd : x25<br> - rs2_b3_val == -9<br> - rs2_b2_val == 16<br> - rs2_b1_val == -17<br> - rs1_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000214]:SMIN8 s9, t5, s3<br> [0x80000218]:sw s9, 44(a6)<br>     |
|  13|[0x80002240]<br>0xFBF6FD08|- rs1 : x22<br> - rs2 : x5<br> - rd : x4<br> - rs2_b3_val == -5<br> - rs2_b1_val == -3<br> - rs2_b0_val == 8<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                            |[0x8000022c]:SMIN8 tp, s6, t0<br> [0x80000230]:sw tp, 48(a6)<br>     |
|  14|[0x80002244]<br>0xFD06BFAA|- rs1 : x15<br> - rs2 : x27<br> - rd : x7<br> - rs2_b3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000244]:SMIN8 t2, a5, s11<br> [0x80000248]:sw t2, 52(a6)<br>    |
|  15|[0x80002248]<br>0x0000FB00|- rs1 : x8<br> - rs2 : x0<br> - rd : x1<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                         |[0x8000025c]:SMIN8 ra, fp, zero<br> [0x80000260]:sw ra, 56(a6)<br>   |
|  16|[0x8000224c]<br>0xEF80EFF7|- rs1 : x7<br> - rs2 : x15<br> - rd : x13<br> - rs2_b3_val == 32<br> - rs1_b3_val == -17<br> - rs1_b2_val == -128<br> - rs1_b1_val == -17<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                               |[0x80000274]:SMIN8 a3, t2, a5<br> [0x80000278]:sw a3, 60(a6)<br>     |
|  17|[0x80002250]<br>0xC0F6EFFB|- rs1 : x25<br> - rs2 : x6<br> - rd : x9<br> - rs2_b3_val == 16<br> - rs2_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000028c]:SMIN8 s1, s9, t1<br> [0x80000290]:sw s1, 64(a6)<br>     |
|  18|[0x80002254]<br>0x07F802F9|- rs1 : x31<br> - rs2 : x4<br> - rd : x5<br> - rs2_b3_val == 8<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x800002a4]:SMIN8 t0, t6, tp<br> [0x800002a8]:sw t0, 68(a6)<br>     |
|  19|[0x80002258]<br>0x04FADFF8|- rs1 : x17<br> - rs2 : x30<br> - rd : x14<br> - rs2_b3_val == 4<br> - rs1_b3_val == 8<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x800002bc]:SMIN8 a4, a7, t5<br> [0x800002c0]:sw a4, 72(a6)<br>     |
|  20|[0x8000225c]<br>0x02FB09FD|- rs1 : x1<br> - rs2 : x16<br> - rd : x19<br> - rs2_b3_val == 2<br> - rs2_b2_val == -5<br> - rs2_b1_val == 64<br> - rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                           |[0x800002dc]:SMIN8 s3, ra, a6<br> [0x800002e0]:sw s3, 0(gp)<br>      |
|  21|[0x80002260]<br>0x01EFC0F7|- rs1 : x29<br> - rs2 : x23<br> - rd : x16<br> - rs2_b3_val == 1<br> - rs1_b2_val == -17<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                |[0x800002f4]:SMIN8 a6, t4, s7<br> [0x800002f8]:sw a6, 4(gp)<br>      |
|  22|[0x80002264]<br>0x00000000|- rs1 : x5<br> - rs2 : x17<br> - rd : x0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 127<br> - rs1_b1_val == -9<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                          |[0x8000030c]:SMIN8 zero, t0, a7<br> [0x80000310]:sw zero, 8(gp)<br>  |
|  23|[0x80002268]<br>0xFFEFFEF8|- rs1 : x2<br> - rs2 : x8<br> - rd : x26<br> - rs2_b3_val == -1<br> - rs2_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000324]:SMIN8 s10, sp, fp<br> [0x80000328]:sw s10, 12(gp)<br>   |
|  24|[0x8000226c]<br>0xFEAA0980|- rs1 : x27<br> - rs2 : x25<br> - rd : x23<br> - rs2_b2_val == -86<br> - rs2_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000033c]:SMIN8 s7, s11, s9<br> [0x80000340]:sw s7, 16(gp)<br>    |
|  25|[0x80002270]<br>0x0103EFAA|- rs1 : x16<br> - rs2 : x26<br> - rd : x15<br> - rs2_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000354]:SMIN8 a5, a6, s10<br> [0x80000358]:sw a5, 20(gp)<br>    |
|  26|[0x80002274]<br>0xC0DF02BF|- rs1 : x26<br> - rs2 : x11<br> - rd : x30<br> - rs2_b2_val == -33<br> - rs2_b0_val == -65<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                              |[0x8000036c]:SMIN8 t5, s10, a1<br> [0x80000370]:sw t5, 24(gp)<br>    |
|  27|[0x80002278]<br>0x04EFF7F6|- rs1 : x12<br> - rs2 : x14<br> - rd : x22<br> - rs2_b2_val == -17<br> - rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000384]:SMIN8 s6, a2, a4<br> [0x80000388]:sw s6, 28(gp)<br>     |
|  28|[0x8000227c]<br>0x80EF05F6|- rs1 : x21<br> - rs2 : x24<br> - rd : x18<br> - rs2_b2_val == -3<br> - rs2_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000039c]:SMIN8 s2, s5, s8<br> [0x800003a0]:sw s2, 32(gp)<br>     |
|  29|[0x80002280]<br>0xF9BFAAF7|- rs1 : x20<br> - rs2 : x29<br> - rd : x21<br> - rs2_b1_val == -86<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800003b4]:SMIN8 s5, s4, t4<br> [0x800003b8]:sw s5, 36(gp)<br>     |
|  30|[0x80002284]<br>0xFBDFFDBF|- rs1 : x14<br> - rs2 : x21<br> - rd : x6<br> - rs1_b2_val == -33<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800003cc]:SMIN8 t1, a4, s5<br> [0x800003d0]:sw t1, 40(gp)<br>     |
|  31|[0x80002288]<br>0xAAFB0000|- rs1 : x0<br> - rs2 : x7<br> - rd : x27<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003e4]:SMIN8 s11, zero, t2<br> [0x800003e8]:sw s11, 44(gp)<br> |
|  32|[0x8000228c]<br>0x10800801|- rs1 : x4<br> - rs2 : x31<br> - rd : x29<br> - rs2_b2_val == -128<br> - rs1_b3_val == 85<br> - rs1_b2_val == 64<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                         |[0x800003fc]:SMIN8 t4, tp, t6<br> [0x80000400]:sw t4, 48(gp)<br>     |
|  33|[0x80002290]<br>0xC008F7FA|- rs2_b1_val == -9<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000414]:SMIN8 t6, t5, t4<br> [0x80000418]:sw t6, 52(gp)<br>     |
|  34|[0x80002294]<br>0xF903FFF9|- rs2_b1_val == 8<br> - rs1_b2_val == 16<br> - rs1_b1_val == -1<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000042c]:SMIN8 t6, t5, t4<br> [0x80000430]:sw t6, 56(gp)<br>     |
|  35|[0x80002298]<br>0xFCDFF705|- rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000444]:SMIN8 t6, t5, t4<br> [0x80000448]:sw t6, 60(gp)<br>     |
|  36|[0x8000229c]<br>0xC0FD80AA|- rs2_b1_val == -128<br> - rs2_b0_val == 16<br> - rs1_b3_val == -2<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000045c]:SMIN8 t6, t5, t4<br> [0x80000460]:sw t6, 64(gp)<br>     |
|  37|[0x800022a0]<br>0xFD00F6C0|- rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000474]:SMIN8 t6, t5, t4<br> [0x80000478]:sw t6, 68(gp)<br>     |
|  38|[0x800022a4]<br>0xBFC0F6C0|- rs2_b0_val == -17<br> - rs1_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000048c]:SMIN8 t6, t5, t4<br> [0x80000490]:sw t6, 72(gp)<br>     |
|  39|[0x800022a8]<br>0x00FD01BF|- rs2_b1_val == 1<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004a4]:SMIN8 t6, t5, t4<br> [0x800004a8]:sw t6, 76(gp)<br>     |
|  40|[0x800022ac]<br>0xFB0780FD|- rs2_b0_val == -3<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800004bc]:SMIN8 t6, t5, t4<br> [0x800004c0]:sw t6, 80(gp)<br>     |
|  41|[0x800022b0]<br>0xFDC001C0|- rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800004d4]:SMIN8 t6, t5, t4<br> [0x800004d8]:sw t6, 84(gp)<br>     |
|  42|[0x800022b4]<br>0x0403FBF6|- rs2_b1_val == -5<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004ec]:SMIN8 t6, t5, t4<br> [0x800004f0]:sw t6, 88(gp)<br>     |
|  43|[0x800022b8]<br>0xAABFF7AA|- rs2_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000504]:SMIN8 t6, t5, t4<br> [0x80000508]:sw t6, 92(gp)<br>     |
|  44|[0x800022bc]<br>0x80F9FEF9|- rs2_b3_val == -128<br> - rs2_b1_val == 4<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000051c]:SMIN8 t6, t5, t4<br> [0x80000520]:sw t6, 96(gp)<br>     |
|  45|[0x800022c0]<br>0xBFEF8055|- rs2_b0_val == 127<br> - rs1_b3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000534]:SMIN8 t6, t5, t4<br> [0x80000538]:sw t6, 100(gp)<br>    |
|  46|[0x800022c4]<br>0xEF04F9DF|- rs2_b0_val == -33<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000054c]:SMIN8 t6, t5, t4<br> [0x80000550]:sw t6, 104(gp)<br>    |
|  47|[0x800022c8]<br>0x04F6F6F8|- rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000564]:SMIN8 t6, t5, t4<br> [0x80000568]:sw t6, 108(gp)<br>    |
|  48|[0x800022cc]<br>0xFEDFFA10|- rs1_b1_val == 4<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000057c]:SMIN8 t6, t5, t4<br> [0x80000580]:sw t6, 112(gp)<br>    |
|  49|[0x800022d0]<br>0x0007EFEF|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000594]:SMIN8 t6, t5, t4<br> [0x80000598]:sw t6, 116(gp)<br>    |
|  50|[0x800022d4]<br>0xAA01AAFB|- rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005ac]:SMIN8 t6, t5, t4<br> [0x800005b0]:sw t6, 120(gp)<br>    |
|  51|[0x800022d8]<br>0xF701FBF8|- rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005c4]:SMIN8 t6, t5, t4<br> [0x800005c8]:sw t6, 124(gp)<br>    |
|  52|[0x800022dc]<br>0xF6080501|- rs2_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005dc]:SMIN8 t6, t5, t4<br> [0x800005e0]:sw t6, 128(gp)<br>    |
|  53|[0x800022e0]<br>0xC07FF9EF|- rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005f4]:SMIN8 t6, t5, t4<br> [0x800005f8]:sw t6, 132(gp)<br>    |
|  54|[0x800022e4]<br>0xFBF6FEFE|- rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000060c]:SMIN8 t6, t5, t4<br> [0x80000610]:sw t6, 136(gp)<br>    |
|  55|[0x800022e8]<br>0xAAFCF7FF|- rs2_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000624]:SMIN8 t6, t5, t4<br> [0x80000628]:sw t6, 140(gp)<br>    |
|  56|[0x800022ec]<br>0xF6DF08EF|- rs1_b3_val == 127<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000063c]:SMIN8 t6, t5, t4<br> [0x80000640]:sw t6, 144(gp)<br>    |
|  57|[0x800022f0]<br>0xDFFA0480|- rs1_b0_val == -128<br> - rs1_b3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000654]:SMIN8 t6, t5, t4<br> [0x80000658]:sw t6, 148(gp)<br>    |
|  58|[0x800022f4]<br>0xFFFAFDFA|- rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000066c]:SMIN8 t6, t5, t4<br> [0x80000670]:sw t6, 152(gp)<br>    |
|  59|[0x800022f8]<br>0xFDAA0904|- rs1_b2_val == -86<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000684]:SMIN8 t6, t5, t4<br> [0x80000688]:sw t6, 156(gp)<br>    |
|  60|[0x800022fc]<br>0xAAFE05FB|- rs2_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000069c]:SMIN8 t6, t5, t4<br> [0x800006a0]:sw t6, 160(gp)<br>    |
|  61|[0x80002300]<br>0xFC00AADF|- rs2_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006b4]:SMIN8 t6, t5, t4<br> [0x800006b8]:sw t6, 164(gp)<br>    |
|  62|[0x80002304]<br>0x04FCF880|- rs2_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006cc]:SMIN8 t6, t5, t4<br> [0x800006d0]:sw t6, 168(gp)<br>    |
|  63|[0x80002308]<br>0xF7EF03FB|- rs2_b2_val == 2<br> - rs2_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800006e4]:SMIN8 t6, t5, t4<br> [0x800006e8]:sw t6, 172(gp)<br>    |
|  64|[0x80002318]<br>0x80F7FBFE|- rs2_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000744]:SMIN8 t6, t5, t4<br> [0x80000748]:sw t6, 188(gp)<br>    |
|  65|[0x8000231c]<br>0xAAFB09AA|- rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000075c]:SMIN8 t6, t5, t4<br> [0x80000760]:sw t6, 192(gp)<br>    |
