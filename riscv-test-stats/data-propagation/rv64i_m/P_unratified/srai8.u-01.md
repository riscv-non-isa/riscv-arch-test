
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c50')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | srai8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srai8.u-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 63      |
| STAT1                     | 59      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a08]:SRAI8_U t6, t5, 5
      [0x80000a0c]:sd t6, 176(sp)
 -- Signature Address: 0x80002380 Data: 0x0000020000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 5
      - rs1_b5_val == 64
      - rs1_b4_val == 0
      - rs1_b2_val == 4
      - rs1_b1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be0]:SRAI8_U t6, t5, 6
      [0x80000be4]:sd t6, 280(sp)
 -- Signature Address: 0x800023e8 Data: 0x00FF00FF0100FF00
 -- Redundant Coverpoints hit by the op
      - opcode : srai8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 6
      - rs1_b4_val == -65
      - rs1_b3_val == 32
      - rs1_b2_val == 0
      - rs1_b0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:SRAI8_U t6, t5, 3
      [0x80000c04]:sd t6, 288(sp)
 -- Signature Address: 0x800023f0 Data: 0x0100080000FF1000
 -- Redundant Coverpoints hit by the op
      - opcode : srai8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 3
      - rs1_b6_val == 0
      - rs1_b5_val == 64
      - rs1_b4_val == 0
      - rs1_b1_val == 127
      - rs1_b0_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c48]:SRAI8_U t6, t5, 3
      [0x80000c4c]:sd t6, 304(sp)
 -- Signature Address: 0x80002400 Data: 0x01F5FFFE0800F808
 -- Redundant Coverpoints hit by the op
      - opcode : srai8.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 3
      - rs1_b6_val == -86
      - rs1_b4_val == -17
      - rs1_b3_val == 64






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

|s.no|            signature             |                                                                                                                  coverpoints                                                                                                                   |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00010000000200FC|- opcode : srai8.u<br> - rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 5<br> - rs1_b6_val == 32<br> - rs1_b4_val == -1<br> - rs1_b3_val == 4<br> - rs1_b2_val == 64<br> - rs1_b1_val == -1<br>               |[0x800003b0]:SRAI8_U gp, gp, 5<br> [0x800003b4]:sd gp, 0(ra)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x0<br> - rd : x6<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br> |[0x800003d8]:SRAI8_U t1, zero, 7<br> [0x800003dc]:sd t1, 8(ra)<br>    |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x4<br> - rd : x25<br> - imm_val == 6<br> - rs1_b7_val == 1<br> - rs1_b5_val == 1<br> - rs1_b1_val == -2<br>                                                                                                                             |[0x800003f8]:SRAI8_U s9, tp, 6<br> [0x800003fc]:sd s9, 16(ra)<br>     |
|   4|[0x80002228]<br>0x01010000FF00FC00|- rs1 : x22<br> - rd : x20<br> - imm_val == 4<br> - rs1_b7_val == 16<br> - rs1_b2_val == -1<br> - rs1_b1_val == -65<br> - rs1_b0_val == -5<br>                                                                                                  |[0x80000420]:SRAI8_U s4, s6, 4<br> [0x80000424]:sd s4, 24(ra)<br>     |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x12<br> - rd : x0<br> - imm_val == 3<br> - rs1_b6_val == -86<br> - rs1_b4_val == -17<br> - rs1_b3_val == 64<br>                                                                                                                         |[0x80000440]:SRAI8_U zero, a2, 3<br> [0x80000444]:sd zero, 32(ra)<br> |
|   6|[0x80002238]<br>0x04FF20FF151000F0|- rs1 : x20<br> - rd : x14<br> - imm_val == 2<br> - rs1_b5_val == 127<br> - rs1_b3_val == 85<br> - rs1_b0_val == -65<br>                                                                                                                        |[0x80000460]:SRAI8_U a4, s4, 2<br> [0x80000464]:sd a4, 40(ra)<br>     |
|   7|[0x80002240]<br>0x2020E0FEFF0440FE|- rs1 : x25<br> - rd : x5<br> - imm_val == 1<br> - rs1_b7_val == 64<br> - rs1_b6_val == 64<br> - rs1_b5_val == -65<br> - rs1_b4_val == -5<br> - rs1_b3_val == -3<br> - rs1_b1_val == 127<br>                                                    |[0x80000480]:SRAI8_U t0, s9, 1<br> [0x80000484]:sd t0, 48(ra)<br>     |
|   8|[0x80002248]<br>0x7FFF4002C0EF0101|- rs1 : x11<br> - rd : x29<br> - imm_val == 0<br> - rs1_b7_val == 127<br> - rs1_b6_val == -1<br> - rs1_b5_val == 64<br> - rs1_b4_val == 2<br> - rs1_b2_val == -17<br> - rs1_b1_val == 1<br> - rs1_b0_val == 1<br>                               |[0x800004a8]:SRAI8_U t4, a1, 0<br> [0x800004ac]:sd t4, 56(ra)<br>     |
|   9|[0x80002250]<br>0xF501FF0B00FF00FC|- rs1 : x21<br> - rd : x19<br> - rs1_b7_val == -86<br> - rs1_b4_val == 85<br> - rs1_b3_val == 2<br> - rs1_b0_val == -33<br>                                                                                                                     |[0x800004c8]:SRAI8_U s3, s5, 3<br> [0x800004cc]:sd s3, 64(ra)<br>     |
|  10|[0x80002258]<br>0x1502F8FEEBFE0201|- rs1 : x23<br> - rd : x26<br> - rs1_b7_val == 85<br> - rs1_b6_val == 8<br> - rs1_b5_val == -33<br> - rs1_b3_val == -86<br>                                                                                                                     |[0x800004f0]:SRAI8_U s10, s7, 2<br> [0x800004f4]:sd s10, 72(ra)<br>   |
|  11|[0x80002260]<br>0xFF00000000000000|- rs1 : x7<br> - rd : x28<br> - rs1_b7_val == -65<br> - rs1_b5_val == -9<br> - rs1_b2_val == -33<br> - rs1_b1_val == 32<br> - rs1_b0_val == 2<br>                                                                                               |[0x80000518]:SRAI8_U t3, t2, 7<br> [0x8000051c]:sd t3, 80(ra)<br>     |
|  12|[0x80002268]<br>0xFCFC0100FF080101|- rs1 : x18<br> - rd : x22<br> - rs1_b7_val == -33<br> - rs1_b6_val == -33<br>                                                                                                                                                                  |[0x80000538]:SRAI8_U s6, s2, 3<br> [0x8000053c]:sd s6, 88(ra)<br>     |
|  13|[0x80002270]<br>0xFCFEFEFFFE010102|- rs1 : x19<br> - rd : x15<br> - rs1_b7_val == -17<br> - rs1_b6_val == -9<br> - rs1_b4_val == -3<br> - rs1_b1_val == 4<br>                                                                                                                      |[0x80000558]:SRAI8_U a5, s3, 2<br> [0x8000055c]:sd a5, 96(ra)<br>     |
|  14|[0x80002278]<br>0xFEFFFE00FEFFF0E0|- rs1 : x6<br> - rd : x7<br> - rs1_b7_val == -9<br> - rs1_b4_val == -2<br> - rs1_b2_val == -3<br>                                                                                                                                               |[0x80000580]:SRAI8_U t2, t1, 2<br> [0x80000584]:sd t2, 104(ra)<br>    |
|  15|[0x80002280]<br>0xFB04FC10FE7FC0FB|- rs1 : x24<br> - rd : x30<br> - rs1_b7_val == -5<br> - rs1_b6_val == 4<br> - rs1_b4_val == 16<br> - rs1_b3_val == -2<br> - rs1_b2_val == 127<br>                                                                                               |[0x800005a0]:SRAI8_U t5, s8, 0<br> [0x800005a4]:sd t5, 112(ra)<br>    |
|  16|[0x80002288]<br>0x0000000001000000|- rs1 : x17<br> - rd : x10<br> - rs1_b7_val == -3<br> - rs1_b2_val == -2<br>                                                                                                                                                                    |[0x800005c0]:SRAI8_U a0, a7, 7<br> [0x800005c4]:sd a0, 120(ra)<br>    |
|  17|[0x80002290]<br>0x00FFF0080000F808|- rs1 : x5<br> - rd : x8<br> - rs1_b7_val == -2<br> - rs1_b5_val == -128<br> - rs1_b4_val == 64<br>                                                                                                                                             |[0x800005e0]:SRAI8_U fp, t0, 3<br> [0x800005e4]:sd fp, 128(ra)<br>    |
|  18|[0x80002298]<br>0xF0020008FE08FF00|- rs1 : x10<br> - rd : x12<br> - rs1_b7_val == -128<br> - rs1_b6_val == 16<br> - rs1_b5_val == -3<br> - rs1_b3_val == -17<br>                                                                                                                   |[0x80000600]:SRAI8_U a2, a0, 3<br> [0x80000604]:sd a2, 136(ra)<br>    |
|  19|[0x800022a0]<br>0x0100010000000001|- rs1 : x28<br> - rd : x23<br> - rs1_b7_val == 32<br> - rs1_b5_val == 32<br> - rs1_b3_val == 8<br> - rs1_b0_val == 32<br>                                                                                                                       |[0x80000620]:SRAI8_U s7, t3, 5<br> [0x80000624]:sd s7, 144(ra)<br>    |
|  20|[0x800022a8]<br>0x040100FF01E0E0FC|- rs1 : x2<br> - rd : x24<br> - rs1_b7_val == 8<br> - rs1_b6_val == 2<br> - rs1_b5_val == -1<br> - rs1_b0_val == -9<br>                                                                                                                         |[0x80000648]:SRAI8_U s8, sp, 1<br> [0x8000064c]:sd s8, 152(ra)<br>    |
|  21|[0x800022b0]<br>0x0000FF0000FF0200|- rs1 : x9<br> - rd : x2<br> - rs1_b7_val == 4<br> - rs1_b3_val == 16<br>                                                                                                                                                                       |[0x80000668]:SRAI8_U sp, s1, 6<br> [0x8000066c]:sd sp, 160(ra)<br>    |
|  22|[0x800022b8]<br>0x0000000001000001|- rs1 : x30<br> - rd : x18<br> - rs1_b4_val == -33<br> - rs1_b3_val == 127<br> - rs1_b2_val == 8<br> - rs1_b0_val == 127<br>                                                                                                                    |[0x80000688]:SRAI8_U s2, t5, 7<br> [0x8000068c]:sd s2, 168(ra)<br>    |
|  23|[0x800022c0]<br>0x00000000000000FF|- rs1 : x15<br> - rd : x27<br> - rs1_b7_val == -1<br> - rs1_b2_val == 1<br> - rs1_b1_val == -17<br> - rs1_b0_val == -86<br>                                                                                                                     |[0x800006a8]:SRAI8_U s11, a5, 6<br> [0x800006ac]:sd s11, 176(ra)<br>  |
|  24|[0x800022c8]<br>0x080500FC0000FBF8|- rs1 : x29<br> - rd : x31<br> - rs1_b6_val == 85<br> - rs1_b5_val == -5<br> - rs1_b4_val == -65<br> - rs1_b1_val == -86<br>                                                                                                                    |[0x800006d0]:SRAI8_U t6, t4, 4<br> [0x800006d4]:sd t6, 184(ra)<br>    |
|  25|[0x800022d0]<br>0xFF0400FFFC000000|- rs1 : x14<br> - rd : x16<br> - rs1_b6_val == 127<br> - rs1_b3_val == -128<br> - rs1_b1_val == 8<br>                                                                                                                                           |[0x800006f8]:SRAI8_U a6, a4, 5<br> [0x800006fc]:sd a6, 0(sp)<br>      |
|  26|[0x800022d8]<br>0x5540C0FAEF07DF06|- rs1 : x16<br> - rd : x13<br> - rs1_b1_val == -33<br>                                                                                                                                                                                          |[0x80000720]:SRAI8_U a3, a6, 0<br> [0x80000724]:sd a3, 8(sp)<br>      |
|  27|[0x800022e0]<br>0x0101FEFFFE01FEFE|- rs1 : x31<br> - rd : x9<br> - rs1_b2_val == 2<br> - rs1_b1_val == -9<br>                                                                                                                                                                      |[0x80000748]:SRAI8_U s1, t6, 2<br> [0x8000074c]:sd s1, 16(sp)<br>     |
|  28|[0x800022e8]<br>0xFF01000000000000|- rs1 : x26<br> - rd : x1<br> - rs1_b4_val == 1<br> - rs1_b1_val == -5<br>                                                                                                                                                                      |[0x80000770]:SRAI8_U ra, s10, 7<br> [0x80000774]:sd ra, 24(sp)<br>    |
|  29|[0x800022f0]<br>0x20FFFFF9F8F8FDDF|- rs1 : x1<br> - rd : x17<br> - rs1_b1_val == -3<br>                                                                                                                                                                                            |[0x80000790]:SRAI8_U a7, ra, 0<br> [0x80000794]:sd a7, 32(sp)<br>     |
|  30|[0x800022f8]<br>0x00000000FF04FCFD|- rs1 : x13<br> - rd : x11<br> - rs1_b6_val == -3<br> - rs1_b1_val == -128<br>                                                                                                                                                                  |[0x800007b0]:SRAI8_U a1, a3, 5<br> [0x800007b4]:sd a1, 40(sp)<br>     |
|  31|[0x80002300]<br>0x0105000000000400|- rs1 : x27<br> - rd : x21<br> - rs1_b1_val == 64<br>                                                                                                                                                                                           |[0x800007d0]:SRAI8_U s5, s11, 4<br> [0x800007d4]:sd s5, 48(sp)<br>    |
|  32|[0x80002308]<br>0x200520F807F91006|- rs1 : x8<br> - rd : x4<br> - rs1_b1_val == 16<br>                                                                                                                                                                                             |[0x800007f8]:SRAI8_U tp, fp, 0<br> [0x800007fc]:sd tp, 56(sp)<br>     |
|  33|[0x80002310]<br>0xFDF802D5FE2B0120|- rs1_b6_val == -17<br> - rs1_b4_val == -86<br> - rs1_b2_val == 85<br> - rs1_b1_val == 2<br>                                                                                                                                                    |[0x80000818]:SRAI8_U t6, t5, 1<br> [0x8000081c]:sd t6, 64(sp)<br>     |
|  34|[0x80002318]<br>0x01FF0108FC01FF15|- rs1_b4_val == 32<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                   |[0x80000838]:SRAI8_U t6, t5, 2<br> [0x8000083c]:sd t6, 72(sp)<br>     |
|  35|[0x80002320]<br>0xFFFF0108010215FC|- rs1_b1_val == 85<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                  |[0x80000860]:SRAI8_U t6, t5, 2<br> [0x80000864]:sd t6, 80(sp)<br>     |
|  36|[0x80002328]<br>0x10E0FF02020505FF|- rs1_b6_val == -65<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                  |[0x80000888]:SRAI8_U t6, t5, 1<br> [0x8000088c]:sd t6, 88(sp)<br>     |
|  37|[0x80002330]<br>0xF00801FEF8010000|- rs1_b5_val == 2<br> - rs1_b3_val == -33<br> - rs1_b2_val == 4<br> - rs1_b0_val == -2<br>                                                                                                                                                      |[0x800008b0]:SRAI8_U t6, t5, 2<br> [0x800008b4]:sd t6, 96(sp)<br>     |
|  38|[0x80002338]<br>0x020100FF00000001|- rs1_b0_val == 64<br>                                                                                                                                                                                                                          |[0x800008d8]:SRAI8_U t6, t5, 6<br> [0x800008dc]:sd t6, 104(sp)<br>    |
|  39|[0x80002340]<br>0xE0FDFEFF02FF0308|- rs1_b0_val == 16<br>                                                                                                                                                                                                                          |[0x800008f8]:SRAI8_U t6, t5, 1<br> [0x800008fc]:sd t6, 112(sp)<br>    |
|  40|[0x80002348]<br>0xFE00FEFE00000000|- rs1_b0_val == 8<br>                                                                                                                                                                                                                           |[0x80000918]:SRAI8_U t6, t5, 5<br> [0x8000091c]:sd t6, 120(sp)<br>    |
|  41|[0x80002350]<br>0x01FF020420E0C002|- rs1_b7_val == 2<br> - rs1_b5_val == 4<br> - rs1_b4_val == 8<br> - rs1_b2_val == -65<br> - rs1_b0_val == 4<br>                                                                                                                                 |[0x80000938]:SRAI8_U t6, t5, 1<br> [0x8000093c]:sd t6, 128(sp)<br>    |
|  42|[0x80002358]<br>0x000000000000FF00|- rs1_b6_val == -5<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                   |[0x80000960]:SRAI8_U t6, t5, 6<br> [0x80000964]:sd t6, 136(sp)<br>    |
|  43|[0x80002360]<br>0xFFFB2B40F002E0FF|- rs1_b5_val == 85<br> - rs1_b4_val == 127<br>                                                                                                                                                                                                  |[0x80000980]:SRAI8_U t6, t5, 1<br> [0x80000984]:sd t6, 144(sp)<br>    |
|  44|[0x80002368]<br>0xF68055F7FFF904FE|- rs1_b6_val == -128<br> - rs1_b4_val == -9<br> - rs1_b3_val == -1<br>                                                                                                                                                                          |[0x800009a0]:SRAI8_U t6, t5, 0<br> [0x800009a4]:sd t6, 152(sp)<br>    |
|  45|[0x80002370]<br>0x000000FF00000000|- rs1_b4_val == -128<br> - rs1_b3_val == 32<br>                                                                                                                                                                                                 |[0x800009c0]:SRAI8_U t6, t5, 7<br> [0x800009c4]:sd t6, 160(sp)<br>    |
|  46|[0x80002378]<br>0x0000000001FF0000|- rs1_b4_val == 4<br>                                                                                                                                                                                                                           |[0x800009e0]:SRAI8_U t6, t5, 7<br> [0x800009e4]:sd t6, 168(sp)<br>    |
|  47|[0x80002388]<br>0xFFE010FEF00002E0|- rs1_b3_val == -65<br>                                                                                                                                                                                                                         |[0x80000a28]:SRAI8_U t6, t5, 2<br> [0x80000a2c]:sd t6, 184(sp)<br>    |
|  48|[0x80002390]<br>0x0000010000000000|- rs1_b3_val == -9<br>                                                                                                                                                                                                                          |[0x80000a48]:SRAI8_U t6, t5, 6<br> [0x80000a4c]:sd t6, 192(sp)<br>    |
|  49|[0x80002398]<br>0xF8FF00FE0202FFFE|- rs1_b5_val == -2<br>                                                                                                                                                                                                                          |[0x80000a70]:SRAI8_U t6, t5, 2<br> [0x80000a74]:sd t6, 200(sp)<br>    |
|  50|[0x800023a0]<br>0x0100000000010000|- rs1_b6_val == -2<br> - rs1_b5_val == 8<br>                                                                                                                                                                                                    |[0x80000a98]:SRAI8_U t6, t5, 7<br> [0x80000a9c]:sd t6, 208(sp)<br>    |
|  51|[0x800023a8]<br>0x01FF00FC00F8FE00|- rs1_b2_val == -128<br>                                                                                                                                                                                                                        |[0x80000ac0]:SRAI8_U t6, t5, 4<br> [0x80000ac4]:sd t6, 216(sp)<br>    |
|  52|[0x800023b0]<br>0x05FCFDF0E0100200|- rs1_b2_val == 32<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                   |[0x80000ae0]:SRAI8_U t6, t5, 1<br> [0x80000ae4]:sd t6, 224(sp)<br>    |
|  53|[0x800023b8]<br>0xFEFF00FF00FF0000|- rs1_b2_val == -86<br>                                                                                                                                                                                                                         |[0x80000b08]:SRAI8_U t6, t5, 6<br> [0x80000b0c]:sd t6, 232(sp)<br>    |
|  54|[0x800023c0]<br>0xFE00000000FD0003|- rs1_b6_val == 1<br>                                                                                                                                                                                                                           |[0x80000b30]:SRAI8_U t6, t5, 5<br> [0x80000b34]:sd t6, 240(sp)<br>    |
|  55|[0x800023c8]<br>0x0000FB000100FFF8|- rs1_b5_val == -86<br>                                                                                                                                                                                                                         |[0x80000b58]:SRAI8_U t6, t5, 4<br> [0x80000b5c]:sd t6, 248(sp)<br>    |
|  56|[0x800023d0]<br>0x0000000001000000|- rs1_b5_val == 16<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                   |[0x80000b78]:SRAI8_U t6, t5, 6<br> [0x80000b7c]:sd t6, 256(sp)<br>    |
|  57|[0x800023d8]<br>0x065506FE5510F906|- rs1_b2_val == 16<br>                                                                                                                                                                                                                          |[0x80000b98]:SRAI8_U t6, t5, 0<br> [0x80000b9c]:sd t6, 264(sp)<br>    |
|  58|[0x800023e0]<br>0xFE05003F01FBEF08|- rs1_b3_val == 1<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                    |[0x80000bc0]:SRAI8_U t6, t5, 0<br> [0x80000bc4]:sd t6, 272(sp)<br>    |
|  59|[0x800023f8]<br>0x00FF000000000100|- rs1_b5_val == -17<br>                                                                                                                                                                                                                         |[0x80000c28]:SRAI8_U t6, t5, 7<br> [0x80000c2c]:sd t6, 296(sp)<br>    |
