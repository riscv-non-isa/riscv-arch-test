
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001840')]      |
| SIG_REGION                | [('0x80003210', '0x800035c0', '118 dwords')]      |
| COV_LABELS                | smmwt.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/smmwt.u-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 118      |
| STAT1                     | 116      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c58]:SMMWT_U t6, t5, t4
      [0x80000c5c]:sd t6, 264(tp)
 -- Signature Address: 0x800033a0 Data: 0x0000004000000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 16
      - rs2_h2_val == -513
      - rs1_w1_val == 262144
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001838]:SMMWT_U t6, t5, t4
      [0x8000183c]:sd t6, 800(tp)
 -- Signature Address: 0x800035b8 Data: 0xFFFF800000000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -32768
      - rs2_h2_val == -513
      - rs2_h1_val == 0
      - rs2_h0_val == -16385
      - rs1_w1_val == 65536






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

|s.no|            signature             |                                                                                                       coverpoints                                                                                                        |                                 code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x01001100000403FF|- opcode : smmwt.u<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -513<br> - rs2_h0_val == 256<br>                         |[0x800003bc]:SMMWT_U t3, s9, s9<br> [0x800003c0]:sd t3, 0(t1)<br>      |
|   2|[0x80003218]<br>0x1C72238F00040401|- rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 16384<br>                                                                                                |[0x800003e8]:SMMWT_U a2, a2, a2<br> [0x800003ec]:sd a2, 8(t1)<br>      |
|   3|[0x80003220]<br>0x0000055500000000|- rs1 : x22<br> - rs2 : x18<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 2048<br> - rs1_w1_val == 4096<br>                         |[0x80000418]:SMMWT_U s7, s6, s2<br> [0x8000041c]:sd s7, 16(t1)<br>     |
|   4|[0x80003228]<br>0xFFFFFFFCFFEFFFC0|- rs1 : x5<br> - rs2 : x31<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -16385<br> - rs1_w0_val == 4194304<br>                                                                      |[0x80000448]:SMMWT_U t0, t0, t6<br> [0x8000044c]:sd t0, 24(t1)<br>     |
|   5|[0x80003230]<br>0x00000001FFFFFFE8|- rs1 : x2<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -65<br> - rs2_h1_val == -3<br> - rs2_h0_val == -257<br> - rs1_w1_val == -2<br> - rs1_w0_val == 524288<br> |[0x80000474]:SMMWT_U a7, sp, a7<br> [0x80000478]:sd a7, 32(t1)<br>     |
|   6|[0x80003238]<br>0xFFFFFFFFFD555000|- rs1 : x26<br> - rs2 : x14<br> - rd : x18<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -21846<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 0<br> - rs1_w1_val == 4<br> - rs1_w0_val == 134217728<br>                  |[0x800004a0]:SMMWT_U s2, s10, a4<br> [0x800004a4]:sd s2, 40(t1)<br>    |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x20<br> - rd : x24<br> - rs2_h3_val == -2049<br> - rs2_h0_val == -21846<br> - rs1_w1_val == 8<br> - rs1_w0_val == -1<br>                                                                          |[0x800004d4]:SMMWT_U s8, s3, s4<br> [0x800004d8]:sd s8, 48(t1)<br>     |
|   8|[0x80003248]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x0<br> - rd : x9<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs1_w1_val == 262144<br> - rs1_w0_val == -5<br>                                                           |[0x80000504]:SMMWT_U s1, tp, zero<br> [0x80000508]:sd s1, 56(t1)<br>   |
|   9|[0x80003250]<br>0x00000002FFFFFFBF|- rs1 : x7<br> - rs2 : x21<br> - rd : x4<br> - rs2_h3_val == -513<br> - rs2_h1_val == -65<br> - rs2_h0_val == -8193<br> - rs1_w1_val == -257<br> - rs1_w0_val == 65536<br>                                                |[0x80000530]:SMMWT_U tp, t2, s5<br> [0x80000534]:sd tp, 64(t1)<br>     |
|  10|[0x80003258]<br>0xFFBFC00000000210|- rs1 : x18<br> - rs2 : x10<br> - rd : x19<br> - rs2_h3_val == -257<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -33<br> - rs2_h0_val == 1024<br> - rs1_w0_val == -1048577<br>                                          |[0x80000564]:SMMWT_U s3, s2, a0<br> [0x80000568]:sd s3, 72(t1)<br>     |
|  11|[0x80003260]<br>0x0000000000000401|- rs1 : x3<br> - rs2 : x8<br> - rd : x13<br> - rs2_h3_val == -129<br> - rs2_h2_val == -3<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 64<br> - rs1_w1_val == 0<br> - rs1_w0_val == -65537<br>                            |[0x80000594]:SMMWT_U a3, gp, fp<br> [0x80000598]:sd a3, 80(t1)<br>     |
|  12|[0x80003268]<br>0x00000000FFFFFF00|- rs1 : x23<br> - rs2 : x7<br> - rd : x25<br> - rs2_h3_val == -65<br> - rs2_h2_val == 32<br> - rs1_w1_val == 1<br> - rs1_w0_val == -8193<br>                                                                              |[0x800005b8]:SMMWT_U s9, s7, t2<br> [0x800005bc]:sd s9, 88(t1)<br>     |
|  13|[0x80003270]<br>0x0000000802001000|- rs1 : x28<br> - rs2 : x9<br> - rd : x10<br> - rs2_h3_val == -33<br> - rs2_h2_val == 2048<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -9<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -268435457<br>                 |[0x800005e0]:SMMWT_U a0, t3, s1<br> [0x800005e4]:sd a0, 96(t1)<br>     |
|  14|[0x80003278]<br>0x0004400000000020|- rs1 : x1<br> - rs2 : x4<br> - rd : x8<br> - rs2_h3_val == -17<br> - rs2_h1_val == 256<br> - rs2_h0_val == -513<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 8192<br>                                             |[0x80000614]:SMMWT_U fp, ra, tp<br> [0x80000618]:sd fp, 104(t1)<br>    |
|  15|[0x80003280]<br>0xFFFFFFF700000200|- rs1 : x14<br> - rs2 : x2<br> - rd : x11<br> - rs2_h3_val == -9<br> - rs2_h2_val == 128<br> - rs2_h1_val == 512<br> - rs2_h0_val == 8192<br> - rs1_w1_val == 65536<br>                                                   |[0x80000640]:SMMWT_U a1, a4, sp<br> [0x80000644]:sd a1, 112(t1)<br>    |
|  16|[0x80003288]<br>0xFFFFFB0000000000|- rs1 : x30<br> - rs2 : x26<br> - rd : x31<br> - rs2_h3_val == -5<br> - rs2_h2_val == -8193<br> - rs2_h1_val == -5<br> - rs2_h0_val == -2049<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -33<br>                     |[0x8000066c]:SMMWT_U t6, t5, s10<br> [0x80000670]:sd t6, 120(t1)<br>   |
|  17|[0x80003290]<br>0x0000018000000155|- rs1 : x13<br> - rs2 : x15<br> - rd : x7<br> - rs2_h3_val == -3<br> - rs2_h2_val == -9<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -16385<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 1024<br>                    |[0x8000069c]:SMMWT_U t2, a3, a5<br> [0x800006a0]:sd t2, 128(t1)<br>    |
|  18|[0x80003298]<br>0xFFFF555500002001|- rs1 : x9<br> - rs2 : x23<br> - rd : x27<br> - rs2_h3_val == -2<br> - rs2_h2_val == -513<br> - rs2_h0_val == -2<br> - rs1_w1_val == 1431655765<br>                                                                       |[0x800006d4]:SMMWT_U s11, s1, s7<br> [0x800006d8]:sd s11, 0(tp)<br>    |
|  19|[0x800032a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x2<br> - rs2_h3_val == -32768<br> - rs1_w0_val == 0<br>                                                                                                                             |[0x80000704]:SMMWT_U sp, zero, t4<br> [0x80000708]:sd sp, 8(tp)<br>    |
|  20|[0x800032a8]<br>0xFE00000000000000|- rs1 : x29<br> - rs2 : x16<br> - rd : x6<br> - rs2_h3_val == 16384<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -3<br>                                                                                             |[0x8000072c]:SMMWT_U t1, t4, a6<br> [0x80000730]:sd t1, 16(tp)<br>     |
|  21|[0x800032b0]<br>0x00000000FFFFFFFE|- rs1 : x16<br> - rs2 : x24<br> - rd : x14<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 4<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 4096<br> - rs1_w1_val == -3<br> - rs1_w0_val == 4<br>                            |[0x80000754]:SMMWT_U a4, a6, s8<br> [0x80000758]:sd a4, 24(tp)<br>     |
|  22|[0x800032b8]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x6<br> - rd : x0<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 512<br> - rs2_h1_val == -2<br> - rs2_h0_val == 32<br> - rs1_w0_val == -16385<br>                                                    |[0x80000784]:SMMWT_U zero, a1, t1<br> [0x80000788]:sd zero, 32(tp)<br> |
|  23|[0x800032c0]<br>0x0000004000000000|- rs1 : x21<br> - rs2 : x30<br> - rd : x1<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 2<br> - rs1_w1_val == 2048<br>                                                                                                     |[0x800007ac]:SMMWT_U ra, s5, t5<br> [0x800007b0]:sd ra, 40(tp)<br>     |
|  24|[0x800032c8]<br>0x00000000FFFFFFC0|- rs1 : x15<br> - rs2 : x13<br> - rd : x3<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2<br> - rs1_w0_val == -131073<br>                                                                           |[0x800007d8]:SMMWT_U gp, a5, a3<br> [0x800007dc]:sd gp, 48(tp)<br>     |
|  25|[0x800032d0]<br>0x00800000FF7FE000|- rs1 : x31<br> - rs2 : x28<br> - rd : x29<br> - rs2_h3_val == 512<br> - rs2_h0_val == 16384<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 536870912<br>                                                             |[0x8000080c]:SMMWT_U t4, t6, t3<br> [0x80000810]:sd t4, 56(tp)<br>     |
|  26|[0x800032d8]<br>0xFFC0000000000001|- rs1 : x20<br> - rs2 : x5<br> - rd : x26<br> - rs2_h3_val == 256<br> - rs2_h2_val == 16<br> - rs2_h1_val == 16<br> - rs2_h0_val == 512<br> - rs1_w0_val == 2048<br>                                                      |[0x80000844]:SMMWT_U s10, s4, t0<br> [0x80000848]:sd s10, 64(tp)<br>   |
|  27|[0x800032e0]<br>0x0000004000000008|- rs1 : x17<br> - rs2 : x19<br> - rd : x20<br> - rs2_h3_val == 128<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 32<br>                                                                                                   |[0x80000868]:SMMWT_U s4, a7, s3<br> [0x8000086c]:sd s4, 72(tp)<br>     |
|  28|[0x800032e8]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x27<br> - rd : x15<br> - rs2_h3_val == 64<br> - rs1_w0_val == -129<br>                                                                                                                             |[0x80000894]:SMMWT_U a5, fp, s11<br> [0x80000898]:sd a5, 80(tp)<br>    |
|  29|[0x800032f0]<br>0x0002000000000000|- rs1 : x6<br> - rs2 : x3<br> - rd : x22<br> - rs2_h3_val == 32<br> - rs2_h1_val == 4<br> - rs1_w1_val == 268435456<br>                                                                                                   |[0x800008c0]:SMMWT_U s6, t1, gp<br> [0x800008c4]:sd s6, 88(tp)<br>     |
|  30|[0x800032f8]<br>0x00000000FFFFFFFF|- rs1 : x27<br> - rs2 : x11<br> - rd : x21<br> - rs2_h3_val == 16<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -9<br> - rs2_h0_val == -32768<br> - rs1_w1_val == 128<br> - rs1_w0_val == 4096<br>                         |[0x800008e8]:SMMWT_U s5, s11, a1<br> [0x800008ec]:sd s5, 96(tp)<br>    |
|  31|[0x80003300]<br>0x0000000102004000|- rs1 : x10<br> - rs2 : x1<br> - rd : x30<br> - rs2_h3_val == 8<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 16<br> - rs1_w1_val == 8192<br>                                                                             |[0x80000914]:SMMWT_U t5, a0, ra<br> [0x80000918]:sd t5, 104(tp)<br>    |
|  32|[0x80003308]<br>0xFFFFFFF000000001|- rs1 : x24<br> - rs2 : x22<br> - rd : x16<br> - rs2_h3_val == 4<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -65<br>                                                                                                  |[0x80000940]:SMMWT_U a6, s8, s6<br> [0x80000944]:sd a6, 112(tp)<br>    |
|  33|[0x80003310]<br>0xFFFFF80000000000|- rs2_h3_val == 2<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 1<br>                                                                                                                                                 |[0x8000096c]:SMMWT_U t6, t5, t4<br> [0x80000970]:sd t6, 120(tp)<br>    |
|  34|[0x80003318]<br>0x0000000000000100|- rs2_h3_val == 1<br> - rs1_w1_val == 2<br>                                                                                                                                                                               |[0x80000994]:SMMWT_U t6, t5, t4<br> [0x80000998]:sd t6, 128(tp)<br>    |
|  35|[0x80003320]<br>0x0000000000001000|- rs2_h1_val == 64<br> - rs1_w1_val == -2049<br>                                                                                                                                                                          |[0x800009c0]:SMMWT_U t6, t5, t4<br> [0x800009c4]:sd t6, 136(tp)<br>    |
|  36|[0x80003328]<br>0x0000000000000000|- rs2_h3_val == -1<br> - rs2_h2_val == -2<br> - rs1_w0_val == -4097<br>                                                                                                                                                   |[0x800009e4]:SMMWT_U t6, t5, t4<br> [0x800009e8]:sd t6, 144(tp)<br>    |
|  37|[0x80003330]<br>0x00000001FFFFF800|- rs2_h2_val == 21845<br>                                                                                                                                                                                                 |[0x80000a0c]:SMMWT_U t6, t5, t4<br> [0x80000a10]:sd t6, 152(tp)<br>    |
|  38|[0x80003338]<br>0x02AAAAABFFFFFEE0|- rs1_w0_val == 2097152<br>                                                                                                                                                                                               |[0x80000a40]:SMMWT_U t6, t5, t4<br> [0x80000a44]:sd t6, 160(tp)<br>    |
|  39|[0x80003340]<br>0xFFFFFEC0FFFFF7F0|- rs2_h1_val == -129<br> - rs2_h0_val == -3<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 1048576<br>                                                                                                                   |[0x80000a68]:SMMWT_U t6, t5, t4<br> [0x80000a6c]:sd t6, 168(tp)<br>    |
|  40|[0x80003348]<br>0x00000800FFFFFEFC|- rs1_w1_val == -16777217<br> - rs1_w0_val == 262144<br>                                                                                                                                                                  |[0x80000a98]:SMMWT_U t6, t5, t4<br> [0x80000a9c]:sd t6, 176(tp)<br>    |
|  41|[0x80003350]<br>0xFFFFFFE4FFFFFF7E|- rs1_w0_val == 131072<br>                                                                                                                                                                                                |[0x80000ac4]:SMMWT_U t6, t5, t4<br> [0x80000ac8]:sd t6, 184(tp)<br>    |
|  42|[0x80003358]<br>0x00000000FFFFF800|- rs2_h1_val == -4097<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 32768<br>                                                                                                                                             |[0x80000af0]:SMMWT_U t6, t5, t4<br> [0x80000af4]:sd t6, 192(tp)<br>    |
|  43|[0x80003360]<br>0x0000000000000008|- rs1_w0_val == 16384<br>                                                                                                                                                                                                 |[0x80000b0c]:SMMWT_U t6, t5, t4<br> [0x80000b10]:sd t6, 200(tp)<br>    |
|  44|[0x80003368]<br>0x0000004000000000|- rs1_w0_val == 512<br>                                                                                                                                                                                                   |[0x80000b38]:SMMWT_U t6, t5, t4<br> [0x80000b3c]:sd t6, 208(tp)<br>    |
|  45|[0x80003370]<br>0xFFFFFF0000000000|- rs1_w1_val == -513<br> - rs1_w0_val == 256<br>                                                                                                                                                                          |[0x80000b64]:SMMWT_U t6, t5, t4<br> [0x80000b68]:sd t6, 216(tp)<br>    |
|  46|[0x80003378]<br>0x0000000000000020|- rs2_h1_val == 16384<br> - rs2_h0_val == 1<br> - rs1_w0_val == 128<br>                                                                                                                                                   |[0x80000b88]:SMMWT_U t6, t5, t4<br> [0x80000b8c]:sd t6, 224(tp)<br>    |
|  47|[0x80003380]<br>0x1FFF800000000000|- rs2_h1_val == 2<br> - rs2_h0_val == 2048<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 64<br>                                                                                                                      |[0x80000bb8]:SMMWT_U t6, t5, t4<br> [0x80000bbc]:sd t6, 232(tp)<br>    |
|  48|[0x80003388]<br>0x0000000000000000|- rs1_w1_val == -65<br> - rs1_w0_val == 16<br>                                                                                                                                                                            |[0x80000be4]:SMMWT_U t6, t5, t4<br> [0x80000be8]:sd t6, 240(tp)<br>    |
|  49|[0x80003390]<br>0x0000000000000000|- rs2_h2_val == -16385<br> - rs2_h0_val == -4097<br> - rs1_w0_val == 8<br>                                                                                                                                                |[0x80000c0c]:SMMWT_U t6, t5, t4<br> [0x80000c10]:sd t6, 248(tp)<br>    |
|  50|[0x80003398]<br>0x0000000200000000|- rs2_h1_val == 4096<br> - rs1_w0_val == 2<br>                                                                                                                                                                            |[0x80000c34]:SMMWT_U t6, t5, t4<br> [0x80000c38]:sd t6, 256(tp)<br>    |
|  51|[0x800033a8]<br>0x0000000100000000|- rs2_h2_val == 32767<br> - rs2_h0_val == 21845<br> - rs1_w1_val == -8193<br>                                                                                                                                             |[0x80000c84]:SMMWT_U t6, t5, t4<br> [0x80000c88]:sd t6, 272(tp)<br>    |
|  52|[0x800033b0]<br>0x1FFFC00000004000|- rs2_h2_val == -2049<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 4<br>                                                                                                                                                  |[0x80000cb8]:SMMWT_U t6, t5, t4<br> [0x80000cbc]:sd t6, 280(tp)<br>    |
|  53|[0x800033b8]<br>0x0000000000000000|- rs2_h2_val == -1025<br> - rs2_h1_val == -1<br> - rs1_w0_val == -2<br>                                                                                                                                                   |[0x80000cdc]:SMMWT_U t6, t5, t4<br> [0x80000ce0]:sd t6, 288(tp)<br>    |
|  54|[0x800033c0]<br>0xFFFFFC8000040000|- rs1_w0_val == -2147483648<br> - rs2_h2_val == -257<br>                                                                                                                                                                  |[0x80000d04]:SMMWT_U t6, t5, t4<br> [0x80000d08]:sd t6, 296(tp)<br>    |
|  55|[0x800033c8]<br>0x0000000000000001|- rs2_h2_val == -129<br>                                                                                                                                                                                                  |[0x80000d30]:SMMWT_U t6, t5, t4<br> [0x80000d34]:sd t6, 304(tp)<br>    |
|  56|[0x800033d0]<br>0x0000060004004000|- rs2_h2_val == -33<br> - rs2_h0_val == -65<br> - rs1_w0_val == -1073741825<br>                                                                                                                                           |[0x80000d58]:SMMWT_U t6, t5, t4<br> [0x80000d5c]:sd t6, 312(tp)<br>    |
|  57|[0x800033d8]<br>0x0000000000000000|- rs2_h2_val == -17<br> - rs1_w0_val == -17<br>                                                                                                                                                                           |[0x80000d84]:SMMWT_U t6, t5, t4<br> [0x80000d88]:sd t6, 320(tp)<br>    |
|  58|[0x800033e0]<br>0xFFFF000000000000|- rs2_h2_val == -5<br>                                                                                                                                                                                                    |[0x80000db4]:SMMWT_U t6, t5, t4<br> [0x80000db8]:sd t6, 328(tp)<br>    |
|  59|[0x800033e8]<br>0x0000001000000003|- rs2_h2_val == 1024<br> - rs2_h0_val == 8<br> - rs1_w0_val == -32769<br>                                                                                                                                                 |[0x80000de4]:SMMWT_U t6, t5, t4<br> [0x80000de8]:sd t6, 336(tp)<br>    |
|  60|[0x800033f0]<br>0x00000440FFFFFFFF|- rs2_h2_val == 256<br> - rs2_h0_val == 32767<br> - rs1_w1_val == -4194305<br>                                                                                                                                            |[0x80000e10]:SMMWT_U t6, t5, t4<br> [0x80000e14]:sd t6, 344(tp)<br>    |
|  61|[0x800033f8]<br>0xFFFFFF400000A000|- rs2_h2_val == 64<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                     |[0x80000e40]:SMMWT_U t6, t5, t4<br> [0x80000e44]:sd t6, 352(tp)<br>    |
|  62|[0x80003400]<br>0x00010010FFFDAAAB|- rs2_h2_val == 8<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 1431655765<br>                                                                                                                                         |[0x80000e78]:SMMWT_U t6, t5, t4<br> [0x80000e7c]:sd t6, 360(tp)<br>    |
|  63|[0x80003408]<br>0x0000000000000000|- rs2_h2_val == 1<br>                                                                                                                                                                                                     |[0x80000ea4]:SMMWT_U t6, t5, t4<br> [0x80000ea8]:sd t6, 368(tp)<br>    |
|  64|[0x80003410]<br>0x0000009000010000|- rs2_h2_val == -1<br> - rs2_h1_val == 128<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 33554432<br>                                                                                                                   |[0x80000ec8]:SMMWT_U t6, t5, t4<br> [0x80000ecc]:sd t6, 376(tp)<br>    |
|  65|[0x80003418]<br>0xFFFFFFD500000008|- rs2_h1_val == 32767<br>                                                                                                                                                                                                 |[0x80000efc]:SMMWT_U t6, t5, t4<br> [0x80000f00]:sd t6, 384(tp)<br>    |
|  66|[0x80003420]<br>0xFFFFFE0000000000|- rs2_h0_val == 128<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -513<br>                                                                                                                                              |[0x80000f2c]:SMMWT_U t6, t5, t4<br> [0x80000f30]:sd t6, 392(tp)<br>    |
|  67|[0x80003428]<br>0xFFFFFFFF00004000|- rs2_h0_val == -1<br> - rs1_w1_val == 16384<br>                                                                                                                                                                          |[0x80000f58]:SMMWT_U t6, t5, t4<br> [0x80000f5c]:sd t6, 400(tp)<br>    |
|  68|[0x80003430]<br>0xFFFF555500001001|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                           |[0x80000f88]:SMMWT_U t6, t5, t4<br> [0x80000f8c]:sd t6, 408(tp)<br>    |
|  69|[0x80003438]<br>0xFC00000000004000|- rs1_w1_val == -536870913<br>                                                                                                                                                                                            |[0x80000fb4]:SMMWT_U t6, t5, t4<br> [0x80000fb8]:sd t6, 416(tp)<br>    |
|  70|[0x80003440]<br>0x0200100000000004|- rs1_w1_val == -268435457<br>                                                                                                                                                                                            |[0x80000fe8]:SMMWT_U t6, t5, t4<br> [0x80000fec]:sd t6, 424(tp)<br>    |
|  71|[0x80003448]<br>0xFFFFE00000000000|- rs1_w1_val == -33554433<br>                                                                                                                                                                                             |[0x80001014]:SMMWT_U t6, t5, t4<br> [0x80001018]:sd t6, 432(tp)<br>    |
|  72|[0x80003450]<br>0xFFF55560FFFFFFFF|- rs2_h1_val == 1024<br> - rs1_w1_val == -2097153<br>                                                                                                                                                                     |[0x80001044]:SMMWT_U t6, t5, t4<br> [0x80001048]:sd t6, 440(tp)<br>    |
|  73|[0x80003458]<br>0x0000001800000003|- rs1_w1_val == -524289<br>                                                                                                                                                                                               |[0x80001074]:SMMWT_U t6, t5, t4<br> [0x80001078]:sd t6, 448(tp)<br>    |
|  74|[0x80003460]<br>0xFFFFE00000000000|- rs1_w1_val == -131073<br>                                                                                                                                                                                               |[0x800010a0]:SMMWT_U t6, t5, t4<br> [0x800010a4]:sd t6, 456(tp)<br>    |
|  75|[0x80003468]<br>0xFFFFFFFE00000000|- rs2_h1_val == -257<br> - rs1_w1_val == -65537<br>                                                                                                                                                                       |[0x800010cc]:SMMWT_U t6, t5, t4<br> [0x800010d0]:sd t6, 464(tp)<br>    |
|  76|[0x80003470]<br>0x00001001FFFFFFFE|- rs1_w1_val == -32769<br>                                                                                                                                                                                                |[0x80001100]:SMMWT_U t6, t5, t4<br> [0x80001104]:sd t6, 472(tp)<br>    |
|  77|[0x80003478]<br>0x00000000FFFEFE00|- rs2_h0_val == -1025<br> - rs1_w1_val == -1025<br>                                                                                                                                                                       |[0x80001124]:SMMWT_U t6, t5, t4<br> [0x80001128]:sd t6, 480(tp)<br>    |
|  78|[0x80003480]<br>0x000000000FFFE000|- rs1_w1_val == -33<br>                                                                                                                                                                                                   |[0x8000114c]:SMMWT_U t6, t5, t4<br> [0x80001150]:sd t6, 488(tp)<br>    |
|  79|[0x80003488]<br>0x00000000FFFFFFFF|- rs1_w1_val == -17<br>                                                                                                                                                                                                   |[0x80001178]:SMMWT_U t6, t5, t4<br> [0x8000117c]:sd t6, 496(tp)<br>    |
|  80|[0x80003490]<br>0xFFFFFFFD00000000|- rs1_w1_val == -9<br>                                                                                                                                                                                                    |[0x800011a4]:SMMWT_U t6, t5, t4<br> [0x800011a8]:sd t6, 504(tp)<br>    |
|  81|[0x80003498]<br>0x0000000000000000|- rs1_w1_val == -5<br>                                                                                                                                                                                                    |[0x800011d0]:SMMWT_U t6, t5, t4<br> [0x800011d4]:sd t6, 512(tp)<br>    |
|  82|[0x800034a0]<br>0x00008000FFFFFF00|- rs1_w1_val == -2147483648<br>                                                                                                                                                                                           |[0x80001200]:SMMWT_U t6, t5, t4<br> [0x80001204]:sd t6, 520(tp)<br>    |
|  83|[0x800034a8]<br>0xF7FFE00000400000|- rs1_w1_val == 536870912<br>                                                                                                                                                                                             |[0x80001230]:SMMWT_U t6, t5, t4<br> [0x80001234]:sd t6, 528(tp)<br>    |
|  84|[0x800034b0]<br>0xFFFFE00000012000|- rs1_w1_val == 134217728<br>                                                                                                                                                                                             |[0x8000125c]:SMMWT_U t6, t5, t4<br> [0x80001260]:sd t6, 536(tp)<br>    |
|  85|[0x800034b8]<br>0xFFFFE400FFFFFFF0|- rs1_w1_val == 67108864<br>                                                                                                                                                                                              |[0x80001294]:SMMWT_U t6, t5, t4<br> [0x80001298]:sd t6, 544(tp)<br>    |
|  86|[0x800034c0]<br>0x0008000000000800|- rs1_w1_val == 33554432<br>                                                                                                                                                                                              |[0x800012c4]:SMMWT_U t6, t5, t4<br> [0x800012c8]:sd t6, 552(tp)<br>    |
|  87|[0x800034c8]<br>0x0000001800000000|- rs1_w1_val == 524288<br>                                                                                                                                                                                                |[0x800012f8]:SMMWT_U t6, t5, t4<br> [0x800012fc]:sd t6, 560(tp)<br>    |
|  88|[0x800034d0]<br>0xFFFFFEFE00008020|- rs1_w1_val == 131072<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                   |[0x80001328]:SMMWT_U t6, t5, t4<br> [0x8000132c]:sd t6, 568(tp)<br>    |
|  89|[0x800034d8]<br>0x00000000000001C0|- rs1_w1_val == 1024<br>                                                                                                                                                                                                  |[0x80001354]:SMMWT_U t6, t5, t4<br> [0x80001358]:sd t6, 576(tp)<br>    |
|  90|[0x800034e0]<br>0x0000000000000140|- rs2_h0_val == -33<br> - rs1_w1_val == 512<br> - rs1_w0_val == -4194305<br>                                                                                                                                              |[0x8000137c]:SMMWT_U t6, t5, t4<br> [0x80001380]:sd t6, 584(tp)<br>    |
|  91|[0x800034e8]<br>0x00000000FFFFFFF0|- rs1_w1_val == 256<br>                                                                                                                                                                                                   |[0x800013a8]:SMMWT_U t6, t5, t4<br> [0x800013ac]:sd t6, 592(tp)<br>    |
|  92|[0x800034f0]<br>0x00000000FFFFFFFE|- rs2_h0_val == -5<br> - rs1_w1_val == 64<br>                                                                                                                                                                             |[0x800013cc]:SMMWT_U t6, t5, t4<br> [0x800013d0]:sd t6, 600(tp)<br>    |
|  93|[0x800034f8]<br>0x0000000BFFFFFFFC|- rs2_h0_val == -17<br> - rs1_w1_val == 32<br>                                                                                                                                                                            |[0x80001400]:SMMWT_U t6, t5, t4<br> [0x80001404]:sd t6, 608(tp)<br>    |
|  94|[0x80003500]<br>0x00000000FFE00000|- rs1_w1_val == 16<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                     |[0x8000142c]:SMMWT_U t6, t5, t4<br> [0x80001430]:sd t6, 616(tp)<br>    |
|  95|[0x80003508]<br>0x00000000FFFFFFFD|- rs1_w1_val == -1<br>                                                                                                                                                                                                    |[0x8000145c]:SMMWT_U t6, t5, t4<br> [0x80001460]:sd t6, 624(tp)<br>    |
|  96|[0x80003510]<br>0x000000C0FFFD0000|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                           |[0x80001494]:SMMWT_U t6, t5, t4<br> [0x80001498]:sd t6, 632(tp)<br>    |
|  97|[0x80003518]<br>0x00000000FFFBC000|- rs2_h1_val == -17<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                    |[0x800014c0]:SMMWT_U t6, t5, t4<br> [0x800014c4]:sd t6, 640(tp)<br>    |
|  98|[0x80003520]<br>0xFFFFFC0000000000|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                            |[0x800014f0]:SMMWT_U t6, t5, t4<br> [0x800014f4]:sd t6, 648(tp)<br>    |
|  99|[0x80003528]<br>0xFFFFF7F8FFE00000|- rs1_w0_val == -67108865<br>                                                                                                                                                                                             |[0x80001520]:SMMWT_U t6, t5, t4<br> [0x80001524]:sd t6, 656(tp)<br>    |
| 100|[0x80003530]<br>0x0000000000000200|- rs2_h0_val == -129<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                    |[0x80001544]:SMMWT_U t6, t5, t4<br> [0x80001548]:sd t6, 664(tp)<br>    |
| 101|[0x80003538]<br>0xFFFFFFFEFFFFF000|- rs1_w0_val == -524289<br>                                                                                                                                                                                               |[0x80001578]:SMMWT_U t6, t5, t4<br> [0x8000157c]:sd t6, 672(tp)<br>    |
| 102|[0x80003540]<br>0x00000000FFFFF800|- rs1_w0_val == -262145<br>                                                                                                                                                                                               |[0x800015a0]:SMMWT_U t6, t5, t4<br> [0x800015a4]:sd t6, 680(tp)<br>    |
| 103|[0x80003548]<br>0xFFFFFFFF00000000|- rs2_h1_val == 8<br>                                                                                                                                                                                                     |[0x800015cc]:SMMWT_U t6, t5, t4<br> [0x800015d0]:sd t6, 688(tp)<br>    |
| 104|[0x80003550]<br>0x0020000000000400|- rs2_h1_val == 1<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                        |[0x800015fc]:SMMWT_U t6, t5, t4<br> [0x80001600]:sd t6, 696(tp)<br>    |
| 105|[0x80003558]<br>0x0000000000000000|- rs1_w0_val == -2049<br>                                                                                                                                                                                                 |[0x8000162c]:SMMWT_U t6, t5, t4<br> [0x80001630]:sd t6, 704(tp)<br>    |
| 106|[0x80003560]<br>0xFFFFFFF800000000|- rs1_w0_val == -1025<br>                                                                                                                                                                                                 |[0x8000165c]:SMMWT_U t6, t5, t4<br> [0x80001660]:sd t6, 712(tp)<br>    |
| 107|[0x80003568]<br>0x0400000000000000|- rs1_w0_val == -9<br>                                                                                                                                                                                                    |[0x8000168c]:SMMWT_U t6, t5, t4<br> [0x80001690]:sd t6, 720(tp)<br>    |
| 108|[0x80003570]<br>0x00000000FFFFF000|- rs1_w0_val == -16777217<br>                                                                                                                                                                                             |[0x800016b8]:SMMWT_U t6, t5, t4<br> [0x800016bc]:sd t6, 728(tp)<br>    |
| 109|[0x80003578]<br>0x00000000001FFF80|- rs1_w0_val == 8388608<br>                                                                                                                                                                                               |[0x800016dc]:SMMWT_U t6, t5, t4<br> [0x800016e0]:sd t6, 736(tp)<br>    |
| 110|[0x80003580]<br>0x0000000000800000|- rs1_w0_val == 268435456<br>                                                                                                                                                                                             |[0x80001704]:SMMWT_U t6, t5, t4<br> [0x80001708]:sd t6, 744(tp)<br>    |
| 111|[0x80003588]<br>0x0000080000010000|- rs1_w0_val == 16777216<br>                                                                                                                                                                                              |[0x80001728]:SMMWT_U t6, t5, t4<br> [0x8000172c]:sd t6, 752(tp)<br>    |
| 112|[0x80003590]<br>0x00000000FFFFFFF0|- rs1_w0_val == -257<br>                                                                                                                                                                                                  |[0x80001750]:SMMWT_U t6, t5, t4<br> [0x80001754]:sd t6, 760(tp)<br>    |
| 113|[0x80003598]<br>0x00000000FFFFFE80|- rs1_w0_val == -8388609<br>                                                                                                                                                                                              |[0x80001780]:SMMWT_U t6, t5, t4<br> [0x80001784]:sd t6, 768(tp)<br>    |
| 114|[0x800035a0]<br>0xFFF7FF8001008000|- rs1_w1_val == 8388608<br>                                                                                                                                                                                               |[0x800017ac]:SMMWT_U t6, t5, t4<br> [0x800017b0]:sd t6, 776(tp)<br>    |
| 115|[0x800035a8]<br>0x0000002B00000001|- rs1_w1_val == -129<br>                                                                                                                                                                                                  |[0x800017d8]:SMMWT_U t6, t5, t4<br> [0x800017dc]:sd t6, 784(tp)<br>    |
| 116|[0x800035b0]<br>0xFFFFEFFC00000000|- rs2_h3_val == -1025<br>                                                                                                                                                                                                 |[0x80001808]:SMMWT_U t6, t5, t4<br> [0x8000180c]:sd t6, 792(tp)<br>    |
