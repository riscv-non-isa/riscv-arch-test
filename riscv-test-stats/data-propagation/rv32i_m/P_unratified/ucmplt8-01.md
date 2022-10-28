
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800006e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002310', '64 words')]      |
| COV_LABELS                | ucmplt8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ucmplt8-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 62      |
| STAT1                     | 57      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000568]:UCMPLT8 t6, t5, t4
      [0x8000056c]:sw t6, 112(t1)
 -- Signature Address: 0x800022c8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 253
      - rs2_b2_val == 32
      - rs2_b1_val == 127
      - rs2_b0_val == 32
      - rs1_b3_val == 4
      - rs1_b1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e0]:UCMPLT8 t6, t5, t4
      [0x800005e4]:sw t6, 132(t1)
 -- Signature Address: 0x800022dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 0
      - rs2_b0_val == 128
      - rs1_b1_val == 32
      - rs1_b0_val == 251




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000688]:UCMPLT8 t6, t5, t4
      [0x8000068c]:sw t6, 160(t1)
 -- Signature Address: 0x800022f8 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == 0
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 4
      - rs2_b2_val == 16
      - rs2_b1_val == 32
      - rs2_b0_val == 4
      - rs1_b2_val == 223




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b8]:UCMPLT8 t6, t5, t4
      [0x800006bc]:sw t6, 168(t1)
 -- Signature Address: 0x80002300 Data: 0xFFFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 239
      - rs2_b2_val == 127
      - rs2_b1_val == 251




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d0]:UCMPLT8 t6, t5, t4
      [0x800006d4]:sw t6, 172(t1)
 -- Signature Address: 0x80002304 Data: 0xFFFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 251
      - rs1_b3_val == 223
      - rs1_b2_val == 2
      - rs1_b1_val == 1
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

|s.no|        signature         |                                                                                                                                                                                                                                                                           coverpoints                                                                                                                                                                                                                                                                            |                                 code                                  |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ucmplt8<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 4<br> - rs2_b2_val == 16<br> - rs2_b1_val == 32<br> - rs2_b0_val == 4<br> - rs1_b3_val == 4<br> - rs1_b2_val == 16<br> - rs1_b1_val == 32<br> - rs1_b0_val == 4<br> |[0x80000110]:UCMPLT8 t1, t1, t1<br> [0x80000114]:sw t1, 0(tp)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x7<br> - rs2 : x7<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs2_b0_val == 223<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000128]:UCMPLT8 a5, t2, t2<br> [0x8000012c]:sw a5, 4(tp)<br>      |
|   3|[0x80002218]<br>0xFF0000FF|- rs1 : x10<br> - rs2 : x20<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 223<br> - rs2_b2_val == 170<br> - rs1_b2_val == 170<br> - rs1_b1_val == 254<br>                                                                                                                                                       |[0x80000140]:UCMPLT8 t3, a0, s4<br> [0x80000144]:sw t3, 8(tp)<br>      |
|   4|[0x8000221c]<br>0x000000FF|- rs1 : x2<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b3_val == 85<br> - rs2_b0_val == 170<br> - rs1_b3_val == 85<br> - rs1_b2_val == 32<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                      |[0x80000158]:UCMPLT8 s3, sp, s3<br> [0x8000015c]:sw s3, 12(tp)<br>     |
|   5|[0x80002220]<br>0xFFFFFF00|- rs1 : x30<br> - rs2 : x16<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_b3_val == 253<br> - rs2_b2_val == 64<br> - rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000170]:UCMPLT8 t5, t5, a6<br> [0x80000174]:sw t5, 16(tp)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x24<br> - rs2 : x0<br> - rd : x8<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == 64<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000188]:UCMPLT8 fp, s8, zero<br> [0x8000018c]:sw fp, 20(tp)<br>   |
|   7|[0x80002228]<br>0x00FF00FF|- rs1 : x3<br> - rs2 : x10<br> - rd : x24<br> - rs2_b3_val == 127<br> - rs1_b3_val == 127<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800001a0]:UCMPLT8 s8, gp, a0<br> [0x800001a4]:sw s8, 24(tp)<br>     |
|   8|[0x8000222c]<br>0xFF0000FF|- rs1 : x1<br> - rs2 : x28<br> - rd : x31<br> - rs2_b3_val == 191<br> - rs2_b2_val == 2<br> - rs2_b1_val == 4<br> - rs2_b0_val == 8<br> - rs1_b3_val == 128<br> - rs1_b2_val == 223<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                     |[0x800001b8]:UCMPLT8 t6, ra, t3<br> [0x800001bc]:sw t6, 28(tp)<br>     |
|   9|[0x80002230]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x23<br> - rd : x29<br> - rs1_b0_val == 0<br> - rs2_b3_val == 239<br> - rs2_b2_val == 127<br> - rs2_b1_val == 251<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                     |[0x800001d0]:UCMPLT8 t4, zero, s7<br> [0x800001d4]:sw t4, 32(tp)<br>   |
|  10|[0x80002234]<br>0xFF00FFFF|- rs1 : x22<br> - rs2 : x27<br> - rd : x11<br> - rs2_b3_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800001e8]:UCMPLT8 a1, s6, s11<br> [0x800001ec]:sw a1, 36(tp)<br>    |
|  11|[0x80002238]<br>0x00000000|- rs1 : x19<br> - rs2 : x18<br> - rd : x0<br> - rs2_b3_val == 251<br> - rs1_b3_val == 223<br> - rs1_b2_val == 2<br> - rs1_b1_val == 1<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000200]:UCMPLT8 zero, s3, s2<br> [0x80000204]:sw zero, 40(tp)<br> |
|  12|[0x8000223c]<br>0xFFFF0000|- rs1 : x14<br> - rs2 : x11<br> - rd : x20<br> - rs2_b3_val == 254<br> - rs2_b2_val == 32<br> - rs2_b1_val == 8<br> - rs2_b0_val == 64<br> - rs1_b1_val == 16<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000218]:UCMPLT8 s4, a4, a1<br> [0x8000021c]:sw s4, 44(tp)<br>     |
|  13|[0x80002240]<br>0xFFFF0000|- rs1 : x17<br> - rs2 : x2<br> - rd : x7<br> - rs2_b3_val == 128<br> - rs2_b2_val == 239<br> - rs1_b2_val == 128<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000230]:UCMPLT8 t2, a7, sp<br> [0x80000234]:sw t2, 48(tp)<br>     |
|  14|[0x80002244]<br>0xFFFF0000|- rs1 : x21<br> - rs2 : x24<br> - rd : x23<br> - rs2_b3_val == 64<br> - rs2_b2_val == 254<br> - rs2_b0_val == 2<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000248]:UCMPLT8 s7, s5, s8<br> [0x8000024c]:sw s7, 52(tp)<br>     |
|  15|[0x80002248]<br>0xFF000000|- rs1 : x28<br> - rs2 : x29<br> - rd : x21<br> - rs2_b3_val == 32<br> - rs1_b2_val == 85<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000260]:UCMPLT8 s5, t3, t4<br> [0x80000264]:sw s5, 56(tp)<br>     |
|  16|[0x8000224c]<br>0xFF0000FF|- rs1 : x25<br> - rs2 : x3<br> - rd : x17<br> - rs2_b3_val == 16<br> - rs2_b2_val == 1<br> - rs2_b0_val == 251<br> - rs1_b2_val == 247<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000278]:UCMPLT8 a7, s9, gp<br> [0x8000027c]:sw a7, 60(tp)<br>     |
|  17|[0x80002250]<br>0x0000FF00|- rs1 : x18<br> - rs2 : x26<br> - rd : x16<br> - rs2_b3_val == 8<br> - rs2_b1_val == 223<br> - rs1_b3_val == 255<br> - rs1_b2_val == 255<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000290]:UCMPLT8 a6, s2, s10<br> [0x80000294]:sw a6, 64(tp)<br>    |
|  18|[0x80002254]<br>0x00FFFF00|- rs1 : x11<br> - rs2 : x30<br> - rd : x9<br> - rs2_b3_val == 2<br> - rs1_b1_val == 4<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002a8]:UCMPLT8 s1, a1, t5<br> [0x800002ac]:sw s1, 68(tp)<br>     |
|  19|[0x80002258]<br>0x00FFFFFF|- rs1 : x4<br> - rs2 : x25<br> - rd : x27<br> - rs2_b3_val == 1<br> - rs2_b2_val == 223<br> - rs2_b1_val == 127<br> - rs2_b0_val == 127<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800002c8]:UCMPLT8 s11, tp, s9<br> [0x800002cc]:sw s11, 0(t1)<br>    |
|  20|[0x8000225c]<br>0xFFFF0000|- rs1 : x9<br> - rs2 : x31<br> - rd : x2<br> - rs2_b3_val == 255<br> - rs2_b0_val == 1<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002e0]:UCMPLT8 sp, s1, t6<br> [0x800002e4]:sw sp, 4(t1)<br>      |
|  21|[0x80002260]<br>0x00FFFFFF|- rs1 : x5<br> - rs2 : x9<br> - rd : x22<br> - rs2_b1_val == 85<br> - rs2_b0_val == 85<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800002f8]:UCMPLT8 s6, t0, s1<br> [0x800002fc]:sw s6, 8(t1)<br>      |
|  22|[0x80002264]<br>0x00000000|- rs1 : x31<br> - rs2 : x4<br> - rd : x18<br> - rs2_b2_val == 191<br> - rs2_b1_val == 16<br> - rs1_b3_val == 253<br> - rs1_b1_val == 127<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000310]:UCMPLT8 s2, t6, tp<br> [0x80000314]:sw s2, 12(t1)<br>     |
|  23|[0x80002268]<br>0x00FF0000|- rs1 : x8<br> - rs2 : x21<br> - rd : x4<br> - rs2_b2_val == 247<br> - rs1_b3_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000328]:UCMPLT8 tp, fp, s5<br> [0x8000032c]:sw tp, 16(t1)<br>     |
|  24|[0x8000226c]<br>0x00FF00FF|- rs1 : x12<br> - rs2 : x17<br> - rd : x5<br> - rs2_b0_val == 239<br> - rs1_b2_val == 4<br> - rs1_b1_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000340]:UCMPLT8 t0, a2, a7<br> [0x80000344]:sw t0, 20(t1)<br>     |
|  25|[0x80002270]<br>0x00FF00FF|- rs1 : x15<br> - rs2 : x1<br> - rd : x13<br> - rs2_b2_val == 251<br> - rs1_b1_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000358]:UCMPLT8 a3, a5, ra<br> [0x8000035c]:sw a3, 24(t1)<br>     |
|  26|[0x80002274]<br>0xFFFF00FF|- rs1 : x20<br> - rs2 : x8<br> - rd : x26<br> - rs2_b0_val == 255<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000370]:UCMPLT8 s10, s4, fp<br> [0x80000374]:sw s10, 28(t1)<br>   |
|  27|[0x80002278]<br>0xFFFF00FF|- rs1 : x23<br> - rs2 : x14<br> - rd : x12<br> - rs2_b0_val == 247<br> - rs1_b1_val == 251<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000388]:UCMPLT8 a2, s7, a4<br> [0x8000038c]:sw a2, 32(t1)<br>     |
|  28|[0x8000227c]<br>0x000000FF|- rs1 : x26<br> - rs2 : x15<br> - rd : x10<br> - rs2_b2_val == 8<br> - rs2_b0_val == 254<br> - rs1_b2_val == 8<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800003a0]:UCMPLT8 a0, s10, a5<br> [0x800003a4]:sw a0, 36(t1)<br>    |
|  29|[0x80002280]<br>0xFF000000|- rs1 : x27<br> - rs2 : x22<br> - rd : x25<br> - rs1_b2_val == 253<br> - rs1_b1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800003b8]:UCMPLT8 s9, s11, s6<br> [0x800003bc]:sw s9, 40(t1)<br>    |
|  30|[0x80002284]<br>0x0000FFFF|- rs1 : x29<br> - rs2 : x5<br> - rd : x1<br> - rs2_b1_val == 64<br> - rs2_b0_val == 32<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800003d0]:UCMPLT8 ra, t4, t0<br> [0x800003d4]:sw ra, 44(t1)<br>     |
|  31|[0x80002288]<br>0x000000FF|- rs1 : x16<br> - rs2 : x13<br> - rd : x3<br> - rs1_b1_val == 255<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800003e8]:UCMPLT8 gp, a6, a3<br> [0x800003ec]:sw gp, 48(t1)<br>     |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x13<br> - rs2 : x12<br> - rd : x14<br> - rs1_b3_val == 251<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000400]:UCMPLT8 a4, a3, a2<br> [0x80000404]:sw a4, 52(t1)<br>     |
|  33|[0x80002290]<br>0xFFFFFF00|- rs2_b1_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000418]:UCMPLT8 t6, t5, t4<br> [0x8000041c]:sw t6, 56(t1)<br>     |
|  34|[0x80002294]<br>0x00000000|- rs2_b1_val == 191<br> - rs1_b3_val == 254<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000430]:UCMPLT8 t6, t5, t4<br> [0x80000434]:sw t6, 60(t1)<br>     |
|  35|[0x80002298]<br>0xFFFFFF00|- rs1_b3_val == 8<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000448]:UCMPLT8 t6, t5, t4<br> [0x8000044c]:sw t6, 64(t1)<br>     |
|  36|[0x8000229c]<br>0xFF0000FF|- rs2_b1_val == 1<br> - rs2_b0_val == 128<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000460]:UCMPLT8 t6, t5, t4<br> [0x80000464]:sw t6, 68(t1)<br>     |
|  37|[0x800022a0]<br>0x0000FF00|- rs2_b1_val == 255<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000478]:UCMPLT8 t6, t5, t4<br> [0x8000047c]:sw t6, 72(t1)<br>     |
|  38|[0x800022a4]<br>0xFFFF0000|- rs2_b2_val == 253<br> - rs1_b3_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000490]:UCMPLT8 t6, t5, t4<br> [0x80000494]:sw t6, 76(t1)<br>     |
|  39|[0x800022a8]<br>0xFFFF00FF|- rs2_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800004a8]:UCMPLT8 t6, t5, t4<br> [0x800004ac]:sw t6, 80(t1)<br>     |
|  40|[0x800022ac]<br>0xFF00FFFF|- rs2_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800004c0]:UCMPLT8 t6, t5, t4<br> [0x800004c4]:sw t6, 84(t1)<br>     |
|  41|[0x800022b0]<br>0xFF00FFFF|- rs2_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800004d8]:UCMPLT8 t6, t5, t4<br> [0x800004dc]:sw t6, 88(t1)<br>     |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_b3_val == 170<br> - rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800004f0]:UCMPLT8 t6, t5, t4<br> [0x800004f4]:sw t6, 92(t1)<br>     |
|  43|[0x800022b8]<br>0x00FF00FF|- rs1_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000508]:UCMPLT8 t6, t5, t4<br> [0x8000050c]:sw t6, 96(t1)<br>     |
|  44|[0x800022bc]<br>0xFF0000FF|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000520]:UCMPLT8 t6, t5, t4<br> [0x80000524]:sw t6, 100(t1)<br>    |
|  45|[0x800022c0]<br>0xFF0000FF|- rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000538]:UCMPLT8 t6, t5, t4<br> [0x8000053c]:sw t6, 104(t1)<br>    |
|  46|[0x800022c4]<br>0x00FF00FF|- rs2_b2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000550]:UCMPLT8 t6, t5, t4<br> [0x80000554]:sw t6, 108(t1)<br>    |
|  47|[0x800022cc]<br>0xFFFFFF00|- rs2_b1_val == 239<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000580]:UCMPLT8 t6, t5, t4<br> [0x80000584]:sw t6, 116(t1)<br>    |
|  48|[0x800022d0]<br>0x000000FF|- rs2_b2_val == 4<br> - rs2_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000598]:UCMPLT8 t6, t5, t4<br> [0x8000059c]:sw t6, 120(t1)<br>    |
|  49|[0x800022d4]<br>0x00FF0000|- rs2_b2_val == 255<br> - rs1_b2_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005b0]:UCMPLT8 t6, t5, t4<br> [0x800005b4]:sw t6, 124(t1)<br>    |
|  50|[0x800022d8]<br>0x00FF00FF|- rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800005c8]:UCMPLT8 t6, t5, t4<br> [0x800005cc]:sw t6, 128(t1)<br>    |
|  51|[0x800022e0]<br>0xFF000000|- rs2_b1_val == 128<br> - rs1_b2_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005f8]:UCMPLT8 t6, t5, t4<br> [0x800005fc]:sw t6, 136(t1)<br>    |
|  52|[0x800022e4]<br>0x0000FF00|- rs1_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000610]:UCMPLT8 t6, t5, t4<br> [0x80000614]:sw t6, 140(t1)<br>    |
|  53|[0x800022e8]<br>0x00000000|- rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000628]:UCMPLT8 t6, t5, t4<br> [0x8000062c]:sw t6, 144(t1)<br>    |
|  54|[0x800022ec]<br>0x00FFFF00|- rs2_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000640]:UCMPLT8 t6, t5, t4<br> [0x80000644]:sw t6, 148(t1)<br>    |
|  55|[0x800022f0]<br>0xFF00FFFF|- rs2_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000658]:UCMPLT8 t6, t5, t4<br> [0x8000065c]:sw t6, 152(t1)<br>    |
|  56|[0x800022f4]<br>0xFF00FFFF|- rs2_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000670]:UCMPLT8 t6, t5, t4<br> [0x80000674]:sw t6, 156(t1)<br>    |
|  57|[0x800022fc]<br>0xFFFF00FF|- rs2_b3_val == 170<br> - rs2_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800006a0]:UCMPLT8 t6, t5, t4<br> [0x800006a4]:sw t6, 164(t1)<br>    |
