
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002d20')]      |
| SIG_REGION                | [('0x80004010', '0x800044d0', '152 dwords')]      |
| COV_LABELS                | sm4ks      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ks-01.S/ref.S    |
| Total Number of coverpoints| 220     |
| Total Coverpoints Hit     | 215      |
| Total Signature Updates   | 151      |
| STAT1                     | 151      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                          coverpoints                                                           |                   code                    |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
|   1|[0x80004010]<br>0x00000000c3186ad6|- opcode : sm4ks<br> - rs1 : x8<br> - rs2 : x8<br> - rs1 == rs2<br>                                                             |[0x800003c8]:sm4ks<br> [0x800003cc]:sd<br> |
|   2|[0x80004018]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x20<br> - rs1 != rs2<br>                                                                                 |[0x800003f4]:sm4ks<br> [0x800003f8]:sd<br> |
|   3|[0x80004020]<br>0x0000000039e6b944|- rs1 : x26<br> - rs2 : x0<br>                                                                                                  |[0x80000420]:sm4ks<br> [0x80000424]:sd<br> |
|   4|[0x80004028]<br>0x000000003909b9cd|- rs1 : x29<br> - rs2 : x13<br> - rs1_val == 0xa757e91e027e5943 and rs2_val == 0xda73ec2605e6750f and imm_val == 0x2 #nosat<br> |[0x80000468]:sm4ks<br> [0x8000046c]:sd<br> |
|   5|[0x80004030]<br>0x00000000765a1017|- rs1 : x27<br> - rs2 : x19<br> - rs1_val == 0xf452cbd863fa921d and rs2_val == 0x4b6587d88ef464d1 and imm_val == 0x3 #nosat<br> |[0x800004b0]:sm4ks<br> [0x800004b4]:sd<br> |
|   6|[0x80004038]<br>0x00000000b5726738|- rs1 : x18<br> - rs2 : x17<br> - rs1_val == 0xd40f46a4356c1dcc and rs2_val == 0x30c33d97184e0f23 and imm_val == 0x0 #nosat<br> |[0x800004f8]:sm4ks<br> [0x800004fc]:sd<br> |
|   7|[0x80004040]<br>0x00000000d7da59d6|- rs1 : x24<br> - rs2 : x26<br> - rs1_val == 0x6d23c0488a6019c1 and rs2_val == 0x860bdaad7447a088 and imm_val == 0x2 #nosat<br> |[0x80000540]:sm4ks<br> [0x80000544]:sd<br> |
|   8|[0x80004048]<br>0x00000000a4300751|- rs1 : x5<br> - rs2 : x11<br> - rs1_val == 0x17168ab3a4351379 and rs2_val == 0xbbb4f560f222070c and imm_val == 0x0 #nosat<br>  |[0x80000580]:sm4ks<br> [0x80000584]:sd<br> |
|   9|[0x80004050]<br>0x00000000f77d94db|- rs1 : x16<br> - rs2 : x9<br> - rs1_val == 0x3fb0fe60ef1d54db and rs2_val == 0x09ff42451826a804 and imm_val == 0x1 #nosat<br>  |[0x800005c8]:sm4ks<br> [0x800005cc]:sd<br> |
|  10|[0x80004058]<br>0x000000000da6e512|- rs1 : x2<br> - rs2 : x27<br> - rs1_val == 0xcc7b22010ca3ef52 and rs2_val == 0xc150f4d3df74d068 and imm_val == 0x1 #nosat<br>  |[0x80000610]:sm4ks<br> [0x80000614]:sd<br> |
|  11|[0x80004060]<br>0x000000008c2f0ea0|- rs1 : x9<br> - rs2 : x2<br> - rs1_val == 0x358a9235987daa20 and rs2_val == 0xb369e10209f393d7 and imm_val == 0x1 #nosat<br>   |[0x80000658]:sm4ks<br> [0x8000065c]:sd<br> |
|  12|[0x80004068]<br>0x000000009aa8e8ca|- rs1 : x23<br> - rs2 : x12<br> - rs1_val == 0x91766f62ba2be4d3 and rs2_val == 0x74a813d25570084b and imm_val == 0x0 #nosat<br> |[0x800006a0]:sm4ks<br> [0x800006a4]:sd<br> |
|  13|[0x80004070]<br>0x0000000099e629b5|- rs1 : x31<br> - rs2 : x23<br> - rs1_val == 0xb7c1fc5f1efa1095 and rs2_val == 0xe2cbb9ab3819fe4d and imm_val == 0x1 #nosat<br> |[0x800006e0]:sm4ks<br> [0x800006e4]:sd<br> |
|  14|[0x80004078]<br>0x0000000077b0f820|- rs1 : x4<br> - rs2 : x25<br> - rs1_val == 0xa6c9253a4cc6382e and rs2_val == 0x25ae27ee4113ee60 and imm_val == 0x2 #nosat<br>  |[0x80000728]:sm4ks<br> [0x8000072c]:sd<br> |
|  15|[0x80004080]<br>0x000000009ab78bb6|- rs1 : x10<br> - rs2 : x31<br> - rs1_val == 0xf17f6920daaafe5c and rs2_val == 0x7bcad7c4ff9a1b80 and imm_val == 0x0 #nosat<br> |[0x80000760]:sm4ks<br> [0x80000764]:sd<br> |
|  16|[0x80004088]<br>0x00000000bec082ef|- rs1 : x17<br> - rs2 : x29<br> - rs1_val == 0x3150e5fa299c3bcf and rs2_val == 0xe6fff3d9ec1ce9d2 and imm_val == 0x1 #nosat<br> |[0x800007a8]:sm4ks<br> [0x800007ac]:sd<br> |
|  17|[0x80004090]<br>0x00000000a46ce102|- rs1 : x30<br> - rs2 : x24<br> - rs1_val == 0x1fc493caa371db42 and rs2_val == 0x9a4e9ef10171f4df and imm_val == 0x1 #nosat<br> |[0x800007f0]:sm4ks<br> [0x800007f4]:sd<br> |
|  18|[0x80004098]<br>0x0000000013d04f04|- rs1 : x28<br> - rs2 : x4<br> - rs1_val == 0xf5faf2073430cb17 and rs2_val == 0x8e2eac2a760b3c5e and imm_val == 0x3 #nosat<br>  |[0x80000838]:sm4ks<br> [0x8000083c]:sd<br> |
|  19|[0x800040a0]<br>0x00000000616f949a|- rs1 : x14<br> - rs2 : x16<br> - rs1_val == 0xbc991c531484f407 and rs2_val == 0x55d98c6e3459294e and imm_val == 0x2 #nosat<br> |[0x80000880]:sm4ks<br> [0x80000884]:sd<br> |
|  20|[0x800040a8]<br>0x00000000bb688d85|- rs1 : x11<br> - rs2 : x3<br> - rs1_val == 0x59885afcbb61a9cd and rs2_val == 0xccce240c81c1e7ff and imm_val == 0x0 #nosat<br>  |[0x800008c8]:sm4ks<br> [0x800008cc]:sd<br> |
|  21|[0x800040b0]<br>0x00000000c9ca89e5|- rs1 : x19<br> - rs2 : x28<br> - rs1_val == 0x75a3adb3254a9493 and rs2_val == 0xc5521660f3a3c571 and imm_val == 0x3 #nosat<br> |[0x80000910]:sm4ks<br> [0x80000914]:sd<br> |
|  22|[0x800040b8]<br>0x00000000177ae48e|- rs1 : x12<br> - rs2 : x22<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 3 #nosat<br>   |[0x80000950]:sm4ks<br> [0x80000954]:sd<br> |
|  23|[0x800040c0]<br>0x00000000c5875977|- rs1 : x20<br> - rs2 : x14<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 2 #nosat<br>   |[0x80000990]:sm4ks<br> [0x80000994]:sd<br> |
|  24|[0x800040c8]<br>0x00000000e58209f8|- rs1 : x21<br> - rs2 : x5<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 1 #nosat<br>    |[0x800009d0]:sm4ks<br> [0x800009d4]:sd<br> |
|  25|[0x800040d0]<br>0x00000000fbf9f5e0|- rs1 : x3<br> - rs2 : x6<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 0 #nosat<br>     |[0x80000a10]:sm4ks<br> [0x80000a14]:sd<br> |
|  26|[0x800040d8]<br>0x00000000cd32f6ef|- rs1 : x13<br> - rs2 : x10<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 3 #nosat<br>   |[0x80000a58]:sm4ks<br> [0x80000a5c]:sd<br> |
|  27|[0x800040e0]<br>0x00000000dcad117b|- rs1 : x25<br> - rs2 : x21<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 2 #nosat<br>   |[0x80000a98]:sm4ks<br> [0x80000a9c]:sd<br> |
|  28|[0x800040e8]<br>0x00000000ee851f30|- rs1 : x15<br> - rs2 : x30<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 1 #nosat<br>   |[0x80000ad8]:sm4ks<br> [0x80000adc]:sd<br> |
|  29|[0x800040f0]<br>0x00000000d37dcd89|- rs1 : x1<br> - rs2 : x7<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 0 #nosat<br>     |[0x80000b18]:sm4ks<br> [0x80000b1c]:sd<br> |
|  30|[0x800040f8]<br>0x00000000a1aae0cd|- rs1 : x6<br> - rs2 : x18<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 3 #nosat<br>    |[0x80000b60]:sm4ks<br> [0x80000b64]:sd<br> |
|  31|[0x80004100]<br>0x00000000a07d097a|- rs1 : x22<br> - rs2 : x1<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 2 #nosat<br>    |[0x80000ba8]:sm4ks<br> [0x80000bac]:sd<br> |
|  32|[0x80004108]<br>0x0000000066de80c8|- rs1 : x7<br> - rs2 : x15<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 1 #nosat<br>    |[0x80000bf0]:sm4ks<br> [0x80000bf4]:sd<br> |
|  33|[0x80004110]<br>0x00000000cb7bad61|- rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 0 #nosat<br>                                   |[0x80000c38]:sm4ks<br> [0x80000c3c]:sd<br> |
|  34|[0x80004118]<br>0x00000000eac260e4|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 3 #nosat<br>                                   |[0x80000c80]:sm4ks<br> [0x80000c84]:sd<br> |
|  35|[0x80004120]<br>0x000000009b13c17e|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 2 #nosat<br>                                   |[0x80000cc8]:sm4ks<br> [0x80000ccc]:sd<br> |
|  36|[0x80004128]<br>0x0000000074be58c0|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 1 #nosat<br>                                   |[0x80000d10]:sm4ks<br> [0x80000d14]:sd<br> |
|  37|[0x80004130]<br>0x00000000436ed385|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 0 #nosat<br>                                   |[0x80000d58]:sm4ks<br> [0x80000d5c]:sd<br> |
|  38|[0x80004138]<br>0x0000000053dac89c|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 3 #nosat<br>                                   |[0x80000da0]:sm4ks<br> [0x80000da4]:sd<br> |
|  39|[0x80004140]<br>0x00000000c3ebf95e|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 2 #nosat<br>                                   |[0x80000de8]:sm4ks<br> [0x80000dec]:sd<br> |
|  40|[0x80004148]<br>0x0000000043ba18f8|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 1 #nosat<br>                                   |[0x80000e30]:sm4ks<br> [0x80000e34]:sd<br> |
|  41|[0x80004150]<br>0x000000009bdbdcd2|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 0 #nosat<br>                                   |[0x80000e78]:sm4ks<br> [0x80000e7c]:sd<br> |
|  42|[0x80004158]<br>0x00000000c192d3d9|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 3 #nosat<br>                                   |[0x80000ec0]:sm4ks<br> [0x80000ec4]:sd<br> |
|  43|[0x80004160]<br>0x00000000bb02d1ca|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 2 #nosat<br>                                   |[0x80000f08]:sm4ks<br> [0x80000f0c]:sd<br> |
|  44|[0x80004168]<br>0x00000000dde8a550|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 1 #nosat<br>                                   |[0x80000f50]:sm4ks<br> [0x80000f54]:sd<br> |
|  45|[0x80004170]<br>0x000000007357c7fd|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 0 #nosat<br>                                   |[0x80000f98]:sm4ks<br> [0x80000f9c]:sd<br> |
|  46|[0x80004178]<br>0x00000000598adb81|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 3 #nosat<br>                                   |[0x80000fe0]:sm4ks<br> [0x80000fe4]:sd<br> |
|  47|[0x80004180]<br>0x000000009c65295d|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 2 #nosat<br>                                   |[0x80001028]:sm4ks<br> [0x8000102c]:sd<br> |
|  48|[0x80004188]<br>0x0000000048c7d2a8|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 1 #nosat<br>                                   |[0x80001070]:sm4ks<br> [0x80001074]:sd<br> |
|  49|[0x80004190]<br>0x000000006b5b8f45|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 0 #nosat<br>                                   |[0x800010b8]:sm4ks<br> [0x800010bc]:sd<br> |
|  50|[0x80004198]<br>0x0000000082e249e0|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 3 #nosat<br>                                   |[0x80001100]:sm4ks<br> [0x80001104]:sd<br> |
|  51|[0x800041a0]<br>0x00000000ed9e41cb|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 2 #nosat<br>                                   |[0x80001148]:sm4ks<br> [0x8000114c]:sd<br> |
|  52|[0x800041a8]<br>0x0000000058ae18e0|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 1 #nosat<br>                                   |[0x80001190]:sm4ks<br> [0x80001194]:sd<br> |
|  53|[0x800041b0]<br>0x00000000e340c9d1|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 0 #nosat<br>                                   |[0x800011d8]:sm4ks<br> [0x800011dc]:sd<br> |
|  54|[0x800041b8]<br>0x00000000fe1a319a|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 3 #nosat<br>                                   |[0x80001220]:sm4ks<br> [0x80001224]:sd<br> |
|  55|[0x800041c0]<br>0x00000000a08d593e|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 2 #nosat<br>                                   |[0x80001268]:sm4ks<br> [0x8000126c]:sd<br> |
|  56|[0x800041c8]<br>0x0000000020d762d8|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 1 #nosat<br>                                   |[0x800012b0]:sm4ks<br> [0x800012b4]:sd<br> |
|  57|[0x800041d0]<br>0x000000001b20d36d|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 0 #nosat<br>                                   |[0x800012f8]:sm4ks<br> [0x800012fc]:sd<br> |
|  58|[0x800041d8]<br>0x00000000c1f2bf89|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 3 #nosat<br>                                   |[0x80001340]:sm4ks<br> [0x80001344]:sd<br> |
|  59|[0x800041e0]<br>0x0000000086d8f1bd|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 2 #nosat<br>                                   |[0x80001388]:sm4ks<br> [0x8000138c]:sd<br> |
|  60|[0x800041e8]<br>0x000000002ccd4e50|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 1 #nosat<br>                                   |[0x800013d0]:sm4ks<br> [0x800013d4]:sd<br> |
|  61|[0x800041f0]<br>0x00000000d332b0b3|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 0 #nosat<br>                                   |[0x80001418]:sm4ks<br> [0x8000141c]:sd<br> |
|  62|[0x800041f8]<br>0x00000000856aacbf|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 3 #nosat<br>                                   |[0x80001460]:sm4ks<br> [0x80001464]:sd<br> |
|  63|[0x80004200]<br>0x00000000da48e9b4|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 2 #nosat<br>                                   |[0x800014a8]:sm4ks<br> [0x800014ac]:sd<br> |
|  64|[0x80004208]<br>0x00000000b5d15f68|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 1 #nosat<br>                                   |[0x800014f0]:sm4ks<br> [0x800014f4]:sd<br> |
|  65|[0x80004210]<br>0x000000000b29a7b5|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 0 #nosat<br>                                   |[0x80001538]:sm4ks<br> [0x8000153c]:sd<br> |
|  66|[0x80004218]<br>0x0000000008c234f5|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 3 #nosat<br>                                   |[0x80001580]:sm4ks<br> [0x80001584]:sd<br> |
|  67|[0x80004220]<br>0x00000000b281c124|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 2 #nosat<br>                                   |[0x800015c8]:sm4ks<br> [0x800015cc]:sd<br> |
|  68|[0x80004228]<br>0x0000000026b68880|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 1 #nosat<br>                                   |[0x80001610]:sm4ks<br> [0x80001614]:sd<br> |
|  69|[0x80004230]<br>0x00000000a3bac160|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 0 #nosat<br>                                   |[0x80001658]:sm4ks<br> [0x8000165c]:sd<br> |
|  70|[0x80004238]<br>0x000000003f1a8dca|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 3 #nosat<br>                                   |[0x800016a0]:sm4ks<br> [0x800016a4]:sd<br> |
|  71|[0x80004240]<br>0x00000000b5c73913|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 2 #nosat<br>                                   |[0x800016e8]:sm4ks<br> [0x800016ec]:sd<br> |
|  72|[0x80004248]<br>0x000000008ecd3758|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 1 #nosat<br>                                   |[0x80001730]:sm4ks<br> [0x80001734]:sd<br> |
|  73|[0x80004250]<br>0x000000009b86e978|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 0 #nosat<br>                                   |[0x80001778]:sm4ks<br> [0x8000177c]:sd<br> |
|  74|[0x80004258]<br>0x00000000a3929788|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 3 #nosat<br>                                   |[0x800017c0]:sm4ks<br> [0x800017c4]:sd<br> |
|  75|[0x80004260]<br>0x000000008aa0d196|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 2 #nosat<br>                                   |[0x80001808]:sm4ks<br> [0x8000180c]:sd<br> |
|  76|[0x80004268]<br>0x0000000001db02f0|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 1 #nosat<br>                                   |[0x80001850]:sm4ks<br> [0x80001854]:sd<br> |
|  77|[0x80004270]<br>0x000000003307c73d|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 0 #nosat<br>                                   |[0x80001898]:sm4ks<br> [0x8000189c]:sd<br> |
|  78|[0x80004278]<br>0x0000000059ca93e1|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 3 #nosat<br>                                   |[0x800018e0]:sm4ks<br> [0x800018e4]:sd<br> |
|  79|[0x80004280]<br>0x00000000ce00c999|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 2 #nosat<br>                                   |[0x80001928]:sm4ks<br> [0x8000192c]:sd<br> |
|  80|[0x80004288]<br>0x000000001cd53668|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 1 #nosat<br>                                   |[0x80001970]:sm4ks<br> [0x80001974]:sd<br> |
|  81|[0x80004290]<br>0x00000000cb97fc62|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 0 #nosat<br>                                   |[0x800019b8]:sm4ks<br> [0x800019bc]:sd<br> |
|  82|[0x80004298]<br>0x000000004d4298e7|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 3 #nosat<br>                                   |[0x80001a00]:sm4ks<br> [0x80001a04]:sd<br> |
|  83|[0x800042a0]<br>0x00000000fa70c19e|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 2 #nosat<br>                                   |[0x80001a48]:sm4ks<br> [0x80001a4c]:sd<br> |
|  84|[0x800042a8]<br>0x000000001df97660|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 1 #nosat<br>                                   |[0x80001a90]:sm4ks<br> [0x80001a94]:sd<br> |
|  85|[0x800042b0]<br>0x00000000e316d023|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 0 #nosat<br>                                   |[0x80001ad8]:sm4ks<br> [0x80001adc]:sd<br> |
|  86|[0x800042b8]<br>0x000000002c9af353|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 3 #nosat<br>                                   |[0x80001b20]:sm4ks<br> [0x80001b24]:sd<br> |
|  87|[0x800042c0]<br>0x00000000583cb970|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 2 #nosat<br>                                   |[0x80001b68]:sm4ks<br> [0x80001b6c]:sd<br> |
|  88|[0x800042c8]<br>0x000000007b7a7978|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 1 #nosat<br>                                   |[0x80001bb0]:sm4ks<br> [0x80001bb4]:sd<br> |
|  89|[0x800042d0]<br>0x00000000fb6013ac|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 0 #nosat<br>                                   |[0x80001bf8]:sm4ks<br> [0x80001bfc]:sd<br> |
|  90|[0x800042d8]<br>0x000000009492ed03|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 3 #nosat<br>                                   |[0x80001c40]:sm4ks<br> [0x80001c44]:sd<br> |
|  91|[0x800042e0]<br>0x0000000072703170|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 2 #nosat<br>                                   |[0x80001c88]:sm4ks<br> [0x80001c8c]:sd<br> |
|  92|[0x800042e8]<br>0x00000000756947b0|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 1 #nosat<br>                                   |[0x80001cd0]:sm4ks<br> [0x80001cd4]:sd<br> |
|  93|[0x800042f0]<br>0x00000000f37b573c|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 0 #nosat<br>                                   |[0x80001d18]:sm4ks<br> [0x80001d1c]:sd<br> |
|  94|[0x800042f8]<br>0x0000000035aa6247|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 3 #nosat<br>                                   |[0x80001d60]:sm4ks<br> [0x80001d64]:sd<br> |
|  95|[0x80004300]<br>0x000000006c64a969|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 2 #nosat<br>                                   |[0x80001da8]:sm4ks<br> [0x80001dac]:sd<br> |
|  96|[0x80004308]<br>0x000000006f784de8|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 1 #nosat<br>                                   |[0x80001df0]:sm4ks<br> [0x80001df4]:sd<br> |
|  97|[0x80004310]<br>0x00000000ab696676|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 0 #nosat<br>                                   |[0x80001e38]:sm4ks<br> [0x80001e3c]:sd<br> |
|  98|[0x80004318]<br>0x000000005802e67d|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 3 #nosat<br>                                   |[0x80001e80]:sm4ks<br> [0x80001e84]:sd<br> |
|  99|[0x80004320]<br>0x000000005d1ee16f|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 2 #nosat<br>                                   |[0x80001ec8]:sm4ks<br> [0x80001ecc]:sd<br> |
| 100|[0x80004328]<br>0x0000000067734320|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 1 #nosat<br>                                   |[0x80001f10]:sm4ks<br> [0x80001f14]:sd<br> |
| 101|[0x80004330]<br>0x00000000c3e67345|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 0 #nosat<br>                                   |[0x80001f58]:sm4ks<br> [0x80001f5c]:sd<br> |
| 102|[0x80004338]<br>0x00000000e91a4f01|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 3 #nosat<br>                                   |[0x80001fa0]:sm4ks<br> [0x80001fa4]:sd<br> |
| 103|[0x80004340]<br>0x000000001bdb79c8|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 2 #nosat<br>                                   |[0x80001fe8]:sm4ks<br> [0x80001fec]:sd<br> |
| 104|[0x80004348]<br>0x00000000d66f3238|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 1 #nosat<br>                                   |[0x80002030]:sm4ks<br> [0x80002034]:sd<br> |
| 105|[0x80004350]<br>0x000000005b576d30|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 0 #nosat<br>                                   |[0x80002078]:sm4ks<br> [0x8000207c]:sd<br> |
| 106|[0x80004358]<br>0x000000001832d875|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 3 #nosat<br>                                   |[0x800020c0]:sm4ks<br> [0x800020c4]:sd<br> |
| 107|[0x80004360]<br>0x00000000545db1d1|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 2 #nosat<br>                                   |[0x80002108]:sm4ks<br> [0x8000210c]:sd<br> |
| 108|[0x80004368]<br>0x00000000ce27ba30|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 1 #nosat<br>                                   |[0x80002150]:sm4ks<br> [0x80002154]:sd<br> |
| 109|[0x80004370]<br>0x00000000534d2da8|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 0 #nosat<br>                                   |[0x80002198]:sm4ks<br> [0x8000219c]:sd<br> |
| 110|[0x80004378]<br>0x00000000b7ca5636|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 3 #nosat<br>                                   |[0x800021e0]:sm4ks<br> [0x800021e4]:sd<br> |
| 111|[0x80004380]<br>0x0000000018eda9dc|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 2 #nosat<br>                                   |[0x80002228]:sm4ks<br> [0x8000222c]:sd<br> |
| 112|[0x80004388]<br>0x00000000cb494ea8|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 1 #nosat<br>                                   |[0x80002270]:sm4ks<br> [0x80002274]:sd<br> |
| 113|[0x80004390]<br>0x00000000abc26a0f|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 0 #nosat<br>                                   |[0x800022b8]:sm4ks<br> [0x800022bc]:sd<br> |
| 114|[0x80004398]<br>0x000000005a62c24c|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 3 #nosat<br>                                   |[0x80002300]:sm4ks<br> [0x80002304]:sd<br> |
| 115|[0x800043a0]<br>0x000000005d7ec147|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 2 #nosat<br>                                   |[0x80002348]:sm4ks<br> [0x8000234c]:sd<br> |
| 116|[0x800043a8]<br>0x00000000c86e1860|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 1 #nosat<br>                                   |[0x80002390]:sm4ks<br> [0x80002394]:sd<br> |
| 117|[0x800043b0]<br>0x0000000023d200c3|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 0 #nosat<br>                                   |[0x800023d8]:sm4ks<br> [0x800023dc]:sd<br> |
| 118|[0x800043b8]<br>0x00000000921aac6c|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 3 #nosat<br>                                   |[0x80002420]:sm4ks<br> [0x80002424]:sd<br> |
| 119|[0x800043c0]<br>0x000000003526b93b|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 2 #nosat<br>                                   |[0x80002468]:sm4ks<br> [0x8000246c]:sd<br> |
| 120|[0x800043c8]<br>0x00000000ad638a58|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 1 #nosat<br>                                   |[0x800024b0]:sm4ks<br> [0x800024b4]:sd<br> |
| 121|[0x800043d0]<br>0x00000000bb264bdc|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 0 #nosat<br>                                   |[0x800024f8]:sm4ks<br> [0x800024fc]:sd<br> |
| 122|[0x800043d8]<br>0x00000000c9722e4d|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 3 #nosat<br>                                   |[0x80002540]:sm4ks<br> [0x80002544]:sd<br> |
| 123|[0x800043e0]<br>0x0000000079a6b122|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 2 #nosat<br>                                   |[0x80002588]:sm4ks<br> [0x8000258c]:sd<br> |
| 124|[0x800043e8]<br>0x00000000a85deed0|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 1 #nosat<br>                                   |[0x800025d0]:sm4ks<br> [0x800025d4]:sd<br> |
| 125|[0x800043f0]<br>0x00000000332271b0|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 0 #nosat<br>                                   |[0x80002618]:sm4ks<br> [0x8000261c]:sd<br> |
| 126|[0x800043f8]<br>0x00000000dfaa3752|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 3 #nosat<br>                                   |[0x80002660]:sm4ks<br> [0x80002664]:sd<br> |
| 127|[0x80004400]<br>0x00000000037a2922|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 2 #nosat<br>                                   |[0x800026a8]:sm4ks<br> [0x800026ac]:sd<br> |
| 128|[0x80004408]<br>0x00000000230b6b68|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 1 #nosat<br>                                   |[0x800026f0]:sm4ks<br> [0x800026f4]:sd<br> |
| 129|[0x80004410]<br>0x00000000ab3967b4|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 0 #nosat<br>                                   |[0x80002738]:sm4ks<br> [0x8000273c]:sd<br> |
| 130|[0x80004418]<br>0x000000006042a901|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 3 #nosat<br>                                   |[0x80002780]:sm4ks<br> [0x80002784]:sd<br> |
| 131|[0x80004420]<br>0x00000000262941a1|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 2 #nosat<br>                                   |[0x800027c8]:sm4ks<br> [0x800027cc]:sd<br> |
| 132|[0x80004428]<br>0x00000000290875a0|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 1 #nosat<br>                                   |[0x80002810]:sm4ks<br> [0x80002814]:sd<br> |
| 133|[0x80004430]<br>0x0000000043a43813|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 0 #nosat<br>                                   |[0x80002858]:sm4ks<br> [0x8000285c]:sd<br> |
| 134|[0x80004438]<br>0x000000006dda1723|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 3 #nosat<br>                                   |[0x800028a0]:sm4ks<br> [0x800028a4]:sd<br> |
| 135|[0x80004440]<br>0x000000005680590b|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 2 #nosat<br>                                   |[0x800028e8]:sm4ks<br> [0x800028ec]:sd<br> |
| 136|[0x80004448]<br>0x0000000097297ef8|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 1 #nosat<br>                                   |[0x80002930]:sm4ks<br> [0x80002934]:sd<br> |
| 137|[0x80004450]<br>0x000000007b9f0c33|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 0 #nosat<br>                                   |[0x80002978]:sm4ks<br> [0x8000297c]:sd<br> |
| 138|[0x80004458]<br>0x0000000035d21503|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 3 #nosat<br>                                   |[0x800029c0]:sm4ks<br> [0x800029c4]:sd<br> |
| 139|[0x80004460]<br>0x000000001a017192|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 2 #nosat<br>                                   |[0x80002a08]:sm4ks<br> [0x80002a0c]:sd<br> |
| 140|[0x80004468]<br>0x000000001b305590|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 1 #nosat<br>                                   |[0x80002a50]:sm4ks<br> [0x80002a54]:sd<br> |
| 141|[0x80004470]<br>0x00000000530744ba|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 0 #nosat<br>                                   |[0x80002a98]:sm4ks<br> [0x80002a9c]:sd<br> |
| 142|[0x80004478]<br>0x00000000f5ca1677|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 3 #nosat<br>                                   |[0x80002ad8]:sm4ks<br> [0x80002adc]:sd<br> |
| 143|[0x80004480]<br>0x000000007fe32995|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 2 #nosat<br>                                   |[0x80002b18]:sm4ks<br> [0x80002b1c]:sd<br> |
| 144|[0x80004488]<br>0x0000000019429908|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 1 #nosat<br>                                   |[0x80002b58]:sm4ks<br> [0x80002b5c]:sd<br> |
| 145|[0x80004490]<br>0x00000000cb1062de|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 0 #nosat<br>                                   |[0x80002b98]:sm4ks<br> [0x80002b9c]:sd<br> |
| 146|[0x80004498]<br>0x00000000c1421961|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 3 #nosat<br>                                   |[0x80002bd8]:sm4ks<br> [0x80002bdc]:sd<br> |
| 147|[0x800044a0]<br>0x0000000009168102|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 2 #nosat<br>                                   |[0x80002c18]:sm4ks<br> [0x80002c1c]:sd<br> |
| 148|[0x800044a8]<br>0x000000001559b7c0|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 1 #nosat<br>                                   |[0x80002c58]:sm4ks<br> [0x80002c5c]:sd<br> |
| 149|[0x800044b0]<br>0x00000000c3000a16|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 0 #nosat<br>                                   |[0x80002c98]:sm4ks<br> [0x80002c9c]:sd<br> |
| 150|[0x800044b8]<br>0x00000000f6b00dd0|- rs1_val == 0xbc36b151aeb006fc and rs2_val == 0x2cab43d86576923c and imm_val == 0x3 #nosat<br>                                 |[0x80002cd8]:sm4ks<br> [0x80002cdc]:sd<br> |
| 151|[0x800044c0]<br>0x00000000b9f4f3d0|- rs1_val == 0x156fe482f9fcd292 and rs2_val == 0x24c6435c8dca0621 and imm_val == 0x0 #nosat<br>                                 |[0x80002d18]:sm4ks<br> [0x80002d1c]:sd<br> |
