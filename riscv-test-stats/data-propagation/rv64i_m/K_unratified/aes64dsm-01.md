
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001340')]      |
| SIG_REGION                | [('0x80003010', '0x800031e0', '58 dwords')]      |
| COV_LABELS                | aes64dsm      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64dsm-01.S/ref.S    |
| Total Number of coverpoints| 160     |
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
      [0x800012e8]:aes64dsm
      [0x800012ec]:sd
 -- Signature Address: 0x800031c8 Data: 0xf84e29cf20b8f3de
 -- Redundant Coverpoints hit by the op
      - opcode : aes64dsm
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0x40a5ff526f38a9c7 and rs2_val == 0xb6f9706fb4f741aa #nosat






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

|s.no|            signature             |                                                                               coverpoints                                                                                |                     code                     |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
|   1|[0x80003010]<br>0x6e10201749b32be7|- opcode : aes64dsm<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x11<br> - rs1 == rs2 != rd<br>                                                                               |[0x800003c8]:aes64dsm<br> [0x800003cc]:sd<br> |
|   2|[0x80003018]<br>0x91f3a8f935b2ab19|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br>                                                                                                        |[0x80000410]:aes64dsm<br> [0x80000414]:sd<br> |
|   3|[0x80003020]<br>0x837bdb2d7454b99b|- rs1 : x20<br> - rs2 : x11<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0x6d23c0488a6019c1 and rs2_val == 0x860bdaad7447a088 #nosat<br> |[0x80000458]:aes64dsm<br> [0x8000045c]:sd<br> |
|   4|[0x80003028]<br>0x517363cdad8d3d16|- rs1 : x7<br> - rs2 : x15<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs1_val == 0x1f7d946f17168ab3 and rs2_val == 0x66eae3d9bbb4f560 #nosat<br>                          |[0x800004a0]:aes64dsm<br> [0x800004a4]:sd<br> |
|   5|[0x80003030]<br>0xa559a9cc3f3b68cd|- rs1 : x2<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_val == 0xef1d54db32b81f27 and rs2_val == 0x1826a804284fe16c #nosat<br>                         |[0x800004e8]:aes64dsm<br> [0x800004ec]:sd<br> |
|   6|[0x80003038]<br>0x6e1a0aa9d5789818|- rs1 : x4<br> - rs2 : x31<br> - rd : x5<br> - rs1_val == 0xb694de26ad9e5431 and rs2_val == 0x293f9f6071fad878 #nosat<br>                                                 |[0x80000530]:aes64dsm<br> [0x80000534]:sd<br> |
|   7|[0x80003040]<br>0xb70cbf94972586b5|- rs1 : x0<br> - rs2 : x13<br> - rd : x23<br>                                                                                                                             |[0x8000055c]:aes64dsm<br> [0x80000560]:sd<br> |
|   8|[0x80003048]<br>0x26d4eaf26eddd1dc|- rs1 : x21<br> - rs2 : x20<br> - rd : x31<br> - rs1_val == 0x79bb7c341d3110bc and rs2_val == 0x8678f5e3d272e229 #nosat<br>                                               |[0x800005a4]:aes64dsm<br> [0x800005a8]:sd<br> |
|   9|[0x80003050]<br>0x4111cba533ed0398|- rs1 : x27<br> - rs2 : x24<br> - rd : x22<br> - rs1_val == 0xe2eaf4a09869be8c and rs2_val == 0x5b730cad91766f62 #nosat<br>                                               |[0x800005ec]:aes64dsm<br> [0x800005f0]:sd<br> |
|  10|[0x80003058]<br>0x1d8d032e6953b519|- rs1 : x19<br> - rs2 : x26<br> - rd : x12<br> - rs1_val == 0xc0fe15dd0df9564b and rs2_val == 0xb22bbf7eb4c858fb #nosat<br>                                               |[0x80000634]:aes64dsm<br> [0x80000638]:sd<br> |
|  11|[0x80003060]<br>0xb51b506776c2c6f9|- rs1 : x24<br> - rs2 : x27<br> - rd : x13<br> - rs1_val == 0x4113ee60952acffe and rs2_val == 0x53a66ed1dc80d916 #nosat<br>                                               |[0x8000067c]:aes64dsm<br> [0x80000680]:sd<br> |
|  12|[0x80003068]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x17<br> - rd : x0<br> - rs1_val == 0x40a5ff526f38a9c7 and rs2_val == 0xb6f9706fb4f741aa #nosat<br>                                                |[0x800006c4]:aes64dsm<br> [0x800006c8]:sd<br> |
|  13|[0x80003070]<br>0x6292ebcba9e847f3|- rs1 : x28<br> - rs2 : x10<br> - rd : x30<br> - rs1_val == 0x9bedfe390d6ddd9d and rs2_val == 0xd05668ae0fdb82bc #nosat<br>                                               |[0x8000070c]:aes64dsm<br> [0x80000710]:sd<br> |
|  14|[0x80003078]<br>0x131ae0e4a661c0a0|- rs1 : x14<br> - rs2 : x6<br> - rd : x25<br> - rs1_val == 0xd75739f82ac177c6 and rs2_val == 0xaa6bb2bde9ed477d #nosat<br>                                                |[0x80000754]:aes64dsm<br> [0x80000758]:sd<br> |
|  15|[0x80003080]<br>0x840c9e0d4ef2cb87|- rs1 : x18<br> - rs2 : x2<br> - rd : x24<br> - rs1_val == 0x9a4e9ef10171f4df and rs2_val == 0x299c3bcf90efb625 #nosat<br>                                                |[0x8000079c]:aes64dsm<br> [0x800007a0]:sd<br> |
|  16|[0x80003088]<br>0x59fe55d16514b912|- rs1 : x10<br> - rs2 : x29<br> - rd : x2<br> - rs1_val == 0xd169a3f8cad5e297 and rs2_val == 0x1fc493caa371db42 #nosat<br>                                                |[0x800007e4]:aes64dsm<br> [0x800007e8]:sd<br> |
|  17|[0x80003090]<br>0x7c42ffcc45858515|- rs1 : x15<br> - rs2 : x19<br> - rd : x4<br> - rs1_val == 0xd5b9fe5cf69bdcf3 and rs2_val == 0xf4c30307672f666d #nosat<br>                                                |[0x8000082c]:aes64dsm<br> [0x80000830]:sd<br> |
|  18|[0x80003098]<br>0x96c673fc08ee51f6|- rs1 : x12<br> - rs2 : x18<br> - rd : x6<br> - rs1_val == 0xe4921bf73047c198 and rs2_val == 0xa0569d765ebc64cb #nosat<br>                                                |[0x80000874]:aes64dsm<br> [0x80000878]:sd<br> |
|  19|[0x800030a0]<br>0xc14078bbf0b3d0b2|- rs1 : x1<br> - rs2 : x8<br> - rd : x20<br> - rs1_val == 0xfcc1b543c49cd65b and rs2_val == 0x2daf9ac7f5faf207 #nosat<br>                                                 |[0x800008bc]:aes64dsm<br> [0x800008c0]:sd<br> |
|  20|[0x800030a8]<br>0xffde6ec6d0de6221|- rs1 : x11<br> - rs2 : x22<br> - rd : x3<br> - rs1_val == 0x436f40f274b8de87 and rs2_val == 0x3459294ef273b44c #nosat<br>                                                |[0x8000090c]:aes64dsm<br> [0x80000910]:sd<br> |
|  21|[0x800030b0]<br>0x600ed6224fddb2b3|- rs1 : x17<br> - rs2 : x28<br> - rd : x1<br> - rs1_val == 0x75a3adb3254a9493 and rs2_val == 0xc5521660f3a3c571 #nosat<br>                                                |[0x80000954]:aes64dsm<br> [0x80000958]:sd<br> |
|  22|[0x800030b8]<br>0x2cff084fa0996fb9|- rs1 : x23<br> - rs2 : x12<br> - rd : x29<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 #nosat<br>                                               |[0x80000994]:aes64dsm<br> [0x80000998]:sd<br> |
|  23|[0x800030c0]<br>0xbe7311227c587353|- rs1 : x22<br> - rs2 : x30<br> - rd : x16<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 #nosat<br>                                               |[0x800009d4]:aes64dsm<br> [0x800009d8]:sd<br> |
|  24|[0x800030c8]<br>0x6e57739a106130f9|- rs1 : x6<br> - rs2 : x16<br> - rd : x26<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 #nosat<br>                                                |[0x80000a1c]:aes64dsm<br> [0x80000a20]:sd<br> |
|  25|[0x800030d0]<br>0xace6bd1c48b84048|- rs1 : x25<br> - rs2 : x7<br> - rd : x19<br> - rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 #nosat<br>                                                |[0x80000a64]:aes64dsm<br> [0x80000a68]:sd<br> |
|  26|[0x800030d8]<br>0xa78fda674b5f011d|- rs1 : x29<br> - rs2 : x4<br> - rd : x28<br> - rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 #nosat<br>                                                |[0x80000aac]:aes64dsm<br> [0x80000ab0]:sd<br> |
|  27|[0x800030e0]<br>0xb89de08e9e88fd35|- rs1 : x26<br> - rs2 : x23<br> - rd : x17<br> - rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 #nosat<br>                                               |[0x80000af4]:aes64dsm<br> [0x80000af8]:sd<br> |
|  28|[0x800030e8]<br>0x0c0ab4739c4646dd|- rs1 : x30<br> - rs2 : x3<br> - rd : x8<br> - rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 #nosat<br>                                                 |[0x80000b3c]:aes64dsm<br> [0x80000b40]:sd<br> |
|  29|[0x800030f0]<br>0x67b73808a657703f|- rs1 : x8<br> - rs2 : x25<br> - rd : x27<br> - rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 #nosat<br>                                                |[0x80000b84]:aes64dsm<br> [0x80000b88]:sd<br> |
|  30|[0x800030f8]<br>0xd8360c41b53bcf2f|- rs1 : x31<br> - rs2 : x0<br> - rd : x18<br>                                                                                                                             |[0x80000bb0]:aes64dsm<br> [0x80000bb4]:sd<br> |
|  31|[0x80003100]<br>0x97c0573419e84d6d|- rs1 : x16<br> - rs2 : x14<br> - rd : x10<br> - rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 #nosat<br>                                               |[0x80000bf8]:aes64dsm<br> [0x80000bfc]:sd<br> |
|  32|[0x80003108]<br>0x7f87f0a1729ece65|- rs1 : x3<br> - rs2 : x1<br> - rd : x14<br> - rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 #nosat<br>                                                 |[0x80000c40]:aes64dsm<br> [0x80000c44]:sd<br> |
|  33|[0x80003110]<br>0x73f534ee1f58fd0e|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 #nosat<br>                                                                                              |[0x80000c88]:aes64dsm<br> [0x80000c8c]:sd<br> |
|  34|[0x80003118]<br>0x3c9c184a87e5eed9|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 #nosat<br>                                                                                              |[0x80000cd0]:aes64dsm<br> [0x80000cd4]:sd<br> |
|  35|[0x80003120]<br>0x4ce0f020a115f316|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 #nosat<br>                                                                                              |[0x80000d18]:aes64dsm<br> [0x80000d1c]:sd<br> |
|  36|[0x80003128]<br>0xc9465f4f9e95b52c|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 #nosat<br>                                                                                              |[0x80000d60]:aes64dsm<br> [0x80000d64]:sd<br> |
|  37|[0x80003130]<br>0xb7231f7db6f8a540|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 #nosat<br>                                                                                              |[0x80000da8]:aes64dsm<br> [0x80000dac]:sd<br> |
|  38|[0x80003138]<br>0x4d69313bd01a89c8|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 #nosat<br>                                                                                              |[0x80000df0]:aes64dsm<br> [0x80000df4]:sd<br> |
|  39|[0x80003140]<br>0x0ca2fd3c48c6a153|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 #nosat<br>                                                                                              |[0x80000e38]:aes64dsm<br> [0x80000e3c]:sd<br> |
|  40|[0x80003148]<br>0x4d42ac2cb616db9d|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 #nosat<br>                                                                                              |[0x80000e80]:aes64dsm<br> [0x80000e84]:sd<br> |
|  41|[0x80003150]<br>0xe17814992325780f|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 #nosat<br>                                                                                              |[0x80000ec8]:aes64dsm<br> [0x80000ecc]:sd<br> |
|  42|[0x80003158]<br>0x1fbdec153e39a9d1|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 #nosat<br>                                                                                              |[0x80000f10]:aes64dsm<br> [0x80000f14]:sd<br> |
|  43|[0x80003160]<br>0xcdc0642e5275ffa5|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 #nosat<br>                                                                                              |[0x80000f58]:aes64dsm<br> [0x80000f5c]:sd<br> |
|  44|[0x80003168]<br>0x166fdca099f4c87d|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 #nosat<br>                                                                                              |[0x80000fa0]:aes64dsm<br> [0x80000fa4]:sd<br> |
|  45|[0x80003170]<br>0xaca6909e8af34367|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 #nosat<br>                                                                                              |[0x80000fe8]:aes64dsm<br> [0x80000fec]:sd<br> |
|  46|[0x80003178]<br>0x7d66a8c736ab9c2a|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 #nosat<br>                                                                                              |[0x80001030]:aes64dsm<br> [0x80001034]:sd<br> |
|  47|[0x80003180]<br>0x0e314eef5e7b5aec|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 #nosat<br>                                                                                              |[0x80001078]:aes64dsm<br> [0x8000107c]:sd<br> |
|  48|[0x80003188]<br>0xd679962614cf6f42|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 #nosat<br>                                                                                              |[0x800010c0]:aes64dsm<br> [0x800010c4]:sd<br> |
|  49|[0x80003190]<br>0x2c7a7635e8c1230c|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 #nosat<br>                                                                                              |[0x80001108]:aes64dsm<br> [0x8000110c]:sd<br> |
|  50|[0x80003198]<br>0xaa7dc82873125ed6|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 #nosat<br>                                                                                              |[0x80001150]:aes64dsm<br> [0x80001154]:sd<br> |
|  51|[0x800031a0]<br>0x6c5c7a9f6e57fba4|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 #nosat<br>                                                                                              |[0x80001198]:aes64dsm<br> [0x8000119c]:sd<br> |
|  52|[0x800031a8]<br>0x519bbdc6b2f24f17|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 #nosat<br>                                                                                              |[0x800011d8]:aes64dsm<br> [0x800011dc]:sd<br> |
|  53|[0x800031b0]<br>0x6e29192e1c96a313|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 #nosat<br>                                                                                              |[0x80001218]:aes64dsm<br> [0x8000121c]:sd<br> |
|  54|[0x800031b8]<br>0xda844ffea4d44576|- rs1_val == 0x6af29145404fd8ed and rs2_val == 0x990e75eafff569c2 #nosat<br>                                                                                              |[0x80001258]:aes64dsm<br> [0x8000125c]:sd<br> |
|  55|[0x800031c0]<br>0x16c5336976d56898|- rs1_val == 0x987daa20b858e304 and rs2_val == 0x1aa1beebefb902cb #nosat<br>                                                                                              |[0x800012a0]:aes64dsm<br> [0x800012a4]:sd<br> |
|  56|[0x800031d0]<br>0x2e6c87544ee97752|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 #nosat<br>                                                                                              |[0x80001330]:aes64dsm<br> [0x80001334]:sd<br> |
