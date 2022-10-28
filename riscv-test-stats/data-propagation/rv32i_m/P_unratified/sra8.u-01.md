
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004d0')]      |
| SIG_REGION                | [('0x80002210', '0x800022d0', '48 words')]      |
| COV_LABELS                | sra8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sra8.u-01.S    |
| Total Number of coverpoints| 194     |
| Total Coverpoints Hit     | 188      |
| Total Signature Updates   | 48      |
| STAT1                     | 45      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000424]:SRA8_U t6, t5, t4
      [0x80000428]:sw t6, 28(ra)
 -- Signature Address: 0x800022ac Data: 0x0000FF00
 -- Redundant Coverpoints hit by the op
      - opcode : sra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 6
      - rs1_b3_val == -17
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b0]:SRA8_U t6, t5, t4
      [0x800004b4]:sw t6, 56(ra)
 -- Signature Address: 0x800022c8 Data: 0x082015FC
 -- Redundant Coverpoints hit by the op
      - opcode : sra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == 32
      - rs1_b2_val == 127
      - rs1_b1_val == 85
      - rs1_b0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c4]:SRA8_U t6, t5, t4
      [0x800004c8]:sw t6, 60(ra)
 -- Signature Address: 0x800022cc Data: 0x00040000
 -- Redundant Coverpoints hit by the op
      - opcode : sra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 5
      - rs1_b3_val == -5
      - rs1_b2_val == 127
      - rs1_b1_val == -9
      - rs1_b0_val == -3






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

|s.no|        signature         |                                                                                   coverpoints                                                                                   |                                 code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : sra8.u<br> - rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br> - rs2_val == 5<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> |[0x8000010c]:SRA8_U a7, a7, a7<br> [0x80000110]:sw a7, 0(a0)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs2_val == 3<br>                                                                                           |[0x80000120]:SRA8_U s4, gp, gp<br> [0x80000124]:sw s4, 4(a0)<br>      |
|   3|[0x80002218]<br>0x000000FF|- rs1 : x2<br> - rs2 : x20<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 6<br> - rs1_b3_val == 1<br> - rs1_b0_val == -65<br>                      |[0x80000134]:SRA8_U t1, sp, s4<br> [0x80000138]:sw t1, 8(a0)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x4<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_val == 4<br> - rs1_b3_val == -3<br> - rs1_b1_val == -1<br>                                              |[0x80000148]:SRA8_U ra, tp, ra<br> [0x8000014c]:sw ra, 12(a0)<br>     |
|   5|[0x80002220]<br>0xFCFF04E0|- rs1 : x22<br> - rs2 : x2<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_val == 2<br> - rs1_b3_val == -17<br> - rs1_b1_val == 16<br> - rs1_b0_val == -128<br>                  |[0x8000015c]:SRA8_U s6, s6, sp<br> [0x80000160]:sw s6, 16(a0)<br>     |
|   6|[0x80002224]<br>0xF0E00820|- rs1 : x13<br> - rs2 : x4<br> - rd : x14<br> - rs2_val == 1<br> - rs1_b3_val == -33<br> - rs1_b2_val == -65<br> - rs1_b0_val == 64<br>                                          |[0x80000170]:SRA8_U a4, a3, tp<br> [0x80000174]:sw a4, 20(a0)<br>     |
|   7|[0x80002228]<br>0x01000000|- rs1 : x15<br> - rs2 : x31<br> - rd : x16<br> - rs1_b3_val == 85<br> - rs1_b2_val == 2<br>                                                                                      |[0x80000184]:SRA8_U a6, a5, t6<br> [0x80000188]:sw a6, 24(a0)<br>     |
|   8|[0x8000222c]<br>0x040100FE|- rs1 : x25<br> - rs2 : x30<br> - rd : x5<br> - rs1_b3_val == 127<br> - rs1_b2_val == 16<br> - rs1_b1_val == 8<br>                                                               |[0x80000198]:SRA8_U t0, s9, t5<br> [0x8000019c]:sw t0, 28(a0)<br>     |
|   9|[0x80002230]<br>0xF0FF00FE|- rs1 : x5<br> - rs2 : x13<br> - rd : x8<br> - rs1_b3_val == -65<br> - rs1_b2_val == -5<br>                                                                                      |[0x800001ac]:SRA8_U fp, t0, a3<br> [0x800001b0]:sw fp, 32(a0)<br>     |
|  10|[0x80002234]<br>0xFC400003|- rs1 : x26<br> - rs2 : x6<br> - rd : x29<br> - rs1_b3_val == -9<br> - rs1_b2_val == 127<br>                                                                                     |[0x800001c0]:SRA8_U t4, s10, t1<br> [0x800001c4]:sw t4, 36(a0)<br>    |
|  11|[0x80002238]<br>0xFEFFE020|- rs1 : x21<br> - rs2 : x16<br> - rd : x7<br> - rs1_b3_val == -5<br> - rs1_b2_val == -2<br>                                                                                      |[0x800001d4]:SRA8_U t2, s5, a6<br> [0x800001d8]:sw t2, 40(a0)<br>     |
|  12|[0x8000223c]<br>0xFF01FEE0|- rs1 : x27<br> - rs2 : x5<br> - rd : x18<br> - rs1_b3_val == -2<br> - rs1_b2_val == 1<br> - rs1_b1_val == -5<br>                                                                |[0x800001e8]:SRA8_U s2, s11, t0<br> [0x800001ec]:sw s2, 44(a0)<br>    |
|  13|[0x80002240]<br>0xF0FF00FC|- rs1 : x11<br> - rs2 : x19<br> - rd : x15<br> - rs1_b3_val == -128<br> - rs1_b0_val == -33<br>                                                                                  |[0x800001fc]:SRA8_U a5, a1, s3<br> [0x80000200]:sw a5, 48(a0)<br>     |
|  14|[0x80002244]<br>0x08F00800|- rs1 : x14<br> - rs2 : x24<br> - rd : x13<br> - rs1_b3_val == 64<br> - rs1_b2_val == -128<br> - rs1_b0_val == -2<br>                                                            |[0x80000210]:SRA8_U a3, a4, s8<br> [0x80000214]:sw a3, 52(a0)<br>     |
|  15|[0x80002248]<br>0x203FF805|- rs1 : x18<br> - rs2 : x21<br> - rd : x30<br> - rs1_b3_val == 32<br>                                                                                                            |[0x80000224]:SRA8_U t5, s2, s5<br> [0x80000228]:sw t5, 56(a0)<br>     |
|  16|[0x8000224c]<br>0x00FFFF00|- rs1 : x9<br> - rs2 : x7<br> - rd : x21<br> - rs1_b3_val == 16<br> - rs1_b1_val == -86<br>                                                                                      |[0x80000238]:SRA8_U s5, s1, t2<br> [0x8000023c]:sw s5, 60(a0)<br>     |
|  17|[0x80002250]<br>0x04D5FF00|- rs1 : x10<br> - rs2 : x25<br> - rd : x9<br> - rs1_b3_val == 8<br> - rs1_b2_val == -86<br> - rs1_b1_val == -2<br> - rs1_b0_val == -1<br>                                        |[0x80000254]:SRA8_U s1, a0, s9<br> [0x80000258]:sw s1, 0(t0)<br>      |
|  18|[0x80002254]<br>0x04EFC004|- rs1 : x6<br> - rs2 : x26<br> - rd : x27<br> - rs1_b3_val == 4<br> - rs1_b2_val == -17<br> - rs1_b0_val == 4<br>                                                                |[0x80000268]:SRA8_U s11, t1, s10<br> [0x8000026c]:sw s11, 4(t0)<br>   |
|  19|[0x80002258]<br>0x00000001|- rs1 : x24<br> - rs2 : x11<br> - rd : x4<br> - rs1_b3_val == 2<br> - rs1_b2_val == -3<br> - rs1_b1_val == 1<br>                                                                 |[0x8000027c]:SRA8_U tp, s8, a1<br> [0x80000280]:sw tp, 8(t0)<br>      |
|  20|[0x8000225c]<br>0x00F000FE|- rs1 : x20<br> - rs2 : x8<br> - rd : x23<br>                                                                                                                                    |[0x80000290]:SRA8_U s7, s4, fp<br> [0x80000294]:sw s7, 12(t0)<br>     |
|  21|[0x80002260]<br>0x000800FF|- rs1 : x28<br> - rs2 : x27<br> - rd : x25<br> - rs1_b3_val == -1<br> - rs1_b1_val == -3<br>                                                                                     |[0x800002a4]:SRA8_U s9, t3, s11<br> [0x800002a8]:sw s9, 16(t0)<br>    |
|  22|[0x80002264]<br>0x00030000|- rs1 : x7<br> - rs2 : x29<br> - rd : x31<br> - rs1_b2_val == 85<br>                                                                                                             |[0x800002b8]:SRA8_U t6, t2, t4<br> [0x800002bc]:sw t6, 20(t0)<br>     |
|  23|[0x80002268]<br>0x02FF0000|- rs1 : x12<br> - rs2 : x23<br> - rd : x24<br> - rs1_b2_val == -33<br> - rs1_b0_val == -5<br>                                                                                    |[0x800002cc]:SRA8_U s8, a2, s7<br> [0x800002d0]:sw s8, 24(t0)<br>     |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x16<br> - rs2 : x28<br> - rd : x12<br> - rs1_b2_val == 8<br>                                                                                                             |[0x800002e0]:SRA8_U a2, a6, t3<br> [0x800002e4]:sw a2, 28(t0)<br>     |
|  25|[0x80002270]<br>0x000000FD|- rs1 : x8<br> - rs2 : x22<br> - rd : x3<br> - rs1_b0_val == -86<br>                                                                                                             |[0x800002f4]:SRA8_U gp, fp, s6<br> [0x800002f8]:sw gp, 32(t0)<br>     |
|  26|[0x80002274]<br>0x00000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x2<br> - rs1_b0_val == 0<br>                                                                                                               |[0x80000308]:SRA8_U sp, zero, a0<br> [0x8000030c]:sw sp, 36(t0)<br>   |
|  27|[0x80002278]<br>0x00202040|- rs1 : x19<br> - rs2 : x15<br> - rd : x11<br> - rs1_b2_val == 64<br> - rs1_b0_val == 127<br>                                                                                    |[0x8000031c]:SRA8_U a1, s3, a5<br> [0x80000320]:sw a1, 40(t0)<br>     |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x23<br> - rs2 : x14<br> - rd : x0<br> - rs1_b1_val == 85<br> - rs1_b0_val == -17<br>                                                                                     |[0x80000330]:SRA8_U zero, s7, a4<br> [0x80000334]:sw zero, 44(t0)<br> |
|  29|[0x80002280]<br>0xF8FCFCFC|- rs1 : x29<br> - rs2 : x18<br> - rd : x28<br> - rs1_b2_val == -9<br> - rs1_b1_val == -9<br> - rs1_b0_val == -9<br>                                                              |[0x80000344]:SRA8_U t3, t4, s2<br> [0x80000348]:sw t3, 48(t0)<br>     |
|  30|[0x80002284]<br>0xFB7FF7FD|- rs1 : x31<br> - rs2 : x0<br> - rd : x19<br> - rs1_b0_val == -3<br>                                                                                                             |[0x80000358]:SRA8_U s3, t6, zero<br> [0x8000035c]:sw s3, 52(t0)<br>   |
|  31|[0x80002288]<br>0xFE000102|- rs1 : x30<br> - rs2 : x12<br> - rd : x26<br> - rs1_b0_val == 32<br>                                                                                                            |[0x8000036c]:SRA8_U s10, t5, a2<br> [0x80000370]:sw s10, 56(t0)<br>   |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x1<br> - rs2 : x9<br> - rd : x10<br> - rs1_b2_val == 4<br>                                                                                                               |[0x80000380]:SRA8_U a0, ra, s1<br> [0x80000384]:sw a0, 60(t0)<br>     |
|  33|[0x80002290]<br>0x0400FCE0|- rs1_b2_val == -1<br>                                                                                                                                                           |[0x8000039c]:SRA8_U t6, t5, t4<br> [0x800003a0]:sw t6, 0(ra)<br>      |
|  34|[0x80002294]<br>0x08011002|- rs1_b1_val == 127<br> - rs1_b0_val == 16<br>                                                                                                                                   |[0x800003b0]:SRA8_U t6, t5, t4<br> [0x800003b4]:sw t6, 4(ra)<br>      |
|  35|[0x80002298]<br>0x00FF0000|- rs1_b0_val == 8<br>                                                                                                                                                            |[0x800003c4]:SRA8_U t6, t5, t4<br> [0x800003c8]:sw t6, 8(ra)<br>      |
|  36|[0x8000229c]<br>0x00000000|- rs1_b0_val == 2<br>                                                                                                                                                            |[0x800003d8]:SRA8_U t6, t5, t4<br> [0x800003dc]:sw t6, 12(ra)<br>     |
|  37|[0x800022a0]<br>0x0001FFFF|- rs1_b1_val == -33<br>                                                                                                                                                          |[0x800003ec]:SRA8_U t6, t5, t4<br> [0x800003f0]:sw t6, 16(ra)<br>     |
|  38|[0x800022a4]<br>0x00000000|- rs1_b1_val == 2<br> - rs1_b0_val == 1<br>                                                                                                                                      |[0x80000400]:SRA8_U t6, t5, t4<br> [0x80000404]:sw t6, 20(ra)<br>     |
|  39|[0x800022a8]<br>0xF020F801|- rs1_b1_val == -17<br>                                                                                                                                                          |[0x80000414]:SRA8_U t6, t5, t4<br> [0x80000418]:sw t6, 24(ra)<br>     |
|  40|[0x800022b0]<br>0xFEFFE002|- rs1_b1_val == -128<br>                                                                                                                                                         |[0x80000438]:SRA8_U t6, t5, t4<br> [0x8000043c]:sw t6, 32(ra)<br>     |
|  41|[0x800022b4]<br>0x04FF0400|- rs1_b1_val == 64<br>                                                                                                                                                           |[0x8000044c]:SRA8_U t6, t5, t4<br> [0x80000450]:sw t6, 36(ra)<br>     |
|  42|[0x800022b8]<br>0x00000100|- rs1_b1_val == 32<br>                                                                                                                                                           |[0x80000460]:SRA8_U t6, t5, t4<br> [0x80000464]:sw t6, 40(ra)<br>     |
|  43|[0x800022bc]<br>0x04010102|- rs1_b1_val == 4<br>                                                                                                                                                            |[0x80000474]:SRA8_U t6, t5, t4<br> [0x80000478]:sw t6, 44(ra)<br>     |
|  44|[0x800022c0]<br>0xFD010000|- rs1_b3_val == -86<br>                                                                                                                                                          |[0x80000488]:SRA8_U t6, t5, t4<br> [0x8000048c]:sw t6, 48(ra)<br>     |
|  45|[0x800022c4]<br>0x0000FF01|- rs1_b2_val == 32<br> - rs1_b1_val == -65<br> - rs1_b0_val == 85<br>                                                                                                            |[0x8000049c]:SRA8_U t6, t5, t4<br> [0x800004a0]:sw t6, 52(ra)<br>     |
