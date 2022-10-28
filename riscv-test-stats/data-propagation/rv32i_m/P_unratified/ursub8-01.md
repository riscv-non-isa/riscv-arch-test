
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
| COV_LABELS                | ursub8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ursub8-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 62      |
| STAT1                     | 59      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a8]:URSUB8 t6, t5, t4
      [0x800004ac]:sw t6, 88(tp)
 -- Signature Address: 0x800022a8 Data: 0x27E010D8
 -- Redundant Coverpoints hit by the op
      - opcode : ursub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 255
      - rs2_b1_val == 0
      - rs2_b0_val == 85
      - rs1_b3_val == 85
      - rs1_b2_val == 191
      - rs1_b1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000688]:URSUB8 t6, t5, t4
      [0x8000068c]:sw t6, 168(tp)
 -- Signature Address: 0x800022f8 Data: 0x0000C203
 -- Redundant Coverpoints hit by the op
      - opcode : ursub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b1_val == 127
      - rs1_b1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006a0]:URSUB8 t6, t5, t4
      [0x800006a4]:sw t6, 172(tp)
 -- Signature Address: 0x800022fc Data: 0x0F8A8405
 -- Redundant Coverpoints hit by the op
      - opcode : ursub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 223
      - rs2_b2_val == 239
      - rs2_b1_val == 253
      - rs1_b3_val == 254
      - rs1_b2_val == 4






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

|s.no|        signature         |                                                                                                                                                                                                                       coverpoints                                                                                                                                                                                                                        |                                 code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ursub8<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b0_val == 191<br> - rs1_b0_val == 191<br>                           |[0x80000110]:URSUB8 s9, s9, s9<br> [0x80000114]:sw s9, 0(sp)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x22<br> - rs2 : x22<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs2_b1_val == 127<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000128]:URSUB8 a3, s6, s6<br> [0x8000012c]:sw a3, 4(sp)<br>      |
|   3|[0x80002218]<br>0xAF6EFF00|- rs1 : x12<br> - rs2 : x7<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b3_val == 247<br> - rs2_b1_val == 128<br> - rs2_b0_val == 247<br> - rs1_b3_val == 85<br> - rs1_b2_val == 239<br> - rs1_b0_val == 247<br> |[0x80000140]:URSUB8 s6, a2, t2<br> [0x80000144]:sw s6, 8(sp)<br>      |
|   4|[0x8000221c]<br>0xB2000605|- rs1 : x13<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 170<br> - rs2_b2_val == 239<br> - rs2_b0_val == 2<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                   |[0x80000158]:URSUB8 t6, a3, t6<br> [0x8000015c]:sw t6, 12(sp)<br>     |
|   5|[0x80002220]<br>0x54932000|- rs1 : x16<br> - rs2 : x8<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs2_b3_val == 85<br> - rs2_b2_val == 223<br> - rs2_b0_val == 254<br> - rs1_b3_val == 253<br> - rs1_b1_val == 191<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                       |[0x80000170]:URSUB8 a6, a6, fp<br> [0x80000174]:sw a6, 16(sp)<br>     |
|   6|[0x80002224]<br>0x3F86DC3E|- rs1 : x6<br> - rs2 : x5<br> - rd : x9<br> - rs2_b3_val == 127<br> - rs2_b2_val == 255<br> - rs2_b1_val == 85<br> - rs2_b0_val == 128<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                        |[0x80000188]:URSUB8 s1, t1, t0<br> [0x8000018c]:sw s1, 20(sp)<br>     |
|   7|[0x80002228]<br>0xA57D5201|- rs1 : x18<br> - rs2 : x15<br> - rd : x27<br> - rs2_b3_val == 191<br> - rs2_b2_val == 4<br> - rs1_b2_val == 254<br> - rs1_b1_val == 170<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                        |[0x800001a0]:URSUB8 s11, s2, a5<br> [0x800001a4]:sw s11, 24(sp)<br>   |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x5<br> - rs2 : x30<br> - rd : x0<br> - rs2_b3_val == 223<br> - rs2_b1_val == 253<br> - rs1_b3_val == 254<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                |[0x800001b8]:URSUB8 zero, t0, t5<br> [0x800001bc]:sw zero, 28(sp)<br> |
|   9|[0x80002230]<br>0x8900FD54|- rs1 : x23<br> - rs2 : x11<br> - rd : x8<br> - rs2_b3_val == 239<br> - rs2_b2_val == 1<br> - rs2_b0_val == 85<br> - rs1_b3_val == 1<br> - rs1_b2_val == 1<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                    |[0x800001d0]:URSUB8 fp, s7, a1<br> [0x800001d4]:sw fp, 32(sp)<br>     |
|  10|[0x80002234]<br>0xE245AE03|- rs1 : x28<br> - rs2 : x17<br> - rd : x4<br> - rs2_b3_val == 251<br> - rs2_b2_val == 32<br> - rs2_b1_val == 170<br> - rs2_b0_val == 8<br> - rs1_b3_val == 191<br> - rs1_b2_val == 170<br>                                                                                                                                                                                                                                                                |[0x800001e8]:URSUB8 tp, t3, a7<br> [0x800001ec]:sw tp, 36(sp)<br>     |
|  11|[0x80002238]<br>0xFF8882F8|- rs1 : x7<br> - rs2 : x4<br> - rd : x24<br> - rs2_b3_val == 253<br> - rs2_b2_val == 247<br> - rs1_b3_val == 251<br> - rs1_b1_val == 2<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                          |[0x80000200]:URSUB8 s8, t2, tp<br> [0x80000204]:sw s8, 40(sp)<br>     |
|  12|[0x8000223c]<br>0x9102F700|- rs1 : x3<br> - rs2 : x13<br> - rd : x20<br> - rs2_b3_val == 254<br> - rs2_b2_val == 0<br> - rs1_b3_val == 32<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                  |[0x80000218]:URSUB8 s4, gp, a3<br> [0x8000021c]:sw s4, 44(sp)<br>     |
|  13|[0x80002240]<br>0xEA03FBFA|- rs1 : x4<br> - rs2 : x21<br> - rd : x15<br> - rs2_b3_val == 128<br> - rs2_b2_val == 8<br> - rs2_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000230]:URSUB8 a5, tp, s5<br> [0x80000234]:sw a5, 48(sp)<br>     |
|  14|[0x80002244]<br>0x350383B3|- rs1 : x15<br> - rs2 : x23<br> - rd : x26<br> - rs2_b3_val == 64<br> - rs2_b1_val == 251<br> - rs2_b0_val == 239<br> - rs1_b3_val == 170<br> - rs1_b2_val == 8<br> - rs1_b1_val == 1<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                          |[0x80000248]:URSUB8 s10, a5, s7<br> [0x8000024c]:sw s10, 52(sp)<br>   |
|  15|[0x80002248]<br>0x1AFFF801|- rs1 : x8<br> - rs2 : x24<br> - rd : x11<br> - rs2_b3_val == 32<br> - rs2_b2_val == 2<br> - rs2_b1_val == 16<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                             |[0x80000260]:URSUB8 a1, fp, s8<br> [0x80000264]:sw a1, 56(sp)<br>     |
|  16|[0x8000224c]<br>0x083E8A51|- rs1 : x29<br> - rs2 : x1<br> - rd : x10<br> - rs2_b3_val == 16<br> - rs2_b2_val == 127<br> - rs2_b1_val == 247<br> - rs1_b2_val == 251<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                      |[0x80000278]:URSUB8 a0, t4, ra<br> [0x8000027c]:sw a0, 60(sp)<br>     |
|  17|[0x80002250]<br>0x0579C0C1|- rs1 : x11<br> - rs2 : x26<br> - rd : x23<br> - rs2_b3_val == 8<br> - rs1_b2_val == 253<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                      |[0x80000298]:URSUB8 s7, a1, s10<br> [0x8000029c]:sw s7, 0(tp)<br>     |
|  18|[0x80002254]<br>0x7576ABE8|- rs1 : x2<br> - rs2 : x3<br> - rd : x17<br> - rs2_b3_val == 4<br> - rs2_b0_val == 64<br> - rs1_b3_val == 239<br> - rs1_b2_val == 247<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                          |[0x800002b0]:URSUB8 a7, sp, gp<br> [0x800002b4]:sw a7, 4(tp)<br>      |
|  19|[0x80002258]<br>0x7AC03AB4|- rs1 : x20<br> - rs2 : x28<br> - rd : x5<br> - rs2_b3_val == 2<br> - rs2_b0_val == 170<br> - rs1_b3_val == 247<br> - rs1_b2_val == 127<br> - rs1_b1_val == 128<br>                                                                                                                                                                                                                                                                                       |[0x800002c8]:URSUB8 t0, s4, t3<br> [0x800002cc]:sw t0, 8(tp)<br>      |
|  20|[0x8000225c]<br>0xFFFD81FA|- rs1 : x0<br> - rs2 : x19<br> - rd : x12<br> - rs1_b0_val == 0<br> - rs2_b3_val == 1<br> - rs2_b1_val == 254<br> - rs1_b3_val == 0<br>                                                                                                                                                                                                                                                                                                                   |[0x800002e0]:URSUB8 a2, zero, s3<br> [0x800002e4]:sw a2, 12(tp)<br>   |
|  21|[0x80002260]<br>0xE0728882|- rs1 : x1<br> - rs2 : x27<br> - rd : x2<br> - rs2_b3_val == 255<br> - rs2_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800002f8]:URSUB8 sp, ra, s11<br> [0x800002fc]:sw sp, 16(tp)<br>    |
|  22|[0x80002264]<br>0x0356F683|- rs1 : x19<br> - rs2 : x16<br> - rd : x28<br> - rs2_b3_val == 0<br> - rs2_b1_val == 32<br> - rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000310]:URSUB8 t3, s3, a6<br> [0x80000314]:sw t3, 20(tp)<br>     |
|  23|[0x80002268]<br>0x7D03BB5F|- rs1 : x14<br> - rs2 : x18<br> - rd : x7<br> - rs2_b1_val == 223<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000328]:URSUB8 t2, a4, s2<br> [0x8000032c]:sw t2, 24(tp)<br>     |
|  24|[0x8000226c]<br>0xFF066FF9|- rs1 : x17<br> - rs2 : x9<br> - rd : x30<br> - rs2_b1_val == 1<br> - rs2_b0_val == 253<br> - rs1_b1_val == 223<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                               |[0x80000340]:URSUB8 t5, a7, s1<br> [0x80000344]:sw t5, 28(tp)<br>     |
|  25|[0x80002270]<br>0xC4FF7076|- rs1 : x27<br> - rs2 : x10<br> - rd : x6<br> - rs1_b3_val == 8<br> - rs1_b1_val == 239<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000358]:URSUB8 t1, s11, a0<br> [0x8000035c]:sw t1, 32(tp)<br>    |
|  26|[0x80002274]<br>0x00027B5F|- rs1 : x30<br> - rs2 : x0<br> - rd : x29<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000370]:URSUB8 t4, t5, zero<br> [0x80000374]:sw t4, 36(tp)<br>   |
|  27|[0x80002278]<br>0x08F153E2|- rs1 : x9<br> - rs2 : x20<br> - rd : x3<br> - rs2_b0_val == 251<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000388]:URSUB8 gp, s1, s4<br> [0x8000038c]:sw gp, 40(tp)<br>     |
|  28|[0x8000227c]<br>0xF50477E8|- rs1 : x10<br> - rs2 : x29<br> - rd : x14<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800003a0]:URSUB8 a4, a0, t4<br> [0x800003a4]:sw a4, 44(tp)<br>     |
|  29|[0x80002280]<br>0xA71B7702|- rs1 : x26<br> - rs2 : x2<br> - rd : x19<br> - rs1_b2_val == 64<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800003b8]:URSUB8 s3, s10, sp<br> [0x800003bc]:sw s3, 48(tp)<br>    |
|  30|[0x80002284]<br>0x36851DB1|- rs1 : x21<br> - rs2 : x6<br> - rd : x1<br> - rs2_b2_val == 253<br> - rs1_b3_val == 128<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                       |[0x800003d0]:URSUB8 ra, s5, t1<br> [0x800003d4]:sw ra, 52(tp)<br>     |
|  31|[0x80002288]<br>0x048A0F03|- rs1 : x24<br> - rs2 : x12<br> - rd : x18<br> - rs2_b1_val == 2<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                               |[0x800003e8]:URSUB8 s2, s8, a2<br> [0x800003ec]:sw s2, 56(tp)<br>     |
|  32|[0x8000228c]<br>0xF9FDFD06|- rs1 : x31<br> - rs2 : x14<br> - rd : x21<br> - rs2_b0_val == 1<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000400]:URSUB8 s5, t6, a4<br> [0x80000404]:sw s5, 60(tp)<br>     |
|  33|[0x80002290]<br>0x8A047CFA|- rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000418]:URSUB8 t6, t5, t4<br> [0x8000041c]:sw t6, 64(tp)<br>     |
|  34|[0x80002294]<br>0x54FAFC3A|- rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000430]:URSUB8 t6, t5, t4<br> [0x80000434]:sw t6, 68(tp)<br>     |
|  35|[0x80002298]<br>0x4EC44F6B|- rs2_b2_val == 128<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000448]:URSUB8 t6, t5, t4<br> [0x8000044c]:sw t6, 72(tp)<br>     |
|  36|[0x8000229c]<br>0x0700FA7D|- rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000460]:URSUB8 t6, t5, t4<br> [0x80000464]:sw t6, 76(tp)<br>     |
|  37|[0x800022a0]<br>0x862A7607|- rs2_b2_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000478]:URSUB8 t6, t5, t4<br> [0x8000047c]:sw t6, 80(tp)<br>     |
|  38|[0x800022a4]<br>0x3A04877E|- rs2_b1_val == 255<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000490]:URSUB8 t6, t5, t4<br> [0x80000494]:sw t6, 84(tp)<br>     |
|  39|[0x800022ac]<br>0xFD1B0038|- rs2_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800004c0]:URSUB8 t6, t5, t4<br> [0x800004c4]:sw t6, 92(tp)<br>     |
|  40|[0x800022b0]<br>0xF85A0291|- rs2_b0_val == 223<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800004d8]:URSUB8 t6, t5, t4<br> [0x800004dc]:sw t6, 96(tp)<br>     |
|  41|[0x800022b4]<br>0x8676FEF7|- rs2_b0_val == 32<br> - rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800004f0]:URSUB8 t6, t5, t4<br> [0x800004f4]:sw t6, 100(tp)<br>    |
|  42|[0x800022b8]<br>0xA11EC23E|- rs2_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000508]:URSUB8 t6, t5, t4<br> [0x8000050c]:sw t6, 104(tp)<br>    |
|  43|[0x800022bc]<br>0x4FFD1AC1|- rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000520]:URSUB8 t6, t5, t4<br> [0x80000524]:sw t6, 108(tp)<br>    |
|  44|[0x800022c0]<br>0xC2458C82|- rs2_b2_val == 85<br> - rs1_b3_val == 4<br> - rs1_b2_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000538]:URSUB8 t6, t5, t4<br> [0x8000053c]:sw t6, 112(tp)<br>    |
|  45|[0x800022c4]<br>0xFEE095FB|- rs2_b2_val == 191<br> - rs1_b2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000550]:URSUB8 t6, t5, t4<br> [0x80000554]:sw t6, 116(tp)<br>    |
|  46|[0x800022c8]<br>0x4583031F|- rs2_b2_val == 251<br> - rs1_b2_val == 2<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000568]:URSUB8 t6, t5, t4<br> [0x8000056c]:sw t6, 120(tp)<br>    |
|  47|[0x800022cc]<br>0xCBE4FD0A|- rs2_b2_val == 64<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000580]:URSUB8 t6, t5, t4<br> [0x80000584]:sw t6, 124(tp)<br>    |
|  48|[0x800022d0]<br>0x88003556|- rs2_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000598]:URSUB8 t6, t5, t4<br> [0x8000059c]:sw t6, 128(tp)<br>    |
|  49|[0x800022d4]<br>0x890005AF|- rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800005b0]:URSUB8 t6, t5, t4<br> [0x800005b4]:sw t6, 132(tp)<br>    |
|  50|[0x800022d8]<br>0xFCF801EB|- rs2_b2_val == 16<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005c8]:URSUB8 t6, t5, t4<br> [0x800005cc]:sw t6, 136(tp)<br>    |
|  51|[0x800022dc]<br>0x7DA800AD|- rs1_b3_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005e0]:URSUB8 t6, t5, t4<br> [0x800005e4]:sw t6, 140(tp)<br>    |
|  52|[0x800022e0]<br>0x1CFF1EDE|- rs2_b1_val == 191<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005f8]:URSUB8 t6, t5, t4<br> [0x800005fc]:sw t6, 144(tp)<br>    |
|  53|[0x800022e4]<br>0xFB0789B3|- rs2_b1_val == 239<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000610]:URSUB8 t6, t5, t4<br> [0x80000614]:sw t6, 148(tp)<br>    |
|  54|[0x800022e8]<br>0xFE00A6FC|- rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000628]:URSUB8 t6, t5, t4<br> [0x8000062c]:sw t6, 152(tp)<br>    |
|  55|[0x800022ec]<br>0x7535E7A6|- rs2_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000640]:URSUB8 t6, t5, t4<br> [0x80000644]:sw t6, 156(tp)<br>    |
|  56|[0x800022f0]<br>0xFF237205|- rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000658]:URSUB8 t6, t5, t4<br> [0x8000065c]:sw t6, 160(tp)<br>    |
|  57|[0x800022f4]<br>0x855F0098|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000670]:URSUB8 t6, t5, t4<br> [0x80000674]:sw t6, 164(tp)<br>    |
|  58|[0x80002300]<br>0x000583FF|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800006b8]:URSUB8 t6, t5, t4<br> [0x800006bc]:sw t6, 176(tp)<br>    |
|  59|[0x80002304]<br>0xF98779E0|- rs2_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800006d0]:URSUB8 t6, t5, t4<br> [0x800006d4]:sw t6, 180(tp)<br>    |
