
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000bb0')]      |
| SIG_REGION                | [('0x80002210', '0x800023e0', '58 dwords')]      |
| COV_LABELS                | sunpkd832      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sunpkd832-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 58      |
| STAT1                     | 56      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000990]:SUNPKD832 t6, t5
      [0x80000994]:sd t6, 184(gp)
 -- Signature Address: 0x80002360 Data: 0x00010010FFFA0006
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 1
      - rs1_b6_val == 16
      - rs1_b5_val == -33
      - rs1_b4_val == 0
      - rs1_b0_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba0]:SUNPKD832 t6, t5
      [0x80000ba4]:sd t6, 304(gp)
 -- Signature Address: 0x800023d8 Data: 0xFFF600040055FFF8
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b6_val == 4
      - rs1_b4_val == 16
      - rs1_b3_val == 85
      - rs1_b1_val == -5
      - rs1_b0_val == 2






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

|s.no|            signature             |                                                                                            coverpoints                                                                                             |                                code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFAFFFEFFF90055|- opcode : sunpkd832<br> - rs1 : x7<br> - rd : x10<br> - rs1_b0_val == -128<br> - rs1_b6_val == -2<br> - rs1_b5_val == 16<br> - rs1_b2_val == 85<br> - rs1_b1_val == 8<br>                          |[0x800003b8]:SUNPKD832 a0, t2<br> [0x800003bc]:sd a0, 0(fp)<br>      |
|   2|[0x80002218]<br>0xFFAA00040005FFFF|- rs1 : x22<br> - rd : x12<br> - rs1_b7_val == -86<br> - rs1_b6_val == 4<br> - rs1_b2_val == -1<br> - rs1_b0_val == 127<br>                                                                         |[0x800003d8]:SUNPKD832 a2, s6<br> [0x800003dc]:sd a2, 8(fp)<br>      |
|   3|[0x80002220]<br>0x0055FFFEFFFA007F|- rs1 : x29<br> - rd : x26<br> - rs1_b7_val == 85<br> - rs1_b4_val == 8<br> - rs1_b2_val == 127<br> - rs1_b1_val == -3<br>                                                                          |[0x800003f8]:SUNPKD832 s10, t4<br> [0x800003fc]:sd s10, 16(fp)<br>   |
|   4|[0x80002228]<br>0x007F0055FFC0FFFD|- rs1 : x17<br> - rd : x2<br> - rs1_b7_val == 127<br> - rs1_b6_val == 85<br> - rs1_b5_val == -1<br> - rs1_b4_val == -33<br> - rs1_b2_val == -3<br> - rs1_b1_val == 2<br> - rs1_b0_val == 64<br>     |[0x80000420]:SUNPKD832 sp, a7<br> [0x80000424]:sd sp, 24(fp)<br>     |
|   5|[0x80002230]<br>0xFFBF0020FFC0003F|- rs1 : x6<br> - rd : x17<br> - rs1_b7_val == -65<br> - rs1_b6_val == 32<br> - rs1_b5_val == -5<br> - rs1_b4_val == 1<br> - rs1_b0_val == -3<br>                                                    |[0x80000448]:SUNPKD832 a7, t1<br> [0x8000044c]:sd a7, 32(fp)<br>     |
|   6|[0x80002238]<br>0xFFDF00090020FFF9|- rs1 : x19<br> - rd : x28<br> - rs1_b7_val == -33<br> - rs1_b3_val == 32<br>                                                                                                                       |[0x80000470]:SUNPKD832 t3, s3<br> [0x80000474]:sd t3, 40(fp)<br>     |
|   7|[0x80002240]<br>0xFFEFFFDF00000003|- rs1 : x27<br> - rd : x3<br> - rs1_b7_val == -17<br> - rs1_b6_val == -33<br> - rs1_b3_val == 0<br> - rs1_b1_val == 1<br>                                                                           |[0x80000490]:SUNPKD832 gp, s11<br> [0x80000494]:sd gp, 48(fp)<br>    |
|   8|[0x80002248]<br>0xFFF7FFFFFFF7FFC0|- rs1 : x11<br> - rd : x21<br> - rs1_b7_val == -9<br> - rs1_b6_val == -1<br> - rs1_b5_val == -65<br> - rs1_b3_val == -9<br> - rs1_b1_val == 4<br> - rs1_b0_val == 4<br>                             |[0x800004b0]:SUNPKD832 s5, a1<br> [0x800004b4]:sd s5, 56(fp)<br>     |
|   9|[0x80002250]<br>0xFFFBFFDF00010005|- rs1 : x3<br> - rd : x5<br> - rs1_b7_val == -5<br> - rs1_b5_val == 127<br> - rs1_b3_val == 1<br> - rs1_b1_val == -2<br>                                                                            |[0x800004d0]:SUNPKD832 t0, gp<br> [0x800004d4]:sd t0, 64(fp)<br>     |
|  10|[0x80002258]<br>0x0000000000000000|- rs1 : x0<br> - rd : x7<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>              |[0x800004f0]:SUNPKD832 t2, zero<br> [0x800004f4]:sd t2, 72(fp)<br>   |
|  11|[0x80002260]<br>0xFFFEFFFE00060055|- rs1 : x15<br> - rd : x13<br> - rs1_b7_val == -2<br> - rs1_b5_val == -17<br>                                                                                                                       |[0x80000518]:SUNPKD832 a3, a5<br> [0x8000051c]:sd a3, 80(fp)<br>     |
|  12|[0x80002268]<br>0xFF80FFDFFFF60002|- rs1 : x24<br> - rd : x20<br> - rs1_b7_val == -128<br> - rs1_b5_val == -3<br> - rs1_b4_val == -17<br> - rs1_b2_val == 2<br> - rs1_b0_val == -17<br>                                                |[0x80000540]:SUNPKD832 s4, s8<br> [0x80000544]:sd s4, 88(fp)<br>     |
|  13|[0x80002270]<br>0x00400007FFDF0009|- rs1 : x30<br> - rd : x4<br> - rs1_b7_val == 64<br> - rs1_b4_val == 2<br> - rs1_b3_val == -33<br>                                                                                                  |[0x80000568]:SUNPKD832 tp, t5<br> [0x8000056c]:sd tp, 96(fp)<br>     |
|  14|[0x80002278]<br>0x0020FFAAFFF7003F|- rs1 : x9<br> - rd : x27<br> - rs1_b7_val == 32<br> - rs1_b6_val == -86<br> - rs1_b0_val == 8<br>                                                                                                  |[0x80000590]:SUNPKD832 s11, s1<br> [0x80000594]:sd s11, 104(fp)<br>  |
|  15|[0x80002280]<br>0x0010FF800010007F|- rs1 : x16<br> - rd : x6<br> - rs1_b7_val == 16<br> - rs1_b6_val == -128<br> - rs1_b5_val == -86<br> - rs1_b4_val == -5<br> - rs1_b3_val == 16<br> - rs1_b1_val == -86<br> - rs1_b0_val == -86<br> |[0x800005b8]:SUNPKD832 t1, a6<br> [0x800005bc]:sd t1, 112(fp)<br>    |
|  16|[0x80002288]<br>0x00080004FFF6FFEF|- rs1 : x13<br> - rd : x16<br> - rs1_b7_val == 8<br> - rs1_b4_val == 4<br> - rs1_b2_val == -17<br> - rs1_b0_val == 2<br>                                                                            |[0x800005e0]:SUNPKD832 a6, a3<br> [0x800005e4]:sd a6, 120(fp)<br>    |
|  17|[0x80002290]<br>0x0004FFF7FFAAFFF6|- rs1 : x23<br> - rd : x1<br> - rs1_b7_val == 4<br> - rs1_b6_val == -9<br> - rs1_b5_val == -2<br> - rs1_b3_val == -86<br> - rs1_b1_val == 16<br>                                                    |[0x80000608]:SUNPKD832 ra, s7<br> [0x8000060c]:sd ra, 128(fp)<br>    |
|  18|[0x80002298]<br>0x000200020040FF80|- rs1 : x4<br> - rd : x31<br> - rs1_b7_val == 2<br> - rs1_b6_val == 2<br> - rs1_b5_val == -128<br> - rs1_b4_val == -1<br> - rs1_b3_val == 64<br> - rs1_b2_val == -128<br>                           |[0x80000630]:SUNPKD832 t6, tp<br> [0x80000634]:sd t6, 136(fp)<br>    |
|  19|[0x800022a0]<br>0x0001FFFB0005FFF6|- rs1 : x18<br> - rd : x14<br> - rs1_b7_val == 1<br> - rs1_b6_val == -5<br> - rs1_b5_val == 32<br>                                                                                                  |[0x80000650]:SUNPKD832 a4, s2<br> [0x80000654]:sd a4, 144(fp)<br>    |
|  20|[0x800022a8]<br>0x0000000100080001|- rs1 : x12<br> - rd : x9<br> - rs1_b6_val == 1<br> - rs1_b4_val == 85<br> - rs1_b3_val == 8<br> - rs1_b2_val == 1<br>                                                                              |[0x80000678]:SUNPKD832 s1, a2<br> [0x8000067c]:sd s1, 0(gp)<br>      |
|  21|[0x800022b0]<br>0xFFFF007FFFFBFFBF|- rs1 : x8<br> - rd : x29<br> - rs1_b7_val == -1<br> - rs1_b6_val == 127<br> - rs1_b3_val == -5<br> - rs1_b2_val == -65<br> - rs1_b1_val == 85<br>                                                  |[0x80000698]:SUNPKD832 t4, fp<br> [0x8000069c]:sd t4, 8(gp)<br>      |
|  22|[0x800022b8]<br>0x003FFFBF0003FFAA|- rs1 : x14<br> - rd : x15<br> - rs1_b6_val == -65<br> - rs1_b2_val == -86<br> - rs1_b1_val == -128<br> - rs1_b0_val == -65<br>                                                                     |[0x800006b8]:SUNPKD832 a5, a4<br> [0x800006bc]:sd a5, 16(gp)<br>     |
|  23|[0x800022c0]<br>0xFFFFFFEF0008FFFB|- rs1 : x10<br> - rd : x22<br> - rs1_b6_val == -17<br> - rs1_b5_val == 2<br> - rs1_b2_val == -5<br> - rs1_b0_val == 32<br>                                                                          |[0x800006d8]:SUNPKD832 s6, a0<br> [0x800006dc]:sd s6, 24(gp)<br>     |
|  24|[0x800022c8]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br> - rs1_b4_val == 16<br> - rs1_b3_val == 85<br> - rs1_b1_val == -5<br>                                                                                                   |[0x80000700]:SUNPKD832 zero, ra<br> [0x80000704]:sd zero, 32(gp)<br> |
|  25|[0x800022d0]<br>0xFFFBFFF800010005|- rs1 : x20<br> - rd : x18<br> - rs1_b1_val == 64<br>                                                                                                                                               |[0x80000720]:SUNPKD832 s2, s4<br> [0x80000724]:sd s2, 40(gp)<br>     |
|  26|[0x800022d8]<br>0xFFFAFFFAFFFBFFFE|- rs1 : x26<br> - rd : x8<br> - rs1_b2_val == -2<br> - rs1_b1_val == 32<br>                                                                                                                         |[0x80000748]:SUNPKD832 fp, s10<br> [0x8000074c]:sd fp, 48(gp)<br>    |
|  27|[0x800022e0]<br>0x0000FFF700060004|- rs1 : x21<br> - rd : x19<br> - rs1_b5_val == 85<br> - rs1_b4_val == -128<br> - rs1_b2_val == 4<br> - rs1_b0_val == 85<br>                                                                         |[0x80000768]:SUNPKD832 s3, s5<br> [0x8000076c]:sd s3, 56(gp)<br>     |
|  28|[0x800022e8]<br>0x0055FFFB0003FFFD|- rs1 : x25<br> - rd : x11<br> - rs1_b1_val == -1<br>                                                                                                                                               |[0x80000788]:SUNPKD832 a1, s9<br> [0x8000078c]:sd a1, 64(gp)<br>     |
|  29|[0x800022f0]<br>0x00030040FFFC0010|- rs1 : x5<br> - rd : x25<br> - rs1_b6_val == 64<br> - rs1_b2_val == 16<br> - rs1_b0_val == -33<br>                                                                                                 |[0x800007a8]:SUNPKD832 s9, t0<br> [0x800007ac]:sd s9, 72(gp)<br>     |
|  30|[0x800022f8]<br>0x00050040FFDF0000|- rs1 : x28<br> - rd : x24<br> - rs1_b4_val == 127<br> - rs1_b0_val == -9<br>                                                                                                                       |[0x800007c8]:SUNPKD832 s8, t3<br> [0x800007cc]:sd s8, 80(gp)<br>     |
|  31|[0x80002300]<br>0xFFF6FFFE00070006|- rs1 : x2<br> - rd : x23<br> - rs1_b0_val == -5<br>                                                                                                                                                |[0x800007e8]:SUNPKD832 s7, sp<br> [0x800007ec]:sd s7, 88(gp)<br>     |
|  32|[0x80002308]<br>0xFFAAFFFC0004FFEF|- rs1 : x31<br> - rd : x30<br> - rs1_b3_val == 4<br> - rs1_b0_val == -2<br>                                                                                                                         |[0x80000808]:SUNPKD832 t5, t6<br> [0x8000080c]:sd t5, 96(gp)<br>     |
|  33|[0x80002310]<br>0x000700000006FF80|- rs1_b0_val == 16<br>                                                                                                                                                                              |[0x80000828]:SUNPKD832 t6, t5<br> [0x8000082c]:sd t6, 104(gp)<br>    |
|  34|[0x80002318]<br>0x0006FFFDFFFD007F|- rs1_b6_val == -3<br> - rs1_b3_val == -3<br>                                                                                                                                                       |[0x80000848]:SUNPKD832 t6, t5<br> [0x8000084c]:sd t6, 112(gp)<br>    |
|  35|[0x80002320]<br>0x004000550040FFBF|- rs1_b0_val == 1<br>                                                                                                                                                                               |[0x80000870]:SUNPKD832 t6, t5<br> [0x80000874]:sd t6, 120(gp)<br>    |
|  36|[0x80002328]<br>0xFFAA00100010FFF7|- rs1_b6_val == 16<br> - rs1_b4_val == -65<br> - rs1_b2_val == -9<br> - rs1_b1_val == -9<br>                                                                                                        |[0x80000898]:SUNPKD832 t6, t5<br> [0x8000089c]:sd t6, 128(gp)<br>    |
|  37|[0x80002330]<br>0x002000040005FFDF|- rs1_b2_val == -33<br> - rs1_b0_val == -1<br>                                                                                                                                                      |[0x800008b8]:SUNPKD832 t6, t5<br> [0x800008bc]:sd t6, 136(gp)<br>    |
|  38|[0x80002338]<br>0x0007FFDF00200020|- rs1_b4_val == -9<br> - rs1_b2_val == 32<br>                                                                                                                                                       |[0x800008d8]:SUNPKD832 t6, t5<br> [0x800008dc]:sd t6, 144(gp)<br>    |
|  39|[0x80002340]<br>0x0009FFF9FFF7FFDF|- rs1_b4_val == -3<br> - rs1_b1_val == -65<br>                                                                                                                                                      |[0x80000900]:SUNPKD832 t6, t5<br> [0x80000904]:sd t6, 152(gp)<br>    |
|  40|[0x80002348]<br>0x00400040FFBF0001|- rs1_b5_val == 1<br> - rs1_b4_val == -2<br> - rs1_b3_val == -65<br>                                                                                                                                |[0x80000928]:SUNPKD832 t6, t5<br> [0x8000092c]:sd t6, 160(gp)<br>    |
|  41|[0x80002350]<br>0x0007000800080010|- rs1_b6_val == 8<br> - rs1_b5_val == -33<br> - rs1_b4_val == 64<br>                                                                                                                                |[0x80000950]:SUNPKD832 t6, t5<br> [0x80000954]:sd t6, 168(gp)<br>    |
|  42|[0x80002358]<br>0x003FFFEF0000FFF6|- rs1_b4_val == 32<br>                                                                                                                                                                              |[0x80000970]:SUNPKD832 t6, t5<br> [0x80000974]:sd t6, 176(gp)<br>    |
|  43|[0x80002368]<br>0xFFF8FFDF0002FFEF|- rs1_b3_val == 2<br>                                                                                                                                                                               |[0x800009b0]:SUNPKD832 t6, t5<br> [0x800009b4]:sd t6, 192(gp)<br>    |
|  44|[0x80002370]<br>0xFFBF0002FF80FFFB|- rs1_b3_val == -128<br>                                                                                                                                                                            |[0x800009d8]:SUNPKD832 t6, t5<br> [0x800009dc]:sd t6, 200(gp)<br>    |
|  45|[0x80002378]<br>0xFFC0FFFCFFF90055|- rs1_b5_val == -9<br>                                                                                                                                                                              |[0x80000a00]:SUNPKD832 t6, t5<br> [0x80000a04]:sd t6, 208(gp)<br>    |
|  46|[0x80002380]<br>0xFFFFFFEF00400040|- rs1_b2_val == 64<br>                                                                                                                                                                              |[0x80000a20]:SUNPKD832 t6, t5<br> [0x80000a24]:sd t6, 216(gp)<br>    |
|  47|[0x80002388]<br>0xFFBF0003007FFFF7|- rs1_b3_val == 127<br>                                                                                                                                                                             |[0x80000a48]:SUNPKD832 t6, t5<br> [0x80000a4c]:sd t6, 224(gp)<br>    |
|  48|[0x80002390]<br>0xFFEFFFFDFFF60008|- rs1_b2_val == 8<br>                                                                                                                                                                               |[0x80000a68]:SUNPKD832 t6, t5<br> [0x80000a6c]:sd t6, 232(gp)<br>    |
|  49|[0x80002398]<br>0xFFFDFFAA003FFFDF|- rs1_b7_val == -3<br> - rs1_b5_val == 64<br>                                                                                                                                                       |[0x80000a88]:SUNPKD832 t6, t5<br> [0x80000a8c]:sd t6, 240(gp)<br>    |
|  50|[0x800023a0]<br>0x00100009FF800055|- rs1_b4_val == -86<br>                                                                                                                                                                             |[0x80000aa8]:SUNPKD832 t6, t5<br> [0x80000aac]:sd t6, 248(gp)<br>    |
|  51|[0x800023a8]<br>0x0010FFFFFFEFFFF8|- rs1_b5_val == 4<br> - rs1_b3_val == -17<br>                                                                                                                                                       |[0x80000ad0]:SUNPKD832 t6, t5<br> [0x80000ad4]:sd t6, 256(gp)<br>    |
|  52|[0x800023b0]<br>0x000400050006FFBF|- rs1_b5_val == 8<br> - rs1_b1_val == -33<br>                                                                                                                                                       |[0x80000af8]:SUNPKD832 t6, t5<br> [0x80000afc]:sd t6, 264(gp)<br>    |
|  53|[0x800023b8]<br>0xFFFD0009FFFEFFFD|- rs1_b3_val == -2<br>                                                                                                                                                                              |[0x80000b18]:SUNPKD832 t6, t5<br> [0x80000b1c]:sd t6, 272(gp)<br>    |
|  54|[0x800023c0]<br>0x0010FFDFFFFD0010|- rs1_b1_val == 127<br>                                                                                                                                                                             |[0x80000b38]:SUNPKD832 t6, t5<br> [0x80000b3c]:sd t6, 280(gp)<br>    |
|  55|[0x800023c8]<br>0xFFFFFFF9FFFE007F|- rs1_b1_val == -17<br>                                                                                                                                                                             |[0x80000b58]:SUNPKD832 t6, t5<br> [0x80000b5c]:sd t6, 288(gp)<br>    |
|  56|[0x800023d0]<br>0xFFFDFFDFFFFFFFF8|- rs1_b3_val == -1<br>                                                                                                                                                                              |[0x80000b78]:SUNPKD832 t6, t5<br> [0x80000b7c]:sd t6, 296(gp)<br>    |
