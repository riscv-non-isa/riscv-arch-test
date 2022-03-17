
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
| SIG_REGION                | [('0x80002210', '0x80002460', '74 dwords')]      |
| COV_LABELS                | srai16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srai16.u-01.S    |
| Total Number of coverpoints| 232     |
| Total Coverpoints Hit     | 227      |
| Total Signature Updates   | 74      |
| STAT1                     | 71      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b9c]:SRAI16_U t6, t5, 2
      [0x80000ba0]:sd t6, 352(sp)
 -- Signature Address: 0x80002430 Data: 0x0000020008000010
 -- Redundant Coverpoints hit by the op
      - opcode : srai16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 2
      - rs1_h3_val == 0
      - rs1_h2_val == 2048
      - rs1_h1_val == 8192
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bdc]:SRAI16_U t6, t5, 11
      [0x80000be0]:sd t6, 368(sp)
 -- Signature Address: 0x80002440 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 11
      - rs1_h3_val == -33
      - rs1_h2_val == 64
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c38]:SRAI16_U t6, t5, 6
      [0x80000c3c]:sd t6, 392(sp)
 -- Signature Address: 0x80002458 Data: 0x0155FFF00000FF80
 -- Redundant Coverpoints hit by the op
      - opcode : srai16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 6
      - rs1_h3_val == 21845
      - rs1_h2_val == -1025
      - rs1_h0_val == -8193






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

|s.no|            signature             |                                                                            coverpoints                                                                            |                                  code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000FF000000FC00|- opcode : srai16.u<br> - rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - rs1_h0_val == -32768<br> - imm_val == 5<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 4<br> |[0x800003ac]:SRAI16_U t0, t0, 5<br> [0x800003b0]:sd t0, 0(s1)<br>       |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x31<br> - rd : x4<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h3_val == 8<br> - rs1_h2_val == -17<br> - rs1_h1_val == 512<br> - rs1_h0_val == -5<br>     |[0x800003cc]:SRAI16_U tp, t6, 15<br> [0x800003d0]:sd tp, 8(s1)<br>      |
|   3|[0x80002220]<br>0x0000FFFF00000000|- rs1 : x11<br> - rd : x7<br> - imm_val == 14<br> - rs1_h3_val == -129<br> - rs1_h1_val == 1024<br>                                                                |[0x800003e8]:SRAI16_U t2, a1, 14<br> [0x800003ec]:sd t2, 16(s1)<br>     |
|   4|[0x80002228]<br>0x0000000000000000|- rs1 : x18<br> - rd : x19<br> - imm_val == 13<br> - rs1_h3_val == -513<br>                                                                                        |[0x80000408]:SRAI16_U s3, s2, 13<br> [0x8000040c]:sd s3, 24(s1)<br>     |
|   5|[0x80002230]<br>0xFFFF000000000002|- rs1 : x27<br> - rd : x30<br> - imm_val == 12<br> - rs1_h3_val == -2049<br> - rs1_h2_val == -65<br> - rs1_h1_val == -513<br> - rs1_h0_val == 8192<br>             |[0x8000042c]:SRAI16_U t5, s11, 12<br> [0x80000430]:sd t5, 32(s1)<br>    |
|   6|[0x80002238]<br>0x0000FFFF00000000|- rs1 : x19<br> - rd : x20<br> - imm_val == 11<br> - rs1_h3_val == -65<br> - rs1_h2_val == -2049<br> - rs1_h0_val == 256<br>                                       |[0x8000044c]:SRAI16_U s4, s3, 11<br> [0x80000450]:sd s4, 40(s1)<br>     |
|   7|[0x80002240]<br>0x00000010FFE00000|- rs1 : x13<br> - rd : x21<br> - imm_val == 10<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 1<br>                                                                |[0x80000464]:SRAI16_U s5, a3, 10<br> [0x80000468]:sd s5, 48(s1)<br>     |
|   8|[0x80002248]<br>0xFFFE00100000FFE0|- rs1 : x10<br> - rd : x12<br> - imm_val == 9<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 8192<br>                                                               |[0x80000480]:SRAI16_U a2, a0, 9<br> [0x80000484]:sd a2, 56(s1)<br>      |
|   9|[0x80002250]<br>0x00000000FFC00000|- rs1 : x30<br> - rd : x2<br> - imm_val == 8<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -17<br>                                                                |[0x80000498]:SRAI16_U sp, t5, 8<br> [0x8000049c]:sd sp, 64(s1)<br>      |
|  10|[0x80002258]<br>0xFF00FF0000000000|- rs1 : x2<br> - rd : x16<br> - imm_val == 7<br> - rs1_h3_val == -32768<br> - rs1_h2_val == -32768<br> - rs1_h0_val == 2<br>                                       |[0x800004b8]:SRAI16_U a6, sp, 7<br> [0x800004bc]:sd a6, 72(s1)<br>      |
|  11|[0x80002260]<br>0x0000FFE000000001|- rs1 : x8<br> - rd : x13<br> - imm_val == 6<br> - rs1_h0_val == 64<br>                                                                                            |[0x800004d8]:SRAI16_U a3, fp, 6<br> [0x800004dc]:sd a3, 80(s1)<br>      |
|  12|[0x80002268]<br>0x00100000FFFF0000|- rs1 : x24<br> - rd : x25<br> - imm_val == 4<br> - rs1_h3_val == 256<br> - rs1_h1_val == -17<br> - rs1_h0_val == -1<br>                                           |[0x800004f8]:SRAI16_U s9, s8, 4<br> [0x800004fc]:sd s9, 88(s1)<br>      |
|  13|[0x80002270]<br>0xFFFF00010001FFF8|- rs1 : x29<br> - rd : x1<br> - imm_val == 3<br> - rs1_h0_val == -65<br>                                                                                           |[0x80000518]:SRAI16_U ra, t4, 3<br> [0x8000051c]:sd ra, 96(s1)<br>      |
|  14|[0x80002278]<br>0x0200FFC000100100|- rs1 : x14<br> - rd : x29<br> - imm_val == 2<br> - rs1_h3_val == 2048<br> - rs1_h2_val == -257<br> - rs1_h1_val == 64<br> - rs1_h0_val == 1024<br>                |[0x80000538]:SRAI16_U t4, a4, 2<br> [0x8000053c]:sd t4, 104(s1)<br>     |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x0<br> - rd : x6<br> - imm_val == 1<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                            |[0x80000554]:SRAI16_U t1, zero, 1<br> [0x80000558]:sd t1, 112(s1)<br>   |
|  16|[0x80002288]<br>0x80003FFFFEFF0800|- rs1 : x7<br> - rd : x11<br> - imm_val == 0<br> - rs1_h1_val == -257<br> - rs1_h0_val == 2048<br>                                                                 |[0x8000057c]:SRAI16_U a1, t2, 0<br> [0x80000580]:sd a1, 120(s1)<br>     |
|  17|[0x80002290]<br>0xEAABE0000000FFC0|- rs1 : x26<br> - rd : x8<br> - rs1_h3_val == -21846<br> - rs1_h1_val == -1<br> - rs1_h0_val == -257<br>                                                           |[0x80000594]:SRAI16_U fp, s10, 2<br> [0x80000598]:sd fp, 128(s1)<br>    |
|  18|[0x80002298]<br>0x0000000000000000|- rs1 : x22<br> - rd : x0<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -1025<br> - rs1_h0_val == -8193<br>                                                        |[0x800005b4]:SRAI16_U zero, s6, 6<br> [0x800005b8]:sd zero, 136(s1)<br> |
|  19|[0x800022a0]<br>0x040002AB00000000|- rs1 : x15<br> - rd : x27<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 21845<br>                                                                                 |[0x800005d4]:SRAI16_U s11, a5, 5<br> [0x800005d8]:sd s11, 144(s1)<br>   |
|  20|[0x800022a8]<br>0xFF8000000000FFE0|- rs1 : x21<br> - rd : x14<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 16<br> - rs1_h1_val == -33<br> - rs1_h0_val == -4097<br>                                 |[0x800005f4]:SRAI16_U a4, s5, 7<br> [0x800005f8]:sd a4, 152(s1)<br>     |
|  21|[0x800022b0]<br>0xDFFFFEFFFFFB0080|- rs1 : x6<br> - rd : x10<br> - rs1_h3_val == -8193<br> - rs1_h1_val == -5<br> - rs1_h0_val == 128<br>                                                             |[0x80000614]:SRAI16_U a0, t1, 0<br> [0x80000618]:sd a0, 160(s1)<br>     |
|  22|[0x800022b8]<br>0xFFFE000000100000|- rs1 : x23<br> - rd : x22<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 256<br> - rs1_h1_val == 32767<br>                                                         |[0x80000634]:SRAI16_U s6, s7, 11<br> [0x80000638]:sd s6, 168(s1)<br>    |
|  23|[0x800022c0]<br>0xFFFFFFC000400000|- rs1 : x20<br> - rd : x15<br> - rs1_h3_val == -257<br> - rs1_h2_val == -16385<br>                                                                                 |[0x80000654]:SRAI16_U a5, s4, 8<br> [0x80000658]:sd a5, 176(s1)<br>     |
|  24|[0x800022c8]<br>0x00000000FFF00000|- rs1 : x17<br> - rd : x3<br> - rs1_h3_val == -33<br> - rs1_h2_val == 2<br> - rs1_h0_val == 4<br>                                                                  |[0x8000066c]:SRAI16_U gp, a7, 10<br> [0x80000670]:sd gp, 184(s1)<br>    |
|  25|[0x800022d0]<br>0xFFFF0800FC000200|- rs1 : x28<br> - rd : x23<br> - rs1_h3_val == -17<br> - rs1_h2_val == 32767<br>                                                                                   |[0x80000690]:SRAI16_U s7, t3, 4<br> [0x80000694]:sd s7, 0(sp)<br>       |
|  26|[0x800022d8]<br>0xFFFF008000012000|- rs1 : x12<br> - rd : x17<br> - rs1_h3_val == -5<br> - rs1_h2_val == 512<br> - rs1_h0_val == 32767<br>                                                            |[0x800006ac]:SRAI16_U a7, a2, 2<br> [0x800006b0]:sd a7, 8(sp)<br>       |
|  27|[0x800022e0]<br>0x0000000000000000|- rs1 : x25<br> - rd : x26<br> - rs1_h3_val == -3<br> - rs1_h2_val == -5<br>                                                                                       |[0x800006cc]:SRAI16_U s10, s9, 14<br> [0x800006d0]:sd s10, 16(sp)<br>   |
|  28|[0x800022e8]<br>0x0000000200000000|- rs1 : x16<br> - rd : x31<br> - rs1_h3_val == -2<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 256<br> - rs1_h0_val == 512<br>                                    |[0x800006e4]:SRAI16_U t6, a6, 13<br> [0x800006e8]:sd t6, 24(sp)<br>     |
|  29|[0x800022f0]<br>0x04000000FFFE0001|- rs1 : x4<br> - rd : x24<br> - rs1_h3_val == 16384<br> - rs1_h0_val == 8<br>                                                                                      |[0x80000704]:SRAI16_U s8, tp, 4<br> [0x80000708]:sd s8, 32(sp)<br>      |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x1<br> - rd : x28<br> - rs1_h3_val == 8192<br>                                                                                                             |[0x80000724]:SRAI16_U t3, ra, 15<br> [0x80000728]:sd t3, 40(sp)<br>     |
|  31|[0x80002300]<br>0x0004000000010000|- rs1 : x3<br> - rd : x18<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 64<br>                                                                                      |[0x80000744]:SRAI16_U s2, gp, 10<br> [0x80000748]:sd s2, 48(sp)<br>     |
|  32|[0x80002308]<br>0x0000FFF800000000|- rs1 : x9<br> - rs1_h3_val == 1024<br>                                                                                                                            |[0x80000764]:SRAI16_U a7, s1, 12<br> [0x80000768]:sd a7, 56(sp)<br>     |
|  33|[0x80002310]<br>0x0040FC0000000000|- rd : x9<br> - rs1_h3_val == 512<br> - rs1_h1_val == 1<br>                                                                                                        |[0x80000784]:SRAI16_U s1, t0, 3<br> [0x80000788]:sd s1, 64(sp)<br>      |
|  34|[0x80002318]<br>0x0000FFFCFFFF0000|- rs1_h3_val == 128<br> - rs1_h1_val == -4097<br>                                                                                                                  |[0x800007a4]:SRAI16_U t6, t5, 13<br> [0x800007a8]:sd t6, 72(sp)<br>     |
|  35|[0x80002320]<br>0x0000FFFC0000FFFE|- rs1_h3_val == -1<br> - rs1_h0_val == -16385<br>                                                                                                                  |[0x800007c4]:SRAI16_U t6, t5, 13<br> [0x800007c8]:sd t6, 80(sp)<br>     |
|  36|[0x80002328]<br>0x000000200000FFF8|- rs1_h1_val == 16<br> - rs1_h0_val == -2049<br>                                                                                                                   |[0x800007e0]:SRAI16_U t6, t5, 8<br> [0x800007e4]:sd t6, 88(sp)<br>      |
|  37|[0x80002330]<br>0x000000080000FFFF|- rs1_h0_val == -1025<br>                                                                                                                                          |[0x800007f4]:SRAI16_U t6, t5, 11<br> [0x800007f8]:sd t6, 96(sp)<br>     |
|  38|[0x80002338]<br>0x0000FFFF0000FFFF|- rs1_h2_val == -513<br> - rs1_h1_val == 32<br> - rs1_h0_val == -513<br>                                                                                           |[0x8000080c]:SRAI16_U t6, t5, 10<br> [0x80000810]:sd t6, 104(sp)<br>    |
|  39|[0x80002340]<br>0xFFFEFFF60006FF7F|- rs1_h0_val == -129<br>                                                                                                                                           |[0x8000082c]:SRAI16_U t6, t5, 0<br> [0x80000830]:sd t6, 112(sp)<br>     |
|  40|[0x80002348]<br>0xFFFCFFFF0001FFF0|- rs1_h2_val == -3<br> - rs1_h1_val == 2<br> - rs1_h0_val == -33<br>                                                                                               |[0x8000084c]:SRAI16_U t6, t5, 1<br> [0x80000850]:sd t6, 120(sp)<br>     |
|  41|[0x80002350]<br>0xFFF0FFC000200000|- rs1_h1_val == 8192<br> - rs1_h0_val == -9<br>                                                                                                                    |[0x80000874]:SRAI16_U t6, t5, 8<br> [0x80000878]:sd t6, 128(sp)<br>     |
|  42|[0x80002358]<br>0x0000FF0000000000|- rs1_h0_val == -3<br>                                                                                                                                             |[0x8000088c]:SRAI16_U t6, t5, 5<br> [0x80000890]:sd t6, 136(sp)<br>     |
|  43|[0x80002360]<br>0x0000FFABFFE00000|- rs1_h3_val == 32<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -2<br>                                                                 |[0x800008a4]:SRAI16_U t6, t5, 8<br> [0x800008a8]:sd t6, 144(sp)<br>     |
|  44|[0x80002368]<br>0xFFF8000000000004|- rs1_h0_val == 16384<br>                                                                                                                                          |[0x800008c0]:SRAI16_U t6, t5, 12<br> [0x800008c4]:sd t6, 152(sp)<br>    |
|  45|[0x80002370]<br>0x0000000000800100|- rs1_h1_val == 2048<br> - rs1_h0_val == 4096<br>                                                                                                                  |[0x800008dc]:SRAI16_U t6, t5, 4<br> [0x800008e0]:sd t6, 160(sp)<br>     |
|  46|[0x80002378]<br>0x08000000FFF80004|- rs1_h1_val == -65<br> - rs1_h0_val == 32<br>                                                                                                                     |[0x800008fc]:SRAI16_U t6, t5, 3<br> [0x80000900]:sd t6, 168(sp)<br>     |
|  47|[0x80002380]<br>0x0000FFFE00000000|- rs1_h1_val == 8<br> - rs1_h0_val == 16<br>                                                                                                                       |[0x80000918]:SRAI16_U t6, t5, 13<br> [0x8000091c]:sd t6, 176(sp)<br>    |
|  48|[0x80002388]<br>0x0000000000000000|- rs1_h1_val == -3<br>                                                                                                                                             |[0x80000934]:SRAI16_U t6, t5, 14<br> [0x80000938]:sd t6, 184(sp)<br>    |
|  49|[0x80002390]<br>0x0008000100000400|- rs1_h3_val == 64<br> - rs1_h2_val == 8<br> - rs1_h1_val == -2<br>                                                                                                |[0x80000950]:SRAI16_U t6, t5, 3<br> [0x80000954]:sd t6, 192(sp)<br>     |
|  50|[0x80002398]<br>0x00080001FFFC2000|- rs1_h3_val == 16<br> - rs1_h2_val == 1<br>                                                                                                                       |[0x8000096c]:SRAI16_U t6, t5, 1<br> [0x80000970]:sd t6, 200(sp)<br>     |
|  51|[0x800023a0]<br>0x0000FFFE00080000|- rs1_h2_val == -33<br> - rs1_h1_val == 128<br>                                                                                                                    |[0x8000098c]:SRAI16_U t6, t5, 4<br> [0x80000990]:sd t6, 208(sp)<br>     |
|  52|[0x800023a8]<br>0xFE00000004000000|- rs1_h2_val == -9<br>                                                                                                                                             |[0x800009b0]:SRAI16_U t6, t5, 5<br> [0x800009b4]:sd t6, 216(sp)<br>     |
|  53|[0x800023b0]<br>0xFFFE000000000008|- rs1_h2_val == -2<br>                                                                                                                                             |[0x800009cc]:SRAI16_U t6, t5, 10<br> [0x800009d0]:sd t6, 224(sp)<br>    |
|  54|[0x800023b8]<br>0x00000002FFF50000|- rs1_h2_val == 4096<br> - rs1_h1_val == -21846<br>                                                                                                                |[0x800009ec]:SRAI16_U t6, t5, 11<br> [0x800009f0]:sd t6, 232(sp)<br>    |
|  55|[0x800023c0]<br>0x00000000FFFF0000|- rs1_h2_val == 2048<br>                                                                                                                                           |[0x80000a04]:SRAI16_U t6, t5, 15<br> [0x80000a08]:sd t6, 240(sp)<br>    |
|  56|[0x800023c8]<br>0xFFAB0004FFE0FFFF|- rs1_h2_val == 1024<br>                                                                                                                                           |[0x80000a24]:SRAI16_U t6, t5, 8<br> [0x80000a28]:sd t6, 248(sp)<br>     |
|  57|[0x800023d0]<br>0xFFF8000100000000|- rs1_h2_val == 128<br>                                                                                                                                            |[0x80000a44]:SRAI16_U t6, t5, 8<br> [0x80000a48]:sd t6, 256(sp)<br>     |
|  58|[0x800023d8]<br>0x00000008FC000040|- rs1_h3_val == 1<br> - rs1_h2_val == 32<br>                                                                                                                       |[0x80000a64]:SRAI16_U t6, t5, 2<br> [0x80000a68]:sd t6, 264(sp)<br>     |
|  59|[0x800023e0]<br>0xE0000001FFFF0400|- rs1_h2_val == 4<br>                                                                                                                                              |[0x80000a80]:SRAI16_U t6, t5, 2<br> [0x80000a84]:sd t6, 272(sp)<br>     |
|  60|[0x800023e8]<br>0x8000FFFF8000AAAA|- rs1_h2_val == -1<br> - rs1_h0_val == -21846<br>                                                                                                                  |[0x80000aa8]:SRAI16_U t6, t5, 0<br> [0x80000aac]:sd t6, 280(sp)<br>     |
|  61|[0x800023f0]<br>0x0001FF55FFF8FFF8|- rs1_h1_val == -1025<br>                                                                                                                                          |[0x80000ac0]:SRAI16_U t6, t5, 7<br> [0x80000ac4]:sd t6, 288(sp)<br>     |
|  62|[0x800023f8]<br>0x00803FFFFF7FFFFD|- rs1_h1_val == -129<br>                                                                                                                                           |[0x80000adc]:SRAI16_U t6, t5, 0<br> [0x80000ae0]:sd t6, 296(sp)<br>     |
|  63|[0x80002400]<br>0x0000FFFF0000FFFB|- rs1_h2_val == -4097<br>                                                                                                                                          |[0x80000afc]:SRAI16_U t6, t5, 12<br> [0x80000b00]:sd t6, 304(sp)<br>    |
|  64|[0x80002408]<br>0xFFC0008000000010|- rs1_h1_val == -9<br>                                                                                                                                             |[0x80000b1c]:SRAI16_U t6, t5, 7<br> [0x80000b20]:sd t6, 312(sp)<br>     |
|  65|[0x80002410]<br>0xFE00000210000040|- rs1_h1_val == 16384<br>                                                                                                                                          |[0x80000b34]:SRAI16_U t6, t5, 2<br> [0x80000b38]:sd t6, 320(sp)<br>     |
|  66|[0x80002418]<br>0x0000001001000000|- rs1_h1_val == 4096<br>                                                                                                                                           |[0x80000b4c]:SRAI16_U t6, t5, 4<br> [0x80000b50]:sd t6, 328(sp)<br>     |
|  67|[0x80002420]<br>0x0000000000080000|- rs1_h3_val == 4<br>                                                                                                                                              |[0x80000b6c]:SRAI16_U t6, t5, 6<br> [0x80000b70]:sd t6, 336(sp)<br>     |
|  68|[0x80002428]<br>0x00000004FFFF0000|- rs1_h3_val == 2<br> - rs1_h1_val == -2049<br>                                                                                                                    |[0x80000b84]:SRAI16_U t6, t5, 12<br> [0x80000b88]:sd t6, 344(sp)<br>    |
|  69|[0x80002438]<br>0xFFFFFFE015550002|- rs1_h2_val == -129<br> - rs1_h1_val == 21845<br>                                                                                                                 |[0x80000bbc]:SRAI16_U t6, t5, 2<br> [0x80000bc0]:sd t6, 360(sp)<br>     |
|  70|[0x80002448]<br>0xFFFF0AABFFF00AAB|- rs1_h0_val == 21845<br>                                                                                                                                          |[0x80000bfc]:SRAI16_U t6, t5, 3<br> [0x80000c00]:sd t6, 376(sp)<br>     |
|  71|[0x80002450]<br>0xFFFCE000FFFFFFF8|- rs1_h3_val == -9<br>                                                                                                                                             |[0x80000c18]:SRAI16_U t6, t5, 1<br> [0x80000c1c]:sd t6, 384(sp)<br>     |
