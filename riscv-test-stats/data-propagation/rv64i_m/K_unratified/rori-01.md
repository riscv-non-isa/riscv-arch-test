
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002170')]      |
| SIG_REGION                | [('0x80004010', '0x80004920', '290 dwords')]      |
| COV_LABELS                | rori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/rori-01.S/ref.S    |
| Total Number of coverpoints| 360     |
| Total Coverpoints Hit     | 355      |
| Total Signature Updates   | 289      |
| STAT1                     | 289      |
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

|s.no|            signature             |                                                           coverpoints                                                            |                   code                   |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------|
|   1|[0x80004010]<br>0xffffffffffffffff|- opcode : rori<br> - rs1 : x22<br> - rd : x16<br> - rs1 != rd<br> - rs1_val == 0xFFFFFFFFFFFFFFFF and imm_val == 0x36 #nosat<br> |[0x8000039c]:rori<br> [0x800003a0]:sd<br> |
|   2|[0x80004018]<br>0x0000000000000000|- rs1 : x0<br> - rd : x0<br> - rs1 == rd<br>                                                                                      |[0x800003a8]:rori<br> [0x800003ac]:sd<br> |
|   3|[0x80004020]<br>0x12af8f73e9173332|- rs1 : x30<br> - rd : x25<br> - imm_val == 0x20 and rs1_val == 0xE917333212AF8F73 #nosat<br>                                     |[0x800003d0]:rori<br> [0x800003d4]:sd<br> |
|   4|[0x80004028]<br>0xbf65cc381e1007e8|- rs1 : x24<br> - rd : x4<br> - imm_val == 0x10 and rs1_val == 0xCC381E1007E8BF65 #nosat<br>                                      |[0x800003f8]:rori<br> [0x800003fc]:sd<br> |
|   5|[0x80004030]<br>0xf45328fae216dc58|- rs1 : x25<br> - rd : x20<br> - imm_val == 0x18 and rs1_val == 0xFAE216DC58F45328 #nosat<br>                                     |[0x80000420]:rori<br> [0x80000424]:sd<br> |
|   6|[0x80004038]<br>0x7c67895e6a56ae61|- rs1 : x2<br> - rd : x7<br> - imm_val == 0x1C and rs1_val == 0xE6A56AE617C67895 #nosat<br>                                       |[0x80000448]:rori<br> [0x8000044c]:sd<br> |
|   7|[0x80004040]<br>0x428254125abadf6f|- rs1 : x21<br> - rd : x24<br> - imm_val == 0x22 and rs1_val == 0x6AEB7DBD0A095049 #nosat<br>                                     |[0x80000470]:rori<br> [0x80000474]:sd<br> |
|   8|[0x80004048]<br>0x2a2fb2269b077dc6|- rs1 : x12<br> - rd : x1<br> - imm_val == 0x0D and rs1_val == 0xF644D360EFB8C545 #nosat<br>                                      |[0x80000498]:rori<br> [0x8000049c]:sd<br> |
|   9|[0x80004050]<br>0x0000000000000000|- rs1 : x19<br> - rd : x14<br> - rs1_val == 0x0000000000000000 and imm_val == 0x1E #nosat<br>                                     |[0x800004a4]:rori<br> [0x800004a8]:sd<br> |
|  10|[0x80004058]<br>0x0000000020000000|- rs1 : x29<br> - rd : x27<br> - rs1_val == 0x8000000000000000 and imm_val == 0x22 #nosat<br>                                     |[0x800004b4]:rori<br> [0x800004b8]:sd<br> |
|  11|[0x80004060]<br>0x0000c00000000000|- rs1 : x4<br> - rd : x22<br> - rs1_val == 0xC000000000000000 and imm_val == 0x10 #nosat<br>                                      |[0x800004c4]:rori<br> [0x800004c8]:sd<br> |
|  12|[0x80004068]<br>0x6000000000000000|- rs1 : x15<br> - rd : x30<br> - rs1_val == 0x6000000000000000 and imm_val == 0x00 #nosat<br>                                     |[0x800004d4]:rori<br> [0x800004d8]:sd<br> |
|  13|[0x80004070]<br>0x00000000f0000000|- rs1 : x10<br> - rd : x21<br> - rs1_val == 0xF000000000000000 and imm_val == 0x20 #nosat<br>                                     |[0x800004e4]:rori<br> [0x800004e8]:sd<br> |
|  14|[0x80004078]<br>0x0000000300000000|- rs1 : x6<br> - rd : x29<br> - rs1_val == 0x1800000000000000 and imm_val == 0x1B #nosat<br>                                      |[0x800004f4]:rori<br> [0x800004f8]:sd<br> |
|  15|[0x80004080]<br>0x0000000000000044|- rs1 : x3<br> - rd : x26<br> - rs1_val == 0x4400000000000000 and imm_val == 0x38 #nosat<br>                                      |[0x80000504]:rori<br> [0x80000508]:sd<br> |
|  16|[0x80004088]<br>0x01f0000000000000|- rs1 : x23<br> - rd : x15<br> - rs1_val == 0x3E00000000000000 and imm_val == 0x05 #nosat<br>                                     |[0x80000514]:rori<br> [0x80000518]:sd<br> |
|  17|[0x80004090]<br>0x0000035000000000|- rs1 : x16<br> - rd : x12<br> - rs1_val == 0x3500000000000000 and imm_val == 0x14 #nosat<br>                                     |[0x80000524]:rori<br> [0x80000528]:sd<br> |
|  18|[0x80004098]<br>0x800000000000006f|- rs1 : x31<br> - rd : x23<br> - rs1_val == 0x6F80000000000000 and imm_val == 0x38 #nosat<br>                                     |[0x80000534]:rori<br> [0x80000538]:sd<br> |
|  19|[0x800040a0]<br>0x0000000000027600|- rs1 : x5<br> - rd : x19<br> - rs1_val == 0x4EC0000000000000 and imm_val == 0x2D #nosat<br>                                      |[0x80000544]:rori<br> [0x80000548]:sd<br> |
|  20|[0x800040a8]<br>0xf100000000000000|- rs1 : x9<br> - rd : x28<br> - rs1_val == 0x1E20000000000000 and imm_val == 0x3D #nosat<br>                                      |[0x80000554]:rori<br> [0x80000558]:sd<br> |
|  21|[0x800040b0]<br>0x00000000c8800000|- rs1 : x26<br> - rd : x18<br> - rs1_val == 0x1910000000000000 and imm_val == 0x1D #nosat<br>                                     |[0x80000564]:rori<br> [0x80000568]:sd<br> |
|  22|[0x800040b8]<br>0x0000000002490000|- rs1 : x13<br> - rd : x3<br> - rs1_val == 0x1248000000000000 and imm_val == 0x23 #nosat<br>                                      |[0x80000574]:rori<br> [0x80000578]:sd<br> |
|  23|[0x800040c0]<br>0x00000000005fc200|- rs1 : x27<br> - rd : x10<br> - rs1_val == 0xBF84000000000000 and imm_val == 0x29 #nosat<br>                                     |[0x80000590]:rori<br> [0x80000594]:sd<br> |
|  24|[0x800040c8]<br>0x00001822c0000000|- rs1 : x11<br> - rd : x17<br> - rs1_val == 0xC116000000000000 and imm_val == 0x13 #nosat<br>                                     |[0x800005a4]:rori<br> [0x800005a8]:sd<br> |
|  25|[0x800040d0]<br>0x00000000000358c4|- rs1 : x18<br> - rd : x13<br> - rs1_val == 0xD631000000000000 and imm_val == 0x2E #nosat<br>                                     |[0x800005b8]:rori<br> [0x800005bc]:sd<br> |
|  26|[0x800040d8]<br>0x000000002f650000|- rs1 : x28<br> - rd : x9<br> - rs1_val == 0x17B2800000000000 and imm_val == 0x1F #nosat<br>                                      |[0x800005cc]:rori<br> [0x800005d0]:sd<br> |
|  27|[0x800040e0]<br>0x4ab4200000000000|- rs1 : x17<br> - rd : x5<br> - rs1_val == 0x9568400000000000 and imm_val == 0x01 #nosat<br>                                      |[0x800005e0]:rori<br> [0x800005e4]:sd<br> |
|  28|[0x800040e8]<br>0x00000000001160cc|- rs1 : x1<br> - rd : x11<br> - rs1_val == 0x8B06600000000000 and imm_val == 0x2B #nosat<br>                                      |[0x800005f4]:rori<br> [0x800005f8]:sd<br> |
|  29|[0x800040f0]<br>0xb93df00000000000|- rs1 : x20<br> - rd : x6<br> - rs1_val == 0xB93DF00000000000 and imm_val == 0x00 #nosat<br>                                      |[0x80000608]:rori<br> [0x8000060c]:sd<br> |
|  30|[0x800040f8]<br>0x000000088adb8000|- rs1 : x8<br> - rd : x2<br> - rs1_val == 0x88ADB80000000000 and imm_val == 0x1C #nosat<br>                                       |[0x8000061c]:rori<br> [0x80000620]:sd<br> |
|  31|[0x80004100]<br>0x9000000000038603|- rs1 : x14<br> - rd : x8<br> - rs1_val == 0xE180E40000000000 and imm_val == 0x2E #nosat<br>                                      |[0x80000630]:rori<br> [0x80000634]:sd<br> |
|  32|[0x80004108]<br>0x000006ae5bf00000|- rs1 : x7<br> - rd : x31<br> - rs1_val == 0xD5CB7E0000000000 and imm_val == 0x15 #nosat<br>                                      |[0x80000644]:rori<br> [0x80000648]:sd<br> |
|  33|[0x80004110]<br>0x21c1180000000005|- rs1_val == 0xA438230000000000 and imm_val == 0x3D #nosat<br>                                                                    |[0x80000658]:rori<br> [0x8000065c]:sd<br> |
|  34|[0x80004118]<br>0x000000000b9be488|- rs1_val == 0xB9BE488000000000 and imm_val == 0x24 #nosat<br>                                                                    |[0x8000066c]:rori<br> [0x80000670]:sd<br> |
|  35|[0x80004120]<br>0x4e8000000001cb57|- rs1_val == 0xE5ABA74000000000 and imm_val == 0x2F #nosat<br>                                                                    |[0x80000680]:rori<br> [0x80000684]:sd<br> |
|  36|[0x80004128]<br>0x03c8492e80000000|- rs1_val == 0xF2124BA000000000 and imm_val == 0x06 #nosat<br>                                                                    |[0x80000694]:rori<br> [0x80000698]:sd<br> |
|  37|[0x80004130]<br>0x0000000012dd7d8a|- rs1_val == 0x96EBEC5000000000 and imm_val == 0x23 #nosat<br>                                                                    |[0x800006a8]:rori<br> [0x800006ac]:sd<br> |
|  38|[0x80004138]<br>0x000000000d94a779|- rs1_val == 0x6CA53BC800000000 and imm_val == 0x23 #nosat<br>                                                                    |[0x800006bc]:rori<br> [0x800006c0]:sd<br> |
|  39|[0x80004140]<br>0x0000000035ff31c0|- rs1_val == 0x035FF31C00000000 and imm_val == 0x1C #nosat<br>                                                                    |[0x800006d0]:rori<br> [0x800006d4]:sd<br> |
|  40|[0x80004148]<br>0x000459c74ad00000|- rs1_val == 0x8B38E95A00000000 and imm_val == 0x0D #nosat<br>                                                                    |[0x800006e4]:rori<br> [0x800006e8]:sd<br> |
|  41|[0x80004150]<br>0x00000002c86eeec0|- rs1_val == 0x0B21BBBB00000000 and imm_val == 0x1A #nosat<br>                                                                    |[0x800006f8]:rori<br> [0x800006fc]:sd<br> |
|  42|[0x80004158]<br>0xbfff720000000271|- rs1_val == 0x9C6FFFDC80000000 and imm_val == 0x36 #nosat<br>                                                                    |[0x80000710]:rori<br> [0x80000714]:sd<br> |
|  43|[0x80004160]<br>0x1042fff7c8000000|- rs1_val == 0x8217FFBE40000000 and imm_val == 0x03 #nosat<br>                                                                    |[0x8000072c]:rori<br> [0x80000730]:sd<br> |
|  44|[0x80004168]<br>0xcd196e40000000c1|- rs1_val == 0x60E68CB720000000 and imm_val == 0x37 #nosat<br>                                                                    |[0x80000748]:rori<br> [0x8000074c]:sd<br> |
|  45|[0x80004170]<br>0x000003d740ac8040|- rs1_val == 0xF5D02B2010000000 and imm_val == 0x16 #nosat<br>                                                                    |[0x80000764]:rori<br> [0x80000768]:sd<br> |
|  46|[0x80004178]<br>0xa60e000000108137|- rs1_val == 0x4204DE9838000000 and imm_val == 0x2A #nosat<br>                                                                    |[0x80000780]:rori<br> [0x80000784]:sd<br> |
|  47|[0x80004180]<br>0x0003dac7c603d000|- rs1_val == 0xF6B1F180F4000000 and imm_val == 0x0E #nosat<br>                                                                    |[0x8000079c]:rori<br> [0x800007a0]:sd<br> |
|  48|[0x80004188]<br>0xbad0b30000007add|- rs1_val == 0xF5BB75A166000000 and imm_val == 0x31 #nosat<br>                                                                    |[0x800007b8]:rori<br> [0x800007bc]:sd<br> |
|  49|[0x80004190]<br>0xe5c0e4000002a96c|- rs1_val == 0xAA5B397039000000 and imm_val == 0x2E #nosat<br>                                                                    |[0x800007d4]:rori<br> [0x800007d8]:sd<br> |
|  50|[0x80004198]<br>0xaa400000073dead8|- rs1_val == 0x0E7BD5B154800000 and imm_val == 0x21 #nosat<br>                                                                    |[0x800007f0]:rori<br> [0x800007f4]:sd<br> |
|  51|[0x800041a0]<br>0x002de8a88c069000|- rs1_val == 0xB7A2A2301A400000 and imm_val == 0x0A #nosat<br>                                                                    |[0x8000080c]:rori<br> [0x80000810]:sd<br> |
|  52|[0x800041a8]<br>0xa0d7bdb0000014f7|- rs1_val == 0x29EF41AF7B600000 and imm_val == 0x31 #nosat<br>                                                                    |[0x80000828]:rori<br> [0x8000082c]:sd<br> |
|  53|[0x800041b0]<br>0xd8ab0bcefb00000d|- rs1_val == 0xDD8AB0BCEFB00000 and imm_val == 0x3C #nosat<br>                                                                    |[0x80000844]:rori<br> [0x80000848]:sd<br> |
|  54|[0x800041b8]<br>0xd9a21930400007d1|- rs1_val == 0xFA3B344326080000 and imm_val == 0x35 #nosat<br>                                                                    |[0x80000860]:rori<br> [0x80000864]:sd<br> |
|  55|[0x800041c0]<br>0x002fc18e1e554100|- rs1_val == 0xBF06387955040000 and imm_val == 0x0A #nosat<br>                                                                    |[0x80000884]:rori<br> [0x80000888]:sd<br> |
|  56|[0x800041c8]<br>0x01f527cf29e7e800|- rs1_val == 0x7D49F3CA79FA0000 and imm_val == 0x06 #nosat<br>                                                                    |[0x800008a8]:rori<br> [0x800008ac]:sd<br> |
|  57|[0x800041d0]<br>0x30000aab48a1c0f2|- rs1_val == 0xAAB48A1C0F230000 and imm_val == 0x14 #nosat<br>                                                                    |[0x800008cc]:rori<br> [0x800008d0]:sd<br> |
|  58|[0x800041d8]<br>0xc000512f2a4b9ae5|- rs1_val == 0xA25E549735CB8000 and imm_val == 0x11 #nosat<br>                                                                    |[0x800008f0]:rori<br> [0x800008f4]:sd<br> |
|  59|[0x800041e0]<br>0x00012790f25bc8d1|- rs1_val == 0x49E43C96F2344000 and imm_val == 0x0E #nosat<br>                                                                    |[0x80000914]:rori<br> [0x80000918]:sd<br> |
|  60|[0x800041e8]<br>0x598ba52aa880025c|- rs1_val == 0x971662E94AAA2000 and imm_val == 0x36 #nosat<br>                                                                    |[0x80000938]:rori<br> [0x8000093c]:sd<br> |
|  61|[0x800041f0]<br>0xd2b5000fa51cd1d4|- rs1_val == 0xFA51CD1D4D2B5000 and imm_val == 0x1C #nosat<br>                                                                    |[0x8000095c]:rori<br> [0x80000960]:sd<br> |
|  62|[0x800041f8]<br>0x01d787304c3405d0|- rs1_val == 0xEBC398261A02E800 and imm_val == 0x07 #nosat<br>                                                                    |[0x80000984]:rori<br> [0x80000988]:sd<br> |
|  63|[0x80004200]<br>0x800a669757394d80|- rs1_val == 0x5334BAB9CA6C0400 and imm_val == 0x0B #nosat<br>                                                                    |[0x800009ac]:rori<br> [0x800009b0]:sd<br> |
|  64|[0x80004208]<br>0x04c66778401d8266|- rs1_val == 0xEC133026333BC200 and imm_val == 0x2B #nosat<br>                                                                    |[0x800009d4]:rori<br> [0x800009d8]:sd<br> |
|  65|[0x80004210]<br>0x8e35804166388787|- rs1_val == 0x82CC710F0F1C6B00 and imm_val == 0x19 #nosat<br>                                                                    |[0x800009fc]:rori<br> [0x80000a00]:sd<br> |
|  66|[0x80004218]<br>0x4b3f201ea8f56531|- rs1_val == 0x7AA3D594C52CFC80 and imm_val == 0x1A #nosat<br>                                                                    |[0x80000a24]:rori<br> [0x80000a28]:sd<br> |
|  67|[0x80004220]<br>0x24fd306deb8053b7|- rs1_val == 0x29DB927E9836F5C0 and imm_val == 0x2F #nosat<br>                                                                    |[0x80000a4c]:rori<br> [0x80000a50]:sd<br> |
|  68|[0x80004228]<br>0x58380369663c772c|- rs1_val == 0x0DA598F1DCB160E0 and imm_val == 0x12 #nosat<br>                                                                    |[0x80000a74]:rori<br> [0x80000a78]:sd<br> |
|  69|[0x80004230]<br>0x65570e86a2d78e58|- rs1_val == 0xD45AF1CB0CAAE1D0 and imm_val == 0x1D #nosat<br>                                                                    |[0x80000a9c]:rori<br> [0x80000aa0]:sd<br> |
|  70|[0x80004238]<br>0x6cdf188c5009ba09|- rs1_val == 0x25B37C62314026E8 and imm_val == 0x3A #nosat<br>                                                                    |[0x80000ac4]:rori<br> [0x80000ac8]:sd<br> |
|  71|[0x80004240]<br>0xfdfd223fe4544fa3|- rs1_val == 0x7FBFA447FC8A89F4 and imm_val == 0x3D #nosat<br>                                                                    |[0x80000aec]:rori<br> [0x80000af0]:sd<br> |
|  72|[0x80004248]<br>0x61b339ff248174e7|- rs1_val == 0xC36673FE4902E9CE and imm_val == 0x01 #nosat<br>                                                                    |[0x80000b14]:rori<br> [0x80000b18]:sd<br> |
|  73|[0x80004250]<br>0xa6a797d76df44dcd|- rs1_val == 0x44DCDA6A797D76DF and imm_val == 0x2C #nosat<br>                                                                    |[0x80000b3c]:rori<br> [0x80000b40]:sd<br> |
|  74|[0x80004258]<br>0x2bf8620b27c3726f|- imm_val == 0x18 and rs1_val == 0x0B27C3726F2BF862 #nosat<br>                                                                    |[0x80000b5c]:rori<br> [0x80000b60]:sd<br> |
|  75|[0x80004260]<br>0x106b46762c7e01a1|- imm_val == 0x01 and rs1_val == 0x20D68CEC58FC0342 #nosat<br>                                                                    |[0x80000b84]:rori<br> [0x80000b88]:sd<br> |
|  76|[0x80004268]<br>0xb4b62c6d4ebc734d|- imm_val == 0x13 and rs1_val == 0x636A75E39A6DA5B1 #nosat<br>                                                                    |[0x80000bac]:rori<br> [0x80000bb0]:sd<br> |
|  77|[0x80004270]<br>0xc1bc00500111b66f|- imm_val == 0x37 and rs1_val == 0x37E0DE00280088DB #nosat<br>                                                                    |[0x80000bd4]:rori<br> [0x80000bd8]:sd<br> |
|  78|[0x80004278]<br>0x1e78394f7a3e1aee|- imm_val == 0x0F and rs1_val == 0x1CA7BD1F0D770F3C #nosat<br>                                                                    |[0x80000bfc]:rori<br> [0x80000c00]:sd<br> |
|  79|[0x80004280]<br>0xc784a098aa6d71b0|- imm_val == 0x1F and rs1_val == 0x5536B8D863C2504C #nosat<br>                                                                    |[0x80000c24]:rori<br> [0x80000c28]:sd<br> |
|  80|[0x80004288]<br>0x9cddc8118c363f7e|- imm_val == 0x3F and rs1_val == 0x4E6EE408C61B1FBF #nosat<br>                                                                    |[0x80000c4c]:rori<br> [0x80000c50]:sd<br> |
|  81|[0x80004290]<br>0x9610af0c988c7299|- rs1_val == 0xC215E193118E5332 and imm_val == 0x05 #nosat<br>                                                                    |[0x80000c74]:rori<br> [0x80000c78]:sd<br> |
|  82|[0x80004298]<br>0x182ebdd26becb96c|- rs1_val == 0x75EE935F65CB60C1 and imm_val == 0x0B #nosat<br>                                                                    |[0x80000c9c]:rori<br> [0x80000ca0]:sd<br> |
|  83|[0x800042a0]<br>0x626ce859bb09c161|- rs1_val == 0x09C161626CE859BB and imm_val == 0x28 #nosat<br>                                                                    |[0x80000cc4]:rori<br> [0x80000cc8]:sd<br> |
|  84|[0x800042a8]<br>0x175342f57c7a4053|- rs1_val == 0xA4053175342F57C7 and imm_val == 0x2C #nosat<br>                                                                    |[0x80000cec]:rori<br> [0x80000cf0]:sd<br> |
|  85|[0x800042b0]<br>0x401b225e4cf9bd26|- rs1_val == 0x499006C897933E6F and imm_val == 0x36 #nosat<br>                                                                    |[0x80000d14]:rori<br> [0x80000d18]:sd<br> |
|  86|[0x800042b8]<br>0xb60c943f8bbb0b94|- rs1_val == 0xC5DD85CA5B064A1F and imm_val == 0x1F #nosat<br>                                                                    |[0x80000d3c]:rori<br> [0x80000d40]:sd<br> |
|  87|[0x800042c0]<br>0x08c0acfdb30c3dc9|- rs1_val == 0x6CC30F7242302B3F and imm_val == 0x1E #nosat<br>                                                                    |[0x80000d64]:rori<br> [0x80000d68]:sd<br> |
|  88|[0x800042c8]<br>0x9c8e8ff5e3b7e4ed|- rs1_val == 0xAF1DBF276CE4747F and imm_val == 0x1B #nosat<br>                                                                    |[0x80000d8c]:rori<br> [0x80000d90]:sd<br> |
|  89|[0x800042d0]<br>0xde83047f92bc27a7|- rs1_val == 0x25784F4FBD0608FF and imm_val == 0x21 #nosat<br>                                                                    |[0x80000db4]:rori<br> [0x80000db8]:sd<br> |
|  90|[0x800042d8]<br>0xc85ff805a391b604|- rs1_val == 0x805A391B604C85FF and imm_val == 0x14 #nosat<br>                                                                    |[0x80000ddc]:rori<br> [0x80000de0]:sd<br> |
|  91|[0x800042e0]<br>0xfcc7eb77d4beb1bf|- rs1_val == 0xCC7EB77D4BEB1BFF and imm_val == 0x04 #nosat<br>                                                                    |[0x80000e04]:rori<br> [0x80000e08]:sd<br> |
|  92|[0x800042e8]<br>0x467dffead91ef28e|- rs1_val == 0xAB647BCA3919F7FF and imm_val == 0x1A #nosat<br>                                                                    |[0x80000e2c]:rori<br> [0x80000e30]:sd<br> |
|  93|[0x800042f0]<br>0xf1e7f8627b22fff7|- rs1_val == 0x7F1E7F8627B22FFF and imm_val == 0x3C #nosat<br>                                                                    |[0x80000e54]:rori<br> [0x80000e58]:sd<br> |
|  94|[0x800042f8]<br>0xb6805da7ffd475b5|- rs1_val == 0x51D6D6DA01769FFF and imm_val == 0x2A #nosat<br>                                                                    |[0x80000e7c]:rori<br> [0x80000e80]:sd<br> |
|  95|[0x80004300]<br>0xfd5a2038fda04bff|- rs1_val == 0xD5A2038FDA04BFFF and imm_val == 0x04 #nosat<br>                                                                    |[0x80000ea4]:rori<br> [0x80000ea8]:sd<br> |
|  96|[0x80004308]<br>0xfaefc0edfffde12a|- rs1_val == 0x784ABEBBF03B7FFF and imm_val == 0x2E #nosat<br>                                                                    |[0x80000ecc]:rori<br> [0x80000ed0]:sd<br> |
|  97|[0x80004310]<br>0xffa26cc47df40f7f|- rs1_val == 0x44D988FBE81EFFFF and imm_val == 0x09 #nosat<br>                                                                    |[0x80000ef4]:rori<br> [0x80000ef8]:sd<br> |
|  98|[0x80004318]<br>0x387c67fffda1d651|- rs1_val == 0x6875944E1F19FFFF and imm_val == 0x26 #nosat<br>                                                                    |[0x80000f1c]:rori<br> [0x80000f20]:sd<br> |
|  99|[0x80004320]<br>0xca40c7fffffeee8d|- rs1_val == 0xFF7746E52063FFFF and imm_val == 0x27 #nosat<br>                                                                    |[0x80000f3c]:rori<br> [0x80000f40]:sd<br> |
| 100|[0x80004328]<br>0x17b8b123a527ffff|- rs1_val == 0x17B8B123A527FFFF and imm_val == 0x00 #nosat<br>                                                                    |[0x80000f5c]:rori<br> [0x80000f60]:sd<br> |
| 101|[0x80004330]<br>0x4d1f11ffffee1120|- rs1_val == 0x70890268F88FFFFF and imm_val == 0x2B #nosat<br>                                                                    |[0x80000f7c]:rori<br> [0x80000f80]:sd<br> |
| 102|[0x80004338]<br>0xf6ddc74e6119ffff|- rs1_val == 0x6DDC74E6119FFFFF and imm_val == 0x04 #nosat<br>                                                                    |[0x80000f9c]:rori<br> [0x80000fa0]:sd<br> |
| 103|[0x80004340]<br>0xfffff9cdf10b9735|- rs1_val == 0x39BE2172E6BFFFFF and imm_val == 0x15 #nosat<br>                                                                    |[0x80000fbc]:rori<br> [0x80000fc0]:sd<br> |
| 104|[0x80004348]<br>0xffff264c9160a9ff|- rs1_val == 0xC99324582A7FFFFF and imm_val == 0x0E #nosat<br>                                                                    |[0x80000fdc]:rori<br> [0x80000fe0]:sd<br> |
| 105|[0x80004350]<br>0xffffff4b9a6c802e|- rs1_val == 0x4B9A6C802EFFFFFF and imm_val == 0x18 #nosat<br>                                                                    |[0x80000ffc]:rori<br> [0x80001000]:sd<br> |
| 106|[0x80004358]<br>0x81cb3ffffff2a824|- rs1_val == 0x9541240E59FFFFFF and imm_val == 0x2B #nosat<br>                                                                    |[0x8000101c]:rori<br> [0x80001020]:sd<br> |
| 107|[0x80004360]<br>0xfb3a8d61293fffff|- rs1_val == 0xB3A8D61293FFFFFF and imm_val == 0x04 #nosat<br>                                                                    |[0x8000103c]:rori<br> [0x80001040]:sd<br> |
| 108|[0x80004368]<br>0xfcf01bc9febfffff|- rs1_val == 0x9E03793FD7FFFFFF and imm_val == 0x05 #nosat<br>                                                                    |[0x8000105c]:rori<br> [0x80001060]:sd<br> |
| 109|[0x80004370]<br>0xffffffefe20e3d95|- rs1_val == 0x7F1071ECAFFFFFFF and imm_val == 0x1B #nosat<br>                                                                    |[0x8000107c]:rori<br> [0x80001080]:sd<br> |
| 110|[0x80004378]<br>0x7fffffffe29d545b|- rs1_val == 0xF8A75516DFFFFFFF and imm_val == 0x1E #nosat<br>                                                                    |[0x80001094]:rori<br> [0x80001098]:sd<br> |
| 111|[0x80004380]<br>0xffffdbb6a2a6dfff|- rs1_val == 0xB76D454DBFFFFFFF and imm_val == 0x11 #nosat<br>                                                                    |[0x800010b4]:rori<br> [0x800010b8]:sd<br> |
| 112|[0x80004388]<br>0x4e7affffffff6929|- rs1_val == 0xB494A73D7FFFFFFF and imm_val == 0x2F #nosat<br>                                                                    |[0x800010d4]:rori<br> [0x800010d8]:sd<br> |
| 113|[0x80004390]<br>0x594ffffffffc28cb|- rs1_val == 0xC28CB594FFFFFFFF and imm_val == 0x2C #nosat<br>                                                                    |[0x800010ec]:rori<br> [0x800010f0]:sd<br> |
| 114|[0x80004398]<br>0xffffffff69da8a2d|- rs1_val == 0x69DA8A2DFFFFFFFF and imm_val == 0x20 #nosat<br>                                                                    |[0x80001104]:rori<br> [0x80001108]:sd<br> |
| 115|[0x800043a0]<br>0xfffff40f27003fff|- rs1_val == 0x40F27003FFFFFFFF and imm_val == 0x14 #nosat<br>                                                                    |[0x8000111c]:rori<br> [0x80001120]:sd<br> |
| 116|[0x800043a8]<br>0xb8af97ffffffffb2|- rs1_val == 0xB2B8AF97FFFFFFFF and imm_val == 0x38 #nosat<br>                                                                    |[0x80001134]:rori<br> [0x80001138]:sd<br> |
| 117|[0x800043b0]<br>0x4892dfdffffffffe|- rs1_val == 0x24496FEFFFFFFFFF and imm_val == 0x3F #nosat<br>                                                                    |[0x8000114c]:rori<br> [0x80001150]:sd<br> |
| 118|[0x800043b8]<br>0xfef0a5feffffffff|- rs1_val == 0xDE14BFDFFFFFFFFF and imm_val == 0x05 #nosat<br>                                                                    |[0x80001164]:rori<br> [0x80001168]:sd<br> |
| 119|[0x800043c0]<br>0x3bbcfffffffffc02|- rs1_val == 0x008EEF3FFFFFFFFF and imm_val == 0x36 #nosat<br>                                                                    |[0x8000117c]:rori<br> [0x80001180]:sd<br> |
| 120|[0x800043c8]<br>0xc5ae0fffffffffed|- rs1_val == 0x6E2D707FFFFFFFFF and imm_val == 0x3B #nosat<br>                                                                    |[0x80001194]:rori<br> [0x80001198]:sd<br> |
| 121|[0x800043d0]<br>0xffff5dcf00ffffff|- rs1_val == 0x5DCF00FFFFFFFFFF and imm_val == 0x10 #nosat<br>                                                                    |[0x800011ac]:rori<br> [0x800011b0]:sd<br> |
| 122|[0x800043d8]<br>0xffffff3c5569ffff|- rs1_val == 0x3C5569FFFFFFFFFF and imm_val == 0x18 #nosat<br>                                                                    |[0x800011c4]:rori<br> [0x800011c8]:sd<br> |
| 123|[0x800043e0]<br>0xfffffffdf6a34fff|- rs1_val == 0x7DA8D3FFFFFFFFFF and imm_val == 0x1E #nosat<br>                                                                    |[0x800011dc]:rori<br> [0x800011e0]:sd<br> |
| 124|[0x800043e8]<br>0xffffe3a707ffffff|- rs1_val == 0xE3A707FFFFFFFFFF and imm_val == 0x10 #nosat<br>                                                                    |[0x800011f4]:rori<br> [0x800011f8]:sd<br> |
| 125|[0x800043f0]<br>0xfffffffff3603dff|- rs1_val == 0x9B01EFFFFFFFFFFF and imm_val == 0x23 #nosat<br>                                                                    |[0x8000120c]:rori<br> [0x80001210]:sd<br> |
| 126|[0x800043f8]<br>0xc047ffffffffffd7|- rs1_val == 0x5F011FFFFFFFFFFF and imm_val == 0x3A #nosat<br>                                                                    |[0x80001224]:rori<br> [0x80001228]:sd<br> |
| 127|[0x80004400]<br>0xfffffffffff96f6d|- rs1_val == 0x2DEDBFFFFFFFFFFF and imm_val == 0x2D #nosat<br>                                                                    |[0x8000123c]:rori<br> [0x80001240]:sd<br> |
| 128|[0x80004408]<br>0xfffffffff969bbff|- rs1_val == 0x2D377FFFFFFFFFFF and imm_val == 0x25 #nosat<br>                                                                    |[0x80001254]:rori<br> [0x80001258]:sd<br> |
| 129|[0x80004410]<br>0x44ffffffffffffad|- rs1_val == 0xAD44FFFFFFFFFFFF and imm_val == 0x38 #nosat<br>                                                                    |[0x8000126c]:rori<br> [0x80001270]:sd<br> |
| 130|[0x80004418]<br>0xffffb964ffffffff|- rs1_val == 0x72C9FFFFFFFFFFFF and imm_val == 0x11 #nosat<br>                                                                    |[0x80001284]:rori<br> [0x80001288]:sd<br> |
| 131|[0x80004420]<br>0xffffffffe8e9ffff|- rs1_val == 0xD1D3FFFFFFFFFFFF and imm_val == 0x21 #nosat<br>                                                                    |[0x8000129c]:rori<br> [0x800012a0]:sd<br> |
| 132|[0x80004428]<br>0xfffea0afffffffff|- rs1_val == 0x5057FFFFFFFFFFFF and imm_val == 0x0F #nosat<br>                                                                    |[0x800012b4]:rori<br> [0x800012b8]:sd<br> |
| 133|[0x80004430]<br>0x5ffffffffffffeba|- rs1_val == 0x5D2FFFFFFFFFFFFF and imm_val == 0x37 #nosat<br>                                                                    |[0x800012c8]:rori<br> [0x800012cc]:sd<br> |
| 134|[0x80004438]<br>0x7fffffffffffff97|- rs1_val == 0xE5DFFFFFFFFFFFFF and imm_val == 0x36 #nosat<br>                                                                    |[0x800012dc]:rori<br> [0x800012e0]:sd<br> |
| 135|[0x80004440]<br>0xfffffffecdffffff|- rs1_val == 0xD9BFFFFFFFFFFFFF and imm_val == 0x1D #nosat<br>                                                                    |[0x800012f0]:rori<br> [0x800012f4]:sd<br> |
| 136|[0x80004448]<br>0xffffffff237fffff|- rs1_val == 0x237FFFFFFFFFFFFF and imm_val == 0x20 #nosat<br>                                                                    |[0x80001304]:rori<br> [0x80001308]:sd<br> |
| 137|[0x80004450]<br>0xfffffffffffffee5|- rs1_val == 0x72FFFFFFFFFFFFFF and imm_val == 0x37 #nosat<br>                                                                    |[0x80001318]:rori<br> [0x8000131c]:sd<br> |
| 138|[0x80004458]<br>0xffffffffeeffffff|- rs1_val == 0xDDFFFFFFFFFFFFFF and imm_val == 0x21 #nosat<br>                                                                    |[0x8000132c]:rori<br> [0x80001330]:sd<br> |
| 139|[0x80004460]<br>0xffffd0ffffffffff|- rs1_val == 0x43FFFFFFFFFFFFFF and imm_val == 0x12 #nosat<br>                                                                    |[0x80001340]:rori<br> [0x80001344]:sd<br> |
| 140|[0x80004468]<br>0x93ffffffffffffff|- rs1_val == 0x27FFFFFFFFFFFFFF and imm_val == 0x01 #nosat<br>                                                                    |[0x80001354]:rori<br> [0x80001358]:sd<br> |
| 141|[0x80004470]<br>0xe9ffffffffffffff|- rs1_val == 0x4FFFFFFFFFFFFFFF and imm_val == 0x03 #nosat<br>                                                                    |[0x80001368]:rori<br> [0x8000136c]:sd<br> |
| 142|[0x80004478]<br>0xffffffe3ffffffff|- rs1_val == 0x1FFFFFFFFFFFFFFF and imm_val == 0x1B #nosat<br>                                                                    |[0x8000137c]:rori<br> [0x80001380]:sd<br> |
| 143|[0x80004480]<br>0xfffffe7fffffffff|- rs1_val == 0x3FFFFFFFFFFFFFFF and imm_val == 0x17 #nosat<br>                                                                    |[0x80001390]:rori<br> [0x80001394]:sd<br> |
| 144|[0x80004488]<br>0xffffdfffffffffff|- rs1_val == 0x7FFFFFFFFFFFFFFF and imm_val == 0x12 #nosat<br>                                                                    |[0x800013a4]:rori<br> [0x800013a8]:sd<br> |
| 145|[0x80004490]<br>0xffffffffffffffff|- rs1_val == 0xFFFFFFFFFFFFFFFF and imm_val == 0x17 #nosat<br>                                                                    |[0x800013b0]:rori<br> [0x800013b4]:sd<br> |
| 146|[0x80004498]<br>0x649e6c7a7e46b2e3|- imm_val == 0x22 and rs1_val == 0xF91ACB8D9279B1E9 #nosat<br>                                                                    |[0x800013d8]:rori<br> [0x800013dc]:sd<br> |
| 147|[0x800044a0]<br>0xdef7e905d4ec05a3|- imm_val == 0x13 and rs1_val == 0x482EA7602D1EF7BF #nosat<br>                                                                    |[0x80001400]:rori<br> [0x80001404]:sd<br> |
| 148|[0x800044a8]<br>0x3b47f855210e4338|- imm_val == 0x0B and rs1_val == 0x3FC2A9087219C1DA #nosat<br>                                                                    |[0x80001428]:rori<br> [0x8000142c]:sd<br> |
| 149|[0x800044b0]<br>0x511b41900043e3ef|- imm_val == 0x04 and rs1_val == 0x11B41900043E3EF5 #nosat<br>                                                                    |[0x80001450]:rori<br> [0x80001454]:sd<br> |
| 150|[0x800044b8]<br>0x7a8e81a0fab60773|- imm_val == 0x02 and rs1_val == 0xEA3A0683EAD81DCD #nosat<br>                                                                    |[0x80001478]:rori<br> [0x8000147c]:sd<br> |
| 151|[0x800044c0]<br>0x097d6c014ea17b38|- imm_val == 0x01 and rs1_val == 0x12FAD8029D42F670 #nosat<br>                                                                    |[0x800014a0]:rori<br> [0x800014a4]:sd<br> |
| 152|[0x800044c8]<br>0xfa285a0db869135c|- imm_val == 0x00 and rs1_val == 0xFA285A0DB869135C #nosat<br>                                                                    |[0x800014c8]:rori<br> [0x800014cc]:sd<br> |
| 153|[0x800044d0]<br>0x7a50fe148e55d12c|- rs1_val == 0x852395744B1E943F and imm_val == 0x16 #nosat<br>                                                                    |[0x800014f0]:rori<br> [0x800014f4]:sd<br> |
| 154|[0x800044d8]<br>0xaeea3485072621bd|- rs1_val == 0x6BBA8D2141C9886F and imm_val == 0x3E #nosat<br>                                                                    |[0x80001518]:rori<br> [0x8000151c]:sd<br> |
| 155|[0x800044e0]<br>0x5a4ecf42103f0f59|- rs1_val == 0x3D65693B3D0840FC and imm_val == 0x32 #nosat<br>                                                                    |[0x80001540]:rori<br> [0x80001544]:sd<br> |
| 156|[0x800044e8]<br>0x1bea859419e80319|- rs1_val == 0x19E803191BEA8594 and imm_val == 0x20 #nosat<br>                                                                    |[0x80001568]:rori<br> [0x8000156c]:sd<br> |
| 157|[0x800044f0]<br>0xf740611413335f24|- rs1_val == 0x0C2282666BE49EE8 and imm_val == 0x0D #nosat<br>                                                                    |[0x80001590]:rori<br> [0x80001594]:sd<br> |
| 158|[0x800044f8]<br>0x0401e18bab3875cc|- rs1_val == 0x07862EACE1D73010 and imm_val == 0x0A #nosat<br>                                                                    |[0x800015b8]:rori<br> [0x800015bc]:sd<br> |
| 159|[0x80004500]<br>0x0d3fd7eec39a019e|- rs1_val == 0x033C1A7FAFDD8734 and imm_val == 0x31 #nosat<br>                                                                    |[0x800015d8]:rori<br> [0x800015dc]:sd<br> |
| 160|[0x80004508]<br>0xa57558808253cade|- rs1_val == 0x0104A795BD4AEAB1 and imm_val == 0x19 #nosat<br>                                                                    |[0x80001600]:rori<br> [0x80001604]:sd<br> |
| 161|[0x80004510]<br>0x338ec0096c6c8b9b|- rs1_val == 0x0096C6C8B9B338EC and imm_val == 0x14 #nosat<br>                                                                    |[0x80001620]:rori<br> [0x80001624]:sd<br> |
| 162|[0x80004518]<br>0xd11cea6000eeaa0b|- rs1_val == 0x00775505E88E7530 and imm_val == 0x1F #nosat<br>                                                                    |[0x80001640]:rori<br> [0x80001644]:sd<br> |
| 163|[0x80004520]<br>0x2341263daa006ad3|- rs1_val == 0x00356991A0931ED5 and imm_val == 0x27 #nosat<br>                                                                    |[0x80001660]:rori<br> [0x80001664]:sd<br> |
| 164|[0x80004528]<br>0xa940aa002e828bbb|- rs1_val == 0x00174145DDD4A055 and imm_val == 0x17 #nosat<br>                                                                    |[0x80001680]:rori<br> [0x80001684]:sd<br> |
| 165|[0x80004530]<br>0xbf4f00078cfeea8a|- rs1_val == 0x000F19FDD5157E9E and imm_val == 0x11 #nosat<br>                                                                    |[0x800016a0]:rori<br> [0x800016a4]:sd<br> |
| 166|[0x80004538]<br>0x002eccd1048c7d40|- rs1_val == 0x0005D99A20918FA8 and imm_val == 0x3D #nosat<br>                                                                    |[0x800016c0]:rori<br> [0x800016c4]:sd<br> |
| 167|[0x80004540]<br>0x00cb01d7c9ffc240|- rs1_val == 0x00032C075F27FF09 and imm_val == 0x3A #nosat<br>                                                                    |[0x800016d8]:rori<br> [0x800016dc]:sd<br> |
| 168|[0x80004548]<br>0x79ce07f0ce1c0003|- rs1_val == 0x0001BCE703F8670E and imm_val == 0x2F #nosat<br>                                                                    |[0x800016f8]:rori<br> [0x800016fc]:sd<br> |
| 169|[0x80004550]<br>0x6adf17a400013716|- rs1_val == 0x00009B8B356F8BD2 and imm_val == 0x1F #nosat<br>                                                                    |[0x80001718]:rori<br> [0x8000171c]:sd<br> |
| 170|[0x80004558]<br>0xee20000a8a425947|- rs1_val == 0x0000545212CA3F71 and imm_val == 0x0B #nosat<br>                                                                    |[0x80001738]:rori<br> [0x8000173c]:sd<br> |
| 171|[0x80004560]<br>0x18486a46ecfa0000|- rs1_val == 0x00003090D48DD9F4 and imm_val == 0x31 #nosat<br>                                                                    |[0x80001758]:rori<br> [0x8000175c]:sd<br> |
| 172|[0x80004568]<br>0x76009ce172800007|- rs1_val == 0x00001DD8027385CA and imm_val == 0x2A #nosat<br>                                                                    |[0x80001770]:rori<br> [0x80001774]:sd<br> |
| 173|[0x80004570]<br>0x1b4b8f0e00000411|- rs1_val == 0x0000082236971E1C and imm_val == 0x21 #nosat<br>                                                                    |[0x80001788]:rori<br> [0x8000178c]:sd<br> |
| 174|[0x80004578]<br>0xe4fd8000011102b1|- rs1_val == 0x000004440AC793F6 and imm_val == 0x12 #nosat<br>                                                                    |[0x800017a0]:rori<br> [0x800017a4]:sd<br> |
| 175|[0x80004580]<br>0x6ea000003d5feef1|- rs1_val == 0x000003D5FEEF16EA and imm_val == 0x0C #nosat<br>                                                                    |[0x800017b8]:rori<br> [0x800017bc]:sd<br> |
| 176|[0x80004588]<br>0x0041cd7c46bcc000|- rs1_val == 0x0000010735F11AF3 and imm_val == 0x32 #nosat<br>                                                                    |[0x800017d0]:rori<br> [0x800017d4]:sd<br> |
| 177|[0x80004590]<br>0x0000002b3fdda78e|- rs1_val == 0x000000ACFF769E38 and imm_val == 0x02 #nosat<br>                                                                    |[0x800017e8]:rori<br> [0x800017ec]:sd<br> |
| 178|[0x80004598]<br>0xd914452228000001|- rs1_val == 0x000000764511488A and imm_val == 0x26 #nosat<br>                                                                    |[0x80001800]:rori<br> [0x80001804]:sd<br> |
| 179|[0x800045a0]<br>0x0000002dfd74106a|- rs1_val == 0x0000002DFD74106A and imm_val == 0x00 #nosat<br>                                                                    |[0x80001818]:rori<br> [0x8000181c]:sd<br> |
| 180|[0x800045a8]<br>0x000080ee9bbe0000|- rs1_val == 0x000000101DD377C0 and imm_val == 0x35 #nosat<br>                                                                    |[0x80001830]:rori<br> [0x80001834]:sd<br> |
| 181|[0x800045b0]<br>0x000535a958470000|- rs1_val == 0x0000000A6B52B08E and imm_val == 0x31 #nosat<br>                                                                    |[0x80001848]:rori<br> [0x8000184c]:sd<br> |
| 182|[0x800045b8]<br>0x66fb00000004fc3b|- rs1_val == 0x00000004FC3B66FB and imm_val == 0x10 #nosat<br>                                                                    |[0x80001860]:rori<br> [0x80001864]:sd<br> |
| 183|[0x800045c0]<br>0x8a6fd00000000272|- rs1_val == 0x00000002728A6FD0 and imm_val == 0x18 #nosat<br>                                                                    |[0x80001878]:rori<br> [0x8000187c]:sd<br> |
| 184|[0x800045c8]<br>0x9ca08c00000001ae|- rs1_val == 0x00000001AE9CA08C and imm_val == 0x18 #nosat<br>                                                                    |[0x80001890]:rori<br> [0x80001894]:sd<br> |
| 185|[0x800045d0]<br>0x26687c0000000330|- rs1_val == 0x00000000CC099A1F and imm_val == 0x16 #nosat<br>                                                                    |[0x800018a8]:rori<br> [0x800018ac]:sd<br> |
| 186|[0x800045d8]<br>0x0000000859be5600|- rs1_val == 0x0000000042CDF2B0 and imm_val == 0x3B #nosat<br>                                                                    |[0x800018b8]:rori<br> [0x800018bc]:sd<br> |
| 187|[0x800045e0]<br>0xa19000000002274e|- rs1_val == 0x000000002274EA19 and imm_val == 0x0C #nosat<br>                                                                    |[0x800018c8]:rori<br> [0x800018cc]:sd<br> |
| 188|[0x800045e8]<br>0xe2ca00000000241d|- rs1_val == 0x00000000120EF165 and imm_val == 0x0F #nosat<br>                                                                    |[0x800018d8]:rori<br> [0x800018dc]:sd<br> |
| 189|[0x800045f0]<br>0x000000d2454f2000|- rs1_val == 0x000000000D2454F2 and imm_val == 0x34 #nosat<br>                                                                    |[0x800018e8]:rori<br> [0x800018ec]:sd<br> |
| 190|[0x800045f8]<br>0x000c7d37dc000000|- rs1_val == 0x00000000063E9BEE and imm_val == 0x27 #nosat<br>                                                                    |[0x800018f8]:rori<br> [0x800018fc]:sd<br> |
| 191|[0x80004600]<br>0x00d31f3400000000|- rs1_val == 0x00000000034C7CD0 and imm_val == 0x22 #nosat<br>                                                                    |[0x80001908]:rori<br> [0x8000190c]:sd<br> |
| 192|[0x80004608]<br>0xbbb9880000000000|- rs1_val == 0x0000000001777310 and imm_val == 0x19 #nosat<br>                                                                    |[0x80001918]:rori<br> [0x8000191c]:sd<br> |
| 193|[0x80004610]<br>0x0000003445824000|- rs1_val == 0x0000000000D11609 and imm_val == 0x32 #nosat<br>                                                                    |[0x80001928]:rori<br> [0x8000192c]:sd<br> |
| 194|[0x80004618]<br>0x800000000001a02f|- rs1_val == 0x0000000000680BE0 and imm_val == 0x06 #nosat<br>                                                                    |[0x80001938]:rori<br> [0x8000193c]:sd<br> |
| 195|[0x80004620]<br>0x0000000000294b16|- rs1_val == 0x0000000000294B16 and imm_val == 0x00 #nosat<br>                                                                    |[0x80001948]:rori<br> [0x8000194c]:sd<br> |
| 196|[0x80004628]<br>0xc00000000004a346|- rs1_val == 0x0000000000128D1B and imm_val == 0x02 #nosat<br>                                                                    |[0x80001958]:rori<br> [0x8000195c]:sd<br> |
| 197|[0x80004630]<br>0x000044d090000000|- rs1_val == 0x0000000000089A12 and imm_val == 0x25 #nosat<br>                                                                    |[0x80001968]:rori<br> [0x8000196c]:sd<br> |
| 198|[0x80004638]<br>0x92d800000000002e|- rs1_val == 0x000000000005D25B and imm_val == 0x0D #nosat<br>                                                                    |[0x80001978]:rori<br> [0x8000197c]:sd<br> |
| 199|[0x80004640]<br>0x00003a2c30000000|- rs1_val == 0x000000000003A2C3 and imm_val == 0x24 #nosat<br>                                                                    |[0x80001988]:rori<br> [0x8000198c]:sd<br> |
| 200|[0x80004648]<br>0x00000102fd000000|- rs1_val == 0x00000000000102FD and imm_val == 0x28 #nosat<br>                                                                    |[0x80001998]:rori<br> [0x8000199c]:sd<br> |
| 201|[0x80004650]<br>0xacc0000000000029|- rs1_val == 0x000000000000A6B3 and imm_val == 0x0A #nosat<br>                                                                    |[0x800019a8]:rori<br> [0x800019ac]:sd<br> |
| 202|[0x80004658]<br>0x00000a4700000000|- rs1_val == 0x0000000000005238 and imm_val == 0x23 #nosat<br>                                                                    |[0x800019b8]:rori<br> [0x800019bc]:sd<br> |
| 203|[0x80004660]<br>0x8a80000000000008|- rs1_val == 0x000000000000222A and imm_val == 0x0A #nosat<br>                                                                    |[0x800019c8]:rori<br> [0x800019cc]:sd<br> |
| 204|[0x80004668]<br>0x0000008b08000000|- rs1_val == 0x0000000000001161 and imm_val == 0x25 #nosat<br>                                                                    |[0x800019d8]:rori<br> [0x800019dc]:sd<br> |
| 205|[0x80004670]<br>0x0006dc8000000000|- rs1_val == 0x0000000000000DB9 and imm_val == 0x19 #nosat<br>                                                                    |[0x800019e8]:rori<br> [0x800019ec]:sd<br> |
| 206|[0x80004678]<br>0x0000000260800000|- rs1_val == 0x00000000000004C1 and imm_val == 0x29 #nosat<br>                                                                    |[0x800019f4]:rori<br> [0x800019f8]:sd<br> |
| 207|[0x80004680]<br>0x0000000000000072|- rs1_val == 0x0000000000000390 and imm_val == 0x03 #nosat<br>                                                                    |[0x80001a00]:rori<br> [0x80001a04]:sd<br> |
| 208|[0x80004688]<br>0x0001d40000000000|- rs1_val == 0x00000000000001D4 and imm_val == 0x18 #nosat<br>                                                                    |[0x80001a0c]:rori<br> [0x80001a10]:sd<br> |
| 209|[0x80004690]<br>0xa700000000000000|- rs1_val == 0x00000000000000A7 and imm_val == 0x08 #nosat<br>                                                                    |[0x80001a18]:rori<br> [0x80001a1c]:sd<br> |
| 210|[0x80004698]<br>0x0007900000000000|- rs1_val == 0x0000000000000079 and imm_val == 0x14 #nosat<br>                                                                    |[0x80001a24]:rori<br> [0x80001a28]:sd<br> |
| 211|[0x800046a0]<br>0x00000000000b0000|- rs1_val == 0x000000000000002C and imm_val == 0x32 #nosat<br>                                                                    |[0x80001a30]:rori<br> [0x80001a34]:sd<br> |
| 212|[0x800046a8]<br>0xe800000000000000|- rs1_val == 0x000000000000001D and imm_val == 0x05 #nosat<br>                                                                    |[0x80001a3c]:rori<br> [0x80001a40]:sd<br> |
| 213|[0x800046b0]<br>0x0000000030000000|- rs1_val == 0x000000000000000C and imm_val == 0x26 #nosat<br>                                                                    |[0x80001a48]:rori<br> [0x80001a4c]:sd<br> |
| 214|[0x800046b8]<br>0x00000c0000000000|- rs1_val == 0x0000000000000006 and imm_val == 0x17 #nosat<br>                                                                    |[0x80001a54]:rori<br> [0x80001a58]:sd<br> |
| 215|[0x800046c0]<br>0x0000000000000030|- rs1_val == 0x0000000000000003 and imm_val == 0x3C #nosat<br>                                                                    |[0x80001a60]:rori<br> [0x80001a64]:sd<br> |
| 216|[0x800046c8]<br>0x0000010000000000|- rs1_val == 0x0000000000000001 and imm_val == 0x18 #nosat<br>                                                                    |[0x80001a6c]:rori<br> [0x80001a70]:sd<br> |
| 217|[0x800046d0]<br>0x0000000000000000|- rs1_val == 0x0000000000000000 and imm_val == 0x3B #nosat<br>                                                                    |[0x80001a78]:rori<br> [0x80001a7c]:sd<br> |
| 218|[0x800046d8]<br>0x52c006ffc7c6d0a3|- imm_val == 0x1C and rs1_val == 0xFC7C6D0A352C006F #nosat<br>                                                                    |[0x80001a98]:rori<br> [0x80001a9c]:sd<br> |
| 219|[0x800046e0]<br>0x220146a3673976ad|- imm_val == 0x2C and rs1_val == 0x976AD220146A3673 #nosat<br>                                                                    |[0x80001ac0]:rori<br> [0x80001ac4]:sd<br> |
| 220|[0x800046e8]<br>0xc22746624a53b9f8|- imm_val == 0x37 and rs1_val == 0xFC6113A3312529DC #nosat<br>                                                                    |[0x80001ae8]:rori<br> [0x80001aec]:sd<br> |
| 221|[0x800046f0]<br>0x8550136f46413fc4|- imm_val == 0x3B and rs1_val == 0x242A809B7A3209FE #nosat<br>                                                                    |[0x80001b10]:rori<br> [0x80001b14]:sd<br> |
| 222|[0x800046f8]<br>0x380a1764a104e66e|- imm_val == 0x3C and rs1_val == 0xE380A1764A104E66 #nosat<br>                                                                    |[0x80001b38]:rori<br> [0x80001b3c]:sd<br> |
| 223|[0x80004700]<br>0x8382f61b51545022|- imm_val == 0x3E and rs1_val == 0xA0E0BD86D4551408 #nosat<br>                                                                    |[0x80001b60]:rori<br> [0x80001b64]:sd<br> |
| 224|[0x80004708]<br>0x5fc1142610d836f1|- imm_val == 0x3F and rs1_val == 0xAFE08A13086C1B78 #nosat<br>                                                                    |[0x80001b88]:rori<br> [0x80001b8c]:sd<br> |
| 225|[0x80004710]<br>0xd9deac909f9e613c|- rs1_val == 0x3CC279B3BD59213F and imm_val == 0x29 #nosat<br>                                                                    |[0x80001bb0]:rori<br> [0x80001bb4]:sd<br> |
| 226|[0x80004718]<br>0xc2af32820c06ed8b|- rs1_val == 0x941060376C5E1579 and imm_val == 0x13 #nosat<br>                                                                    |[0x80001bd8]:rori<br> [0x80001bdc]:sd<br> |
| 227|[0x80004720]<br>0x7a8c843977dfc2f2|- rs1_val == 0xC9EA3210E5DF7F0B and imm_val == 0x3A #nosat<br>                                                                    |[0x80001c00]:rori<br> [0x80001c04]:sd<br> |
| 228|[0x80004728]<br>0x2beef07874f49ea9|- rs1_val == 0xE9E93D5257DDE0F0 and imm_val == 0x21 #nosat<br>                                                                    |[0x80001c28]:rori<br> [0x80001c2c]:sd<br> |
| 229|[0x80004730]<br>0x2471a0e32623f478|- rs1_val == 0xF048E341C64C47E8 and imm_val == 0x39 #nosat<br>                                                                    |[0x80001c50]:rori<br> [0x80001c54]:sd<br> |
| 230|[0x80004738]<br>0xd2e60247524901f2|- rs1_val == 0xF969730123A92480 and imm_val == 0x37 #nosat<br>                                                                    |[0x80001c78]:rori<br> [0x80001c7c]:sd<br> |
| 231|[0x80004740]<br>0xf0833873557473a3|- rs1_val == 0xFC20CE1CD55D1CE8 and imm_val == 0x3E #nosat<br>                                                                    |[0x80001ca0]:rori<br> [0x80001ca4]:sd<br> |
| 232|[0x80004748]<br>0xb5dd7149ba90bb7f|- rs1_val == 0xFED775C526EA42ED and imm_val == 0x3A #nosat<br>                                                                    |[0x80001cc0]:rori<br> [0x80001cc4]:sd<br> |
| 233|[0x80004750]<br>0x249fe03bf4619e4b|- rs1_val == 0xFF01DFA30CF25924 and imm_val == 0x0B #nosat<br>                                                                    |[0x80001ce0]:rori<br> [0x80001ce4]:sd<br> |
| 234|[0x80004758]<br>0x61ff912f0a7046ab|- rs1_val == 0xFF912F0A7046AB61 and imm_val == 0x08 #nosat<br>                                                                    |[0x80001d00]:rori<br> [0x80001d04]:sd<br> |
| 235|[0x80004760]<br>0xffca96c9d43db43f|- rs1_val == 0xFFCA96C9D43DB43F and imm_val == 0x00 #nosat<br>                                                                    |[0x80001d20]:rori<br> [0x80001d24]:sd<br> |
| 236|[0x80004768]<br>0x5a5a48ca09ad2fff|- rs1_val == 0xFFEB4B49194135A5 and imm_val == 0x35 #nosat<br>                                                                    |[0x80001d40]:rori<br> [0x80001d44]:sd<br> |
| 237|[0x80004770]<br>0xf1a2adb3a63fa4ff|- rs1_val == 0xFFF1A2ADB3A63FA4 and imm_val == 0x38 #nosat<br>                                                                    |[0x80001d60]:rori<br> [0x80001d64]:sd<br> |
| 238|[0x80004778]<br>0xffe0c1ba279855b3|- rs1_val == 0xFFF8306E89E6156C and imm_val == 0x3E #nosat<br>                                                                    |[0x80001d80]:rori<br> [0x80001d84]:sd<br> |
| 239|[0x80004780]<br>0x6ca22c13476fffda|- rs1_val == 0xFFFDA6CA22C13476 and imm_val == 0x2C #nosat<br>                                                                    |[0x80001da0]:rori<br> [0x80001da4]:sd<br> |
| 240|[0x80004788]<br>0xc0769593d2067fff|- rs1_val == 0xFFFE03B4AC9E9033 and imm_val == 0x33 #nosat<br>                                                                    |[0x80001dc0]:rori<br> [0x80001dc4]:sd<br> |
| 241|[0x80004790]<br>0xfffceb4c4047bad7|- rs1_val == 0xFFFF3AD31011EEB5 and imm_val == 0x3E #nosat<br>                                                                    |[0x80001de0]:rori<br> [0x80001de4]:sd<br> |
| 242|[0x80004798]<br>0xffff21e90a4bd153|- rs1_val == 0xFFFF90F48525E8A9 and imm_val == 0x3F #nosat<br>                                                                    |[0x80001e00]:rori<br> [0x80001e04]:sd<br> |
| 243|[0x800047a0]<br>0xaf1fe178fffff5b9|- rs1_val == 0xFFFFD6E6BC7F85E3 and imm_val == 0x22 #nosat<br>                                                                    |[0x80001e18]:rori<br> [0x80001e1c]:sd<br> |
| 244|[0x800047a8]<br>0xb183815fffff9fda|- rs1_val == 0xFFFFE7F6AC60E057 and imm_val == 0x1E #nosat<br>                                                                    |[0x80001e38]:rori<br> [0x80001e3c]:sd<br> |
| 245|[0x800047b0]<br>0xffffe250c7fb0301|- rs1_val == 0xFFFFF12863FD8180 and imm_val == 0x3F #nosat<br>                                                                    |[0x80001e50]:rori<br> [0x80001e54]:sd<br> |
| 246|[0x800047b8]<br>0x3cb0cfffffb5472b|- rs1_val == 0xFFFFFB5472B3CB0C and imm_val == 0x14 #nosat<br>                                                                    |[0x80001e68]:rori<br> [0x80001e6c]:sd<br> |
| 247|[0x800047c0]<br>0x9f0e42917ffffec6|- rs1_val == 0xFFFFFD8D3E1C8522 and imm_val == 0x21 #nosat<br>                                                                    |[0x80001e80]:rori<br> [0x80001e84]:sd<br> |
| 248|[0x800047c8]<br>0x8f54e77cdcfffffe|- rs1_val == 0xFFFFFE8F54E77CDC and imm_val == 0x28 #nosat<br>                                                                    |[0x80001e98]:rori<br> [0x80001e9c]:sd<br> |
| 249|[0x800047d0]<br>0xcffffff8245bda9b|- rs1_val == 0xFFFFFF048B7B5379 and imm_val == 0x05 #nosat<br>                                                                    |[0x80001eb0]:rori<br> [0x80001eb4]:sd<br> |
| 250|[0x800047d8]<br>0xffffff856f4930c9|- rs1_val == 0xFFFFFF856F4930C9 and imm_val == 0x00 #nosat<br>                                                                    |[0x80001ec8]:rori<br> [0x80001ecc]:sd<br> |
| 251|[0x800047e0]<br>0xee62ecba33ffffff|- rs1_val == 0xFFFFFFDCC5D97467 and imm_val == 0x29 #nosat<br>                                                                    |[0x80001ee0]:rori<br> [0x80001ee4]:sd<br> |
| 252|[0x800047e8]<br>0xffffff2e3857e49f|- rs1_val == 0xFFFFFFE5C70AFC93 and imm_val == 0x3D #nosat<br>                                                                    |[0x80001ef8]:rori<br> [0x80001efc]:sd<br> |
| 253|[0x800047f0]<br>0x45957fffffffdaa4|- rs1_val == 0xFFFFFFF6A911655F and imm_val == 0x16 #nosat<br>                                                                    |[0x80001f10]:rori<br> [0x80001f14]:sd<br> |
| 254|[0x800047f8]<br>0x5851cfffffffcba5|- rs1_val == 0xFFFFFFF974AB0A39 and imm_val == 0x15 #nosat<br>                                                                    |[0x80001f28]:rori<br> [0x80001f2c]:sd<br> |
| 255|[0x80004800]<br>0x375a3c80bfffffff|- rs1_val == 0xFFFFFFFCDD68F202 and imm_val == 0x22 #nosat<br>                                                                    |[0x80001f40]:rori<br> [0x80001f44]:sd<br> |
| 256|[0x80004808]<br>0xf52087fffffff892|- rs1_val == 0xFFFFFFFE24BD4821 and imm_val == 0x16 #nosat<br>                                                                    |[0x80001f58]:rori<br> [0x80001f5c]:sd<br> |
| 257|[0x80004810]<br>0xe7dafcccffffffff|- rs1_val == 0xFFFFFFFF3ED7E667 and imm_val == 0x23 #nosat<br>                                                                    |[0x80001f70]:rori<br> [0x80001f74]:sd<br> |
| 258|[0x80004818]<br>0xffffffdc38e7efff|- rs1_val == 0xFFFFFFFFB871CFDF and imm_val == 0x39 #nosat<br>                                                                    |[0x80001f80]:rori<br> [0x80001f84]:sd<br> |
| 259|[0x80004820]<br>0xffffffa538235dff|- rs1_val == 0xFFFFFFFFD29C11AE and imm_val == 0x37 #nosat<br>                                                                    |[0x80001f90]:rori<br> [0x80001f94]:sd<br> |
| 260|[0x80004828]<br>0x09799affffffffe1|- rs1_val == 0xFFFFFFFFE109799A and imm_val == 0x18 #nosat<br>                                                                    |[0x80001fa0]:rori<br> [0x80001fa4]:sd<br> |
| 261|[0x80004830]<br>0xb13fffffffff4e80|- rs1_val == 0xFFFFFFFFF4E80B13 and imm_val == 0x0C #nosat<br>                                                                    |[0x80001fb0]:rori<br> [0x80001fb4]:sd<br> |
| 262|[0x80004838]<br>0xfd4c5fffffffff36|- rs1_val == 0xFFFFFFFFF9B7EA62 and imm_val == 0x13 #nosat<br>                                                                    |[0x80001fc0]:rori<br> [0x80001fc4]:sd<br> |
| 263|[0x80004840]<br>0xfffff8a3ec71ffff|- rs1_val == 0xFFFFFFFFFC51F638 and imm_val == 0x2F #nosat<br>                                                                    |[0x80001fd0]:rori<br> [0x80001fd4]:sd<br> |
| 264|[0x80004848]<br>0xf3ffffffffffa498|- rs1_val == 0xFFFFFFFFFE9263CF and imm_val == 0x0A #nosat<br>                                                                    |[0x80001fe0]:rori<br> [0x80001fe4]:sd<br> |
| 265|[0x80004850]<br>0x11ffffffffff90b4|- rs1_val == 0xFFFFFFFFFF216823 and imm_val == 0x09 #nosat<br>                                                                    |[0x80001ff0]:rori<br> [0x80001ff4]:sd<br> |
| 266|[0x80004858]<br>0x8ffffffffff86143|- rs1_val == 0xFFFFFFFFFF861438 and imm_val == 0x04 #nosat<br>                                                                    |[0x80002000]:rori<br> [0x80002004]:sd<br> |
| 267|[0x80004860]<br>0xfffffffd8c9d0fff|- rs1_val == 0xFFFFFFFFFFD8C9D0 and imm_val == 0x34 #nosat<br>                                                                    |[0x80002010]:rori<br> [0x80002014]:sd<br> |
| 268|[0x80004868]<br>0x4d576ffffffffffe|- rs1_val == 0xFFFFFFFFFFE4D576 and imm_val == 0x14 #nosat<br>                                                                    |[0x80002020]:rori<br> [0x80002024]:sd<br> |
| 269|[0x80004870]<br>0xfffff8c633ffffff|- rs1_val == 0xFFFFFFFFFFF18C67 and imm_val == 0x29 #nosat<br>                                                                    |[0x80002030]:rori<br> [0x80002034]:sd<br> |
| 270|[0x80004878]<br>0x98fffffffffffbb9|- rs1_val == 0xFFFFFFFFFFFBB998 and imm_val == 0x08 #nosat<br>                                                                    |[0x80002040]:rori<br> [0x80002044]:sd<br> |
| 271|[0x80004880]<br>0xfffffffffe12b0ff|- rs1_val == 0xFFFFFFFFFFFC2561 and imm_val == 0x39 #nosat<br>                                                                    |[0x80002050]:rori<br> [0x80002054]:sd<br> |
| 272|[0x80004888]<br>0xfffbaad7ffffffff|- rs1_val == 0xFFFFFFFFFFFEEAB5 and imm_val == 0x1E #nosat<br>                                                                    |[0x80002060]:rori<br> [0x80002064]:sd<br> |
| 273|[0x80004890]<br>0xfffffc1947ffffff|- rs1_val == 0xFFFFFFFFFFFF0651 and imm_val == 0x26 #nosat<br>                                                                    |[0x80002070]:rori<br> [0x80002074]:sd<br> |
| 274|[0x80004898]<br>0xff90e4ffffffffff|- rs1_val == 0xFFFFFFFFFFFF90E4 and imm_val == 0x18 #nosat<br>                                                                    |[0x80002080]:rori<br> [0x80002084]:sd<br> |
| 275|[0x800048a0]<br>0xffffffffffffca23|- rs1_val == 0xFFFFFFFFFFFFCA23 and imm_val == 0x00 #nosat<br>                                                                    |[0x80002090]:rori<br> [0x80002094]:sd<br> |
| 276|[0x800048a8]<br>0xffffffffe2a0ffff|- rs1_val == 0xFFFFFFFFFFFFE2A0 and imm_val == 0x30 #nosat<br>                                                                    |[0x800020a0]:rori<br> [0x800020a4]:sd<br> |
| 277|[0x800048b0]<br>0xffffcb33ffffffff|- rs1_val == 0xFFFFFFFFFFFFF2CC and imm_val == 0x1E #nosat<br>                                                                    |[0x800020b0]:rori<br> [0x800020b4]:sd<br> |
| 278|[0x800048b8]<br>0xfd5a7fffffffffff|- rs1_val == 0xFFFFFFFFFFFFFAB4 and imm_val == 0x11 #nosat<br>                                                                    |[0x800020bc]:rori<br> [0x800020c0]:sd<br> |
| 279|[0x800048c0]<br>0xfffffff3bbffffff|- rs1_val == 0xFFFFFFFFFFFFFCEE and imm_val == 0x26 #nosat<br>                                                                    |[0x800020d0]:rori<br> [0x800020d4]:sd<br> |
| 280|[0x800048c8]<br>0xffffff027fffffff|- rs1_val == 0xFFFFFFFFFFFFFE04 and imm_val == 0x21 #nosat<br>                                                                    |[0x800020dc]:rori<br> [0x800020e0]:sd<br> |
| 281|[0x800048d0]<br>0xffffffffff2affff|- rs1_val == 0xFFFFFFFFFFFFFF2A and imm_val == 0x30 #nosat<br>                                                                    |[0x800020e8]:rori<br> [0x800020ec]:sd<br> |
| 282|[0x800048d8]<br>0xffceffffffffffff|- rs1_val == 0xFFFFFFFFFFFFFF9D and imm_val == 0x11 #nosat<br>                                                                    |[0x800020f4]:rori<br> [0x800020f8]:sd<br> |
| 283|[0x800048e0]<br>0xffffffffff1fffff|- rs1_val == 0xFFFFFFFFFFFFFFC7 and imm_val == 0x2E #nosat<br>                                                                    |[0x80002100]:rori<br> [0x80002104]:sd<br> |
| 284|[0x800048e8]<br>0xffffffc9ffffffff|- rs1_val == 0xFFFFFFFFFFFFFFE4 and imm_val == 0x1F #nosat<br>                                                                    |[0x8000210c]:rori<br> [0x80002110]:sd<br> |
| 285|[0x800048f0]<br>0xffffffffffffffcb|- rs1_val == 0xFFFFFFFFFFFFFFF2 and imm_val == 0x3E #nosat<br>                                                                    |[0x80002118]:rori<br> [0x8000211c]:sd<br> |
| 286|[0x800048f8]<br>0xffff8fffffffffff|- rs1_val == 0xFFFFFFFFFFFFFFF8 and imm_val == 0x14 #nosat<br>                                                                    |[0x80002124]:rori<br> [0x80002128]:sd<br> |
| 287|[0x80004900]<br>0xfffffffffffffff7|- rs1_val == 0xFFFFFFFFFFFFFFFD and imm_val == 0x3E #nosat<br>                                                                    |[0x80002130]:rori<br> [0x80002134]:sd<br> |
| 288|[0x80004908]<br>0x7fffffffffffffff|- rs1_val == 0xFFFFFFFFFFFFFFFE and imm_val == 0x01 #nosat<br>                                                                    |[0x8000213c]:rori<br> [0x80002140]:sd<br> |
| 289|[0x80004910]<br>0xcadb5bec61250888|- imm_val == 0x00 and rs1_val == 0xCADB5BEC61250888 #nosat<br>                                                                    |[0x80002164]:rori<br> [0x80002168]:sd<br> |
