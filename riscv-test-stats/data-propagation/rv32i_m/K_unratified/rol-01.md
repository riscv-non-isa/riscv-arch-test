
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800018d0')]      |
| SIG_REGION                | [('0x80003010', '0x80003450', '272 words')]      |
| COV_LABELS                | rol      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/rol-01.S/ref.S    |
| Total Number of coverpoints| 372     |
| Total Coverpoints Hit     | 366      |
| Total Signature Updates   | 269      |
| STAT1                     | 268      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018ac]:rol
      [0x800018b0]:sw
 -- Signature Address: 0x8000343c Data: 0x29324e16
 -- Redundant Coverpoints hit by the op
      - opcode : rol
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0x68800000 and rs1_val == 0x29324E16 #nosat






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

|s.no|        signature         |                                                                     coverpoints                                                                      |                  code                   |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------|
|   1|[0x80003010]<br>0xffffffff|- opcode : rol<br> - rs1 : x28<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_val == 0xFFFFFFFF and rs2_val == 0x08577EB1 #nosat<br> |[0x8000010c]:rol<br> [0x80000110]:sw<br> |
|   2|[0x80003014]<br>0x4ffe831a|- rs1 : x9<br> - rs2 : x7<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs2_val == 0x00000000 and rs1_val == 0x4FFE831A #nosat<br>                       |[0x80000120]:rol<br> [0x80000124]:sw<br> |
|   3|[0x80003018]<br>0x22b3abf0|- rs1 : x25<br> - rs2 : x25<br> - rd : x12<br> - rs1 == rs2 != rd<br>                                                                                 |[0x80000138]:rol<br> [0x8000013c]:sw<br> |
|   4|[0x8000301c]<br>0x00000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br>                                                           |[0x80000148]:rol<br> [0x8000014c]:sw<br> |
|   5|[0x80003020]<br>0x4745b130|- rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br>                                                                                 |[0x80000160]:rol<br> [0x80000164]:sw<br> |
|   6|[0x80003024]<br>0x3eea126e|- rs1 : x29<br> - rs2 : x3<br> - rd : x21<br> - rs2_val == 0x90000000 and rs1_val == 0x3EEA126E #nosat<br>                                            |[0x80000174]:rol<br> [0x80000178]:sw<br> |
|   7|[0x80003028]<br>0x9c734d77|- rs1 : x17<br> - rs2 : x14<br> - rd : x29<br> - rs2_val == 0xB8000000 and rs1_val == 0x9C734D77 #nosat<br>                                           |[0x80000188]:rol<br> [0x8000018c]:sw<br> |
|   8|[0x8000302c]<br>0x5a694bca|- rs1 : x2<br> - rs2 : x27<br> - rd : x1<br> - rs2_val == 0xB4000000 and rs1_val == 0x5A694BCA #nosat<br>                                             |[0x8000019c]:rol<br> [0x800001a0]:sw<br> |
|   9|[0x80003030]<br>0xed52e4ca|- rs1 : x26<br> - rs2 : x19<br> - rd : x5<br> - rs2_val == 0x3E000000 and rs1_val == 0xED52E4CA #nosat<br>                                            |[0x800001b0]:rol<br> [0x800001b4]:sw<br> |
|  10|[0x80003034]<br>0xb5cb2a93|- rs1 : x8<br> - rs2 : x28<br> - rd : x13<br> - rs2_val == 0xFB000000 and rs1_val == 0xB5CB2A93 #nosat<br>                                            |[0x800001c4]:rol<br> [0x800001c8]:sw<br> |
|  11|[0x80003038]<br>0x00000000|- rs1 : x16<br> - rs2 : x22<br> - rd : x0<br> - rs2_val == 0x68800000 and rs1_val == 0x29324E16 #nosat<br>                                            |[0x800001d8]:rol<br> [0x800001dc]:sw<br> |
|  12|[0x8000303c]<br>0xbc5fb419|- rs1 : x20<br> - rs2 : x8<br> - rd : x10<br> - rs2_val == 0xB7400000 and rs1_val == 0xBC5FB419 #nosat<br>                                            |[0x800001ec]:rol<br> [0x800001f0]:sw<br> |
|  13|[0x80003040]<br>0x8e92e1b8|- rs1 : x3<br> - rs2 : x20<br> - rd : x14<br> - rs2_val == 0x5CE00000 and rs1_val == 0x8E92E1B8 #nosat<br>                                            |[0x80000200]:rol<br> [0x80000204]:sw<br> |
|  14|[0x80003044]<br>0x96a3b48b|- rs1 : x11<br> - rs2 : x17<br> - rd : x4<br> - rs2_val == 0x49F00000 and rs1_val == 0x96A3B48B #nosat<br>                                            |[0x80000214]:rol<br> [0x80000218]:sw<br> |
|  15|[0x80003048]<br>0x0a095049|- rs1 : x21<br> - rs2 : x6<br> - rd : x28<br> - rs2_val == 0x53D80000 and rs1_val == 0x0A095049 #nosat<br>                                            |[0x80000228]:rol<br> [0x8000022c]:sw<br> |
|  16|[0x8000304c]<br>0x6f6e71b7|- rs1 : x4<br> - rs2 : x23<br> - rd : x3<br> - rs2_val == 0x2EC40000 and rs1_val == 0x6F6E71B7 #nosat<br>                                             |[0x80000244]:rol<br> [0x80000248]:sw<br> |
|  17|[0x80003050]<br>0x236cc43d|- rs1 : x27<br> - rs2 : x26<br> - rd : x24<br> - rs2_val == 0x8E860000 and rs1_val == 0x236CC43D #nosat<br>                                           |[0x80000258]:rol<br> [0x8000025c]:sw<br> |
|  18|[0x80003054]<br>0xe2ed8971|- rs1 : x10<br> - rs2 : x4<br> - rd : x27<br> - rs2_val == 0x6FBF0000 and rs1_val == 0xE2ED8971 #nosat<br>                                            |[0x8000026c]:rol<br> [0x80000270]:sw<br> |
|  19|[0x80003058]<br>0x06fa7b3e|- rs1 : x15<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == 0x354E8000 and rs1_val == 0x06FA7B3E #nosat<br>                                             |[0x80000280]:rol<br> [0x80000284]:sw<br> |
|  20|[0x8000305c]<br>0x4143da51|- rs1 : x12<br> - rs2 : x0<br> - rd : x22<br>                                                                                                         |[0x80000294]:rol<br> [0x80000298]:sw<br> |
|  21|[0x80003060]<br>0xcac78511|- rs1 : x23<br> - rs2 : x2<br> - rd : x17<br> - rs2_val == 0xDFFA2000 and rs1_val == 0xCAC78511 #nosat<br>                                            |[0x800002a8]:rol<br> [0x800002ac]:sw<br> |
|  22|[0x80003064]<br>0xdf880b11|- rs1 : x14<br> - rs2 : x11<br> - rd : x18<br> - rs2_val == 0x45D1F000 and rs1_val == 0xDF880B11 #nosat<br>                                           |[0x800002bc]:rol<br> [0x800002c0]:sw<br> |
|  23|[0x80003068]<br>0xbd230058|- rs1 : x13<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 0x9069A800 and rs1_val == 0xBD230058 #nosat<br>                                           |[0x800002d4]:rol<br> [0x800002d8]:sw<br> |
|  24|[0x8000306c]<br>0xf2597377|- rs1 : x1<br> - rs2 : x18<br> - rd : x26<br> - rs2_val == 0xF5B1B400 and rs1_val == 0xF2597377 #nosat<br>                                            |[0x800002ec]:rol<br> [0x800002f0]:sw<br> |
|  25|[0x80003070]<br>0x5a8e7f31|- rs1 : x22<br> - rs2 : x24<br> - rd : x25<br> - rs2_val == 0x06B6DA00 and rs1_val == 0x5A8E7F31 #nosat<br>                                           |[0x80000304]:rol<br> [0x80000308]:sw<br> |
|  26|[0x80003074]<br>0x7a3621f5|- rs1 : x6<br> - rs2 : x29<br> - rd : x7<br> - rs2_val == 0xBFB0F100 and rs1_val == 0x7A3621F5 #nosat<br>                                             |[0x8000031c]:rol<br> [0x80000320]:sw<br> |
|  27|[0x80003078]<br>0x1e3c492c|- rs1 : x19<br> - rs2 : x16<br> - rd : x23<br> - rs2_val == 0xD838C880 and rs1_val == 0x1E3C492C #nosat<br>                                           |[0x80000334]:rol<br> [0x80000338]:sw<br> |
|  28|[0x8000307c]<br>0xd4faf4b1|- rs1 : x24<br> - rs2 : x1<br> - rd : x20<br> - rs2_val == 0x5C46AEC0 and rs1_val == 0xD4FAF4B1 #nosat<br>                                            |[0x8000034c]:rol<br> [0x80000350]:sw<br> |
|  29|[0x80003080]<br>0x27a16894|- rs1 : x5<br> - rs2 : x13<br> - rd : x31<br> - rs2_val == 0xCF7AC620 and rs1_val == 0x27A16894 #nosat<br>                                            |[0x80000364]:rol<br> [0x80000368]:sw<br> |
|  30|[0x80003084]<br>0xf19e0a3e|- rs1 : x18<br> - rs2 : x10<br> - rd : x19<br> - rs2_val == 0x05C2F650 and rs1_val == 0x0A3EF19E #nosat<br>                                           |[0x80000384]:rol<br> [0x80000388]:sw<br> |
|  31|[0x80003088]<br>0x8193efcb|- rs1 : x7<br> - rs2 : x21<br> - rd : x6<br> - rs2_val == 0xEEC50588 and rs1_val == 0xCB8193EF #nosat<br>                                             |[0x8000039c]:rol<br> [0x800003a0]:sw<br> |
|  32|[0x8000308c]<br>0xf8847577|- rs1 : x31<br> - rs2 : x5<br> - rd : x2<br> - rs2_val == 0xCA7160CC and rs1_val == 0x577F8847 #nosat<br>                                             |[0x800003b4]:rol<br> [0x800003b8]:sw<br> |
|  33|[0x80003090]<br>0x6d7abc2a|- rs2_val == 0x60E30DA2 and rs1_val == 0x9B5EAF0A #nosat<br>                                                                                          |[0x800003cc]:rol<br> [0x800003d0]:sw<br> |
|  34|[0x80003094]<br>0xc0ba7779|- rs2_val == 0x76F86039 and rs1_val == 0x5D3BBCE0 #nosat<br>                                                                                          |[0x800003e4]:rol<br> [0x800003e8]:sw<br> |
|  35|[0x80003098]<br>0x00000000|- rs1_val == 0x00000000 and rs2_val == 0xFD1032E8 #nosat<br>                                                                                          |[0x800003f8]:rol<br> [0x800003fc]:sw<br> |
|  36|[0x8000309c]<br>0x00400000|- rs1_val == 0x80000000 and rs2_val == 0x7B246C17 #nosat<br>                                                                                          |[0x8000040c]:rol<br> [0x80000410]:sw<br> |
|  37|[0x800030a0]<br>0x00008000|- rs1_val == 0x40000000 and rs2_val == 0x56F3EEF1 #nosat<br>                                                                                          |[0x80000420]:rol<br> [0x80000424]:sw<br> |
|  38|[0x800030a4]<br>0xa0000000|- rs1_val == 0xA0000000 and rs2_val == 0x75923260 #nosat<br>                                                                                          |[0x80000434]:rol<br> [0x80000438]:sw<br> |
|  39|[0x800030a8]<br>0x01000000|- rs1_val == 0x10000000 and rs2_val == 0xB9D3087C #nosat<br>                                                                                          |[0x80000448]:rol<br> [0x8000044c]:sw<br> |
|  40|[0x800030ac]<br>0x00150000|- rs1_val == 0xA8000000 and rs2_val == 0x46CBD355 #nosat<br>                                                                                          |[0x8000045c]:rol<br> [0x80000460]:sw<br> |
|  41|[0x800030b0]<br>0x1c800000|- rs1_val == 0xE4000000 and rs2_val == 0x4616E73D #nosat<br>                                                                                          |[0x80000470]:rol<br> [0x80000474]:sw<br> |
|  42|[0x800030b4]<br>0x00011c00|- rs1_val == 0x8E000000 and rs2_val == 0x8CCAEC71 #nosat<br>                                                                                          |[0x80000484]:rol<br> [0x80000488]:sw<br> |
|  43|[0x800030b8]<br>0x00013000|- rs1_val == 0x13000000 and rs2_val == 0x9B774054 #nosat<br>                                                                                          |[0x80000498]:rol<br> [0x8000049c]:sw<br> |
|  44|[0x800030bc]<br>0x008b8000|- rs1_val == 0x8B800000 and rs2_val == 0x6D5FCD18 #nosat<br>                                                                                          |[0x800004ac]:rol<br> [0x800004b0]:sw<br> |
|  45|[0x800030c0]<br>0xfd800000|- rs1_val == 0x7EC00000 and rs2_val == 0x0696F561 #nosat<br>                                                                                          |[0x800004c0]:rol<br> [0x800004c4]:sw<br> |
|  46|[0x800030c4]<br>0xf6800000|- rs1_val == 0x3DA00000 and rs2_val == 0x6E1E98E2 #nosat<br>                                                                                          |[0x800004d4]:rol<br> [0x800004d8]:sw<br> |
|  47|[0x800030c8]<br>0x08000010|- rs1_val == 0x20100000 and rs2_val == 0x2DEDB6A7 #nosat<br>                                                                                          |[0x800004e8]:rol<br> [0x800004ec]:sw<br> |
|  48|[0x800030cc]<br>0x38000098|- rs1_val == 0x98380000 and rs2_val == 0x3C272728 #nosat<br>                                                                                          |[0x800004fc]:rol<br> [0x80000500]:sw<br> |
|  49|[0x800030d0]<br>0x101e8000|- rs1_val == 0x80F40000 and rs2_val == 0x4F55C73D #nosat<br>                                                                                          |[0x80000510]:rol<br> [0x80000514]:sw<br> |
|  50|[0x800030d4]<br>0x010d5800|- rs1_val == 0x43560000 and rs2_val == 0xB0AB577A #nosat<br>                                                                                          |[0x80000524]:rol<br> [0x80000528]:sw<br> |
|  51|[0x800030d8]<br>0x18aa4000|- rs1_val == 0x62A90000 and rs2_val == 0x42F5D75E #nosat<br>                                                                                          |[0x80000538]:rol<br> [0x8000053c]:sw<br> |
|  52|[0x800030dc]<br>0x0690000c|- rs1_val == 0x60348000 and rs2_val == 0xB9F09825 #nosat<br>                                                                                          |[0x8000054c]:rol<br> [0x80000550]:sw<br> |
|  53|[0x800030e0]<br>0x60002f7b|- rs1_val == 0x5EF6C000 and rs2_val == 0x9BFAD94F #nosat<br>                                                                                          |[0x80000560]:rol<br> [0x80000564]:sw<br> |
|  54|[0x800030e4]<br>0x0079df60|- rs1_val == 0x79DF6000 and rs2_val == 0x98918DD8 #nosat<br>                                                                                          |[0x80000574]:rol<br> [0x80000578]:sw<br> |
|  55|[0x800030e8]<br>0x26080043|- rs1_val == 0x864C1000 and rs2_val == 0x9B811F47 #nosat<br>                                                                                          |[0x80000588]:rol<br> [0x8000058c]:sw<br> |
|  56|[0x800030ec]<br>0xb800735c|- rs1_val == 0x735CB800 and rs2_val == 0xD0D18FB0 #nosat<br>                                                                                          |[0x800005a0]:rol<br> [0x800005a4]:sw<br> |
|  57|[0x800030f0]<br>0x44002955|- rs1_val == 0x29554400 and rs2_val == 0x71992790 #nosat<br>                                                                                          |[0x800005b8]:rol<br> [0x800005bc]:sw<br> |
|  58|[0x800030f4]<br>0x4d2b5005|- rs1_val == 0xA9A56A00 and rs2_val == 0x8248F803 #nosat<br>                                                                                          |[0x800005d0]:rol<br> [0x800005d4]:sw<br> |
|  59|[0x800030f8]<br>0xe8061a02|- rs1_val == 0xC3405D00 and rs2_val == 0xEB3D7873 #nosat<br>                                                                                          |[0x800005e8]:rol<br> [0x800005ec]:sw<br> |
|  60|[0x800030fc]<br>0x0e536020|- rs1_val == 0x394D8080 and rs2_val == 0xD7A7BF5E #nosat<br>                                                                                          |[0x80000600]:rol<br> [0x80000604]:sw<br> |
|  61|[0x80003100]<br>0xbc206333|- rs1_val == 0xC6677840 and rs2_val == 0xD1BA5C0F #nosat<br>                                                                                          |[0x80000618]:rol<br> [0x8000061c]:sw<br> |
|  62|[0x80003104]<br>0x0598e607|- rs1_val == 0x70598E60 and rs2_val == 0xD19E3224 #nosat<br>                                                                                          |[0x80000630]:rol<br> [0x80000634]:sw<br> |
|  63|[0x80003108]<br>0xf9098a59|- rs1_val == 0x98A59F90 and rs2_val == 0x35D30D74 #nosat<br>                                                                                          |[0x80000648]:rol<br> [0x8000064c]:sw<br> |
|  64|[0x8000310c]<br>0x0dbd71a6|- rs1_val == 0xD306DEB8 and rs2_val == 0x70A76E49 #nosat<br>                                                                                          |[0x80000660]:rol<br> [0x80000664]:sw<br> |
|  65|[0x80003110]<br>0x314026e8|- rs1_val == 0x18A01374 and rs2_val == 0x9FCDB9E1 #nosat<br>                                                                                          |[0x80000678]:rol<br> [0x8000067c]:sw<br> |
|  66|[0x80003114]<br>0xe80586cc|- rs1_val == 0xC3667402 and rs2_val == 0x5FEFE911 #nosat<br>                                                                                          |[0x80000690]:rol<br> [0x80000694]:sw<br> |
|  67|[0x80003118]<br>0xfbcbebb6|- rs1_val == 0x797D76DF and rs2_val == 0x598B88DB #nosat<br>                                                                                          |[0x800006a8]:rol<br> [0x800006ac]:sw<br> |
|  68|[0x8000311c]<br>0xdf9d9a7a|- rs2_val == 0x0C04F662 and rs1_val == 0xB7E7669E #nosat<br>                                                                                          |[0x800006c0]:rol<br> [0x800006c4]:sw<br> |
|  69|[0x80003120]<br>0x0e49a49e|- rs2_val == 0xCD41CAD1 and rs1_val == 0xD24F0724 #nosat<br>                                                                                          |[0x800006d8]:rol<br> [0x800006dc]:sw<br> |
|  70|[0x80003124]<br>0x1ac28115|- rs2_val == 0x1203965B and rs1_val == 0x585022A3 #nosat<br>                                                                                          |[0x800006f0]:rol<br> [0x800006f4]:sw<br> |
|  71|[0x80003128]<br>0x47ca4577|- rs2_val == 0x7A9AC0A7 and rs1_val == 0xEE8F948A #nosat<br>                                                                                          |[0x80000708]:rol<br> [0x8000070c]:sw<br> |
|  72|[0x8000312c]<br>0xfd4c932a|- rs2_val == 0x2AA8E42F and rs1_val == 0x2655FA99 #nosat<br>                                                                                          |[0x80000720]:rol<br> [0x80000724]:sw<br> |
|  73|[0x80003130]<br>0x864b50c1|- rs2_val == 0x211D785F and rs1_val == 0x0C96A183 #nosat<br>                                                                                          |[0x80000738]:rol<br> [0x8000073c]:sw<br> |
|  74|[0x80003134]<br>0x447c98fa|- rs2_val == 0x59DDE33F and rs1_val == 0x88F931F4 #nosat<br>                                                                                          |[0x80000750]:rol<br> [0x80000754]:sw<br> |
|  75|[0x80003138]<br>0x3795fc31|- rs2_val == 0x711E627F and rs1_val == 0x6F2BF862 #nosat<br>                                                                                          |[0x80000768]:rol<br> [0x8000076c]:sw<br> |
|  76|[0x8000313c]<br>0xae361952|- rs2_val == 0x19835AFF and rs1_val == 0x5C6C32A5 #nosat<br>                                                                                          |[0x80000780]:rol<br> [0x80000784]:sw<br> |
|  77|[0x80003140]<br>0x2c7e01a1|- rs2_val == 0x088B3DFF and rs1_val == 0x58FC0342 #nosat<br>                                                                                          |[0x80000798]:rol<br> [0x8000079c]:sw<br> |
|  78|[0x80003144]<br>0xb1b53af1|- rs2_val == 0x9A6DA3FF and rs1_val == 0x636A75E3 #nosat<br>                                                                                          |[0x800007b0]:rol<br> [0x800007b4]:sw<br> |
|  79|[0x80003148]<br>0x276b1214|- rs2_val == 0x37E0D7FF and rs1_val == 0x4ED62428 #nosat<br>                                                                                          |[0x800007c8]:rol<br> [0x800007cc]:sw<br> |
|  80|[0x8000314c]<br>0xe96893a2|- rs2_val == 0x5E59CFFF and rs1_val == 0xD2D12745 #nosat<br>                                                                                          |[0x800007e0]:rol<br> [0x800007e4]:sw<br> |
|  81|[0x80003150]<br>0x06bb879e|- rs2_val == 0xDD129FFF and rs1_val == 0x0D770F3C #nosat<br>                                                                                          |[0x800007f8]:rol<br> [0x800007fc]:sw<br> |
|  82|[0x80003154]<br>0x9188d67d|- rs2_val == 0x872EBFFF and rs1_val == 0x2311ACFB #nosat<br>                                                                                          |[0x80000810]:rol<br> [0x80000814]:sw<br> |
|  83|[0x80003158]<br>0x07d89dde|- rs2_val == 0x55367FFF and rs1_val == 0x0FB13BBC #nosat<br>                                                                                          |[0x80000828]:rol<br> [0x8000082c]:sw<br> |
|  84|[0x8000315c]<br>0xc6fe1183|- rs2_val == 0xFDD2FFFF and rs1_val == 0x8DFC2307 #nosat<br>                                                                                          |[0x80000840]:rol<br> [0x80000844]:sw<br> |
|  85|[0x80003160]<br>0xb9895f36|- rs2_val == 0x30BDFFFF and rs1_val == 0x7312BE6D #nosat<br>                                                                                          |[0x80000858]:rol<br> [0x8000085c]:sw<br> |
|  86|[0x80003164]<br>0xe30d8fdf|- rs2_val == 0xA743FFFF and rs1_val == 0xC61B1FBF #nosat<br>                                                                                          |[0x80000870]:rol<br> [0x80000874]:sw<br> |
|  87|[0x80003168]<br>0xf5ed2d27|- rs2_val == 0x9987FFFF and rs1_val == 0xEBDA5A4F #nosat<br>                                                                                          |[0x80000888]:rol<br> [0x8000088c]:sw<br> |
|  88|[0x8000316c]<br>0xe10af0c9|- rs2_val == 0x118FFFFF and rs1_val == 0xC215E193 #nosat<br>                                                                                          |[0x800008a0]:rol<br> [0x800008a4]:sw<br> |
|  89|[0x80003170]<br>0xbaf749af|- rs2_val == 0x65DFFFFF and rs1_val == 0x75EE935F #nosat<br>                                                                                          |[0x800008b8]:rol<br> [0x800008bc]:sw<br> |
|  90|[0x80003174]<br>0x04e0b0b1|- rs2_val == 0x6CBFFFFF and rs1_val == 0x09C16162 #nosat<br>                                                                                          |[0x800008d0]:rol<br> [0x800008d4]:sw<br> |
|  91|[0x80003178]<br>0xd20298ba|- rs2_val == 0x347FFFFF and rs1_val == 0xA4053175 #nosat<br>                                                                                          |[0x800008e8]:rol<br> [0x800008ec]:sw<br> |
|  92|[0x8000317c]<br>0x24c80364|- rs2_val == 0xC4FFFFFF and rs1_val == 0x499006C8 #nosat<br>                                                                                          |[0x80000900]:rol<br> [0x80000904]:sw<br> |
|  93|[0x80003180]<br>0x1e2d9f77|- rs2_val == 0x41FFFFFF and rs1_val == 0x3C5B3EEE #nosat<br>                                                                                          |[0x80000918]:rol<br> [0x8000091c]:sw<br> |
|  94|[0x80003184]<br>0x6cafec35|- rs2_val == 0x6BFFFFFF and rs1_val == 0xD95FD86A #nosat<br>                                                                                          |[0x80000930]:rol<br> [0x80000934]:sw<br> |
|  95|[0x80003188]<br>0x92bc27a7|- rs2_val == 0x87FFFFFF and rs1_val == 0x25784F4F #nosat<br>                                                                                          |[0x80000948]:rol<br> [0x8000094c]:sw<br> |
|  96|[0x8000318c]<br>0x04100c7d|- rs2_val == 0xCFFFFFFF and rs1_val == 0x082018FA #nosat<br>                                                                                          |[0x80000960]:rol<br> [0x80000964]:sw<br> |
|  97|[0x80003190]<br>0x1a866298|- rs2_val == 0x9FFFFFFF and rs1_val == 0x350CC530 #nosat<br>                                                                                          |[0x80000978]:rol<br> [0x8000097c]:sw<br> |
|  98|[0x80003194]<br>0x3cb35127|- rs2_val == 0x3FFFFFFF and rs1_val == 0x7966A24E #nosat<br>                                                                                          |[0x80000990]:rol<br> [0x80000994]:sw<br> |
|  99|[0x80003198]<br>0x28eb6b6d|- rs2_val == 0x7FFFFFFF and rs1_val == 0x51D6D6DA #nosat<br>                                                                                          |[0x800009a8]:rol<br> [0x800009ac]:sw<br> |
| 100|[0x8000319c]<br>0xead101c7|- rs2_val == 0xFFFFFFFF and rs1_val == 0xD5A2038F #nosat<br>                                                                                          |[0x800009bc]:rol<br> [0x800009c0]:sw<br> |
| 101|[0x800031a0]<br>0xeee8dcdf|- rs1_val == 0xFF7746E6 and rs2_val == 0x4F829B65 #nosat<br>                                                                                          |[0x800009d4]:rol<br> [0x800009d8]:sw<br> |
| 102|[0x800031a4]<br>0xe483f134|- rs1_val == 0xF89A7241 and rs2_val == 0x00C2F091 #nosat<br>                                                                                          |[0x800009ec]:rol<br> [0x800009f0]:sw<br> |
| 103|[0x800031a8]<br>0x54988d9b|- rs1_val == 0x11B36A93 and rs2_val == 0xB1F5D853 #nosat<br>                                                                                          |[0x80000a04]:rol<br> [0x80000a08]:sw<br> |
| 104|[0x800031ac]<br>0x915f264c|- rs1_val == 0xC9932457 and rs2_val == 0x39BE2172 #nosat<br>                                                                                          |[0x80000a1c]:rol<br> [0x80000a20]:sw<br> |
| 105|[0x800031b0]<br>0x9b23d2e6|- rs1_val == 0x4B9A6C8F and rs2_val == 0x316039EE #nosat<br>                                                                                          |[0x80000a34]:rol<br> [0x80000a38]:sw<br> |
| 106|[0x800031b4]<br>0x504907e5|- rs1_val == 0x9541241F and rs2_val == 0x5761A866 #nosat<br>                                                                                          |[0x80000a4c]:rol<br> [0x80000a50]:sw<br> |
| 107|[0x800031b8]<br>0x1bf94b43|- rs1_val == 0x94B431BF and rs2_val == 0x09E4D1F4 #nosat<br>                                                                                          |[0x80000a64]:rol<br> [0x80000a68]:sw<br> |
| 108|[0x800031bc]<br>0xee47f4bf|- rs1_val == 0xDC8FE97F and rs2_val == 0x9E03793F #nosat<br>                                                                                          |[0x80000a7c]:rol<br> [0x80000a80]:sw<br> |
| 109|[0x800031c0]<br>0x3ceffb90|- rs1_val == 0xB903CEFF and rs2_val == 0x7F1071EC #nosat<br>                                                                                          |[0x80000a94]:rol<br> [0x80000a98]:sw<br> |
| 110|[0x800031c4]<br>0x494a5ffb|- rs1_val == 0xB494A5FF and rs2_val == 0x9A7EF9E4 #nosat<br>                                                                                          |[0x80000aac]:rol<br> [0x80000ab0]:sw<br> |
| 111|[0x800031c8]<br>0xffc5bb07|- rs1_val == 0xE2DD83FF and rs2_val == 0x59C05BB9 #nosat<br>                                                                                          |[0x80000ac4]:rol<br> [0x80000ac8]:sw<br> |
| 112|[0x800031cc]<br>0xffddd7eb|- rs1_val == 0xBBAFD7FF and rs2_val == 0xDE451397 #nosat<br>                                                                                          |[0x80000adc]:rol<br> [0x80000ae0]:sw<br> |
| 113|[0x800031d0]<br>0xcb89fff9|- rs1_val == 0xCE5C4FFF and rs2_val == 0x40F27005 #nosat<br>                                                                                          |[0x80000af4]:rol<br> [0x80000af8]:sw<br> |
| 114|[0x800031d4]<br>0xcc9afff9|- rs1_val == 0x39935FFF and rs2_val == 0x24496FE3 #nosat<br>                                                                                          |[0x80000b0c]:rol<br> [0x80000b10]:sw<br> |
| 115|[0x800031d8]<br>0xffffbb5e|- rs1_val == 0xEED7BFFF and rs2_val == 0xDE14BFF2 #nosat<br>                                                                                          |[0x80000b24]:rol<br> [0x80000b28]:sw<br> |
| 116|[0x800031dc]<br>0xff80473f|- rs1_val == 0x008E7FFF and rs2_val == 0xB808A677 #nosat<br>                                                                                          |[0x80000b3c]:rol<br> [0x80000b40]:sw<br> |
| 117|[0x800031e0]<br>0xe2585fff|- rs1_val == 0x12C2FFFF and rs2_val == 0x76B1FD3D #nosat<br>                                                                                          |[0x80000b54]:rol<br> [0x80000b58]:sw<br> |
| 118|[0x800031e4]<br>0xfc74bfff|- rs1_val == 0xE3A5FFFF and rs2_val == 0x5DCF019D #nosat<br>                                                                                          |[0x80000b6c]:rol<br> [0x80000b70]:sw<br> |
| 119|[0x800031e8]<br>0xfcd81fff|- rs1_val == 0x9B03FFFF and rs2_val == 0x47B7097B #nosat<br>                                                                                          |[0x80000b84]:rol<br> [0x80000b88]:sw<br> |
| 120|[0x800031ec]<br>0xf83ffffa|- rs1_val == 0x5F07FFFF and rs2_val == 0x759F1B43 #nosat<br>                                                                                          |[0x80000b9c]:rol<br> [0x80000ba0]:sw<br> |
| 121|[0x800031f0]<br>0xfe679fff|- rs1_val == 0x33CFFFFF and rs2_val == 0x5B331999 #nosat<br>                                                                                          |[0x80000bb4]:rol<br> [0x80000bb8]:sw<br> |
| 122|[0x800031f4]<br>0xe13ffffe|- rs1_val == 0x709FFFFF and rs2_val == 0x2D37DE81 #nosat<br>                                                                                          |[0x80000bcc]:rol<br> [0x80000bd0]:sw<br> |
| 123|[0x800031f8]<br>0xffffe8df|- rs1_val == 0xD1BFFFFF and rs2_val == 0xFCB627AF #nosat<br>                                                                                          |[0x80000be4]:rol<br> [0x80000be8]:sw<br> |
| 124|[0x800031fc]<br>0x6ffffff5|- rs1_val == 0xAB7FFFFF and rs2_val == 0x1E0B4EE5 #nosat<br>                                                                                          |[0x80000bfc]:rol<br> [0x80000c00]:sw<br> |
| 125|[0x80003200]<br>0xffdf3fff|- rs1_val == 0x7CFFFFFF and rs2_val == 0xFB3E7196 #nosat<br>                                                                                          |[0x80000c14]:rol<br> [0x80000c18]:sw<br> |
| 126|[0x80003204]<br>0x67fffffd|- rs1_val == 0x59FFFFFF and rs2_val == 0xD9959A62 #nosat<br>                                                                                          |[0x80000c2c]:rol<br> [0x80000c30]:sw<br> |
| 127|[0x80003208]<br>0xffffdbff|- rs1_val == 0xDBFFFFFF and rs2_val == 0xE08409F0 #nosat<br>                                                                                          |[0x80000c44]:rol<br> [0x80000c48]:sw<br> |
| 128|[0x8000320c]<br>0xffffffbf|- rs1_val == 0xF7FFFFFF and rs2_val == 0x258ECECB #nosat<br>                                                                                          |[0x80000c5c]:rol<br> [0x80000c60]:sw<br> |
| 129|[0x80003210]<br>0x6fffffff|- rs1_val == 0x6FFFFFFF and rs2_val == 0xFF7D5EC0 #nosat<br>                                                                                          |[0x80000c74]:rol<br> [0x80000c78]:sw<br> |
| 130|[0x80003214]<br>0xffff9fff|- rs1_val == 0x9FFFFFFF and rs2_val == 0x4B6EA010 #nosat<br>                                                                                          |[0x80000c8c]:rol<br> [0x80000c90]:sw<br> |
| 131|[0x80003218]<br>0xfffff3ff|- rs1_val == 0x3FFFFFFF and rs2_val == 0xD885BBAC #nosat<br>                                                                                          |[0x80000ca4]:rol<br> [0x80000ca8]:sw<br> |
| 132|[0x8000321c]<br>0xffffefff|- rs1_val == 0x7FFFFFFF and rs2_val == 0xBBE8F88D #nosat<br>                                                                                          |[0x80000cbc]:rol<br> [0x80000cc0]:sw<br> |
| 133|[0x80003220]<br>0xffffffff|- rs1_val == 0xFFFFFFFF and rs2_val == 0xE3D6E4B9 #nosat<br>                                                                                          |[0x80000cd0]:rol<br> [0x80000cd4]:sw<br> |
| 134|[0x80003224]<br>0x409296da|- rs2_val == 0x970216FD and rs1_val == 0x0494B6D2 #nosat<br>                                                                                          |[0x80000ce8]:rol<br> [0x80000cec]:sw<br> |
| 135|[0x80003228]<br>0x85b8f932|- rs2_val == 0x5CB58B8F and rs1_val == 0xF2650B71 #nosat<br>                                                                                          |[0x80000d00]:rol<br> [0x80000d04]:sw<br> |
| 136|[0x8000322c]<br>0xf214a21a|- rs2_val == 0x27EFDA6C and rs1_val == 0x21AF214A #nosat<br>                                                                                          |[0x80000d18]:rol<br> [0x80000d1c]:sw<br> |
| 137|[0x80003230]<br>0x482ea760|- rs2_val == 0x1D1EF7C0 and rs1_val == 0x482EA760 #nosat<br>                                                                                          |[0x80000d30]:rol<br> [0x80000d34]:sw<br> |
| 138|[0x80003234]<br>0xf408861e|- rs2_val == 0x0FC2A909 and rs1_val == 0x0F7A0443 #nosat<br>                                                                                          |[0x80000d48]:rol<br> [0x80000d4c]:sw<br> |
| 139|[0x80003238]<br>0x54d0121a|- rs2_val == 0x04E9E4A6 and rs1_val == 0x69534048 #nosat<br>                                                                                          |[0x80000d60]:rol<br> [0x80000d64]:sw<br> |
| 140|[0x8000323c]<br>0x7a821f1f|- rs2_val == 0x025FDCD7 and rs1_val == 0x043E3EF5 #nosat<br>                                                                                          |[0x80000d78]:rol<br> [0x80000d7c]:sw<br> |
| 141|[0x80003240]<br>0x212fad80|- rs2_val == 0x01782EBC and rs1_val == 0x12FAD802 #nosat<br>                                                                                          |[0x80000d90]:rol<br> [0x80000d94]:sw<br> |
| 142|[0x80003244]<br>0xfca23369|- rs2_val == 0x00A39575 and rs1_val == 0x119B4FE5 #nosat<br>                                                                                          |[0x80000da8]:rol<br> [0x80000dac]:sw<br> |
| 143|[0x80003248]<br>0x1265bed9|- rs2_val == 0x0049886F and rs1_val == 0x7DB224CB #nosat<br>                                                                                          |[0x80000dc0]:rol<br> [0x80000dc4]:sw<br> |
| 144|[0x8000324c]<br>0x3b45f51c|- rs2_val == 0x0025693C and rs1_val == 0xB45F51C3 #nosat<br>                                                                                          |[0x80000dd8]:rol<br> [0x80000ddc]:sw<br> |
| 145|[0x80003250]<br>0x8d054d8d|- rs2_val == 0x0018031A and rs1_val == 0x41536363 #nosat<br>                                                                                          |[0x80000df0]:rol<br> [0x80000df4]:sw<br> |
| 146|[0x80003254]<br>0x4a9e650d|- rs2_val == 0x000A8267 and rs1_val == 0x1A953CCA #nosat<br>                                                                                          |[0x80000e08]:rol<br> [0x80000e0c]:sw<br> |
| 147|[0x80003258]<br>0x6ebf1418|- rs2_val == 0x00073010 and rs1_val == 0x14186EBF #nosat<br>                                                                                          |[0x80000e20]:rol<br> [0x80000e24]:sw<br> |
| 148|[0x8000325c]<br>0xa7ff33c1|- rs2_val == 0x00038734 and rs1_val == 0xF33C1A7F #nosat<br>                                                                                          |[0x80000e38]:rol<br> [0x80000e3c]:sw<br> |
| 149|[0x80003260]<br>0xdea51b9c|- rs2_val == 0x0001EAB1 and rs1_val == 0x8DCE6F52 #nosat<br>                                                                                          |[0x80000e50]:rol<br> [0x80000e54]:sw<br> |
| 150|[0x80003264]<br>0x6c6c8309|- rs2_val == 0x0000B8EC and rs1_val == 0x3096C6C8 #nosat<br>                                                                                          |[0x80000e68]:rol<br> [0x80000e6c]:sw<br> |
| 151|[0x80003268]<br>0x1cb59c46|- rs2_val == 0x00007530 and rs1_val == 0x9C461CB5 #nosat<br>                                                                                          |[0x80000e80]:rol<br> [0x80000e84]:sw<br> |
| 152|[0x8000326c]<br>0x3224eead|- rs2_val == 0x00003ED5 and rs1_val == 0x27756991 #nosat<br>                                                                                          |[0x80000e98]:rol<br> [0x80000e9c]:sw<br> |
| 153|[0x80003270]<br>0x28ac5ae8|- rs2_val == 0x00001055 and rs1_val == 0x62D74145 #nosat<br>                                                                                          |[0x80000eb0]:rol<br> [0x80000eb4]:sw<br> |
| 154|[0x80003274]<br>0x64c5c67f|- rs2_val == 0x00000E9E and rs1_val == 0x931719FD #nosat<br>                                                                                          |[0x80000ec8]:rol<br> [0x80000ecc]:sw<br> |
| 155|[0x80003278]<br>0x04b2bb47|- rs2_val == 0x0000059B and rs1_val == 0x965768E0 #nosat<br>                                                                                          |[0x80000edc]:rol<br> [0x80000ee0]:sw<br> |
| 156|[0x8000327c]<br>0x05724174|- rs2_val == 0x00000208 and rs1_val == 0x74057241 #nosat<br>                                                                                          |[0x80000ef0]:rol<br> [0x80000ef4]:sw<br> |
| 157|[0x80003280]<br>0x617f8e5e|- rs2_val == 0x000001E8 and rs1_val == 0x5E617F8E #nosat<br>                                                                                          |[0x80000f04]:rol<br> [0x80000f08]:sw<br> |
| 158|[0x80003284]<br>0x6160f8d8|- rs2_val == 0x000000D2 and rs1_val == 0x3E361858 #nosat<br>                                                                                          |[0x80000f18]:rol<br> [0x80000f1c]:sw<br> |
| 159|[0x80003288]<br>0x28a42608|- rs2_val == 0x00000071 and rs1_val == 0x13041452 #nosat<br>                                                                                          |[0x80000f2c]:rol<br> [0x80000f30]:sw<br> |
| 160|[0x8000328c]<br>0x0904bdbf|- rs2_val == 0x00000034 and rs1_val == 0x4BDBF090 #nosat<br>                                                                                          |[0x80000f40]:rol<br> [0x80000f44]:sw<br> |
| 161|[0x80003290]<br>0xa9387d96|- rs2_val == 0x00000019 and rs1_val == 0x9C3ECB54 #nosat<br>                                                                                          |[0x80000f54]:rol<br> [0x80000f58]:sw<br> |
| 162|[0x80003294]<br>0xf3d30210|- rs2_val == 0x0000000B and rs1_val == 0x421E7A60 #nosat<br>                                                                                          |[0x80000f68]:rol<br> [0x80000f6c]:sw<br> |
| 163|[0x80003298]<br>0xaef83d84|- rs2_val == 0x00000005 and rs1_val == 0x2577C1EC #nosat<br>                                                                                          |[0x80000f7c]:rol<br> [0x80000f80]:sw<br> |
| 164|[0x8000329c]<br>0x66bda174|- rs2_val == 0x00000002 and rs1_val == 0x19AF685D #nosat<br>                                                                                          |[0x80000f90]:rol<br> [0x80000f94]:sw<br> |
| 165|[0x800032a0]<br>0x5fe6c00e|- rs2_val == 0x00000001 and rs1_val == 0x2FF36007 #nosat<br>                                                                                          |[0x80000fa4]:rol<br> [0x80000fa8]:sw<br> |
| 166|[0x800032a4]<br>0xe286852c|- rs2_val == 0x00000000 and rs1_val == 0xE286852C #nosat<br>                                                                                          |[0x80000fb8]:rol<br> [0x80000fbc]:sw<br> |
| 167|[0x800032a8]<br>0x1445222b|- rs1_val == 0xC511488A and rs2_val == 0x97BDD982 #nosat<br>                                                                                          |[0x80000fd0]:rol<br> [0x80000fd4]:sw<br> |
| 168|[0x800032ac]<br>0xa3882ca2|- rs1_val == 0x65151C41 and rs2_val == 0x367E5D6D #nosat<br>                                                                                          |[0x80000fe8]:rol<br> [0x80000fec]:sw<br> |
| 169|[0x800032b0]<br>0xd9926541|- rs1_val == 0x24CA83B3 and rs2_val == 0x623D8EB7 #nosat<br>                                                                                          |[0x80001000]:rol<br> [0x80001004]:sw<br> |
| 170|[0x800032b4]<br>0xdb37d8e1|- rs1_val == 0x1C3B66FB and rs2_val == 0x21870F0B #nosat<br>                                                                                          |[0x80001018]:rol<br> [0x8000101c]:sw<br> |
| 171|[0x800032b8]<br>0xa8a6fd00|- rs1_val == 0x0A8A6FD0 and rs2_val == 0x82450164 #nosat<br>                                                                                          |[0x80001030]:rol<br> [0x80001034]:sw<br> |
| 172|[0x800032bc]<br>0x069ca08c|- rs1_val == 0x069CA08C and rs2_val == 0x8F2DF760 #nosat<br>                                                                                          |[0x80001048]:rol<br> [0x8000104c]:sw<br> |
| 173|[0x800032c0]<br>0xd54b2540|- rs1_val == 0x03552C95 and rs2_val == 0x7CA07386 #nosat<br>                                                                                          |[0x80001060]:rol<br> [0x80001064]:sw<br> |
| 174|[0x800032c4]<br>0x02e9d432|- rs1_val == 0x0174EA19 and rs2_val == 0x19DE2BC1 #nosat<br>                                                                                          |[0x80001078]:rol<br> [0x8000107c]:sw<br> |
| 175|[0x800032c8]<br>0x8a9e4014|- rs1_val == 0x00A454F2 and rs2_val == 0xEC3FBF4D #nosat<br>                                                                                          |[0x80001090]:rol<br> [0x80001094]:sw<br> |
| 176|[0x800032cc]<br>0xdf7003f4|- rs1_val == 0x007E9BEE and rs2_val == 0x164F1513 #nosat<br>                                                                                          |[0x800010a8]:rol<br> [0x800010ac]:sw<br> |
| 177|[0x800032d0]<br>0xf34000b1|- rs1_val == 0x002C7CD0 and rs2_val == 0xACC6D8F2 #nosat<br>                                                                                          |[0x800010c0]:rol<br> [0x800010c4]:sw<br> |
| 178|[0x800032d4]<br>0x002ee620|- rs1_val == 0x00177310 and rs2_val == 0xA123F501 #nosat<br>                                                                                          |[0x800010d8]:rol<br> [0x800010dc]:sw<br> |
| 179|[0x800032d8]<br>0x200122c1|- rs1_val == 0x00091609 and rs2_val == 0xB57A6A1D #nosat<br>                                                                                          |[0x800010f0]:rol<br> [0x800010f4]:sw<br> |
| 180|[0x800032dc]<br>0x000205f0|- rs1_val == 0x00040BE0 and rs2_val == 0xE90794DF #nosat<br>                                                                                          |[0x80001108]:rol<br> [0x8000110c]:sw<br> |
| 181|[0x800032e0]<br>0xa346c000|- rs1_val == 0x00028D1B and rs2_val == 0xAF5570EE #nosat<br>                                                                                          |[0x80001120]:rol<br> [0x80001124]:sw<br> |
| 182|[0x800032e4]<br>0x50001fbe|- rs1_val == 0x0001FBE5 and rs2_val == 0xD8B9B45C #nosat<br>                                                                                          |[0x80001138]:rol<br> [0x8000113c]:sw<br> |
| 183|[0x800032e8]<br>0x2ab04000|- rs1_val == 0x0000AAC1 and rs2_val == 0x1BA1192E #nosat<br>                                                                                          |[0x80001150]:rol<br> [0x80001154]:sw<br> |
| 184|[0x800032ec]<br>0x62c30000|- rs1_val == 0x000062C3 and rs2_val == 0x49FE85B0 #nosat<br>                                                                                          |[0x80001168]:rol<br> [0x8000116c]:sw<br> |
| 185|[0x800032f0]<br>0x00117e80|- rs1_val == 0x000022FD and rs2_val == 0x4105CCA7 #nosat<br>                                                                                          |[0x80001180]:rol<br> [0x80001184]:sw<br> |
| 186|[0x800032f4]<br>0xcc00005a|- rs1_val == 0x000016B3 and rs2_val == 0xD7185DDA #nosat<br>                                                                                          |[0x80001198]:rol<br> [0x8000119c]:sw<br> |
| 187|[0x800032f8]<br>0x0a380000|- rs1_val == 0x00000A38 and rs2_val == 0xA7A11490 #nosat<br>                                                                                          |[0x800011b0]:rol<br> [0x800011b4]:sw<br> |
| 188|[0x800032fc]<br>0x03538000|- rs1_val == 0x000006A7 and rs2_val == 0xA9964AEF #nosat<br>                                                                                          |[0x800011c4]:rol<br> [0x800011c8]:sw<br> |
| 189|[0x80003300]<br>0x3b900000|- rs1_val == 0x000003B9 and rs2_val == 0x4B4D8474 #nosat<br>                                                                                          |[0x800011d8]:rol<br> [0x800011dc]:sw<br> |
| 190|[0x80003304]<br>0x00640000|- rs1_val == 0x00000190 and rs2_val == 0x76C468AE #nosat<br>                                                                                          |[0x800011ec]:rol<br> [0x800011f0]:sw<br> |
| 191|[0x80003308]<br>0x00001a80|- rs1_val == 0x000000D4 and rs2_val == 0x09208A65 #nosat<br>                                                                                          |[0x80001200]:rol<br> [0x80001204]:sw<br> |
| 192|[0x8000330c]<br>0x19c00000|- rs1_val == 0x00000067 and rs2_val == 0x8743FEB6 #nosat<br>                                                                                          |[0x80001214]:rol<br> [0x80001218]:sw<br> |
| 193|[0x80003310]<br>0x39000000|- rs1_val == 0x00000039 and rs2_val == 0xA66B0D38 #nosat<br>                                                                                          |[0x80001228]:rol<br> [0x8000122c]:sw<br> |
| 194|[0x80003314]<br>0x01c00000|- rs1_val == 0x0000001C and rs2_val == 0xFB710734 #nosat<br>                                                                                          |[0x8000123c]:rol<br> [0x80001240]:sw<br> |
| 195|[0x80003318]<br>0x00000038|- rs1_val == 0x0000000E and rs2_val == 0xA26B7F62 #nosat<br>                                                                                          |[0x80001250]:rol<br> [0x80001254]:sw<br> |
| 196|[0x8000331c]<br>0x0000000e|- rs1_val == 0x00000007 and rs2_val == 0x4DABB481 #nosat<br>                                                                                          |[0x80001264]:rol<br> [0x80001268]:sw<br> |
| 197|[0x80003320]<br>0x00000060|- rs1_val == 0x00000003 and rs2_val == 0x2FA91425 #nosat<br>                                                                                          |[0x80001278]:rol<br> [0x8000127c]:sw<br> |
| 198|[0x80003324]<br>0x00040000|- rs1_val == 0x00000001 and rs2_val == 0x965EDA32 #nosat<br>                                                                                          |[0x8000128c]:rol<br> [0x80001290]:sw<br> |
| 199|[0x80003328]<br>0x00000000|- rs1_val == 0x00000000 and rs2_val == 0xC7FDE805 #nosat<br>                                                                                          |[0x800012a0]:rol<br> [0x800012a4]:sw<br> |
| 200|[0x8000332c]<br>0xc35feffe|- rs2_val == 0x6D3F408C and rs1_val == 0xFFEC35FE #nosat<br>                                                                                          |[0x800012b8]:rol<br> [0x800012bc]:sw<br> |
| 201|[0x80003330]<br>0x220976ad|- rs2_val == 0x946A3674 and rs1_val == 0x976AD220 #nosat<br>                                                                                          |[0x800012d0]:rol<br> [0x800012d4]:sw<br> |
| 202|[0x80003334]<br>0x990fe965|- rs2_val == 0xDC6113A4 and rs1_val == 0x5990FE96 #nosat<br>                                                                                          |[0x800012e8]:rol<br> [0x800012ec]:sw<br> |
| 203|[0x80003338]<br>0x4c96efdc|- rs2_val == 0xE42A809C and rs1_val == 0xC96EFDC4 #nosat<br>                                                                                          |[0x80001300]:rol<br> [0x80001304]:sw<br> |
| 204|[0x8000333c]<br>0xab8534c1|- rs2_val == 0xF1A25760 and rs1_val == 0xAB8534C1 #nosat<br>                                                                                          |[0x80001318]:rol<br> [0x8000131c]:sw<br> |
| 205|[0x80003340]<br>0x284e49a2|- rs2_val == 0xFB37BEC9 and rs1_val == 0xD1142724 #nosat<br>                                                                                          |[0x80001330]:rol<br> [0x80001334]:sw<br> |
| 206|[0x80003344]<br>0x979dcdfd|- rs2_val == 0xFCE51A66 and rs1_val == 0xF65E7737 #nosat<br>                                                                                          |[0x80001348]:rol<br> [0x8000134c]:sw<br> |
| 207|[0x80003348]<br>0xc16cbc21|- rs2_val == 0xFEDEBB9C and rs1_val == 0x16CBC21C #nosat<br>                                                                                          |[0x80001360]:rol<br> [0x80001364]:sw<br> |
| 208|[0x8000334c]<br>0x7537676f|- rs2_val == 0xFF69340A and rs1_val == 0xDBDD4DD9 #nosat<br>                                                                                          |[0x80001378]:rol<br> [0x8000137c]:sw<br> |
| 209|[0x80003350]<br>0xa774bd90|- rs2_val == 0xFF9CF3F4 and rs1_val == 0x4BD90A77 #nosat<br>                                                                                          |[0x80001390]:rol<br> [0x80001394]:sw<br> |
| 210|[0x80003354]<br>0x26ce75f1|- rs2_val == 0xFFC00793 and rs1_val == 0xCEBE24D9 #nosat<br>                                                                                          |[0x800013a8]:rol<br> [0x800013ac]:sw<br> |
| 211|[0x80003358]<br>0x0e0bd86a|- rs2_val == 0xFFEE1FC4 and rs1_val == 0xA0E0BD86 #nosat<br>                                                                                          |[0x800013c0]:rol<br> [0x800013c4]:sw<br> |
| 212|[0x8000335c]<br>0xb33cc279|- rs2_val == 0xFFF06038 and rs1_val == 0x3CC279B3 #nosat<br>                                                                                          |[0x800013d8]:rol<br> [0x800013dc]:sw<br> |
| 213|[0x80003360]<br>0xdcb3aa7c|- rs2_val == 0xFFF93D53 and rs1_val == 0x754F9B96 #nosat<br>                                                                                          |[0x800013f0]:rol<br> [0x800013f4]:sw<br> |
| 214|[0x80003364]<br>0x74530772|- rs2_val == 0xFFFC47E8 and rs1_val == 0x72745307 #nosat<br>                                                                                          |[0x80001408]:rol<br> [0x8000140c]:sw<br> |
| 215|[0x80003368]<br>0x72b9b58b|- rs2_val == 0xFFFE7302 and rs1_val == 0xDCAE6D62 #nosat<br>                                                                                          |[0x80001420]:rol<br> [0x80001424]:sw<br> |
| 216|[0x8000336c]<br>0x2c966d7c|- rs2_val == 0xFFFF1CE8 and rs1_val == 0x7C2C966D #nosat<br>                                                                                          |[0x80001438]:rol<br> [0x8000143c]:sw<br> |
| 217|[0x80003370]<br>0xed1d4b66|- rs2_val == 0xFFFFB5C6 and rs1_val == 0x9BB4752D #nosat<br>                                                                                          |[0x80001450]:rol<br> [0x80001454]:sw<br> |
| 218|[0x80003374]<br>0x7be082f1|- rs2_val == 0xFFFFDFA4 and rs1_val == 0x17BE082F #nosat<br>                                                                                          |[0x80001468]:rol<br> [0x8000146c]:sw<br> |
| 219|[0x80003378]<br>0xffa3a884|- rs2_val == 0xFFFFEF0B and rs1_val == 0x109FF475 #nosat<br>                                                                                          |[0x80001480]:rol<br> [0x80001484]:sw<br> |
| 220|[0x8000337c]<br>0x005cbf53|- rs2_val == 0xFFFFF43F and rs1_val == 0x00B97EA6 #nosat<br>                                                                                          |[0x80001498]:rol<br> [0x8000149c]:sw<br> |
| 221|[0x80003380]<br>0x5bb02fe5|- rs2_val == 0xFFFFFB4A and rs1_val == 0xF956EC0B #nosat<br>                                                                                          |[0x800014ac]:rol<br> [0x800014b0]:sw<br> |
| 222|[0x80003384]<br>0x0fc1afc7|- rs2_val == 0xFFFFFDA4 and rs1_val == 0x70FC1AFC #nosat<br>                                                                                          |[0x800014c0]:rol<br> [0x800014c4]:sw<br> |
| 223|[0x80003388]<br>0x4183731a|- rs2_val == 0xFFFFFECB and rs1_val == 0x6348306E #nosat<br>                                                                                          |[0x800014d4]:rol<br> [0x800014d8]:sw<br> |
| 224|[0x8000338c]<br>0x2b966b07|- rs2_val == 0xFFFFFF54 and rs1_val == 0x66B072B9 #nosat<br>                                                                                          |[0x800014e8]:rol<br> [0x800014ec]:sw<br> |
| 225|[0x80003390]<br>0xf045daff|- rs2_val == 0xFFFFFFA9 and rs1_val == 0x7FF822ED #nosat<br>                                                                                          |[0x800014fc]:rol<br> [0x80001500]:sw<br> |
| 226|[0x80003394]<br>0x48c5f4ff|- rs2_val == 0xFFFFFFC3 and rs1_val == 0xE918BE9F #nosat<br>                                                                                          |[0x80001510]:rol<br> [0x80001514]:sw<br> |
| 227|[0x80003398]<br>0x5d73fb72|- rs2_val == 0xFFFFFFE7 and rs1_val == 0xE4BAE7F6 #nosat<br>                                                                                          |[0x80001524]:rol<br> [0x80001528]:sw<br> |
| 228|[0x8000339c]<br>0x12dfbd35|- rs2_val == 0xFFFFFFF1 and rs1_val == 0xDE9A896F #nosat<br>                                                                                          |[0x80001538]:rol<br> [0x8000153c]:sw<br> |
| 229|[0x800033a0]<br>0x312881e5|- rs2_val == 0xFFFFFFF8 and rs1_val == 0x2881E531 #nosat<br>                                                                                          |[0x8000154c]:rol<br> [0x80001550]:sw<br> |
| 230|[0x800033a4]<br>0xd1475f78|- rs2_val == 0xFFFFFFFC and rs1_val == 0x1475F78D #nosat<br>                                                                                          |[0x80001560]:rol<br> [0x80001564]:sw<br> |
| 231|[0x800033a8]<br>0xf9673de3|- rs2_val == 0xFFFFFFFE and rs1_val == 0xE59CF78F #nosat<br>                                                                                          |[0x80001574]:rol<br> [0x80001578]:sw<br> |
| 232|[0x800033ac]<br>0x5b359942|- rs2_val == 0xFFFFFFFF and rs1_val == 0xB66B3284 #nosat<br>                                                                                          |[0x80001588]:rol<br> [0x8000158c]:sw<br> |
| 233|[0x800033b0]<br>0xe926192d|- rs1_val == 0x6F4930C9 and rs2_val == 0x39422745 #nosat<br>                                                                                          |[0x800015a0]:rol<br> [0x800015a4]:sw<br> |
| 234|[0x800033b4]<br>0x785d9746|- rs1_val == 0x85D97467 and rs2_val == 0x58FA6E1C #nosat<br>                                                                                          |[0x800015b8]:rol<br> [0x800015bc]:sw<br> |
| 235|[0x800033b8]<br>0x9278e15f|- rs1_val == 0xC70AFC93 and rs2_val == 0x2D143295 #nosat<br>                                                                                          |[0x800015d0]:rol<br> [0x800015d4]:sw<br> |
| 236|[0x800033bc]<br>0x1655fe91|- rs1_val == 0xE911655F and rs2_val == 0xD230B46C #nosat<br>                                                                                          |[0x800015e8]:rol<br> [0x800015ec]:sw<br> |
| 237|[0x800033c0]<br>0xe9561473|- rs1_val == 0xF4AB0A39 and rs2_val == 0x4D753AC1 #nosat<br>                                                                                          |[0x80001600]:rol<br> [0x80001604]:sw<br> |
| 238|[0x800033c4]<br>0xe2f52087|- rs1_val == 0xF8BD4821 and rs2_val == 0x1E9667C2 #nosat<br>                                                                                          |[0x80001618]:rol<br> [0x8000161c]:sw<br> |
| 239|[0x800033c8]<br>0xf9afcccf|- rs1_val == 0xFCD7E667 and rs2_val == 0xAE4839A1 #nosat<br>                                                                                          |[0x80001630]:rol<br> [0x80001634]:sw<br> |
| 240|[0x800033cc]<br>0xfe71cfdf|- rs1_val == 0xFE71CFDF and rs2_val == 0x6A013380 #nosat<br>                                                                                          |[0x80001648]:rol<br> [0x8000164c]:sw<br> |
| 241|[0x800033d0]<br>0x5dfe3823|- rs1_val == 0xFF1C11AE and rs2_val == 0x59432A19 #nosat<br>                                                                                          |[0x80001660]:rol<br> [0x80001664]:sw<br> |
| 242|[0x800033d4]<br>0x66bfe25e|- rs1_val == 0xFF89799A and rs2_val == 0xCEB506F6 #nosat<br>                                                                                          |[0x80001678]:rol<br> [0x8000167c]:sw<br> |
| 243|[0x800033d8]<br>0xc80b13ff|- rs1_val == 0xFFC80B13 and rs2_val == 0xC5EC6148 #nosat<br>                                                                                          |[0x80001690]:rol<br> [0x80001694]:sw<br> |
| 244|[0x800033dc]<br>0x23fff4a3|- rs1_val == 0xFFE94647 and rs2_val == 0x99EF1857 #nosat<br>                                                                                          |[0x800016a8]:rol<br> [0x800016ac]:sw<br> |
| 245|[0x800033e0]<br>0x9fffe4c7|- rs1_val == 0xFFF263CF and rs2_val == 0x14B91C79 #nosat<br>                                                                                          |[0x800016c0]:rol<br> [0x800016c4]:sw<br> |
| 246|[0x800033e4]<br>0x46687ffe|- rs1_val == 0xFFF919A1 and rs2_val == 0xA86B8A6E #nosat<br>                                                                                          |[0x800016d8]:rol<br> [0x800016dc]:sw<br> |
| 247|[0x800033e8]<br>0xfbd13bff|- rs1_val == 0xFFFDE89D and rs2_val == 0x08208D09 #nosat<br>                                                                                          |[0x800016f0]:rol<br> [0x800016f4]:sw<br> |
| 248|[0x800033ec]<br>0x7fff64e8|- rs1_val == 0xFFFEC9D0 and rs2_val == 0x69B1DCBF #nosat<br>                                                                                          |[0x80001708]:rol<br> [0x8000170c]:sw<br> |
| 249|[0x800033f0]<br>0xffeaaedf|- rs1_val == 0xFFFF5576 and rs2_val == 0x807DA245 #nosat<br>                                                                                          |[0x80001720]:rol<br> [0x80001724]:sw<br> |
| 250|[0x800033f4]<br>0x6fffffdb|- rs1_val == 0xFFFFB6DF and rs2_val == 0x95A4D257 #nosat<br>                                                                                          |[0x80001738]:rol<br> [0x8000173c]:sw<br> |
| 251|[0x800033f8]<br>0xfe2b0fff|- rs1_val == 0xFFFFC561 and rs2_val == 0x735C076B #nosat<br>                                                                                          |[0x80001750]:rol<br> [0x80001754]:sw<br> |
| 252|[0x800033fc]<br>0x7ffffaad|- rs1_val == 0xFFFFEAB5 and rs2_val == 0xE5F0307E #nosat<br>                                                                                          |[0x80001768]:rol<br> [0x8000176c]:sw<br> |
| 253|[0x80003400]<br>0xffffb017|- rs1_val == 0xFFFFF602 and rs2_val == 0xE8DAC663 #nosat<br>                                                                                          |[0x80001780]:rol<br> [0x80001784]:sw<br> |
| 254|[0x80003404]<br>0xfffc58ff|- rs1_val == 0xFFFFF8B1 and rs2_val == 0x0109C207 #nosat<br>                                                                                          |[0x80001794]:rol<br> [0x80001798]:sw<br> |
| 255|[0x80003408]<br>0xfffff941|- rs1_val == 0xFFFFFCA0 and rs2_val == 0x600FECC1 #nosat<br>                                                                                          |[0x800017a8]:rol<br> [0x800017ac]:sw<br> |
| 256|[0x8000340c]<br>0x9fffffd9|- rs1_val == 0xFFFFFECC and rs2_val == 0xFB7F6F5D #nosat<br>                                                                                          |[0x800017bc]:rol<br> [0x800017c0]:sw<br> |
| 257|[0x80003410]<br>0xbfffffdb|- rs1_val == 0xFFFFFF6E and rs2_val == 0x5CD2875E #nosat<br>                                                                                          |[0x800017d0]:rol<br> [0x800017d4]:sw<br> |
| 258|[0x80003414]<br>0xfff09fff|- rs1_val == 0xFFFFFF84 and rs2_val == 0xACCA7F0D #nosat<br>                                                                                          |[0x800017e4]:rol<br> [0x800017e8]:sw<br> |
| 259|[0x80003418]<br>0xffffddff|- rs1_val == 0xFFFFFFDD and rs2_val == 0x5AE6A228 #nosat<br>                                                                                          |[0x800017f8]:rol<br> [0x800017fc]:sw<br> |
| 260|[0x8000341c]<br>0xfff3ffff|- rs1_val == 0xFFFFFFE7 and rs2_val == 0xFF1E5BEF #nosat<br>                                                                                          |[0x8000180c]:rol<br> [0x80001810]:sw<br> |
| 261|[0x80003420]<br>0xfa7fffff|- rs1_val == 0xFFFFFFF4 and rs2_val == 0x137A9777 #nosat<br>                                                                                          |[0x80001820]:rol<br> [0x80001824]:sw<br> |
| 262|[0x80003424]<br>0xfd7fffff|- rs1_val == 0xFFFFFFFA and rs2_val == 0x854A9657 #nosat<br>                                                                                          |[0x80001834]:rol<br> [0x80001838]:sw<br> |
| 263|[0x80003428]<br>0xffffffef|- rs1_val == 0xFFFFFFFD and rs2_val == 0xCF84B683 #nosat<br>                                                                                          |[0x80001848]:rol<br> [0x8000184c]:sw<br> |
| 264|[0x8000342c]<br>0xfeffffff|- rs1_val == 0xFFFFFFFE and rs2_val == 0x93FDCAB8 #nosat<br>                                                                                          |[0x8000185c]:rol<br> [0x80001860]:sw<br> |
| 265|[0x80003430]<br>0xafc08ace|- rs2_val == 0x80000000 and rs1_val == 0xAFC08ACE #nosat<br>                                                                                          |[0x80001870]:rol<br> [0x80001874]:sw<br> |
| 266|[0x80003434]<br>0xaf6e9055|- rs2_val == 0x40000000 and rs1_val == 0xAF6E9055 #nosat<br>                                                                                          |[0x80001884]:rol<br> [0x80001888]:sw<br> |
| 267|[0x80003438]<br>0x5b130474|- rs2_val == 0xE0000000 and rs1_val == 0x5B130474 #nosat<br>                                                                                          |[0x80001898]:rol<br> [0x8000189c]:sw<br> |
| 268|[0x80003440]<br>0x4143da51|- rs2_val == 0xFB07C000 and rs1_val == 0x4143DA51 #nosat<br>                                                                                          |[0x800018c0]:rol<br> [0x800018c4]:sw<br> |
