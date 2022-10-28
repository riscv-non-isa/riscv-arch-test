
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800018c0')]      |
| SIG_REGION                | [('0x80003210', '0x800035e0', '122 dwords')]      |
| COV_LABELS                | smmwt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/smmwt-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 122      |
| STAT1                     | 120      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce4]:SMMWT t6, t5, t4
      [0x80000ce8]:sd t6, 288(ra)
 -- Signature Address: 0x800033c0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h0_val == -33
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000188c]:SMMWT t6, t5, t4
      [0x80001890]:sd t6, 816(ra)
 -- Signature Address: 0x800035d0 Data: 0xFFBFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 16384
      - rs2_h1_val == 1024
      - rs2_h0_val == -3
      - rs1_w1_val == -16777217






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

|s.no|            signature             |                                                                                                        coverpoints                                                                                                         |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x1C7238E200000010|- opcode : smmwt<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -21846<br> - rs2_h1_val == 4<br> - rs2_h0_val == 0<br> - rs1_w0_val == 262144<br>                                |[0x800003b4]:SMMWT s3, s2, s2<br> [0x800003b8]:sd s3, 0(t0)<br>     |
|   2|[0x80003218]<br>0x1C718E4300000004|- rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 32<br> - rs2_h1_val == 2<br> - rs2_h0_val == 1024<br>                                                       |[0x800003e4]:SMMWT a2, a2, a2<br> [0x800003e8]:sd a2, 8(t0)<br>     |
|   3|[0x80003220]<br>0xFFFFF7FFFFFFFEFF|- rs1 : x29<br> - rs2 : x6<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 32767<br> - rs2_h1_val == 16<br> - rs2_h0_val == 128<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -1048577<br> |[0x80000414]:SMMWT s5, t4, t1<br> [0x80000418]:sd s5, 16(t0)<br>    |
|   4|[0x80003228]<br>0xFF7FFE0000000000|- rs1 : x22<br> - rs2 : x24<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -4097<br> - rs2_h1_val == 0<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 33554432<br>                  |[0x8000043c]:SMMWT s6, s6, s8<br> [0x80000440]:sd s6, 24(t0)<br>    |
|   5|[0x80003230]<br>0xFFFFFFF700000000|- rs1 : x1<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -129<br> - rs2_h0_val == -129<br> - rs1_w1_val == 64<br> - rs1_w0_val == 4096<br>                            |[0x80000468]:SMMWT s10, ra, s10<br> [0x8000046c]:sd s10, 32(t0)<br> |
|   6|[0x80003238]<br>0x0000000005555000|- rs1 : x4<br> - rs2 : x10<br> - rd : x8<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -4097<br> - rs1_w0_val == 268435456<br>                                          |[0x80000498]:SMMWT fp, tp, a0<br> [0x8000049c]:sd fp, 40(t0)<br>    |
|   7|[0x80003240]<br>0xFFFBFF8000000000|- rs1 : x11<br> - rs2 : x27<br> - rd : x3<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -257<br> - rs2_h0_val == -257<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -33<br>                     |[0x800004c8]:SMMWT gp, a1, s11<br> [0x800004cc]:sd gp, 48(t0)<br>   |
|   8|[0x80003248]<br>0xFEAA5555FFFFFFFF|- rs1 : x17<br> - rs2 : x16<br> - rd : x1<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 2<br> - rs2_h0_val == -17<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 512<br>                                                |[0x800004f8]:SMMWT ra, a7, a6<br> [0x800004fc]:sd ra, 56(t0)<br>    |
|   9|[0x80003250]<br>0x00000000FFFFFBF8|- rs1 : x24<br> - rs2 : x2<br> - rd : x7<br> - rs2_h3_val == -513<br> - rs2_h2_val == -2<br> - rs2_h1_val == -129<br> - rs2_h0_val == 256<br> - rs1_w1_val == -17<br> - rs1_w0_val == 524288<br>                            |[0x80000524]:SMMWT t2, s8, sp<br> [0x80000528]:sd t2, 64(t0)<br>    |
|  10|[0x80003258]<br>0xFFFFFBFC00000012|- rs1 : x21<br> - rs2 : x22<br> - rd : x17<br> - rs2_h3_val == -257<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 2048<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 131072<br>                                             |[0x80000554]:SMMWT a7, s5, s6<br> [0x80000558]:sd a7, 72(t0)<br>    |
|  11|[0x80003260]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x28<br> - rd : x27<br> - rs2_h3_val == -129<br> - rs2_h0_val == -5<br>                                                                                                                              |[0x80000580]:SMMWT s11, s10, t3<br> [0x80000584]:sd s11, 80(t0)<br> |
|  12|[0x80003268]<br>0xFFEFC00000004000|- rs1 : x8<br> - rs2 : x1<br> - rd : x11<br> - rs2_h3_val == -65<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 512<br>                                                                                                       |[0x800005ac]:SMMWT a1, fp, ra<br> [0x800005b0]:sd a1, 88(t0)<br>    |
|  13|[0x80003270]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x20<br> - rd : x16<br> - rs2_h3_val == -33<br> - rs2_h2_val == 8<br> - rs2_h1_val == -32768<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                          |[0x800005d4]:SMMWT a6, zero, s4<br> [0x800005d8]:sd a6, 96(t0)<br>  |
|  14|[0x80003278]<br>0xFFFF780000000001|- rs1 : x2<br> - rs2 : x8<br> - rd : x14<br> - rs2_h3_val == -17<br> - rs2_h1_val == -16385<br> - rs1_w1_val == 134217728<br>                                                                                               |[0x80000604]:SMMWT a4, sp, fp<br> [0x80000608]:sd a4, 104(t0)<br>   |
|  15|[0x80003280]<br>0x0000000000000050|- rs1 : x16<br> - rs2 : x7<br> - rd : x20<br> - rs2_h3_val == -9<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -5<br> - rs1_w1_val == -129<br>                                                                              |[0x80000630]:SMMWT s4, a6, t2<br> [0x80000634]:sd s4, 112(t0)<br>   |
|  16|[0x80003288]<br>0xFFFFFFFFFFFEAAA8|- rs1 : x6<br> - rs2 : x13<br> - rd : x23<br> - rs2_h3_val == -5<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4<br> - rs1_w1_val == 16<br>                                                                                |[0x8000065c]:SMMWT s7, t1, a3<br> [0x80000660]:sd s7, 120(t0)<br>   |
|  17|[0x80003290]<br>0xFFFFFFFFFFFFFF80|- rs1 : x3<br> - rs2 : x29<br> - rd : x9<br> - rs2_h3_val == -3<br> - rs1_w1_val == 256<br>                                                                                                                                 |[0x8000067c]:SMMWT s1, gp, t4<br> [0x80000680]:sd s1, 128(t0)<br>   |
|  18|[0x80003298]<br>0xFFFFFFFF00000000|- rs1 : x7<br> - rs2 : x21<br> - rd : x31<br> - rs2_h3_val == -2<br> - rs1_w1_val == 2048<br>                                                                                                                               |[0x800006ac]:SMMWT t6, t2, s5<br> [0x800006b0]:sd t6, 136(t0)<br>   |
|  19|[0x800032a0]<br>0x0000000400000000|- rs1 : x13<br> - rs2 : x4<br> - rd : x5<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -17<br> - rs2_h0_val == -2049<br> - rs1_w1_val == -9<br>                                                                            |[0x800006e0]:SMMWT t0, a3, tp<br> [0x800006e4]:sd t0, 0(ra)<br>     |
|  20|[0x800032a8]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x25<br> - rd : x0<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -3<br> - rs1_w1_val == -16777217<br>                                                                       |[0x8000070c]:SMMWT zero, a0, s9<br> [0x80000710]:sd zero, 8(ra)<br> |
|  21|[0x800032b0]<br>0xFFF7FFFF00804000|- rs1 : x15<br> - rs2 : x9<br> - rd : x13<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -21846<br> - rs2_h1_val == -513<br> - rs2_h0_val == 16384<br> - rs1_w1_val == -4194305<br>                                           |[0x8000073c]:SMMWT a3, a5, s1<br> [0x80000740]:sd a3, 16(ra)<br>    |
|  22|[0x800032b8]<br>0x0555555500000200|- rs1 : x31<br> - rs2 : x5<br> - rd : x15<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -513<br> - rs2_h1_val == 64<br> - rs2_h0_val == 32<br>                                                                               |[0x80000770]:SMMWT a5, t6, t0<br> [0x80000774]:sd a5, 24(ra)<br>    |
|  23|[0x800032c0]<br>0x0000000000000080|- rs1 : x5<br> - rs2 : x3<br> - rd : x28<br> - rs2_h3_val == 2048<br>                                                                                                                                                       |[0x80000798]:SMMWT t3, t0, gp<br> [0x8000079c]:sd t3, 32(ra)<br>    |
|  24|[0x800032c8]<br>0xFFFFFFFEFFFFFFFF|- rs1 : x23<br> - rs2 : x14<br> - rd : x2<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 32<br> - rs1_w1_val == -65<br> - rs1_w0_val == -129<br>                                                                              |[0x800007c4]:SMMWT sp, s7, a4<br> [0x800007c8]:sd sp, 40(ra)<br>    |
|  25|[0x800032d0]<br>0xFFFFFFEFFFEFFF80|- rs1 : x19<br> - rs2 : x17<br> - rd : x25<br> - rs2_h3_val == 512<br> - rs2_h2_val == 64<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -513<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 8388608<br>                      |[0x800007e8]:SMMWT s9, s3, a7<br> [0x800007ec]:sd s9, 48(ra)<br>    |
|  26|[0x800032d8]<br>0x00000400FFFFFBFF|- rs1 : x27<br> - rs2 : x15<br> - rd : x4<br> - rs2_h3_val == 256<br> - rs2_h1_val == -4097<br> - rs1_w0_val == 16384<br>                                                                                                   |[0x80000810]:SMMWT tp, s11, a5<br> [0x80000814]:sd tp, 56(ra)<br>   |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x0<br> - rd : x6<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -33554433<br>                                                                             |[0x80000838]:SMMWT t1, s1, zero<br> [0x8000083c]:sd t1, 64(ra)<br>  |
|  28|[0x800032e8]<br>0x00000000FF7FFFFF|- rs1 : x30<br> - rs2 : x31<br> - rd : x10<br> - rs2_h3_val == 64<br> - rs2_h0_val == -8193<br> - rs1_w0_val == -536870913<br>                                                                                              |[0x80000864]:SMMWT a0, t5, t6<br> [0x80000868]:sd a0, 72(ra)<br>    |
|  29|[0x800032f0]<br>0x0000200000000002|- rs1 : x25<br> - rs2 : x19<br> - rd : x29<br> - rs2_h3_val == 32<br> - rs2_h2_val == -5<br> - rs2_h0_val == -33<br> - rs1_w1_val == 16777216<br>                                                                           |[0x80000894]:SMMWT t4, s9, s3<br> [0x80000898]:sd t4, 80(ra)<br>    |
|  30|[0x800032f8]<br>0xFFFFFFFF00000000|- rs1 : x20<br> - rs2 : x23<br> - rd : x30<br> - rs2_h3_val == 16<br> - rs2_h0_val == -1<br> - rs1_w0_val == -1<br>                                                                                                         |[0x800008c0]:SMMWT t5, s4, s7<br> [0x800008c4]:sd t5, 88(ra)<br>    |
|  31|[0x80003300]<br>0x0003FFFF00000000|- rs1 : x28<br> - rs2 : x30<br> - rd : x24<br> - rs2_h3_val == 8<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 8192<br>                                                                                                |[0x800008f4]:SMMWT s8, t3, t5<br> [0x800008f8]:sd s8, 96(ra)<br>    |
|  32|[0x80003308]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x11<br> - rd : x18<br> - rs2_h3_val == 4<br> - rs2_h2_val == -9<br> - rs2_h0_val == -32768<br> - rs1_w1_val == 4<br> - rs1_w0_val == -8193<br>                                                      |[0x80000920]:SMMWT s2, a4, a1<br> [0x80000924]:sd s2, 104(ra)<br>   |
|  33|[0x80003310]<br>0x00000000FFFFFFFF|- rs2_h3_val == 2<br> - rs2_h2_val == 4<br> - rs1_w0_val == -2049<br>                                                                                                                                                       |[0x80000950]:SMMWT t6, t5, t4<br> [0x80000954]:sd t6, 112(ra)<br>   |
|  34|[0x80003318]<br>0x00000000FFFFFFFA|- rs2_h3_val == 1<br> - rs2_h2_val == 4096<br> - rs1_w0_val == -17<br>                                                                                                                                                      |[0x80000978]:SMMWT t6, t5, t4<br> [0x8000097c]:sd t6, 120(ra)<br>   |
|  35|[0x80003320]<br>0x0000000000000000|- rs2_h1_val == 1<br> - rs2_h0_val == 21845<br> - rs1_w0_val == 128<br>                                                                                                                                                     |[0x8000099c]:SMMWT t6, t5, t4<br> [0x800009a0]:sd t6, 128(ra)<br>   |
|  36|[0x80003328]<br>0x0000000002000000|- rs2_h3_val == -1<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                        |[0x800009c0]:SMMWT t6, t5, t4<br> [0x800009c4]:sd t6, 136(ra)<br>   |
|  37|[0x80003330]<br>0x00000001FFF80000|- rs1_w0_val == -2147483648<br> - rs2_h2_val == 21845<br> - rs1_w1_val == 8<br>                                                                                                                                             |[0x800009e8]:SMMWT t6, t5, t4<br> [0x800009ec]:sd t6, 144(ra)<br>   |
|  38|[0x80003338]<br>0x00000000FFFFFFFF|- rs2_h2_val == -16385<br> - rs2_h0_val == 2<br> - rs1_w0_val == -1025<br>                                                                                                                                                  |[0x80000a14]:SMMWT t6, t5, t4<br> [0x80000a18]:sd t6, 152(ra)<br>   |
|  39|[0x80003340]<br>0xFFFFFFC000050000|- rs2_h2_val == -8193<br> - rs2_h0_val == 32767<br> - rs1_w1_val == 4194304<br>                                                                                                                                             |[0x80000a38]:SMMWT t6, t5, t4<br> [0x80000a3c]:sd t6, 160(ra)<br>   |
|  40|[0x80003348]<br>0xFFFFFFFFFFFFFFFD|- rs2_h2_val == -2049<br> - rs1_w0_val == 32768<br>                                                                                                                                                                         |[0x80000a64]:SMMWT t6, t5, t4<br> [0x80000a68]:sd t6, 168(ra)<br>   |
|  41|[0x80003350]<br>0x0002000000000800|- rs2_h2_val == -257<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 4194304<br>                                                                                                                                            |[0x80000a90]:SMMWT t6, t5, t4<br> [0x80000a94]:sd t6, 176(ra)<br>   |
|  42|[0x80003358]<br>0x00004000FFF80000|- rs2_h3_val == 128<br> - rs2_h0_val == -16385<br> - rs1_w0_val == 2097152<br>                                                                                                                                              |[0x80000ac0]:SMMWT t6, t5, t4<br> [0x80000ac4]:sd t6, 184(ra)<br>   |
|  43|[0x80003360]<br>0xFFFFFC0000000070|- rs2_h2_val == 16<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1048576<br>                                                                                                                                             |[0x80000ae8]:SMMWT t6, t5, t4<br> [0x80000aec]:sd t6, 192(ra)<br>   |
|  44|[0x80003368]<br>0xFFFFFFFFFFFFC000|- rs2_h2_val == 128<br> - rs1_w0_val == 65536<br>                                                                                                                                                                           |[0x80000b0c]:SMMWT t6, t5, t4<br> [0x80000b10]:sd t6, 200(ra)<br>   |
|  45|[0x80003370]<br>0xFFFFFB80FFFFFFFF|- rs2_h1_val == -1<br> - rs2_h0_val == -21846<br> - rs1_w0_val == 2048<br>                                                                                                                                                  |[0x80000b3c]:SMMWT t6, t5, t4<br> [0x80000b40]:sd t6, 208(ra)<br>   |
|  46|[0x80003378]<br>0x0000000000000000|- rs2_h0_val == -2<br> - rs1_w0_val == 1024<br>                                                                                                                                                                             |[0x80000b6c]:SMMWT t6, t5, t4<br> [0x80000b70]:sd t6, 216(ra)<br>   |
|  47|[0x80003380]<br>0xFFFFFFFFFFFFFFFE|- rs1_w1_val == 128<br> - rs1_w0_val == 256<br>                                                                                                                                                                             |[0x80000b98]:SMMWT t6, t5, t4<br> [0x80000b9c]:sd t6, 224(ra)<br>   |
|  48|[0x80003388]<br>0x02AAA800FFFFFFFF|- rs2_h2_val == -3<br> - rs1_w0_val == 64<br>                                                                                                                                                                               |[0x80000bc4]:SMMWT t6, t5, t4<br> [0x80000bc8]:sd t6, 232(ra)<br>   |
|  49|[0x80003390]<br>0xFFFFFBFFFFFFFFFF|- rs2_h1_val == -33<br> - rs2_h0_val == 4096<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 32<br>                                                                                                                           |[0x80000bec]:SMMWT t6, t5, t4<br> [0x80000bf0]:sd t6, 240(ra)<br>   |
|  50|[0x80003398]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 16<br>                                                                                                                                                                                                      |[0x80000c18]:SMMWT t6, t5, t4<br> [0x80000c1c]:sd t6, 248(ra)<br>   |
|  51|[0x800033a0]<br>0x0000000000000000|- rs1_w0_val == 8<br>                                                                                                                                                                                                       |[0x80000c3c]:SMMWT t6, t5, t4<br> [0x80000c40]:sd t6, 256(ra)<br>   |
|  52|[0x800033a8]<br>0x00000000FFFFFFFF|- rs1_w1_val == -5<br> - rs1_w0_val == 4<br>                                                                                                                                                                                |[0x80000c68]:SMMWT t6, t5, t4<br> [0x80000c6c]:sd t6, 264(ra)<br>   |
|  53|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 1<br> - rs2_h1_val == -1025<br> - rs1_w1_val == 1<br> - rs1_w0_val == 2<br>                                                                                                                                 |[0x80000c90]:SMMWT t6, t5, t4<br> [0x80000c94]:sd t6, 272(ra)<br>   |
|  54|[0x800033b8]<br>0xFFFFFFFEFFFFFFFF|- rs2_h1_val == -2<br> - rs1_w0_val == 1<br>                                                                                                                                                                                |[0x80000cbc]:SMMWT t6, t5, t4<br> [0x80000cc0]:sd t6, 280(ra)<br>   |
|  55|[0x800033c8]<br>0x0000041000000000|- rs2_h2_val == -65<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                        |[0x80000d08]:SMMWT t6, t5, t4<br> [0x80000d0c]:sd t6, 296(ra)<br>   |
|  56|[0x800033d0]<br>0x0000000000008000|- rs2_h2_val == -33<br>                                                                                                                                                                                                     |[0x80000d30]:SMMWT t6, t5, t4<br> [0x80000d34]:sd t6, 304(ra)<br>   |
|  57|[0x800033d8]<br>0x0000007000000000|- rs2_h2_val == -17<br> - rs2_h1_val == -65<br> - rs2_h0_val == 16<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == -5<br>                                                                                                   |[0x80000d60]:SMMWT t6, t5, t4<br> [0x80000d64]:sd t6, 312(ra)<br>   |
|  58|[0x800033e0]<br>0x0000100000000010|- rs2_h2_val == -32768<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -262145<br>                                                                                                                                        |[0x80000d90]:SMMWT t6, t5, t4<br> [0x80000d94]:sd t6, 320(ra)<br>   |
|  59|[0x800033e8]<br>0x00000500FFFFFFFF|- rs2_h2_val == 2048<br>                                                                                                                                                                                                    |[0x80000dc0]:SMMWT t6, t5, t4<br> [0x80000dc4]:sd t6, 328(ra)<br>   |
|  60|[0x800033f0]<br>0x00000090FFFFFFFF|- rs2_h2_val == 512<br> - rs2_h1_val == 512<br>                                                                                                                                                                             |[0x80000de4]:SMMWT t6, t5, t4<br> [0x80000de8]:sd t6, 336(ra)<br>   |
|  61|[0x800033f8]<br>0x00001FFF00000001|- rs2_h2_val == 256<br>                                                                                                                                                                                                     |[0x80000e10]:SMMWT t6, t5, t4<br> [0x80000e14]:sd t6, 344(ra)<br>   |
|  62|[0x80003400]<br>0x00000048FFFBFF80|- rs2_h1_val == -2049<br>                                                                                                                                                                                                   |[0x80000e3c]:SMMWT t6, t5, t4<br> [0x80000e40]:sd t6, 352(ra)<br>   |
|  63|[0x80003408]<br>0x00000000FFF0001F|- rs2_h2_val == -1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -2097153<br>                                                                                                                                               |[0x80000e6c]:SMMWT t6, t5, t4<br> [0x80000e70]:sd t6, 360(ra)<br>   |
|  64|[0x80003410]<br>0x0000000100024000|- rs2_h1_val == -9<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                      |[0x80000e98]:SMMWT t6, t5, t4<br> [0x80000e9c]:sd t6, 368(ra)<br>   |
|  65|[0x80003418]<br>0x00000000FFFFFFFF|- rs2_h1_val == -3<br> - rs1_w1_val == -2<br>                                                                                                                                                                               |[0x80000ec4]:SMMWT t6, t5, t4<br> [0x80000ec8]:sd t6, 376(ra)<br>   |
|  66|[0x80003420]<br>0xFFFFC0000FFFFFFF|- rs2_h1_val == 16384<br> - rs2_h0_val == 8<br>                                                                                                                                                                             |[0x80000ef0]:SMMWT t6, t5, t4<br> [0x80000ef4]:sd t6, 384(ra)<br>   |
|  67|[0x80003428]<br>0x00002000FFFFFFFE|- rs2_h1_val == 8192<br> - rs2_h0_val == 64<br> - rs1_w1_val == -32769<br>                                                                                                                                                  |[0x80000f1c]:SMMWT t6, t5, t4<br> [0x80000f20]:sd t6, 392(ra)<br>   |
|  68|[0x80003430]<br>0xFFFFD80003FFFFFF|- rs2_h1_val == 2048<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                     |[0x80000f44]:SMMWT t6, t5, t4<br> [0x80000f48]:sd t6, 400(ra)<br>   |
|  69|[0x80003438]<br>0xFFFFFFFF00000800|- rs2_h1_val == 256<br>                                                                                                                                                                                                     |[0x80000f68]:SMMWT t6, t5, t4<br> [0x80000f6c]:sd t6, 408(ra)<br>   |
|  70|[0x80003440]<br>0xFFFFFFE000555500|- rs2_h0_val == 8192<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                       |[0x80000f94]:SMMWT t6, t5, t4<br> [0x80000f98]:sd t6, 416(ra)<br>   |
|  71|[0x80003448]<br>0x0008000000000080|- rs2_h0_val == 1<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -4097<br>                                                                                                                                                 |[0x80000fd4]:SMMWT t6, t5, t4<br> [0x80000fd8]:sd t6, 424(ra)<br>   |
|  72|[0x80003450]<br>0x0001AAAA10000000|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                             |[0x8000100c]:SMMWT t6, t5, t4<br> [0x80001010]:sd t6, 432(ra)<br>   |
|  73|[0x80003458]<br>0x0010400000000000|- rs1_w1_val == -1073741825<br>                                                                                                                                                                                             |[0x80001034]:SMMWT t6, t5, t4<br> [0x80001038]:sd t6, 440(ra)<br>   |
|  74|[0x80003460]<br>0x00006000FFFFFBF0|- rs1_w1_val == -536870913<br>                                                                                                                                                                                              |[0x80001064]:SMMWT t6, t5, t4<br> [0x80001068]:sd t6, 448(ra)<br>   |
|  75|[0x80003468]<br>0xFFFFDFFFFFFE7FFF|- rs1_w1_val == -268435457<br>                                                                                                                                                                                              |[0x80001094]:SMMWT t6, t5, t4<br> [0x80001098]:sd t6, 456(ra)<br>   |
|  76|[0x80003470]<br>0x0000200000000001|- rs1_w1_val == -67108865<br>                                                                                                                                                                                               |[0x800010c0]:SMMWT t6, t5, t4<br> [0x800010c4]:sd t6, 464(ra)<br>   |
|  77|[0x80003478]<br>0x00000600FFFFF000|- rs1_w1_val == -33554433<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                  |[0x800010f0]:SMMWT t6, t5, t4<br> [0x800010f4]:sd t6, 472(ra)<br>   |
|  78|[0x80003480]<br>0xFFFFF7FF00000002|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                |[0x80001120]:SMMWT t6, t5, t4<br> [0x80001124]:sd t6, 480(ra)<br>   |
|  79|[0x80003488]<br>0x0000802000000000|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                |[0x8000114c]:SMMWT t6, t5, t4<br> [0x80001150]:sd t6, 488(ra)<br>   |
|  80|[0x80003490]<br>0xFFFFFFBF002AAB00|- rs1_w1_val == -262145<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                    |[0x8000117c]:SMMWT t6, t5, t4<br> [0x80001180]:sd t6, 496(ra)<br>   |
|  81|[0x80003498]<br>0x00004002FFFFFF00|- rs1_w1_val == -131073<br>                                                                                                                                                                                                 |[0x800011a8]:SMMWT t6, t5, t4<br> [0x800011ac]:sd t6, 504(ra)<br>   |
|  82|[0x800034a0]<br>0x00005556FFFFDFF8|- rs1_w1_val == -65537<br>                                                                                                                                                                                                  |[0x800011d4]:SMMWT t6, t5, t4<br> [0x800011d8]:sd t6, 512(ra)<br>   |
|  83|[0x800034a8]<br>0xFFFFFBFF00000900|- rs1_w1_val == -16385<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                    |[0x80001204]:SMMWT t6, t5, t4<br> [0x80001208]:sd t6, 520(ra)<br>   |
|  84|[0x800034b0]<br>0xFFFFFFFFFFFFEFF8|- rs1_w1_val == -1025<br>                                                                                                                                                                                                   |[0x80001230]:SMMWT t6, t5, t4<br> [0x80001234]:sd t6, 528(ra)<br>   |
|  85|[0x800034b8]<br>0x0000000000000800|- rs1_w1_val == -513<br>                                                                                                                                                                                                    |[0x8000125c]:SMMWT t6, t5, t4<br> [0x80001260]:sd t6, 536(ra)<br>   |
|  86|[0x800034c0]<br>0x0000000100000010|- rs1_w1_val == -257<br>                                                                                                                                                                                                    |[0x8000128c]:SMMWT t6, t5, t4<br> [0x80001290]:sd t6, 544(ra)<br>   |
|  87|[0x800034c8]<br>0x0000000000000005|- rs1_w1_val == -33<br>                                                                                                                                                                                                     |[0x800012b0]:SMMWT t6, t5, t4<br> [0x800012b4]:sd t6, 552(ra)<br>   |
|  88|[0x800034d0]<br>0xFFFFFFFFFFFD5550|- rs1_w1_val == -3<br>                                                                                                                                                                                                      |[0x800012e4]:SMMWT t6, t5, t4<br> [0x800012e8]:sd t6, 560(ra)<br>   |
|  89|[0x800034d8]<br>0xE000000000000008|- rs1_w1_val == -2147483648<br> - rs1_w0_val == -32769<br>                                                                                                                                                                  |[0x8000131c]:SMMWT t6, t5, t4<br> [0x80001320]:sd t6, 568(ra)<br>   |
|  90|[0x800034e0]<br>0xFFDFC00000000000|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                              |[0x8000134c]:SMMWT t6, t5, t4<br> [0x80001350]:sd t6, 576(ra)<br>   |
|  91|[0x800034e8]<br>0x00006000FFFFFFFF|- rs1_w1_val == 536870912<br> - rs1_w0_val == -513<br>                                                                                                                                                                      |[0x8000137c]:SMMWT t6, t5, t4<br> [0x80001380]:sd t6, 584(ra)<br>   |
|  92|[0x800034f0]<br>0xFFFFFFE800000000|- rs1_w1_val == 524288<br> - rs1_w0_val == -3<br>                                                                                                                                                                           |[0x800013a8]:SMMWT t6, t5, t4<br> [0x800013ac]:sd t6, 592(ra)<br>   |
|  93|[0x800034f8]<br>0xFFFFFDFEFFFFFFFF|- rs2_h1_val == 128<br> - rs1_w1_val == 131072<br>                                                                                                                                                                          |[0x800013d4]:SMMWT t6, t5, t4<br> [0x800013d8]:sd t6, 600(ra)<br>   |
|  94|[0x80003500]<br>0xFFFF8000FFFDF800|- rs2_h0_val == -65<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 134217728<br>                                                                                                                                             |[0x800013fc]:SMMWT t6, t5, t4<br> [0x80001400]:sd t6, 608(ra)<br>   |
|  95|[0x80003508]<br>0xFFFFFFBFFFFFF400|- rs1_w1_val == 32768<br>                                                                                                                                                                                                   |[0x80001428]:SMMWT t6, t5, t4<br> [0x8000142c]:sd t6, 616(ra)<br>   |
|  96|[0x80003510]<br>0xFFFFFFBF00000000|- rs1_w1_val == 4096<br>                                                                                                                                                                                                    |[0x80001458]:SMMWT t6, t5, t4<br> [0x8000145c]:sd t6, 624(ra)<br>   |
|  97|[0x80003518]<br>0x0000000020008000|- rs2_h0_val == -1025<br> - rs1_w1_val == 1024<br>                                                                                                                                                                          |[0x8000147c]:SMMWT t6, t5, t4<br> [0x80001480]:sd t6, 632(ra)<br>   |
|  98|[0x80003520]<br>0x00000000FFFAAAAF|- rs1_w1_val == 512<br>                                                                                                                                                                                                     |[0x800014ac]:SMMWT t6, t5, t4<br> [0x800014b0]:sd t6, 640(ra)<br>   |
|  99|[0x80003528]<br>0x00000000FFFFC800|- rs1_w1_val == 32<br>                                                                                                                                                                                                      |[0x800014d0]:SMMWT t6, t5, t4<br> [0x800014d4]:sd t6, 648(ra)<br>   |
| 100|[0x80003530]<br>0xFFFFFFFF00000000|- rs1_w1_val == 2<br>                                                                                                                                                                                                       |[0x800014f8]:SMMWT t6, t5, t4<br> [0x800014fc]:sd t6, 656(ra)<br>   |
| 101|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == -1<br>                                                                                                                                                                                                      |[0x8000151c]:SMMWT t6, t5, t4<br> [0x80001520]:sd t6, 664(ra)<br>   |
| 102|[0x80003540]<br>0xFFFFFFFEFFFEAAAA|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                             |[0x8000154c]:SMMWT t6, t5, t4<br> [0x80001550]:sd t6, 672(ra)<br>   |
| 103|[0x80003548]<br>0xFFFFFFFFF5550000|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                              |[0x80001584]:SMMWT t6, t5, t4<br> [0x80001588]:sd t6, 680(ra)<br>   |
| 104|[0x80003550]<br>0xFFFFFFFF00000040|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                |[0x800015b4]:SMMWT t6, t5, t4<br> [0x800015b8]:sd t6, 688(ra)<br>   |
| 105|[0x80003558]<br>0xFAAAA000FFFFBFFF|- rs1_w0_val == -524289<br>                                                                                                                                                                                                 |[0x800015ec]:SMMWT t6, t5, t4<br> [0x800015f0]:sd t6, 696(ra)<br>   |
| 106|[0x80003560]<br>0xFFFFFFFF00000014|- rs1_w0_val == -131073<br>                                                                                                                                                                                                 |[0x8000161c]:SMMWT t6, t5, t4<br> [0x80001620]:sd t6, 704(ra)<br>   |
| 107|[0x80003568]<br>0x00000000FFFFC000|- rs1_w0_val == -65537<br>                                                                                                                                                                                                  |[0x8000164c]:SMMWT t6, t5, t4<br> [0x80001650]:sd t6, 712(ra)<br>   |
| 108|[0x80003570]<br>0xFFFEFFFF00000000|- rs2_h1_val == 8<br>                                                                                                                                                                                                       |[0x80001678]:SMMWT t6, t5, t4<br> [0x8000167c]:sd t6, 720(ra)<br>   |
| 109|[0x80003578]<br>0x00000028FFFFFFBF|- rs1_w0_val == -16385<br>                                                                                                                                                                                                  |[0x800016ac]:SMMWT t6, t5, t4<br> [0x800016b0]:sd t6, 728(ra)<br>   |
| 110|[0x80003580]<br>0x0000000000000040|- rs2_h0_val == -9<br> - rs1_w0_val == -257<br>                                                                                                                                                                             |[0x800016d8]:SMMWT t6, t5, t4<br> [0x800016dc]:sd t6, 736(ra)<br>   |
| 111|[0x80003588]<br>0xFFFFE3FF00000000|- rs1_w0_val == -65<br>                                                                                                                                                                                                     |[0x80001704]:SMMWT t6, t5, t4<br> [0x80001708]:sd t6, 744(ra)<br>   |
| 112|[0x80003590]<br>0x0004000000000000|- rs1_w0_val == -9<br>                                                                                                                                                                                                      |[0x80001734]:SMMWT t6, t5, t4<br> [0x80001738]:sd t6, 752(ra)<br>   |
| 113|[0x80003598]<br>0xFFFFFFFC00000000|- rs1_w0_val == -2<br>                                                                                                                                                                                                      |[0x8000175c]:SMMWT t6, t5, t4<br> [0x80001760]:sd t6, 760(ra)<br>   |
| 114|[0x800035a0]<br>0xFFFFFFFF0000A000|- rs1_w0_val == -268435457<br>                                                                                                                                                                                              |[0x80001784]:SMMWT t6, t5, t4<br> [0x80001788]:sd t6, 768(ra)<br>   |
| 115|[0x800035a8]<br>0xFFFFFFFCFFFDFFFF|- rs1_w0_val == -134217729<br>                                                                                                                                                                                              |[0x800017b4]:SMMWT t6, t5, t4<br> [0x800017b8]:sd t6, 776(ra)<br>   |
| 116|[0x800035b0]<br>0xFFFFFFFF00000000|- rs1_w0_val == -67108865<br>                                                                                                                                                                                               |[0x800017dc]:SMMWT t6, t5, t4<br> [0x800017e0]:sd t6, 784(ra)<br>   |
| 117|[0x800035b8]<br>0x0004000000100000|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                              |[0x80001808]:SMMWT t6, t5, t4<br> [0x8000180c]:sd t6, 792(ra)<br>   |
| 118|[0x800035c0]<br>0xFD5557FF00007FFF|- rs1_w1_val == -134217729<br>                                                                                                                                                                                              |[0x80001838]:SMMWT t6, t5, t4<br> [0x8000183c]:sd t6, 800(ra)<br>   |
| 119|[0x800035c8]<br>0xFFFFFFFB00000000|- rs1_w1_val == 8192<br>                                                                                                                                                                                                    |[0x80001860]:SMMWT t6, t5, t4<br> [0x80001864]:sd t6, 808(ra)<br>   |
| 120|[0x800035d8]<br>0xFFFFFFEF01000000|- rs2_h2_val == 1024<br>                                                                                                                                                                                                    |[0x800018b4]:SMMWT t6, t5, t4<br> [0x800018b8]:sd t6, 824(ra)<br>   |
