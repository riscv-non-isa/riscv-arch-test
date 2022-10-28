
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ce0')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | zunpkd820      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/zunpkd820-01.S    |
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
      [0x80000cd0]:ZUNPKD820 t6, t5
      [0x80000cd4]:sd t6, 312(sp)
 -- Signature Address: 0x80002400 Data: 0x000E000200010001
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd820
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 255
      - rs1_b5_val == 247
      - rs1_b4_val == 2
      - rs1_b2_val == 1
      - rs1_b0_val == 1






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

|s.no|            signature             |                                                                                             coverpoints                                                                                             |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0010001000550000|- opcode : zunpkd820<br> - rs1 : x6<br> - rd : x16<br> - rs1_b0_val == 0<br> - rs1_b6_val == 16<br> - rs1_b5_val == 239<br> - rs1_b4_val == 16<br> - rs1_b3_val == 170<br> - rs1_b2_val == 85<br>    |[0x800003b8]:ZUNPKD820 a6, t1<br> [0x800003bc]:sd a6, 0(t0)<br>       |
|   2|[0x80002218]<br>0x000E00BF00110010|- rs1 : x25<br> - rd : x2<br> - rs1_b7_val == 170<br> - rs1_b4_val == 191<br> - rs1_b1_val == 85<br> - rs1_b0_val == 16<br>                                                                          |[0x800003e0]:ZUNPKD820 sp, s9<br> [0x800003e4]:sd sp, 8(t0)<br>       |
|   3|[0x80002220]<br>0x000400FF000B000D|- rs1 : x22<br> - rd : x13<br> - rs1_b7_val == 85<br> - rs1_b6_val == 4<br> - rs1_b5_val == 247<br> - rs1_b4_val == 255<br> - rs1_b3_val == 247<br>                                                  |[0x80000408]:ZUNPKD820 a3, s6<br> [0x8000040c]:sd a3, 16(t0)<br>      |
|   4|[0x80002228]<br>0x007F0009008000FB|- rs1 : x30<br> - rd : x27<br> - rs1_b7_val == 127<br> - rs1_b6_val == 127<br> - rs1_b5_val == 4<br> - rs1_b3_val == 254<br> - rs1_b2_val == 128<br> - rs1_b1_val == 251<br> - rs1_b0_val == 251<br> |[0x80000428]:ZUNPKD820 s11, t5<br> [0x8000042c]:sd s11, 24(t0)<br>    |
|   5|[0x80002230]<br>0x0007001100120040|- rs1 : x17<br> - rd : x3<br> - rs1_b7_val == 191<br> - rs1_b5_val == 32<br> - rs1_b1_val == 170<br> - rs1_b0_val == 64<br>                                                                          |[0x80000450]:ZUNPKD820 gp, a7<br> [0x80000454]:sd gp, 32(t0)<br>      |
|   6|[0x80002238]<br>0x00BF002000070010|- rs1 : x29<br> - rd : x6<br> - rs1_b7_val == 223<br> - rs1_b6_val == 191<br> - rs1_b5_val == 223<br> - rs1_b4_val == 32<br> - rs1_b1_val == 253<br>                                                 |[0x80000470]:ZUNPKD820 t1, t4<br> [0x80000474]:sd t1, 40(t0)<br>      |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x0<br> - rd : x20<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>              |[0x80000498]:ZUNPKD820 s4, zero<br> [0x8000049c]:sd s4, 48(t0)<br>    |
|   8|[0x80002248]<br>0x0002007F00110013|- rs1 : x12<br> - rd : x21<br> - rs1_b7_val == 247<br> - rs1_b6_val == 2<br> - rs1_b4_val == 127<br>                                                                                                 |[0x800004c0]:ZUNPKD820 s5, a2<br> [0x800004c4]:sd s5, 56(t0)<br>      |
|   9|[0x80002250]<br>0x00BF0055000200BF|- rs1 : x24<br> - rd : x11<br> - rs1_b7_val == 251<br> - rs1_b4_val == 85<br> - rs1_b2_val == 2<br> - rs1_b1_val == 239<br> - rs1_b0_val == 191<br>                                                  |[0x800004e8]:ZUNPKD820 a1, s8<br> [0x800004ec]:sd a1, 64(t0)<br>      |
|  10|[0x80002258]<br>0x000200060009000A|- rs1 : x2<br> - rd : x23<br> - rs1_b7_val == 253<br> - rs1_b1_val == 8<br>                                                                                                                          |[0x80000510]:ZUNPKD820 s7, sp<br> [0x80000514]:sd s7, 72(t0)<br>      |
|  11|[0x80002260]<br>0x000E000400FF000C|- rs1 : x21<br> - rd : x10<br> - rs1_b7_val == 254<br> - rs1_b5_val == 1<br> - rs1_b4_val == 4<br> - rs1_b2_val == 255<br>                                                                           |[0x80000530]:ZUNPKD820 a0, s5<br> [0x80000534]:sd a0, 80(t0)<br>      |
|  12|[0x80002268]<br>0x001100030005000D|- rs1 : x19<br> - rd : x4<br> - rs1_b7_val == 128<br> - rs1_b3_val == 251<br> - rs1_b1_val == 223<br>                                                                                                |[0x80000558]:ZUNPKD820 tp, s3<br> [0x8000055c]:sd tp, 88(t0)<br>      |
|  13|[0x80002270]<br>0x00FE000C00FB00F7|- rs1 : x11<br> - rd : x12<br> - rs1_b7_val == 64<br> - rs1_b6_val == 254<br> - rs1_b2_val == 251<br> - rs1_b0_val == 247<br>                                                                        |[0x80000580]:ZUNPKD820 a2, a1<br> [0x80000584]:sd a2, 96(t0)<br>      |
|  14|[0x80002278]<br>0x0000000A00400001|- rs1 : x23<br> - rd : x14<br> - rs1_b7_val == 32<br> - rs1_b3_val == 253<br> - rs1_b2_val == 64<br> - rs1_b0_val == 1<br>                                                                           |[0x800005a8]:ZUNPKD820 a4, s7<br> [0x800005ac]:sd a4, 104(t0)<br>     |
|  15|[0x80002280]<br>0x005500FB000100FE|- rs1 : x8<br> - rd : x26<br> - rs1_b7_val == 16<br> - rs1_b6_val == 85<br> - rs1_b4_val == 251<br> - rs1_b3_val == 2<br> - rs1_b2_val == 1<br> - rs1_b0_val == 254<br>                              |[0x800005d0]:ZUNPKD820 s10, fp<br> [0x800005d4]:sd s10, 112(t0)<br>   |
|  16|[0x80002288]<br>0x00DF0006000100FD|- rs1 : x7<br> - rd : x1<br> - rs1_b7_val == 8<br> - rs1_b6_val == 223<br> - rs1_b3_val == 255<br> - rs1_b0_val == 253<br>                                                                           |[0x800005f0]:ZUNPKD820 ra, t2<br> [0x800005f4]:sd ra, 120(t0)<br>     |
|  17|[0x80002290]<br>0x000500F700F7000A|- rs1 : x18<br> - rd : x8<br> - rs1_b7_val == 4<br> - rs1_b4_val == 247<br> - rs1_b2_val == 247<br> - rs1_b1_val == 32<br>                                                                           |[0x80000618]:ZUNPKD820 fp, s2<br> [0x8000061c]:sd fp, 128(t0)<br>     |
|  18|[0x80002298]<br>0x0003004000AA00BF|- rs1 : x9<br> - rd : x7<br> - rs1_b7_val == 2<br> - rs1_b4_val == 64<br> - rs1_b2_val == 170<br>                                                                                                    |[0x80000640]:ZUNPKD820 t2, s1<br> [0x80000644]:sd t2, 136(t0)<br>     |
|  19|[0x800022a0]<br>0x000000FB000B00BF|- rs1 : x13<br> - rd : x24<br> - rs1_b7_val == 1<br> - rs1_b5_val == 191<br> - rs1_b3_val == 128<br> - rs1_b1_val == 16<br>                                                                          |[0x80000660]:ZUNPKD820 s8, a3<br> [0x80000664]:sd s8, 144(t0)<br>     |
|  20|[0x800022a8]<br>0x0000000000000000|- rs1 : x4<br> - rd : x0<br> - rs1_b7_val == 255<br> - rs1_b4_val == 2<br>                                                                                                                           |[0x80000688]:ZUNPKD820 zero, tp<br> [0x8000068c]:sd zero, 152(t0)<br> |
|  21|[0x800022b0]<br>0x0003000000400000|- rs1 : x16<br> - rd : x18<br> - rs1_b5_val == 127<br> - rs1_b3_val == 16<br>                                                                                                                        |[0x800006a8]:ZUNPKD820 s2, a6<br> [0x800006ac]:sd s2, 160(t0)<br>     |
|  22|[0x800022b8]<br>0x00AA0012000600EF|- rs1 : x20<br> - rd : x22<br> - rs1_b6_val == 170<br> - rs1_b5_val == 255<br> - rs1_b3_val == 85<br> - rs1_b0_val == 239<br>                                                                        |[0x800006d0]:ZUNPKD820 s6, s4<br> [0x800006d4]:sd s6, 168(t0)<br>     |
|  23|[0x800022c0]<br>0x00EF00BF000800BF|- rs1 : x15<br> - rd : x28<br> - rs1_b6_val == 239<br> - rs1_b2_val == 8<br> - rs1_b1_val == 127<br>                                                                                                 |[0x800006f0]:ZUNPKD820 t3, a5<br> [0x800006f4]:sd t3, 176(t0)<br>     |
|  24|[0x800022c8]<br>0x00F700BF00BF007F|- rs1 : x28<br> - rd : x9<br> - rs1_b6_val == 247<br> - rs1_b2_val == 191<br> - rs1_b0_val == 127<br>                                                                                                |[0x80000720]:ZUNPKD820 s1, t3<br> [0x80000724]:sd s1, 0(sp)<br>       |
|  25|[0x800022d0]<br>0x00FB00DF00DF00EF|- rs1 : x1<br> - rd : x30<br> - rs1_b6_val == 251<br> - rs1_b4_val == 223<br> - rs1_b2_val == 223<br>                                                                                                |[0x80000748]:ZUNPKD820 t5, ra<br> [0x8000074c]:sd t5, 8(sp)<br>       |
|  26|[0x800022d8]<br>0x000C00FB00070011|- rs1 : x26<br> - rd : x25<br> - rs1_b3_val == 64<br> - rs1_b1_val == 254<br>                                                                                                                        |[0x80000768]:ZUNPKD820 s9, s10<br> [0x8000076c]:sd s9, 16(sp)<br>     |
|  27|[0x800022e0]<br>0x00BF00DF00040055|- rs1 : x27<br> - rd : x5<br> - rs1_b5_val == 16<br> - rs1_b2_val == 4<br> - rs1_b1_val == 128<br> - rs1_b0_val == 85<br>                                                                            |[0x80000790]:ZUNPKD820 t0, s11<br> [0x80000794]:sd t0, 24(sp)<br>     |
|  28|[0x800022e8]<br>0x00FD001200FD0005|- rs1 : x5<br> - rd : x15<br> - rs1_b6_val == 253<br> - rs1_b2_val == 253<br> - rs1_b1_val == 4<br>                                                                                                  |[0x800007b8]:ZUNPKD820 a5, t0<br> [0x800007bc]:sd a5, 32(sp)<br>      |
|  29|[0x800022f0]<br>0x00FD00DF00000020|- rs1 : x10<br> - rd : x19<br> - rs1_b1_val == 2<br> - rs1_b0_val == 32<br>                                                                                                                          |[0x800007d8]:ZUNPKD820 s3, a0<br> [0x800007dc]:sd s3, 40(sp)<br>      |
|  30|[0x800022f8]<br>0x0080000F00060008|- rs1 : x14<br> - rd : x17<br> - rs1_b6_val == 128<br> - rs1_b1_val == 1<br> - rs1_b0_val == 8<br>                                                                                                   |[0x800007f8]:ZUNPKD820 a7, a4<br> [0x800007fc]:sd a7, 48(sp)<br>      |
|  31|[0x80002300]<br>0x0004000F001100FF|- rs1 : x3<br> - rd : x29<br> - rs1_b3_val == 223<br> - rs1_b1_val == 255<br> - rs1_b0_val == 255<br>                                                                                                |[0x80000820]:ZUNPKD820 t4, gp<br> [0x80000824]:sd t4, 56(sp)<br>      |
|  32|[0x80002308]<br>0x001100DF00FB00DF|- rs1 : x31<br> - rs1_b0_val == 223<br>                                                                                                                                                              |[0x80000848]:ZUNPKD820 t5, t6<br> [0x8000084c]:sd t5, 64(sp)<br>      |
|  33|[0x80002310]<br>0x0003004000030080|- rd : x31<br> - rs1_b0_val == 128<br>                                                                                                                                                               |[0x80000870]:ZUNPKD820 t6, s5<br> [0x80000874]:sd t6, 72(sp)<br>      |
|  34|[0x80002318]<br>0x00DF002000070004|- rs1_b0_val == 4<br>                                                                                                                                                                                |[0x80000898]:ZUNPKD820 t6, t5<br> [0x8000089c]:sd t6, 80(sp)<br>      |
|  35|[0x80002320]<br>0x000500FB000F0002|- rs1_b0_val == 2<br>                                                                                                                                                                                |[0x800008c0]:ZUNPKD820 t6, t5<br> [0x800008c4]:sd t6, 88(sp)<br>      |
|  36|[0x80002328]<br>0x00400000000C0011|- rs1_b6_val == 64<br>                                                                                                                                                                               |[0x800008e8]:ZUNPKD820 t6, t5<br> [0x800008ec]:sd t6, 96(sp)<br>      |
|  37|[0x80002330]<br>0x0020004000FB0010|- rs1_b6_val == 32<br> - rs1_b5_val == 8<br>                                                                                                                                                         |[0x80000908]:ZUNPKD820 t6, t5<br> [0x8000090c]:sd t6, 104(sp)<br>     |
|  38|[0x80002338]<br>0x00080055000000F7|- rs1_b6_val == 8<br>                                                                                                                                                                                |[0x80000930]:ZUNPKD820 t6, t5<br> [0x80000934]:sd t6, 112(sp)<br>     |
|  39|[0x80002340]<br>0x00010003000A0003|- rs1_b6_val == 1<br>                                                                                                                                                                                |[0x80000958]:ZUNPKD820 t6, t5<br> [0x8000095c]:sd t6, 120(sp)<br>     |
|  40|[0x80002348]<br>0x00FF000900400020|- rs1_b6_val == 255<br> - rs1_b1_val == 191<br>                                                                                                                                                      |[0x80000980]:ZUNPKD820 t6, t5<br> [0x80000984]:sd t6, 128(sp)<br>     |
|  41|[0x80002350]<br>0x001100EF007F0008|- rs1_b7_val == 239<br> - rs1_b5_val == 2<br> - rs1_b4_val == 239<br> - rs1_b2_val == 127<br>                                                                                                        |[0x800009a0]:ZUNPKD820 t6, t5<br> [0x800009a4]:sd t6, 136(sp)<br>     |
|  42|[0x80002358]<br>0x005500FD000800AA|- rs1_b4_val == 253<br> - rs1_b0_val == 170<br>                                                                                                                                                      |[0x800009c8]:ZUNPKD820 t6, t5<br> [0x800009cc]:sd t6, 144(sp)<br>     |
|  43|[0x80002360]<br>0x00FD00FE00120000|- rs1_b4_val == 254<br>                                                                                                                                                                              |[0x800009e8]:ZUNPKD820 t6, t5<br> [0x800009ec]:sd t6, 152(sp)<br>     |
|  44|[0x80002368]<br>0x0001008000200011|- rs1_b4_val == 128<br> - rs1_b2_val == 32<br>                                                                                                                                                       |[0x80000a08]:ZUNPKD820 t6, t5<br> [0x80000a0c]:sd t6, 160(sp)<br>     |
|  45|[0x80002370]<br>0x00030008000C0000|- rs1_b4_val == 8<br> - rs1_b3_val == 8<br>                                                                                                                                                          |[0x80000a30]:ZUNPKD820 t6, t5<br> [0x80000a34]:sd t6, 168(sp)<br>     |
|  46|[0x80002378]<br>0x0010000100400080|- rs1_b4_val == 1<br>                                                                                                                                                                                |[0x80000a58]:ZUNPKD820 t6, t5<br> [0x80000a5c]:sd t6, 176(sp)<br>     |
|  47|[0x80002380]<br>0x0040002000FB00FE|- rs1_b3_val == 127<br>                                                                                                                                                                              |[0x80000a78]:ZUNPKD820 t6, t5<br> [0x80000a7c]:sd t6, 184(sp)<br>     |
|  48|[0x80002388]<br>0x00EF000B000000EF|- rs1_b5_val == 85<br> - rs1_b3_val == 191<br>                                                                                                                                                       |[0x80000aa0]:ZUNPKD820 t6, t5<br> [0x80000aa4]:sd t6, 192(sp)<br>     |
|  49|[0x80002390]<br>0x00090007000C00FF|- rs1_b3_val == 239<br>                                                                                                                                                                              |[0x80000ac0]:ZUNPKD820 t6, t5<br> [0x80000ac4]:sd t6, 200(sp)<br>     |
|  50|[0x80002398]<br>0x000D0012000100FB|- rs1_b3_val == 4<br>                                                                                                                                                                                |[0x80000ae0]:ZUNPKD820 t6, t5<br> [0x80000ae4]:sd t6, 208(sp)<br>     |
|  51|[0x800023a0]<br>0x000600FF00010008|- rs1_b3_val == 1<br>                                                                                                                                                                                |[0x80000b00]:ZUNPKD820 t6, t5<br> [0x80000b04]:sd t6, 216(sp)<br>     |
|  52|[0x800023a8]<br>0x000E00EF00FB00F7|- rs1_b5_val == 170<br>                                                                                                                                                                              |[0x80000b28]:ZUNPKD820 t6, t5<br> [0x80000b2c]:sd t6, 224(sp)<br>     |
|  53|[0x800023b0]<br>0x0001000700EF00BF|- rs1_b5_val == 64<br> - rs1_b2_val == 239<br>                                                                                                                                                       |[0x80000b48]:ZUNPKD820 t6, t5<br> [0x80000b4c]:sd t6, 232(sp)<br>     |
|  54|[0x800023b8]<br>0x00FD004000FE00FE|- rs1_b2_val == 254<br>                                                                                                                                                                              |[0x80000b70]:ZUNPKD820 t6, t5<br> [0x80000b74]:sd t6, 240(sp)<br>     |
|  55|[0x800023c0]<br>0x00BF000A00EF0006|- rs1_b5_val == 251<br>                                                                                                                                                                              |[0x80000b90]:ZUNPKD820 t6, t5<br> [0x80000b94]:sd t6, 248(sp)<br>     |
|  56|[0x800023c8]<br>0x00FE0000007F0003|- rs1_b5_val == 253<br>                                                                                                                                                                              |[0x80000bb8]:ZUNPKD820 t6, t5<br> [0x80000bbc]:sd t6, 256(sp)<br>     |
|  57|[0x800023d0]<br>0x000C0011000B00FD|- rs1_b5_val == 254<br>                                                                                                                                                                              |[0x80000be0]:ZUNPKD820 t6, t5<br> [0x80000be4]:sd t6, 264(sp)<br>     |
|  58|[0x800023d8]<br>0x000D004000100009|- rs1_b2_val == 16<br> - rs1_b1_val == 247<br>                                                                                                                                                       |[0x80000c08]:ZUNPKD820 t6, t5<br> [0x80000c0c]:sd t6, 272(sp)<br>     |
|  59|[0x800023e0]<br>0x0004000F00110008|- rs1_b3_val == 32<br>                                                                                                                                                                               |[0x80000c30]:ZUNPKD820 t6, t5<br> [0x80000c34]:sd t6, 280(sp)<br>     |
|  60|[0x800023e8]<br>0x0010001300090002|- rs1_b5_val == 128<br>                                                                                                                                                                              |[0x80000c58]:ZUNPKD820 t6, t5<br> [0x80000c5c]:sd t6, 288(sp)<br>     |
|  61|[0x800023f0]<br>0x000300AA00F70002|- rs1_b4_val == 170<br>                                                                                                                                                                              |[0x80000c80]:ZUNPKD820 t6, t5<br> [0x80000c84]:sd t6, 296(sp)<br>     |
|  62|[0x800023f8]<br>0x0013000D005500AA|- rs1_b1_val == 64<br>                                                                                                                                                                               |[0x80000ca8]:ZUNPKD820 t6, t5<br> [0x80000cac]:sd t6, 304(sp)<br>     |
