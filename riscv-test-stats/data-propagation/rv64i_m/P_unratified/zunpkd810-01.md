
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cf0')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | zunpkd810      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/zunpkd810-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 64      |
| STAT1                     | 62      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cc0]:ZUNPKD810 t6, t5
      [0x80000cc4]:sd t6, 312(sp)
 -- Signature Address: 0x80002400 Data: 0x0012000700080000
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd810
      - rs1 : x30
      - rd : x31
      - rs1_b0_val == 0
      - rs1_b7_val == 191
      - rs1_b2_val == 191
      - rs1_b1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce0]:ZUNPKD810 t6, t5
      [0x80000ce4]:sd t6, 320(sp)
 -- Signature Address: 0x80002408 Data: 0x000000F700090009
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd810
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 0
      - rs1_b5_val == 0
      - rs1_b4_val == 247
      - rs1_b3_val == 1






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

|s.no|            signature             |                                                                                             coverpoints                                                                                              |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : zunpkd810<br> - rs1 : x13<br> - rd : x0<br> - rs1_b0_val == 0<br> - rs1_b7_val == 191<br> - rs1_b2_val == 191<br> - rs1_b1_val == 8<br>                                                    |[0x800003b8]:ZUNPKD810 zero, a3<br> [0x800003bc]:sd zero, 0(fp)<br> |
|   2|[0x80002218]<br>0x000D000000DF000B|- rs1 : x1<br> - rd : x30<br> - rs1_b7_val == 170<br> - rs1_b6_val == 251<br> - rs1_b4_val == 0<br> - rs1_b3_val == 223<br> - rs1_b2_val == 8<br> - rs1_b1_val == 223<br>                             |[0x800003e0]:ZUNPKD810 t5, ra<br> [0x800003e4]:sd t5, 8(fp)<br>     |
|   3|[0x80002220]<br>0x00F700090080000F|- rs1 : x19<br> - rd : x9<br> - rs1_b7_val == 85<br> - rs1_b5_val == 247<br> - rs1_b3_val == 127<br> - rs1_b2_val == 127<br> - rs1_b1_val == 128<br>                                                  |[0x80000408]:ZUNPKD810 s1, s3<br> [0x8000040c]:sd s1, 16(fp)<br>    |
|   4|[0x80002228]<br>0x00FD000500FB00FB|- rs1 : x21<br> - rd : x14<br> - rs1_b7_val == 127<br> - rs1_b5_val == 253<br> - rs1_b3_val == 32<br> - rs1_b1_val == 251<br> - rs1_b0_val == 251<br>                                                 |[0x80000430]:ZUNPKD810 a4, s5<br> [0x80000434]:sd a4, 24(fp)<br>    |
|   5|[0x80002230]<br>0x001200F700FB00BF|- rs1 : x7<br> - rd : x24<br> - rs1_b7_val == 223<br> - rs1_b4_val == 247<br> - rs1_b2_val == 0<br> - rs1_b0_val == 191<br>                                                                           |[0x80000458]:ZUNPKD810 s8, t2<br> [0x8000045c]:sd s8, 32(fp)<br>    |
|   6|[0x80002238]<br>0x000200DF00030009|- rs1 : x12<br> - rd : x7<br> - rs1_b7_val == 239<br> - rs1_b6_val == 8<br> - rs1_b5_val == 2<br> - rs1_b4_val == 223<br> - rs1_b2_val == 85<br>                                                      |[0x80000478]:ZUNPKD810 t2, a2<br> [0x8000047c]:sd t2, 40(fp)<br>    |
|   7|[0x80002240]<br>0x00BF005500BF0020|- rs1 : x31<br> - rd : x17<br> - rs1_b7_val == 247<br> - rs1_b6_val == 223<br> - rs1_b5_val == 191<br> - rs1_b4_val == 85<br> - rs1_b2_val == 2<br> - rs1_b1_val == 191<br> - rs1_b0_val == 32<br>    |[0x800004a0]:ZUNPKD810 a7, t6<br> [0x800004a4]:sd a7, 48(fp)<br>    |
|   8|[0x80002248]<br>0x0002000A00020055|- rs1 : x17<br> - rd : x5<br> - rs1_b7_val == 251<br> - rs1_b6_val == 64<br> - rs1_b1_val == 2<br> - rs1_b0_val == 85<br>                                                                             |[0x800004c0]:ZUNPKD810 t0, a7<br> [0x800004c4]:sd t0, 56(fp)<br>    |
|   9|[0x80002250]<br>0x00110005000E00DF|- rs1 : x2<br> - rd : x23<br> - rs1_b7_val == 253<br> - rs1_b6_val == 1<br> - rs1_b3_val == 64<br> - rs1_b0_val == 223<br>                                                                            |[0x800004e0]:ZUNPKD810 s7, sp<br> [0x800004e4]:sd s7, 64(fp)<br>    |
|  10|[0x80002258]<br>0x0003000B00AA00FB|- rs1 : x27<br> - rd : x16<br> - rs1_b7_val == 254<br> - rs1_b6_val == 239<br> - rs1_b1_val == 170<br>                                                                                                |[0x80000508]:ZUNPKD810 a6, s11<br> [0x8000050c]:sd a6, 72(fp)<br>   |
|  11|[0x80002260]<br>0x00EF0006008000EF|- rs1 : x10<br> - rd : x19<br> - rs1_b7_val == 128<br> - rs1_b5_val == 239<br> - rs1_b2_val == 251<br> - rs1_b0_val == 239<br>                                                                        |[0x80000530]:ZUNPKD810 s3, a0<br> [0x80000534]:sd s3, 80(fp)<br>    |
|  12|[0x80002268]<br>0x00EF00070013007F|- rs1 : x6<br> - rd : x12<br> - rs1_b7_val == 64<br> - rs1_b0_val == 127<br>                                                                                                                          |[0x80000558]:ZUNPKD810 a2, t1<br> [0x8000055c]:sd a2, 88(fp)<br>    |
|  13|[0x80002270]<br>0x00AA0080000D00FF|- rs1 : x28<br> - rd : x18<br> - rs1_b7_val == 32<br> - rs1_b6_val == 255<br> - rs1_b5_val == 170<br> - rs1_b4_val == 128<br> - rs1_b3_val == 191<br> - rs1_b2_val == 253<br> - rs1_b0_val == 255<br> |[0x80000580]:ZUNPKD810 s2, t3<br> [0x80000584]:sd s2, 96(fp)<br>    |
|  14|[0x80002278]<br>0x000A00010007000D|- rs1 : x15<br> - rd : x4<br> - rs1_b7_val == 16<br> - rs1_b4_val == 1<br> - rs1_b3_val == 239<br>                                                                                                    |[0x800005a8]:ZUNPKD810 tp, a5<br> [0x800005ac]:sd tp, 104(fp)<br>   |
|  15|[0x80002280]<br>0x00F7000C002000FB|- rs1 : x9<br> - rd : x20<br> - rs1_b7_val == 8<br> - rs1_b2_val == 239<br> - rs1_b1_val == 32<br>                                                                                                    |[0x800005d0]:ZUNPKD810 s4, s1<br> [0x800005d4]:sd s4, 112(fp)<br>   |
|  16|[0x80002288]<br>0x00040006001300AA|- rs1 : x24<br> - rd : x28<br> - rs1_b7_val == 4<br> - rs1_b5_val == 4<br> - rs1_b0_val == 170<br>                                                                                                    |[0x800005f8]:ZUNPKD810 t3, s8<br> [0x800005fc]:sd t3, 120(fp)<br>   |
|  17|[0x80002290]<br>0x000F0012007F00FF|- rs1 : x30<br> - rd : x22<br> - rs1_b7_val == 2<br> - rs1_b6_val == 170<br> - rs1_b1_val == 127<br>                                                                                                  |[0x80000618]:ZUNPKD810 s6, t5<br> [0x8000061c]:sd s6, 128(fp)<br>   |
|  18|[0x80002298]<br>0x004000100020000F|- rs1 : x14<br> - rd : x2<br> - rs1_b7_val == 1<br> - rs1_b5_val == 64<br> - rs1_b4_val == 16<br> - rs1_b3_val == 128<br>                                                                             |[0x80000638]:ZUNPKD810 sp, a4<br> [0x8000063c]:sd sp, 136(fp)<br>   |
|  19|[0x800022a0]<br>0x00100040000D0005|- rs1 : x23<br> - rd : x29<br> - rs1_b7_val == 255<br> - rs1_b6_val == 16<br> - rs1_b5_val == 16<br> - rs1_b4_val == 64<br>                                                                           |[0x80000658]:ZUNPKD810 t4, s7<br> [0x8000065c]:sd t4, 144(fp)<br>   |
|  20|[0x800022a8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x11<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br>                                                           |[0x80000678]:ZUNPKD810 a1, zero<br> [0x8000067c]:sd a1, 152(fp)<br> |
|  21|[0x800022b0]<br>0x00F700030080000A|- rs1 : x20<br> - rd : x13<br> - rs1_b6_val == 85<br> - rs1_b3_val == 254<br> - rs1_b2_val == 16<br>                                                                                                  |[0x80000698]:ZUNPKD810 a3, s4<br> [0x8000069c]:sd a3, 160(fp)<br>   |
|  22|[0x800022b8]<br>0x000800BF00FD0009|- rs1 : x29<br> - rd : x27<br> - rs1_b6_val == 127<br> - rs1_b5_val == 8<br> - rs1_b4_val == 191<br> - rs1_b1_val == 253<br>                                                                          |[0x800006b8]:ZUNPKD810 s11, t4<br> [0x800006bc]:sd s11, 168(fp)<br> |
|  23|[0x800022c0]<br>0x00FD00F7000F000E|- rs1 : x18<br> - rd : x3<br> - rs1_b6_val == 191<br>                                                                                                                                                 |[0x800006e0]:ZUNPKD810 gp, s2<br> [0x800006e4]:sd gp, 176(fp)<br>   |
|  24|[0x800022c8]<br>0x000A000E00BF000C|- rs1 : x5<br> - rd : x6<br> - rs1_b6_val == 247<br>                                                                                                                                                  |[0x80000710]:ZUNPKD810 t1, t0<br> [0x80000714]:sd t1, 0(sp)<br>     |
|  25|[0x800022d0]<br>0x000E00110003000E|- rs1 : x16<br> - rd : x15<br> - rs1_b6_val == 253<br>                                                                                                                                                |[0x80000730]:ZUNPKD810 a5, a6<br> [0x80000734]:sd a5, 8(sp)<br>     |
|  26|[0x800022d8]<br>0x00FE00100013000F|- rs1 : x8<br> - rd : x1<br> - rs1_b6_val == 254<br> - rs1_b5_val == 254<br> - rs1_b2_val == 4<br>                                                                                                    |[0x80000758]:ZUNPKD810 ra, fp<br> [0x8000075c]:sd ra, 16(sp)<br>    |
|  27|[0x800022e0]<br>0x0007004000FF0005|- rs1 : x4<br> - rd : x25<br> - rs1_b6_val == 128<br> - rs1_b3_val == 4<br> - rs1_b1_val == 255<br>                                                                                                   |[0x80000778]:ZUNPKD810 s9, tp<br> [0x8000077c]:sd s9, 24(sp)<br>    |
|  28|[0x800022e8]<br>0x00FF000B00FE0007|- rs1 : x26<br> - rd : x31<br> - rs1_b5_val == 255<br> - rs1_b3_val == 16<br> - rs1_b2_val == 32<br> - rs1_b1_val == 254<br>                                                                          |[0x800007a0]:ZUNPKD810 t6, s10<br> [0x800007a4]:sd t6, 32(sp)<br>   |
|  29|[0x800022f0]<br>0x000E000100400006|- rs1 : x11<br> - rd : x21<br> - rs1_b3_val == 255<br> - rs1_b2_val == 1<br> - rs1_b1_val == 64<br>                                                                                                   |[0x800007c0]:ZUNPKD810 s5, a1<br> [0x800007c4]:sd s5, 40(sp)<br>    |
|  30|[0x800022f8]<br>0x005500BF0010000E|- rs1 : x25<br> - rd : x26<br> - rs1_b5_val == 85<br> - rs1_b1_val == 16<br>                                                                                                                          |[0x800007e8]:ZUNPKD810 s10, s9<br> [0x800007ec]:sd s10, 48(sp)<br>  |
|  31|[0x80002300]<br>0x000300BF0004007F|- rs1 : x22<br> - rd : x8<br> - rs1_b1_val == 4<br>                                                                                                                                                   |[0x80000810]:ZUNPKD810 fp, s6<br> [0x80000814]:sd fp, 56(sp)<br>    |
|  32|[0x80002308]<br>0x00EF0005000100AA|- rs1 : x3<br> - rd : x10<br> - rs1_b1_val == 1<br>                                                                                                                                                   |[0x80000830]:ZUNPKD810 a0, gp<br> [0x80000834]:sd a0, 64(sp)<br>    |
|  33|[0x80002310]<br>0x0012000A00000008|- rs1_b2_val == 64<br> - rs1_b0_val == 8<br>                                                                                                                                                          |[0x80000850]:ZUNPKD810 t6, t5<br> [0x80000854]:sd t6, 72(sp)<br>    |
|  34|[0x80002318]<br>0x0008004000AA00F7|- rs1_b3_val == 247<br> - rs1_b0_val == 247<br>                                                                                                                                                       |[0x80000878]:ZUNPKD810 t6, t5<br> [0x8000087c]:sd t6, 80(sp)<br>    |
|  35|[0x80002320]<br>0x00080007000300FD|- rs1_b0_val == 253<br>                                                                                                                                                                               |[0x800008a0]:ZUNPKD810 t6, t5<br> [0x800008a4]:sd t6, 88(sp)<br>    |
|  36|[0x80002328]<br>0x00200001000600FE|- rs1_b5_val == 32<br> - rs1_b0_val == 254<br>                                                                                                                                                        |[0x800008c0]:ZUNPKD810 t6, t5<br> [0x800008c4]:sd t6, 96(sp)<br>    |
|  37|[0x80002330]<br>0x000F001100090080|- rs1_b2_val == 128<br> - rs1_b0_val == 128<br>                                                                                                                                                       |[0x800008e0]:ZUNPKD810 t6, t5<br> [0x800008e4]:sd t6, 104(sp)<br>   |
|  38|[0x80002338]<br>0x0080000B00F70040|- rs1_b5_val == 128<br> - rs1_b1_val == 247<br> - rs1_b0_val == 64<br>                                                                                                                                |[0x80000904]:ZUNPKD810 t6, t5<br> [0x80000908]:sd t6, 112(sp)<br>   |
|  39|[0x80002340]<br>0x000F00EF000F0010|- rs1_b4_val == 239<br> - rs1_b0_val == 16<br>                                                                                                                                                        |[0x8000092c]:ZUNPKD810 t6, t5<br> [0x80000930]:sd t6, 120(sp)<br>   |
|  40|[0x80002348]<br>0x00EF0011000F0004|- rs1_b0_val == 4<br>                                                                                                                                                                                 |[0x8000094c]:ZUNPKD810 t6, t5<br> [0x80000950]:sd t6, 128(sp)<br>   |
|  41|[0x80002350]<br>0x000400BF00030002|- rs1_b0_val == 2<br>                                                                                                                                                                                 |[0x8000096c]:ZUNPKD810 t6, t5<br> [0x80000970]:sd t6, 136(sp)<br>   |
|  42|[0x80002358]<br>0x007F0010000D0001|- rs1_b5_val == 127<br> - rs1_b3_val == 85<br> - rs1_b0_val == 1<br>                                                                                                                                  |[0x80000994]:ZUNPKD810 t6, t5<br> [0x80000998]:sd t6, 144(sp)<br>   |
|  43|[0x80002360]<br>0x00BF00050005007F|- rs1_b6_val == 32<br>                                                                                                                                                                                |[0x800009b4]:ZUNPKD810 t6, t5<br> [0x800009b8]:sd t6, 152(sp)<br>   |
|  44|[0x80002368]<br>0x000D00FB0010000F|- rs1_b4_val == 251<br> - rs1_b3_val == 1<br> - rs1_b2_val == 247<br>                                                                                                                                 |[0x800009dc]:ZUNPKD810 t6, t5<br> [0x800009e0]:sd t6, 160(sp)<br>   |
|  45|[0x80002370]<br>0x007F00FD000B000A|- rs1_b4_val == 253<br>                                                                                                                                                                               |[0x80000a04]:ZUNPKD810 t6, t5<br> [0x80000a08]:sd t6, 168(sp)<br>   |
|  46|[0x80002378]<br>0x00BF00FE00050011|- rs1_b4_val == 254<br>                                                                                                                                                                               |[0x80000a2c]:ZUNPKD810 t6, t5<br> [0x80000a30]:sd t6, 176(sp)<br>   |
|  47|[0x80002380]<br>0x0007002000130040|- rs1_b4_val == 32<br>                                                                                                                                                                                |[0x80000a54]:ZUNPKD810 t6, t5<br> [0x80000a58]:sd t6, 184(sp)<br>   |
|  48|[0x80002388]<br>0x000A000800EF0002|- rs1_b4_val == 8<br> - rs1_b2_val == 254<br> - rs1_b1_val == 239<br>                                                                                                                                 |[0x80000a7c]:ZUNPKD810 t6, t5<br> [0x80000a80]:sd t6, 192(sp)<br>   |
|  49|[0x80002390]<br>0x00FF0004000E0012|- rs1_b4_val == 4<br>                                                                                                                                                                                 |[0x80000aa4]:ZUNPKD810 t6, t5<br> [0x80000aa8]:sd t6, 200(sp)<br>   |
|  50|[0x80002398]<br>0x00050002000B0001|- rs1_b4_val == 2<br>                                                                                                                                                                                 |[0x80000ac4]:ZUNPKD810 t6, t5<br> [0x80000ac8]:sd t6, 208(sp)<br>   |
|  51|[0x800023a0]<br>0x001200FF007F0002|- rs1_b4_val == 255<br> - rs1_b3_val == 8<br>                                                                                                                                                         |[0x80000aec]:ZUNPKD810 t6, t5<br> [0x80000af0]:sd t6, 216(sp)<br>   |
|  52|[0x800023a8]<br>0x008000AA00F70008|- rs1_b6_val == 4<br> - rs1_b4_val == 170<br> - rs1_b3_val == 170<br>                                                                                                                                 |[0x80000b14]:ZUNPKD810 t6, t5<br> [0x80000b18]:sd t6, 224(sp)<br>   |
|  53|[0x800023b0]<br>0x00BF0006000F00F7|- rs1_b3_val == 2<br>                                                                                                                                                                                 |[0x80000b3c]:ZUNPKD810 t6, t5<br> [0x80000b40]:sd t6, 232(sp)<br>   |
|  54|[0x800023b8]<br>0x00090009000B00FB|- rs1_b6_val == 2<br>                                                                                                                                                                                 |[0x80000b64]:ZUNPKD810 t6, t5<br> [0x80000b68]:sd t6, 240(sp)<br>   |
|  55|[0x800023c0]<br>0x00010040005500FB|- rs1_b5_val == 1<br> - rs1_b1_val == 85<br>                                                                                                                                                          |[0x80000b8c]:ZUNPKD810 t6, t5<br> [0x80000b90]:sd t6, 248(sp)<br>   |
|  56|[0x800023c8]<br>0x0002001100080008|- rs1_b2_val == 170<br>                                                                                                                                                                               |[0x80000bb4]:ZUNPKD810 t6, t5<br> [0x80000bb8]:sd t6, 256(sp)<br>   |
|  57|[0x800023d0]<br>0x00FB0009000600F7|- rs1_b5_val == 251<br> - rs1_b3_val == 253<br>                                                                                                                                                       |[0x80000bd4]:ZUNPKD810 t6, t5<br> [0x80000bd8]:sd t6, 264(sp)<br>   |
|  58|[0x800023d8]<br>0x0001000500F700EF|- rs1_b2_val == 223<br>                                                                                                                                                                               |[0x80000bfc]:ZUNPKD810 t6, t5<br> [0x80000c00]:sd t6, 272(sp)<br>   |
|  59|[0x800023e0]<br>0x000900F700AA0007|- rs1_b3_val == 251<br>                                                                                                                                                                               |[0x80000c24]:ZUNPKD810 t6, t5<br> [0x80000c28]:sd t6, 280(sp)<br>   |
|  60|[0x800023e8]<br>0x00EF00FB0003000C|- rs1_b2_val == 255<br>                                                                                                                                                                               |[0x80000c4c]:ZUNPKD810 t6, t5<br> [0x80000c50]:sd t6, 288(sp)<br>   |
|  61|[0x800023f0]<br>0x00DF00EF00800000|- rs1_b5_val == 223<br>                                                                                                                                                                               |[0x80000c70]:ZUNPKD810 t6, t5<br> [0x80000c74]:sd t6, 296(sp)<br>   |
|  62|[0x800023f8]<br>0x0040007F0000000C|- rs1_b4_val == 127<br>                                                                                                                                                                               |[0x80000c98]:ZUNPKD810 t6, t5<br> [0x80000c9c]:sd t6, 304(sp)<br>   |
