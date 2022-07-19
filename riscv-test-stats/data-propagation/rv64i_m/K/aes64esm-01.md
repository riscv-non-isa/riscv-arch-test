
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001350')]      |
| SIG_REGION                | [('0x80003210', '0x800033e0', '58 dwords')]      |
| COV_LABELS                | aes64esm      |
| TEST_NAME                 | /home/anku/trials/bmanip/64/c_work/aes64esm-01.S/ref.S    |
| Total Number of coverpoints| 154     |
| Total Coverpoints Hit     | 154      |
| Total Signature Updates   | 57      |
| STAT1                     | 56      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001340]:aes64esm t6, t5, t4
      [0x80001344]:sd t6, 248(fp)
 -- Signature Address: 0x800033d0 Data: 0x9EA78DA537865C70
 -- Redundant Coverpoints hit by the op
      - mnemonic : aes64esm
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 #nosat






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

|s.no|            signature             |                                                                                 coverpoints                                                                                 |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x51336D2C455C6A6A|- mnemonic : aes64esm<br> - rs1 : x31<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 #nosat<br> |[0x800003d0]:aes64esm t6, t6, t5<br> [0x800003d4]:sd t6, 0(ra)<br>      |
|   2|[0x80003218]<br>0xF2C1686E5F2A933A|- rs1 : x29<br> - rs2 : x31<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0x6af29145404fd8ed and rs2_val == 0x990e75eafff569c2 #nosat<br>    |[0x80000410]:aes64esm t5, t4, t6<br> [0x80000414]:sd t5, 8(ra)<br>      |
|   3|[0x80003220]<br>0xF848F59B9A3D40C9|- rs1 : x28<br> - rs2 : x28<br> - rd : x29<br> - rs1 == rs2 != rd<br>                                                                                                        |[0x80000458]:aes64esm t4, t3, t3<br> [0x8000045c]:sd t4, 16(ra)<br>     |
|   4|[0x80003228]<br>0x9938BEC6499A203B|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br>                                                                                                        |[0x800004a0]:aes64esm s11, s11, s11<br> [0x800004a4]:sd s11, 24(ra)<br> |
|   5|[0x80003230]<br>0x99D173AEAA13B6CA|- rs1 : x30<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs1_val == 0xef1d54db32b81f27 and rs2_val == 0x1826a804284fe16c #nosat<br>                           |[0x800004e8]:aes64esm s10, t5, s10<br> [0x800004ec]:sd s10, 32(ra)<br>  |
|   6|[0x80003238]<br>0x27D83FB633742F3A|- rs1 : x26<br> - rs2 : x29<br> - rd : x28<br> - rs1_val == 0xb694de26ad9e5431 and rs2_val == 0x293f9f6071fad878 #nosat<br>                                                  |[0x80000530]:aes64esm t3, s10, t4<br> [0x80000534]:sd t3, 40(ra)<br>    |
|   7|[0x80003240]<br>0x5F1063B2A80FE9E4|- rs1 : x24<br> - rs2 : x23<br> - rd : x25<br> - rs1_val == 0x987daa20b858e304 and rs2_val == 0x1aa1beebefb902cb #nosat<br>                                                  |[0x80000578]:aes64esm s9, s8, s7<br> [0x8000057c]:sd s9, 48(ra)<br>     |
|   8|[0x80003248]<br>0x5F14489B7739C1FE|- rs1 : x23<br> - rs2 : x25<br> - rd : x24<br> - rs1_val == 0x79bb7c341d3110bc and rs2_val == 0x8678f5e3d272e229 #nosat<br>                                                  |[0x800005c0]:aes64esm s8, s7, s9<br> [0x800005c4]:sd s8, 56(ra)<br>     |
|   9|[0x80003250]<br>0x908767F159E07013|- rs1 : x25<br> - rs2 : x24<br> - rd : x23<br> - rs1_val == 0xe2eaf4a09869be8c and rs2_val == 0x5b730cad91766f62 #nosat<br>                                                  |[0x80000608]:aes64esm s7, s9, s8<br> [0x8000060c]:sd s7, 64(ra)<br>     |
|  10|[0x80003258]<br>0x7630CA0111781549|- rs1 : x21<br> - rs2 : x20<br> - rd : x22<br> - rs1_val == 0xc0fe15dd0df9564b and rs2_val == 0xb22bbf7eb4c858fb #nosat<br>                                                  |[0x80000650]:aes64esm s6, s5, s4<br> [0x80000654]:sd s6, 72(ra)<br>     |
|  11|[0x80003260]<br>0x2ED3FCEAF23E4A35|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs1_val == 0x4113ee60952acffe and rs2_val == 0x53a66ed1dc80d916 #nosat<br>                                                  |[0x80000698]:aes64esm s5, s4, s6<br> [0x8000069c]:sd s5, 80(ra)<br>     |
|  12|[0x80003268]<br>0x514905AFB3D21C8B|- rs1 : x22<br> - rs2 : x21<br> - rd : x20<br> - rs1_val == 0x40a5ff526f38a9c7 and rs2_val == 0xb6f9706fb4f741aa #nosat<br>                                                  |[0x800006e0]:aes64esm s4, s6, s5<br> [0x800006e4]:sd s4, 88(ra)<br>     |
|  13|[0x80003270]<br>0x211A2B77001C93A3|- rs1 : x18<br> - rs2 : x17<br> - rd : x19<br> - rs1_val == 0x9bedfe390d6ddd9d and rs2_val == 0xd05668ae0fdb82bc #nosat<br>                                                  |[0x80000728]:aes64esm s3, s2, a7<br> [0x8000072c]:sd s3, 96(ra)<br>     |
|  14|[0x80003278]<br>0xCD2B7EE3C3E3C3BC|- rs1 : x17<br> - rs2 : x19<br> - rd : x18<br> - rs1_val == 0xd75739f82ac177c6 and rs2_val == 0xaa6bb2bde9ed477d #nosat<br>                                                  |[0x80000770]:aes64esm s2, a7, s3<br> [0x80000774]:sd s2, 104(ra)<br>    |
|  15|[0x80003280]<br>0x90CC38293CC45740|- rs1 : x19<br> - rs2 : x18<br> - rd : x17<br> - rs1_val == 0x9a4e9ef10171f4df and rs2_val == 0x299c3bcf90efb625 #nosat<br>                                                  |[0x800007b8]:aes64esm a7, s3, s2<br> [0x800007bc]:sd a7, 112(ra)<br>    |
|  16|[0x80003288]<br>0x8E5C783AB184A276|- rs1 : x15<br> - rs2 : x14<br> - rd : x16<br> - rs1_val == 0xd169a3f8cad5e297 and rs2_val == 0x1fc493caa371db42 #nosat<br>                                                  |[0x80000800]:aes64esm a6, a5, a4<br> [0x80000804]:sd a6, 120(ra)<br>    |
|  17|[0x80003290]<br>0x47E31CADDC46E066|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs1_val == 0xd5b9fe5cf69bdcf3 and rs2_val == 0xf4c30307672f666d #nosat<br>                                                  |[0x80000848]:aes64esm a5, a4, a6<br> [0x8000084c]:sd a5, 128(ra)<br>    |
|  18|[0x80003298]<br>0x425E22A0DB184CE3|- rs1 : x16<br> - rs2 : x15<br> - rd : x14<br> - rs1_val == 0xe4921bf73047c198 and rs2_val == 0xa0569d765ebc64cb #nosat<br>                                                  |[0x80000890]:aes64esm a4, a6, a5<br> [0x80000894]:sd a4, 136(ra)<br>    |
|  19|[0x800032a0]<br>0xE64584D118C527E3|- rs1 : x12<br> - rs2 : x11<br> - rd : x13<br> - rs1_val == 0xfcc1b543c49cd65b and rs2_val == 0x2daf9ac7f5faf207 #nosat<br>                                                  |[0x800008d8]:aes64esm a3, a2, a1<br> [0x800008dc]:sd a3, 144(ra)<br>    |
|  20|[0x800032a8]<br>0xF9245CDC8F3397A2|- rs1 : x11<br> - rs2 : x13<br> - rd : x12<br> - rs1_val == 0x436f40f274b8de87 and rs2_val == 0x3459294ef273b44c #nosat<br>                                                  |[0x80000920]:aes64esm a2, a1, a3<br> [0x80000924]:sd a2, 152(ra)<br>    |
|  21|[0x800032b0]<br>0x6F8A0514B7AC55AB|- rs1 : x13<br> - rs2 : x12<br> - rd : x11<br> - rs1_val == 0x75a3adb3254a9493 and rs2_val == 0xc5521660f3a3c571 #nosat<br>                                                  |[0x80000968]:aes64esm a1, a3, a2<br> [0x8000096c]:sd a1, 160(ra)<br>    |
|  22|[0x800032b8]<br>0x368420CECEA4019F|- rs1 : x9<br> - rs2 : x8<br> - rd : x10<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 #nosat<br>                                                    |[0x800009a8]:aes64esm a0, s1, fp<br> [0x800009ac]:sd a0, 168(ra)<br>    |
|  23|[0x800032c0]<br>0xE25C4D63680A3A09|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 #nosat<br>                                                    |[0x800009e8]:aes64esm s1, fp, a0<br> [0x800009ec]:sd s1, 176(ra)<br>    |
|  24|[0x800032c8]<br>0xF61145F3484216DE|- rs1 : x10<br> - rs2 : x9<br> - rd : x8<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 #nosat<br>                                                    |[0x80000a30]:aes64esm fp, a0, s1<br> [0x80000a34]:sd fp, 184(ra)<br>    |
|  25|[0x800032d0]<br>0xAF143CC9C35705F1|- rs1 : x6<br> - rs2 : x5<br> - rd : x7<br> - rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 #nosat<br>                                                     |[0x80000a78]:aes64esm t2, t1, t0<br> [0x80000a7c]:sd t2, 192(ra)<br>    |
|  26|[0x800032d8]<br>0x309F421ACBC33221|- rs1 : x5<br> - rs2 : x7<br> - rd : x6<br> - rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 #nosat<br>                                                     |[0x80000ac8]:aes64esm t1, t0, t2<br> [0x80000acc]:sd t1, 0(fp)<br>      |
|  27|[0x800032e0]<br>0x3CED63B4E364112C|- rs1 : x7<br> - rs2 : x6<br> - rd : x5<br> - rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 #nosat<br>                                                     |[0x80000b10]:aes64esm t0, t2, t1<br> [0x80000b14]:sd t0, 8(fp)<br>      |
|  28|[0x800032e8]<br>0x2F6163B52C4E20F4|- rs1 : x3<br> - rs2 : x2<br> - rd : x4<br> - rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 #nosat<br>                                                     |[0x80000b58]:aes64esm tp, gp, sp<br> [0x80000b5c]:sd tp, 16(fp)<br>     |
|  29|[0x800032f0]<br>0x2EBE15E10871FB60|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 #nosat<br>                                                     |[0x80000ba0]:aes64esm gp, sp, tp<br> [0x80000ba4]:sd gp, 24(fp)<br>     |
|  30|[0x800032f8]<br>0xE614D62DB09868C8|- rs1 : x4<br> - rs2 : x3<br> - rd : x2<br> - rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 #nosat<br>                                                     |[0x80000be8]:aes64esm sp, tp, gp<br> [0x80000bec]:sd sp, 32(fp)<br>     |
|  31|[0x80003300]<br>0xAE2BA53803D9594D|- rs1 : x1<br> - rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 #nosat<br>                                                                                  |[0x80000c30]:aes64esm t6, ra, t5<br> [0x80000c34]:sd t6, 40(fp)<br>     |
|  32|[0x80003308]<br>0x75BC08D74490B705|- rs1 : x0<br>                                                                                                                                                               |[0x80000c5c]:aes64esm t6, zero, t5<br> [0x80000c60]:sd t6, 48(fp)<br>   |
|  33|[0x80003310]<br>0xF857C912632E7A04|- rs2 : x1<br> - rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 #nosat<br>                                                                                  |[0x80000ca4]:aes64esm t6, t5, ra<br> [0x80000ca8]:sd t6, 56(fp)<br>     |
|  34|[0x80003318]<br>0x5147A975317B3C6E|- rs2 : x0<br>                                                                                                                                                               |[0x80000cd0]:aes64esm t6, t5, zero<br> [0x80000cd4]:sd t6, 64(fp)<br>   |
|  35|[0x80003320]<br>0x20A524BA9F573CDD|- rd : x1<br> - rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 #nosat<br>                                                                                   |[0x80000d18]:aes64esm ra, t6, t5<br> [0x80000d1c]:sd ra, 72(fp)<br>     |
|  36|[0x80003328]<br>0x0000000000000000|- rd : x0<br> - rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 #nosat<br>                                                                                   |[0x80000d60]:aes64esm zero, t6, t5<br> [0x80000d64]:sd zero, 80(fp)<br> |
|  37|[0x80003330]<br>0x9CE5CDB94333092E|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 #nosat<br>                                                                                                 |[0x80000da8]:aes64esm t6, t5, t4<br> [0x80000dac]:sd t6, 88(fp)<br>     |
|  38|[0x80003338]<br>0xE9A024C791C76CCC|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 #nosat<br>                                                                                                 |[0x80000df0]:aes64esm t6, t5, t4<br> [0x80000df4]:sd t6, 96(fp)<br>     |
|  39|[0x80003340]<br>0xED5364820B0ED716|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 #nosat<br>                                                                                                 |[0x80000e38]:aes64esm t6, t5, t4<br> [0x80000e3c]:sd t6, 104(fp)<br>    |
|  40|[0x80003348]<br>0xD258BFC648A25DE1|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 #nosat<br>                                                                                                 |[0x80000e80]:aes64esm t6, t5, t4<br> [0x80000e84]:sd t6, 112(fp)<br>    |
|  41|[0x80003350]<br>0x4E89EBF26F7AE4C6|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 #nosat<br>                                                                                                 |[0x80000ec8]:aes64esm t6, t5, t4<br> [0x80000ecc]:sd t6, 120(fp)<br>    |
|  42|[0x80003358]<br>0xCCA9027444CBA95B|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 #nosat<br>                                                                                                 |[0x80000f10]:aes64esm t6, t5, t4<br> [0x80000f14]:sd t6, 128(fp)<br>    |
|  43|[0x80003360]<br>0x3277A8B33282A6C8|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 #nosat<br>                                                                                                 |[0x80000f58]:aes64esm t6, t5, t4<br> [0x80000f5c]:sd t6, 136(fp)<br>    |
|  44|[0x80003368]<br>0xDFD0692562125B16|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 #nosat<br>                                                                                                 |[0x80000fa0]:aes64esm t6, t5, t4<br> [0x80000fa4]:sd t6, 144(fp)<br>    |
|  45|[0x80003370]<br>0x0D50064EB04730F2|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 #nosat<br>                                                                                                 |[0x80000fe8]:aes64esm t6, t5, t4<br> [0x80000fec]:sd t6, 152(fp)<br>    |
|  46|[0x80003378]<br>0x3B1B937822D3B6DE|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 #nosat<br>                                                                                                 |[0x80001030]:aes64esm t6, t5, t4<br> [0x80001034]:sd t6, 160(fp)<br>    |
|  47|[0x80003380]<br>0x152B3277F016DD5C|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 #nosat<br>                                                                                                 |[0x80001078]:aes64esm t6, t5, t4<br> [0x8000107c]:sd t6, 168(fp)<br>    |
|  48|[0x80003388]<br>0x607163F8949EFD44|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 #nosat<br>                                                                                                 |[0x800010c0]:aes64esm t6, t5, t4<br> [0x800010c4]:sd t6, 176(fp)<br>    |
|  49|[0x80003390]<br>0x829B128F3266E8C4|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 #nosat<br>                                                                                                 |[0x80001108]:aes64esm t6, t5, t4<br> [0x8000110c]:sd t6, 184(fp)<br>    |
|  50|[0x80003398]<br>0x3F7AE5567A8B4E8F|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 #nosat<br>                                                                                                 |[0x80001150]:aes64esm t6, t5, t4<br> [0x80001154]:sd t6, 192(fp)<br>    |
|  51|[0x800033a0]<br>0x494DA28725974506|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 #nosat<br>                                                                                                 |[0x80001198]:aes64esm t6, t5, t4<br> [0x8000119c]:sd t6, 200(fp)<br>    |
|  52|[0x800033a8]<br>0x5C219C27615DD9B0|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 #nosat<br>                                                                                                 |[0x800011d8]:aes64esm t6, t5, t4<br> [0x800011dc]:sd t6, 208(fp)<br>    |
|  53|[0x800033b0]<br>0xC1668ACA1A55A8C1|- rs1_val == 0x6d23c0488a6019c1 and rs2_val == 0x860bdaad7447a088 #nosat<br>                                                                                                 |[0x80001220]:aes64esm t6, t5, t4<br> [0x80001224]:sd t6, 216(fp)<br>    |
|  54|[0x800033b8]<br>0x79501D0D7E1B9602|- rs1_val == 0x1f7d946f17168ab3 and rs2_val == 0x66eae3d9bbb4f560 #nosat<br>                                                                                                 |[0x80001268]:aes64esm t6, t5, t4<br> [0x8000126c]:sd t6, 224(fp)<br>    |
|  55|[0x800033c0]<br>0x7A4DFB294AC7E15D|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 #nosat<br>                                                                                                 |[0x800012b0]:aes64esm t6, t5, t4<br> [0x800012b4]:sd t6, 232(fp)<br>    |
|  56|[0x800033c8]<br>0x405878BBD005A3A9|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 #nosat<br>                                                                                                 |[0x800012f8]:aes64esm t6, t5, t4<br> [0x800012fc]:sd t6, 240(fp)<br>    |
