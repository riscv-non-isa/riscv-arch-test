
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cc0')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | slli8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/slli8-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 64      |
| STAT1                     | 63      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c8c]:SLLI8 t6, t5, 5
      [0x80000c90]:sd t6, 288(ra)
 -- Signature Address: 0x80002400 Data: 0xE0E00040A0C0E0A0
 -- Redundant Coverpoints hit by the op
      - opcode : slli8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 5
      - rs1_b7_val == 127
      - rs1_b6_val == 223
      - rs1_b5_val == 128
      - rs1_b2_val == 254
      - rs1_b1_val == 127






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

|s.no|            signature             |                                                                                                               coverpoints                                                                                                               |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x606020E08020C000|- opcode : slli8<br> - rs1 : x13<br> - rd : x13<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 5<br> - rs1_b6_val == 251<br> - rs1_b3_val == 4<br>                                                                               |[0x800003b8]:SLLI8 a3, a3, 5<br> [0x800003bc]:sd a3, 0(sp)<br>       |
|   2|[0x80002218]<br>0x8080808080800080|- rs1 : x26<br> - rd : x4<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b7_val == 251<br> - rs1_b4_val == 127<br> - rs1_b3_val == 251<br> - rs1_b1_val == 128<br>                                                                         |[0x800003e0]:SLLI8 tp, s10, 7<br> [0x800003e4]:sd tp, 8(sp)<br>      |
|   3|[0x80002220]<br>0x00C0C00000400000|- rs1 : x18<br> - rd : x28<br> - imm_val == 6<br> - rs1_b7_val == 32<br> - rs1_b6_val == 127<br> - rs1_b5_val == 247<br> - rs1_b4_val == 4<br> - rs1_b3_val == 8<br> - rs1_b2_val == 1<br> - rs1_b1_val == 64<br> - rs1_b0_val == 32<br> |[0x80000408]:SLLI8 t3, s2, 6<br> [0x8000040c]:sd t3, 16(sp)<br>      |
|   4|[0x80002228]<br>0xE0F0B0E0D04040C0|- rs1 : x31<br> - rd : x17<br> - imm_val == 4<br> - rs1_b2_val == 4<br> - rs1_b1_val == 4<br>                                                                                                                                            |[0x80000428]:SLLI8 a7, t6, 4<br> [0x8000042c]:sd a7, 24(sp)<br>      |
|   5|[0x80002230]<br>0xB80858F890388818|- rs1 : x12<br> - rd : x10<br> - imm_val == 3<br> - rs1_b7_val == 247<br> - rs1_b6_val == 1<br> - rs1_b4_val == 223<br>                                                                                                                  |[0x80000450]:SLLI8 a0, a2, 3<br> [0x80000454]:sd a0, 32(sp)<br>      |
|   6|[0x80002238]<br>0xFC1400FC0010ECDC|- rs1 : x23<br> - rd : x18<br> - imm_val == 2<br> - rs1_b7_val == 255<br> - rs1_b5_val == 64<br> - rs1_b3_val == 128<br> - rs1_b1_val == 251<br> - rs1_b0_val == 247<br>                                                                 |[0x80000470]:SLLI8 s2, s7, 2<br> [0x80000474]:sd s2, 40(sp)<br>      |
|   7|[0x80002240]<br>0xFE08FC02F606FEF6|- rs1 : x24<br> - rd : x8<br> - imm_val == 1<br> - rs1_b6_val == 4<br> - rs1_b5_val == 254<br> - rs1_b4_val == 1<br> - rs1_b1_val == 127<br> - rs1_b0_val == 251<br>                                                                     |[0x80000490]:SLLI8 fp, s8, 1<br> [0x80000494]:sd fp, 48(sp)<br>      |
|   8|[0x80002248]<br>0x09550807FB008011|- rs1 : x3<br> - rd : x16<br> - imm_val == 0<br> - rs1_b6_val == 85<br> - rs1_b5_val == 8<br> - rs1_b2_val == 0<br>                                                                                                                      |[0x800004b8]:SLLI8 a6, gp, 0<br> [0x800004bc]:sd a6, 56(sp)<br>      |
|   9|[0x80002250]<br>0xA83C54102C340438|- rs1 : x22<br> - rd : x12<br> - rs1_b7_val == 170<br> - rs1_b5_val == 85<br> - rs1_b1_val == 1<br>                                                                                                                                      |[0x800004e0]:SLLI8 a2, s6, 2<br> [0x800004e4]:sd a2, 64(sp)<br>      |
|  10|[0x80002258]<br>0xA848002000F858B8|- rs1 : x8<br> - rd : x25<br> - rs1_b7_val == 85<br> - rs1_b5_val == 128<br> - rs1_b3_val == 0<br> - rs1_b2_val == 191<br>                                                                                                               |[0x80000508]:SLLI8 s9, fp, 3<br> [0x8000050c]:sd s9, 72(sp)<br>      |
|  11|[0x80002260]<br>0x0000000000000000|- rs1 : x27<br> - rd : x0<br> - rs1_b7_val == 127<br> - rs1_b6_val == 223<br> - rs1_b2_val == 254<br>                                                                                                                                    |[0x80000530]:SLLI8 zero, s11, 5<br> [0x80000534]:sd zero, 80(sp)<br> |
|  12|[0x80002268]<br>0xF8F8F838000000F8|- rs1 : x1<br> - rd : x14<br> - rs1_b7_val == 191<br> - rs1_b6_val == 255<br> - rs1_b5_val == 255<br> - rs1_b3_val == 32<br> - rs1_b0_val == 223<br>                                                                                     |[0x80000554]:SLLI8 a4, ra, 3<br> [0x80000558]:sd a4, 88(sp)<br>      |
|  13|[0x80002270]<br>0x7C2C3C00A80038BC|- rs1 : x25<br> - rd : x1<br> - rs1_b7_val == 223<br> - rs1_b4_val == 128<br> - rs1_b3_val == 170<br> - rs1_b0_val == 239<br>                                                                                                            |[0x8000057c]:SLLI8 ra, s9, 2<br> [0x80000580]:sd ra, 96(sp)<br>      |
|  14|[0x80002278]<br>0x7840E890F80000D8|- rs1 : x14<br> - rd : x22<br> - rs1_b7_val == 239<br> - rs1_b6_val == 8<br> - rs1_b5_val == 253<br> - rs1_b3_val == 255<br> - rs1_b1_val == 0<br>                                                                                       |[0x8000059c]:SLLI8 s6, a4, 3<br> [0x800005a0]:sd s6, 104(sp)<br>     |
|  15|[0x80002280]<br>0xA040608020E020C0|- rs1 : x29<br> - rd : x26<br> - rs1_b7_val == 253<br> - rs1_b5_val == 251<br> - rs1_b3_val == 1<br> - rs1_b2_val == 127<br>                                                                                                             |[0x800005bc]:SLLI8 s10, t4, 5<br> [0x800005c0]:sd s10, 112(sp)<br>   |
|  16|[0x80002288]<br>0x0000000000800000|- rs1 : x17<br> - rd : x24<br> - rs1_b7_val == 254<br> - rs1_b4_val == 8<br> - rs1_b0_val == 2<br>                                                                                                                                       |[0x800005dc]:SLLI8 s8, a7, 7<br> [0x800005e0]:sd s8, 120(sp)<br>     |
|  17|[0x80002290]<br>0x0000000000000000|- rs1 : x0<br> - rd : x9<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br>                                                                                                                     |[0x80000604]:SLLI8 s1, zero, 6<br> [0x80000608]:sd s1, 128(sp)<br>   |
|  18|[0x80002298]<br>0x00E0C0C000E0E0E0|- rs1 : x9<br> - rd : x20<br> - rs1_b7_val == 64<br> - rs1_b3_val == 64<br> - rs1_b2_val == 239<br> - rs1_b0_val == 127<br>                                                                                                              |[0x80000628]:SLLI8 s4, s1, 5<br> [0x8000062c]:sd s4, 136(sp)<br>     |
|  19|[0x800022a0]<br>0x0010B09010C040F0|- rs1 : x15<br> - rd : x7<br> - rs1_b7_val == 16<br>                                                                                                                                                                                     |[0x80000648]:SLLI8 t2, a5, 4<br> [0x8000064c]:sd t2, 144(sp)<br>     |
|  20|[0x800022a8]<br>0x40F8F8706000F848|- rs1 : x10<br> - rd : x6<br> - rs1_b7_val == 8<br> - rs1_b6_val == 191<br> - rs1_b5_val == 127<br> - rs1_b2_val == 64<br>                                                                                                               |[0x80000670]:SLLI8 t1, a0, 3<br> [0x80000674]:sd t1, 152(sp)<br>     |
|  21|[0x800022b0]<br>0x80802040E060E0E0|- rs1 : x6<br> - rd : x30<br> - rs1_b7_val == 4<br> - rs1_b5_val == 1<br> - rs1_b3_val == 223<br> - rs1_b2_val == 251<br>                                                                                                                |[0x80000690]:SLLI8 t5, t1, 5<br> [0x80000694]:sd t5, 160(sp)<br>     |
|  22|[0x800022b8]<br>0x800000C000C000C0|- rs1 : x5<br> - rd : x23<br> - rs1_b7_val == 2<br> - rs1_b6_val == 128<br> - rs1_b4_val == 239<br> - rs1_b1_val == 8<br>                                                                                                                |[0x800006b8]:SLLI8 s7, t0, 6<br> [0x800006bc]:sd s7, 168(sp)<br>     |
|  23|[0x800022c0]<br>0x8080800000008080|- rs1 : x30<br> - rd : x29<br> - rs1_b7_val == 1<br> - rs1_b5_val == 191<br> - rs1_b2_val == 32<br> - rs1_b1_val == 191<br>                                                                                                              |[0x800006d8]:SLLI8 t4, t5, 7<br> [0x800006dc]:sd t4, 176(sp)<br>     |
|  24|[0x800022c8]<br>0x00F7BFAAFFFD0F02|- rs1 : x16<br> - rd : x5<br> - rs1_b6_val == 247<br> - rs1_b4_val == 170<br> - rs1_b2_val == 253<br>                                                                                                                                    |[0x800006f8]:SLLI8 t0, a6, 0<br> [0x800006fc]:sd t0, 184(sp)<br>     |
|  25|[0x800022d0]<br>0x9850F8B850009800|- rs1 : x20<br> - rd : x3<br> - rs1_b6_val == 170<br> - rs1_b4_val == 247<br> - rs1_b2_val == 128<br>                                                                                                                                    |[0x80000720]:SLLI8 gp, s4, 3<br> [0x80000724]:sd gp, 192(sp)<br>     |
|  26|[0x800022d8]<br>0xC0E000A0C040E040|- rs1 : x7<br> - rd : x21<br> - rs1_b6_val == 239<br> - rs1_b4_val == 85<br>                                                                                                                                                             |[0x80000748]:SLLI8 s5, t2, 5<br> [0x8000074c]:sd s5, 200(sp)<br>     |
|  27|[0x800022e0]<br>0x00C0C0C0C0008080|- rs1 : x21<br> - rd : x19<br> - rs1_b4_val == 191<br> - rs1_b1_val == 170<br> - rs1_b0_val == 254<br>                                                                                                                                   |[0x80000770]:SLLI8 s3, s5, 6<br> [0x80000774]:sd s3, 0(ra)<br>       |
|  28|[0x800022e8]<br>0x08FC34407C7C7C08|- rs1 : x28<br> - rd : x2<br> - rs1_b4_val == 16<br> - rs1_b2_val == 223<br> - rs1_b1_val == 223<br>                                                                                                                                     |[0x80000790]:SLLI8 sp, t3, 2<br> [0x80000794]:sd sp, 8(ra)<br>       |
|  29|[0x800022f0]<br>0x5888F86000587840|- rs1 : x19<br> - rd : x31<br> - rs1_b1_val == 239<br> - rs1_b0_val == 8<br>                                                                                                                                                             |[0x800007b0]:SLLI8 t6, s3, 3<br> [0x800007b4]:sd t6, 16(ra)<br>      |
|  30|[0x800022f8]<br>0x8000808000808000|- rs1 : x2<br> - rd : x27<br> - rs1_b6_val == 254<br> - rs1_b1_val == 247<br>                                                                                                                                                            |[0x800007d8]:SLLI8 s11, sp, 7<br> [0x800007dc]:sd s11, 24(ra)<br>    |
|  31|[0x80002300]<br>0x0434A8281828F40C|- rs1 : x4<br> - rd : x15<br> - rs1_b5_val == 170<br> - rs1_b1_val == 253<br>                                                                                                                                                            |[0x800007f8]:SLLI8 a5, tp, 2<br> [0x800007fc]:sd a5, 32(ra)<br>      |
|  32|[0x80002308]<br>0xB00030E00060E0D0|- rs1 : x11<br> - rs1_b6_val == 16<br> - rs1_b1_val == 254<br>                                                                                                                                                                           |[0x80000818]:SLLI8 a3, a1, 4<br> [0x8000081c]:sd a3, 40(ra)<br>      |
|  33|[0x80002310]<br>0xE070000010F00030|- rd : x11<br> - rs1_b4_val == 32<br> - rs1_b1_val == 32<br>                                                                                                                                                                             |[0x80000840]:SLLI8 a1, s3, 4<br> [0x80000844]:sd a1, 48(ra)<br>      |
|  34|[0x80002318]<br>0x2220FC0854122006|- rs1_b1_val == 16<br>                                                                                                                                                                                                                   |[0x80000868]:SLLI8 t6, t5, 1<br> [0x8000086c]:sd t6, 56(ra)<br>      |
|  35|[0x80002320]<br>0x8000808000800080|- rs1_b2_val == 247<br> - rs1_b1_val == 2<br>                                                                                                                                                                                            |[0x80000888]:SLLI8 t6, t5, 7<br> [0x8000088c]:sd t6, 64(ra)<br>      |
|  36|[0x80002328]<br>0x14187CDC2C80FC2C|- rs1_b5_val == 223<br> - rs1_b1_val == 255<br>                                                                                                                                                                                          |[0x800008a8]:SLLI8 t6, t5, 2<br> [0x800008ac]:sd t6, 72(ra)<br>      |
|  37|[0x80002330]<br>0xE07000F02080F0A0|- rs1_b2_val == 8<br> - rs1_b0_val == 170<br>                                                                                                                                                                                            |[0x800008d0]:SLLI8 t6, t5, 4<br> [0x800008d4]:sd t6, 80(ra)<br>      |
|  38|[0x80002338]<br>0x0080800000000080|- rs1_b0_val == 85<br>                                                                                                                                                                                                                   |[0x800008f0]:SLLI8 t6, t5, 7<br> [0x800008f4]:sd t6, 88(ra)<br>      |
|  39|[0x80002340]<br>0x8080008000008080|- rs1_b0_val == 191<br>                                                                                                                                                                                                                  |[0x80000918]:SLLI8 t6, t5, 7<br> [0x8000091c]:sd t6, 96(ra)<br>      |
|  40|[0x80002348]<br>0x1CBE261EFC0C0200|- rs1_b3_val == 254<br> - rs1_b0_val == 128<br>                                                                                                                                                                                          |[0x80000938]:SLLI8 t6, t5, 1<br> [0x8000093c]:sd t6, 104(ra)<br>     |
|  41|[0x80002350]<br>0xFC00F4F4407C7C00|- rs1_b4_val == 253<br> - rs1_b3_val == 16<br> - rs1_b0_val == 64<br>                                                                                                                                                                    |[0x80000960]:SLLI8 t6, t5, 2<br> [0x80000964]:sd t6, 112(ra)<br>     |
|  42|[0x80002358]<br>0x0000800080000000|- rs1_b4_val == 2<br> - rs1_b0_val == 16<br>                                                                                                                                                                                             |[0x80000980]:SLLI8 t6, t5, 7<br> [0x80000984]:sd t6, 120(ra)<br>     |
|  43|[0x80002360]<br>0x1C341080005454EC|- rs1_b5_val == 4<br> - rs1_b2_val == 85<br> - rs1_b1_val == 85<br>                                                                                                                                                                      |[0x800009a0]:SLLI8 t6, t5, 2<br> [0x800009a4]:sd t6, 128(ra)<br>     |
|  44|[0x80002368]<br>0xA0C02010704070A0|- rs1_b5_val == 2<br> - rs1_b3_val == 247<br>                                                                                                                                                                                            |[0x800009c8]:SLLI8 t6, t5, 4<br> [0x800009cc]:sd t6, 136(ra)<br>     |
|  45|[0x80002370]<br>0x1006AAFB0AF71004|- rs1_b4_val == 251<br> - rs1_b0_val == 4<br>                                                                                                                                                                                            |[0x800009f0]:SLLI8 t6, t5, 0<br> [0x800009f4]:sd t6, 144(ra)<br>     |
|  46|[0x80002378]<br>0x104810F0E800F850|- rs1_b4_val == 254<br> - rs1_b3_val == 253<br>                                                                                                                                                                                          |[0x80000a18]:SLLI8 t6, t5, 3<br> [0x80000a1c]:sd t6, 152(ra)<br>     |
|  47|[0x80002380]<br>0x00C0C00080C04000|- rs1_b4_val == 64<br> - rs1_b3_val == 2<br>                                                                                                                                                                                             |[0x80000a38]:SLLI8 t6, t5, 6<br> [0x80000a3c]:sd t6, 160(ra)<br>     |
|  48|[0x80002388]<br>0xF85850F890080020|- rs1_b4_val == 255<br>                                                                                                                                                                                                                  |[0x80000a60]:SLLI8 t6, t5, 3<br> [0x80000a64]:sd t6, 168(ra)<br>     |
|  49|[0x80002390]<br>0x09000F000F022000|- rs1_b2_val == 2<br>                                                                                                                                                                                                                    |[0x80000a84]:SLLI8 t6, t5, 0<br> [0x80000a88]:sd t6, 176(ra)<br>     |
|  50|[0x80002398]<br>0x0080808080000000|- rs1_b3_val == 85<br>                                                                                                                                                                                                                   |[0x80000aa4]:SLLI8 t6, t5, 7<br> [0x80000aa8]:sd t6, 184(ra)<br>     |
|  51|[0x800023a0]<br>0x00D0206030F0A090|- rs1_b6_val == 253<br>                                                                                                                                                                                                                  |[0x80000acc]:SLLI8 t6, t5, 4<br> [0x80000ad0]:sd t6, 192(ra)<br>     |
|  52|[0x800023a8]<br>0xF8F4DC00F440EC04|- rs1_b2_val == 16<br> - rs1_b0_val == 1<br>                                                                                                                                                                                             |[0x80000aec]:SLLI8 t6, t5, 2<br> [0x80000af0]:sd t6, 200(ra)<br>     |
|  53|[0x800023b0]<br>0xA0008060C000E0E0|- rs1_b0_val == 255<br>                                                                                                                                                                                                                  |[0x80000b14]:SLLI8 t6, t5, 5<br> [0x80000b18]:sd t6, 208(ra)<br>     |
|  54|[0x800023b8]<br>0xF800003038F830F0|- rs1_b6_val == 64<br> - rs1_b2_val == 255<br>                                                                                                                                                                                           |[0x80000b34]:SLLI8 t6, t5, 3<br> [0x80000b38]:sd t6, 216(ra)<br>     |
|  55|[0x800023c0]<br>0x60008060E0C02060|- rs1_b6_val == 32<br>                                                                                                                                                                                                                   |[0x80000b5c]:SLLI8 t6, t5, 5<br> [0x80000b60]:sd t6, 224(ra)<br>     |
|  56|[0x800023c8]<br>0x40040412DE18241A|- rs1_b6_val == 2<br> - rs1_b3_val == 239<br>                                                                                                                                                                                            |[0x80000b84]:SLLI8 t6, t5, 1<br> [0x80000b88]:sd t6, 232(ra)<br>     |
|  57|[0x800023d0]<br>0xF050F0B0E0A01070|- rs1_b2_val == 170<br>                                                                                                                                                                                                                  |[0x80000ba4]:SLLI8 t6, t5, 4<br> [0x80000ba8]:sd t6, 240(ra)<br>     |
|  58|[0x800023d8]<br>0x80F8781838F8A860|- rs1_b5_val == 239<br>                                                                                                                                                                                                                  |[0x80000bcc]:SLLI8 t6, t5, 3<br> [0x80000bd0]:sd t6, 248(ra)<br>     |
|  59|[0x800023e0]<br>0x8000000080008000|- rs1_b3_val == 127<br>                                                                                                                                                                                                                  |[0x80000bf4]:SLLI8 t6, t5, 7<br> [0x80000bf8]:sd t6, 256(ra)<br>     |
|  60|[0x800023e8]<br>0x9078F848F8F808F8|- rs1_b3_val == 191<br>                                                                                                                                                                                                                  |[0x80000c14]:SLLI8 t6, t5, 3<br> [0x80000c18]:sd t6, 264(ra)<br>     |
|  61|[0x800023f0]<br>0xEF0820090B20BF05|- rs1_b5_val == 32<br>                                                                                                                                                                                                                   |[0x80000c3c]:SLLI8 t6, t5, 0<br> [0x80000c40]:sd t6, 272(ra)<br>     |
|  62|[0x800023f8]<br>0x44FC40DC08004828|- rs1_b5_val == 16<br>                                                                                                                                                                                                                   |[0x80000c64]:SLLI8 t6, t5, 2<br> [0x80000c68]:sd t6, 280(ra)<br>     |
|  63|[0x80002408]<br>0x0000808080C04040|- rs1_b7_val == 128<br> - rs1_b0_val == 253<br>                                                                                                                                                                                          |[0x80000cb4]:SLLI8 t6, t5, 6<br> [0x80000cb8]:sd t6, 296(ra)<br>     |
