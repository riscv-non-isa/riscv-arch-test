
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000dc0')]      |
| SIG_REGION                | [('0x80002210', '0x80002450', '72 dwords')]      |
| COV_LABELS                | srli8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srli8-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 71      |
| STAT1                     | 70      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d90]:SRLI8 t6, t5, 4
      [0x80000d94]:sd t6, 400(ra)
 -- Signature Address: 0x80002438 Data: 0x0400000F0100000B
 -- Redundant Coverpoints hit by the op
      - opcode : srli8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 4
      - rs1_b7_val == 64
      - rs1_b5_val == 4
      - rs1_b4_val == 254
      - rs1_b2_val == 2
      - rs1_b0_val == 191






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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                          |                                code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x1200FDF70B01FD00|- opcode : srli8<br> - rs1 : x9<br> - rd : x9<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 253<br> - rs1_b4_val == 247<br> - rs1_b2_val == 1<br> - rs1_b1_val == 253<br> |[0x800003b0]:SRLI8 s1, s1, 0<br> [0x800003b4]:sd s1, 0(a4)<br>       |
|   2|[0x80002218]<br>0x0000000100010000|- rs1 : x19<br> - rd : x6<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b7_val == 4<br> - rs1_b5_val == 4<br> - rs1_b4_val == 253<br> - rs1_b2_val == 247<br> - rs1_b1_val == 0<br>                                             |[0x800003d0]:SRLI8 t1, s3, 7<br> [0x800003d4]:sd t1, 8(a4)<br>       |
|   3|[0x80002220]<br>0x0200000303020001|- rs1 : x21<br> - rd : x8<br> - imm_val == 6<br> - rs1_b7_val == 128<br> - rs1_b5_val == 0<br> - rs1_b4_val == 254<br> - rs1_b3_val == 223<br> - rs1_b2_val == 170<br> - rs1_b0_val == 127<br>                                 |[0x800003f8]:SRLI8 fp, s5, 6<br> [0x800003fc]:sd fp, 16(a4)<br>      |
|   4|[0x80002228]<br>0x0200000700070000|- rs1 : x22<br> - rd : x17<br> - imm_val == 5<br> - rs1_b7_val == 85<br> - rs1_b2_val == 254<br>                                                                                                                               |[0x80000420]:SRLI8 a7, s6, 5<br> [0x80000424]:sd a7, 24(a4)<br>      |
|   5|[0x80002230]<br>0x0E000F0000000E0E|- rs1 : x25<br> - rd : x7<br> - imm_val == 4<br> - rs1_b7_val == 239<br> - rs1_b3_val == 4<br> - rs1_b2_val == 4<br> - rs1_b1_val == 239<br> - rs1_b0_val == 239<br>                                                           |[0x80000448]:SRLI8 t2, s9, 4<br> [0x8000044c]:sd t2, 32(a4)<br>      |
|   6|[0x80002238]<br>0x00020A010201010A|- rs1 : x17<br> - rd : x1<br> - imm_val == 3<br> - rs1_b5_val == 85<br> - rs1_b2_val == 8<br> - rs1_b0_val == 85<br>                                                                                                           |[0x80000470]:SRLI8 ra, a7, 3<br> [0x80000474]:sd ra, 40(a4)<br>      |
|   7|[0x80002240]<br>0x0202370402010102|- rs1 : x29<br> - rd : x20<br> - imm_val == 2<br> - rs1_b5_val == 223<br>                                                                                                                                                      |[0x80000498]:SRLI8 s4, t4, 2<br> [0x8000049c]:sd s4, 48(a4)<br>      |
|   8|[0x80002248]<br>0x40040840017F077F|- rs1 : x4<br> - rd : x12<br> - imm_val == 1<br> - rs1_b6_val == 8<br> - rs1_b4_val == 128<br> - rs1_b2_val == 255<br> - rs1_b0_val == 255<br>                                                                                 |[0x800004c0]:SRLI8 a2, tp, 1<br> [0x800004c4]:sd a2, 56(a4)<br>      |
|   9|[0x80002250]<br>0x0500000000050007|- rs1 : x16<br> - rd : x5<br> - rs1_b7_val == 170<br> - rs1_b0_val == 247<br>                                                                                                                                                  |[0x800004e8]:SRLI8 t0, a6, 5<br> [0x800004ec]:sd t0, 64(a4)<br>      |
|  10|[0x80002258]<br>0x3F6F040103061055|- rs1 : x20<br> - rd : x30<br> - rs1_b7_val == 127<br> - rs1_b6_val == 223<br> - rs1_b5_val == 8<br> - rs1_b1_val == 32<br> - rs1_b0_val == 170<br>                                                                            |[0x80000510]:SRLI8 t5, s4, 1<br> [0x80000514]:sd t5, 72(a4)<br>      |
|  11|[0x80002260]<br>0x0B00000A00010100|- rs1 : x7<br> - rd : x28<br> - rs1_b7_val == 191<br> - rs1_b4_val == 170<br> - rs1_b2_val == 16<br>                                                                                                                           |[0x80000538]:SRLI8 t3, t2, 4<br> [0x8000053c]:sd t3, 80(a4)<br>      |
|  12|[0x80002268]<br>0x0601040007050007|- rs1 : x10<br> - rd : x23<br> - rs1_b7_val == 223<br> - rs1_b6_val == 32<br> - rs1_b5_val == 128<br> - rs1_b4_val == 16<br> - rs1_b3_val == 239<br> - rs1_b2_val == 191<br> - rs1_b0_val == 251<br>                           |[0x80000560]:SRLI8 s7, a0, 5<br> [0x80000564]:sd s7, 88(a4)<br>      |
|  13|[0x80002270]<br>0x0303000103000000|- rs1 : x13<br> - rd : x3<br> - rs1_b7_val == 247<br> - rs1_b6_val == 239<br> - rs1_b4_val == 64<br>                                                                                                                           |[0x80000588]:SRLI8 gp, a3, 6<br> [0x8000058c]:sd gp, 96(a4)<br>      |
|  14|[0x80002278]<br>0xFB040BDF050C0E01|- rs1 : x18<br> - rd : x11<br> - rs1_b7_val == 251<br> - rs1_b6_val == 4<br> - rs1_b4_val == 223<br> - rs1_b0_val == 1<br>                                                                                                     |[0x800005b0]:SRLI8 a1, s2, 0<br> [0x800005b4]:sd a1, 104(a4)<br>     |
|  15|[0x80002280]<br>0x7E7F080107020007|- rs1 : x11<br> - rd : x31<br> - rs1_b7_val == 253<br> - rs1_b6_val == 255<br> - rs1_b1_val == 1<br>                                                                                                                           |[0x800005d0]:SRLI8 t6, a1, 1<br> [0x800005d4]:sd t6, 112(a4)<br>     |
|  16|[0x80002288]<br>0x0F0F0F04000F0F00|- rs1 : x27<br> - rd : x19<br> - rs1_b7_val == 254<br> - rs1_b5_val == 254<br> - rs1_b1_val == 254<br>                                                                                                                         |[0x800005f0]:SRLI8 s3, s11, 4<br> [0x800005f4]:sd s3, 120(a4)<br>    |
|  17|[0x80002290]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br> - rs1_b7_val == 64<br> - rs1_b2_val == 2<br> - rs1_b0_val == 191<br>                                                                                                                              |[0x80000618]:SRLI8 zero, ra, 4<br> [0x8000061c]:sd zero, 128(a4)<br> |
|  18|[0x80002298]<br>0x20AAFF02200DFD0D|- rs1 : x2<br> - rd : x29<br> - rs1_b7_val == 32<br> - rs1_b6_val == 170<br> - rs1_b5_val == 255<br> - rs1_b4_val == 2<br> - rs1_b3_val == 32<br>                                                                              |[0x80000640]:SRLI8 t4, sp, 0<br> [0x80000644]:sd t4, 136(a4)<br>     |
|  19|[0x800022a0]<br>0x0807080301013F01|- rs1 : x26<br> - rd : x22<br> - rs1_b7_val == 16<br> - rs1_b3_val == 2<br> - rs1_b1_val == 127<br> - rs1_b0_val == 2<br>                                                                                                      |[0x80000660]:SRLI8 s6, s10, 1<br> [0x80000664]:sd s6, 144(a4)<br>    |
|  20|[0x800022a8]<br>0x0100000115011F00|- rs1 : x23<br> - rd : x15<br> - rs1_b7_val == 8<br> - rs1_b4_val == 8<br> - rs1_b3_val == 170<br>                                                                                                                             |[0x80000690]:SRLI8 a5, s7, 3<br> [0x80000694]:sd a5, 0(ra)<br>       |
|  21|[0x800022b0]<br>0x0003010003030000|- rs1 : x5<br> - rd : x2<br> - rs1_b7_val == 2<br> - rs1_b6_val == 251<br> - rs1_b5_val == 127<br> - rs1_b4_val == 0<br> - rs1_b3_val == 253<br> - rs1_b2_val == 251<br>                                                       |[0x800006b0]:SRLI8 sp, t0, 6<br> [0x800006b4]:sd sp, 8(ra)<br>       |
|  22|[0x800022b8]<br>0x006F2A06027E0255|- rs1 : x6<br> - rd : x16<br> - rs1_b7_val == 1<br> - rs1_b2_val == 253<br>                                                                                                                                                    |[0x800006d0]:SRLI8 a6, t1, 1<br> [0x800006d4]:sd a6, 16(ra)<br>      |
|  23|[0x800022c0]<br>0x7F6F107B5F7E087D|- rs1 : x12<br> - rd : x24<br> - rs1_b7_val == 255<br> - rs1_b5_val == 32<br> - rs1_b3_val == 191<br>                                                                                                                          |[0x800006f0]:SRLI8 s8, a2, 1<br> [0x800006f4]:sd s8, 24(ra)<br>      |
|  24|[0x800022c8]<br>0x001F1F1F1F1F0001|- rs1 : x8<br> - rd : x4<br> - rs1_b7_val == 0<br> - rs1_b4_val == 251<br> - rs1_b3_val == 251<br>                                                                                                                             |[0x80000710]:SRLI8 tp, fp, 3<br> [0x80000714]:sd tp, 32(ra)<br>      |
|  25|[0x800022d0]<br>0x0002000000000702|- rs1 : x28<br> - rd : x27<br> - rs1_b6_val == 85<br>                                                                                                                                                                          |[0x80000730]:SRLI8 s11, t3, 5<br> [0x80000734]:sd s11, 40(ra)<br>    |
|  26|[0x800022d8]<br>0x0000000100000001|- rs1 : x30<br> - rd : x14<br> - rs1_b6_val == 127<br> - rs1_b3_val == 0<br>                                                                                                                                                   |[0x80000750]:SRLI8 a4, t5, 7<br> [0x80000754]:sd a4, 48(ra)<br>      |
|  27|[0x800022e0]<br>0x0005000000000207|- rs1 : x15<br> - rd : x18<br> - rs1_b6_val == 191<br> - rs1_b5_val == 1<br> - rs1_b1_val == 64<br>                                                                                                                            |[0x80000778]:SRLI8 s2, a5, 5<br> [0x8000077c]:sd s2, 56(ra)<br>      |
|  28|[0x800022e8]<br>0x067B070606054003|- rs1 : x14<br> - rd : x26<br> - rs1_b6_val == 247<br> - rs1_b1_val == 128<br>                                                                                                                                                 |[0x800007a0]:SRLI8 s10, a4, 1<br> [0x800007a4]:sd s10, 64(ra)<br>    |
|  29|[0x800022f0]<br>0x020A04130200AA0E|- rs1 : x3<br> - rd : x21<br> - rs1_b2_val == 0<br> - rs1_b1_val == 170<br>                                                                                                                                                    |[0x800007c8]:SRLI8 s5, gp, 0<br> [0x800007cc]:sd s5, 72(ra)<br>      |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x13<br>                                                                                                                                                                                                  |[0x800007f0]:SRLI8 a3, zero, 3<br> [0x800007f4]:sd a3, 80(ra)<br>    |
|  31|[0x80002300]<br>0x097F060540005F6F|- rs1 : x31<br> - rd : x25<br> - rs1_b6_val == 254<br> - rs1_b3_val == 128<br> - rs1_b1_val == 191<br> - rs1_b0_val == 223<br>                                                                                                 |[0x80000810]:SRLI8 s9, t6, 1<br> [0x80000814]:sd s9, 88(ra)<br>      |
|  32|[0x80002308]<br>0x0000000000040D01|- rs1 : x24<br> - rd : x10<br> - rs1_b3_val == 1<br> - rs1_b2_val == 64<br> - rs1_b1_val == 223<br> - rs1_b0_val == 16<br>                                                                                                     |[0x80000830]:SRLI8 a0, s8, 4<br> [0x80000834]:sd a0, 96(ra)<br>      |
|  33|[0x80002310]<br>0x04FF80200F08F70D|- rs1_b4_val == 32<br> - rs1_b1_val == 247<br>                                                                                                                                                                                 |[0x80000858]:SRLI8 t6, t5, 0<br> [0x8000085c]:sd t6, 104(ra)<br>     |
|  34|[0x80002318]<br>0x0101000103033E04|- rs1_b1_val == 251<br>                                                                                                                                                                                                        |[0x80000878]:SRLI8 t6, t5, 2<br> [0x8000087c]:sd t6, 112(ra)<br>     |
|  35|[0x80002320]<br>0x0100000001010001|- rs1_b3_val == 255<br> - rs1_b1_val == 16<br>                                                                                                                                                                                 |[0x80000898]:SRLI8 t6, t5, 7<br> [0x8000089c]:sd t6, 120(ra)<br>     |
|  36|[0x80002328]<br>0x0000030002000000|- rs1_b1_val == 8<br>                                                                                                                                                                                                          |[0x800008c0]:SRLI8 t6, t5, 6<br> [0x800008c4]:sd t6, 128(ra)<br>     |
|  37|[0x80002330]<br>0x170A0101041B0001|- rs1_b2_val == 223<br> - rs1_b1_val == 4<br>                                                                                                                                                                                  |[0x800008e8]:SRLI8 t6, t5, 3<br> [0x800008ec]:sd t6, 136(ra)<br>     |
|  38|[0x80002338]<br>0x0000050007000005|- rs1_b5_val == 170<br> - rs1_b1_val == 2<br>                                                                                                                                                                                  |[0x80000908]:SRLI8 t6, t5, 5<br> [0x8000090c]:sd t6, 144(ra)<br>     |
|  39|[0x80002340]<br>0x0300020007070700|- rs1_b3_val == 247<br> - rs1_b1_val == 255<br>                                                                                                                                                                                |[0x80000930]:SRLI8 t6, t5, 5<br> [0x80000934]:sd t6, 152(ra)<br>     |
|  40|[0x80002348]<br>0x15150101001B1B1F|- rs1_b0_val == 253<br>                                                                                                                                                                                                        |[0x80000958]:SRLI8 t6, t5, 3<br> [0x8000095c]:sd t6, 160(ra)<br>     |
|  41|[0x80002350]<br>0x0101000100010001|- rs1_b6_val == 128<br> - rs1_b0_val == 254<br>                                                                                                                                                                                |[0x80000978]:SRLI8 t6, t5, 7<br> [0x8000097c]:sd t6, 168(ra)<br>     |
|  42|[0x80002358]<br>0x04011F0202100010|- rs1_b2_val == 128<br> - rs1_b0_val == 128<br>                                                                                                                                                                                |[0x80000998]:SRLI8 t6, t5, 3<br> [0x8000099c]:sd t6, 176(ra)<br>     |
|  43|[0x80002360]<br>0xEF070305FE0CF740|- rs1_b3_val == 254<br> - rs1_b0_val == 64<br>                                                                                                                                                                                 |[0x800009c0]:SRLI8 t6, t5, 0<br> [0x800009c4]:sd t6, 184(ra)<br>     |
|  44|[0x80002368]<br>0x0100001702100000|- rs1_b5_val == 2<br> - rs1_b4_val == 191<br>                                                                                                                                                                                  |[0x800009e0]:SRLI8 t6, t5, 3<br> [0x800009e4]:sd t6, 192(ra)<br>     |
|  45|[0x80002370]<br>0x0000050200000505|- rs1_b5_val == 191<br> - rs1_b4_val == 85<br>                                                                                                                                                                                 |[0x80000a08]:SRLI8 t6, t5, 5<br> [0x80000a0c]:sd t6, 200(ra)<br>     |
|  46|[0x80002378]<br>0x0000000300040000|- rs1_b4_val == 127<br>                                                                                                                                                                                                        |[0x80000a30]:SRLI8 t6, t5, 5<br> [0x80000a34]:sd t6, 208(ra)<br>     |
|  47|[0x80002380]<br>0x08030577017D6F06|- rs1_b4_val == 239<br>                                                                                                                                                                                                        |[0x80000a58]:SRLI8 t6, t5, 1<br> [0x80000a5c]:sd t6, 216(ra)<br>     |
|  48|[0x80002388]<br>0x0F0001000E000F04|- rs1_b6_val == 1<br> - rs1_b4_val == 1<br>                                                                                                                                                                                    |[0x80000a80]:SRLI8 t6, t5, 4<br> [0x80000a84]:sd t6, 224(ra)<br>     |
|  49|[0x80002390]<br>0x060A06FF13100CFF|- rs1_b4_val == 255<br>                                                                                                                                                                                                        |[0x80000aa8]:SRLI8 t6, t5, 0<br> [0x80000aac]:sd t6, 232(ra)<br>     |
|  50|[0x80002398]<br>0x03033F2A15011020|- rs1_b3_val == 85<br>                                                                                                                                                                                                         |[0x80000ad0]:SRLI8 t6, t5, 2<br> [0x80000ad4]:sd t6, 240(ra)<br>     |
|  51|[0x800023a0]<br>0x067B07093F077E40|- rs1_b3_val == 127<br>                                                                                                                                                                                                        |[0x80000af0]:SRLI8 t6, t5, 1<br> [0x80000af4]:sd t6, 248(ra)<br>     |
|  52|[0x800023a8]<br>0x3F012A04037B0110|- rs1_b0_val == 32<br>                                                                                                                                                                                                         |[0x80000b10]:SRLI8 t6, t5, 1<br> [0x80000b14]:sd t6, 256(ra)<br>     |
|  53|[0x800023b0]<br>0x3F5F07027D060604|- rs1_b0_val == 8<br>                                                                                                                                                                                                          |[0x80000b38]:SRLI8 t6, t5, 1<br> [0x80000b3c]:sd t6, 264(ra)<br>     |
|  54|[0x800023b8]<br>0x11550A120213FB04|- rs1_b0_val == 4<br>                                                                                                                                                                                                          |[0x80000b58]:SRLI8 t6, t5, 0<br> [0x80000b5c]:sd t6, 272(ra)<br>     |
|  55|[0x800023c0]<br>0x0100000F04000E0A|- rs1_b3_val == 64<br>                                                                                                                                                                                                         |[0x80000b78]:SRLI8 t6, t5, 4<br> [0x80000b7c]:sd t6, 280(ra)<br>     |
|  56|[0x800023c8]<br>0x003F37040004003E|- rs1_b6_val == 253<br>                                                                                                                                                                                                        |[0x80000b98]:SRLI8 t6, t5, 2<br> [0x80000b9c]:sd t6, 288(ra)<br>     |
|  57|[0x800023d0]<br>0x0005000001010000|- rs1_b3_val == 16<br>                                                                                                                                                                                                         |[0x80000bb8]:SRLI8 t6, t5, 4<br> [0x80000bbc]:sd t6, 296(ra)<br>     |
|  58|[0x800023d8]<br>0x0004070000020000|- rs1_b5_val == 247<br> - rs1_b3_val == 8<br>                                                                                                                                                                                  |[0x80000bd8]:SRLI8 t6, t5, 5<br> [0x80000bdc]:sd t6, 304(ra)<br>     |
|  59|[0x800023e0]<br>0x0140207F06120E0B|- rs1_b6_val == 64<br>                                                                                                                                                                                                         |[0x80000c00]:SRLI8 t6, t5, 0<br> [0x80000c04]:sd t6, 312(ra)<br>     |
|  60|[0x800023e8]<br>0x1F043F3B04373D3B|- rs1_b6_val == 16<br>                                                                                                                                                                                                         |[0x80000c28]:SRLI8 t6, t5, 2<br> [0x80000c2c]:sd t6, 320(ra)<br>     |
|  61|[0x800023f0]<br>0x0F00010F0000000D|- rs1_b6_val == 2<br>                                                                                                                                                                                                          |[0x80000c48]:SRLI8 t6, t5, 4<br> [0x80000c4c]:sd t6, 328(ra)<br>     |
|  62|[0x800023f8]<br>0x0103000301010301|- rs1_b2_val == 85<br>                                                                                                                                                                                                         |[0x80000c70]:SRLI8 t6, t5, 6<br> [0x80000c74]:sd t6, 336(ra)<br>     |
|  63|[0x80002400]<br>0x0000000000010000|- rs1_b2_val == 239<br>                                                                                                                                                                                                        |[0x80000c90]:SRLI8 t6, t5, 7<br> [0x80000c94]:sd t6, 344(ra)<br>     |
|  64|[0x80002408]<br>0x2020EF07030D100C|- rs1_b5_val == 239<br>                                                                                                                                                                                                        |[0x80000cb8]:SRLI8 t6, t5, 0<br> [0x80000cbc]:sd t6, 352(ra)<br>     |
|  65|[0x80002410]<br>0x55F7FB0FFFF71010|- rs1_b5_val == 251<br>                                                                                                                                                                                                        |[0x80000cd8]:SRLI8 t6, t5, 0<br> [0x80000cdc]:sd t6, 360(ra)<br>     |
|  66|[0x80002418]<br>0x2A0003013E080208|- rs1_b4_val == 4<br> - rs1_b2_val == 32<br>                                                                                                                                                                                   |[0x80000d00]:SRLI8 t6, t5, 2<br> [0x80000d04]:sd t6, 368(ra)<br>     |
|  67|[0x80002420]<br>0x0000000000000000|- rs1_b5_val == 64<br>                                                                                                                                                                                                         |[0x80000d28]:SRLI8 t6, t5, 7<br> [0x80000d2c]:sd t6, 376(ra)<br>     |
|  68|[0x80002428]<br>0x0100000100000000|- rs1_b5_val == 16<br>                                                                                                                                                                                                         |[0x80000d48]:SRLI8 t6, t5, 7<br> [0x80000d4c]:sd t6, 384(ra)<br>     |
|  69|[0x80002430]<br>0x0F0000010107000F|- rs1_b2_val == 127<br>                                                                                                                                                                                                        |[0x80000d68]:SRLI8 t6, t5, 4<br> [0x80000d6c]:sd t6, 392(ra)<br>     |
|  70|[0x80002440]<br>0x0217010002000A00|- rs1_b1_val == 85<br>                                                                                                                                                                                                         |[0x80000db8]:SRLI8 t6, t5, 3<br> [0x80000dbc]:sd t6, 408(ra)<br>     |
