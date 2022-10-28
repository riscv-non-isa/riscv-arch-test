
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
| COV_LABELS                | ucmple8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ucmple8-01.S    |
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
      [0x80000414]:UCMPLE8 t6, t5, t4
      [0x80000418]:sw t6, 60(sp)
 -- Signature Address: 0x80002290 Data: 0x00FF0000
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 64
      - rs2_b2_val == 128
      - rs2_b1_val == 64
      - rs1_b3_val == 127
      - rs1_b1_val == 128
      - rs1_b0_val == 251




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000048c]:UCMPLE8 t6, t5, t4
      [0x80000490]:sw t6, 80(sp)
 -- Signature Address: 0x800022a4 Data: 0x00FFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 1
      - rs2_b2_val == 239
      - rs1_b2_val == 1
      - rs1_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000710]:UCMPLE8 t6, t5, t4
      [0x80000714]:sw t6, 188(sp)
 -- Signature Address: 0x80002310 Data: 0xFFFF00FF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 127
      - rs2_b2_val == 251
      - rs2_b1_val == 128
      - rs2_b0_val == 251
      - rs1_b3_val == 127
      - rs1_b1_val == 253
      - rs1_b0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000728]:UCMPLE8 t6, t5, t4
      [0x8000072c]:sw t6, 192(sp)
 -- Signature Address: 0x80002314 Data: 0xFF00FF00
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 254
      - rs2_b2_val == 32
      - rs2_b0_val == 85
      - rs1_b2_val == 239
      - rs1_b0_val == 253






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

|s.no|        signature         |                                                                                                                                                                                                                                                         coverpoints                                                                                                                                                                                                                                                         |                                 code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : ucmple8<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 128<br> - rs2_b2_val == 85<br> - rs2_b1_val == 16<br> - rs1_b3_val == 128<br> - rs1_b2_val == 85<br> - rs1_b1_val == 16<br> |[0x8000010c]:UCMPLE8 s2, s2, s2<br> [0x80000110]:sw s2, 0(a0)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x4<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs2_b3_val == 127<br> - rs2_b2_val == 251<br> - rs2_b1_val == 128<br> - rs2_b0_val == 251<br> - rs1_b3_val == 127<br> - rs1_b2_val == 251<br> - rs1_b1_val == 128<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                          |[0x80000124]:UCMPLE8 s4, tp, tp<br> [0x80000128]:sw s4, 4(a0)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x29<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 170<br> - rs2_b2_val == 16<br> - rs2_b0_val == 4<br> - rs1_b2_val == 16<br> - rs1_b0_val == 1<br>                                                                                                |[0x8000013c]:UCMPLE8 a5, a6, t4<br> [0x80000140]:sw a5, 8(a0)<br>      |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs2_b3_val == 255<br> - rs2_b2_val == 254<br> - rs2_b1_val == 170<br> - rs1_b3_val == 64<br> - rs1_b2_val == 0<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                           |[0x80000154]:UCMPLE8 s9, t4, s9<br> [0x80000158]:sw s9, 12(a0)<br>     |
|   5|[0x80002220]<br>0x00FFFF00|- rs1 : x21<br> - rs2 : x8<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b3_val == 85<br> - rs2_b0_val == 8<br> - rs1_b3_val == 253<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                         |[0x8000016c]:UCMPLE8 s5, s5, fp<br> [0x80000170]:sw s5, 16(a0)<br>     |
|   6|[0x80002224]<br>0x00FFFF00|- rs1 : x26<br> - rs2 : x2<br> - rd : x1<br> - rs2_b3_val == 191<br> - rs2_b2_val == 239<br> - rs2_b0_val == 170<br> - rs1_b3_val == 251<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000184]:UCMPLE8 ra, s10, sp<br> [0x80000188]:sw ra, 20(a0)<br>    |
|   7|[0x80002228]<br>0x00000000|- rs1 : x15<br> - rs2 : x0<br> - rd : x27<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000019c]:UCMPLE8 s11, a5, zero<br> [0x800001a0]:sw s11, 24(a0)<br> |
|   8|[0x8000222c]<br>0xFF000000|- rs1 : x13<br> - rs2 : x12<br> - rd : x4<br> - rs2_b3_val == 239<br> - rs2_b1_val == 191<br> - rs1_b2_val == 247<br> - rs1_b1_val == 253<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800001b4]:UCMPLE8 tp, a3, a2<br> [0x800001b8]:sw tp, 28(a0)<br>     |
|   9|[0x80002230]<br>0xFFFF0000|- rs1 : x3<br> - rs2 : x20<br> - rd : x8<br> - rs2_b3_val == 247<br> - rs1_b3_val == 170<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800001cc]:UCMPLE8 fp, gp, s4<br> [0x800001d0]:sw fp, 32(a0)<br>     |
|  10|[0x80002234]<br>0xFFFF00FF|- rs1 : x30<br> - rs2 : x1<br> - rd : x22<br> - rs2_b3_val == 251<br> - rs2_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800001e4]:UCMPLE8 s6, t5, ra<br> [0x800001e8]:sw s6, 36(a0)<br>     |
|  11|[0x80002238]<br>0x00FFFF00|- rs1 : x5<br> - rs2 : x9<br> - rd : x26<br> - rs2_b3_val == 253<br> - rs2_b1_val == 239<br> - rs1_b3_val == 254<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x800001fc]:UCMPLE8 s10, t0, s1<br> [0x80000200]:sw s10, 40(a0)<br>   |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x14<br> - rs2 : x28<br> - rd : x0<br> - rs2_b3_val == 254<br> - rs2_b2_val == 32<br> - rs2_b0_val == 85<br> - rs1_b2_val == 239<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                          |[0x80000214]:UCMPLE8 zero, a4, t3<br> [0x80000218]:sw zero, 44(a0)<br> |
|  13|[0x80002240]<br>0x0000FF00|- rs1 : x25<br> - rs2 : x31<br> - rd : x11<br> - rs2_b3_val == 64<br> - rs2_b1_val == 32<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000022c]:UCMPLE8 a1, s9, t6<br> [0x80000230]:sw a1, 48(a0)<br>     |
|  14|[0x80002244]<br>0xFF0000FF|- rs1 : x20<br> - rs2 : x15<br> - rd : x2<br> - rs2_b3_val == 32<br> - rs2_b2_val == 2<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000244]:UCMPLE8 sp, s4, a5<br> [0x80000248]:sw sp, 52(a0)<br>     |
|  15|[0x80002248]<br>0x00FFFFFF|- rs1 : x12<br> - rs2 : x7<br> - rd : x30<br> - rs2_b3_val == 16<br> - rs2_b2_val == 170<br> - rs2_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000025c]:UCMPLE8 t5, a2, t2<br> [0x80000260]:sw t5, 56(a0)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x2<br> - rs2 : x23<br> - rd : x29<br> - rs2_b3_val == 8<br> - rs2_b1_val == 223<br> - rs1_b2_val == 64<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000274]:UCMPLE8 t4, sp, s7<br> [0x80000278]:sw t4, 60(a0)<br>     |
|  17|[0x80002250]<br>0x000000FF|- rs1 : x6<br> - rs2 : x11<br> - rd : x28<br> - rs2_b3_val == 4<br> - rs2_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000028c]:UCMPLE8 t3, t1, a1<br> [0x80000290]:sw t3, 64(a0)<br>     |
|  18|[0x80002254]<br>0x00FFFFFF|- rs1 : x24<br> - rs2 : x22<br> - rd : x31<br> - rs2_b3_val == 2<br> - rs2_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002ac]:UCMPLE8 t6, s8, s6<br> [0x800002b0]:sw t6, 0(sp)<br>      |
|  19|[0x80002258]<br>0x00FF00FF|- rs1 : x17<br> - rs2 : x27<br> - rd : x24<br> - rs2_b3_val == 1<br> - rs2_b1_val == 127<br> - rs1_b3_val == 4<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x800002c4]:UCMPLE8 s8, a7, s11<br> [0x800002c8]:sw s8, 4(sp)<br>     |
|  20|[0x8000225c]<br>0x00FF0000|- rs1 : x19<br> - rs2 : x30<br> - rd : x23<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800002dc]:UCMPLE8 s7, s3, t5<br> [0x800002e0]:sw s7, 8(sp)<br>      |
|  21|[0x80002260]<br>0xFFFF0000|- rs1 : x11<br> - rs2 : x16<br> - rd : x10<br> - rs2_b2_val == 127<br> - rs2_b0_val == 191<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800002f4]:UCMPLE8 a0, a1, a6<br> [0x800002f8]:sw a0, 12(sp)<br>     |
|  22|[0x80002264]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x10<br> - rd : x14<br> - rs2_b2_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000030c]:UCMPLE8 a4, t2, a0<br> [0x80000310]:sw a4, 16(sp)<br>     |
|  23|[0x80002268]<br>0x00FF00FF|- rs1 : x28<br> - rs2 : x21<br> - rd : x19<br> - rs2_b2_val == 247<br> - rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000324]:UCMPLE8 s3, t3, s5<br> [0x80000328]:sw s3, 20(sp)<br>     |
|  24|[0x8000226c]<br>0xFFFF00FF|- rs1 : x22<br> - rs2 : x3<br> - rd : x16<br> - rs2_b2_val == 253<br> - rs2_b1_val == 251<br> - rs2_b0_val == 255<br> - rs1_b3_val == 2<br> - rs1_b2_val == 8<br> - rs1_b1_val == 255<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                            |[0x8000033c]:UCMPLE8 a6, s6, gp<br> [0x80000340]:sw a6, 24(sp)<br>     |
|  25|[0x80002270]<br>0x00FFFF00|- rs1 : x9<br> - rs2 : x19<br> - rd : x5<br> - rs2_b2_val == 128<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000354]:UCMPLE8 t0, s1, s3<br> [0x80000358]:sw t0, 28(sp)<br>     |
|  26|[0x80002274]<br>0x0000FFFF|- rs1 : x27<br> - rs2 : x24<br> - rd : x13<br> - rs2_b2_val == 64<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000036c]:UCMPLE8 a3, s11, s8<br> [0x80000370]:sw a3, 32(sp)<br>    |
|  27|[0x80002278]<br>0x00FFFF00|- rs1 : x8<br> - rs2 : x14<br> - rd : x3<br> - rs1_b2_val == 1<br> - rs1_b1_val == 170<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000384]:UCMPLE8 gp, fp, a4<br> [0x80000388]:sw gp, 36(sp)<br>     |
|  28|[0x8000227c]<br>0xFF00FF00|- rs1 : x23<br> - rs2 : x5<br> - rd : x12<br> - rs1_b2_val == 223<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000039c]:UCMPLE8 a2, s7, t0<br> [0x800003a0]:sw a2, 40(sp)<br>     |
|  29|[0x80002280]<br>0xFF000000|- rs1 : x31<br> - rs2 : x17<br> - rd : x9<br> - rs2_b2_val == 4<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800003b4]:UCMPLE8 s1, t6, a7<br> [0x800003b8]:sw s1, 44(sp)<br>     |
|  30|[0x80002284]<br>0xFF00FF00|- rs1 : x10<br> - rs2 : x26<br> - rd : x17<br> - rs2_b1_val == 255<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800003cc]:UCMPLE8 a7, a0, s10<br> [0x800003d0]:sw a7, 48(sp)<br>    |
|  31|[0x80002288]<br>0x00FF00FF|- rs1 : x1<br> - rs2 : x13<br> - rd : x6<br> - rs1_b3_val == 85<br> - rs1_b1_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800003e4]:UCMPLE8 t1, ra, a3<br> [0x800003e8]:sw t1, 52(sp)<br>     |
|  32|[0x8000228c]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x6<br> - rd : x7<br> - rs1_b0_val == 0<br> - rs2_b1_val == 253<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800003fc]:UCMPLE8 t2, zero, t1<br> [0x80000400]:sw t2, 56(sp)<br>   |
|  33|[0x80002294]<br>0xFFFFFFFF|- rs1_b3_val == 8<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000042c]:UCMPLE8 t6, t5, t4<br> [0x80000430]:sw t6, 64(sp)<br>     |
|  34|[0x80002298]<br>0xFFFF0000|- rs2_b1_val == 1<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000444]:UCMPLE8 t6, t5, t4<br> [0x80000448]:sw t6, 68(sp)<br>     |
|  35|[0x8000229c]<br>0x00FFFFFF|- rs1_b3_val == 191<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000045c]:UCMPLE8 t6, t5, t4<br> [0x80000460]:sw t6, 72(sp)<br>     |
|  36|[0x800022a0]<br>0xFFFFFF00|- rs2_b1_val == 4<br> - rs1_b3_val == 16<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000474]:UCMPLE8 t6, t5, t4<br> [0x80000478]:sw t6, 76(sp)<br>     |
|  37|[0x800022a8]<br>0x00FFFFFF|- rs2_b0_val == 253<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004a4]:UCMPLE8 t6, t5, t4<br> [0x800004a8]:sw t6, 84(sp)<br>     |
|  38|[0x800022ac]<br>0xFF000000|- rs1_b2_val == 32<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004bc]:UCMPLE8 t6, t5, t4<br> [0x800004c0]:sw t6, 88(sp)<br>     |
|  39|[0x800022b0]<br>0xFFFFFFFF|- rs2_b3_val == 223<br> - rs2_b0_val == 127<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004d4]:UCMPLE8 t6, t5, t4<br> [0x800004d8]:sw t6, 92(sp)<br>     |
|  40|[0x800022b4]<br>0x0000FFFF|- rs1_b2_val == 253<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004ec]:UCMPLE8 t6, t5, t4<br> [0x800004f0]:sw t6, 96(sp)<br>     |
|  41|[0x800022b8]<br>0x00FF0000|- rs2_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000504]:UCMPLE8 t6, t5, t4<br> [0x80000508]:sw t6, 100(sp)<br>    |
|  42|[0x800022bc]<br>0x0000FFFF|- rs2_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000051c]:UCMPLE8 t6, t5, t4<br> [0x80000520]:sw t6, 104(sp)<br>    |
|  43|[0x800022c0]<br>0xFF00FFFF|- rs2_b0_val == 254<br> - rs1_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000534]:UCMPLE8 t6, t5, t4<br> [0x80000538]:sw t6, 108(sp)<br>    |
|  44|[0x800022c4]<br>0xFF00FF00|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000054c]:UCMPLE8 t6, t5, t4<br> [0x80000550]:sw t6, 112(sp)<br>    |
|  45|[0x800022c8]<br>0x000000FF|- rs2_b0_val == 16<br> - rs1_b2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000564]:UCMPLE8 t6, t5, t4<br> [0x80000568]:sw t6, 116(sp)<br>    |
|  46|[0x800022cc]<br>0xFFFF0000|- rs2_b2_val == 191<br> - rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000057c]:UCMPLE8 t6, t5, t4<br> [0x80000580]:sw t6, 120(sp)<br>    |
|  47|[0x800022d0]<br>0x00000000|- rs2_b0_val == 1<br> - rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000594]:UCMPLE8 t6, t5, t4<br> [0x80000598]:sw t6, 124(sp)<br>    |
|  48|[0x800022d4]<br>0x00000000|- rs1_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800005ac]:UCMPLE8 t6, t5, t4<br> [0x800005b0]:sw t6, 128(sp)<br>    |
|  49|[0x800022d8]<br>0x00FFFF00|- rs2_b2_val == 255<br> - rs1_b3_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005c4]:UCMPLE8 t6, t5, t4<br> [0x800005c8]:sw t6, 132(sp)<br>    |
|  50|[0x800022dc]<br>0xFFFF00FF|- rs1_b1_val == 251<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800005dc]:UCMPLE8 t6, t5, t4<br> [0x800005e0]:sw t6, 136(sp)<br>    |
|  51|[0x800022e0]<br>0x00FF00FF|- rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005f4]:UCMPLE8 t6, t5, t4<br> [0x800005f8]:sw t6, 140(sp)<br>    |
|  52|[0x800022e4]<br>0xFF0000FF|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000060c]:UCMPLE8 t6, t5, t4<br> [0x80000610]:sw t6, 144(sp)<br>    |
|  53|[0x800022e8]<br>0xFF000000|- rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000624]:UCMPLE8 t6, t5, t4<br> [0x80000628]:sw t6, 148(sp)<br>    |
|  54|[0x800022ec]<br>0x00FF00FF|- rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000063c]:UCMPLE8 t6, t5, t4<br> [0x80000640]:sw t6, 152(sp)<br>    |
|  55|[0x800022f0]<br>0x0000FF00|- rs2_b2_val == 1<br> - rs2_b1_val == 247<br> - rs1_b2_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000654]:UCMPLE8 t6, t5, t4<br> [0x80000658]:sw t6, 156(sp)<br>    |
|  56|[0x800022f4]<br>0x0000FF00|- rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000066c]:UCMPLE8 t6, t5, t4<br> [0x80000670]:sw t6, 160(sp)<br>    |
|  57|[0x800022f8]<br>0x000000FF|- rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000684]:UCMPLE8 t6, t5, t4<br> [0x80000688]:sw t6, 164(sp)<br>    |
|  58|[0x800022fc]<br>0xFFFF00FF|- rs2_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000069c]:UCMPLE8 t6, t5, t4<br> [0x800006a0]:sw t6, 168(sp)<br>    |
|  59|[0x80002300]<br>0xFFFFFFFF|- rs2_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006b4]:UCMPLE8 t6, t5, t4<br> [0x800006b8]:sw t6, 172(sp)<br>    |
|  60|[0x80002304]<br>0xFFFFFFFF|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800006cc]:UCMPLE8 t6, t5, t4<br> [0x800006d0]:sw t6, 176(sp)<br>    |
|  61|[0x80002308]<br>0xFF00FFFF|- rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006e4]:UCMPLE8 t6, t5, t4<br> [0x800006e8]:sw t6, 180(sp)<br>    |
|  62|[0x8000230c]<br>0x0000FFFF|- rs1_b3_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006f8]:UCMPLE8 t6, t5, t4<br> [0x800006fc]:sw t6, 184(sp)<br>    |
|  63|[0x80002318]<br>0xFFFFFFFF|- rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000740]:UCMPLE8 t6, t5, t4<br> [0x80000744]:sw t6, 196(sp)<br>    |
