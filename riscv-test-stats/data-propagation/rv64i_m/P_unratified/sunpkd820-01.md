
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c00')]      |
| SIG_REGION                | [('0x80002210', '0x80002400', '62 dwords')]      |
| COV_LABELS                | sunpkd820      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sunpkd820-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 61      |
| STAT1                     | 60      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf8]:SUNPKD820 t6, t5
      [0x80000bfc]:sd t6, 296(sp)
 -- Signature Address: 0x800023f0 Data: 0xFFDFFFF9FF800055
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd820
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == -65
      - rs1_b6_val == -33
      - rs1_b5_val == -65
      - rs1_b3_val == -9
      - rs1_b2_val == -128
      - rs1_b1_val == 4
      - rs1_b0_val == 85






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

|s.no|            signature             |                                                                                                 coverpoints                                                                                                 |                                code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0004FFF6FFFDFF80|- opcode : sunpkd820<br> - rs1 : x20<br> - rd : x14<br> - rs1_b0_val == -128<br> - rs1_b7_val == 127<br> - rs1_b6_val == 4<br> - rs1_b2_val == -3<br>                                                        |[0x800003b8]:SUNPKD820 a4, s4<br> [0x800003bc]:sd a4, 0(a0)<br>      |
|   2|[0x80002218]<br>0xFFFEFFC00007007F|- rs1 : x30<br> - rd : x1<br> - rs1_b7_val == -86<br> - rs1_b6_val == -2<br> - rs1_b5_val == 32<br> - rs1_b3_val == 8<br> - rs1_b1_val == -17<br> - rs1_b0_val == 127<br>                                    |[0x800003e0]:SUNPKD820 ra, t5<br> [0x800003e4]:sd ra, 8(a0)<br>      |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x0<br> - rd : x8<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br> |[0x80000408]:SUNPKD820 fp, zero<br> [0x8000040c]:sd fp, 16(a0)<br>   |
|   4|[0x80002228]<br>0xFFEFFFFB00030007|- rs1 : x3<br> - rd : x31<br> - rs1_b7_val == -65<br> - rs1_b6_val == -17<br> - rs1_b5_val == -128<br> - rs1_b4_val == -5<br> - rs1_b3_val == 16<br> - rs1_b1_val == 4<br>                                   |[0x80000430]:SUNPKD820 t6, gp<br> [0x80000434]:sd t6, 24(a0)<br>     |
|   5|[0x80002230]<br>0x0040000800550008|- rs1 : x4<br> - rd : x3<br> - rs1_b7_val == -33<br> - rs1_b6_val == 64<br> - rs1_b4_val == 8<br> - rs1_b3_val == -2<br> - rs1_b2_val == 85<br> - rs1_b0_val == 8<br>                                        |[0x80000450]:SUNPKD820 gp, tp<br> [0x80000454]:sd gp, 32(a0)<br>     |
|   6|[0x80002238]<br>0xFFFF0005FFFAFFBF|- rs1 : x26<br> - rd : x27<br> - rs1_b7_val == -17<br> - rs1_b6_val == -1<br> - rs1_b5_val == -86<br> - rs1_b1_val == -128<br> - rs1_b0_val == -65<br>                                                       |[0x80000470]:SUNPKD820 s11, s10<br> [0x80000474]:sd s11, 40(a0)<br>  |
|   7|[0x80002240]<br>0xFFDFFFEF0040FFF7|- rs1 : x14<br> - rd : x24<br> - rs1_b7_val == -9<br> - rs1_b6_val == -33<br> - rs1_b4_val == -17<br> - rs1_b2_val == 64<br> - rs1_b0_val == -9<br>                                                          |[0x80000490]:SUNPKD820 s8, a4<br> [0x80000494]:sd s8, 48(a0)<br>     |
|   8|[0x80002248]<br>0xFFFD0003FFDF0005|- rs1 : x2<br> - rd : x5<br> - rs1_b7_val == -5<br> - rs1_b6_val == -3<br> - rs1_b2_val == -33<br> - rs1_b1_val == 1<br>                                                                                     |[0x800004b0]:SUNPKD820 t0, sp<br> [0x800004b4]:sd t0, 56(a0)<br>     |
|   9|[0x80002250]<br>0x00550001FFFFFFF7|- rs1 : x19<br> - rd : x11<br> - rs1_b7_val == -3<br> - rs1_b6_val == 85<br> - rs1_b4_val == 1<br> - rs1_b2_val == -1<br>                                                                                    |[0x800004d8]:SUNPKD820 a1, s3<br> [0x800004dc]:sd a1, 64(a0)<br>     |
|  10|[0x80002258]<br>0x0000FF80FFFCFFFD|- rs1 : x17<br> - rd : x20<br> - rs1_b7_val == -2<br> - rs1_b5_val == -5<br> - rs1_b4_val == -128<br> - rs1_b3_val == -17<br> - rs1_b1_val == -2<br> - rs1_b0_val == -3<br>                                  |[0x800004f8]:SUNPKD820 s4, a7<br> [0x800004fc]:sd s4, 72(a0)<br>     |
|  11|[0x80002260]<br>0xFFF7FFF60001FFEF|- rs1 : x18<br> - rd : x25<br> - rs1_b7_val == -128<br> - rs1_b6_val == -9<br> - rs1_b5_val == 1<br> - rs1_b2_val == 1<br> - rs1_b1_val == 32<br> - rs1_b0_val == -17<br>                                    |[0x80000520]:SUNPKD820 s9, s2<br> [0x80000524]:sd s9, 80(a0)<br>     |
|  12|[0x80002268]<br>0xFFFCFFFBFFBFFFDF|- rs1 : x12<br> - rd : x29<br> - rs1_b7_val == 64<br> - rs1_b2_val == -65<br> - rs1_b0_val == -33<br>                                                                                                        |[0x80000540]:SUNPKD820 t4, a2<br> [0x80000544]:sd t4, 88(a0)<br>     |
|  13|[0x80002270]<br>0x0002FFBFFFDFFFF8|- rs1 : x7<br> - rd : x9<br> - rs1_b7_val == 32<br> - rs1_b6_val == 2<br> - rs1_b4_val == -65<br>                                                                                                            |[0x80000560]:SUNPKD820 s1, t2<br> [0x80000564]:sd s1, 96(a0)<br>     |
|  14|[0x80002278]<br>0x0003FFBF0002FFFA|- rs1 : x13<br> - rd : x6<br> - rs1_b7_val == 16<br> - rs1_b5_val == -9<br> - rs1_b3_val == 127<br> - rs1_b2_val == 2<br> - rs1_b1_val == -3<br>                                                             |[0x80000580]:SUNPKD820 t1, a3<br> [0x80000584]:sd t1, 104(a0)<br>    |
|  15|[0x80002280]<br>0x00100010FF80FFF7|- rs1 : x28<br> - rd : x2<br> - rs1_b7_val == 8<br> - rs1_b6_val == 16<br> - rs1_b5_val == -17<br> - rs1_b4_val == 16<br> - rs1_b3_val == -9<br> - rs1_b2_val == -128<br>                                    |[0x800005a8]:SUNPKD820 sp, t3<br> [0x800005ac]:sd sp, 112(a0)<br>    |
|  16|[0x80002288]<br>0x007F0005FFEFFFFE|- rs1 : x23<br> - rd : x13<br> - rs1_b7_val == 4<br> - rs1_b6_val == 127<br> - rs1_b2_val == -17<br> - rs1_b0_val == -2<br>                                                                                  |[0x800005d0]:SUNPKD820 a3, s7<br> [0x800005d4]:sd a3, 120(a0)<br>    |
|  17|[0x80002290]<br>0xFFFDFFF9FFFDFFF7|- rs1 : x25<br> - rd : x17<br> - rs1_b7_val == 2<br> - rs1_b5_val == -65<br> - rs1_b1_val == 85<br>                                                                                                          |[0x800005f8]:SUNPKD820 a7, s9<br> [0x800005fc]:sd a7, 128(a0)<br>    |
|  18|[0x80002298]<br>0x0007FFF8003FFFF8|- rs1 : x27<br> - rd : x18<br> - rs1_b7_val == 1<br>                                                                                                                                                         |[0x80000618]:SUNPKD820 s2, s11<br> [0x8000061c]:sd s2, 136(a0)<br>   |
|  19|[0x800022a0]<br>0x0006004000000004|- rs1 : x5<br> - rd : x15<br> - rs1_b4_val == 64<br> - rs1_b0_val == 4<br>                                                                                                                                   |[0x80000630]:SUNPKD820 a5, t0<br> [0x80000634]:sd a5, 144(a0)<br>    |
|  20|[0x800022a8]<br>0x0006FFF80000FFEF|- rs1 : x15<br> - rd : x23<br> - rs1_b7_val == -1<br> - rs1_b3_val == 4<br>                                                                                                                                  |[0x80000648]:SUNPKD820 s7, a5<br> [0x8000064c]:sd s7, 152(a0)<br>    |
|  21|[0x800022b0]<br>0xFFAA000300010004|- rs1 : x29<br> - rd : x19<br> - rs1_b6_val == -86<br>                                                                                                                                                       |[0x80000668]:SUNPKD820 s3, t4<br> [0x8000066c]:sd s3, 160(a0)<br>    |
|  22|[0x800022b8]<br>0xFFBFFFF9FFF8FFF9|- rs1 : x8<br> - rd : x4<br> - rs1_b6_val == -65<br>                                                                                                                                                         |[0x80000690]:SUNPKD820 tp, fp<br> [0x80000694]:sd tp, 168(a0)<br>    |
|  23|[0x800022c0]<br>0xFFFB0040FFBFFFBF|- rs1 : x22<br> - rd : x30<br> - rs1_b6_val == -5<br> - rs1_b3_val == 32<br>                                                                                                                                 |[0x800006b0]:SUNPKD820 t5, s6<br> [0x800006b4]:sd t5, 176(a0)<br>    |
|  24|[0x800022c8]<br>0xFF8000010020FFEF|- rs1 : x10<br> - rd : x22<br> - rs1_b6_val == -128<br> - rs1_b3_val == 85<br> - rs1_b2_val == 32<br>                                                                                                        |[0x800006d8]:SUNPKD820 s6, a0<br> [0x800006dc]:sd s6, 0(sp)<br>      |
|  25|[0x800022d0]<br>0x00200020FFAAFFF8|- rs1 : x1<br> - rd : x21<br> - rs1_b6_val == 32<br> - rs1_b5_val == 2<br> - rs1_b4_val == 32<br> - rs1_b2_val == -86<br> - rs1_b1_val == -1<br>                                                             |[0x800006f8]:SUNPKD820 s5, ra<br> [0x800006fc]:sd s5, 8(sp)<br>      |
|  26|[0x800022d8]<br>0xFFFBFFEF0010FFFE|- rs1 : x6<br> - rd : x12<br> - rs1_b3_val == -5<br> - rs1_b2_val == 16<br> - rs1_b1_val == -5<br>                                                                                                           |[0x80000718]:SUNPKD820 a2, t1<br> [0x8000071c]:sd a2, 16(sp)<br>     |
|  27|[0x800022e0]<br>0x0003007FFFFF0020|- rs1 : x16<br> - rd : x10<br> - rs1_b4_val == 127<br> - rs1_b1_val == 64<br> - rs1_b0_val == 32<br>                                                                                                         |[0x80000740]:SUNPKD820 a0, a6<br> [0x80000744]:sd a0, 24(sp)<br>     |
|  28|[0x800022e8]<br>0xFFFBFFF800200004|- rs1 : x24<br> - rd : x16<br> - rs1_b1_val == 16<br>                                                                                                                                                        |[0x80000768]:SUNPKD820 a6, s8<br> [0x8000076c]:sd a6, 32(sp)<br>     |
|  29|[0x800022f0]<br>0x0040FFF600000040|- rs1 : x9<br> - rd : x28<br> - rs1_b3_val == 1<br> - rs1_b1_val == 8<br> - rs1_b0_val == 64<br>                                                                                                             |[0x80000790]:SUNPKD820 t3, s1<br> [0x80000794]:sd t3, 40(sp)<br>     |
|  30|[0x800022f8]<br>0xFFC0FFBFFFEFFFAA|- rs1 : x21<br> - rd : x7<br> - rs1_b5_val == 64<br> - rs1_b3_val == -128<br> - rs1_b1_val == 2<br> - rs1_b0_val == -86<br>                                                                                  |[0x800007b0]:SUNPKD820 t2, s5<br> [0x800007b4]:sd t2, 48(sp)<br>     |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x31<br> - rd : x0<br> - rs1_b0_val == 85<br>                                                                                                                                                         |[0x800007d0]:SUNPKD820 zero, t6<br> [0x800007d4]:sd zero, 56(sp)<br> |
|  32|[0x80002308]<br>0x0003FFFC0006FFFB|- rs1 : x11<br> - rd : x26<br> - rs1_b0_val == -5<br>                                                                                                                                                        |[0x800007f8]:SUNPKD820 s10, a1<br> [0x800007fc]:sd s10, 64(sp)<br>   |
|  33|[0x80002310]<br>0xFFF8FFF900100010|- rs1_b0_val == 16<br>                                                                                                                                                                                       |[0x80000818]:SUNPKD820 t6, t5<br> [0x8000081c]:sd t6, 72(sp)<br>     |
|  34|[0x80002318]<br>0x0008FFFFFFF60002|- rs1_b6_val == 8<br> - rs1_b5_val == 8<br> - rs1_b4_val == -1<br> - rs1_b0_val == 2<br>                                                                                                                     |[0x80000838]:SUNPKD820 t6, t5<br> [0x8000083c]:sd t6, 80(sp)<br>     |
|  35|[0x80002320]<br>0xFFF60004FFFE0001|- rs1_b4_val == 4<br> - rs1_b2_val == -2<br> - rs1_b0_val == 1<br>                                                                                                                                           |[0x80000860]:SUNPKD820 t6, t5<br> [0x80000864]:sd t6, 88(sp)<br>     |
|  36|[0x80002328]<br>0x0004007FFFFD0000|- rs1_b1_val == -33<br>                                                                                                                                                                                      |[0x80000888]:SUNPKD820 t6, t5<br> [0x8000088c]:sd t6, 96(sp)<br>     |
|  37|[0x80002330]<br>0xFFAA00000009FFFF|- rs1_b0_val == -1<br>                                                                                                                                                                                       |[0x800008b0]:SUNPKD820 t6, t5<br> [0x800008b4]:sd t6, 104(sp)<br>    |
|  38|[0x80002338]<br>0x000100030002003F|- rs1_b6_val == 1<br>                                                                                                                                                                                        |[0x800008d0]:SUNPKD820 t6, t5<br> [0x800008d4]:sd t6, 112(sp)<br>    |
|  39|[0x80002340]<br>0x0008FFDFFFF70000|- rs1_b4_val == -33<br> - rs1_b3_val == -33<br> - rs1_b2_val == -9<br>                                                                                                                                       |[0x800008f0]:SUNPKD820 t6, t5<br> [0x800008f4]:sd t6, 120(sp)<br>    |
|  40|[0x80002348]<br>0xFFDFFFFDFFDFFFBF|- rs1_b4_val == -3<br>                                                                                                                                                                                       |[0x80000910]:SUNPKD820 t6, t5<br> [0x80000914]:sd t6, 128(sp)<br>    |
|  41|[0x80002350]<br>0xFFFEFFFEFFF60003|- rs1_b4_val == -2<br> - rs1_b3_val == 2<br>                                                                                                                                                                 |[0x80000930]:SUNPKD820 t6, t5<br> [0x80000934]:sd t6, 136(sp)<br>    |
|  42|[0x80002358]<br>0x00400002FFDF0009|- rs1_b4_val == 2<br>                                                                                                                                                                                        |[0x80000950]:SUNPKD820 t6, t5<br> [0x80000954]:sd t6, 144(sp)<br>    |
|  43|[0x80002360]<br>0x0010FFFA00020020|- rs1_b5_val == 127<br> - rs1_b3_val == -86<br>                                                                                                                                                              |[0x80000970]:SUNPKD820 t6, t5<br> [0x80000974]:sd t6, 152(sp)<br>    |
|  44|[0x80002368]<br>0x00200001FFFFFFFF|- rs1_b3_val == -65<br>                                                                                                                                                                                      |[0x80000990]:SUNPKD820 t6, t5<br> [0x80000994]:sd t6, 160(sp)<br>    |
|  45|[0x80002370]<br>0x000400080009FFC0|- rs1_b3_val == -3<br>                                                                                                                                                                                       |[0x800009b8]:SUNPKD820 t6, t5<br> [0x800009bc]:sd t6, 168(sp)<br>    |
|  46|[0x80002378]<br>0xFFFB0020FFFF0001|- rs1_b5_val == 4<br> - rs1_b1_val == -9<br>                                                                                                                                                                 |[0x800009e0]:SUNPKD820 t6, t5<br> [0x800009e4]:sd t6, 176(sp)<br>    |
|  47|[0x80002380]<br>0x0005FFF6FFF80010|- rs1_b7_val == 85<br> - rs1_b3_val == -1<br>                                                                                                                                                                |[0x80000a00]:SUNPKD820 t6, t5<br> [0x80000a04]:sd t6, 184(sp)<br>    |
|  48|[0x80002388]<br>0xFFF70010007F0002|- rs1_b2_val == 127<br>                                                                                                                                                                                      |[0x80000a20]:SUNPKD820 t6, t5<br> [0x80000a24]:sd t6, 192(sp)<br>    |
|  49|[0x80002390]<br>0xFFBF0001FFFB0005|- rs1_b5_val == 85<br> - rs1_b2_val == -5<br>                                                                                                                                                                |[0x80000a40]:SUNPKD820 t6, t5<br> [0x80000a44]:sd t6, 200(sp)<br>    |
|  50|[0x80002398]<br>0xFFF900090007FFF9|- rs1_b5_val == -33<br> - rs1_b1_val == -86<br>                                                                                                                                                              |[0x80000a68]:SUNPKD820 t6, t5<br> [0x80000a6c]:sd t6, 208(sp)<br>    |
|  51|[0x800023a0]<br>0xFFF8FFF7007F0009|- rs1_b4_val == -9<br> - rs1_b1_val == -65<br>                                                                                                                                                               |[0x80000a88]:SUNPKD820 t6, t5<br> [0x80000a8c]:sd t6, 216(sp)<br>    |
|  52|[0x800023a8]<br>0xFFFD003FFF80FF80|- rs1_b5_val == -3<br>                                                                                                                                                                                       |[0x80000ab0]:SUNPKD820 t6, t5<br> [0x80000ab4]:sd t6, 224(sp)<br>    |
|  53|[0x800023b0]<br>0x0010FFFDFFFBFFFF|- rs1_b5_val == -2<br>                                                                                                                                                                                       |[0x80000ad0]:SUNPKD820 t6, t5<br> [0x80000ad4]:sd t6, 232(sp)<br>    |
|  54|[0x800023b8]<br>0xFFAA00070008FF80|- rs1_b2_val == 8<br>                                                                                                                                                                                        |[0x80000af8]:SUNPKD820 t6, t5<br> [0x80000afc]:sd t6, 240(sp)<br>    |
|  55|[0x800023c0]<br>0xFFF8FFFD00040009|- rs1_b2_val == 4<br>                                                                                                                                                                                        |[0x80000b20]:SUNPKD820 t6, t5<br> [0x80000b24]:sd t6, 248(sp)<br>    |
|  56|[0x800023c8]<br>0x0009FFF800010006|- rs1_b5_val == 16<br> - rs1_b1_val == 127<br>                                                                                                                                                               |[0x80000b40]:SUNPKD820 t6, t5<br> [0x80000b44]:sd t6, 256(sp)<br>    |
|  57|[0x800023d0]<br>0x0000FFF60006FFFE|- rs1_b5_val == -1<br>                                                                                                                                                                                       |[0x80000b60]:SUNPKD820 t6, t5<br> [0x80000b64]:sd t6, 264(sp)<br>    |
|  58|[0x800023d8]<br>0x0006FFAAFFFC0009|- rs1_b4_val == -86<br>                                                                                                                                                                                      |[0x80000b88]:SUNPKD820 t6, t5<br> [0x80000b8c]:sd t6, 272(sp)<br>    |
|  59|[0x800023e0]<br>0xFFF60055FFC00020|- rs1_b4_val == 85<br>                                                                                                                                                                                       |[0x80000bb0]:SUNPKD820 t6, t5<br> [0x80000bb4]:sd t6, 280(sp)<br>    |
|  60|[0x800023e8]<br>0x0000FFF7FFFBFFFE|- rs1_b3_val == 64<br>                                                                                                                                                                                       |[0x80000bd8]:SUNPKD820 t6, t5<br> [0x80000bdc]:sd t6, 288(sp)<br>    |
