
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004c0')]      |
| SIG_REGION                | [('0x80002210', '0x800022d0', '48 words')]      |
| COV_LABELS                | srl8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srl8.u-01.S    |
| Total Number of coverpoints| 194     |
| Total Coverpoints Hit     | 188      |
| Total Signature Updates   | 47      |
| STAT1                     | 45      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003b0]:SRL8_U t6, t5, t4
      [0x800003b4]:sw t6, 4(ra)
 -- Signature Address: 0x80002294 Data: 0x0000010F
 -- Redundant Coverpoints hit by the op
      - opcode : srl8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b2_val == 0
      - rs1_b0_val == 247




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000049c]:SRL8_U t6, t5, t4
      [0x800004a0]:sw t6, 52(ra)
 -- Signature Address: 0x800022c4 Data: 0x2070040A
 -- Redundant Coverpoints hit by the op
      - opcode : srl8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == 64
      - rs1_b2_val == 223






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

|s.no|        signature         |                                                                                 coverpoints                                                                                  |                                 code                                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : srl8.u<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs2_val == 5<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> |[0x8000010c]:SRL8_U sp, sp, sp<br> [0x80000110]:sw sp, 0(t2)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs2_val == 3<br>                                                                                      |[0x80000120]:SRL8_U t5, s8, s8<br> [0x80000124]:sw t5, 4(t2)<br>      |
|   3|[0x80002218]<br>0x00000400|- rs1 : x11<br> - rs2 : x5<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 6<br> - rs1_b2_val == 4<br> - rs1_b1_val == 254<br>                   |[0x80000134]:SRL8_U fp, a1, t0<br> [0x80000138]:sw fp, 8(t2)<br>      |
|   4|[0x8000221c]<br>0x02010101|- rs1 : x17<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == 4<br> - rs1_b3_val == 32<br>                                                               |[0x80000148]:SRL8_U t3, a7, t3<br> [0x8000014c]:sw t3, 12(t2)<br>     |
|   5|[0x80002220]<br>0x303F0302|- rs1 : x25<br> - rs2 : x17<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs2_val == 2<br> - rs1_b3_val == 191<br> - rs1_b2_val == 251<br>                                      |[0x8000015c]:SRL8_U s9, s9, a7<br> [0x80000160]:sw s9, 16(t2)<br>     |
|   6|[0x80002224]<br>0x7E40057F|- rs1 : x15<br> - rs2 : x8<br> - rd : x4<br> - rs2_val == 1<br> - rs1_b3_val == 251<br> - rs1_b2_val == 128<br> - rs1_b0_val == 254<br>                                       |[0x80000170]:SRL8_U tp, a5, fp<br> [0x80000174]:sw tp, 20(t2)<br>     |
|   7|[0x80002228]<br>0xAA10F7DF|- rs1 : x1<br> - rs2 : x6<br> - rd : x17<br> - rs1_b3_val == 170<br> - rs1_b2_val == 16<br> - rs1_b1_val == 247<br> - rs1_b0_val == 223<br>                                   |[0x80000184]:SRL8_U a7, ra, t1<br> [0x80000188]:sw a7, 24(t2)<br>     |
|   8|[0x8000222c]<br>0x0B020200|- rs1 : x30<br> - rs2 : x23<br> - rd : x14<br> - rs1_b3_val == 85<br> - rs1_b0_val == 2<br>                                                                                   |[0x80000198]:SRL8_U a4, t5, s7<br> [0x8000019c]:sw a4, 28(t2)<br>     |
|   9|[0x80002230]<br>0x7F0FFBF7|- rs1 : x14<br> - rs2 : x31<br> - rd : x29<br> - rs1_b3_val == 127<br> - rs1_b1_val == 251<br> - rs1_b0_val == 247<br>                                                        |[0x800001ac]:SRL8_U t4, a4, t6<br> [0x800001b0]:sw t4, 32(t2)<br>     |
|  10|[0x80002234]<br>0x3802043F|- rs1 : x9<br> - rs2 : x30<br> - rd : x21<br> - rs1_b3_val == 223<br> - rs1_b2_val == 8<br> - rs1_b1_val == 16<br> - rs1_b0_val == 251<br>                                    |[0x800001c0]:SRL8_U s5, s1, t5<br> [0x800001c4]:sw s5, 36(t2)<br>     |
|  11|[0x80002238]<br>0x1F010201|- rs1 : x18<br> - rs2 : x3<br> - rd : x27<br> - rs1_b3_val == 247<br>                                                                                                         |[0x800001d4]:SRL8_U s11, s2, gp<br> [0x800001d8]:sw s11, 40(t2)<br>   |
|  12|[0x8000223c]<br>0x04040000|- rs1 : x12<br> - rs2 : x14<br> - rd : x16<br> - rs1_b3_val == 253<br> - rs1_b2_val == 254<br>                                                                                |[0x800001e8]:SRL8_U a6, a2, a4<br> [0x800001ec]:sw a6, 44(t2)<br>     |
|  13|[0x80002240]<br>0x02000000|- rs1 : x31<br> - rs2 : x15<br> - rd : x26<br> - rs1_b3_val == 254<br>                                                                                                        |[0x800001fc]:SRL8_U s10, t6, a5<br> [0x80000200]:sw s10, 48(t2)<br>   |
|  14|[0x80002244]<br>0x10001001|- rs1 : x20<br> - rs2 : x27<br> - rd : x9<br> - rs1_b3_val == 128<br> - rs1_b2_val == 2<br> - rs1_b1_val == 128<br>                                                           |[0x80000210]:SRL8_U s1, s4, s11<br> [0x80000214]:sw s1, 52(t2)<br>    |
|  15|[0x80002248]<br>0x00000000|- rs1 : x5<br> - rs2 : x19<br> - rd : x0<br> - rs1_b3_val == 64<br> - rs1_b2_val == 223<br>                                                                                   |[0x80000224]:SRL8_U zero, t0, s3<br> [0x80000228]:sw zero, 56(t2)<br> |
|  16|[0x8000224c]<br>0x10FDFF05|- rs1 : x4<br> - rs2 : x25<br> - rd : x5<br> - rs1_b3_val == 16<br> - rs1_b2_val == 253<br> - rs1_b1_val == 255<br>                                                           |[0x80000240]:SRL8_U t0, tp, s9<br> [0x80000244]:sw t0, 0(sp)<br>      |
|  17|[0x80002250]<br>0x00000000|- rs1 : x29<br> - rs2 : x4<br> - rd : x10<br> - rs1_b3_val == 4<br>                                                                                                           |[0x80000254]:SRL8_U a0, t4, tp<br> [0x80000258]:sw a0, 4(sp)<br>      |
|  18|[0x80002254]<br>0x02030707|- rs1 : x6<br> - rs2 : x16<br> - rd : x23<br> - rs1_b3_val == 2<br>                                                                                                           |[0x80000268]:SRL8_U s7, t1, a6<br> [0x8000026c]:sw s7, 8(sp)<br>      |
|  19|[0x80002258]<br>0x00000402|- rs1 : x23<br> - rs2 : x1<br> - rd : x7<br> - rs1_b3_val == 1<br> - rs1_b2_val == 1<br> - rs1_b0_val == 8<br>                                                                |[0x8000027c]:SRL8_U t2, s7, ra<br> [0x80000280]:sw t2, 12(sp)<br>     |
|  20|[0x8000225c]<br>0x40043003|- rs1 : x22<br> - rs2 : x13<br> - rd : x31<br> - rs1_b3_val == 255<br> - rs1_b1_val == 191<br>                                                                                |[0x80000290]:SRL8_U t6, s6, a3<br> [0x80000294]:sw t6, 16(sp)<br>     |
|  21|[0x80002260]<br>0x000F20FF|- rs1 : x16<br> - rs2 : x21<br> - rd : x19<br> - rs1_b1_val == 32<br> - rs1_b0_val == 255<br>                                                                                 |[0x800002a4]:SRL8_U s3, a6, s5<br> [0x800002a8]:sw s3, 20(sp)<br>     |
|  22|[0x80002264]<br>0x0C55010C|- rs1 : x8<br> - rs2 : x18<br> - rd : x22<br> - rs1_b2_val == 85<br> - rs1_b1_val == 1<br>                                                                                    |[0x800002b8]:SRL8_U s6, fp, s2<br> [0x800002bc]:sw s6, 24(sp)<br>     |
|  23|[0x80002268]<br>0x037F00EF|- rs1 : x27<br> - rs2 : x7<br> - rd : x3<br> - rs1_b2_val == 127<br> - rs1_b0_val == 239<br>                                                                                  |[0x800002cc]:SRL8_U gp, s11, t2<br> [0x800002d0]:sw gp, 28(sp)<br>    |
|  24|[0x8000226c]<br>0x01010001|- rs1 : x13<br> - rs2 : x22<br> - rd : x24<br> - rs1_b2_val == 170<br> - rs1_b0_val == 85<br>                                                                                 |[0x800002e0]:SRL8_U s8, a3, s6<br> [0x800002e4]:sw s8, 32(sp)<br>     |
|  25|[0x80002270]<br>0x00040002|- rs1 : x7<br> - rs2 : x11<br> - rd : x18<br> - rs1_b2_val == 255<br> - rs1_b0_val == 127<br>                                                                                 |[0x800002f4]:SRL8_U s2, t2, a1<br> [0x800002f8]:sw s2, 36(sp)<br>     |
|  26|[0x80002274]<br>0x60600760|- rs1 : x21<br> - rs2 : x20<br> - rd : x15<br> - rs1_b2_val == 191<br> - rs1_b0_val == 191<br>                                                                                |[0x80000308]:SRL8_U a5, s5, s4<br> [0x8000030c]:sw a5, 40(sp)<br>     |
|  27|[0x80002278]<br>0x01020004|- rs1 : x19<br> - rs2 : x12<br> - rd : x13<br> - rs1_b0_val == 253<br>                                                                                                        |[0x8000031c]:SRL8_U a3, s3, a2<br> [0x80000320]:sw a3, 44(sp)<br>     |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x1<br> - rs1_b0_val == 0<br>                                                                                                            |[0x80000330]:SRL8_U ra, zero, a0<br> [0x80000334]:sw ra, 48(sp)<br>   |
|  29|[0x80002280]<br>0x050E1240|- rs1 : x26<br> - rs2 : x0<br> - rd : x12<br> - rs1_b0_val == 64<br>                                                                                                          |[0x80000344]:SRL8_U a2, s10, zero<br> [0x80000348]:sw a2, 52(sp)<br>  |
|  30|[0x80002284]<br>0x01020004|- rs1 : x3<br> - rs2 : x9<br> - rd : x6<br> - rs1_b1_val == 2<br> - rs1_b0_val == 32<br>                                                                                      |[0x80000358]:SRL8_U t1, gp, s1<br> [0x8000035c]:sw t1, 56(sp)<br>     |
|  31|[0x80002288]<br>0x00000200|- rs1 : x10<br> - rs2 : x26<br> - rd : x20<br> - rs1_b1_val == 223<br> - rs1_b0_val == 4<br>                                                                                  |[0x8000036c]:SRL8_U s4, a0, s10<br> [0x80000370]:sw s4, 60(sp)<br>    |
|  32|[0x8000228c]<br>0x40100300|- rs1 : x28<br> - rs2 : x29<br> - rd : x11<br> - rs1_b2_val == 64<br> - rs1_b0_val == 1<br>                                                                                   |[0x80000380]:SRL8_U a1, t3, t4<br> [0x80000384]:sw a1, 64(sp)<br>     |
|  33|[0x80002290]<br>0x01000000|- rs1_b2_val == 32<br>                                                                                                                                                        |[0x8000039c]:SRL8_U t6, t5, t4<br> [0x800003a0]:sw t6, 0(ra)<br>      |
|  34|[0x80002298]<br>0x153F2B08|- rs1_b1_val == 170<br>                                                                                                                                                       |[0x800003c4]:SRL8_U t6, t5, t4<br> [0x800003c8]:sw t6, 8(ra)<br>      |
|  35|[0x8000229c]<br>0x60092B05|- rs1_b1_val == 85<br>                                                                                                                                                        |[0x800003d8]:SRL8_U t6, t5, t4<br> [0x800003dc]:sw t6, 12(ra)<br>     |
|  36|[0x800022a0]<br>0x0001101F|- rs1_b1_val == 127<br>                                                                                                                                                       |[0x800003ec]:SRL8_U t6, t5, t4<br> [0x800003f0]:sw t6, 16(ra)<br>     |
|  37|[0x800022a4]<br>0x01021E08|- rs1_b1_val == 239<br>                                                                                                                                                       |[0x80000400]:SRL8_U t6, t5, t4<br> [0x80000404]:sw t6, 20(ra)<br>     |
|  38|[0x800022a8]<br>0x08100800|- rs1_b1_val == 64<br>                                                                                                                                                        |[0x80000410]:SRL8_U t6, t5, t4<br> [0x80000414]:sw t6, 24(ra)<br>     |
|  39|[0x800022ac]<br>0x067E0409|- rs1_b1_val == 8<br>                                                                                                                                                         |[0x80000424]:SRL8_U t6, t5, t4<br> [0x80000428]:sw t6, 28(ra)<br>     |
|  40|[0x800022b0]<br>0x20050104|- rs1_b1_val == 4<br>                                                                                                                                                         |[0x80000438]:SRL8_U t6, t5, t4<br> [0x8000043c]:sw t6, 32(ra)<br>     |
|  41|[0x800022b4]<br>0x02000200|- rs1_b3_val == 239<br> - rs1_b1_val == 253<br>                                                                                                                               |[0x8000044c]:SRL8_U t6, t5, t4<br> [0x80000450]:sw t6, 36(ra)<br>     |
|  42|[0x800022b8]<br>0x04040100|- rs1_b2_val == 239<br>                                                                                                                                                       |[0x80000460]:SRL8_U t6, t5, t4<br> [0x80000464]:sw t6, 40(ra)<br>     |
|  43|[0x800022bc]<br>0x00050001|- rs1_b3_val == 8<br> - rs1_b0_val == 16<br>                                                                                                                                  |[0x80000474]:SRL8_U t6, t5, t4<br> [0x80000478]:sw t6, 44(ra)<br>     |
|  44|[0x800022c0]<br>0x1E1F1C15|- rs1_b2_val == 247<br> - rs1_b0_val == 170<br>                                                                                                                               |[0x80000488]:SRL8_U t6, t5, t4<br> [0x8000048c]:sw t6, 48(ra)<br>     |
|  45|[0x800022c8]<br>0x03038040|- rs1_b0_val == 128<br>                                                                                                                                                       |[0x800004b0]:SRL8_U t6, t5, t4<br> [0x800004b4]:sw t6, 56(ra)<br>     |
