
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
| COV_LABELS                | smax8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smax8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 64      |
| STAT1                     | 60      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000618]:SMAX8 t6, t5, t4
      [0x8000061c]:sw t6, 88(sp)
 -- Signature Address: 0x800022e4 Data: 0xFD0209FF
 -- Redundant Coverpoints hit by the op
      - opcode : smax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == -3
      - rs2_b2_val == 0
      - rs2_b0_val == -5
      - rs1_b3_val == -17
      - rs1_b2_val == 2
      - rs1_b0_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d8]:SMAX8 t6, t5, t4
      [0x800006dc]:sw t6, 120(sp)
 -- Signature Address: 0x80002304 Data: 0x20C00300
 -- Redundant Coverpoints hit by the op
      - opcode : smax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b3_val == 32
      - rs2_b2_val == -65
      - rs2_b0_val == -128
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f0]:SMAX8 t6, t5, t4
      [0x800006f4]:sw t6, 124(sp)
 -- Signature Address: 0x80002308 Data: 0xFE3FFF05
 -- Redundant Coverpoints hit by the op
      - opcode : smax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == -2
      - rs2_b2_val == -33
      - rs1_b3_val == -2
      - rs1_b1_val == -1
      - rs1_b0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000708]:SMAX8 t6, t5, t4
      [0x8000070c]:sw t6, 128(sp)
 -- Signature Address: 0x8000230c Data: 0x202000FF
 -- Redundant Coverpoints hit by the op
      - opcode : smax8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == -128
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b2_val == 32
      - rs2_b1_val == 0
      - rs2_b0_val == -1
      - rs1_b3_val == 32






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

|s.no|        signature         |                                                                                                                                                                                                                                                  coverpoints                                                                                                                                                                                                                                                   |                                 code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xEF06DF3F|- opcode : smax8<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == -17<br> - rs2_b1_val == -33<br> - rs1_b3_val == -17<br> - rs1_b1_val == -33<br>                          |[0x80000110]:SMAX8 s2, s2, s2<br> [0x80000114]:sw s2, 0(ra)<br>        |
|   2|[0x80002214]<br>0xFEDFF905|- rs1 : x10<br> - rs2 : x10<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs2_b3_val == -2<br> - rs2_b2_val == -33<br> - rs1_b3_val == -2<br> - rs1_b2_val == -33<br>                                                                                                                                                                                                                                                                                                     |[0x80000128]:SMAX8 a2, a0, a0<br> [0x8000012c]:sw a2, 4(ra)<br>        |
|   3|[0x80002218]<br>0x100100FB|- rs1 : x7<br> - rs2 : x4<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b0_val == -128<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b3_val == 16<br> - rs2_b1_val == 0<br> - rs2_b0_val == -5<br> - rs1_b3_val == -9<br> - rs1_b2_val == 1<br> - rs1_b1_val == -9<br> |[0x80000140]:SMAX8 a6, t2, tp<br> [0x80000144]:sw a6, 8(ra)<br>        |
|   4|[0x8000221c]<br>0x7F087F08|- rs1 : x24<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b3_val == 64<br> - rs2_b2_val == 8<br> - rs2_b1_val == 127<br> - rs2_b0_val == 8<br> - rs1_b3_val == 127<br> - rs1_b2_val == 8<br> - rs1_b1_val == 85<br> - rs1_b0_val == 2<br>                                                                                                                                                                     |[0x80000158]:SMAX8 s4, s8, s4<br> [0x8000015c]:sw s4, 12(ra)<br>       |
|   5|[0x80002220]<br>0x00000000|- rs1 : x0<br> - rs2 : x24<br> - rd : x0<br> - rs1 == rd != rs2<br> - rs2_b2_val == 32<br> - rs2_b0_val == -1<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                       |[0x80000170]:SMAX8 zero, zero, s8<br> [0x80000174]:sw zero, 16(ra)<br> |
|   6|[0x80002224]<br>0x05FE407F|- rs1 : x16<br> - rs2 : x12<br> - rd : x30<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs2_b3_val == -3<br> - rs2_b1_val == 64<br> - rs2_b0_val == 127<br> - rs1_b2_val == -2<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                               |[0x80000188]:SMAX8 t5, a6, a2<br> [0x8000018c]:sw t5, 20(ra)<br>       |
|   7|[0x80002228]<br>0x20FF0304|- rs1 : x11<br> - rs2 : x6<br> - rd : x3<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == 2<br> - rs2_b2_val == -1<br> - rs2_b0_val == 4<br> - rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                  |[0x800001a0]:SMAX8 gp, a1, t1<br> [0x800001a4]:sw gp, 24(ra)<br>       |
|   8|[0x8000222c]<br>0x04550420|- rs1 : x27<br> - rs2 : x8<br> - rd : x2<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b3_val == 4<br> - rs2_b1_val == -9<br> - rs1_b3_val == -86<br> - rs1_b2_val == 85<br> - rs1_b1_val == 4<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                   |[0x800001b8]:SMAX8 sp, s11, fp<br> [0x800001bc]:sw sp, 28(ra)<br>      |
|   9|[0x80002230]<br>0x030407F9|- rs1 : x15<br> - rs2 : x9<br> - rd : x26<br> - rs2_b2_val == -128<br> - rs1_b2_val == 4<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x800001d0]:SMAX8 s10, a5, s1<br> [0x800001d4]:sw s10, 32(ra)<br>     |
|  10|[0x80002234]<br>0x07FF0809|- rs1 : x26<br> - rs2 : x27<br> - rd : x22<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == 1<br> - rs2_b1_val == 8<br> - rs2_b0_val == -17<br> - rs1_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                               |[0x800001e8]:SMAX8 s6, s10, s11<br> [0x800001ec]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xF60406FE|- rs1 : x8<br> - rs2 : x30<br> - rd : x4<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs2_b3_val == -86<br> - rs2_b2_val == 4<br> - rs1_b2_val == -5<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                |[0x80000200]:SMAX8 tp, fp, t5<br> [0x80000204]:sw tp, 40(ra)<br>       |
|  12|[0x8000223c]<br>0x5520BF01|- rs1 : x29<br> - rs2 : x23<br> - rd : x25<br> - rs2_b3_val == 85<br> - rs2_b1_val == -128<br> - rs2_b0_val == 1<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000218]:SMAX8 s9, t4, s7<br> [0x8000021c]:sw s9, 44(ra)<br>       |
|  13|[0x80002240]<br>0x7F070510|- rs1 : x13<br> - rs2 : x17<br> - rd : x10<br> - rs2_b3_val == 127<br> - rs2_b1_val == -2<br> - rs2_b0_val == 16<br> - rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000230]:SMAX8 a0, a3, a7<br> [0x80000234]:sw a0, 48(ra)<br>       |
|  14|[0x80002244]<br>0xFE7F4009|- rs1 : x21<br> - rs2 : x2<br> - rd : x29<br> - rs2_b3_val == -65<br> - rs2_b2_val == 127<br> - rs2_b1_val == 1<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000248]:SMAX8 t4, s5, sp<br> [0x8000024c]:sw t4, 52(ra)<br>       |
|  15|[0x80002248]<br>0xFE0502FA|- rs1 : x6<br> - rs2 : x15<br> - rd : x19<br> - rs2_b3_val == -33<br> - rs2_b1_val == 2<br> - rs2_b0_val == -33<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000260]:SMAX8 s3, t1, a5<br> [0x80000264]:sw s3, 56(ra)<br>       |
|  16|[0x8000224c]<br>0x0720FD06|- rs1 : x2<br> - rs2 : x3<br> - rd : x14<br> - rs2_b3_val == -9<br> - rs1_b2_val == 2<br> - rs1_b1_val == -3<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000278]:SMAX8 a4, sp, gp<br> [0x8000027c]:sw a4, 60(ra)<br>       |
|  17|[0x80002250]<br>0xFD080703|- rs1 : x30<br> - rs2 : x29<br> - rd : x17<br> - rs2_b3_val == -5<br> - rs2_b2_val == -65<br> - rs1_b3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000298]:SMAX8 a7, t5, t4<br> [0x8000029c]:sw a7, 0(sp)<br>        |
|  18|[0x80002254]<br>0x08F7F900|- rs1 : x3<br> - rs2 : x26<br> - rd : x15<br> - rs2_b3_val == -128<br> - rs2_b2_val == -9<br> - rs2_b1_val == -17<br> - rs2_b0_val == 0<br> - rs1_b3_val == 8<br> - rs1_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                       |[0x800002b0]:SMAX8 a5, gp, s10<br> [0x800002b4]:sw a5, 4(sp)<br>       |
|  19|[0x80002258]<br>0x20FB057F|- rs1 : x5<br> - rs2 : x7<br> - rd : x31<br> - rs2_b3_val == 32<br> - rs2_b2_val == -86<br> - rs2_b1_val == -3<br> - rs2_b0_val == -128<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                             |[0x800002c8]:SMAX8 t6, t0, t2<br> [0x800002cc]:sw t6, 8(sp)<br>        |
|  20|[0x8000225c]<br>0x08090707|- rs1 : x4<br> - rs2 : x22<br> - rd : x28<br> - rs2_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800002e0]:SMAX8 t3, tp, s6<br> [0x800002e4]:sw t3, 12(sp)<br>       |
|  21|[0x80002260]<br>0x00063F05|- rs1 : x12<br> - rs2 : x19<br> - rd : x5<br> - rs2_b3_val == 0<br> - rs1_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800002f8]:SMAX8 t0, a2, s3<br> [0x800002fc]:sw t0, 16(sp)<br>       |
|  22|[0x80002264]<br>0x0840F93F|- rs1 : x31<br> - rs2 : x13<br> - rd : x23<br> - rs2_b3_val == -1<br> - rs1_b2_val == 64<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000310]:SMAX8 s7, t6, a3<br> [0x80000314]:sw s7, 20(sp)<br>       |
|  23|[0x80002268]<br>0xFD5520F8|- rs1 : x22<br> - rs2 : x5<br> - rd : x6<br> - rs2_b2_val == 85<br> - rs2_b1_val == 32<br> - rs1_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000328]:SMAX8 t1, s6, t0<br> [0x8000032c]:sw t1, 24(sp)<br>       |
|  24|[0x8000226c]<br>0x3F055510|- rs1 : x19<br> - rs2 : x14<br> - rd : x11<br> - rs2_b2_val == -17<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000340]:SMAX8 a1, s3, a4<br> [0x80000344]:sw a1, 28(sp)<br>       |
|  25|[0x80002270]<br>0x55FDFF02|- rs1 : x9<br> - rs2 : x16<br> - rd : x1<br> - rs2_b2_val == -3<br> - rs2_b1_val == -1<br> - rs2_b0_val == 2<br> - rs1_b2_val == -65<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000358]:SMAX8 ra, s1, a6<br> [0x8000035c]:sw ra, 32(sp)<br>       |
|  26|[0x80002274]<br>0x00005505|- rs1 : x20<br> - rs2 : x0<br> - rd : x13<br> - rs2_b2_val == 0<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000370]:SMAX8 a3, s4, zero<br> [0x80000374]:sw a3, 36(sp)<br>     |
|  27|[0x80002278]<br>0xFD020902|- rs1 : x14<br> - rs2 : x25<br> - rd : x27<br> - rs2_b2_val == 2<br> - rs1_b2_val == -3<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000388]:SMAX8 s11, a4, s9<br> [0x8000038c]:sw s11, 40(sp)<br>     |
|  28|[0x8000227c]<br>0x03200006|- rs1 : x28<br> - rs2 : x11<br> - rd : x7<br> - rs2_b2_val == 16<br> - rs1_b2_val == 32<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x800003a0]:SMAX8 t2, t3, a1<br> [0x800003a4]:sw t2, 44(sp)<br>       |
|  29|[0x80002280]<br>0x20003FFB|- rs1 : x17<br> - rs2 : x31<br> - rd : x9<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800003b8]:SMAX8 s1, a7, t6<br> [0x800003bc]:sw s1, 48(sp)<br>       |
|  30|[0x80002284]<br>0x0102FFF6|- rs1 : x23<br> - rs2 : x28<br> - rd : x24<br> - rs1_b2_val == -86<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800003d0]:SMAX8 s8, s7, t3<br> [0x800003d4]:sw s8, 52(sp)<br>       |
|  31|[0x80002288]<br>0x20207F04|- rs1 : x25<br> - rs2 : x1<br> - rd : x21<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003e8]:SMAX8 s5, s9, ra<br> [0x800003ec]:sw s5, 56(sp)<br>       |
|  32|[0x8000228c]<br>0xFE07DF3F|- rs1 : x1<br> - rs2 : x21<br> - rd : x8<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000408]:SMAX8 fp, ra, s5<br> [0x8000040c]:sw fp, 0(sp)<br>        |
|  33|[0x80002290]<br>0x7FAA09FD|- rs2_b0_val == -3<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000420]:SMAX8 t6, t5, t4<br> [0x80000424]:sw t6, 4(sp)<br>        |
|  34|[0x80002294]<br>0x03102008|- rs1_b3_val == 1<br> - rs1_b2_val == 16<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000438]:SMAX8 t6, t5, t4<br> [0x8000043c]:sw t6, 8(sp)<br>        |
|  35|[0x80002298]<br>0x090710F9|- rs2_b2_val == 1<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000450]:SMAX8 t6, t5, t4<br> [0x80000454]:sw t6, 12(sp)<br>       |
|  36|[0x8000229c]<br>0x00080820|- rs2_b0_val == 32<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000468]:SMAX8 t6, t5, t4<br> [0x8000046c]:sw t6, 16(sp)<br>       |
|  37|[0x800022a0]<br>0xFA1001FA|- rs2_b2_val == -2<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000480]:SMAX8 t6, t5, t4<br> [0x80000484]:sw t6, 20(sp)<br>       |
|  38|[0x800022a4]<br>0xFE7F0855|- rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000498]:SMAX8 t6, t5, t4<br> [0x8000049c]:sw t6, 24(sp)<br>       |
|  39|[0x800022a8]<br>0x104006F8|- rs2_b2_val == 64<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800004b0]:SMAX8 t6, t5, t4<br> [0x800004b4]:sw t6, 28(sp)<br>       |
|  40|[0x800022ac]<br>0x5520DF55|- rs2_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800004c8]:SMAX8 t6, t5, t4<br> [0x800004cc]:sw t6, 32(sp)<br>       |
|  41|[0x800022b0]<br>0x03BF5508|- rs2_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800004e0]:SMAX8 t6, t5, t4<br> [0x800004e4]:sw t6, 36(sp)<br>       |
|  42|[0x800022b4]<br>0x2004F63F|- rs2_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800004f8]:SMAX8 t6, t5, t4<br> [0x800004fc]:sw t6, 40(sp)<br>       |
|  43|[0x800022b8]<br>0x7F02FB07|- rs2_b1_val == -5<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000510]:SMAX8 t6, t5, t4<br> [0x80000514]:sw t6, 44(sp)<br>       |
|  44|[0x800022bc]<br>0x557F1055|- rs2_b1_val == 16<br> - rs1_b3_val == 85<br> - rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000528]:SMAX8 t6, t5, t4<br> [0x8000052c]:sw t6, 48(sp)<br>       |
|  45|[0x800022c0]<br>0x05F7043F|- rs2_b1_val == 4<br> - rs2_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000540]:SMAX8 t6, t5, t4<br> [0x80000544]:sw t6, 52(sp)<br>       |
|  46|[0x800022c4]<br>0x7F7F0606|- rs2_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000558]:SMAX8 t6, t5, t4<br> [0x8000055c]:sw t6, 56(sp)<br>       |
|  47|[0x800022c8]<br>0x3F060355|- rs2_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000570]:SMAX8 t6, t5, t4<br> [0x80000574]:sw t6, 60(sp)<br>       |
|  48|[0x800022cc]<br>0xFA0504F7|- rs2_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000588]:SMAX8 t6, t5, t4<br> [0x8000058c]:sw t6, 64(sp)<br>       |
|  49|[0x800022d0]<br>0x060708FE|- rs2_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800005a0]:SMAX8 t6, t5, t4<br> [0x800005a4]:sw t6, 68(sp)<br>       |
|  50|[0x800022d4]<br>0x40034040|- rs2_b0_val == 64<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005b8]:SMAX8 t6, t5, t4<br> [0x800005bc]:sw t6, 72(sp)<br>       |
|  51|[0x800022d8]<br>0xFADF0400|- rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800005d0]:SMAX8 t6, t5, t4<br> [0x800005d4]:sw t6, 76(sp)<br>       |
|  52|[0x800022dc]<br>0x08020308|- rs1_b3_val == -65<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800005e8]:SMAX8 t6, t5, t4<br> [0x800005ec]:sw t6, 80(sp)<br>       |
|  53|[0x800022e0]<br>0x5555FC20|- rs1_b3_val == -33<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000600]:SMAX8 t6, t5, t4<br> [0x80000604]:sw t6, 84(sp)<br>       |
|  54|[0x800022e8]<br>0x07070340|- rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000630]:SMAX8 t6, t5, t4<br> [0x80000634]:sw t6, 92(sp)<br>       |
|  55|[0x800022ec]<br>0xFCFC0440|- rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000648]:SMAX8 t6, t5, t4<br> [0x8000064c]:sw t6, 96(sp)<br>       |
|  56|[0x800022f0]<br>0x807F007F|- rs1_b3_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000660]:SMAX8 t6, t5, t4<br> [0x80000664]:sw t6, 100(sp)<br>      |
|  57|[0x800022f4]<br>0x05FB0703|- rs2_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000678]:SMAX8 t6, t5, t4<br> [0x8000067c]:sw t6, 104(sp)<br>      |
|  58|[0x800022f8]<br>0x55083FFA|- rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000690]:SMAX8 t6, t5, t4<br> [0x80000694]:sw t6, 108(sp)<br>      |
|  59|[0x800022fc]<br>0x06C03F06|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800006a8]:SMAX8 t6, t5, t4<br> [0x800006ac]:sw t6, 112(sp)<br>      |
|  60|[0x80002300]<br>0x10055510|- rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006c0]:SMAX8 t6, t5, t4<br> [0x800006c4]:sw t6, 116(sp)<br>      |
