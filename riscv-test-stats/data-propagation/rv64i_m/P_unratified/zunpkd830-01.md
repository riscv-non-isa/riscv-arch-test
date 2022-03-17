
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000d00')]      |
| SIG_REGION                | [('0x80002210', '0x80002420', '66 dwords')]      |
| COV_LABELS                | zunpkd830      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/zunpkd830-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 65      |
| STAT1                     | 64      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000870]:ZUNPKD830 t6, t5
      [0x80000874]:sd t6, 88(gp)
 -- Signature Address: 0x80002318 Data: 0x00F700FE00FF000B
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd830
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 247
      - rs1_b6_val == 2
      - rs1_b4_val == 254
      - rs1_b3_val == 255
      - rs1_b2_val == 191
      - rs1_b1_val == 0






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
|   1|[0x80002210]<br>0x000F00DF00F70000|- opcode : zunpkd830<br> - rs1 : x23<br> - rd : x31<br> - rs1_b0_val == 0<br> - rs1_b6_val == 32<br> - rs1_b5_val == 16<br> - rs1_b4_val == 223<br> - rs1_b3_val == 247<br> - rs1_b2_val == 191<br> |[0x800003b8]:ZUNPKD830 t6, s7<br> [0x800003bc]:sd t6, 0(t0)<br>      |
|   2|[0x80002218]<br>0x00AA000C00090010|- rs1 : x30<br> - rd : x23<br> - rs1_b7_val == 170<br> - rs1_b6_val == 128<br> - rs1_b5_val == 32<br> - rs1_b2_val == 223<br> - rs1_b0_val == 16<br>                                                |[0x800003e0]:ZUNPKD830 s7, t5<br> [0x800003e4]:sd s7, 8(t0)<br>      |
|   3|[0x80002220]<br>0x005500BF00AA00EF|- rs1 : x9<br> - rd : x15<br> - rs1_b7_val == 85<br> - rs1_b6_val == 0<br> - rs1_b5_val == 251<br> - rs1_b4_val == 191<br> - rs1_b3_val == 170<br> - rs1_b0_val == 239<br>                          |[0x80000408]:ZUNPKD830 a5, s1<br> [0x8000040c]:sd a5, 16(t0)<br>     |
|   4|[0x80002228]<br>0x007F000A00010080|- rs1 : x3<br> - rd : x16<br> - rs1_b7_val == 127<br> - rs1_b6_val == 191<br> - rs1_b3_val == 1<br> - rs1_b2_val == 253<br> - rs1_b1_val == 253<br> - rs1_b0_val == 128<br>                         |[0x80000428]:ZUNPKD830 a6, gp<br> [0x8000042c]:sd a6, 24(t0)<br>     |
|   5|[0x80002230]<br>0x00BF007F005500FD|- rs1 : x14<br> - rd : x12<br> - rs1_b7_val == 191<br> - rs1_b5_val == 253<br> - rs1_b4_val == 127<br> - rs1_b3_val == 85<br> - rs1_b1_val == 85<br> - rs1_b0_val == 253<br>                        |[0x80000450]:ZUNPKD830 a2, a4<br> [0x80000454]:sd a2, 32(t0)<br>     |
|   6|[0x80002238]<br>0x00DF0004000B000A|- rs1 : x29<br> - rd : x4<br> - rs1_b7_val == 223<br> - rs1_b6_val == 2<br> - rs1_b4_val == 4<br> - rs1_b2_val == 254<br>                                                                           |[0x80000478]:ZUNPKD830 tp, t4<br> [0x8000047c]:sd tp, 40(t0)<br>     |
|   7|[0x80002240]<br>0x00EF000A00DF0013|- rs1 : x10<br> - rd : x26<br> - rs1_b7_val == 239<br> - rs1_b3_val == 223<br> - rs1_b2_val == 16<br>                                                                                               |[0x800004a0]:ZUNPKD830 s10, a0<br> [0x800004a4]:sd s10, 48(t0)<br>   |
|   8|[0x80002248]<br>0x00F7002000FE00FB|- rs1 : x4<br> - rd : x11<br> - rs1_b7_val == 247<br> - rs1_b5_val == 0<br> - rs1_b4_val == 32<br> - rs1_b3_val == 254<br> - rs1_b0_val == 251<br>                                                  |[0x800004c8]:ZUNPKD830 a1, tp<br> [0x800004cc]:sd a1, 56(t0)<br>     |
|   9|[0x80002250]<br>0x00FB002000AA0001|- rs1 : x31<br> - rd : x9<br> - rs1_b7_val == 251<br> - rs1_b6_val == 4<br> - rs1_b5_val == 1<br> - rs1_b0_val == 1<br>                                                                             |[0x800004e8]:ZUNPKD830 s1, t6<br> [0x800004ec]:sd s1, 64(t0)<br>     |
|  10|[0x80002258]<br>0x00FD000200FF0012|- rs1 : x28<br> - rd : x3<br> - rs1_b7_val == 253<br> - rs1_b4_val == 2<br> - rs1_b3_val == 255<br>                                                                                                 |[0x80000510]:ZUNPKD830 gp, t3<br> [0x80000514]:sd gp, 72(t0)<br>     |
|  11|[0x80002260]<br>0x00FE001300F70008|- rs1 : x8<br> - rd : x27<br> - rs1_b7_val == 254<br> - rs1_b6_val == 170<br> - rs1_b5_val == 255<br> - rs1_b2_val == 64<br> - rs1_b0_val == 8<br>                                                  |[0x80000538]:ZUNPKD830 s11, fp<br> [0x8000053c]:sd s11, 80(t0)<br>   |
|  12|[0x80002268]<br>0x008000000005007F|- rs1 : x24<br> - rd : x10<br> - rs1_b7_val == 128<br> - rs1_b6_val == 64<br> - rs1_b5_val == 254<br> - rs1_b4_val == 0<br> - rs1_b0_val == 127<br>                                                 |[0x80000560]:ZUNPKD830 a0, s8<br> [0x80000564]:sd a0, 88(t0)<br>     |
|  13|[0x80002270]<br>0x0040000100060000|- rs1 : x17<br> - rd : x14<br> - rs1_b7_val == 64<br> - rs1_b4_val == 1<br> - rs1_b2_val == 247<br>                                                                                                 |[0x80000588]:ZUNPKD830 a4, a7<br> [0x8000058c]:sd a4, 96(t0)<br>     |
|  14|[0x80002278]<br>0x0020001100110008|- rs1 : x2<br> - rd : x22<br> - rs1_b7_val == 32<br> - rs1_b6_val == 85<br>                                                                                                                         |[0x800005b0]:ZUNPKD830 s6, sp<br> [0x800005b4]:sd s6, 104(t0)<br>    |
|  15|[0x80002280]<br>0x001000FE007F000A|- rs1 : x13<br> - rd : x24<br> - rs1_b7_val == 16<br> - rs1_b5_val == 64<br> - rs1_b4_val == 254<br> - rs1_b3_val == 127<br> - rs1_b1_val == 191<br>                                                |[0x800005d0]:ZUNPKD830 s8, a3<br> [0x800005d4]:sd s8, 112(t0)<br>    |
|  16|[0x80002288]<br>0x000800FF00AA000E|- rs1 : x6<br> - rd : x28<br> - rs1_b7_val == 8<br> - rs1_b5_val == 170<br> - rs1_b4_val == 255<br> - rs1_b1_val == 223<br>                                                                         |[0x800005f8]:ZUNPKD830 t3, t1<br> [0x800005fc]:sd t3, 120(t0)<br>    |
|  17|[0x80002290]<br>0x000400FF00FD0012|- rs1 : x7<br> - rd : x1<br> - rs1_b7_val == 4<br> - rs1_b5_val == 85<br> - rs1_b3_val == 253<br>                                                                                                   |[0x80000620]:ZUNPKD830 ra, t2<br> [0x80000624]:sd ra, 128(t0)<br>    |
|  18|[0x80002298]<br>0x00020009000000F7|- rs1 : x11<br> - rd : x6<br> - rs1_b7_val == 2<br> - rs1_b5_val == 8<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b0_val == 247<br>                                                       |[0x80000638]:ZUNPKD830 t1, a1<br> [0x8000063c]:sd t1, 136(t0)<br>    |
|  19|[0x800022a0]<br>0x000100BF0013007F|- rs1 : x22<br> - rd : x13<br> - rs1_b7_val == 1<br> - rs1_b1_val == 1<br>                                                                                                                          |[0x80000658]:ZUNPKD830 a3, s6<br> [0x8000065c]:sd a3, 144(t0)<br>    |
|  20|[0x800022a8]<br>0x00FF000D000F0080|- rs1 : x16<br> - rd : x21<br> - rs1_b7_val == 255<br> - rs1_b5_val == 247<br> - rs1_b2_val == 32<br> - rs1_b1_val == 239<br>                                                                       |[0x80000678]:ZUNPKD830 s5, a6<br> [0x8000067c]:sd s5, 152(t0)<br>    |
|  21|[0x800022b0]<br>0x0000000A00090040|- rs1 : x15<br> - rd : x19<br> - rs1_b7_val == 0<br> - rs1_b0_val == 64<br>                                                                                                                         |[0x80000698]:ZUNPKD830 s3, a5<br> [0x8000069c]:sd s3, 160(t0)<br>    |
|  22|[0x800022b8]<br>0x00BF000C00080006|- rs1 : x20<br> - rd : x25<br> - rs1_b6_val == 127<br> - rs1_b3_val == 8<br> - rs1_b2_val == 2<br>                                                                                                  |[0x800006c0]:ZUNPKD830 s9, s4<br> [0x800006c4]:sd s9, 168(t0)<br>    |
|  23|[0x800022c0]<br>0x0007008000F70001|- rs1 : x26<br> - rd : x29<br> - rs1_b6_val == 223<br> - rs1_b4_val == 128<br>                                                                                                                      |[0x800006e8]:ZUNPKD830 t4, s10<br> [0x800006ec]:sd t4, 0(gp)<br>     |
|  24|[0x800022c8]<br>0x001300FE00130020|- rs1 : x12<br> - rd : x7<br> - rs1_b6_val == 239<br> - rs1_b2_val == 1<br> - rs1_b1_val == 128<br> - rs1_b0_val == 32<br>                                                                          |[0x80000710]:ZUNPKD830 t2, a2<br> [0x80000714]:sd t2, 8(gp)<br>      |
|  25|[0x800022d0]<br>0x0040007F00FE0006|- rs1 : x18<br> - rd : x20<br> - rs1_b6_val == 247<br> - rs1_b1_val == 251<br>                                                                                                                      |[0x80000730]:ZUNPKD830 s4, s2<br> [0x80000734]:sd s4, 16(gp)<br>     |
|  26|[0x800022d8]<br>0x0000000F0003000F|- rs1 : x27<br> - rd : x8<br> - rs1_b1_val == 254<br>                                                                                                                                               |[0x80000750]:ZUNPKD830 fp, s11<br> [0x80000754]:sd fp, 24(gp)<br>    |
|  27|[0x800022e0]<br>0x0020000C000200DF|- rs1 : x21<br> - rd : x18<br> - rs1_b3_val == 2<br> - rs1_b1_val == 64<br> - rs1_b0_val == 223<br>                                                                                                 |[0x80000778]:ZUNPKD830 s2, s5<br> [0x8000077c]:sd s2, 32(gp)<br>     |
|  28|[0x800022e8]<br>0x000C004000090010|- rs1 : x19<br> - rd : x2<br> - rs1_b4_val == 64<br> - rs1_b1_val == 32<br>                                                                                                                         |[0x800007a0]:ZUNPKD830 sp, s3<br> [0x800007a4]:sd sp, 40(gp)<br>     |
|  29|[0x800022f0]<br>0x0000000000000000|- rs1 : x25<br> - rd : x0<br> - rs1_b1_val == 16<br>                                                                                                                                                |[0x800007c8]:ZUNPKD830 zero, s9<br> [0x800007cc]:sd zero, 48(gp)<br> |
|  30|[0x800022f8]<br>0x000E000100030020|- rs1 : x5<br> - rd : x17<br> - rs1_b1_val == 8<br>                                                                                                                                                 |[0x800007f0]:ZUNPKD830 a7, t0<br> [0x800007f4]:sd a7, 56(gp)<br>     |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x0<br> - rd : x5<br> - rs1_b1_val == 0<br>                                                                                                                                                  |[0x80000810]:ZUNPKD830 t0, zero<br> [0x80000814]:sd t0, 64(gp)<br>   |
|  32|[0x80002308]<br>0x0004000600000008|- rs1 : x1<br> - rd : x30<br> - rs1_b2_val == 255<br> - rs1_b1_val == 2<br>                                                                                                                         |[0x80000830]:ZUNPKD830 t5, ra<br> [0x80000834]:sd t5, 72(gp)<br>     |
|  33|[0x80002310]<br>0x0012000700FF0013|- rs1_b6_val == 16<br> - rs1_b1_val == 255<br>                                                                                                                                                      |[0x80000850]:ZUNPKD830 t6, t5<br> [0x80000854]:sd t6, 80(gp)<br>     |
|  34|[0x80002320]<br>0x0012000B000C00AA|- rs1_b2_val == 8<br> - rs1_b0_val == 170<br>                                                                                                                                                       |[0x80000890]:ZUNPKD830 t6, t5<br> [0x80000894]:sd t6, 96(gp)<br>     |
|  35|[0x80002328]<br>0x0020000100070055|- rs1_b0_val == 85<br>                                                                                                                                                                              |[0x800008b0]:ZUNPKD830 t6, t5<br> [0x800008b4]:sd t6, 104(gp)<br>    |
|  36|[0x80002330]<br>0x0012002000EF00BF|- rs1_b3_val == 239<br> - rs1_b0_val == 191<br>                                                                                                                                                     |[0x800008d8]:ZUNPKD830 t6, t5<br> [0x800008dc]:sd t6, 112(gp)<br>    |
|  37|[0x80002338]<br>0x000D0006000000FE|- rs1_b1_val == 247<br> - rs1_b0_val == 254<br>                                                                                                                                                     |[0x800008f8]:ZUNPKD830 t6, t5<br> [0x800008fc]:sd t6, 120(gp)<br>    |
|  38|[0x80002340]<br>0x000300EF00DF0001|- rs1_b6_val == 251<br> - rs1_b5_val == 128<br> - rs1_b4_val == 239<br> - rs1_b2_val == 251<br>                                                                                                     |[0x80000918]:ZUNPKD830 t6, t5<br> [0x8000091c]:sd t6, 128(gp)<br>    |
|  39|[0x80002348]<br>0x00EF000C00130004|- rs1_b0_val == 4<br>                                                                                                                                                                               |[0x80000940]:ZUNPKD830 t6, t5<br> [0x80000944]:sd t6, 136(gp)<br>    |
|  40|[0x80002350]<br>0x00FE000100120003|- rs1_b6_val == 253<br>                                                                                                                                                                             |[0x80000968]:ZUNPKD830 t6, t5<br> [0x8000096c]:sd t6, 144(gp)<br>    |
|  41|[0x80002358]<br>0x00F7000200130002|- rs1_b5_val == 223<br> - rs1_b0_val == 2<br>                                                                                                                                                       |[0x80000990]:ZUNPKD830 t6, t5<br> [0x80000994]:sd t6, 152(gp)<br>    |
|  42|[0x80002360]<br>0x007F001200060040|- rs1_b6_val == 254<br> - rs1_b5_val == 127<br>                                                                                                                                                     |[0x800009b8]:ZUNPKD830 t6, t5<br> [0x800009bc]:sd t6, 160(gp)<br>    |
|  43|[0x80002368]<br>0x007F00F700FB0020|- rs1_b4_val == 247<br> - rs1_b3_val == 251<br>                                                                                                                                                     |[0x800009e0]:ZUNPKD830 t6, t5<br> [0x800009e4]:sd t6, 168(gp)<br>    |
|  44|[0x80002370]<br>0x00FD00FB000400FE|- rs1_b5_val == 2<br> - rs1_b4_val == 251<br> - rs1_b3_val == 4<br>                                                                                                                                 |[0x80000a08]:ZUNPKD830 t6, t5<br> [0x80000a0c]:sd t6, 176(gp)<br>    |
|  45|[0x80002378]<br>0x00BF00FD000B007F|- rs1_b4_val == 253<br>                                                                                                                                                                             |[0x80000a30]:ZUNPKD830 t6, t5<br> [0x80000a34]:sd t6, 184(gp)<br>    |
|  46|[0x80002380]<br>0x0013001000110004|- rs1_b4_val == 16<br>                                                                                                                                                                              |[0x80000a58]:ZUNPKD830 t6, t5<br> [0x80000a5c]:sd t6, 192(gp)<br>    |
|  47|[0x80002388]<br>0x0000000800F700DF|- rs1_b4_val == 8<br>                                                                                                                                                                               |[0x80000a78]:ZUNPKD830 t6, t5<br> [0x80000a7c]:sd t6, 200(gp)<br>    |
|  48|[0x80002390]<br>0x0080000300BF000F|- rs1_b3_val == 191<br> - rs1_b2_val == 85<br>                                                                                                                                                      |[0x80000aa0]:ZUNPKD830 t6, t5<br> [0x80000aa4]:sd t6, 208(gp)<br>    |
|  49|[0x80002398]<br>0x0011000600800009|- rs1_b3_val == 128<br>                                                                                                                                                                             |[0x80000ac0]:ZUNPKD830 t6, t5<br> [0x80000ac4]:sd t6, 216(gp)<br>    |
|  50|[0x800023a0]<br>0x0040000300400002|- rs1_b3_val == 64<br>                                                                                                                                                                              |[0x80000ae8]:ZUNPKD830 t6, t5<br> [0x80000aec]:sd t6, 224(gp)<br>    |
|  51|[0x800023a8]<br>0x0000000D002000DF|- rs1_b5_val == 239<br> - rs1_b3_val == 32<br>                                                                                                                                                      |[0x80000b08]:ZUNPKD830 t6, t5<br> [0x80000b0c]:sd t6, 232(gp)<br>    |
|  52|[0x800023b0]<br>0x000200DF00100004|- rs1_b3_val == 16<br>                                                                                                                                                                              |[0x80000b28]:ZUNPKD830 t6, t5<br> [0x80000b2c]:sd t6, 240(gp)<br>    |
|  53|[0x800023b8]<br>0x0010000300550013|- rs1_b6_val == 8<br> - rs1_b5_val == 191<br>                                                                                                                                                       |[0x80000b50]:ZUNPKD830 t6, t5<br> [0x80000b54]:sd t6, 248(gp)<br>    |
|  54|[0x800023c0]<br>0x00F7000200FE00FF|- rs1_b2_val == 170<br> - rs1_b0_val == 255<br>                                                                                                                                                     |[0x80000b78]:ZUNPKD830 t6, t5<br> [0x80000b7c]:sd t6, 256(gp)<br>    |
|  55|[0x800023c8]<br>0x00F700EF00DF0055|- rs1_b6_val == 1<br>                                                                                                                                                                               |[0x80000b98]:ZUNPKD830 t6, t5<br> [0x80000b9c]:sd t6, 264(gp)<br>    |
|  56|[0x800023d0]<br>0x000F00EF007F0003|- rs1_b6_val == 255<br> - rs1_b1_val == 4<br>                                                                                                                                                       |[0x80000bb8]:ZUNPKD830 t6, t5<br> [0x80000bbc]:sd t6, 272(gp)<br>    |
|  57|[0x800023d8]<br>0x007F00F7000C000C|- rs1_b2_val == 127<br>                                                                                                                                                                             |[0x80000be0]:ZUNPKD830 t6, t5<br> [0x80000be4]:sd t6, 280(gp)<br>    |
|  58|[0x800023e0]<br>0x00400012000900F7|- rs1_b2_val == 239<br>                                                                                                                                                                             |[0x80000c08]:ZUNPKD830 t6, t5<br> [0x80000c0c]:sd t6, 288(gp)<br>    |
|  59|[0x800023e8]<br>0x000700AA00030006|- rs1_b4_val == 170<br> - rs1_b2_val == 4<br>                                                                                                                                                       |[0x80000c30]:ZUNPKD830 t6, t5<br> [0x80000c34]:sd t6, 296(gp)<br>    |
|  60|[0x800023f0]<br>0x00550006000F0080|- rs1_b2_val == 128<br>                                                                                                                                                                             |[0x80000c58]:ZUNPKD830 t6, t5<br> [0x80000c5c]:sd t6, 304(gp)<br>    |
|  61|[0x800023f8]<br>0x000D00F7000B0055|- rs1_b5_val == 4<br>                                                                                                                                                                               |[0x80000c78]:ZUNPKD830 t6, t5<br> [0x80000c7c]:sd t6, 312(gp)<br>    |
|  62|[0x80002400]<br>0x0020000A00FE00FF|- rs1_b1_val == 170<br>                                                                                                                                                                             |[0x80000ca0]:ZUNPKD830 t6, t5<br> [0x80000ca4]:sd t6, 320(gp)<br>    |
|  63|[0x80002408]<br>0x007F0011000A00FB|- rs1_b1_val == 127<br>                                                                                                                                                                             |[0x80000cc8]:ZUNPKD830 t6, t5<br> [0x80000ccc]:sd t6, 328(gp)<br>    |
|  64|[0x80002410]<br>0x00AA005500AA00EF|- rs1_b4_val == 85<br>                                                                                                                                                                              |[0x80000cf0]:ZUNPKD830 t6, t5<br> [0x80000cf4]:sd t6, 336(gp)<br>    |
