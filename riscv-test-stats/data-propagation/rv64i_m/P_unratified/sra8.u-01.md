
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000de0')]      |
| SIG_REGION                | [('0x80002210', '0x80002420', '66 dwords')]      |
| COV_LABELS                | sra8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sra8.u-01.S    |
| Total Number of coverpoints| 274     |
| Total Coverpoints Hit     | 268      |
| Total Signature Updates   | 66      |
| STAT1                     | 64      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf0]:SRA8_U t6, t5, t4
      [0x80000cf4]:sd t6, 320(ra)
 -- Signature Address: 0x800023e8 Data: 0x02D5050020000220
 -- Redundant Coverpoints hit by the op
      - opcode : sra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1
      - rs1_b7_val == 4
      - rs1_b6_val == -86
      - rs1_b4_val == 0
      - rs1_b2_val == 0
      - rs1_b1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dac]:SRA8_U t6, t5, t4
      [0x80000db0]:sd t6, 360(ra)
 -- Signature Address: 0x80002410 Data: 0x0000FC00000100FD
 -- Redundant Coverpoints hit by the op
      - opcode : sra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val == -2
      - rs1_b5_val == -128
      - rs1_b2_val == 16
      - rs1_b1_val == -1
      - rs1_b0_val == -86






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

|s.no|            signature             |                                                                                                                              coverpoints                                                                                                                              |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : sra8.u<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_val == 5<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> |[0x800003bc]:SRA8_U s3, t1, t1<br> [0x800003c0]:sd s3, 0(gp)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs2_val == 3<br>                                                                                                                                                                                  |[0x800003e8]:SRA8_U tp, tp, tp<br> [0x800003ec]:sd tp, 8(gp)<br>      |
|   3|[0x80002220]<br>0xFFFF0000FF000000|- rs1 : x31<br> - rs2 : x25<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 6<br> - rs1_b7_val == -33<br> - rs1_b6_val == -86<br> - rs1_b3_val == -65<br> - rs1_b2_val == 16<br>                                                         |[0x8000040c]:SRA8_U s2, t6, s9<br> [0x80000410]:sd s2, 16(gp)<br>     |
|   4|[0x80002228]<br>0x0105010000000000|- rs1 : x22<br> - rs2 : x21<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_val == 4<br> - rs1_b7_val == 16<br> - rs1_b6_val == 85<br> - rs1_b5_val == 8<br> - rs1_b4_val == -1<br> - rs1_b3_val == -3<br> - rs1_b2_val == -2<br>                                      |[0x80000430]:SRA8_U s6, s6, s5<br> [0x80000434]:sd s6, 24(gp)<br>     |
|   5|[0x80002230]<br>0x150201E00104E0FC|- rs1 : x14<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs2_val == 2<br> - rs1_b7_val == 85<br> - rs1_b6_val == 8<br> - rs1_b4_val == -128<br> - rs1_b3_val == 4<br> - rs1_b1_val == -128<br> - rs1_b0_val == -17<br>                                    |[0x8000045c]:SRA8_U fp, a4, fp<br> [0x80000460]:sd fp, 32(gp)<br>     |
|   6|[0x80002238]<br>0x0402FDFFFDFF0200|- rs1 : x13<br> - rs2 : x18<br> - rd : x29<br> - rs2_val == 1<br> - rs1_b4_val == -3<br> - rs1_b1_val == 4<br> - rs1_b0_val == 0<br>                                                                                                                                   |[0x80000480]:SRA8_U t4, a3, s2<br> [0x80000484]:sd t4, 40(gp)<br>     |
|   7|[0x80002240]<br>0xF501FFFF01FF0000|- rs1 : x25<br> - rs2 : x28<br> - rd : x2<br> - rs1_b7_val == -86<br> - rs1_b4_val == -5<br> - rs1_b1_val == -2<br> - rs1_b0_val == -3<br>                                                                                                                             |[0x800004a4]:SRA8_U sp, s9, t3<br> [0x800004a8]:sd sp, 48(gp)<br>     |
|   8|[0x80002248]<br>0xF8F808000101F502|- rs1 : x11<br> - rs2 : x13<br> - rd : x21<br> - rs1_b7_val == -65<br> - rs1_b6_val == -65<br> - rs1_b5_val == 64<br> - rs1_b4_val == -2<br> - rs1_b2_val == 8<br> - rs1_b1_val == -86<br> - rs1_b0_val == 16<br>                                                      |[0x800004d0]:SRA8_U s5, a1, a3<br> [0x800004d4]:sd s5, 56(gp)<br>     |
|   9|[0x80002250]<br>0x00FF00FF00000001|- rs1 : x10<br> - rs2 : x16<br> - rd : x11<br> - rs1_b7_val == -17<br> - rs1_b4_val == -86<br> - rs1_b3_val == 2<br> - rs1_b0_val == 85<br>                                                                                                                            |[0x800004f4]:SRA8_U a1, a0, a6<br> [0x800004f8]:sd a1, 64(gp)<br>     |
|  10|[0x80002258]<br>0xFF0008000401FE00|- rs1 : x27<br> - rs2 : x23<br> - rd : x6<br> - rs1_b7_val == -9<br> - rs1_b6_val == -2<br> - rs1_b5_val == 127<br> - rs1_b3_val == 64<br> - rs1_b1_val == -33<br>                                                                                                     |[0x80000518]:SRA8_U t1, s11, s7<br> [0x8000051c]:sd t1, 72(gp)<br>    |
|  11|[0x80002260]<br>0xFFFF0101FF01FEF0|- rs1 : x28<br> - rs2 : x12<br> - rd : x15<br> - rs1_b7_val == -5<br> - rs1_b6_val == -9<br> - rs1_b3_val == -5<br> - rs1_b2_val == 4<br> - rs1_b1_val == -17<br> - rs1_b0_val == -128<br>                                                                             |[0x80000544]:SRA8_U a5, t3, a2<br> [0x80000548]:sd a5, 80(gp)<br>     |
|  12|[0x80002268]<br>0xFD55091005027FF7|- rs1 : x15<br> - rs2 : x11<br> - rd : x12<br> - rs1_b7_val == -3<br> - rs1_b4_val == 16<br> - rs1_b2_val == 2<br> - rs1_b1_val == 127<br> - rs1_b0_val == -9<br>                                                                                                      |[0x80000568]:SRA8_U a2, a5, a1<br> [0x8000056c]:sd a2, 88(gp)<br>     |
|  13|[0x80002270]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x30<br> - rd : x0<br> - rs1_b7_val == -2<br> - rs1_b5_val == -128<br> - rs1_b1_val == -1<br> - rs1_b0_val == -86<br>                                                                                                                           |[0x8000058c]:SRA8_U zero, s3, t5<br> [0x80000590]:sd zero, 96(gp)<br> |
|  14|[0x80002278]<br>0xE00201FFFF0010FF|- rs1 : x24<br> - rs2 : x14<br> - rd : x1<br> - rs1_b7_val == -128<br> - rs1_b2_val == 1<br> - rs1_b1_val == 64<br>                                                                                                                                                    |[0x800005b8]:SRA8_U ra, s8, a4<br> [0x800005bc]:sd ra, 104(gp)<br>    |
|  15|[0x80002280]<br>0x10FE01FC0200FC00|- rs1 : x8<br> - rs2 : x1<br> - rd : x28<br> - rs1_b7_val == 64<br> - rs1_b4_val == -17<br> - rs1_b3_val == 8<br> - rs1_b2_val == -1<br> - rs1_b0_val == -1<br>                                                                                                        |[0x800005e4]:SRA8_U t3, fp, ra<br> [0x800005e8]:sd t3, 112(gp)<br>    |
|  16|[0x80002288]<br>0x0802F80101FF0210|- rs1 : x18<br> - rs2 : x7<br> - rd : x25<br> - rs1_b7_val == 32<br> - rs1_b5_val == -33<br> - rs1_b2_val == -3<br>                                                                                                                                                    |[0x80000608]:SRA8_U s9, s2, t2<br> [0x8000060c]:sd s9, 120(gp)<br>    |
|  17|[0x80002290]<br>0x01FC0202000000FF|- rs1 : x1<br> - rs2 : x27<br> - rd : x30<br> - rs1_b7_val == 8<br> - rs1_b5_val == 32<br> - rs1_b4_val == 32<br>                                                                                                                                                      |[0x8000062c]:SRA8_U t5, ra, s11<br> [0x80000630]:sd t5, 128(gp)<br>   |
|  18|[0x80002298]<br>0x0100FEF500000800|- rs1 : x17<br> - rs2 : x10<br> - rd : x23<br> - rs1_b7_val == 4<br> - rs1_b6_val == -3<br> - rs1_b5_val == -17<br> - rs1_b3_val == 1<br>                                                                                                                              |[0x80000650]:SRA8_U s7, a7, a0<br> [0x80000654]:sd s7, 136(gp)<br>    |
|  19|[0x800022a0]<br>0x01C0FF01F002FD03|- rs1 : x5<br> - rs2 : x15<br> - rd : x7<br> - rs1_b7_val == 2<br> - rs1_b6_val == -128<br> - rs1_b5_val == -2<br> - rs1_b4_val == 1<br> - rs1_b3_val == -33<br>                                                                                                       |[0x80000674]:SRA8_U t2, t0, a5<br> [0x80000678]:sd t2, 144(gp)<br>    |
|  20|[0x800022a8]<br>0x0110F008FE002003|- rs1 : x30<br> - rs2 : x24<br> - rd : x31<br> - rs1_b7_val == 1<br> - rs1_b6_val == 32<br>                                                                                                                                                                            |[0x800006a0]:SRA8_U t6, t5, s8<br> [0x800006a4]:sd t6, 0(ra)<br>      |
|  21|[0x800022b0]<br>0x00F81001FF0000FF|- rs1 : x7<br> - rs2 : x9<br> - rd : x13<br> - rs1_b4_val == 8<br>                                                                                                                                                                                                     |[0x800006c4]:SRA8_U a3, t2, s1<br> [0x800006c8]:sd a3, 8(ra)<br>      |
|  22|[0x800022b8]<br>0x00000000FF000001|- rs1 : x29<br> - rs2 : x17<br> - rd : x14<br> - rs1_b7_val == -1<br> - rs1_b6_val == 16<br> - rs1_b5_val == -5<br> - rs1_b0_val == 64<br>                                                                                                                             |[0x800006f0]:SRA8_U a4, t4, a7<br> [0x800006f4]:sd a4, 16(ra)<br>     |
|  23|[0x800022c0]<br>0x0001000000000100|- rs1 : x12<br> - rs2 : x2<br> - rd : x27<br> - rs1_b6_val == 127<br> - rs1_b4_val == -9<br>                                                                                                                                                                           |[0x8000071c]:SRA8_U s11, a2, sp<br> [0x80000720]:sd s11, 24(ra)<br>   |
|  24|[0x800022c8]<br>0xFEFEFC00020004FC|- rs1 : x3<br> - rs2 : x19<br> - rd : x9<br> - rs1_b6_val == -33<br> - rs1_b3_val == 32<br>                                                                                                                                                                            |[0x80000748]:SRA8_U s1, gp, s3<br> [0x8000074c]:sd s1, 32(ra)<br>     |
|  25|[0x800022d0]<br>0x01FEFEFF00F8FFFE|- rs1 : x26<br> - rs2 : x20<br> - rd : x3<br> - rs1_b6_val == -17<br> - rs1_b1_val == -9<br>                                                                                                                                                                           |[0x80000774]:SRA8_U gp, s10, s4<br> [0x80000778]:sd gp, 40(ra)<br>    |
|  26|[0x800022d8]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x3<br> - rd : x10<br>                                                                                                                                                                                                                           |[0x800007a0]:SRA8_U a0, zero, gp<br> [0x800007a4]:sd a0, 48(ra)<br>   |
|  27|[0x800022e0]<br>0x0202F703FD80BFFA|- rs1 : x21<br> - rs2 : x29<br> - rd : x16<br> - rs1_b6_val == 2<br> - rs1_b5_val == -9<br> - rs1_b2_val == -128<br> - rs1_b1_val == -65<br>                                                                                                                           |[0x800007cc]:SRA8_U a6, s5, t4<br> [0x800007d0]:sd a6, 56(ra)<br>     |
|  28|[0x800022e8]<br>0x20FDFAFB20FAFBFC|- rs1 : x16<br> - rs2 : x0<br> - rd : x5<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                    |[0x800007f8]:SRA8_U t0, a6, zero<br> [0x800007fc]:sd t0, 64(ra)<br>   |
|  29|[0x800022f0]<br>0x0000000100000000|- rs1 : x9<br> - rs2 : x5<br> - rd : x24<br> - rs1_b5_val == -1<br> - rs1_b1_val == -3<br>                                                                                                                                                                             |[0x8000081c]:SRA8_U s8, s1, t0<br> [0x80000820]:sd s8, 72(ra)<br>     |
|  30|[0x800022f8]<br>0xFF0000FF00000100|- rs1 : x2<br> - rs2 : x31<br> - rd : x20<br> - rs1_b4_val == -65<br> - rs1_b3_val == -2<br> - rs1_b1_val == 32<br>                                                                                                                                                    |[0x80000848]:SRA8_U s4, sp, t6<br> [0x8000084c]:sd s4, 80(ra)<br>     |
|  31|[0x80002300]<br>0x55AAFC02FB7F10FF|- rs1 : x20<br> - rs2 : x22<br> - rd : x26<br> - rs1_b4_val == 2<br> - rs1_b2_val == 127<br> - rs1_b1_val == 16<br>                                                                                                                                                    |[0x80000874]:SRA8_U s10, s4, s6<br> [0x80000878]:sd s10, 88(ra)<br>   |
|  32|[0x80002308]<br>0x00000000FF000000|- rs1 : x23<br> - rs2 : x26<br> - rd : x17<br> - rs1_b3_val == -86<br> - rs1_b1_val == 8<br>                                                                                                                                                                           |[0x800008a0]:SRA8_U a7, s7, s10<br> [0x800008a4]:sd a7, 96(ra)<br>    |
|  33|[0x80002310]<br>0x01C02000FDFE0103|- rs1_b2_val == -5<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                           |[0x800008c4]:SRA8_U t6, t5, t4<br> [0x800008c8]:sd t6, 104(ra)<br>    |
|  34|[0x80002318]<br>0xFC10E000E0030101|- rs1_b1_val == 1<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                            |[0x800008e8]:SRA8_U t6, t5, t4<br> [0x800008ec]:sd t6, 112(ra)<br>    |
|  35|[0x80002320]<br>0x0201F80102F00820|- rs1_b6_val == 4<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                          |[0x80000914]:SRA8_U t6, t5, t4<br> [0x80000918]:sd t6, 120(ra)<br>    |
|  36|[0x80002328]<br>0xFF01FCF80800FFF8|- rs1_b0_val == -65<br>                                                                                                                                                                                                                                                |[0x80000938]:SRA8_U t6, t5, t4<br> [0x8000093c]:sd t6, 128(ra)<br>    |
|  37|[0x80002330]<br>0x0001000000FF0000|- rs1_b4_val == 4<br> - rs1_b2_val == -17<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                   |[0x8000095c]:SRA8_U t6, t5, t4<br> [0x80000960]:sd t6, 136(ra)<br>    |
|  38|[0x80002338]<br>0x80100209F9FEEFFE|- rs1_b5_val == 2<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                           |[0x80000988]:SRA8_U t6, t5, t4<br> [0x8000098c]:sd t6, 144(ra)<br>    |
|  39|[0x80002340]<br>0xFEBFFF0505F60720|- rs1_b0_val == 32<br>                                                                                                                                                                                                                                                 |[0x800009ac]:SRA8_U t6, t5, t4<br> [0x800009b0]:sd t6, 152(ra)<br>    |
|  40|[0x80002348]<br>0x0004000500000001|- rs1_b6_val == 64<br> - rs1_b4_val == 85<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                    |[0x800009d0]:SRA8_U t6, t5, t4<br> [0x800009d4]:sd t6, 160(ra)<br>    |
|  41|[0x80002350]<br>0x000000FF00010000|- rs1_b2_val == 64<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                           |[0x800009fc]:SRA8_U t6, t5, t4<br> [0x80000a00]:sd t6, 168(ra)<br>    |
|  42|[0x80002358]<br>0x0100000800010000|- rs1_b4_val == 127<br>                                                                                                                                                                                                                                                |[0x80000a20]:SRA8_U t6, t5, t4<br> [0x80000a24]:sd t6, 176(ra)<br>    |
|  43|[0x80002360]<br>0x2B08FFF0FED52000|- rs1_b4_val == -33<br> - rs1_b2_val == -86<br>                                                                                                                                                                                                                        |[0x80000a48]:SRA8_U t6, t5, t4<br> [0x80000a4c]:sd t6, 184(ra)<br>    |
|  44|[0x80002368]<br>0xFF0100010000FF00|- rs1_b4_val == 64<br>                                                                                                                                                                                                                                                 |[0x80000a74]:SRA8_U t6, t5, t4<br> [0x80000a78]:sd t6, 192(ra)<br>    |
|  45|[0x80002370]<br>0x150000000000FC20|- rs1_b5_val == 1<br> - rs1_b3_val == -1<br>                                                                                                                                                                                                                           |[0x80000a98]:SRA8_U t6, t5, t4<br> [0x80000a9c]:sd t6, 200(ra)<br>    |
|  46|[0x80002378]<br>0x04FBFFF02B0120FF|- rs1_b5_val == -3<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                          |[0x80000ac4]:SRA8_U t6, t5, t4<br> [0x80000ac8]:sd t6, 208(ra)<br>    |
|  47|[0x80002380]<br>0xFB08010340FDFCFD|- rs1_b3_val == 127<br>                                                                                                                                                                                                                                                |[0x80000ae8]:SRA8_U t6, t5, t4<br> [0x80000aec]:sd t6, 216(ra)<br>    |
|  48|[0x80002388]<br>0x01080B01FE100400|- rs1_b5_val == 85<br> - rs1_b3_val == -17<br>                                                                                                                                                                                                                         |[0x80000b14]:SRA8_U t6, t5, t4<br> [0x80000b18]:sd t6, 224(ra)<br>    |
|  49|[0x80002390]<br>0x7F03F8FBF7FD06F6|- rs1_b7_val == 127<br> - rs1_b3_val == -9<br>                                                                                                                                                                                                                         |[0x80000b40]:SRA8_U t6, t5, t4<br> [0x80000b44]:sd t6, 232(ra)<br>    |
|  50|[0x80002398]<br>0xFDFB40D5C0FFC000|- rs1_b3_val == -128<br>                                                                                                                                                                                                                                               |[0x80000b60]:SRA8_U t6, t5, t4<br> [0x80000b64]:sd t6, 240(ra)<br>    |
|  51|[0x800023a0]<br>0xF704FC09EFFABF02|- rs1_b0_val == 2<br>                                                                                                                                                                                                                                                  |[0x80000b8c]:SRA8_U t6, t5, t4<br> [0x80000b90]:sd t6, 248(ra)<br>    |
|  52|[0x800023a8]<br>0xFE15E0E004FFF002|- rs1_b3_val == 16<br>                                                                                                                                                                                                                                                 |[0x80000bb8]:SRA8_U t6, t5, t4<br> [0x80000bbc]:sd t6, 256(ra)<br>    |
|  53|[0x800023b0]<br>0xFFFE04FEF015FF00|- rs1_b5_val == 16<br> - rs1_b2_val == 85<br>                                                                                                                                                                                                                          |[0x80000bdc]:SRA8_U t6, t5, t4<br> [0x80000be0]:sd t6, 264(ra)<br>    |
|  54|[0x800023b8]<br>0x0400FF10E0FCFEFF|- rs1_b6_val == -1<br>                                                                                                                                                                                                                                                 |[0x80000c00]:SRA8_U t6, t5, t4<br> [0x80000c04]:sd t6, 272(ra)<br>    |
|  55|[0x800023c0]<br>0xFFFF00FFFEFFFF00|- rs1_b2_val == -65<br>                                                                                                                                                                                                                                                |[0x80000c2c]:SRA8_U t6, t5, t4<br> [0x80000c30]:sd t6, 280(ra)<br>    |
|  56|[0x800023c8]<br>0xFFFFEB01FEFF0120|- rs1_b5_val == -86<br>                                                                                                                                                                                                                                                |[0x80000c50]:SRA8_U t6, t5, t4<br> [0x80000c54]:sd t6, 288(ra)<br>    |
|  57|[0x800023d0]<br>0x00FF000400FF01FC|- rs1_b2_val == -9<br>                                                                                                                                                                                                                                                 |[0x80000c7c]:SRA8_U t6, t5, t4<br> [0x80000c80]:sd t6, 296(ra)<br>    |
|  58|[0x800023d8]<br>0x0000FEFE0000FD00|- rs1_b5_val == -65<br>                                                                                                                                                                                                                                                |[0x80000ca8]:SRA8_U t6, t5, t4<br> [0x80000cac]:sd t6, 304(ra)<br>    |
|  59|[0x800023e0]<br>0x04FD0000FE0100FC|- rs1_b2_val == 32<br>                                                                                                                                                                                                                                                 |[0x80000ccc]:SRA8_U t6, t5, t4<br> [0x80000cd0]:sd t6, 312(ra)<br>    |
|  60|[0x800023f0]<br>0xF501010000FE01FF|- rs1_b5_val == 4<br>                                                                                                                                                                                                                                                  |[0x80000d14]:SRA8_U t6, t5, t4<br> [0x80000d18]:sd t6, 328(ra)<br>    |
|  61|[0x800023f8]<br>0x0001F800FEFE0001|- rs1_b2_val == -33<br>                                                                                                                                                                                                                                                |[0x80000d38]:SRA8_U t6, t5, t4<br> [0x80000d3c]:sd t6, 336(ra)<br>    |
|  62|[0x80002400]<br>0x0000FE00FF000100|- rs1_b1_val == 85<br>                                                                                                                                                                                                                                                 |[0x80000d5c]:SRA8_U t6, t5, t4<br> [0x80000d60]:sd t6, 344(ra)<br>    |
|  63|[0x80002408]<br>0x040000010001FF00|- rs1_b6_val == 1<br>                                                                                                                                                                                                                                                  |[0x80000d88]:SRA8_U t6, t5, t4<br> [0x80000d8c]:sd t6, 352(ra)<br>    |
|  64|[0x80002418]<br>0x01FF000100FE02F8|- rs1_b6_val == -5<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                         |[0x80000dd8]:SRA8_U t6, t5, t4<br> [0x80000ddc]:sd t6, 368(ra)<br>    |
