
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c40')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | srai8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srai8-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 63      |
| STAT1                     | 61      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000930]:SRAI8 t6, t5, 1
      [0x80000934]:sd t6, 144(ra)
 -- Signature Address: 0x80002350 Data: 0xD50300FC1F0210FD
 -- Redundant Coverpoints hit by the op
      - opcode : srai8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 1
      - rs1_b7_val == -86
      - rs1_b5_val == 0
      - rs1_b1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c10]:SRAI8 t6, t5, 0
      [0x80000c14]:sd t6, 312(ra)
 -- Signature Address: 0x800023f8 Data: 0x100080DF01FD7FFD
 -- Redundant Coverpoints hit by the op
      - opcode : srai8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 0
      - rs1_b7_val == 16
      - rs1_b6_val == 0
      - rs1_b5_val == -128
      - rs1_b4_val == -33
      - rs1_b3_val == 1
      - rs1_b2_val == -3
      - rs1_b1_val == 127
      - rs1_b0_val == -3






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

|s.no|            signature             |                                                                                                            coverpoints                                                                                                             |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFEFE01F0080FF8F0|- opcode : srai8<br> - rs1 : x7<br> - rd : x7<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 3<br> - rs1_b7_val == -9<br> - rs1_b6_val == -9<br> - rs1_b4_val == -128<br> - rs1_b3_val == 64<br> - rs1_b2_val == 127<br> |[0x800003b0]:SRAI8 t2, t2, 3<br> [0x800003b4]:sd t2, 0(a5)<br>      |
|   2|[0x80002218]<br>0x00FF000000FF0000|- rs1 : x24<br> - rd : x14<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b7_val == 4<br> - rs1_b5_val == 64<br> - rs1_b4_val == 0<br> - rs1_b2_val == -3<br> - rs1_b1_val == 64<br>                                                  |[0x800003d8]:SRAI8 a4, s8, 7<br> [0x800003dc]:sd a4, 8(a5)<br>      |
|   3|[0x80002220]<br>0x00FFFFFFFF000101|- rs1 : x19<br> - rd : x4<br> - imm_val == 6<br> - rs1_b3_val == -17<br> - rs1_b1_val == 127<br> - rs1_b0_val == 127<br>                                                                                                            |[0x800003f8]:SRAI8 tp, s3, 6<br> [0x800003fc]:sd tp, 16(a5)<br>     |
|   4|[0x80002228]<br>0x0000000000000000|- rs1 : x0<br> - rd : x5<br> - imm_val == 5<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                           |[0x80000420]:SRAI8 t0, zero, 5<br> [0x80000424]:sd t0, 24(a5)<br>   |
|   5|[0x80002230]<br>0x0000FF00FFFF05FF|- rs1 : x28<br> - rd : x1<br> - imm_val == 4<br> - rs1_b5_val == -3<br> - rs1_b4_val == 2<br> - rs1_b3_val == -1<br> - rs1_b1_val == 85<br>                                                                                         |[0x80000440]:SRAI8 ra, t3, 4<br> [0x80000444]:sd ra, 32(a5)<br>     |
|   6|[0x80002238]<br>0xFEFFF7EAFDFEFE02|- rs1 : x18<br> - rd : x26<br> - imm_val == 2<br> - rs1_b6_val == -2<br> - rs1_b5_val == -33<br> - rs1_b4_val == -86<br> - rs1_b2_val == -5<br>                                                                                     |[0x80000460]:SRAI8 s10, s2, 2<br> [0x80000464]:sd s10, 40(a5)<br>   |
|   7|[0x80002240]<br>0x0404FBFFEFFFFF20|- rs1 : x11<br> - rd : x21<br> - imm_val == 1<br> - rs1_b4_val == -1<br> - rs1_b3_val == -33<br> - rs1_b2_val == -1<br> - rs1_b1_val == -2<br> - rs1_b0_val == 64<br>                                                               |[0x80000478]:SRAI8 s5, a1, 1<br> [0x8000047c]:sd s5, 48(a5)<br>     |
|   8|[0x80002248]<br>0x09FA2004F905FD05|- rs1 : x27<br> - rd : x9<br> - imm_val == 0<br> - rs1_b5_val == 32<br> - rs1_b4_val == 4<br> - rs1_b1_val == -3<br>                                                                                                                |[0x80000498]:SRAI8 s1, s11, 0<br> [0x8000049c]:sd s1, 56(a5)<br>    |
|   9|[0x80002250]<br>0xFEFE00FF01FFFF00|- rs1 : x14<br> - rd : x22<br> - rs1_b7_val == -86<br> - rs1_b6_val == -65<br> - rs1_b4_val == -17<br>                                                                                                                              |[0x800004c0]:SRAI8 s6, a4, 6<br> [0x800004c4]:sd s6, 64(a5)<br>     |
|  10|[0x80002258]<br>0x0AFF0AFFFF0004F0|- rs1 : x26<br> - rd : x31<br> - rs1_b7_val == 85<br> - rs1_b5_val == 85<br> - rs1_b4_val == -5<br> - rs1_b3_val == -5<br> - rs1_b1_val == 32<br>                                                                                   |[0x800004e8]:SRAI8 t6, s10, 3<br> [0x800004ec]:sd t6, 72(a5)<br>    |
|  11|[0x80002260]<br>0x0000FFFF0000FF00|- rs1 : x30<br> - rd : x11<br> - rs1_b7_val == 127<br> - rs1_b6_val == 85<br> - rs1_b5_val == -128<br> - rs1_b4_val == -65<br> - rs1_b3_val == 85<br> - rs1_b1_val == -86<br> - rs1_b0_val == 4<br>                                 |[0x80000510]:SRAI8 a1, t5, 7<br> [0x80000514]:sd a1, 80(a5)<br>     |
|  12|[0x80002268]<br>0xDF03FCFE08E000FD|- rs1 : x16<br> - rd : x18<br> - rs1_b7_val == -65<br> - rs1_b4_val == -3<br> - rs1_b3_val == 16<br>                                                                                                                                |[0x80000530]:SRAI8 s2, a6, 1<br> [0x80000534]:sd s2, 88(a5)<br>     |
|  13|[0x80002270]<br>0xF73FFDFFE0FC01FB|- rs1 : x5<br> - rd : x12<br> - rs1_b7_val == -17<br> - rs1_b6_val == 127<br> - rs1_b1_val == 2<br>                                                                                                                                 |[0x80000550]:SRAI8 a2, t0, 1<br> [0x80000554]:sd a2, 96(a5)<br>     |
|  14|[0x80002278]<br>0xFFFF00FF00000000|- rs1 : x31<br> - rd : x8<br> - rs1_b7_val == -5<br> - rs1_b6_val == -33<br> - rs1_b5_val == 1<br> - rs1_b4_val == -33<br> - rs1_b3_val == 32<br> - rs1_b0_val == 32<br>                                                            |[0x80000570]:SRAI8 fp, t6, 7<br> [0x80000574]:sd fp, 104(a5)<br>    |
|  15|[0x80002280]<br>0xFE01FC3FFED503DF|- rs1 : x1<br> - rd : x28<br> - rs1_b7_val == -3<br> - rs1_b4_val == 127<br> - rs1_b3_val == -3<br> - rs1_b2_val == -86<br> - rs1_b0_val == -65<br>                                                                                 |[0x80000590]:SRAI8 t3, ra, 1<br> [0x80000594]:sd t3, 112(a5)<br>    |
|  16|[0x80002288]<br>0xFFF70700F800FFFF|- rs1 : x21<br> - rd : x29<br> - rs1_b7_val == -2<br> - rs1_b0_val == -3<br>                                                                                                                                                        |[0x800005b0]:SRAI8 t4, s5, 3<br> [0x800005b4]:sd t4, 120(a5)<br>    |
|  17|[0x80002290]<br>0xFE01000100000001|- rs1 : x3<br> - rd : x2<br> - rs1_b7_val == -128<br> - rs1_b6_val == 64<br> - rs1_b4_val == 85<br>                                                                                                                                 |[0x800005d8]:SRAI8 sp, gp, 6<br> [0x800005dc]:sd sp, 128(a5)<br>    |
|  18|[0x80002298]<br>0x00FF00000000FFFF|- rs1 : x9<br> - rd : x16<br> - rs1_b7_val == 64<br> - rs1_b6_val == -17<br> - rs1_b5_val == 4<br> - rs1_b3_val == 4<br> - rs1_b2_val == 4<br> - rs1_b0_val == -5<br>                                                               |[0x800005f8]:SRAI8 a6, s1, 7<br> [0x800005fc]:sd a6, 136(a5)<br>    |
|  19|[0x800022a0]<br>0x01FF00FFFE00FC00|- rs1 : x4<br> - rd : x3<br> - rs1_b7_val == 32<br> - rs1_b2_val == 8<br> - rs1_b1_val == -128<br> - rs1_b0_val == 2<br>                                                                                                            |[0x80000620]:SRAI8 gp, tp, 5<br> [0x80000624]:sd gp, 144(a5)<br>    |
|  20|[0x800022a8]<br>0x00FF0100FF0000FF|- rs1 : x23<br> - rd : x13<br> - rs1_b7_val == 16<br> - rs1_b1_val == 8<br> - rs1_b0_val == -1<br>                                                                                                                                  |[0x80000648]:SRAI8 a3, s7, 6<br> [0x8000064c]:sd a3, 152(a5)<br>    |
|  21|[0x800022b0]<br>0x02FB15FFFB02FBFF|- rs1 : x17<br> - rd : x10<br> - rs1_b7_val == 8<br> - rs1_b1_val == -17<br>                                                                                                                                                        |[0x80000670]:SRAI8 a0, a7, 2<br> [0x80000674]:sd a0, 160(a5)<br>    |
|  22|[0x800022b8]<br>0x0010020001010000|- rs1 : x6<br> - rd : x19<br> - rs1_b7_val == 2<br> - rs1_b5_val == 8<br>                                                                                                                                                           |[0x80000690]:SRAI8 s3, t1, 2<br> [0x80000694]:sd s3, 168(a5)<br>    |
|  23|[0x800022c0]<br>0x0000FFFF0000FFFF|- rs1 : x2<br> - rd : x20<br> - rs1_b7_val == 1<br> - rs1_b3_val == 8<br> - rs1_b1_val == -9<br>                                                                                                                                    |[0x800006b8]:SRAI8 s4, sp, 7<br> [0x800006bc]:sd s4, 0(ra)<br>      |
|  24|[0x800022c8]<br>0x00FEFFFDFFFEFFFF|- rs1 : x20<br> - rd : x30<br> - rs1_b3_val == -2<br> - rs1_b2_val == -33<br>                                                                                                                                                       |[0x800006e0]:SRAI8 t5, s4, 5<br> [0x800006e4]:sd t5, 8(ra)<br>      |
|  25|[0x800022d0]<br>0x0000000000000000|- rs1 : x13<br> - rd : x0<br> - rs1_b7_val == -1<br> - rs1_b2_val == -2<br>                                                                                                                                                         |[0x80000708]:SRAI8 zero, a3, 1<br> [0x8000070c]:sd zero, 16(ra)<br> |
|  26|[0x800022d8]<br>0xFDFA070007FFFFFF|- rs1 : x10<br> - rd : x15<br> - rs1_b7_val == -33<br> - rs1_b6_val == -86<br> - rs1_b5_val == 127<br> - rs1_b3_val == 127<br>                                                                                                      |[0x80000728]:SRAI8 a5, a0, 4<br> [0x8000072c]:sd a5, 24(ra)<br>     |
|  27|[0x800022e0]<br>0xFF000000FF00FE01|- rs1 : x25<br> - rd : x27<br> - rs1_b1_val == -65<br>                                                                                                                                                                              |[0x80000748]:SRAI8 s11, s9, 6<br> [0x8000074c]:sd s11, 32(ra)<br>   |
|  28|[0x800022e8]<br>0x00FF0000FF00FE00|- rs1 : x15<br> - rd : x25<br> - rs1_b1_val == -33<br>                                                                                                                                                                              |[0x80000770]:SRAI8 s9, a5, 5<br> [0x80000774]:sd s9, 40(ra)<br>     |
|  29|[0x800022f0]<br>0xFF00FFFFFFFFFFFF|- rs1 : x29<br> - rd : x17<br> - rs1_b5_val == -9<br> - rs1_b4_val == -9<br> - rs1_b3_val == -9<br> - rs1_b1_val == -5<br>                                                                                                          |[0x80000790]:SRAI8 a7, t4, 6<br> [0x80000794]:sd a7, 48(ra)<br>     |
|  30|[0x800022f8]<br>0x80FBFF0408081002|- rs1 : x22<br> - rd : x24<br> - rs1_b6_val == -5<br> - rs1_b5_val == -1<br> - rs1_b1_val == 16<br>                                                                                                                                 |[0x800007b8]:SRAI8 s8, s6, 0<br> [0x800007bc]:sd s8, 56(ra)<br>     |
|  31|[0x80002300]<br>0x00FBFEFD20FB02EF|- rs1 : x8<br> - rd : x6<br> - rs1_b1_val == 4<br> - rs1_b0_val == -33<br>                                                                                                                                                          |[0x800007d8]:SRAI8 t1, fp, 1<br> [0x800007dc]:sd t1, 64(ra)<br>     |
|  32|[0x80002308]<br>0x01FC02C0F71F00C0|- rs1 : x12<br> - rd : x23<br> - rs1_b1_val == 1<br>                                                                                                                                                                                |[0x800007f8]:SRAI8 s7, a2, 1<br> [0x800007fc]:sd s7, 72(ra)<br>     |
|  33|[0x80002310]<br>0xAAFFFCBFDF80FFF7|- rs1_b6_val == -1<br> - rs1_b2_val == -128<br> - rs1_b1_val == -1<br> - rs1_b0_val == -9<br>                                                                                                                                       |[0x80000820]:SRAI8 t6, t5, 0<br> [0x80000824]:sd t6, 80(ra)<br>     |
|  34|[0x80002318]<br>0x0000FF00FE03FEFD|- rs1_b6_val == 1<br> - rs1_b5_val == -2<br> - rs1_b4_val == 8<br> - rs1_b0_val == -86<br>                                                                                                                                          |[0x80000840]:SRAI8 t6, t5, 5<br> [0x80000844]:sd t6, 88(ra)<br>     |
|  35|[0x80002320]<br>0x0503FF000000FFFE|- rs1_b2_val == 1<br> - rs1_b0_val == -17<br>                                                                                                                                                                                       |[0x80000860]:SRAI8 t6, t5, 4<br> [0x80000864]:sd t6, 96(ra)<br>     |
|  36|[0x80002328]<br>0xFFFFFFFF0100FFFF|- rs1_b5_val == -17<br> - rs1_b0_val == -2<br>                                                                                                                                                                                      |[0x80000888]:SRAI8 t6, t5, 5<br> [0x8000088c]:sd t6, 104(ra)<br>    |
|  37|[0x80002330]<br>0x02FF000000FF0000|- rs1_b5_val == 16<br> - rs1_b3_val == 1<br> - rs1_b0_val == 16<br>                                                                                                                                                                 |[0x800008a8]:SRAI8 t6, t5, 5<br> [0x800008ac]:sd t6, 112(ra)<br>    |
|  38|[0x80002338]<br>0x020100FE02FF0001|- rs1_b6_val == 8<br> - rs1_b0_val == 8<br>                                                                                                                                                                                         |[0x800008d0]:SRAI8 t6, t5, 3<br> [0x800008d4]:sd t6, 120(ra)<br>    |
|  39|[0x80002340]<br>0x00FF0000FF0000FE|- rs1_b6_val == -3<br>                                                                                                                                                                                                              |[0x800008f0]:SRAI8 t6, t5, 3<br> [0x800008f4]:sd t6, 128(ra)<br>    |
|  40|[0x80002348]<br>0x00FF0001010000FD|- rs1_b5_val == 2<br> - rs1_b4_val == 32<br>                                                                                                                                                                                        |[0x80000908]:SRAI8 t6, t5, 5<br> [0x8000090c]:sd t6, 136(ra)<br>    |
|  41|[0x80002358]<br>0xFF0000FFFFFE0000|- rs1_b4_val == -2<br> - rs1_b2_val == -65<br>                                                                                                                                                                                      |[0x80000958]:SRAI8 t6, t5, 6<br> [0x8000095c]:sd t6, 152(ra)<br>    |
|  42|[0x80002360]<br>0x02FF0202FE000000|- rs1_b4_val == 64<br>                                                                                                                                                                                                              |[0x80000980]:SRAI8 t6, t5, 5<br> [0x80000984]:sd t6, 160(ra)<br>    |
|  43|[0x80002368]<br>0xFEFBEF040101FEFF|- rs1_b5_val == -65<br> - rs1_b4_val == 16<br>                                                                                                                                                                                      |[0x800009a0]:SRAI8 t6, t5, 2<br> [0x800009a4]:sd t6, 168(ra)<br>    |
|  44|[0x80002370]<br>0xFFF8FF0002FDFF01|- rs1_b4_val == 1<br> - rs1_b2_val == -17<br>                                                                                                                                                                                       |[0x800009c0]:SRAI8 t6, t5, 3<br> [0x800009c4]:sd t6, 176(ra)<br>    |
|  45|[0x80002378]<br>0x00FEFCFEFD01FEFD|- rs1_b3_val == -86<br>                                                                                                                                                                                                             |[0x800009e8]:SRAI8 t6, t5, 5<br> [0x800009ec]:sd t6, 184(ra)<br>    |
|  46|[0x80002380]<br>0xFEFFFF00FF00FFFE|- rs1_b5_val == -5<br> - rs1_b2_val == 32<br>                                                                                                                                                                                       |[0x80000a10]:SRAI8 t6, t5, 6<br> [0x80000a14]:sd t6, 192(ra)<br>    |
|  47|[0x80002388]<br>0xFFFFFF00FF00FFFF|- rs1_b3_val == -65<br>                                                                                                                                                                                                             |[0x80000a38]:SRAI8 t6, t5, 7<br> [0x80000a3c]:sd t6, 200(ra)<br>    |
|  48|[0x80002390]<br>0x00EAFFEAE00000FE|- rs1_b3_val == -128<br> - rs1_b2_val == 2<br>                                                                                                                                                                                      |[0x80000a58]:SRAI8 t6, t5, 2<br> [0x80000a5c]:sd t6, 208(ra)<br>    |
|  49|[0x80002398]<br>0x01AA0040FEFDC001|- rs1_b0_val == 1<br>                                                                                                                                                                                                               |[0x80000a78]:SRAI8 t6, t5, 0<br> [0x80000a7c]:sd t6, 216(ra)<br>    |
|  50|[0x800023a0]<br>0x018009F7F7FAAA40|- rs1_b6_val == -128<br>                                                                                                                                                                                                            |[0x80000a98]:SRAI8 t6, t5, 0<br> [0x80000a9c]:sd t6, 224(ra)<br>    |
|  51|[0x800023a8]<br>0x0002FBFFFFFF04FD|- rs1_b6_val == 32<br>                                                                                                                                                                                                              |[0x80000ac0]:SRAI8 t6, t5, 4<br> [0x80000ac4]:sd t6, 232(ra)<br>    |
|  52|[0x800023b0]<br>0x000000FF00FF00FF|- rs1_b3_val == 2<br>                                                                                                                                                                                                               |[0x80000ae0]:SRAI8 t6, t5, 7<br> [0x80000ae4]:sd t6, 240(ra)<br>    |
|  53|[0x800023b8]<br>0xFF00FFFE00FEFF01|- rs1_b6_val == 16<br>                                                                                                                                                                                                              |[0x80000b00]:SRAI8 t6, t5, 6<br> [0x80000b04]:sd t6, 248(ra)<br>    |
|  54|[0x800023c0]<br>0x01000003000000FF|- rs1_b6_val == 4<br>                                                                                                                                                                                                               |[0x80000b28]:SRAI8 t6, t5, 5<br> [0x80000b2c]:sd t6, 256(ra)<br>    |
|  55|[0x800023c8]<br>0xFFFEEA08FFFDFF0F|- rs1_b5_val == -86<br>                                                                                                                                                                                                             |[0x80000b48]:SRAI8 t6, t5, 2<br> [0x80000b4c]:sd t6, 264(ra)<br>    |
|  56|[0x800023d0]<br>0xF0FF01EFFFFDFEFE|- rs1_b2_val == -9<br>                                                                                                                                                                                                              |[0x80000b68]:SRAI8 t6, t5, 2<br> [0x80000b6c]:sd t6, 272(ra)<br>    |
|  57|[0x800023d8]<br>0x1501FF0F001000FE|- rs1_b2_val == 64<br>                                                                                                                                                                                                              |[0x80000b88]:SRAI8 t6, t5, 2<br> [0x80000b8c]:sd t6, 280(ra)<br>    |
|  58|[0x800023e0]<br>0xFCFF0000FF00FD02|- rs1_b2_val == 16<br>                                                                                                                                                                                                              |[0x80000ba8]:SRAI8 t6, t5, 5<br> [0x80000bac]:sd t6, 288(ra)<br>    |
|  59|[0x800023e8]<br>0xFE000000FB00FD00|- rs1_b6_val == 2<br>                                                                                                                                                                                                               |[0x80000bd0]:SRAI8 t6, t5, 3<br> [0x80000bd4]:sd t6, 296(ra)<br>    |
|  60|[0x800023f0]<br>0xE00104DFFD2AFD04|- rs1_b2_val == 85<br>                                                                                                                                                                                                              |[0x80000bf0]:SRAI8 t6, t5, 1<br> [0x80000bf4]:sd t6, 304(ra)<br>    |
|  61|[0x80002400]<br>0xFE00000000030202|- rs1_b0_val == 85<br>                                                                                                                                                                                                              |[0x80000c38]:SRAI8 t6, t5, 5<br> [0x80000c3c]:sd t6, 320(ra)<br>    |
