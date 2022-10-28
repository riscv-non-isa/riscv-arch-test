
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
| COV_LABELS                | srli8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srli8.u-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
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
      [0x80000bd0]:SRLI8_U t6, t5, 1
      [0x80000bd4]:sd t6, 288(t1)
 -- Signature Address: 0x800023d0 Data: 0x0500065555208001
 -- Redundant Coverpoints hit by the op
      - opcode : srli8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 1
      - rs1_b6_val == 0
      - rs1_b4_val == 170
      - rs1_b3_val == 170
      - rs1_b2_val == 64
      - rs1_b1_val == 255
      - rs1_b0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cd0]:SRLI8_U t6, t5, 0
      [0x80000cd4]:sd t6, 344(t1)
 -- Signature Address: 0x80002408 Data: 0x1140200A12070601
 -- Redundant Coverpoints hit by the op
      - opcode : srli8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 0
      - rs1_b6_val == 64
      - rs1_b5_val == 32
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

|s.no|            signature             |                                                                                                 coverpoints                                                                                                  |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0304000000010200|- opcode : srli8.u<br> - rs1 : x23<br> - rd : x23<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 6<br> - rs1_b7_val == 223<br> - rs1_b6_val == 255<br> - rs1_b2_val == 64<br> - rs1_b1_val == 127<br> |[0x800003b8]:SRLI8_U s7, s7, 6<br> [0x800003bc]:sd s7, 0(fp)<br>      |
|   2|[0x80002218]<br>0x0000000102000000|- rs1 : x21<br> - rd : x9<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b4_val == 191<br> - rs1_b3_val == 239<br>                                                                                              |[0x800003e0]:SRLI8_U s1, s5, 7<br> [0x800003e4]:sd s1, 8(fp)<br>      |
|   3|[0x80002220]<br>0x0804010008000001|- rs1 : x30<br> - rd : x7<br> - imm_val == 5<br> - rs1_b7_val == 254<br> - rs1_b6_val == 127<br> - rs1_b4_val == 2<br> - rs1_b3_val == 247<br>                                                                |[0x80000400]:SRLI8_U t2, t5, 5<br> [0x80000404]:sd t2, 16(fp)<br>     |
|   4|[0x80002228]<br>0x0E01050001000800|- rs1 : x27<br> - rd : x5<br> - imm_val == 4<br> - rs1_b5_val == 85<br> - rs1_b4_val == 1<br> - rs1_b2_val == 2<br> - rs1_b1_val == 128<br> - rs1_b0_val == 4<br>                                             |[0x80000428]:SRLI8_U t0, s11, 4<br> [0x8000042c]:sd t0, 24(fp)<br>    |
|   5|[0x80002230]<br>0x0201200110181F00|- rs1 : x16<br> - rd : x20<br> - imm_val == 3<br> - rs1_b5_val == 253<br> - rs1_b4_val == 4<br> - rs1_b3_val == 127<br> - rs1_b2_val == 191<br> - rs1_b1_val == 251<br> - rs1_b0_val == 2<br>                 |[0x80000448]:SRLI8_U s4, a6, 3<br> [0x8000044c]:sd s4, 32(fp)<br>     |
|   6|[0x80002238]<br>0x38083E02083E0302|- rs1 : x10<br> - rd : x15<br> - imm_val == 2<br> - rs1_b6_val == 32<br> - rs1_b5_val == 247<br> - rs1_b3_val == 32<br> - rs1_b2_val == 247<br>                                                               |[0x80000470]:SRLI8_U a5, a0, 2<br> [0x80000474]:sd a5, 40(fp)<br>     |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x0<br> - rd : x31<br> - imm_val == 1<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>    |[0x80000498]:SRLI8_U t6, zero, 1<br> [0x8000049c]:sd t6, 48(fp)<br>   |
|   8|[0x80002248]<br>0x0000000000000000|- rs1 : x17<br> - rd : x0<br> - imm_val == 0<br> - rs1_b6_val == 64<br> - rs1_b5_val == 32<br> - rs1_b0_val == 1<br>                                                                                          |[0x800004c0]:SRLI8_U zero, a7, 0<br> [0x800004c4]:sd zero, 56(fp)<br> |
|   9|[0x80002250]<br>0x0300040300000204|- rs1 : x25<br> - rd : x16<br> - rs1_b7_val == 170<br> - rs1_b6_val == 2<br> - rs1_b0_val == 255<br>                                                                                                          |[0x800004e8]:SRLI8_U a6, s9, 6<br> [0x800004ec]:sd a6, 64(fp)<br>     |
|  10|[0x80002258]<br>0x0101000403040301|- rs1 : x31<br> - rd : x28<br> - rs1_b7_val == 85<br> - rs1_b4_val == 253<br> - rs1_b3_val == 223<br> - rs1_b1_val == 170<br> - rs1_b0_val == 32<br>                                                          |[0x80000510]:SRLI8_U t3, t6, 6<br> [0x80000514]:sd t3, 72(fp)<br>     |
|  11|[0x80002260]<br>0x18021F2010000101|- rs1 : x28<br> - rd : x24<br> - rs1_b7_val == 191<br> - rs1_b6_val == 16<br> - rs1_b5_val == 251<br> - rs1_b3_val == 128<br> - rs1_b2_val == 1<br>                                                           |[0x80000538]:SRLI8_U s8, t3, 3<br> [0x8000053c]:sd s8, 80(fp)<br>     |
|  12|[0x80002268]<br>0x78057F7F0A010500|- rs1 : x13<br> - rd : x12<br> - rs1_b7_val == 239<br>                                                                                                                                                        |[0x80000560]:SRLI8_U a2, a3, 1<br> [0x80000564]:sd a2, 88(fp)<br>     |
|  13|[0x80002270]<br>0x1F0B1C1F20020100|- rs1 : x3<br> - rd : x6<br> - rs1_b7_val == 247<br> - rs1_b6_val == 85<br> - rs1_b5_val == 223<br> - rs1_b4_val == 251<br> - rs1_b3_val == 253<br>                                                           |[0x80000588]:SRLI8_U t1, gp, 3<br> [0x8000058c]:sd t1, 96(fp)<br>     |
|  14|[0x80002278]<br>0x0201010100000200|- rs1 : x24<br> - rd : x22<br> - rs1_b7_val == 251<br> - rs1_b4_val == 127<br> - rs1_b1_val == 239<br>                                                                                                        |[0x800005a8]:SRLI8_U s6, s8, 7<br> [0x800005ac]:sd s6, 104(fp)<br>    |
|  15|[0x80002280]<br>0x201F0100010B000B|- rs1 : x20<br> - rd : x18<br> - rs1_b7_val == 253<br> - rs1_b6_val == 251<br> - rs1_b3_val == 4<br> - rs1_b2_val == 85<br> - rs1_b0_val == 85<br>                                                            |[0x800005c8]:SRLI8_U s2, s4, 3<br> [0x800005cc]:sd s2, 112(fp)<br>    |
|  16|[0x80002288]<br>0x400A080209040A02|- rs1 : x15<br> - rd : x29<br> - rs1_b7_val == 128<br>                                                                                                                                                        |[0x800005f0]:SRLI8_U t4, a5, 1<br> [0x800005f4]:sd t4, 120(fp)<br>    |
|  17|[0x80002290]<br>0x400A4055FD0EFE00|- rs1 : x6<br> - rd : x4<br> - rs1_b7_val == 64<br> - rs1_b5_val == 64<br> - rs1_b4_val == 85<br> - rs1_b1_val == 254<br>                                                                                     |[0x80000610]:SRLI8_U tp, t1, 0<br> [0x80000614]:sd tp, 128(fp)<br>    |
|  18|[0x80002298]<br>0x0100000200040000|- rs1 : x19<br> - rd : x13<br> - rs1_b7_val == 32<br> - rs1_b4_val == 128<br> - rs1_b2_val == 253<br> - rs1_b1_val == 4<br>                                                                                   |[0x80000638]:SRLI8_U a3, s3, 6<br> [0x8000063c]:sd a3, 136(fp)<br>    |
|  19|[0x800022a0]<br>0x0002000000000000|- rs1 : x11<br> - rd : x2<br> - rs1_b7_val == 16<br> - rs1_b6_val == 253<br>                                                                                                                                  |[0x80000660]:SRLI8_U sp, a1, 7<br> [0x80000664]:sd sp, 144(fp)<br>    |
|  20|[0x800022a8]<br>0x08FEAA1220130DFD|- rs1 : x26<br> - rd : x1<br> - rs1_b7_val == 8<br> - rs1_b6_val == 254<br> - rs1_b5_val == 170<br> - rs1_b0_val == 253<br>                                                                                   |[0x80000680]:SRLI8_U ra, s10, 0<br> [0x80000684]:sd ra, 152(fp)<br>   |
|  21|[0x800022b0]<br>0x000B000F08080101|- rs1 : x29<br> - rd : x14<br> - rs1_b7_val == 4<br> - rs1_b6_val == 170<br> - rs1_b4_val == 239<br> - rs1_b2_val == 128<br>                                                                                  |[0x800006b0]:SRLI8_U a4, t4, 4<br> [0x800006b4]:sd a4, 0(t1)<br>      |
|  22|[0x800022b8]<br>0x00180202001F0002|- rs1 : x4<br> - rd : x27<br> - rs1_b7_val == 2<br> - rs1_b6_val == 191<br> - rs1_b3_val == 2<br> - rs1_b2_val == 251<br> - rs1_b0_val == 16<br>                                                              |[0x800006d0]:SRLI8_U s11, tp, 3<br> [0x800006d4]:sd s11, 8(t1)<br>    |
|  23|[0x800022c0]<br>0x0000000000010001|- rs1 : x14<br> - rd : x26<br> - rs1_b7_val == 1<br> - rs1_b4_val == 32<br> - rs1_b0_val == 64<br>                                                                                                            |[0x800006f8]:SRLI8_U s10, a4, 7<br> [0x800006fc]:sd s10, 16(t1)<br>   |
|  24|[0x800022c8]<br>0xFF13DF0102F740FB|- rs1 : x5<br> - rd : x3<br> - rs1_b7_val == 255<br> - rs1_b1_val == 64<br> - rs1_b0_val == 251<br>                                                                                                           |[0x80000718]:SRLI8_U gp, t0, 0<br> [0x8000071c]:sd gp, 24(t1)<br>     |
|  25|[0x800022d0]<br>0x0007AA0C01080620|- rs1 : x2<br> - rd : x21<br> - rs1_b3_val == 1<br> - rs1_b2_val == 8<br>                                                                                                                                     |[0x80000738]:SRLI8_U s5, sp, 0<br> [0x8000073c]:sd s5, 32(t1)<br>     |
|  26|[0x800022d8]<br>0x0103000300040300|- rs1 : x18<br> - rd : x11<br> - rs1_b6_val == 223<br> - rs1_b5_val == 2<br> - rs1_b4_val == 170<br>                                                                                                          |[0x80000760]:SRLI8_U a1, s2, 6<br> [0x80000764]:sd a1, 40(t1)<br>     |
|  27|[0x800022e0]<br>0x081E201015010800|- rs1 : x8<br> - rd : x10<br> - rs1_b6_val == 239<br> - rs1_b5_val == 254<br> - rs1_b3_val == 170<br>                                                                                                         |[0x80000788]:SRLI8_U a0, fp, 3<br> [0x8000078c]:sd a0, 48(t1)<br>     |
|  28|[0x800022e8]<br>0x0015032B40000030|- rs1 : x9<br> - rd : x25<br> - rs1_b3_val == 255<br> - rs1_b1_val == 1<br> - rs1_b0_val == 191<br>                                                                                                           |[0x800007a0]:SRLI8_U s9, s1, 2<br> [0x800007a4]:sd s9, 56(t1)<br>     |
|  29|[0x800022f0]<br>0x040601FDEFFE557F|- rs1 : x1<br> - rd : x19<br> - rs1_b5_val == 1<br> - rs1_b2_val == 254<br> - rs1_b1_val == 85<br> - rs1_b0_val == 127<br>                                                                                    |[0x800007c0]:SRLI8_U s3, ra, 0<br> [0x800007c4]:sd s3, 64(t1)<br>     |
|  30|[0x800022f8]<br>0x0001000004000304|- rs1 : x22<br> - rd : x8<br> - rs1_b5_val == 4<br> - rs1_b2_val == 16<br> - rs1_b1_val == 191<br> - rs1_b0_val == 247<br>                                                                                    |[0x800007e8]:SRLI8_U fp, s6, 6<br> [0x800007ec]:sd fp, 72(t1)<br>     |
|  31|[0x80002300]<br>0x0200020000020202|- rs1 : x12<br> - rd : x30<br> - rs1_b5_val == 239<br> - rs1_b2_val == 223<br> - rs1_b1_val == 223<br>                                                                                                        |[0x80000810]:SRLI8_U t5, a2, 7<br> [0x80000814]:sd t5, 80(t1)<br>     |
|  32|[0x80002308]<br>0x0000020100000200|- rs1 : x7<br> - rd : x17<br> - rs1_b1_val == 247<br>                                                                                                                                                         |[0x80000838]:SRLI8_U a7, t2, 7<br> [0x8000083c]:sd a7, 88(t1)<br>     |
|  33|[0x80002310]<br>0x0001000202000202|- rs1_b4_val == 247<br> - rs1_b1_val == 253<br> - rs1_b0_val == 239<br>                                                                                                                                       |[0x80000858]:SRLI8_U t6, t5, 7<br> [0x8000085c]:sd t6, 96(t1)<br>     |
|  34|[0x80002318]<br>0x0400040004010100|- rs1_b1_val == 32<br>                                                                                                                                                                                        |[0x80000878]:SRLI8_U t6, t5, 6<br> [0x8000087c]:sd t6, 104(t1)<br>    |
|  35|[0x80002320]<br>0x0102200002040200|- rs1_b2_val == 32<br> - rs1_b1_val == 16<br>                                                                                                                                                                 |[0x800008a0]:SRLI8_U t6, t5, 3<br> [0x800008a4]:sd t6, 112(t1)<br>    |
|  36|[0x80002328]<br>0x000F001001100101|- rs1_b6_val == 247<br> - rs1_b4_val == 255<br> - rs1_b1_val == 8<br>                                                                                                                                         |[0x800008c8]:SRLI8_U t6, t5, 4<br> [0x800008cc]:sd t6, 120(t1)<br>    |
|  37|[0x80002330]<br>0x1008010101000000|- rs1_b6_val == 128<br> - rs1_b1_val == 2<br>                                                                                                                                                                 |[0x800008e8]:SRLI8_U t6, t5, 4<br> [0x800008ec]:sd t6, 128(t1)<br>    |
|  38|[0x80002338]<br>0x0004010004000402|- rs1_b1_val == 255<br>                                                                                                                                                                                       |[0x80000908]:SRLI8_U t6, t5, 6<br> [0x8000090c]:sd t6, 136(t1)<br>    |
|  39|[0x80002340]<br>0x0100000F000B010B|- rs1_b2_val == 170<br> - rs1_b0_val == 170<br>                                                                                                                                                               |[0x80000930]:SRLI8_U t6, t5, 4<br> [0x80000934]:sd t6, 144(t1)<br>    |
|  40|[0x80002348]<br>0x807E800209700300|- rs1_b5_val == 255<br>                                                                                                                                                                                       |[0x80000950]:SRLI8_U t6, t5, 1<br> [0x80000954]:sd t6, 152(t1)<br>    |
|  41|[0x80002350]<br>0x0804000707000000|- rs1_b4_val == 223<br>                                                                                                                                                                                       |[0x80000978]:SRLI8_U t6, t5, 5<br> [0x8000097c]:sd t6, 160(t1)<br>    |
|  42|[0x80002358]<br>0x0002000201010100|- rs1_b4_val == 254<br>                                                                                                                                                                                       |[0x80000998]:SRLI8_U t6, t5, 7<br> [0x8000099c]:sd t6, 168(t1)<br>    |
|  43|[0x80002360]<br>0x0213FD40400A2010|- rs1_b4_val == 64<br> - rs1_b3_val == 64<br>                                                                                                                                                                 |[0x800009b8]:SRLI8_U t6, t5, 0<br> [0x800009bc]:sd t6, 176(t1)<br>    |
|  44|[0x80002368]<br>0x0705000108080001|- rs1_b4_val == 16<br>                                                                                                                                                                                        |[0x800009e0]:SRLI8_U t6, t5, 5<br> [0x800009e4]:sd t6, 184(t1)<br>    |
|  45|[0x80002370]<br>0x550400080B80FD03|- rs1_b6_val == 4<br> - rs1_b4_val == 8<br>                                                                                                                                                                   |[0x80000a08]:SRLI8_U t6, t5, 0<br> [0x80000a0c]:sd t6, 192(t1)<br>    |
|  46|[0x80002378]<br>0x4004047E05557870|- rs1_b5_val == 8<br> - rs1_b0_val == 223<br>                                                                                                                                                                 |[0x80000a30]:SRLI8_U t6, t5, 1<br> [0x80000a34]:sd t6, 200(t1)<br>    |
|  47|[0x80002380]<br>0x0008080003010007|- rs1_b3_val == 85<br>                                                                                                                                                                                        |[0x80000a58]:SRLI8_U t6, t5, 5<br> [0x80000a5c]:sd t6, 208(t1)<br>    |
|  48|[0x80002388]<br>0x100F0B000C0E1001|- rs1_b3_val == 191<br>                                                                                                                                                                                       |[0x80000a78]:SRLI8_U t6, t5, 4<br> [0x80000a7c]:sd t6, 216(t1)<br>    |
|  49|[0x80002390]<br>0x0101020110010110|- rs1_b0_val == 254<br>                                                                                                                                                                                       |[0x80000aa0]:SRLI8_U t6, t5, 4<br> [0x80000aa4]:sd t6, 224(t1)<br>    |
|  50|[0x80002398]<br>0x1340F740BF04F780|- rs1_b2_val == 4<br> - rs1_b0_val == 128<br>                                                                                                                                                                 |[0x80000ac8]:SRLI8_U t6, t5, 0<br> [0x80000acc]:sd t6, 232(t1)<br>    |
|  51|[0x800023a0]<br>0x0100000002000000|- rs1_b3_val == 251<br>                                                                                                                                                                                       |[0x80000af0]:SRLI8_U t6, t5, 7<br> [0x80000af4]:sd t6, 240(t1)<br>    |
|  52|[0x800023a8]<br>0x0010020420011C02|- rs1_b5_val == 16<br> - rs1_b3_val == 254<br>                                                                                                                                                                |[0x80000b18]:SRLI8_U t6, t5, 3<br> [0x80000b1c]:sd t6, 248(t1)<br>    |
|  53|[0x800023b0]<br>0x010F000110050101|- rs1_b0_val == 8<br>                                                                                                                                                                                         |[0x80000b40]:SRLI8_U t6, t5, 4<br> [0x80000b44]:sd t6, 256(t1)<br>    |
|  54|[0x800023b8]<br>0x0300030000000300|- rs1_b3_val == 16<br>                                                                                                                                                                                        |[0x80000b68]:SRLI8_U t6, t5, 6<br> [0x80000b6c]:sd t6, 264(t1)<br>    |
|  55|[0x800023c0]<br>0x0307060000000000|- rs1_b5_val == 191<br> - rs1_b3_val == 8<br>                                                                                                                                                                 |[0x80000b88]:SRLI8_U t6, t5, 5<br> [0x80000b8c]:sd t6, 272(t1)<br>    |
|  56|[0x800023c8]<br>0x0000040000030000|- rs1_b6_val == 8<br>                                                                                                                                                                                         |[0x80000ba8]:SRLI8_U t6, t5, 6<br> [0x80000bac]:sd t6, 280(t1)<br>    |
|  57|[0x800023d8]<br>0x0000000001020001|- rs1_b2_val == 239<br>                                                                                                                                                                                       |[0x80000bf0]:SRLI8_U t6, t5, 7<br> [0x80000bf4]:sd t6, 296(t1)<br>    |
|  58|[0x800023e0]<br>0xFEEF7F05DF0AFE0D|- rs1_b5_val == 127<br>                                                                                                                                                                                       |[0x80000c10]:SRLI8_U t6, t5, 0<br> [0x80000c14]:sd t6, 304(t1)<br>    |
|  59|[0x800023e8]<br>0x0000020100000000|- rs1_b5_val == 128<br>                                                                                                                                                                                       |[0x80000c38]:SRLI8_U t6, t5, 6<br> [0x80000c3c]:sd t6, 312(t1)<br>    |
|  60|[0x800023f0]<br>0x0401000001040401|- rs1_b2_val == 255<br>                                                                                                                                                                                       |[0x80000c58]:SRLI8_U t6, t5, 6<br> [0x80000c5c]:sd t6, 320(t1)<br>    |
|  61|[0x800023f8]<br>0x800107F7DF12AA07|- rs1_b6_val == 1<br>                                                                                                                                                                                         |[0x80000c80]:SRLI8_U t6, t5, 0<br> [0x80000c84]:sd t6, 328(t1)<br>    |
|  62|[0x80002400]<br>0x0810050F01080000|- rs1_b7_val == 127<br> - rs1_b2_val == 127<br>                                                                                                                                                               |[0x80000ca8]:SRLI8_U t6, t5, 4<br> [0x80000cac]:sd t6, 336(t1)<br>    |
