
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | sunpkd810      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sunpkd810-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 63      |
| STAT1                     | 62      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf0]:SUNPKD810 t6, t5
      [0x80000bf4]:sd t6, 336(sp)
 -- Signature Address: 0x800023f8 Data: 0x0006FFDFFFFF003F
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd810
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 85
      - rs1_b4_val == -33
      - rs1_b2_val == 2
      - rs1_b1_val == -1






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

|s.no|            signature             |                                                                                           coverpoints                                                                                            |                                code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000100100007FF80|- opcode : sunpkd810<br> - rs1 : x18<br> - rd : x28<br> - rs1_b0_val == -128<br> - rs1_b7_val == -1<br> - rs1_b6_val == 16<br> - rs1_b5_val == 1<br> - rs1_b4_val == 16<br> - rs1_b2_val == 8<br> |[0x800003b0]:SUNPKD810 t3, s2<br> [0x800003b4]:sd t3, 0(t2)<br>      |
|   2|[0x80002218]<br>0xFF80FFF9FFBF0004|- rs1 : x23<br> - rd : x2<br> - rs1_b7_val == -86<br> - rs1_b6_val == 85<br> - rs1_b5_val == -128<br> - rs1_b3_val == -3<br> - rs1_b2_val == 64<br> - rs1_b1_val == -65<br> - rs1_b0_val == 4<br> |[0x800003d8]:SUNPKD810 sp, s7<br> [0x800003dc]:sd sp, 8(t2)<br>      |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x11<br> - rd : x0<br> - rs1_b7_val == 85<br> - rs1_b4_val == -33<br> - rs1_b2_val == 2<br> - rs1_b1_val == -1<br>                                                                         |[0x800003f8]:SUNPKD810 zero, a1<br> [0x800003fc]:sd zero, 16(t2)<br> |
|   4|[0x80002228]<br>0x00030009FFFC0007|- rs1 : x20<br> - rd : x26<br> - rs1_b7_val == 127<br>                                                                                                                                            |[0x80000418]:SUNPKD810 s10, s4<br> [0x8000041c]:sd s10, 24(t2)<br>   |
|   5|[0x80002230]<br>0x0005FFFF0004FFF6|- rs1 : x8<br> - rd : x15<br> - rs1_b7_val == -65<br> - rs1_b4_val == -1<br> - rs1_b3_val == -17<br> - rs1_b1_val == 4<br>                                                                        |[0x80000440]:SUNPKD810 a5, fp<br> [0x80000444]:sd a5, 32(t2)<br>     |
|   6|[0x80002238]<br>0x0002FFDFFFFEFFF8|- rs1 : x24<br> - rd : x3<br> - rs1_b7_val == -33<br> - rs1_b6_val == 8<br> - rs1_b5_val == 2<br> - rs1_b3_val == -2<br> - rs1_b2_val == 4<br> - rs1_b1_val == -2<br>                             |[0x80000460]:SUNPKD810 gp, s8<br> [0x80000464]:sd gp, 40(t2)<br>     |
|   7|[0x80002240]<br>0xFFFB003F0003FFFF|- rs1 : x2<br> - rd : x14<br> - rs1_b7_val == -17<br> - rs1_b5_val == -5<br> - rs1_b3_val == -65<br> - rs1_b2_val == -3<br> - rs1_b0_val == -1<br>                                                |[0x80000480]:SUNPKD810 a4, sp<br> [0x80000484]:sd a4, 48(t2)<br>     |
|   8|[0x80002248]<br>0xFFAA0040FFF9FFDF|- rs1 : x28<br> - rd : x11<br> - rs1_b7_val == -9<br> - rs1_b5_val == -86<br> - rs1_b4_val == 64<br> - rs1_b3_val == 1<br> - rs1_b0_val == -33<br>                                                |[0x800004a0]:SUNPKD810 a1, t3<br> [0x800004a4]:sd a1, 56(t2)<br>     |
|   9|[0x80002250]<br>0x0010FFAAFFF8FF80|- rs1 : x30<br> - rd : x23<br> - rs1_b7_val == -5<br> - rs1_b5_val == 16<br> - rs1_b4_val == -86<br>                                                                                              |[0x800004c0]:SUNPKD810 s7, t5<br> [0x800004c4]:sd s7, 64(t2)<br>     |
|  10|[0x80002258]<br>0xFFF8FFFE0008FFF6|- rs1 : x22<br> - rd : x10<br> - rs1_b7_val == -3<br> - rs1_b6_val == 1<br> - rs1_b4_val == -2<br> - rs1_b3_val == 8<br> - rs1_b2_val == -2<br> - rs1_b1_val == 8<br>                             |[0x800004e8]:SUNPKD810 a0, s6<br> [0x800004ec]:sd a0, 72(t2)<br>     |
|  11|[0x80002260]<br>0x0003FFF60002FFFA|- rs1 : x21<br> - rd : x31<br> - rs1_b7_val == -2<br> - rs1_b6_val == -33<br> - rs1_b3_val == 4<br> - rs1_b1_val == 2<br>                                                                         |[0x80000508]:SUNPKD810 t6, s5<br> [0x8000050c]:sd t6, 80(t2)<br>     |
|  12|[0x80002268]<br>0x0005000500060040|- rs1 : x5<br> - rd : x24<br> - rs1_b7_val == -128<br> - rs1_b2_val == 16<br> - rs1_b0_val == 64<br>                                                                                              |[0x80000528]:SUNPKD810 s8, t0<br> [0x8000052c]:sd s8, 88(t2)<br>     |
|  13|[0x80002270]<br>0x0007FF8000040002|- rs1 : x10<br> - rd : x19<br> - rs1_b7_val == 64<br> - rs1_b4_val == -128<br> - rs1_b0_val == 2<br>                                                                                              |[0x80000548]:SUNPKD810 s3, a0<br> [0x8000054c]:sd s3, 96(t2)<br>     |
|  14|[0x80002278]<br>0xFFDFFFFEFFFEFFFD|- rs1 : x4<br> - rd : x17<br> - rs1_b7_val == 32<br> - rs1_b6_val == 0<br> - rs1_b5_val == -33<br> - rs1_b0_val == -3<br>                                                                         |[0x80000568]:SUNPKD810 a7, tp<br> [0x8000056c]:sd a7, 104(t2)<br>    |
|  15|[0x80002280]<br>0x003F0055FFC00000|- rs1 : x19<br> - rd : x8<br> - rs1_b7_val == 16<br> - rs1_b6_val == -5<br> - rs1_b4_val == 85<br> - rs1_b3_val == 32<br> - rs1_b0_val == 0<br>                                                   |[0x8000058c]:SUNPKD810 fp, s3<br> [0x80000590]:sd fp, 112(t2)<br>    |
|  16|[0x80002288]<br>0xFFF9FFEF00010002|- rs1 : x25<br> - rd : x13<br> - rs1_b7_val == 8<br> - rs1_b6_val == -86<br> - rs1_b4_val == -17<br> - rs1_b2_val == 0<br> - rs1_b1_val == 1<br>                                                  |[0x800005ac]:SUNPKD810 a3, s9<br> [0x800005b0]:sd a3, 120(t2)<br>    |
|  17|[0x80002290]<br>0x0009000400000020|- rs1 : x1<br> - rd : x16<br> - rs1_b7_val == 4<br> - rs1_b4_val == 4<br> - rs1_b3_val == 16<br> - rs1_b1_val == 0<br> - rs1_b0_val == 32<br>                                                     |[0x800005cc]:SUNPKD810 a6, ra<br> [0x800005d0]:sd a6, 128(t2)<br>    |
|  18|[0x80002298]<br>0xFFFC0008FFF7FFFE|- rs1 : x27<br> - rd : x6<br> - rs1_b7_val == 2<br> - rs1_b4_val == 8<br> - rs1_b1_val == -9<br> - rs1_b0_val == -2<br>                                                                           |[0x800005f4]:SUNPKD810 t1, s11<br> [0x800005f8]:sd t1, 136(t2)<br>   |
|  19|[0x800022a0]<br>0xFFF80040FFF70008|- rs1 : x13<br> - rd : x12<br> - rs1_b7_val == 1<br> - rs1_b6_val == -1<br> - rs1_b0_val == 8<br>                                                                                                 |[0x8000061c]:SUNPKD810 a2, a3<br> [0x80000620]:sd a2, 144(t2)<br>    |
|  20|[0x800022a8]<br>0xFFF6FFFFFFF6FFC0|- rs1 : x6<br> - rd : x4<br> - rs1_b7_val == 0<br> - rs1_b3_val == 127<br> - rs1_b2_val == -5<br>                                                                                                 |[0x80000644]:SUNPKD810 tp, t1<br> [0x80000648]:sd tp, 0(sp)<br>      |
|  21|[0x800022b0]<br>0xFFF8FFFFFFF90040|- rs1 : x29<br> - rd : x9<br> - rs1_b6_val == 127<br> - rs1_b3_val == 85<br>                                                                                                                      |[0x80000664]:SUNPKD810 s1, t4<br> [0x80000668]:sd s1, 8(sp)<br>      |
|  22|[0x800022b8]<br>0x007FFFFD003F0010|- rs1 : x26<br> - rd : x25<br> - rs1_b6_val == -65<br> - rs1_b5_val == 127<br> - rs1_b4_val == -3<br> - rs1_b3_val == -5<br> - rs1_b0_val == 16<br>                                               |[0x8000068c]:SUNPKD810 s9, s10<br> [0x80000690]:sd s9, 16(sp)<br>    |
|  23|[0x800022c0]<br>0x007F00200040FFFF|- rs1 : x12<br> - rd : x22<br> - rs1_b6_val == -17<br> - rs1_b4_val == 32<br> - rs1_b3_val == 64<br> - rs1_b2_val == 32<br> - rs1_b1_val == 64<br>                                                |[0x800006ac]:SUNPKD810 s6, a2<br> [0x800006b0]:sd s6, 24(sp)<br>     |
|  24|[0x800022c8]<br>0xFFF9FFEF00550002|- rs1 : x3<br> - rd : x7<br> - rs1_b6_val == -9<br> - rs1_b1_val == 85<br>                                                                                                                        |[0x800006d4]:SUNPKD810 t2, gp<br> [0x800006d8]:sd t2, 32(sp)<br>     |
|  25|[0x800022d0]<br>0xFFFF0009FFFBFFFE|- rs1 : x9<br> - rd : x20<br> - rs1_b5_val == -1<br> - rs1_b1_val == -5<br>                                                                                                                       |[0x800006f4]:SUNPKD810 s4, s1<br> [0x800006f8]:sd s4, 40(sp)<br>     |
|  26|[0x800022d8]<br>0x007F0000FFFD0010|- rs1 : x31<br> - rd : x21<br> - rs1_b6_val == -128<br> - rs1_b4_val == 0<br> - rs1_b2_val == -86<br> - rs1_b1_val == -3<br>                                                                      |[0x80000714]:SUNPKD810 s5, t6<br> [0x80000718]:sd s5, 48(sp)<br>     |
|  27|[0x800022e0]<br>0xFFAAFFDFFF80FFFC|- rs1 : x15<br> - rd : x30<br> - rs1_b1_val == -128<br>                                                                                                                                           |[0x8000073c]:SUNPKD810 t5, a5<br> [0x80000740]:sd t5, 56(sp)<br>     |
|  28|[0x800022e8]<br>0x0010FFFB00200002|- rs1 : x7<br> - rd : x5<br> - rs1_b4_val == -5<br> - rs1_b1_val == 32<br>                                                                                                                        |[0x80000764]:SUNPKD810 t0, t2<br> [0x80000768]:sd t0, 64(sp)<br>     |
|  29|[0x800022f0]<br>0x0007000200100000|- rs1 : x17<br> - rd : x1<br> - rs1_b4_val == 2<br> - rs1_b1_val == 16<br>                                                                                                                        |[0x80000788]:SUNPKD810 ra, a7<br> [0x8000078c]:sd ra, 72(sp)<br>     |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x29<br> - rs1_b5_val == 0<br> - rs1_b3_val == 0<br>                                                                                                                         |[0x800007b0]:SUNPKD810 t4, zero<br> [0x800007b4]:sd t4, 80(sp)<br>   |
|  31|[0x80002300]<br>0xFFF60007007F0055|- rs1 : x16<br> - rd : x27<br> - rs1_b3_val == -1<br> - rs1_b1_val == 127<br> - rs1_b0_val == 85<br>                                                                                              |[0x800007d0]:SUNPKD810 s11, a6<br> [0x800007d4]:sd s11, 88(sp)<br>   |
|  32|[0x80002308]<br>0x00100010FFBF007F|- rs1 : x14<br> - rd : x18<br> - rs1_b0_val == 127<br>                                                                                                                                            |[0x800007f0]:SUNPKD810 s2, a4<br> [0x800007f4]:sd s2, 96(sp)<br>     |
|  33|[0x80002310]<br>0x0008FFF90001FFBF|- rs1_b5_val == 8<br> - rs1_b0_val == -65<br>                                                                                                                                                     |[0x80000810]:SUNPKD810 t6, t5<br> [0x80000814]:sd t6, 104(sp)<br>    |
|  34|[0x80002318]<br>0xFFF6FFDFFF80FFEF|- rs1_b2_val == -65<br> - rs1_b0_val == -17<br>                                                                                                                                                   |[0x80000838]:SUNPKD810 t6, t5<br> [0x8000083c]:sd t6, 112(sp)<br>    |
|  35|[0x80002320]<br>0x000600400005FFF7|- rs1_b0_val == -9<br>                                                                                                                                                                            |[0x80000858]:SUNPKD810 t6, t5<br> [0x8000085c]:sd t6, 120(sp)<br>    |
|  36|[0x80002328]<br>0x0008FFF70002FFFB|- rs1_b4_val == -9<br> - rs1_b0_val == -5<br>                                                                                                                                                     |[0x80000878]:SUNPKD810 t6, t5<br> [0x8000087c]:sd t6, 128(sp)<br>    |
|  37|[0x80002330]<br>0xFFFF000900090040|- rs1_b6_val == -3<br>                                                                                                                                                                            |[0x800008a0]:SUNPKD810 t6, t5<br> [0x800008a4]:sd t6, 136(sp)<br>    |
|  38|[0x80002338]<br>0xFFFB000300030001|- rs1_b0_val == 1<br>                                                                                                                                                                             |[0x800008c0]:SUNPKD810 t6, t5<br> [0x800008c4]:sd t6, 144(sp)<br>    |
|  39|[0x80002340]<br>0xFFFF0007FF80FFFA|- rs1_b6_val == -2<br> - rs1_b3_val == -33<br>                                                                                                                                                    |[0x800008e0]:SUNPKD810 t6, t5<br> [0x800008e4]:sd t6, 152(sp)<br>    |
|  40|[0x80002348]<br>0x0002FFC00005FFF8|- rs1_b6_val == 64<br>                                                                                                                                                                            |[0x80000900]:SUNPKD810 t6, t5<br> [0x80000904]:sd t6, 160(sp)<br>    |
|  41|[0x80002350]<br>0xFFFC0003FFFDFFBF|- rs1_b6_val == 32<br>                                                                                                                                                                            |[0x80000928]:SUNPKD810 t6, t5<br> [0x8000092c]:sd t6, 168(sp)<br>    |
|  42|[0x80002358]<br>0x003FFFBFFFF80020|- rs1_b4_val == -65<br>                                                                                                                                                                           |[0x80000948]:SUNPKD810 t6, t5<br> [0x8000094c]:sd t6, 176(sp)<br>    |
|  43|[0x80002360]<br>0x00020001FFF9FFF7|- rs1_b4_val == 1<br> - rs1_b3_val == 2<br>                                                                                                                                                       |[0x80000968]:SUNPKD810 t6, t5<br> [0x8000096c]:sd t6, 184(sp)<br>    |
|  44|[0x80002368]<br>0xFFF80002FF80FFFC|- rs1_b3_val == -86<br>                                                                                                                                                                           |[0x80000990]:SUNPKD810 t6, t5<br> [0x80000994]:sd t6, 192(sp)<br>    |
|  45|[0x80002370]<br>0x00000003003F0020|- rs1_b3_val == -9<br> - rs1_b2_val == -33<br>                                                                                                                                                    |[0x800009b8]:SUNPKD810 t6, t5<br> [0x800009bc]:sd t6, 200(sp)<br>    |
|  46|[0x80002378]<br>0xFFBF0004FF800055|- rs1_b5_val == -65<br> - rs1_b3_val == -128<br> - rs1_b2_val == -1<br>                                                                                                                           |[0x800009d8]:SUNPKD810 t6, t5<br> [0x800009dc]:sd t6, 208(sp)<br>    |
|  47|[0x80002380]<br>0x0004004000000002|- rs1_b5_val == 4<br>                                                                                                                                                                             |[0x800009f8]:SUNPKD810 t6, t5<br> [0x800009fc]:sd t6, 216(sp)<br>    |
|  48|[0x80002388]<br>0x0002FFEF0003FFBF|- rs1_b6_val == 4<br>                                                                                                                                                                             |[0x80000a18]:SUNPKD810 t6, t5<br> [0x80000a1c]:sd t6, 224(sp)<br>    |
|  49|[0x80002390]<br>0x0005FFAAFFFF0002|- rs1_b6_val == 2<br> - rs1_b2_val == -17<br>                                                                                                                                                     |[0x80000a38]:SUNPKD810 t6, t5<br> [0x80000a3c]:sd t6, 232(sp)<br>    |
|  50|[0x80002398]<br>0x00070002FFEFFFEF|- rs1_b2_val == 85<br> - rs1_b1_val == -17<br>                                                                                                                                                    |[0x80000a60]:SUNPKD810 t6, t5<br> [0x80000a64]:sd t6, 240(sp)<br>    |
|  51|[0x800023a0]<br>0xFFFBFFFFFF80FFEF|- rs1_b2_val == 127<br>                                                                                                                                                                           |[0x80000a80]:SUNPKD810 t6, t5<br> [0x80000a84]:sd t6, 248(sp)<br>    |
|  52|[0x800023a8]<br>0x0055007F00200055|- rs1_b5_val == 85<br> - rs1_b4_val == 127<br> - rs1_b2_val == 1<br>                                                                                                                              |[0x80000aa8]:SUNPKD810 t6, t5<br> [0x80000aac]:sd t6, 256(sp)<br>    |
|  53|[0x800023b0]<br>0xFFFCFFBF00030008|- rs1_b2_val == -9<br>                                                                                                                                                                            |[0x80000acc]:SUNPKD810 t6, t5<br> [0x80000ad0]:sd t6, 264(sp)<br>    |
|  54|[0x800023b8]<br>0xFFEFFFFFFFFF0003|- rs1_b5_val == -17<br>                                                                                                                                                                           |[0x80000aec]:SUNPKD810 t6, t5<br> [0x80000af0]:sd t6, 272(sp)<br>    |
|  55|[0x800023c0]<br>0xFFF7FFF9FFEF0000|- rs1_b5_val == -9<br>                                                                                                                                                                            |[0x80000b0c]:SUNPKD810 t6, t5<br> [0x80000b10]:sd t6, 280(sp)<br>    |
|  56|[0x800023c8]<br>0xFFFD0010FFFC0008|- rs1_b5_val == -3<br>                                                                                                                                                                            |[0x80000b2c]:SUNPKD810 t6, t5<br> [0x80000b30]:sd t6, 288(sp)<br>    |
|  57|[0x800023d0]<br>0xFFFE00550009007F|- rs1_b5_val == -2<br>                                                                                                                                                                            |[0x80000b4c]:SUNPKD810 t6, t5<br> [0x80000b50]:sd t6, 296(sp)<br>    |
|  58|[0x800023d8]<br>0x0040000600010005|- rs1_b5_val == 64<br>                                                                                                                                                                            |[0x80000b6c]:SUNPKD810 t6, t5<br> [0x80000b70]:sd t6, 304(sp)<br>    |
|  59|[0x800023e0]<br>0x00000005FFAA0003|- rs1_b1_val == -86<br>                                                                                                                                                                           |[0x80000b94]:SUNPKD810 t6, t5<br> [0x80000b98]:sd t6, 312(sp)<br>    |
|  60|[0x800023e8]<br>0x0020FF8000060008|- rs1_b5_val == 32<br>                                                                                                                                                                            |[0x80000bb4]:SUNPKD810 t6, t5<br> [0x80000bb8]:sd t6, 320(sp)<br>    |
|  61|[0x800023f0]<br>0xFFAA0000FFDF0004|- rs1_b2_val == -128<br> - rs1_b1_val == -33<br>                                                                                                                                                  |[0x80000bd0]:SUNPKD810 t6, t5<br> [0x80000bd4]:sd t6, 328(sp)<br>    |
|  62|[0x80002400]<br>0x0009003FFFFFFFAA|- rs1_b0_val == -86<br>                                                                                                                                                                           |[0x80000c18]:SUNPKD810 t6, t5<br> [0x80000c1c]:sd t6, 344(sp)<br>    |
