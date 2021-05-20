
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
| COV_LABELS                | sm4ed      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ed-01.S/ref.S    |
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

|s.no|            signature             |                                                                  coverpoints                                                                   |                   code                    |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
|   1|[0x80004010]<br>0x000000005859d48e|- opcode : sm4ed<br> - rs1 : x23<br> - rs2 : x23<br> - rs1 == rs2<br>                                                                           |[0x800003c8]:sm4ed<br> [0x800003cc]:sd<br> |
|   2|[0x80004018]<br>0x0000000096d167a5|- rs1 : x4<br> - rs2 : x20<br> - rs1 != rs2<br> - rs1_val == 0xbc36b151aeb006fc and rs2_val == 0x2cab43d86576923c and imm_val == 0x3 #nosat<br> |[0x80000408]:sm4ed<br> [0x8000040c]:sd<br> |
|   3|[0x80004020]<br>0x00000000f0f591d8|- rs1 : x6<br> - rs2 : x16<br> - rs1_val == 0x156fe482f9fcd292 and rs2_val == 0x24c6435c8dca0621 and imm_val == 0x0 #nosat<br>                  |[0x80000448]:sm4ed<br> [0x8000044c]:sd<br> |
|   4|[0x80004028]<br>0x0000000074d5849e|- rs1 : x15<br> - rs2 : x30<br> - rs1_val == 0xa757e91e027e5943 and rs2_val == 0xda73ec2605e6750f and imm_val == 0x2 #nosat<br>                 |[0x80000490]:sm4ed<br> [0x80000494]:sd<br> |
|   5|[0x80004030]<br>0x0000000022aec608|- rs1 : x1<br> - rs2 : x10<br> - rs1_val == 0xf452cbd863fa921d and rs2_val == 0x4b6587d88ef464d1 and imm_val == 0x3 #nosat<br>                  |[0x800004d8]:sm4ed<br> [0x800004dc]:sd<br> |
|   6|[0x80004038]<br>0x00000000e6bfeae8|- rs1 : x5<br> - rs2 : x26<br> - rs1_val == 0xd40f46a4356c1dcc and rs2_val == 0x30c33d97184e0f23 and imm_val == 0x0 #nosat<br>                  |[0x80000520]:sm4ed<br> [0x80000524]:sd<br> |
|   7|[0x80004040]<br>0x000000003232f32b|- rs1 : x27<br> - rs2 : x9<br> - rs1_val == 0x6d23c0488a6019c1 and rs2_val == 0x860bdaad7447a088 and imm_val == 0x2 #nosat<br>                  |[0x80000568]:sm4ed<br> [0x8000056c]:sd<br> |
|   8|[0x80004048]<br>0x0000000004953bf1|- rs1 : x25<br> - rs2 : x8<br> - rs1_val == 0x17168ab3a4351379 and rs2_val == 0xbbb4f560f222070c and imm_val == 0x0 #nosat<br>                  |[0x800005a8]:sm4ed<br> [0x800005ac]:sd<br> |
|   9|[0x80004050]<br>0x00000000ecde94d8|- rs1 : x19<br> - rs2 : x5<br> - rs1_val == 0x3fb0fe60ef1d54db and rs2_val == 0x09ff42451826a804 and imm_val == 0x1 #nosat<br>                  |[0x800005f0]:sm4ed<br> [0x800005f4]:sd<br> |
|  10|[0x80004058]<br>0x0000000024a9cd7a|- rs1 : x26<br> - rs2 : x4<br> - rs1_val == 0xcc7b22010ca3ef52 and rs2_val == 0xc150f4d3df74d068 and imm_val == 0x1 #nosat<br>                  |[0x80000638]:sm4ed<br> [0x8000063c]:sd<br> |
|  11|[0x80004060]<br>0x000000000adb9eb2|- rs1 : x17<br> - rs2 : x12<br> - rs1_val == 0x358a9235987daa20 and rs2_val == 0xb369e10209f393d7 and imm_val == 0x1 #nosat<br>                 |[0x80000680]:sm4ed<br> [0x80000684]:sd<br> |
|  12|[0x80004068]<br>0x00000000de4ffdae|- rs1 : x18<br> - rs2 : x3<br> - rs1_val == 0x91766f62ba2be4d3 and rs2_val == 0x74a813d25570084b and imm_val == 0x0 #nosat<br>                  |[0x800006c8]:sm4ed<br> [0x800006cc]:sd<br> |
|  13|[0x80004070]<br>0x00000000fac3cd71|- rs1 : x31<br> - rs2 : x2<br> - rs1_val == 0xb7c1fc5f1efa1095 and rs2_val == 0xe2cbb9ab3819fe4d and imm_val == 0x1 #nosat<br>                  |[0x80000708]:sm4ed<br> [0x8000070c]:sd<br> |
|  14|[0x80004078]<br>0x000000003b68e1f7|- rs1 : x16<br> - rs2 : x7<br> - rs1_val == 0xa6c9253a4cc6382e and rs2_val == 0x25ae27ee4113ee60 and imm_val == 0x2 #nosat<br>                  |[0x80000750]:sm4ed<br> [0x80000754]:sd<br> |
|  15|[0x80004080]<br>0x0000000081f12bd2|- rs1 : x12<br> - rs2 : x0<br>                                                                                                                  |[0x80000774]:sm4ed<br> [0x80000778]:sd<br> |
|  16|[0x80004088]<br>0x00000000cf276629|- rs1 : x9<br> - rs2 : x14<br> - rs1_val == 0x3150e5fa299c3bcf and rs2_val == 0xe6fff3d9ec1ce9d2 and imm_val == 0x1 #nosat<br>                  |[0x800007bc]:sm4ed<br> [0x800007c0]:sd<br> |
|  17|[0x80004090]<br>0x000000004b4b09aa|- rs1 : x24<br> - rs2 : x18<br> - rs1_val == 0x1fc493caa371db42 and rs2_val == 0x9a4e9ef10171f4df and imm_val == 0x1 #nosat<br>                 |[0x80000804]:sm4ed<br> [0x80000808]:sd<br> |
|  18|[0x80004098]<br>0x000000008fac5730|- rs1 : x20<br> - rs2 : x11<br> - rs1_val == 0xf5faf2073430cb17 and rs2_val == 0x8e2eac2a760b3c5e and imm_val == 0x3 #nosat<br>                 |[0x8000084c]:sm4ed<br> [0x80000850]:sd<br> |
|  19|[0x800040a0]<br>0x00000000fcc35ba8|- rs1 : x2<br> - rs2 : x22<br> - rs1_val == 0xbc991c531484f407 and rs2_val == 0x55d98c6e3459294e and imm_val == 0x2 #nosat<br>                  |[0x80000894]:sm4ed<br> [0x80000898]:sd<br> |
|  20|[0x800040a8]<br>0x000000009a40e0a5|- rs1 : x29<br> - rs2 : x6<br> - rs1_val == 0x59885afcbb61a9cd and rs2_val == 0xccce240c81c1e7ff and imm_val == 0x0 #nosat<br>                  |[0x800008dc]:sm4ed<br> [0x800008e0]:sd<br> |
|  21|[0x800040b0]<br>0x0000000079f9277c|- rs1 : x7<br> - rs2 : x31<br> - rs1_val == 0x75a3adb3254a9493 and rs2_val == 0xc5521660f3a3c571 and imm_val == 0x3 #nosat<br>                  |[0x8000092c]:sm4ed<br> [0x80000930]:sd<br> |
|  22|[0x800040b8]<br>0x00000000a7494a17|- rs1 : x3<br> - rs2 : x25<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 3 #nosat<br>                    |[0x8000096c]:sm4ed<br> [0x80000970]:sd<br> |
|  23|[0x800040c0]<br>0x0000000087730c0d|- rs1 : x10<br> - rs2 : x29<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 2 #nosat<br>                   |[0x800009ac]:sm4ed<br> [0x800009b0]:sd<br> |
|  24|[0x800040c8]<br>0x000000003809c93b|- rs1 : x22<br> - rs2 : x13<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 1 #nosat<br>                   |[0x800009ec]:sm4ed<br> [0x800009f0]:sd<br> |
|  25|[0x800040d0]<br>0x000000009b9ae180|- rs1 : x28<br> - rs2 : x24<br> - rs1_val == 0xfffefdfcfbfaf9f8 and rs2_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 0 #nosat<br>                   |[0x80000a2c]:sm4ed<br> [0x80000a30]:sd<br> |
|  26|[0x800040d8]<br>0x00000000350a09ce|- rs1 : x8<br> - rs2 : x15<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 3 #nosat<br>                    |[0x80000a6c]:sm4ed<br> [0x80000a70]:sd<br> |
|  27|[0x800040e0]<br>0x00000000add18c8d|- rs1 : x30<br> - rs2 : x1<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 2 #nosat<br>                    |[0x80000aac]:sm4ed<br> [0x80000ab0]:sd<br> |
|  28|[0x800040e8]<br>0x00000000481fa74b|- rs1 : x21<br> - rs2 : x27<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 1 #nosat<br>                   |[0x80000aec]:sm4ed<br> [0x80000af0]:sd<br> |
|  29|[0x800040f0]<br>0x000000001617896d|- rs1 : x13<br> - rs2 : x28<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and rs2_val == 0xfffefdfcfbfaf9f8 and imm_val == 0 #nosat<br>                   |[0x80000b2c]:sm4ed<br> [0x80000b30]:sd<br> |
|  30|[0x800040f8]<br>0x0000000089c3c0a3|- rs1 : x14<br> - rs2 : x17<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 3 #nosat<br>                   |[0x80000b74]:sm4ed<br> [0x80000b78]:sd<br> |
|  31|[0x80004100]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x21<br>                                                                                                                  |[0x80000ba0]:sm4ed<br> [0x80000ba4]:sd<br> |
|  32|[0x80004108]<br>0x000000004e82244d|- rs1 : x11<br> - rs2 : x19<br> - rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 1 #nosat<br>                   |[0x80000be8]:sm4ed<br> [0x80000bec]:sd<br> |
|  33|[0x80004110]<br>0x00000000cdcc6245|- rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 0 #nosat<br>                                                   |[0x80000c30]:sm4ed<br> [0x80000c34]:sd<br> |
|  34|[0x80004118]<br>0x00000000cec6c5e9|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 3 #nosat<br>                                                   |[0x80000c78]:sm4ed<br> [0x80000c7c]:sd<br> |
|  35|[0x80004120]<br>0x0000000011d72627|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 2 #nosat<br>                                                   |[0x80000cc0]:sm4ed<br> [0x80000cc4]:sd<br> |
|  36|[0x80004128]<br>0x000000000559bc06|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 1 #nosat<br>                                                   |[0x80000d08]:sm4ed<br> [0x80000d0c]:sd<br> |
|  37|[0x80004130]<br>0x0000000076778511|- rs1_val == 0xe7e6e5e4e3e2e1e0 and rs2_val == 0xefeeedecebeae9e8 and imm_val == 0 #nosat<br>                                                   |[0x80000d50]:sm4ed<br> [0x80000d54]:sd<br> |
|  38|[0x80004138]<br>0x0000000073f8fb52|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 3 #nosat<br>                                                   |[0x80000d98]:sm4ed<br> [0x80000d9c]:sd<br> |
|  39|[0x80004140]<br>0x00000000ea2f1d1c|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 2 #nosat<br>                                                   |[0x80000de0]:sm4ed<br> [0x80000de4]:sd<br> |
|  40|[0x80004148]<br>0x00000000dc181cdf|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 1 #nosat<br>                                                   |[0x80000e28]:sm4ed<br> [0x80000e2c]:sd<br> |
|  41|[0x80004150]<br>0x00000000f3f2d3fa|- rs1_val == 0xdfdedddcdbdad9d8 and rs2_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 0 #nosat<br>                                                   |[0x80000e70]:sm4ed<br> [0x80000e74]:sd<br> |
|  42|[0x80004158]<br>0x00000000899a99c2|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 3 #nosat<br>                                                   |[0x80000eb8]:sm4ed<br> [0x80000ebc]:sd<br> |
|  43|[0x80004160]<br>0x0000000000429293|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 2 #nosat<br>                                                   |[0x80000f00]:sm4ed<br> [0x80000f04]:sd<br> |
|  44|[0x80004168]<br>0x0000000002a77501|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 1 #nosat<br>                                                   |[0x80000f48]:sm4ed<br> [0x80000f4c]:sd<br> |
|  45|[0x80004170]<br>0x000000006766fc49|- rs1_val == 0xd7d6d5d4d3d2d1d0 and rs2_val == 0xdfdedddcdbdad9d8 and imm_val == 0 #nosat<br>                                                   |[0x80000f90]:sm4ed<br> [0x80000f94]:sd<br> |
|  46|[0x80004178]<br>0x0000000011808358|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 3 #nosat<br>                                                   |[0x80000fd8]:sm4ed<br> [0x80000fdc]:sd<br> |
|  47|[0x80004180]<br>0x0000000066d97776|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 2 #nosat<br>                                                   |[0x80001020]:sm4ed<br> [0x80001024]:sd<br> |
|  48|[0x80004188]<br>0x00000000a7d1bea4|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 1 #nosat<br>                                                   |[0x80001068]:sm4ed<br> [0x8000106c]:sd<br> |
|  49|[0x80004190]<br>0x00000000fdfc4671|- rs1_val == 0xcfcecdcccbcac9c8 and rs2_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 0 #nosat<br>                                                   |[0x800010b0]:sm4ed<br> [0x800010b4]:sd<br> |
|  50|[0x80004198]<br>0x0000000086c7c480|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 3 #nosat<br>                                                   |[0x800010f8]:sm4ed<br> [0x800010fc]:sd<br> |
|  51|[0x800041a0]<br>0x000000009eeeb0b1|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 2 #nosat<br>                                                   |[0x80001140]:sm4ed<br> [0x80001144]:sd<br> |
|  52|[0x800041a8]<br>0x00000000a4187ca7|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 1 #nosat<br>                                                   |[0x80001188]:sm4ed<br> [0x8000118c]:sd<br> |
|  53|[0x800041b0]<br>0x000000008786d095|- rs1_val == 0xc7c6c5c4c3c2c1c0 and rs2_val == 0xcfcecdcccbcac9c8 and imm_val == 0 #nosat<br>                                                   |[0x800011d0]:sm4ed<br> [0x800011d4]:sd<br> |
|  54|[0x800041b8]<br>0x00000000eaafacfc|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 3 #nosat<br>                                                   |[0x80001218]:sm4ed<br> [0x8000121c]:sd<br> |
|  55|[0x800041c0]<br>0x000000008c516564|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 2 #nosat<br>                                                   |[0x80001260]:sm4ed<br> [0x80001264]:sd<br> |
|  56|[0x800041c8]<br>0x00000000d4620ed7|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 1 #nosat<br>                                                   |[0x800012a8]:sm4ed<br> [0x800012ac]:sd<br> |
|  57|[0x800041d0]<br>0x00000000eced6f39|- rs1_val == 0xbfbebdbcbbbab9b8 and rs2_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 0 #nosat<br>                                                   |[0x800012f0]:sm4ed<br> [0x800012f4]:sd<br> |
|  58|[0x800041d8]<br>0x00000000097b78c3|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 3 #nosat<br>                                                   |[0x80001338]:sm4ed<br> [0x8000133c]:sd<br> |
|  59|[0x800041e0]<br>0x00000000d8701819|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 2 #nosat<br>                                                   |[0x80001380]:sm4ed<br> [0x80001384]:sd<br> |
|  60|[0x800041e8]<br>0x000000004c4eb24f|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 1 #nosat<br>                                                   |[0x800013c8]:sm4ed<br> [0x800013cc]:sd<br> |
|  61|[0x800041f0]<br>0x00000000bfbeb2bf|- rs1_val == 0xb7b6b5b4b3b2b1b0 and rs2_val == 0xbfbebdbcbbbab9b8 and imm_val == 0 #nosat<br>                                                   |[0x80001410]:sm4ed<br> [0x80001414]:sd<br> |
|  62|[0x800041f8]<br>0x000000003d121186|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 3 #nosat<br>                                                   |[0x80001458]:sm4ed<br> [0x8000145c]:sd<br> |
|  63|[0x80004200]<br>0x000000004ac02223|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 2 #nosat<br>                                                   |[0x800014a0]:sm4ed<br> [0x800014a4]:sd<br> |
|  64|[0x80004208]<br>0x00000000705f8773|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 1 #nosat<br>                                                   |[0x800014e8]:sm4ed<br> [0x800014ec]:sd<br> |
|  65|[0x80004210]<br>0x00000000dfdeb4c1|- rs1_val == 0xafaeadacabaaa9a8 and rs2_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 0 #nosat<br>                                                   |[0x80001530]:sm4ed<br> [0x80001534]:sd<br> |
|  66|[0x80004218]<br>0x00000000a40c0f09|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 3 #nosat<br>                                                   |[0x80001578]:sm4ed<br> [0x8000157c]:sd<br> |
|  67|[0x80004220]<br>0x00000000800d2d2c|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 2 #nosat<br>                                                   |[0x800015c0]:sm4ed<br> [0x800015c4]:sd<br> |
|  68|[0x80004228]<br>0x00000000078b2c04|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 1 #nosat<br>                                                   |[0x80001608]:sm4ed<br> [0x8000160c]:sd<br> |
|  69|[0x80004230]<br>0x00000000a0a16260|- rs1_val == 0xa7a6a5a4a3a2a1a0 and rs2_val == 0xafaeadacabaaa9a8 and imm_val == 0 #nosat<br>                                                   |[0x80001650]:sm4ed<br> [0x80001654]:sd<br> |
|  70|[0x80004238]<br>0x00000000af080b3e|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 3 #nosat<br>                                                   |[0x80001698]:sm4ed<br> [0x8000169c]:sd<br> |
|  71|[0x80004240]<br>0x00000000c7b3eced|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 2 #nosat<br>                                                   |[0x800016e0]:sm4ed<br> [0x800016e4]:sd<br> |
|  72|[0x80004248]<br>0x0000000021368f22|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 1 #nosat<br>                                                   |[0x80001728]:sm4ed<br> [0x8000172c]:sd<br> |
|  73|[0x80004250]<br>0x0000000018197af8|- rs1_val == 0x9f9e9d9c9b9a9998 and rs2_val == 0x9796959493929190 and imm_val == 0 #nosat<br>                                                   |[0x80001770]:sm4ed<br> [0x80001774]:sd<br> |
|  74|[0x80004258]<br>0x00000000635251a0|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 3 #nosat<br>                                                   |[0x800017b8]:sm4ed<br> [0x800017bc]:sd<br> |
|  75|[0x80004260]<br>0x00000000a1685958|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 2 #nosat<br>                                                   |[0x80001800]:sm4ed<br> [0x80001804]:sd<br> |
|  76|[0x80004268]<br>0x00000000dd034ede|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 1 #nosat<br>                                                   |[0x80001848]:sm4ed<br> [0x8000184c]:sd<br> |
|  77|[0x80004270]<br>0x0000000025243e89|- rs1_val == 0x9796959493929190 and rs2_val == 0x9f9e9d9c9b9a9998 and imm_val == 0 #nosat<br>                                                   |[0x80001890]:sm4ed<br> [0x80001894]:sd<br> |
|  78|[0x80004278]<br>0x0000000011c1c259|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 3 #nosat<br>                                                   |[0x800018d8]:sm4ed<br> [0x800018dc]:sd<br> |
|  79|[0x80004280]<br>0x000000000328a3a2|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 2 #nosat<br>                                                   |[0x80001920]:sm4ed<br> [0x80001924]:sd<br> |
|  80|[0x80004288]<br>0x000000007537ca76|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 1 #nosat<br>                                                   |[0x80001968]:sm4ed<br> [0x8000196c]:sd<br> |
|  81|[0x80004290]<br>0x00000000202160ca|- rs1_val == 0x8f8e8d8c8b8a8988 and rs2_val == 0x8786858483828180 and imm_val == 0 #nosat<br>                                                   |[0x800019b0]:sm4ed<br> [0x800019b4]:sd<br> |
|  82|[0x80004298]<br>0x0000000075b9ba4d|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 3 #nosat<br>                                                   |[0x800019f8]:sm4ed<br> [0x800019fc]:sd<br> |
|  83|[0x800042a0]<br>0x0000000072b84a4b|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 2 #nosat<br>                                                   |[0x80001a40]:sm4ed<br> [0x80001a44]:sd<br> |
|  84|[0x800042a8]<br>0x000000005c76aa5f|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 1 #nosat<br>                                                   |[0x80001a88]:sm4ed<br> [0x80001a8c]:sd<br> |
|  85|[0x800042b0]<br>0x000000000d0c20af|- rs1_val == 0x8786858483828180 and rs2_val == 0x8f8e8d8c8b8a8988 and imm_val == 0 #nosat<br>                                                   |[0x80001ad0]:sm4ed<br> [0x80001ad4]:sd<br> |
|  86|[0x800042b8]<br>0x000000007027242e|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 3 #nosat<br>                                                   |[0x80001b18]:sm4ed<br> [0x80001b1c]:sd<br> |
|  87|[0x800042c0]<br>0x000000003c246061|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 2 #nosat<br>                                                   |[0x80001b60]:sm4ed<br> [0x80001b64]:sd<br> |
|  88|[0x800042c8]<br>0x000000007b7a7978|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 1 #nosat<br>                                                   |[0x80001ba8]:sm4ed<br> [0x80001bac]:sd<br> |
|  89|[0x800042d0]<br>0x000000002829aefc|- rs1_val == 0x7f7e7d7c7b7a7978 and rs2_val == 0x7776757473727170 and imm_val == 0 #nosat<br>                                                   |[0x80001bf0]:sm4ed<br> [0x80001bf4]:sd<br> |
|  90|[0x800042d8]<br>0x0000000008edee94|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 3 #nosat<br>                                                   |[0x80001c38]:sm4ed<br> [0x80001c3c]:sd<br> |
|  91|[0x800042e0]<br>0x0000000071787978|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 2 #nosat<br>                                                   |[0x80001c80]:sm4ed<br> [0x80001c84]:sd<br> |
|  92|[0x800042e8]<br>0x00000000ab449fa8|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 1 #nosat<br>                                                   |[0x80001cc8]:sm4ed<br> [0x80001ccc]:sd<br> |
|  93|[0x800042f0]<br>0x0000000042433c0c|- rs1_val == 0x7776757473727170 and rs2_val == 0x7f7e7d7c7b7a7978 and imm_val == 0 #nosat<br>                                                   |[0x80001d10]:sm4ed<br> [0x80001d14]:sd<br> |
|  94|[0x800042f8]<br>0x000000004d131037|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 3 #nosat<br>                                                   |[0x80001d58]:sm4ed<br> [0x80001d5c]:sd<br> |
|  95|[0x80004300]<br>0x00000000655c5150|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 2 #nosat<br>                                                   |[0x80001da0]:sm4ed<br> [0x80001da4]:sd<br> |
|  96|[0x80004308]<br>0x00000000fb4eddf8|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 1 #nosat<br>                                                   |[0x80001de8]:sm4ed<br> [0x80001dec]:sd<br> |
|  97|[0x80004310]<br>0x000000001312770e|- rs1_val == 0x6f6e6d6c6b6a6968 and rs2_val == 0x6766656463626160 and imm_val == 0 #nosat<br>                                                   |[0x80001e30]:sm4ed<br> [0x80001e34]:sd<br> |
|  98|[0x80004318]<br>0x00000000b48e8d5b|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 3 #nosat<br>                                                   |[0x80001e78]:sm4ed<br> [0x80001e7c]:sd<br> |
|  99|[0x80004320]<br>0x000000001eee9091|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 2 #nosat<br>                                                   |[0x80001ec0]:sm4ed<br> [0x80001ec4]:sd<br> |
| 100|[0x80004328]<br>0x00000000eb40cbe8|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 1 #nosat<br>                                                   |[0x80001f08]:sm4ed<br> [0x80001f0c]:sd<br> |
| 101|[0x80004330]<br>0x00000000f7f644d1|- rs1_val == 0x6766656463626160 and rs2_val == 0x6f6e6d6c6b6a6968 and imm_val == 0 #nosat<br>                                                   |[0x80001f50]:sm4ed<br> [0x80001f54]:sd<br> |
| 102|[0x80004338]<br>0x00000000219093e8|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 3 #nosat<br>                                                   |[0x80001f98]:sm4ed<br> [0x80001f9c]:sd<br> |
| 103|[0x80004340]<br>0x00000000d8df5f5e|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 2 #nosat<br>                                                   |[0x80001fe0]:sm4ed<br> [0x80001fe4]:sd<br> |
| 104|[0x80004348]<br>0x00000000f6309ef5|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 1 #nosat<br>                                                   |[0x80002028]:sm4ed<br> [0x8000202c]:sd<br> |
| 105|[0x80004350]<br>0x00000000fafb3090|- rs1_val == 0x5f5e5d5c5b5a5958 and rs2_val == 0x5756555453525150 and imm_val == 0 #nosat<br>                                                   |[0x80002070]:sm4ed<br> [0x80002074]:sd<br> |
| 106|[0x80004358]<br>0x00000000347f7c1a|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 3 #nosat<br>                                                   |[0x800020b8]:sm4ed<br> [0x800020bc]:sd<br> |
| 107|[0x80004360]<br>0x000000005c616d6c|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 2 #nosat<br>                                                   |[0x80002100]:sm4ed<br> [0x80002104]:sd<br> |
| 108|[0x80004368]<br>0x00000000fcba16ff|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 1 #nosat<br>                                                   |[0x80002148]:sm4ed<br> [0x8000214c]:sd<br> |
| 109|[0x80004370]<br>0x00000000b0b1aa48|- rs1_val == 0x5756555453525150 and rs2_val == 0x5f5e5d5c5b5a5958 and imm_val == 0 #nosat<br>                                                   |[0x80002190]:sm4ed<br> [0x80002194]:sd<br> |
| 110|[0x80004378]<br>0x0000000047b9bab7|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 3 #nosat<br>                                                   |[0x800021d8]:sm4ed<br> [0x800021dc]:sd<br> |
| 111|[0x80004380]<br>0x00000000ee71d7d6|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 2 #nosat<br>                                                   |[0x80002220]:sm4ed<br> [0x80002224]:sd<br> |
| 112|[0x80004388]<br>0x00000000574d5254|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 1 #nosat<br>                                                   |[0x80002268]:sm4ed<br> [0x8000226c]:sd<br> |
| 113|[0x80004390]<br>0x0000000056570f13|- rs1_val == 0x4f4e4d4c4b4a4948 and rs2_val == 0x4746454443424140 and imm_val == 0 #nosat<br>                                                   |[0x800022b0]:sm4ed<br> [0x800022b4]:sd<br> |
| 114|[0x80004398]<br>0x000000003e262559|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 3 #nosat<br>                                                   |[0x800022f8]:sm4ed<br> [0x800022fc]:sd<br> |
| 115|[0x800043a0]<br>0x000000007f8eb1b0|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 2 #nosat<br>                                                   |[0x80002340]:sm4ed<br> [0x80002344]:sd<br> |
| 116|[0x800043a8]<br>0x00000000261a7c25|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 1 #nosat<br>                                                   |[0x80002388]:sm4ed<br> [0x8000238c]:sd<br> |
| 117|[0x800043b0]<br>0x000000004d4cc0cf|- rs1_val == 0x4746454443424140 and rs2_val == 0x4f4e4d4c4b4a4948 and imm_val == 0 #nosat<br>                                                   |[0x800023d0]:sm4ed<br> [0x800023d4]:sd<br> |
| 118|[0x800043b8]<br>0x00000000369c9f93|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 3 #nosat<br>                                                   |[0x80002418]:sm4ed<br> [0x8000241c]:sd<br> |
| 119|[0x800043c0]<br>0x0000000027564948|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 2 #nosat<br>                                                   |[0x80002460]:sm4ed<br> [0x80002464]:sd<br> |
| 120|[0x800043c8]<br>0x00000000f58b46f6|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 1 #nosat<br>                                                   |[0x800024a8]:sm4ed<br> [0x800024ac]:sd<br> |
| 121|[0x800043d0]<br>0x00000000a8a9de4c|- rs1_val == 0x3f3e3d3c3b3a3938 and rs2_val == 0x3736353433323130 and imm_val == 0 #nosat<br>                                                   |[0x800024f0]:sm4ed<br> [0x800024f4]:sd<br> |
| 122|[0x800043d8]<br>0x0000000021d9dac9|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 3 #nosat<br>                                                   |[0x80002538]:sm4ed<br> [0x8000253c]:sd<br> |
| 123|[0x800043e0]<br>0x00000000a5f66362|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 2 #nosat<br>                                                   |[0x80002580]:sm4ed<br> [0x80002584]:sd<br> |
| 124|[0x800043e8]<br>0x000000004cee924f|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 1 #nosat<br>                                                   |[0x800025c8]:sm4ed<br> [0x800025cc]:sd<br> |
| 125|[0x800043f0]<br>0x000000003130b3b0|- rs1_val == 0x3736353433323130 and rs2_val == 0x3f3e3d3c3b3a3938 and imm_val == 0 #nosat<br>                                                   |[0x80002610]:sm4ed<br> [0x80002614]:sd<br> |
| 126|[0x800043f8]<br>0x000000000ff9fadf|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 3 #nosat<br>                                                   |[0x80002658]:sm4ed<br> [0x8000265c]:sd<br> |
| 127|[0x80004400]<br>0x000000007a3a6869|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 2 #nosat<br>                                                   |[0x800026a0]:sm4ed<br> [0x800026a4]:sd<br> |
| 128|[0x80004408]<br>0x0000000022696321|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 1 #nosat<br>                                                   |[0x800026e8]:sm4ed<br> [0x800026ec]:sd<br> |
| 129|[0x80004410]<br>0x000000005958b7c4|- rs1_val == 0x2f2e2d2c2b2a2928 and rs2_val == 0x2726252423222120 and imm_val == 0 #nosat<br>                                                   |[0x80002730]:sm4ed<br> [0x80002734]:sd<br> |
| 130|[0x80004418]<br>0x000000006c2f2c62|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 3 #nosat<br>                                                   |[0x80002778]:sm4ed<br> [0x8000277c]:sd<br> |
| 131|[0x80004420]<br>0x0000000028050d0c|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 2 #nosat<br>                                                   |[0x800027c0]:sm4ed<br> [0x800027c4]:sd<br> |
| 132|[0x80004428]<br>0x0000000072772571|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 1 #nosat<br>                                                   |[0x80002808]:sm4ed<br> [0x8000280c]:sd<br> |
| 133|[0x80004430]<br>0x00000000efee12df|- rs1_val == 0x2726252423222120 and rs2_val == 0x2f2e2d2c2b2a2928 and imm_val == 0 #nosat<br>                                                   |[0x80002850]:sm4ed<br> [0x80002854]:sd<br> |
| 134|[0x80004438]<br>0x00000000b5c3c06f|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 3 #nosat<br>                                                   |[0x80002898]:sm4ed<br> [0x8000289c]:sd<br> |
| 135|[0x80004440]<br>0x0000000083e87372|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 2 #nosat<br>                                                   |[0x800028e0]:sm4ed<br> [0x800028e4]:sd<br> |
| 136|[0x80004448]<br>0x00000000867ce285|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 1 #nosat<br>                                                   |[0x80002928]:sm4ed<br> [0x8000292c]:sd<br> |
| 137|[0x80004450]<br>0x00000000b7b6329f|- rs1_val == 0x1f1e1d1c1b1a1918 and rs2_val == 0x1716151413121110 and imm_val == 0 #nosat<br>                                                   |[0x80002970]:sm4ed<br> [0x80002974]:sd<br> |
| 138|[0x80004458]<br>0x00000000ad8a8936|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 3 #nosat<br>                                                   |[0x800029b8]:sm4ed<br> [0x800029bc]:sd<br> |
| 139|[0x80004460]<br>0x00000000004d5d5c|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 2 #nosat<br>                                                   |[0x80002a00]:sm4ed<br> [0x80002a04]:sd<br> |
| 140|[0x80004468]<br>0x0000000002574501|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 1 #nosat<br>                                                   |[0x80002a48]:sm4ed<br> [0x80002a4c]:sd<br> |
| 141|[0x80004470]<br>0x00000000b9b8b912|- rs1_val == 0x1716151413121110 and rs2_val == 0x1f1e1d1c1b1a1918 and imm_val == 0 #nosat<br>                                                   |[0x80002a90]:sm4ed<br> [0x80002a94]:sd<br> |
| 142|[0x80004478]<br>0x000000000df1f2f5|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 3 #nosat<br>                                                   |[0x80002ad0]:sm4ed<br> [0x80002ad4]:sd<br> |
| 143|[0x80004480]<br>0x00000000e147aeaf|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 2 #nosat<br>                                                   |[0x80002b10]:sm4ed<br> [0x80002b14]:sd<br> |
| 144|[0x80004488]<br>0x000000004998d94a|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 1 #nosat<br>                                                   |[0x80002b50]:sm4ed<br> [0x80002b54]:sd<br> |
| 145|[0x80004490]<br>0x000000005051dc86|- rs1_val == 0x0f0e0d0c0b0a0908 and rs2_val == 0x0706050403020100 and imm_val == 0 #nosat<br>                                                   |[0x80002b90]:sm4ed<br> [0x80002b94]:sd<br> |
| 146|[0x80004498]<br>0x00000000c9090ac1|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 3 #nosat<br>                                                   |[0x80002bd0]:sm4ed<br> [0x80002bd4]:sd<br> |
| 147|[0x800044a0]<br>0x0000000017465150|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 2 #nosat<br>                                                   |[0x80002c10]:sm4ed<br> [0x80002c14]:sd<br> |
| 148|[0x800044a8]<br>0x00000000d9b66fda|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 1 #nosat<br>                                                   |[0x80002c50]:sm4ed<br> [0x80002c54]:sd<br> |
| 149|[0x800044b0]<br>0x000000005b5a174e|- rs1_val == 0x0706050403020100 and rs2_val == 0x0f0e0d0c0b0a0908 and imm_val == 0 #nosat<br>                                                   |[0x80002c90]:sm4ed<br> [0x80002c94]:sd<br> |
| 150|[0x800044b8]<br>0x000000007101171e|- rs1_val == 0xf17f6920daaafe5c and rs2_val == 0x7bcad7c4ff9a1b80 and imm_val == 0x0 #nosat<br>                                                 |[0x80002cc8]:sm4ed<br> [0x80002ccc]:sd<br> |
| 151|[0x800044c0]<br>0x000000007e21b7b6|- rs1_val == 0xefeeedecebeae9e8 and rs2_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 2 #nosat<br>                                                   |[0x80002d10]:sm4ed<br> [0x80002d14]:sd<br> |
