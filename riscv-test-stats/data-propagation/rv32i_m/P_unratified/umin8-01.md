
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800006b0')]      |
| SIG_REGION                | [('0x80002210', '0x80002300', '60 words')]      |
| COV_LABELS                | umin8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/umin8-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 60      |
| STAT1                     | 57      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000053c]:UMIN8 t6, t5, t4
      [0x80000540]:sw t6, 44(ra)
 -- Signature Address: 0x800022c0 Data: 0x040D2000
 -- Redundant Coverpoints hit by the op
      - opcode : umin8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 4
      - rs2_b1_val == 32
      - rs2_b0_val == 0
      - rs1_b3_val == 64
      - rs1_b1_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000068c]:UMIN8 t6, t5, t4
      [0x80000690]:sw t6, 100(ra)
 -- Signature Address: 0x800022f8 Data: 0x02000506
 -- Redundant Coverpoints hit by the op
      - opcode : umin8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 2
      - rs1_b3_val == 2
      - rs1_b2_val == 0
      - rs1_b0_val == 191




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006a4]:UMIN8 t6, t5, t4
      [0x800006a8]:sw t6, 104(ra)
 -- Signature Address: 0x800022fc Data: 0x1010000C
 -- Redundant Coverpoints hit by the op
      - opcode : umin8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 16
      - rs2_b2_val == 16
      - rs1_b3_val == 247
      - rs1_b2_val == 16
      - rs1_b1_val == 0
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

|s.no|        signature         |                                                                                                                                                                                                        coverpoints                                                                                                                                                                                                        |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0D07020E|- opcode : umin8<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b1_val == 2<br> - rs1_b1_val == 2<br> |[0x80000110]:UMIN8 t4, t4, t4<br> [0x80000114]:sw t4, 0(fp)<br>      |
|   2|[0x80002214]<br>0x02030D06|- rs1 : x9<br> - rs2 : x9<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs2_b3_val == 2<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                            |[0x80000128]:UMIN8 s8, s1, s1<br> [0x8000012c]:sw s8, 4(fp)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x23<br> - rs2 : x0<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == 247<br> - rs1_b2_val == 16<br> - rs1_b1_val == 0<br> - rs1_b0_val == 253<br>                                                                                                                                           |[0x80000140]:UMIN8 s9, s7, zero<br> [0x80000144]:sw s9, 8(fp)<br>    |
|   4|[0x8000221c]<br>0x04001008|- rs1 : x25<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 4<br> - rs2_b1_val == 16<br> - rs2_b0_val == 253<br> - rs1_b3_val == 16<br> - rs1_b2_val == 0<br> - rs1_b1_val == 16<br> - rs1_b0_val == 8<br>                                               |[0x80000158]:UMIN8 t1, s9, t1<br> [0x8000015c]:sw t1, 12(fp)<br>     |
|   5|[0x80002220]<br>0x100D8001|- rs1 : x1<br> - rs2 : x30<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b3_val == 16<br> - rs2_b2_val == 255<br> - rs2_b1_val == 254<br> - rs2_b0_val == 1<br> - rs1_b1_val == 128<br> - rs1_b0_val == 1<br>                                                                   |[0x80000170]:UMIN8 ra, ra, t5<br> [0x80000174]:sw ra, 16(fp)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x3<br> - rs2 : x19<br> - rd : x0<br> - rs2_b3_val == 170<br> - rs2_b1_val == 223<br> - rs2_b0_val == 85<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                 |[0x80000188]:UMIN8 zero, gp, s3<br> [0x8000018c]:sw zero, 20(fp)<br> |
|   7|[0x80002228]<br>0x0A070120|- rs1 : x22<br> - rs2 : x13<br> - rd : x12<br> - rs2_b3_val == 85<br> - rs2_b1_val == 170<br> - rs2_b0_val == 223<br> - rs1_b2_val == 251<br> - rs1_b1_val == 1<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                 |[0x800001a0]:UMIN8 a2, s6, a3<br> [0x800001a4]:sw a2, 24(fp)<br>     |
|   8|[0x8000222c]<br>0x000A0A0F|- rs1 : x11<br> - rs2 : x20<br> - rd : x27<br> - rs2_b3_val == 127<br> - rs2_b2_val == 64<br> - rs2_b0_val == 255<br> - rs1_b3_val == 0<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                                                                        |[0x800001b8]:UMIN8 s11, a1, s4<br> [0x800001bc]:sw s11, 28(fp)<br>   |
|   9|[0x80002230]<br>0x4011040E|- rs1 : x6<br> - rs2 : x31<br> - rd : x7<br> - rs2_b3_val == 191<br> - rs2_b1_val == 4<br> - rs1_b3_val == 64<br> - rs1_b2_val == 170<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                          |[0x800001d0]:UMIN8 t2, t1, t6<br> [0x800001d4]:sw t2, 32(fp)<br>     |
|  10|[0x80002234]<br>0x0A020608|- rs1 : x24<br> - rs2 : x28<br> - rd : x16<br> - rs2_b3_val == 223<br> - rs2_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                               |[0x800001e8]:UMIN8 a6, s8, t3<br> [0x800001ec]:sw a6, 36(fp)<br>     |
|  11|[0x80002238]<br>0xEF0FFB04|- rs1 : x12<br> - rs2 : x1<br> - rd : x4<br> - rs2_b3_val == 239<br> - rs2_b2_val == 128<br> - rs2_b0_val == 239<br> - rs1_b3_val == 254<br> - rs1_b1_val == 251<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                 |[0x80000200]:UMIN8 tp, a2, ra<br> [0x80000204]:sw tp, 40(fp)<br>     |
|  12|[0x8000223c]<br>0x0B030CEF|- rs1 : x18<br> - rs2 : x24<br> - rd : x2<br> - rs2_b3_val == 247<br> - rs2_b1_val == 251<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                      |[0x80000218]:UMIN8 sp, s2, s8<br> [0x8000021c]:sw sp, 44(fp)<br>     |
|  13|[0x80002240]<br>0x00000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x21<br> - rs1_b0_val == 0<br> - rs2_b3_val == 251<br> - rs2_b1_val == 253<br> - rs2_b0_val == 254<br>                                                                                                                                                                                                                                                                                |[0x80000230]:UMIN8 s5, zero, s9<br> [0x80000234]:sw s5, 48(fp)<br>   |
|  14|[0x80002244]<br>0x550E0104|- rs1 : x19<br> - rs2 : x17<br> - rd : x14<br> - rs2_b3_val == 253<br> - rs2_b2_val == 127<br> - rs2_b1_val == 239<br> - rs2_b0_val == 4<br>                                                                                                                                                                                                                                                                               |[0x80000248]:UMIN8 a4, s3, a7<br> [0x8000024c]:sw a4, 52(fp)<br>     |
|  15|[0x80002248]<br>0x0AAA0D13|- rs1 : x16<br> - rs2 : x21<br> - rd : x5<br> - rs2_b3_val == 254<br> - rs2_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                              |[0x80000260]:UMIN8 t0, a6, s5<br> [0x80000264]:sw t0, 56(fp)<br>     |
|  16|[0x8000224c]<br>0x000220EF|- rs1 : x2<br> - rs2 : x12<br> - rd : x9<br> - rs2_b3_val == 128<br> - rs1_b2_val == 2<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                          |[0x80000280]:UMIN8 s1, sp, a2<br> [0x80000284]:sw s1, 0(ra)<br>      |
|  17|[0x80002250]<br>0x0E110E04|- rs1 : x7<br> - rs2 : x22<br> - rd : x30<br> - rs2_b3_val == 64<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                |[0x80000298]:UMIN8 t5, t2, s6<br> [0x8000029c]:sw t5, 4(ra)<br>      |
|  18|[0x80002254]<br>0x0CF70410|- rs1 : x15<br> - rs2 : x4<br> - rd : x22<br> - rs2_b3_val == 32<br> - rs2_b2_val == 247<br> - rs2_b0_val == 127<br> - rs1_b2_val == 247<br> - rs1_b1_val == 4<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                  |[0x800002b0]:UMIN8 s6, a5, tp<br> [0x800002b4]:sw s6, 8(ra)<br>      |
|  19|[0x80002258]<br>0x08200509|- rs1 : x4<br> - rs2 : x27<br> - rd : x18<br> - rs2_b3_val == 8<br> - rs2_b2_val == 191<br> - rs1_b3_val == 170<br> - rs1_b2_val == 32<br> - rs1_b1_val == 239<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                  |[0x800002c8]:UMIN8 s2, tp, s11<br> [0x800002cc]:sw s2, 12(ra)<br>    |
|  20|[0x8000225c]<br>0x01070105|- rs1 : x17<br> - rs2 : x7<br> - rd : x13<br> - rs2_b3_val == 1<br> - rs2_b1_val == 1<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                          |[0x800002e0]:UMIN8 a3, a7, t2<br> [0x800002e4]:sw a3, 16(ra)<br>     |
|  21|[0x80002260]<br>0xF7030F04|- rs1 : x10<br> - rs2 : x14<br> - rd : x23<br> - rs2_b3_val == 255<br> - rs2_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                               |[0x800002f8]:UMIN8 s7, a0, a4<br> [0x800002fc]:sw s7, 20(ra)<br>     |
|  22|[0x80002264]<br>0x007F0D0D|- rs1 : x8<br> - rs2 : x10<br> - rd : x19<br> - rs2_b1_val == 64<br> - rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                               |[0x80000310]:UMIN8 s3, fp, a0<br> [0x80000314]:sw s3, 24(ra)<br>     |
|  23|[0x80002268]<br>0x050F0810|- rs1 : x28<br> - rs2 : x18<br> - rd : x11<br> - rs2_b2_val == 170<br> - rs2_b1_val == 8<br> - rs1_b3_val == 191<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                               |[0x80000328]:UMIN8 a1, t3, s2<br> [0x8000032c]:sw a1, 28(ra)<br>     |
|  24|[0x8000226c]<br>0x04550C40|- rs1 : x30<br> - rs2 : x5<br> - rd : x3<br> - rs2_b2_val == 85<br> - rs2_b0_val == 251<br> - rs1_b3_val == 255<br> - rs1_b2_val == 239<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                         |[0x80000340]:UMIN8 gp, t5, t0<br> [0x80000344]:sw gp, 32(ra)<br>     |
|  25|[0x80002270]<br>0x047F0608|- rs1 : x14<br> - rs2 : x26<br> - rd : x17<br> - rs2_b2_val == 223<br> - rs2_b0_val == 8<br> - rs1_b3_val == 4<br> - rs1_b2_val == 127<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                         |[0x80000358]:UMIN8 a7, a4, s10<br> [0x8000035c]:sw a7, 36(ra)<br>    |
|  26|[0x80002274]<br>0x010903DF|- rs1 : x21<br> - rs2 : x16<br> - rd : x26<br> - rs1_b3_val == 1<br> - rs1_b1_val == 170<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                                                       |[0x80000370]:UMIN8 s10, s5, a6<br> [0x80000374]:sw s10, 40(ra)<br>   |
|  27|[0x80002278]<br>0x400011F7|- rs1 : x20<br> - rs2 : x23<br> - rd : x31<br> - rs1_b1_val == 127<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                             |[0x80000388]:UMIN8 t6, s4, s7<br> [0x8000038c]:sw t6, 44(ra)<br>     |
|  28|[0x8000227c]<br>0x0B02EF05|- rs1 : x31<br> - rs2 : x8<br> - rd : x20<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                      |[0x800003a0]:UMIN8 s4, t6, fp<br> [0x800003a4]:sw s4, 48(ra)<br>     |
|  29|[0x80002280]<br>0x06800409|- rs1 : x26<br> - rs2 : x2<br> - rd : x8<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800003b8]:UMIN8 fp, s10, sp<br> [0x800003bc]:sw fp, 52(ra)<br>    |
|  30|[0x80002284]<br>0x0D054012|- rs1 : x5<br> - rs2 : x3<br> - rd : x15<br> - rs2_b2_val == 16<br> - rs2_b1_val == 247<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                         |[0x800003d0]:UMIN8 a5, t0, gp<br> [0x800003d4]:sw a5, 56(ra)<br>     |
|  31|[0x80002288]<br>0x060B0808|- rs1 : x13<br> - rs2 : x15<br> - rd : x10<br> - rs1_b3_val == 223<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                               |[0x800003e8]:UMIN8 a0, a3, a5<br> [0x800003ec]:sw a0, 60(ra)<br>     |
|  32|[0x8000228c]<br>0x0004020B|- rs1 : x27<br> - rs2 : x11<br> - rd : x28<br> - rs2_b1_val == 32<br> - rs2_b0_val == 191<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                        |[0x80000400]:UMIN8 t3, s11, a1<br> [0x80000404]:sw t3, 64(ra)<br>    |
|  33|[0x80002290]<br>0x1311FE0E|- rs2_b2_val == 251<br> - rs2_b0_val == 128<br> - rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                    |[0x80000418]:UMIN8 t6, t5, t4<br> [0x8000041c]:sw t6, 68(ra)<br>     |
|  34|[0x80002294]<br>0x0705040B|- rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000438]:UMIN8 t6, t5, t4<br> [0x8000043c]:sw t6, 0(ra)<br>      |
|  35|[0x80002298]<br>0x09040001|- rs2_b2_val == 254<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x80000450]:UMIN8 t6, t5, t4<br> [0x80000454]:sw t6, 4(ra)<br>      |
|  36|[0x8000229c]<br>0x0E0A1012|- rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000468]:UMIN8 t6, t5, t4<br> [0x8000046c]:sw t6, 8(ra)<br>      |
|  37|[0x800022a0]<br>0x000FBF04|- rs2_b2_val == 239<br> - rs2_b1_val == 191<br> - rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                      |[0x80000480]:UMIN8 t6, t5, t4<br> [0x80000484]:sw t6, 12(ra)<br>     |
|  38|[0x800022a4]<br>0x120F1001|- rs2_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000498]:UMIN8 t6, t5, t4<br> [0x8000049c]:sw t6, 16(ra)<br>     |
|  39|[0x800022a8]<br>0x0F0F0001|- rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800004b0]:UMIN8 t6, t5, t4<br> [0x800004b4]:sw t6, 20(ra)<br>     |
|  40|[0x800022ac]<br>0x0F00100C|- rs2_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800004c8]:UMIN8 t6, t5, t4<br> [0x800004cc]:sw t6, 24(ra)<br>     |
|  41|[0x800022b0]<br>0x09030D09|- rs2_b0_val == 64<br> - rs1_b2_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800004e0]:UMIN8 t6, t5, t4<br> [0x800004e4]:sw t6, 28(ra)<br>     |
|  42|[0x800022b4]<br>0x020C200F|- rs2_b0_val == 32<br> - rs1_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800004f8]:UMIN8 t6, t5, t4<br> [0x800004fc]:sw t6, 32(ra)<br>     |
|  43|[0x800022b8]<br>0x09EF0210|- rs2_b0_val == 16<br> - rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000510]:UMIN8 t6, t5, t4<br> [0x80000514]:sw t6, 36(ra)<br>     |
|  44|[0x800022bc]<br>0x55028002|- rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000528]:UMIN8 t6, t5, t4<br> [0x8000052c]:sw t6, 40(ra)<br>     |
|  45|[0x800022c4]<br>0x050B050D|- rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000554]:UMIN8 t6, t5, t4<br> [0x80000558]:sw t6, 48(ra)<br>     |
|  46|[0x800022c8]<br>0x03054008|- rs1_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000056c]:UMIN8 t6, t5, t4<br> [0x80000570]:sw t6, 52(ra)<br>     |
|  47|[0x800022cc]<br>0xFBAABF05|- rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000584]:UMIN8 t6, t5, t4<br> [0x80000588]:sw t6, 56(ra)<br>     |
|  48|[0x800022d0]<br>0x1108000B|- rs1_b3_val == 253<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x8000059c]:UMIN8 t6, t5, t4<br> [0x800005a0]:sw t6, 60(ra)<br>     |
|  49|[0x800022d4]<br>0x80200203|- rs2_b2_val == 32<br> - rs1_b3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800005b4]:UMIN8 t6, t5, t4<br> [0x800005b8]:sw t6, 64(ra)<br>     |
|  50|[0x800022d8]<br>0x40134040|- rs2_b2_val == 253<br> - rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x800005cc]:UMIN8 t6, t5, t4<br> [0x800005d0]:sw t6, 68(ra)<br>     |
|  51|[0x800022dc]<br>0x0B080702|- rs2_b2_val == 8<br> - rs1_b2_val == 128<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800005e4]:UMIN8 t6, t5, t4<br> [0x800005e8]:sw t6, 72(ra)<br>     |
|  52|[0x800022e0]<br>0x0E7F2009|- rs2_b1_val == 128<br> - rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800005fc]:UMIN8 t6, t5, t4<br> [0x80000600]:sw t6, 76(ra)<br>     |
|  53|[0x800022e4]<br>0x01010B07|- rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000614]:UMIN8 t6, t5, t4<br> [0x80000618]:sw t6, 80(ra)<br>     |
|  54|[0x800022e8]<br>0x0640060F|- rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000062c]:UMIN8 t6, t5, t4<br> [0x80000630]:sw t6, 84(ra)<br>     |
|  55|[0x800022ec]<br>0x0F01060E|- rs2_b1_val == 85<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x80000644]:UMIN8 t6, t5, t4<br> [0x80000648]:sw t6, 88(ra)<br>     |
|  56|[0x800022f0]<br>0x0855110C|- rs1_b2_val == 253<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x8000065c]:UMIN8 t6, t5, t4<br> [0x80000660]:sw t6, 92(ra)<br>     |
|  57|[0x800022f4]<br>0x08070200|- rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000674]:UMIN8 t6, t5, t4<br> [0x80000678]:sw t6, 96(ra)<br>     |
