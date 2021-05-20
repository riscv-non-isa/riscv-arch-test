
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
| COV_LABELS                | aes64esm      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64esm-01.S/ref.S    |
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
      [0x800012f0]:aes64esm
      [0x800012f4]:sd
 -- Signature Address: 0x800031c8 Data: 0x5f14489b7739c1fe
 -- Redundant Coverpoints hit by the op
      - opcode : aes64esm
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0x79bb7c341d3110bc and rs2_val == 0x8678f5e3d272e229 #nosat






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

|s.no|            signature             |                                                                               coverpoints                                                                               |                     code                     |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
|   1|[0x80003010]<br>0xe8ddc06f28b2e9c9|- opcode : aes64esm<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x29<br> - rs1 == rs2 != rd<br>                                                                            |[0x800003c8]:aes64esm<br> [0x800003cc]:sd<br> |
|   2|[0x80003018]<br>0x481d25fffec1d9b4|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br>                                                                                                       |[0x80000410]:aes64esm<br> [0x80000414]:sd<br> |
|   3|[0x80003020]<br>0xc1668aca1a55a8c1|- rs1 : x21<br> - rs2 : x19<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0x6d23c0488a6019c1 and rs2_val == 0x860bdaad7447a088 #nosat<br> |[0x80000458]:aes64esm<br> [0x8000045c]:sd<br> |
|   4|[0x80003028]<br>0x79501d0d7e1b9602|- rs1 : x22<br> - rs2 : x7<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs1_val == 0x1f7d946f17168ab3 and rs2_val == 0x66eae3d9bbb4f560 #nosat<br>                        |[0x800004a0]:aes64esm<br> [0x800004a4]:sd<br> |
|   5|[0x80003030]<br>0x6ccbe94103ff9f4a|- rs1 : x0<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br>                                                                                                     |[0x800004cc]:aes64esm<br> [0x800004d0]:sd<br> |
|   6|[0x80003038]<br>0x27d83fb633742f3a|- rs1 : x12<br> - rs2 : x11<br> - rd : x24<br> - rs1_val == 0xb694de26ad9e5431 and rs2_val == 0x293f9f6071fad878 #nosat<br>                                              |[0x80000514]:aes64esm<br> [0x80000518]:sd<br> |
|   7|[0x80003040]<br>0x5f1063b2a80fe9e4|- rs1 : x23<br> - rs2 : x3<br> - rd : x6<br> - rs1_val == 0x987daa20b858e304 and rs2_val == 0x1aa1beebefb902cb #nosat<br>                                                |[0x8000055c]:aes64esm<br> [0x80000560]:sd<br> |
|   8|[0x80003048]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x14<br> - rd : x0<br> - rs1_val == 0x79bb7c341d3110bc and rs2_val == 0x8678f5e3d272e229 #nosat<br>                                                |[0x800005a4]:aes64esm<br> [0x800005a8]:sd<br> |
|   9|[0x80003050]<br>0x908767f159e07013|- rs1 : x11<br> - rs2 : x20<br> - rd : x1<br> - rs1_val == 0xe2eaf4a09869be8c and rs2_val == 0x5b730cad91766f62 #nosat<br>                                               |[0x800005ec]:aes64esm<br> [0x800005f0]:sd<br> |
|  10|[0x80003058]<br>0x7630ca0111781549|- rs1 : x5<br> - rs2 : x30<br> - rd : x23<br> - rs1_val == 0xc0fe15dd0df9564b and rs2_val == 0xb22bbf7eb4c858fb #nosat<br>                                               |[0x80000634]:aes64esm<br> [0x80000638]:sd<br> |
|  11|[0x80003060]<br>0x2ed3fceaf23e4a35|- rs1 : x19<br> - rs2 : x12<br> - rd : x27<br> - rs1_val == 0x4113ee60952acffe and rs2_val == 0x53a66ed1dc80d916 #nosat<br>                                              |[0x8000067c]:aes64esm<br> [0x80000680]:sd<br> |
|  12|[0x80003068]<br>0x514905afb3d21c8b|- rs1 : x29<br> - rs2 : x21<br> - rd : x19<br> - rs1_val == 0x40a5ff526f38a9c7 and rs2_val == 0xb6f9706fb4f741aa #nosat<br>                                              |[0x800006c4]:aes64esm<br> [0x800006c8]:sd<br> |
|  13|[0x80003070]<br>0x211a2b77001c93a3|- rs1 : x24<br> - rs2 : x27<br> - rd : x21<br> - rs1_val == 0x9bedfe390d6ddd9d and rs2_val == 0xd05668ae0fdb82bc #nosat<br>                                              |[0x8000070c]:aes64esm<br> [0x80000710]:sd<br> |
|  14|[0x80003078]<br>0xcd2b7ee3c3e3c3bc|- rs1 : x8<br> - rs2 : x2<br> - rd : x20<br> - rs1_val == 0xd75739f82ac177c6 and rs2_val == 0xaa6bb2bde9ed477d #nosat<br>                                                |[0x80000754]:aes64esm<br> [0x80000758]:sd<br> |
|  15|[0x80003080]<br>0x90cc38293cc45740|- rs1 : x14<br> - rs2 : x1<br> - rd : x15<br> - rs1_val == 0x9a4e9ef10171f4df and rs2_val == 0x299c3bcf90efb625 #nosat<br>                                               |[0x8000079c]:aes64esm<br> [0x800007a0]:sd<br> |
|  16|[0x80003088]<br>0x8e5c783ab184a276|- rs1 : x25<br> - rs2 : x6<br> - rd : x8<br> - rs1_val == 0xd169a3f8cad5e297 and rs2_val == 0x1fc493caa371db42 #nosat<br>                                                |[0x800007e4]:aes64esm<br> [0x800007e8]:sd<br> |
|  17|[0x80003090]<br>0x47e31caddc46e066|- rs1 : x6<br> - rs2 : x22<br> - rd : x28<br> - rs1_val == 0xd5b9fe5cf69bdcf3 and rs2_val == 0xf4c30307672f666d #nosat<br>                                               |[0x8000082c]:aes64esm<br> [0x80000830]:sd<br> |
|  18|[0x80003098]<br>0x425e22a0db184ce3|- rs1 : x31<br> - rs2 : x17<br> - rd : x14<br> - rs1_val == 0xe4921bf73047c198 and rs2_val == 0xa0569d765ebc64cb #nosat<br>                                              |[0x80000874]:aes64esm<br> [0x80000878]:sd<br> |
|  19|[0x800030a0]<br>0xe64584d118c527e3|- rs1 : x15<br> - rs2 : x8<br> - rd : x4<br> - rs1_val == 0xfcc1b543c49cd65b and rs2_val == 0x2daf9ac7f5faf207 #nosat<br>                                                |[0x800008bc]:aes64esm<br> [0x800008c0]:sd<br> |
|  20|[0x800030a8]<br>0xf9245cdc8f3397a2|- rs1 : x30<br> - rs2 : x13<br> - rd : x12<br> - rs1_val == 0x436f40f274b8de87 and rs2_val == 0x3459294ef273b44c #nosat<br>                                              |[0x8000090c]:aes64esm<br> [0x80000910]:sd<br> |
|  21|[0x800030b0]<br>0x6f8a0514b7ac55ab|- rs1 : x1<br> - rs2 : x23<br> - rd : x18<br> - rs1_val == 0x75a3adb3254a9493 and rs2_val == 0xc5521660f3a3c571 #nosat<br>                                               |[0x80000954]:aes64esm<br> [0x80000958]:sd<br> |
|  22|[0x800030b8]<br>0x368420cecea4019f|- rs1 : x10<br> - rs2 : x28<br> - rd : x31<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 #nosat<br>                                              |[0x80000994]:aes64esm<br> [0x80000998]:sd<br> |
|  23|[0x800030c0]<br>0xc00dd1aecc099d32|- rs1 : x4<br> - rs2 : x0<br> - rd : x30<br>                                                                                                                             |[0x800009c0]:aes64esm<br> [0x800009c4]:sd<br> |
|  24|[0x800030c8]<br>0xf61145f3484216de|- rs1 : x2<br> - rs2 : x5<br> - rd : x3<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 #nosat<br>                                                 |[0x80000a08]:aes64esm<br> [0x80000a0c]:sd<br> |
|  25|[0x800030d0]<br>0xaf143cc9c35705f1|- rs1 : x16<br> - rs2 : x15<br> - rd : x5<br> - rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 #nosat<br>                                               |[0x80000a50]:aes64esm<br> [0x80000a54]:sd<br> |
|  26|[0x800030d8]<br>0x309f421acbc33221|- rs1 : x20<br> - rs2 : x31<br> - rd : x25<br> - rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 #nosat<br>                                              |[0x80000a98]:aes64esm<br> [0x80000a9c]:sd<br> |
|  27|[0x800030e0]<br>0x3ced63b4e364112c|- rs1 : x7<br> - rs2 : x25<br> - rd : x13<br> - rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 #nosat<br>                                               |[0x80000ae0]:aes64esm<br> [0x80000ae4]:sd<br> |
|  28|[0x800030e8]<br>0x2f6163b52c4e20f4|- rs1 : x13<br> - rs2 : x4<br> - rd : x2<br> - rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 #nosat<br>                                                |[0x80000b28]:aes64esm<br> [0x80000b2c]:sd<br> |
|  29|[0x800030f0]<br>0x2ebe15e10871fb60|- rs1 : x28<br> - rs2 : x10<br> - rd : x11<br> - rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 #nosat<br>                                              |[0x80000b70]:aes64esm<br> [0x80000b74]:sd<br> |
|  30|[0x800030f8]<br>0xe614d62db09868c8|- rs1 : x17<br> - rs2 : x29<br> - rd : x10<br> - rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 #nosat<br>                                              |[0x80000bb8]:aes64esm<br> [0x80000bbc]:sd<br> |
|  31|[0x80003100]<br>0xae2ba53803d9594d|- rs1 : x27<br> - rs2 : x24<br> - rd : x17<br> - rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 #nosat<br>                                              |[0x80000c00]:aes64esm<br> [0x80000c04]:sd<br> |
|  32|[0x80003108]<br>0x7a4dfb294ac7e15d|- rs1 : x26<br> - rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 #nosat<br>                                                                             |[0x80000c48]:aes64esm<br> [0x80000c4c]:sd<br> |
|  33|[0x80003110]<br>0xf857c912632e7a04|- rs2 : x16<br> - rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 #nosat<br>                                                                             |[0x80000c90]:aes64esm<br> [0x80000c94]:sd<br> |
|  34|[0x80003118]<br>0x405878bbd005a3a9|- rd : x16<br> - rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 #nosat<br>                                                                              |[0x80000cd8]:aes64esm<br> [0x80000cdc]:sd<br> |
|  35|[0x80003120]<br>0x20a524ba9f573cdd|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 #nosat<br>                                                                                             |[0x80000d20]:aes64esm<br> [0x80000d24]:sd<br> |
|  36|[0x80003128]<br>0x9ea78da537865c70|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 #nosat<br>                                                                                             |[0x80000d68]:aes64esm<br> [0x80000d6c]:sd<br> |
|  37|[0x80003130]<br>0x9ce5cdb94333092e|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 #nosat<br>                                                                                             |[0x80000db0]:aes64esm<br> [0x80000db4]:sd<br> |
|  38|[0x80003138]<br>0xe9a024c791c76ccc|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 #nosat<br>                                                                                             |[0x80000df8]:aes64esm<br> [0x80000dfc]:sd<br> |
|  39|[0x80003140]<br>0xed5364820b0ed716|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 #nosat<br>                                                                                             |[0x80000e40]:aes64esm<br> [0x80000e44]:sd<br> |
|  40|[0x80003148]<br>0xd258bfc648a25de1|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 #nosat<br>                                                                                             |[0x80000e88]:aes64esm<br> [0x80000e8c]:sd<br> |
|  41|[0x80003150]<br>0x4e89ebf26f7ae4c6|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 #nosat<br>                                                                                             |[0x80000ed0]:aes64esm<br> [0x80000ed4]:sd<br> |
|  42|[0x80003158]<br>0xcca9027444cba95b|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 #nosat<br>                                                                                             |[0x80000f18]:aes64esm<br> [0x80000f1c]:sd<br> |
|  43|[0x80003160]<br>0x3277a8b33282a6c8|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 #nosat<br>                                                                                             |[0x80000f60]:aes64esm<br> [0x80000f64]:sd<br> |
|  44|[0x80003168]<br>0xdfd0692562125b16|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 #nosat<br>                                                                                             |[0x80000fa8]:aes64esm<br> [0x80000fac]:sd<br> |
|  45|[0x80003170]<br>0x0d50064eb04730f2|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 #nosat<br>                                                                                             |[0x80000ff0]:aes64esm<br> [0x80000ff4]:sd<br> |
|  46|[0x80003178]<br>0x3b1b937822d3b6de|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 #nosat<br>                                                                                             |[0x80001038]:aes64esm<br> [0x8000103c]:sd<br> |
|  47|[0x80003180]<br>0x152b3277f016dd5c|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 #nosat<br>                                                                                             |[0x80001080]:aes64esm<br> [0x80001084]:sd<br> |
|  48|[0x80003188]<br>0x607163f8949efd44|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 #nosat<br>                                                                                             |[0x800010c8]:aes64esm<br> [0x800010cc]:sd<br> |
|  49|[0x80003190]<br>0x829b128f3266e8c4|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 #nosat<br>                                                                                             |[0x80001110]:aes64esm<br> [0x80001114]:sd<br> |
|  50|[0x80003198]<br>0x3f7ae5567a8b4e8f|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 #nosat<br>                                                                                             |[0x80001158]:aes64esm<br> [0x8000115c]:sd<br> |
|  51|[0x800031a0]<br>0x494da28725974506|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 #nosat<br>                                                                                             |[0x800011a0]:aes64esm<br> [0x800011a4]:sd<br> |
|  52|[0x800031a8]<br>0x5c219c27615dd9b0|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 #nosat<br>                                                                                             |[0x800011e0]:aes64esm<br> [0x800011e4]:sd<br> |
|  53|[0x800031b0]<br>0x51336d2c455c6a6a|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 #nosat<br>                                                                                             |[0x80001220]:aes64esm<br> [0x80001224]:sd<br> |
|  54|[0x800031b8]<br>0xf2c1686e5f2a933a|- rs1_val == 0x6af29145404fd8ed and rs2_val == 0x990e75eafff569c2 #nosat<br>                                                                                             |[0x80001260]:aes64esm<br> [0x80001264]:sd<br> |
|  55|[0x800031c0]<br>0x99d173aeaa13b6ca|- rs1_val == 0xef1d54db32b81f27 and rs2_val == 0x1826a804284fe16c #nosat<br>                                                                                             |[0x800012a8]:aes64esm<br> [0x800012ac]:sd<br> |
|  56|[0x800031d0]<br>0xe25c4d63680a3a09|- rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 #nosat<br>                                                                                             |[0x80001330]:aes64esm<br> [0x80001334]:sd<br> |
