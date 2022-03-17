
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e80')]      |
| SIG_REGION                | [('0x80002210', '0x80002430', '68 dwords')]      |
| COV_LABELS                | srl8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srl8.u-01.S    |
| Total Number of coverpoints| 274     |
| Total Coverpoints Hit     | 268      |
| Total Signature Updates   | 68      |
| STAT1                     | 67      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e70]:SRL8_U t6, t5, t4
      [0x80000e74]:sd t6, 288(ra)
 -- Signature Address: 0x80002428 Data: 0x0002000001000001
 -- Redundant Coverpoints hit by the op
      - opcode : srl8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val == 16
      - rs1_b6_val == 255
      - rs1_b5_val == 1
      - rs1_b3_val == 64
      - rs1_b0_val == 170






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

|s.no|            signature             |                                                                                                                                    coverpoints                                                                                                                                    |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : srl8.u<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs2_val == 5<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>           |[0x800003bc]:SRL8_U s9, a4, a4<br> [0x800003c0]:sd s9, 0(tp)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs2_val == 3<br>                                                                                                                                                                                              |[0x800003e8]:SRL8_U ra, ra, ra<br> [0x800003ec]:sd ra, 8(tp)<br>      |
|   3|[0x80002220]<br>0x0004040004000004|- rs1 : x25<br> - rs2 : x23<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 6<br> - rs1_b6_val == 251<br> - rs1_b5_val == 255<br> - rs1_b4_val == 16<br> - rs1_b3_val == 251<br> - rs1_b2_val == 1<br> - rs1_b1_val == 2<br> - rs1_b0_val == 253<br> |[0x8000040c]:SRL8_U s3, s9, s7<br> [0x80000410]:sd s3, 16(tp)<br>     |
|   4|[0x80002228]<br>0x0500000500010B01|- rs1 : x26<br> - rs2 : x11<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs2_val == 4<br> - rs1_b7_val == 85<br> - rs1_b4_val == 85<br> - rs1_b1_val == 170<br>                                                                                                                     |[0x80000438]:SRL8_U s10, s10, a1<br> [0x8000043c]:sd s10, 24(tp)<br>  |
|   5|[0x80002230]<br>0x40021505013E0401|- rs1 : x12<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs2_val == 2<br> - rs1_b7_val == 255<br> - rs1_b5_val == 85<br> - rs1_b2_val == 247<br> - rs1_b0_val == 2<br>                                                                                              |[0x8000045c]:SRL8_U s5, a2, s5<br> [0x80000460]:sd s5, 32(tp)<br>     |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x24<br> - rd : x0<br> - rs2_val == 1<br> - rs1_b5_val == 8<br> - rs1_b3_val == 8<br> - rs1_b2_val == 4<br> - rs1_b1_val == 255<br>                                                                                                                         |[0x80000480]:SRL8_U zero, s6, s8<br> [0x80000484]:sd zero, 40(tp)<br> |
|   7|[0x80002240]<br>0x2B023F2003200405|- rs1 : x20<br> - rs2 : x26<br> - rd : x14<br> - rs1_b7_val == 170<br> - rs1_b5_val == 251<br> - rs1_b4_val == 128<br> - rs1_b2_val == 128<br>                                                                                                                                     |[0x800004ac]:SRL8_U a4, s4, s10<br> [0x800004b0]:sd a4, 48(tp)<br>    |
|   8|[0x80002248]<br>0x4000700110030007|- rs1 : x30<br> - rs2 : x27<br> - rd : x23<br> - rs1_b7_val == 127<br> - rs1_b5_val == 223<br> - rs1_b4_val == 1<br> - rs1_b3_val == 32<br>                                                                                                                                        |[0x800004d8]:SRL8_U s7, t5, s11<br> [0x800004dc]:sd s7, 56(tp)<br>    |
|   9|[0x80002250]<br>0x1802150110201E01|- rs1 : x11<br> - rs2 : x30<br> - rd : x29<br> - rs1_b7_val == 191<br> - rs1_b5_val == 170<br> - rs1_b3_val == 128<br> - rs1_b2_val == 254<br> - rs1_b1_val == 239<br>                                                                                                             |[0x80000504]:SRL8_U t4, a1, t5<br> [0x80000508]:sd t4, 64(tp)<br>     |
|  10|[0x80002258]<br>0x1C20020B181F0202|- rs1 : x17<br> - rs2 : x12<br> - rd : x2<br> - rs1_b7_val == 223<br> - rs1_b6_val == 254<br> - rs1_b3_val == 191<br> - rs1_b2_val == 251<br>                                                                                                                                      |[0x80000530]:SRL8_U sp, a7, a2<br> [0x80000534]:sd sp, 72(tp)<br>     |
|  11|[0x80002260]<br>0x0404000200000300|- rs1 : x15<br> - rs2 : x10<br> - rd : x22<br> - rs1_b7_val == 239<br> - rs1_b6_val == 255<br> - rs1_b0_val == 1<br>                                                                                                                                                               |[0x8000055c]:SRL8_U s6, a5, a0<br> [0x80000560]:sd s6, 80(tp)<br>     |
|  12|[0x80002268]<br>0x3F01023E04102038|- rs1 : x31<br> - rs2 : x28<br> - rd : x3<br> - rs1_b7_val == 253<br> - rs1_b6_val == 2<br> - rs1_b4_val == 247<br> - rs1_b3_val == 16<br> - rs1_b2_val == 64<br> - rs1_b1_val == 127<br> - rs1_b0_val == 223<br>                                                                  |[0x80000580]:SRL8_U gp, t6, t3<br> [0x80000584]:sd gp, 88(tp)<br>     |
|  13|[0x80002270]<br>0x4003032B01404002|- rs1 : x10<br> - rs2 : x3<br> - rd : x7<br> - rs1_b7_val == 254<br> - rs1_b4_val == 170<br> - rs1_b2_val == 255<br>                                                                                                                                                               |[0x800005a4]:SRL8_U t2, a0, gp<br> [0x800005a8]:sd t2, 96(tp)<br>     |
|  14|[0x80002278]<br>0x0400010107000808|- rs1 : x16<br> - rs2 : x13<br> - rd : x20<br> - rs1_b7_val == 128<br> - rs1_b5_val == 16<br> - rs1_b3_val == 223<br> - rs1_b1_val == 251<br>                                                                                                                                      |[0x800005c8]:SRL8_U s4, a6, a3<br> [0x800005cc]:sd s4, 104(tp)<br>    |
|  15|[0x80002280]<br>0x0801080020010001|- rs1 : x23<br> - rs2 : x9<br> - rd : x18<br> - rs1_b7_val == 64<br> - rs1_b5_val == 64<br> - rs1_b4_val == 2<br> - rs1_b3_val == 255<br> - rs1_b1_val == 1<br>                                                                                                                    |[0x800005ec]:SRL8_U s2, s7, s1<br> [0x800005f0]:sd s2, 112(tp)<br>    |
|  16|[0x80002288]<br>0x0402021F1E200104|- rs1 : x6<br> - rs2 : x31<br> - rd : x13<br> - rs1_b7_val == 32<br> - rs1_b4_val == 251<br> - rs1_b3_val == 239<br> - rs1_b2_val == 253<br> - rs1_b0_val == 32<br>                                                                                                                |[0x80000620]:SRL8_U a3, t1, t6<br> [0x80000624]:sd a3, 0(ra)<br>      |
|  17|[0x80002290]<br>0x10FF010F40050FAA|- rs1 : x4<br> - rs2 : x0<br> - rd : x6<br> - rs1_b7_val == 16<br> - rs1_b5_val == 1<br> - rs1_b3_val == 64<br> - rs1_b0_val == 170<br>                                                                                                                                            |[0x80000644]:SRL8_U t1, tp, zero<br> [0x80000648]:sd t1, 8(ra)<br>    |
|  18|[0x80002298]<br>0x0403200801087808|- rs1 : x19<br> - rs2 : x17<br> - rd : x5<br> - rs1_b7_val == 8<br> - rs1_b3_val == 1<br>                                                                                                                                                                                          |[0x80000670]:SRL8_U t0, s3, a7<br> [0x80000674]:sd t0, 16(ra)<br>     |
|  19|[0x800022a0]<br>0x02010803780A0206|- rs1 : x3<br> - rs2 : x18<br> - rd : x27<br> - rs1_b7_val == 4<br>                                                                                                                                                                                                                |[0x80000694]:SRL8_U s11, gp, s2<br> [0x80000698]:sd s11, 24(ra)<br>   |
|  20|[0x800022a8]<br>0x0000010400010000|- rs1 : x8<br> - rs2 : x2<br> - rd : x24<br> - rs1_b7_val == 2<br> - rs1_b4_val == 239<br> - rs1_b2_val == 32<br>                                                                                                                                                                  |[0x800006b8]:SRL8_U s8, fp, sp<br> [0x800006bc]:sd s8, 32(ra)<br>     |
|  21|[0x800022b0]<br>0x01090620FB400512|- rs1 : x9<br> - rs2 : x8<br> - rd : x4<br> - rs1_b7_val == 1<br> - rs1_b4_val == 32<br>                                                                                                                                                                                           |[0x800006dc]:SRL8_U tp, s1, fp<br> [0x800006e0]:sd tp, 40(ra)<br>     |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x6<br> - rd : x17<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                 |[0x80000708]:SRL8_U a7, zero, t1<br> [0x8000070c]:sd a7, 48(ra)<br>   |
|  23|[0x800022c0]<br>0x102B100A00028070|- rs1 : x2<br> - rs2 : x7<br> - rd : x16<br> - rs1_b6_val == 85<br> - rs1_b5_val == 32<br>                                                                                                                                                                                         |[0x8000072c]:SRL8_U a6, sp, t2<br> [0x80000730]:sd a6, 56(ra)<br>     |
|  24|[0x800022c8]<br>0x0110021C1F000020|- rs1 : x21<br> - rs2 : x16<br> - rd : x9<br> - rs1_b6_val == 127<br> - rs1_b4_val == 223<br> - rs1_b0_val == 255<br>                                                                                                                                                              |[0x80000750]:SRL8_U s1, s5, a6<br> [0x80000754]:sd s1, 64(ra)<br>     |
|  25|[0x800022d0]<br>0x00BF0A040CF7FF0C|- rs1 : x27<br> - rs2 : x15<br> - rd : x11<br> - rs1_b6_val == 191<br> - rs1_b4_val == 4<br>                                                                                                                                                                                       |[0x80000774]:SRL8_U a1, s11, a5<br> [0x80000778]:sd a1, 72(ra)<br>    |
|  26|[0x800022d8]<br>0x3C380140403C053F|- rs1 : x13<br> - rs2 : x20<br> - rd : x8<br> - rs1_b6_val == 223<br> - rs1_b4_val == 254<br> - rs1_b2_val == 239<br> - rs1_b0_val == 251<br>                                                                                                                                      |[0x80000798]:SRL8_U fp, a3, s4<br> [0x8000079c]:sd fp, 80(ra)<br>     |
|  27|[0x800022e0]<br>0x103C041001024015|- rs1 : x28<br> - rs2 : x5<br> - rd : x31<br> - rs1_b6_val == 239<br> - rs1_b4_val == 64<br> - rs1_b1_val == 254<br> - rs1_b0_val == 85<br>                                                                                                                                        |[0x800007bc]:SRL8_U t6, t3, t0<br> [0x800007c0]:sd t6, 88(ra)<br>     |
|  28|[0x800022e8]<br>0x0800010001010C0E|- rs1 : x24<br> - rs2 : x22<br> - rd : x28<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                             |[0x800007e8]:SRL8_U t3, s8, s6<br> [0x800007ec]:sd t3, 96(ra)<br>     |
|  29|[0x800022f0]<br>0x0002000000000200|- rs1 : x18<br> - rs2 : x29<br> - rd : x30<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                             |[0x80000814]:SRL8_U t5, s2, t4<br> [0x80000818]:sd t5, 104(ra)<br>    |
|  30|[0x800022f8]<br>0x021F100101001F00|- rs1 : x5<br> - rs2 : x4<br> - rd : x10<br> - rs1_b6_val == 247<br> - rs1_b5_val == 127<br> - rs1_b2_val == 2<br> - rs1_b1_val == 247<br>                                                                                                                                         |[0x80000840]:SRL8_U a0, t0, tp<br> [0x80000844]:sd a0, 112(ra)<br>    |
|  31|[0x80002300]<br>0x103C150030033F00|- rs1 : x7<br> - rs2 : x25<br> - rd : x12<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                              |[0x8000086c]:SRL8_U a2, t2, s9<br> [0x80000870]:sd a2, 120(ra)<br>    |
|  32|[0x80002308]<br>0x050303023E202038|- rs1 : x29<br> - rs2 : x19<br> - rd : x15<br> - rs1_b4_val == 8<br> - rs1_b3_val == 247<br> - rs1_b2_val == 127<br> - rs1_b1_val == 128<br>                                                                                                                                       |[0x800008a0]:SRL8_U a5, t4, s3<br> [0x800008a4]:sd a5, 0(ra)<br>      |
|  33|[0x80002310]<br>0x043E0304032B1004|- rs1_b2_val == 170<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                     |[0x800008cc]:SRL8_U t6, t5, t4<br> [0x800008d0]:sd t6, 8(ra)<br>      |
|  34|[0x80002318]<br>0x0704070607031004|- rs1_b1_val == 32<br>                                                                                                                                                                                                                                                             |[0x800008f8]:SRL8_U t6, t5, t4<br> [0x800008fc]:sd t6, 16(ra)<br>     |
|  35|[0x80002320]<br>0x010202001E020201|- rs1_b1_val == 16<br>                                                                                                                                                                                                                                                             |[0x80000924]:SRL8_U t6, t5, t4<br> [0x80000928]:sd t6, 24(ra)<br>     |
|  36|[0x80002328]<br>0x0801000700000008|- rs1_b7_val == 247<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                      |[0x80000950]:SRL8_U t6, t5, t4<br> [0x80000954]:sd t6, 32(ra)<br>     |
|  37|[0x80002330]<br>0x407F03097C2B0220|- rs1_b6_val == 253<br> - rs1_b2_val == 85<br> - rs1_b1_val == 4<br> - rs1_b0_val == 64<br>                                                                                                                                                                                        |[0x8000097c]:SRL8_U t6, t5, t4<br> [0x80000980]:sd t6, 40(ra)<br>     |
|  38|[0x80002338]<br>0xFB0613058004067F|- rs1_b7_val == 251<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                    |[0x800009a0]:SRL8_U t6, t5, t4<br> [0x800009a4]:sd t6, 48(ra)<br>     |
|  39|[0x80002340]<br>0x0001010000000003|- rs1_b6_val == 32<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                     |[0x800009c4]:SRL8_U t6, t5, t4<br> [0x800009c8]:sd t6, 56(ra)<br>     |
|  40|[0x80002348]<br>0x0407047F02604078|- rs1_b2_val == 191<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                    |[0x800009e8]:SRL8_U t6, t5, t4<br> [0x800009ec]:sd t6, 64(ra)<br>     |
|  41|[0x80002350]<br>0x0700010700000408|- rs1_b0_val == 247<br>                                                                                                                                                                                                                                                            |[0x80000a14]:SRL8_U t6, t5, t4<br> [0x80000a18]:sd t6, 72(ra)<br>     |
|  42|[0x80002358]<br>0x02150040053E2040|- rs1_b0_val == 254<br>                                                                                                                                                                                                                                                            |[0x80000a38]:SRL8_U t6, t5, t4<br> [0x80000a3c]:sd t6, 80(ra)<br>     |
|  43|[0x80002360]<br>0x0004FE7F0C03FB00|- rs1_b6_val == 4<br> - rs1_b5_val == 254<br> - rs1_b4_val == 127<br>                                                                                                                                                                                                              |[0x80000a5c]:SRL8_U t6, t5, t4<br> [0x80000a60]:sd t6, 88(ra)<br>     |
|  44|[0x80002368]<br>0x0401000300000400|- rs1_b4_val == 191<br>                                                                                                                                                                                                                                                            |[0x80000a80]:SRL8_U t6, t5, t4<br> [0x80000a84]:sd t6, 96(ra)<br>     |
|  45|[0x80002370]<br>0x0805000801000000|- rs1_b6_val == 170<br> - rs1_b4_val == 253<br>                                                                                                                                                                                                                                    |[0x80000aa4]:SRL8_U t6, t5, t4<br> [0x80000aa8]:sd t6, 104(ra)<br>    |
|  46|[0x80002378]<br>0x013C01003F2B2B00|- rs1_b5_val == 4<br>                                                                                                                                                                                                                                                              |[0x80000ad0]:SRL8_U t6, t5, t4<br> [0x80000ad4]:sd t6, 112(ra)<br>    |
|  47|[0x80002380]<br>0x0101000005010000|- rs1_b3_val == 170<br>                                                                                                                                                                                                                                                            |[0x80000afc]:SRL8_U t6, t5, t4<br> [0x80000b00]:sd t6, 120(ra)<br>    |
|  48|[0x80002388]<br>0x01010101101F081E|- rs1_b3_val == 127<br>                                                                                                                                                                                                                                                            |[0x80000b20]:SRL8_U t6, t5, t4<br> [0x80000b24]:sd t6, 128(ra)<br>    |
|  49|[0x80002390]<br>0xFDFD0511DF080F20|- rs1_b2_val == 8<br>                                                                                                                                                                                                                                                              |[0x80000b4c]:SRL8_U t6, t5, t4<br> [0x80000b50]:sd t6, 136(ra)<br>    |
|  50|[0x80002398]<br>0x0304040404030000|- rs1_b3_val == 253<br> - rs1_b2_val == 223<br>                                                                                                                                                                                                                                    |[0x80000b78]:SRL8_U t6, t5, t4<br> [0x80000b7c]:sd t6, 144(ra)<br>    |
|  51|[0x800023a0]<br>0x0110150420080404|- rs1_b6_val == 64<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                      |[0x80000ba4]:SRL8_U t6, t5, t4<br> [0x80000ba8]:sd t6, 152(ra)<br>    |
|  52|[0x800023a8]<br>0x0200000202000201|- rs1_b3_val == 254<br>                                                                                                                                                                                                                                                            |[0x80000bc8]:SRL8_U t6, t5, t4<br> [0x80000bcc]:sd t6, 160(ra)<br>    |
|  53|[0x800023b0]<br>0x0808000808000100|- rs1_b0_val == 8<br>                                                                                                                                                                                                                                                              |[0x80000bf4]:SRL8_U t6, t5, t4<br> [0x80000bf8]:sd t6, 168(ra)<br>    |
|  54|[0x800023b8]<br>0x0002000100000000|- rs1_b6_val == 128<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                      |[0x80000c20]:SRL8_U t6, t5, t4<br> [0x80000c24]:sd t6, 176(ra)<br>    |
|  55|[0x800023c0]<br>0x050C200D02AA0FFB|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                              |[0x80000c4c]:SRL8_U t6, t5, t4<br> [0x80000c50]:sd t6, 184(ra)<br>    |
|  56|[0x800023c8]<br>0x0000010003000000|- rs1_b6_val == 16<br>                                                                                                                                                                                                                                                             |[0x80000c78]:SRL8_U t6, t5, t4<br> [0x80000c7c]:sd t6, 192(ra)<br>    |
|  57|[0x800023d0]<br>0x7004010655077000|- rs1_b6_val == 8<br> - rs1_b5_val == 2<br>                                                                                                                                                                                                                                        |[0x80000ca4]:SRL8_U t6, t5, t4<br> [0x80000ca8]:sd t6, 200(ra)<br>    |
|  58|[0x800023d8]<br>0x030100800401040A|- rs1_b6_val == 1<br> - rs1_b4_val == 255<br>                                                                                                                                                                                                                                      |[0x80000cc8]:SRL8_U t6, t5, t4<br> [0x80000ccc]:sd t6, 208(ra)<br>    |
|  59|[0x800023e0]<br>0x02021801011C1F02|- rs1_b5_val == 191<br>                                                                                                                                                                                                                                                            |[0x80000cf4]:SRL8_U t6, t5, t4<br> [0x80000cf8]:sd t6, 216(ra)<br>    |
|  60|[0x800023e8]<br>0x03023C0340013015|- rs1_b5_val == 239<br>                                                                                                                                                                                                                                                            |[0x80000d18]:SRL8_U t6, t5, t4<br> [0x80000d1c]:sd t6, 224(ra)<br>    |
|  61|[0x800023f0]<br>0xF713F708FF0C0A03|- rs1_b5_val == 247<br>                                                                                                                                                                                                                                                            |[0x80000d44]:SRL8_U t6, t5, t4<br> [0x80000d48]:sd t6, 232(ra)<br>    |
|  62|[0x800023f8]<br>0x041020023C153C01|- rs1_b5_val == 128<br>                                                                                                                                                                                                                                                            |[0x80000d70]:SRL8_U t6, t5, t4<br> [0x80000d74]:sd t6, 240(ra)<br>    |
|  63|[0x80002400]<br>0x0401010401010F01|- rs1_b2_val == 16<br>                                                                                                                                                                                                                                                             |[0x80000d9c]:SRL8_U t6, t5, t4<br> [0x80000da0]:sd t6, 248(ra)<br>    |
|  64|[0x80002408]<br>0x2B013F3F30013C38|- rs1_b5_val == 253<br>                                                                                                                                                                                                                                                            |[0x80000dc8]:SRL8_U t6, t5, t4<br> [0x80000dcc]:sd t6, 256(ra)<br>    |
|  65|[0x80002410]<br>0x0700000801040300|- rs1_b1_val == 85<br>                                                                                                                                                                                                                                                             |[0x80000df4]:SRL8_U t6, t5, t4<br> [0x80000df8]:sd t6, 264(ra)<br>    |
|  66|[0x80002418]<br>0x0801010003050400|- rs1_b3_val == 85<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                       |[0x80000e20]:SRL8_U t6, t5, t4<br> [0x80000e24]:sd t6, 272(ra)<br>    |
|  67|[0x80002420]<br>0x1F01002001200210|- rs1_b0_val == 128<br>                                                                                                                                                                                                                                                            |[0x80000e4c]:SRL8_U t6, t5, t4<br> [0x80000e50]:sd t6, 280(ra)<br>    |
