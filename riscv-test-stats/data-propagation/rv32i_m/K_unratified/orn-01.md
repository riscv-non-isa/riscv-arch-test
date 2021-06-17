
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
| COV_LABELS                | orn      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/orn-01.S/ref.S    |
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
      [0x800018a4]:orn
      [0x800018a8]:sw
 -- Signature Address: 0x8000343c Data: 0xffae0fff
 -- Redundant Coverpoints hit by the op
      - opcode : orn
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0x45D1F000 and rs1_val == 0xDF880B11 #nosat






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

|s.no|        signature         |                                                                       coverpoints                                                                       |                  code                   |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------|
|   1|[0x80003010]<br>0xffffffff|- opcode : orn<br> - rs1 : x21<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_val == 0xFFFFFFFF and rs2_val == 0x08577EB1 #nosat<br>    |[0x8000010c]:orn<br> [0x80000110]:sw<br> |
|   2|[0x80003014]<br>0xffffffff|- rs1 : x15<br> - rs2 : x2<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs2_val == 0x00000000 and rs1_val == 0x4FFE831A #nosat<br>                        |[0x80000120]:orn<br> [0x80000124]:sw<br> |
|   3|[0x80003018]<br>0xffffffff|- rs1 : x29<br> - rs2 : x29<br> - rd : x11<br> - rs1 == rs2 != rd<br>                                                                                    |[0x80000138]:orn<br> [0x8000013c]:sw<br> |
|   4|[0x8000301c]<br>0xbfffffff|- rs1 : x31<br> - rs2 : x4<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 0x40000000 and rs1_val == 0xAF6E9055 #nosat<br> |[0x8000014c]:orn<br> [0x80000150]:sw<br> |
|   5|[0x80003020]<br>0xffffffff|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br>                                                                                    |[0x80000164]:orn<br> [0x80000168]:sw<br> |
|   6|[0x80003024]<br>0x7fffffff|- rs1 : x6<br> - rs2 : x11<br> - rd : x9<br> - rs2_val == 0x90000000 and rs1_val == 0x3EEA126E #nosat<br>                                                |[0x80000178]:orn<br> [0x8000017c]:sw<br> |
|   7|[0x80003028]<br>0xdfffffff|- rs1 : x3<br> - rs2 : x13<br> - rd : x6<br> - rs2_val == 0xB8000000 and rs1_val == 0x9C734D77 #nosat<br>                                                |[0x8000018c]:orn<br> [0x80000190]:sw<br> |
|   8|[0x8000302c]<br>0x5bffffff|- rs1 : x22<br> - rs2 : x17<br> - rd : x10<br> - rs2_val == 0xB4000000 and rs1_val == 0x5A694BCA #nosat<br>                                              |[0x800001a0]:orn<br> [0x800001a4]:sw<br> |
|   9|[0x80003030]<br>0xedffffff|- rs1 : x23<br> - rs2 : x7<br> - rd : x3<br> - rs2_val == 0x3E000000 and rs1_val == 0xED52E4CA #nosat<br>                                                |[0x800001b4]:orn<br> [0x800001b8]:sw<br> |
|  10|[0x80003034]<br>0xb5ffffff|- rs1 : x26<br> - rs2 : x31<br> - rd : x29<br> - rs2_val == 0xFB000000 and rs1_val == 0xB5CB2A93 #nosat<br>                                              |[0x800001c8]:orn<br> [0x800001cc]:sw<br> |
|  11|[0x80003038]<br>0xbf7fffff|- rs1 : x24<br> - rs2 : x18<br> - rd : x16<br> - rs2_val == 0x68800000 and rs1_val == 0x29324E16 #nosat<br>                                              |[0x800001dc]:orn<br> [0x800001e0]:sw<br> |
|  12|[0x8000303c]<br>0xffffffff|- rs1 : x4<br> - rs2 : x0<br> - rd : x13<br>                                                                                                             |[0x800001f0]:orn<br> [0x800001f4]:sw<br> |
|  13|[0x80003040]<br>0xaf9fffff|- rs1 : x13<br> - rs2 : x22<br> - rd : x31<br> - rs2_val == 0x5CE00000 and rs1_val == 0x8E92E1B8 #nosat<br>                                              |[0x80000204]:orn<br> [0x80000208]:sw<br> |
|  14|[0x80003044]<br>0xb6afffff|- rs1 : x30<br> - rs2 : x20<br> - rd : x23<br> - rs2_val == 0x49F00000 and rs1_val == 0x96A3B48B #nosat<br>                                              |[0x80000218]:orn<br> [0x8000021c]:sw<br> |
|  15|[0x80003048]<br>0xae2fffff|- rs1 : x1<br> - rs2 : x8<br> - rd : x22<br> - rs2_val == 0x53D80000 and rs1_val == 0x0A095049 #nosat<br>                                                |[0x8000022c]:orn<br> [0x80000230]:sw<br> |
|  16|[0x8000304c]<br>0xff7fffff|- rs1 : x5<br> - rs2 : x16<br> - rd : x17<br> - rs2_val == 0x2EC40000 and rs1_val == 0x6F6E71B7 #nosat<br>                                               |[0x80000240]:orn<br> [0x80000244]:sw<br> |
|  17|[0x80003050]<br>0x737dffff|- rs1 : x28<br> - rs2 : x19<br> - rd : x8<br> - rs2_val == 0x8E860000 and rs1_val == 0x236CC43D #nosat<br>                                               |[0x80000254]:orn<br> [0x80000258]:sw<br> |
|  18|[0x80003054]<br>0xf2edffff|- rs1 : x19<br> - rs2 : x21<br> - rd : x4<br> - rs2_val == 0x6FBF0000 and rs1_val == 0xE2ED8971 #nosat<br>                                               |[0x80000270]:orn<br> [0x80000274]:sw<br> |
|  19|[0x80003058]<br>0xcefb7fff|- rs1 : x12<br> - rs2 : x27<br> - rd : x2<br> - rs2_val == 0x354E8000 and rs1_val == 0x06FA7B3E #nosat<br>                                               |[0x80000284]:orn<br> [0x80000288]:sw<br> |
|  20|[0x8000305c]<br>0x45fbffff|- rs1 : x14<br> - rs2 : x24<br> - rd : x1<br> - rs2_val == 0xFB07C000 and rs1_val == 0x4143DA51 #nosat<br>                                               |[0x80000298]:orn<br> [0x8000029c]:sw<br> |
|  21|[0x80003060]<br>0xeac7dfff|- rs1 : x20<br> - rs2 : x10<br> - rd : x14<br> - rs2_val == 0xDFFA2000 and rs1_val == 0xCAC78511 #nosat<br>                                              |[0x800002ac]:orn<br> [0x800002b0]:sw<br> |
|  22|[0x80003064]<br>0x00000000|- rs1 : x18<br> - rs2 : x14<br> - rd : x0<br> - rs2_val == 0x45D1F000 and rs1_val == 0xDF880B11 #nosat<br>                                               |[0x800002c0]:orn<br> [0x800002c4]:sw<br> |
|  23|[0x80003068]<br>0xffb757ff|- rs1 : x17<br> - rs2 : x5<br> - rd : x7<br> - rs2_val == 0x9069A800 and rs1_val == 0xBD230058 #nosat<br>                                                |[0x800002d8]:orn<br> [0x800002dc]:sw<br> |
|  24|[0x8000306c]<br>0xfa5f7bff|- rs1 : x27<br> - rs2 : x15<br> - rd : x28<br> - rs2_val == 0xF5B1B400 and rs1_val == 0xF2597377 #nosat<br>                                              |[0x800002f0]:orn<br> [0x800002f4]:sw<br> |
|  25|[0x80003070]<br>0xfbcf7fff|- rs1 : x8<br> - rs2 : x28<br> - rd : x5<br> - rs2_val == 0x06B6DA00 and rs1_val == 0x5A8E7F31 #nosat<br>                                                |[0x80000308]:orn<br> [0x8000030c]:sw<br> |
|  26|[0x80003074]<br>0x7a7f2fff|- rs1 : x2<br> - rs2 : x6<br> - rd : x20<br> - rs2_val == 0xBFB0F100 and rs1_val == 0x7A3621F5 #nosat<br>                                                |[0x80000320]:orn<br> [0x80000324]:sw<br> |
|  27|[0x80003078]<br>0x3fff7f7f|- rs1 : x10<br> - rs2 : x9<br> - rd : x24<br> - rs2_val == 0xD838C880 and rs1_val == 0x1E3C492C #nosat<br>                                               |[0x80000338]:orn<br> [0x8000033c]:sw<br> |
|  28|[0x8000307c]<br>0xf7fbf5bf|- rs1 : x11<br> - rs2 : x1<br> - rd : x18<br> - rs2_val == 0x5C46AEC0 and rs1_val == 0xD4FAF4B1 #nosat<br>                                               |[0x80000350]:orn<br> [0x80000354]:sw<br> |
|  29|[0x80003080]<br>0x37a579df|- rs1 : x7<br> - rs2 : x3<br> - rd : x19<br> - rs2_val == 0xCF7AC620 and rs1_val == 0x27A16894 #nosat<br>                                                |[0x80000368]:orn<br> [0x8000036c]:sw<br> |
|  30|[0x80003084]<br>0xfa3ff9bf|- rs1 : x16<br> - rs2 : x30<br> - rd : x26<br> - rs2_val == 0x05C2F650 and rs1_val == 0x0A3EF19E #nosat<br>                                              |[0x80000380]:orn<br> [0x80000384]:sw<br> |
|  31|[0x80003088]<br>0x113afa77|- rs1 : x0<br> - rs2 : x26<br> - rd : x27<br>                                                                                                            |[0x80000394]:orn<br> [0x80000398]:sw<br> |
|  32|[0x8000308c]<br>0x77ff9f77|- rs1 : x9<br> - rs2 : x23<br> - rd : x21<br> - rs2_val == 0xCA7160CC and rs1_val == 0x577F8847 #nosat<br>                                               |[0x800003ac]:orn<br> [0x800003b0]:sw<br> |
|  33|[0x80003090]<br>0x9f5eff5f|- rs2_val == 0x60E30DA2 and rs1_val == 0x9B5EAF0A #nosat<br>                                                                                             |[0x800003c4]:orn<br> [0x800003c8]:sw<br> |
|  34|[0x80003094]<br>0xdd3fbfe6|- rs2_val == 0x76F86039 and rs1_val == 0x5D3BBCE0 #nosat<br>                                                                                             |[0x800003dc]:orn<br> [0x800003e0]:sw<br> |
|  35|[0x80003098]<br>0x02efcd17|- rs1_val == 0x00000000 and rs2_val == 0xFD1032E8 #nosat<br>                                                                                             |[0x800003f0]:orn<br> [0x800003f4]:sw<br> |
|  36|[0x8000309c]<br>0x84db93e8|- rs1_val == 0x80000000 and rs2_val == 0x7B246C17 #nosat<br>                                                                                             |[0x80000404]:orn<br> [0x80000408]:sw<br> |
|  37|[0x800030a0]<br>0xe90c110e|- rs1_val == 0x40000000 and rs2_val == 0x56F3EEF1 #nosat<br>                                                                                             |[0x80000418]:orn<br> [0x8000041c]:sw<br> |
|  38|[0x800030a4]<br>0xaa6dcd9f|- rs1_val == 0xA0000000 and rs2_val == 0x75923260 #nosat<br>                                                                                             |[0x8000042c]:orn<br> [0x80000430]:sw<br> |
|  39|[0x800030a8]<br>0x562cf783|- rs1_val == 0x10000000 and rs2_val == 0xB9D3087C #nosat<br>                                                                                             |[0x80000440]:orn<br> [0x80000444]:sw<br> |
|  40|[0x800030ac]<br>0xb9342caa|- rs1_val == 0xA8000000 and rs2_val == 0x46CBD355 #nosat<br>                                                                                             |[0x80000454]:orn<br> [0x80000458]:sw<br> |
|  41|[0x800030b0]<br>0xfde918c2|- rs1_val == 0xE4000000 and rs2_val == 0x4616E73D #nosat<br>                                                                                             |[0x80000468]:orn<br> [0x8000046c]:sw<br> |
|  42|[0x800030b4]<br>0xff35138e|- rs1_val == 0x8E000000 and rs2_val == 0x8CCAEC71 #nosat<br>                                                                                             |[0x8000047c]:orn<br> [0x80000480]:sw<br> |
|  43|[0x800030b8]<br>0x7788bfab|- rs1_val == 0x13000000 and rs2_val == 0x9B774054 #nosat<br>                                                                                             |[0x80000490]:orn<br> [0x80000494]:sw<br> |
|  44|[0x800030bc]<br>0x9ba032e7|- rs1_val == 0x8B800000 and rs2_val == 0x6D5FCD18 #nosat<br>                                                                                             |[0x800004a4]:orn<br> [0x800004a8]:sw<br> |
|  45|[0x800030c0]<br>0xffe90a9e|- rs1_val == 0x7EC00000 and rs2_val == 0x0696F561 #nosat<br>                                                                                             |[0x800004b8]:orn<br> [0x800004bc]:sw<br> |
|  46|[0x800030c4]<br>0xbde1671d|- rs1_val == 0x3DA00000 and rs2_val == 0x6E1E98E2 #nosat<br>                                                                                             |[0x800004cc]:orn<br> [0x800004d0]:sw<br> |
|  47|[0x800030c8]<br>0xf2124958|- rs1_val == 0x20100000 and rs2_val == 0x2DEDB6A7 #nosat<br>                                                                                             |[0x800004e0]:orn<br> [0x800004e4]:sw<br> |
|  48|[0x800030cc]<br>0xdbf8d8d7|- rs1_val == 0x98380000 and rs2_val == 0x3C272728 #nosat<br>                                                                                             |[0x800004f4]:orn<br> [0x800004f8]:sw<br> |
|  49|[0x800030d0]<br>0xb0fe38c2|- rs1_val == 0x80F40000 and rs2_val == 0x4F55C73D #nosat<br>                                                                                             |[0x80000508]:orn<br> [0x8000050c]:sw<br> |
|  50|[0x800030d4]<br>0x4f56a885|- rs1_val == 0x43560000 and rs2_val == 0xB0AB577A #nosat<br>                                                                                             |[0x8000051c]:orn<br> [0x80000520]:sw<br> |
|  51|[0x800030d8]<br>0xffab28a1|- rs1_val == 0x62A90000 and rs2_val == 0x42F5D75E #nosat<br>                                                                                             |[0x80000530]:orn<br> [0x80000534]:sw<br> |
|  52|[0x800030dc]<br>0x663fe7da|- rs1_val == 0x60348000 and rs2_val == 0xB9F09825 #nosat<br>                                                                                             |[0x80000544]:orn<br> [0x80000548]:sw<br> |
|  53|[0x800030e0]<br>0x7ef7e6b0|- rs1_val == 0x5EF6C000 and rs2_val == 0x9BFAD94F #nosat<br>                                                                                             |[0x80000558]:orn<br> [0x8000055c]:sw<br> |
|  54|[0x800030e4]<br>0x7fff7227|- rs1_val == 0x79DF6000 and rs2_val == 0x98918DD8 #nosat<br>                                                                                             |[0x8000056c]:orn<br> [0x80000570]:sw<br> |
|  55|[0x800030e8]<br>0xe67ef0b8|- rs1_val == 0x864C1000 and rs2_val == 0x9B811F47 #nosat<br>                                                                                             |[0x80000580]:orn<br> [0x80000584]:sw<br> |
|  56|[0x800030ec]<br>0x7f7ef84f|- rs1_val == 0x735CB800 and rs2_val == 0xD0D18FB0 #nosat<br>                                                                                             |[0x80000598]:orn<br> [0x8000059c]:sw<br> |
|  57|[0x800030f0]<br>0xaf77dc6f|- rs1_val == 0x29554400 and rs2_val == 0x71992790 #nosat<br>                                                                                             |[0x800005b0]:orn<br> [0x800005b4]:sw<br> |
|  58|[0x800030f4]<br>0xfdb76ffc|- rs1_val == 0xA9A56A00 and rs2_val == 0x8248F803 #nosat<br>                                                                                             |[0x800005c8]:orn<br> [0x800005cc]:sw<br> |
|  59|[0x800030f8]<br>0xd7c2df8c|- rs1_val == 0xC3405D00 and rs2_val == 0xEB3D7873 #nosat<br>                                                                                             |[0x800005e0]:orn<br> [0x800005e4]:sw<br> |
|  60|[0x800030fc]<br>0x395dc0a1|- rs1_val == 0x394D8080 and rs2_val == 0xD7A7BF5E #nosat<br>                                                                                             |[0x800005f8]:orn<br> [0x800005fc]:sw<br> |
|  61|[0x80003100]<br>0xee67fbf0|- rs1_val == 0xC6677840 and rs2_val == 0xD1BA5C0F #nosat<br>                                                                                             |[0x80000610]:orn<br> [0x80000614]:sw<br> |
|  62|[0x80003104]<br>0x7e79cffb|- rs1_val == 0x70598E60 and rs2_val == 0xD19E3224 #nosat<br>                                                                                             |[0x80000628]:orn<br> [0x8000062c]:sw<br> |
|  63|[0x80003108]<br>0xdaadff9b|- rs1_val == 0x98A59F90 and rs2_val == 0x35D30D74 #nosat<br>                                                                                             |[0x80000640]:orn<br> [0x80000644]:sw<br> |
|  64|[0x8000310c]<br>0xdf5edfbe|- rs1_val == 0xD306DEB8 and rs2_val == 0x70A76E49 #nosat<br>                                                                                             |[0x80000658]:orn<br> [0x8000065c]:sw<br> |
|  65|[0x80003110]<br>0x78b2577e|- rs1_val == 0x18A01374 and rs2_val == 0x9FCDB9E1 #nosat<br>                                                                                             |[0x80000670]:orn<br> [0x80000674]:sw<br> |
|  66|[0x80003114]<br>0xe37676ee|- rs1_val == 0xC3667402 and rs2_val == 0x5FEFE911 #nosat<br>                                                                                             |[0x80000688]:orn<br> [0x8000068c]:sw<br> |
|  67|[0x80003118]<br>0xff7d77ff|- rs1_val == 0x797D76DF and rs2_val == 0x598B88DB #nosat<br>                                                                                             |[0x800006a0]:orn<br> [0x800006a4]:sw<br> |
|  68|[0x8000311c]<br>0xf7ff6f9f|- rs2_val == 0x0C04F662 and rs1_val == 0xB7E7669E #nosat<br>                                                                                             |[0x800006b8]:orn<br> [0x800006bc]:sw<br> |
|  69|[0x80003120]<br>0xf2ff372e|- rs2_val == 0xCD41CAD1 and rs1_val == 0xD24F0724 #nosat<br>                                                                                             |[0x800006d0]:orn<br> [0x800006d4]:sw<br> |
|  70|[0x80003124]<br>0xfdfc6ba7|- rs2_val == 0x1203965B and rs1_val == 0x585022A3 #nosat<br>                                                                                             |[0x800006e8]:orn<br> [0x800006ec]:sw<br> |
|  71|[0x80003128]<br>0xefefbfda|- rs2_val == 0x7A9AC0A7 and rs1_val == 0xEE8F948A #nosat<br>                                                                                             |[0x80000700]:orn<br> [0x80000704]:sw<br> |
|  72|[0x8000312c]<br>0xf757fbd9|- rs2_val == 0x2AA8E42F and rs1_val == 0x2655FA99 #nosat<br>                                                                                             |[0x80000718]:orn<br> [0x8000071c]:sw<br> |
|  73|[0x80003130]<br>0xdef6a7a3|- rs2_val == 0x211D785F and rs1_val == 0x0C96A183 #nosat<br>                                                                                             |[0x80000730]:orn<br> [0x80000734]:sw<br> |
|  74|[0x80003134]<br>0xaefb3df4|- rs2_val == 0x59DDE33F and rs1_val == 0x88F931F4 #nosat<br>                                                                                             |[0x80000748]:orn<br> [0x8000074c]:sw<br> |
|  75|[0x80003138]<br>0xefebfde2|- rs2_val == 0x711E627F and rs1_val == 0x6F2BF862 #nosat<br>                                                                                             |[0x80000760]:orn<br> [0x80000764]:sw<br> |
|  76|[0x8000313c]<br>0xfe7cb7a5|- rs2_val == 0x19835AFF and rs1_val == 0x5C6C32A5 #nosat<br>                                                                                             |[0x80000778]:orn<br> [0x8000077c]:sw<br> |
|  77|[0x80003140]<br>0xfffcc342|- rs2_val == 0x088B3DFF and rs1_val == 0x58FC0342 #nosat<br>                                                                                             |[0x80000790]:orn<br> [0x80000794]:sw<br> |
|  78|[0x80003144]<br>0x67fa7de3|- rs2_val == 0x9A6DA3FF and rs1_val == 0x636A75E3 #nosat<br>                                                                                             |[0x800007a8]:orn<br> [0x800007ac]:sw<br> |
|  79|[0x80003148]<br>0xcedf2c28|- rs2_val == 0x37E0D7FF and rs1_val == 0x4ED62428 #nosat<br>                                                                                             |[0x800007c0]:orn<br> [0x800007c4]:sw<br> |
|  80|[0x8000314c]<br>0xf3f73745|- rs2_val == 0x5E59CFFF and rs1_val == 0xD2D12745 #nosat<br>                                                                                             |[0x800007d8]:orn<br> [0x800007dc]:sw<br> |
|  81|[0x80003150]<br>0x2fff6f3c|- rs2_val == 0xDD129FFF and rs1_val == 0x0D770F3C #nosat<br>                                                                                             |[0x800007f0]:orn<br> [0x800007f4]:sw<br> |
|  82|[0x80003154]<br>0x7bd1ecfb|- rs2_val == 0x872EBFFF and rs1_val == 0x2311ACFB #nosat<br>                                                                                             |[0x80000808]:orn<br> [0x8000080c]:sw<br> |
|  83|[0x80003158]<br>0xaff9bbbc|- rs2_val == 0x55367FFF and rs1_val == 0x0FB13BBC #nosat<br>                                                                                             |[0x80000820]:orn<br> [0x80000824]:sw<br> |
|  84|[0x8000315c]<br>0x8ffd2307|- rs2_val == 0xFDD2FFFF and rs1_val == 0x8DFC2307 #nosat<br>                                                                                             |[0x80000838]:orn<br> [0x8000083c]:sw<br> |
|  85|[0x80003160]<br>0xff52be6d|- rs2_val == 0x30BDFFFF and rs1_val == 0x7312BE6D #nosat<br>                                                                                             |[0x80000850]:orn<br> [0x80000854]:sw<br> |
|  86|[0x80003164]<br>0xdebf1fbf|- rs2_val == 0xA743FFFF and rs1_val == 0xC61B1FBF #nosat<br>                                                                                             |[0x80000868]:orn<br> [0x8000086c]:sw<br> |
|  87|[0x80003168]<br>0xeffa5a4f|- rs2_val == 0x9987FFFF and rs1_val == 0xEBDA5A4F #nosat<br>                                                                                             |[0x80000880]:orn<br> [0x80000884]:sw<br> |
|  88|[0x8000316c]<br>0xee75e193|- rs2_val == 0x118FFFFF and rs1_val == 0xC215E193 #nosat<br>                                                                                             |[0x80000898]:orn<br> [0x8000089c]:sw<br> |
|  89|[0x80003170]<br>0xffee935f|- rs2_val == 0x65DFFFFF and rs1_val == 0x75EE935F #nosat<br>                                                                                             |[0x800008b0]:orn<br> [0x800008b4]:sw<br> |
|  90|[0x80003174]<br>0x9bc16162|- rs2_val == 0x6CBFFFFF and rs1_val == 0x09C16162 #nosat<br>                                                                                             |[0x800008c8]:orn<br> [0x800008cc]:sw<br> |
|  91|[0x80003178]<br>0xef853175|- rs2_val == 0x347FFFFF and rs1_val == 0xA4053175 #nosat<br>                                                                                             |[0x800008e0]:orn<br> [0x800008e4]:sw<br> |
|  92|[0x8000317c]<br>0x7b9006c8|- rs2_val == 0xC4FFFFFF and rs1_val == 0x499006C8 #nosat<br>                                                                                             |[0x800008f8]:orn<br> [0x800008fc]:sw<br> |
|  93|[0x80003180]<br>0xbe5b3eee|- rs2_val == 0x41FFFFFF and rs1_val == 0x3C5B3EEE #nosat<br>                                                                                             |[0x80000910]:orn<br> [0x80000914]:sw<br> |
|  94|[0x80003184]<br>0xdd5fd86a|- rs2_val == 0x6BFFFFFF and rs1_val == 0xD95FD86A #nosat<br>                                                                                             |[0x80000928]:orn<br> [0x8000092c]:sw<br> |
|  95|[0x80003188]<br>0x7d784f4f|- rs2_val == 0x87FFFFFF and rs1_val == 0x25784F4F #nosat<br>                                                                                             |[0x80000940]:orn<br> [0x80000944]:sw<br> |
|  96|[0x8000318c]<br>0x382018fa|- rs2_val == 0xCFFFFFFF and rs1_val == 0x082018FA #nosat<br>                                                                                             |[0x80000958]:orn<br> [0x8000095c]:sw<br> |
|  97|[0x80003190]<br>0x750cc530|- rs2_val == 0x9FFFFFFF and rs1_val == 0x350CC530 #nosat<br>                                                                                             |[0x80000970]:orn<br> [0x80000974]:sw<br> |
|  98|[0x80003194]<br>0xf966a24e|- rs2_val == 0x3FFFFFFF and rs1_val == 0x7966A24E #nosat<br>                                                                                             |[0x80000988]:orn<br> [0x8000098c]:sw<br> |
|  99|[0x80003198]<br>0xd1d6d6da|- rs2_val == 0x7FFFFFFF and rs1_val == 0x51D6D6DA #nosat<br>                                                                                             |[0x800009a0]:orn<br> [0x800009a4]:sw<br> |
| 100|[0x8000319c]<br>0xd5a2038f|- rs2_val == 0xFFFFFFFF and rs1_val == 0xD5A2038F #nosat<br>                                                                                             |[0x800009b4]:orn<br> [0x800009b8]:sw<br> |
| 101|[0x800031a0]<br>0xff7f66fe|- rs1_val == 0xFF7746E6 and rs2_val == 0x4F829B65 #nosat<br>                                                                                             |[0x800009cc]:orn<br> [0x800009d0]:sw<br> |
| 102|[0x800031a4]<br>0xffbf7f6f|- rs1_val == 0xF89A7241 and rs2_val == 0x00C2F091 #nosat<br>                                                                                             |[0x800009e4]:orn<br> [0x800009e8]:sw<br> |
| 103|[0x800031a8]<br>0x5fbb6fbf|- rs1_val == 0x11B36A93 and rs2_val == 0xB1F5D853 #nosat<br>                                                                                             |[0x800009fc]:orn<br> [0x80000a00]:sw<br> |
| 104|[0x800031ac]<br>0xcfd3fedf|- rs1_val == 0xC9932457 and rs2_val == 0x39BE2172 #nosat<br>                                                                                             |[0x80000a14]:orn<br> [0x80000a18]:sw<br> |
| 105|[0x800031b0]<br>0xcf9fee9f|- rs1_val == 0x4B9A6C8F and rs2_val == 0x316039EE #nosat<br>                                                                                             |[0x80000a2c]:orn<br> [0x80000a30]:sw<br> |
| 106|[0x800031b4]<br>0xbddf779f|- rs1_val == 0x9541241F and rs2_val == 0x5761A866 #nosat<br>                                                                                             |[0x80000a44]:orn<br> [0x80000a48]:sw<br> |
| 107|[0x800031b8]<br>0xf6bf3fbf|- rs1_val == 0x94B431BF and rs2_val == 0x09E4D1F4 #nosat<br>                                                                                             |[0x80000a5c]:orn<br> [0x80000a60]:sw<br> |
| 108|[0x800031bc]<br>0xfdffefff|- rs1_val == 0xDC8FE97F and rs2_val == 0x9E03793F #nosat<br>                                                                                             |[0x80000a74]:orn<br> [0x80000a78]:sw<br> |
| 109|[0x800031c0]<br>0xb9efceff|- rs1_val == 0xB903CEFF and rs2_val == 0x7F1071EC #nosat<br>                                                                                             |[0x80000a8c]:orn<br> [0x80000a90]:sw<br> |
| 110|[0x800031c4]<br>0xf595a7ff|- rs1_val == 0xB494A5FF and rs2_val == 0x9A7EF9E4 #nosat<br>                                                                                             |[0x80000aa4]:orn<br> [0x80000aa8]:sw<br> |
| 111|[0x800031c8]<br>0xe6ffa7ff|- rs1_val == 0xE2DD83FF and rs2_val == 0x59C05BB9 #nosat<br>                                                                                             |[0x80000abc]:orn<br> [0x80000ac0]:sw<br> |
| 112|[0x800031cc]<br>0xbbbfffff|- rs1_val == 0xBBAFD7FF and rs2_val == 0xDE451397 #nosat<br>                                                                                             |[0x80000ad4]:orn<br> [0x80000ad8]:sw<br> |
| 113|[0x800031d0]<br>0xff5dcfff|- rs1_val == 0xCE5C4FFF and rs2_val == 0x40F27005 #nosat<br>                                                                                             |[0x80000aec]:orn<br> [0x80000af0]:sw<br> |
| 114|[0x800031d4]<br>0xfbb7dfff|- rs1_val == 0x39935FFF and rs2_val == 0x24496FE3 #nosat<br>                                                                                             |[0x80000b04]:orn<br> [0x80000b08]:sw<br> |
| 115|[0x800031d8]<br>0xefffffff|- rs1_val == 0xEED7BFFF and rs2_val == 0xDE14BFF2 #nosat<br>                                                                                             |[0x80000b1c]:orn<br> [0x80000b20]:sw<br> |
| 116|[0x800031dc]<br>0x47ff7fff|- rs1_val == 0x008E7FFF and rs2_val == 0xB808A677 #nosat<br>                                                                                             |[0x80000b34]:orn<br> [0x80000b38]:sw<br> |
| 117|[0x800031e0]<br>0x9bceffff|- rs1_val == 0x12C2FFFF and rs2_val == 0x76B1FD3D #nosat<br>                                                                                             |[0x80000b4c]:orn<br> [0x80000b50]:sw<br> |
| 118|[0x800031e4]<br>0xe3b5ffff|- rs1_val == 0xE3A5FFFF and rs2_val == 0x5DCF019D #nosat<br>                                                                                             |[0x80000b64]:orn<br> [0x80000b68]:sw<br> |
| 119|[0x800031e8]<br>0xbb4bffff|- rs1_val == 0x9B03FFFF and rs2_val == 0x47B7097B #nosat<br>                                                                                             |[0x80000b7c]:orn<br> [0x80000b80]:sw<br> |
| 120|[0x800031ec]<br>0xdf67ffff|- rs1_val == 0x5F07FFFF and rs2_val == 0x759F1B43 #nosat<br>                                                                                             |[0x80000b94]:orn<br> [0x80000b98]:sw<br> |
| 121|[0x800031f0]<br>0xb7cfffff|- rs1_val == 0x33CFFFFF and rs2_val == 0x5B331999 #nosat<br>                                                                                             |[0x80000bac]:orn<br> [0x80000bb0]:sw<br> |
| 122|[0x800031f4]<br>0xf2dfffff|- rs1_val == 0x709FFFFF and rs2_val == 0x2D37DE81 #nosat<br>                                                                                             |[0x80000bc4]:orn<br> [0x80000bc8]:sw<br> |
| 123|[0x800031f8]<br>0xd3ffffff|- rs1_val == 0xD1BFFFFF and rs2_val == 0xFCB627AF #nosat<br>                                                                                             |[0x80000bdc]:orn<br> [0x80000be0]:sw<br> |
| 124|[0x800031fc]<br>0xebffffff|- rs1_val == 0xAB7FFFFF and rs2_val == 0x1E0B4EE5 #nosat<br>                                                                                             |[0x80000bf4]:orn<br> [0x80000bf8]:sw<br> |
| 125|[0x80003200]<br>0x7cffffff|- rs1_val == 0x7CFFFFFF and rs2_val == 0xFB3E7196 #nosat<br>                                                                                             |[0x80000c0c]:orn<br> [0x80000c10]:sw<br> |
| 126|[0x80003204]<br>0x7fffffff|- rs1_val == 0x59FFFFFF and rs2_val == 0xD9959A62 #nosat<br>                                                                                             |[0x80000c24]:orn<br> [0x80000c28]:sw<br> |
| 127|[0x80003208]<br>0xdfffffff|- rs1_val == 0xDBFFFFFF and rs2_val == 0xE08409F0 #nosat<br>                                                                                             |[0x80000c3c]:orn<br> [0x80000c40]:sw<br> |
| 128|[0x8000320c]<br>0xffffffff|- rs1_val == 0xF7FFFFFF and rs2_val == 0x258ECECB #nosat<br>                                                                                             |[0x80000c54]:orn<br> [0x80000c58]:sw<br> |
| 129|[0x80003210]<br>0x6fffffff|- rs1_val == 0x6FFFFFFF and rs2_val == 0xFF7D5EC0 #nosat<br>                                                                                             |[0x80000c6c]:orn<br> [0x80000c70]:sw<br> |
| 130|[0x80003214]<br>0xbfffffff|- rs1_val == 0x9FFFFFFF and rs2_val == 0x4B6EA010 #nosat<br>                                                                                             |[0x80000c84]:orn<br> [0x80000c88]:sw<br> |
| 131|[0x80003218]<br>0x3fffffff|- rs1_val == 0x3FFFFFFF and rs2_val == 0xD885BBAC #nosat<br>                                                                                             |[0x80000c9c]:orn<br> [0x80000ca0]:sw<br> |
| 132|[0x8000321c]<br>0x7fffffff|- rs1_val == 0x7FFFFFFF and rs2_val == 0xBBE8F88D #nosat<br>                                                                                             |[0x80000cb4]:orn<br> [0x80000cb8]:sw<br> |
| 133|[0x80003220]<br>0xffffffff|- rs1_val == 0xFFFFFFFF and rs2_val == 0xE3D6E4B9 #nosat<br>                                                                                             |[0x80000cc8]:orn<br> [0x80000ccc]:sw<br> |
| 134|[0x80003224]<br>0x6cfdffd2|- rs2_val == 0x970216FD and rs1_val == 0x0494B6D2 #nosat<br>                                                                                             |[0x80000ce0]:orn<br> [0x80000ce4]:sw<br> |
| 135|[0x80003228]<br>0xf36f7f71|- rs2_val == 0x5CB58B8F and rs1_val == 0xF2650B71 #nosat<br>                                                                                             |[0x80000cf8]:orn<br> [0x80000cfc]:sw<br> |
| 136|[0x8000322c]<br>0xf9bf25db|- rs2_val == 0x27EFDA6C and rs1_val == 0x21AF214A #nosat<br>                                                                                             |[0x80000d10]:orn<br> [0x80000d14]:sw<br> |
| 137|[0x80003230]<br>0xeaefaf7f|- rs2_val == 0x1D1EF7C0 and rs1_val == 0x482EA760 #nosat<br>                                                                                             |[0x80000d28]:orn<br> [0x80000d2c]:sw<br> |
| 138|[0x80003234]<br>0xff7f56f7|- rs2_val == 0x0FC2A909 and rs1_val == 0x0F7A0443 #nosat<br>                                                                                             |[0x80000d40]:orn<br> [0x80000d44]:sw<br> |
| 139|[0x80003238]<br>0xfb575b59|- rs2_val == 0x04E9E4A6 and rs1_val == 0x69534048 #nosat<br>                                                                                             |[0x80000d58]:orn<br> [0x80000d5c]:sw<br> |
| 140|[0x8000323c]<br>0xfdbe3ffd|- rs2_val == 0x025FDCD7 and rs1_val == 0x043E3EF5 #nosat<br>                                                                                             |[0x80000d70]:orn<br> [0x80000d74]:sw<br> |
| 141|[0x80003240]<br>0xfeffd943|- rs2_val == 0x01782EBC and rs1_val == 0x12FAD802 #nosat<br>                                                                                             |[0x80000d88]:orn<br> [0x80000d8c]:sw<br> |
| 142|[0x80003244]<br>0xffdf6fef|- rs2_val == 0x00A39575 and rs1_val == 0x119B4FE5 #nosat<br>                                                                                             |[0x80000da0]:orn<br> [0x80000da4]:sw<br> |
| 143|[0x80003248]<br>0xffb677db|- rs2_val == 0x0049886F and rs1_val == 0x7DB224CB #nosat<br>                                                                                             |[0x80000db8]:orn<br> [0x80000dbc]:sw<br> |
| 144|[0x8000324c]<br>0xffdfd7c3|- rs2_val == 0x0025693C and rs1_val == 0xB45F51C3 #nosat<br>                                                                                             |[0x80000dd0]:orn<br> [0x80000dd4]:sw<br> |
| 145|[0x80003250]<br>0xfff7ffe7|- rs2_val == 0x0018031A and rs1_val == 0x41536363 #nosat<br>                                                                                             |[0x80000de8]:orn<br> [0x80000dec]:sw<br> |
| 146|[0x80003254]<br>0xfff57dda|- rs2_val == 0x000A8267 and rs1_val == 0x1A953CCA #nosat<br>                                                                                             |[0x80000e00]:orn<br> [0x80000e04]:sw<br> |
| 147|[0x80003258]<br>0xfff8efff|- rs2_val == 0x00073010 and rs1_val == 0x14186EBF #nosat<br>                                                                                             |[0x80000e18]:orn<br> [0x80000e1c]:sw<br> |
| 148|[0x8000325c]<br>0xfffc7aff|- rs2_val == 0x00038734 and rs1_val == 0xF33C1A7F #nosat<br>                                                                                             |[0x80000e30]:orn<br> [0x80000e34]:sw<br> |
| 149|[0x80003260]<br>0xfffe7f5e|- rs2_val == 0x0001EAB1 and rs1_val == 0x8DCE6F52 #nosat<br>                                                                                             |[0x80000e48]:orn<br> [0x80000e4c]:sw<br> |
| 150|[0x80003264]<br>0xffffc7db|- rs2_val == 0x0000B8EC and rs1_val == 0x3096C6C8 #nosat<br>                                                                                             |[0x80000e60]:orn<br> [0x80000e64]:sw<br> |
| 151|[0x80003268]<br>0xffff9eff|- rs2_val == 0x00007530 and rs1_val == 0x9C461CB5 #nosat<br>                                                                                             |[0x80000e78]:orn<br> [0x80000e7c]:sw<br> |
| 152|[0x8000326c]<br>0xffffe9bb|- rs2_val == 0x00003ED5 and rs1_val == 0x27756991 #nosat<br>                                                                                             |[0x80000e90]:orn<br> [0x80000e94]:sw<br> |
| 153|[0x80003270]<br>0xffffefef|- rs2_val == 0x00001055 and rs1_val == 0x62D74145 #nosat<br>                                                                                             |[0x80000ea8]:orn<br> [0x80000eac]:sw<br> |
| 154|[0x80003274]<br>0xfffff9fd|- rs2_val == 0x00000E9E and rs1_val == 0x931719FD #nosat<br>                                                                                             |[0x80000ec0]:orn<br> [0x80000ec4]:sw<br> |
| 155|[0x80003278]<br>0xfffffae4|- rs2_val == 0x0000059B and rs1_val == 0x965768E0 #nosat<br>                                                                                             |[0x80000ed4]:orn<br> [0x80000ed8]:sw<br> |
| 156|[0x8000327c]<br>0xfffffff7|- rs2_val == 0x00000208 and rs1_val == 0x74057241 #nosat<br>                                                                                             |[0x80000ee8]:orn<br> [0x80000eec]:sw<br> |
| 157|[0x80003280]<br>0xffffff9f|- rs2_val == 0x000001E8 and rs1_val == 0x5E617F8E #nosat<br>                                                                                             |[0x80000efc]:orn<br> [0x80000f00]:sw<br> |
| 158|[0x80003284]<br>0xffffff7d|- rs2_val == 0x000000D2 and rs1_val == 0x3E361858 #nosat<br>                                                                                             |[0x80000f10]:orn<br> [0x80000f14]:sw<br> |
| 159|[0x80003288]<br>0xffffffde|- rs2_val == 0x00000071 and rs1_val == 0x13041452 #nosat<br>                                                                                             |[0x80000f24]:orn<br> [0x80000f28]:sw<br> |
| 160|[0x8000328c]<br>0xffffffdb|- rs2_val == 0x00000034 and rs1_val == 0x4BDBF090 #nosat<br>                                                                                             |[0x80000f38]:orn<br> [0x80000f3c]:sw<br> |
| 161|[0x80003290]<br>0xfffffff6|- rs2_val == 0x00000019 and rs1_val == 0x9C3ECB54 #nosat<br>                                                                                             |[0x80000f4c]:orn<br> [0x80000f50]:sw<br> |
| 162|[0x80003294]<br>0xfffffff4|- rs2_val == 0x0000000B and rs1_val == 0x421E7A60 #nosat<br>                                                                                             |[0x80000f60]:orn<br> [0x80000f64]:sw<br> |
| 163|[0x80003298]<br>0xfffffffe|- rs2_val == 0x00000005 and rs1_val == 0x2577C1EC #nosat<br>                                                                                             |[0x80000f74]:orn<br> [0x80000f78]:sw<br> |
| 164|[0x8000329c]<br>0xfffffffd|- rs2_val == 0x00000002 and rs1_val == 0x19AF685D #nosat<br>                                                                                             |[0x80000f88]:orn<br> [0x80000f8c]:sw<br> |
| 165|[0x800032a0]<br>0xffffffff|- rs2_val == 0x00000001 and rs1_val == 0x2FF36007 #nosat<br>                                                                                             |[0x80000f9c]:orn<br> [0x80000fa0]:sw<br> |
| 166|[0x800032a4]<br>0xffffffff|- rs2_val == 0x00000000 and rs1_val == 0xE286852C #nosat<br>                                                                                             |[0x80000fb0]:orn<br> [0x80000fb4]:sw<br> |
| 167|[0x800032a8]<br>0xed536eff|- rs1_val == 0xC511488A and rs2_val == 0x97BDD982 #nosat<br>                                                                                             |[0x80000fc8]:orn<br> [0x80000fcc]:sw<br> |
| 168|[0x800032ac]<br>0xed95bed3|- rs1_val == 0x65151C41 and rs2_val == 0x367E5D6D #nosat<br>                                                                                             |[0x80000fe0]:orn<br> [0x80000fe4]:sw<br> |
| 169|[0x800032b0]<br>0xbdcaf3fb|- rs1_val == 0x24CA83B3 and rs2_val == 0x623D8EB7 #nosat<br>                                                                                             |[0x80000ff8]:orn<br> [0x80000ffc]:sw<br> |
| 170|[0x800032b4]<br>0xde7bf6ff|- rs1_val == 0x1C3B66FB and rs2_val == 0x21870F0B #nosat<br>                                                                                             |[0x80001010]:orn<br> [0x80001014]:sw<br> |
| 171|[0x800032b8]<br>0x7fbaffdb|- rs1_val == 0x0A8A6FD0 and rs2_val == 0x82450164 #nosat<br>                                                                                             |[0x80001028]:orn<br> [0x8000102c]:sw<br> |
| 172|[0x800032bc]<br>0x76dea89f|- rs1_val == 0x069CA08C and rs2_val == 0x8F2DF760 #nosat<br>                                                                                             |[0x80001040]:orn<br> [0x80001044]:sw<br> |
| 173|[0x800032c0]<br>0x835facfd|- rs1_val == 0x03552C95 and rs2_val == 0x7CA07386 #nosat<br>                                                                                             |[0x80001058]:orn<br> [0x8000105c]:sw<br> |
| 174|[0x800032c4]<br>0xe775fe3f|- rs1_val == 0x0174EA19 and rs2_val == 0x19DE2BC1 #nosat<br>                                                                                             |[0x80001070]:orn<br> [0x80001074]:sw<br> |
| 175|[0x800032c8]<br>0x13e454f2|- rs1_val == 0x00A454F2 and rs2_val == 0xEC3FBF4D #nosat<br>                                                                                             |[0x80001088]:orn<br> [0x8000108c]:sw<br> |
| 176|[0x800032cc]<br>0xe9fefbee|- rs1_val == 0x007E9BEE and rs2_val == 0x164F1513 #nosat<br>                                                                                             |[0x800010a0]:orn<br> [0x800010a4]:sw<br> |
| 177|[0x800032d0]<br>0x533d7fdd|- rs1_val == 0x002C7CD0 and rs2_val == 0xACC6D8F2 #nosat<br>                                                                                             |[0x800010b8]:orn<br> [0x800010bc]:sw<br> |
| 178|[0x800032d4]<br>0x5edf7bfe|- rs1_val == 0x00177310 and rs2_val == 0xA123F501 #nosat<br>                                                                                             |[0x800010d0]:orn<br> [0x800010d4]:sw<br> |
| 179|[0x800032d8]<br>0x4a8d97eb|- rs1_val == 0x00091609 and rs2_val == 0xB57A6A1D #nosat<br>                                                                                             |[0x800010e8]:orn<br> [0x800010ec]:sw<br> |
| 180|[0x800032dc]<br>0x16fc6be0|- rs1_val == 0x00040BE0 and rs2_val == 0xE90794DF #nosat<br>                                                                                             |[0x80001100]:orn<br> [0x80001104]:sw<br> |
| 181|[0x800032e0]<br>0x50aa8f1b|- rs1_val == 0x00028D1B and rs2_val == 0xAF5570EE #nosat<br>                                                                                             |[0x80001118]:orn<br> [0x8000111c]:sw<br> |
| 182|[0x800032e4]<br>0x2747fbe7|- rs1_val == 0x0001FBE5 and rs2_val == 0xD8B9B45C #nosat<br>                                                                                             |[0x80001130]:orn<br> [0x80001134]:sw<br> |
| 183|[0x800032e8]<br>0xe45eeed1|- rs1_val == 0x0000AAC1 and rs2_val == 0x1BA1192E #nosat<br>                                                                                             |[0x80001148]:orn<br> [0x8000114c]:sw<br> |
| 184|[0x800032ec]<br>0xb6017acf|- rs1_val == 0x000062C3 and rs2_val == 0x49FE85B0 #nosat<br>                                                                                             |[0x80001160]:orn<br> [0x80001164]:sw<br> |
| 185|[0x800032f0]<br>0xbefa33fd|- rs1_val == 0x000022FD and rs2_val == 0x4105CCA7 #nosat<br>                                                                                             |[0x80001178]:orn<br> [0x8000117c]:sw<br> |
| 186|[0x800032f4]<br>0x28e7b6b7|- rs1_val == 0x000016B3 and rs2_val == 0xD7185DDA #nosat<br>                                                                                             |[0x80001190]:orn<br> [0x80001194]:sw<br> |
| 187|[0x800032f8]<br>0x585eeb7f|- rs1_val == 0x00000A38 and rs2_val == 0xA7A11490 #nosat<br>                                                                                             |[0x800011a8]:orn<br> [0x800011ac]:sw<br> |
| 188|[0x800032fc]<br>0x5669b7b7|- rs1_val == 0x000006A7 and rs2_val == 0xA9964AEF #nosat<br>                                                                                             |[0x800011bc]:orn<br> [0x800011c0]:sw<br> |
| 189|[0x80003300]<br>0xb4b27bbb|- rs1_val == 0x000003B9 and rs2_val == 0x4B4D8474 #nosat<br>                                                                                             |[0x800011d0]:orn<br> [0x800011d4]:sw<br> |
| 190|[0x80003304]<br>0x893b97d1|- rs1_val == 0x00000190 and rs2_val == 0x76C468AE #nosat<br>                                                                                             |[0x800011e4]:orn<br> [0x800011e8]:sw<br> |
| 191|[0x80003308]<br>0xf6df75de|- rs1_val == 0x000000D4 and rs2_val == 0x09208A65 #nosat<br>                                                                                             |[0x800011f8]:orn<br> [0x800011fc]:sw<br> |
| 192|[0x8000330c]<br>0x78bc016f|- rs1_val == 0x00000067 and rs2_val == 0x8743FEB6 #nosat<br>                                                                                             |[0x8000120c]:orn<br> [0x80001210]:sw<br> |
| 193|[0x80003310]<br>0x5994f2ff|- rs1_val == 0x00000039 and rs2_val == 0xA66B0D38 #nosat<br>                                                                                             |[0x80001220]:orn<br> [0x80001224]:sw<br> |
| 194|[0x80003314]<br>0x048ef8df|- rs1_val == 0x0000001C and rs2_val == 0xFB710734 #nosat<br>                                                                                             |[0x80001234]:orn<br> [0x80001238]:sw<br> |
| 195|[0x80003318]<br>0x5d94809f|- rs1_val == 0x0000000E and rs2_val == 0xA26B7F62 #nosat<br>                                                                                             |[0x80001248]:orn<br> [0x8000124c]:sw<br> |
| 196|[0x8000331c]<br>0xb2544b7f|- rs1_val == 0x00000007 and rs2_val == 0x4DABB481 #nosat<br>                                                                                             |[0x8000125c]:orn<br> [0x80001260]:sw<br> |
| 197|[0x80003320]<br>0xd056ebdb|- rs1_val == 0x00000003 and rs2_val == 0x2FA91425 #nosat<br>                                                                                             |[0x80001270]:orn<br> [0x80001274]:sw<br> |
| 198|[0x80003324]<br>0x69a125cd|- rs1_val == 0x00000001 and rs2_val == 0x965EDA32 #nosat<br>                                                                                             |[0x80001284]:orn<br> [0x80001288]:sw<br> |
| 199|[0x80003328]<br>0x380217fa|- rs1_val == 0x00000000 and rs2_val == 0xC7FDE805 #nosat<br>                                                                                             |[0x80001298]:orn<br> [0x8000129c]:sw<br> |
| 200|[0x8000332c]<br>0xffecbfff|- rs2_val == 0x6D3F408C and rs1_val == 0xFFEC35FE #nosat<br>                                                                                             |[0x800012b0]:orn<br> [0x800012b4]:sw<br> |
| 201|[0x80003330]<br>0xffffdbab|- rs2_val == 0x946A3674 and rs1_val == 0x976AD220 #nosat<br>                                                                                             |[0x800012c8]:orn<br> [0x800012cc]:sw<br> |
| 202|[0x80003334]<br>0x7b9efedf|- rs2_val == 0xDC6113A4 and rs1_val == 0x5990FE96 #nosat<br>                                                                                             |[0x800012e0]:orn<br> [0x800012e4]:sw<br> |
| 203|[0x80003338]<br>0xdbffffe7|- rs2_val == 0xE42A809C and rs1_val == 0xC96EFDC4 #nosat<br>                                                                                             |[0x800012f8]:orn<br> [0x800012fc]:sw<br> |
| 204|[0x8000333c]<br>0xafddbcdf|- rs2_val == 0xF1A25760 and rs1_val == 0xAB8534C1 #nosat<br>                                                                                             |[0x80001310]:orn<br> [0x80001314]:sw<br> |
| 205|[0x80003340]<br>0xd5dc6736|- rs2_val == 0xFB37BEC9 and rs1_val == 0xD1142724 #nosat<br>                                                                                             |[0x80001328]:orn<br> [0x8000132c]:sw<br> |
| 206|[0x80003344]<br>0xf75ef7bf|- rs2_val == 0xFCE51A66 and rs1_val == 0xF65E7737 #nosat<br>                                                                                             |[0x80001340]:orn<br> [0x80001344]:sw<br> |
| 207|[0x80003348]<br>0x17ebc67f|- rs2_val == 0xFEDEBB9C and rs1_val == 0x16CBC21C #nosat<br>                                                                                             |[0x80001358]:orn<br> [0x8000135c]:sw<br> |
| 208|[0x8000334c]<br>0xdbdfcffd|- rs2_val == 0xFF69340A and rs1_val == 0xDBDD4DD9 #nosat<br>                                                                                             |[0x80001370]:orn<br> [0x80001374]:sw<br> |
| 209|[0x80003350]<br>0x4bfb0e7f|- rs2_val == 0xFF9CF3F4 and rs1_val == 0x4BD90A77 #nosat<br>                                                                                             |[0x80001388]:orn<br> [0x8000138c]:sw<br> |
| 210|[0x80003354]<br>0xcebffcfd|- rs2_val == 0xFFC00793 and rs1_val == 0xCEBE24D9 #nosat<br>                                                                                             |[0x800013a0]:orn<br> [0x800013a4]:sw<br> |
| 211|[0x80003358]<br>0xa0f1fdbf|- rs2_val == 0xFFEE1FC4 and rs1_val == 0xA0E0BD86 #nosat<br>                                                                                             |[0x800013b8]:orn<br> [0x800013bc]:sw<br> |
| 212|[0x8000335c]<br>0x3ccffff7|- rs2_val == 0xFFF06038 and rs1_val == 0x3CC279B3 #nosat<br>                                                                                             |[0x800013d0]:orn<br> [0x800013d4]:sw<br> |
| 213|[0x80003360]<br>0x754fdbbe|- rs2_val == 0xFFF93D53 and rs1_val == 0x754F9B96 #nosat<br>                                                                                             |[0x800013e8]:orn<br> [0x800013ec]:sw<br> |
| 214|[0x80003364]<br>0x7277fb17|- rs2_val == 0xFFFC47E8 and rs1_val == 0x72745307 #nosat<br>                                                                                             |[0x80001400]:orn<br> [0x80001404]:sw<br> |
| 215|[0x80003368]<br>0xdcafedff|- rs2_val == 0xFFFE7302 and rs1_val == 0xDCAE6D62 #nosat<br>                                                                                             |[0x80001418]:orn<br> [0x8000141c]:sw<br> |
| 216|[0x8000336c]<br>0x7c2cf77f|- rs2_val == 0xFFFF1CE8 and rs1_val == 0x7C2C966D #nosat<br>                                                                                             |[0x80001430]:orn<br> [0x80001434]:sw<br> |
| 217|[0x80003370]<br>0x9bb47f3d|- rs2_val == 0xFFFFB5C6 and rs1_val == 0x9BB4752D #nosat<br>                                                                                             |[0x80001448]:orn<br> [0x8000144c]:sw<br> |
| 218|[0x80003374]<br>0x17be287f|- rs2_val == 0xFFFFDFA4 and rs1_val == 0x17BE082F #nosat<br>                                                                                             |[0x80001460]:orn<br> [0x80001464]:sw<br> |
| 219|[0x80003378]<br>0x109ff4f5|- rs2_val == 0xFFFFEF0B and rs1_val == 0x109FF475 #nosat<br>                                                                                             |[0x80001478]:orn<br> [0x8000147c]:sw<br> |
| 220|[0x8000337c]<br>0x00b97fe6|- rs2_val == 0xFFFFF43F and rs1_val == 0x00B97EA6 #nosat<br>                                                                                             |[0x80001490]:orn<br> [0x80001494]:sw<br> |
| 221|[0x80003380]<br>0xf956ecbf|- rs2_val == 0xFFFFFB4A and rs1_val == 0xF956EC0B #nosat<br>                                                                                             |[0x800014a4]:orn<br> [0x800014a8]:sw<br> |
| 222|[0x80003384]<br>0x70fc1aff|- rs2_val == 0xFFFFFDA4 and rs1_val == 0x70FC1AFC #nosat<br>                                                                                             |[0x800014b8]:orn<br> [0x800014bc]:sw<br> |
| 223|[0x80003388]<br>0x6348317e|- rs2_val == 0xFFFFFECB and rs1_val == 0x6348306E #nosat<br>                                                                                             |[0x800014cc]:orn<br> [0x800014d0]:sw<br> |
| 224|[0x8000338c]<br>0x66b072bb|- rs2_val == 0xFFFFFF54 and rs1_val == 0x66B072B9 #nosat<br>                                                                                             |[0x800014e0]:orn<br> [0x800014e4]:sw<br> |
| 225|[0x80003390]<br>0x7ff822ff|- rs2_val == 0xFFFFFFA9 and rs1_val == 0x7FF822ED #nosat<br>                                                                                             |[0x800014f4]:orn<br> [0x800014f8]:sw<br> |
| 226|[0x80003394]<br>0xe918bebf|- rs2_val == 0xFFFFFFC3 and rs1_val == 0xE918BE9F #nosat<br>                                                                                             |[0x80001508]:orn<br> [0x8000150c]:sw<br> |
| 227|[0x80003398]<br>0xe4bae7fe|- rs2_val == 0xFFFFFFE7 and rs1_val == 0xE4BAE7F6 #nosat<br>                                                                                             |[0x8000151c]:orn<br> [0x80001520]:sw<br> |
| 228|[0x8000339c]<br>0xde9a896f|- rs2_val == 0xFFFFFFF1 and rs1_val == 0xDE9A896F #nosat<br>                                                                                             |[0x80001530]:orn<br> [0x80001534]:sw<br> |
| 229|[0x800033a0]<br>0x2881e537|- rs2_val == 0xFFFFFFF8 and rs1_val == 0x2881E531 #nosat<br>                                                                                             |[0x80001544]:orn<br> [0x80001548]:sw<br> |
| 230|[0x800033a4]<br>0x1475f78f|- rs2_val == 0xFFFFFFFC and rs1_val == 0x1475F78D #nosat<br>                                                                                             |[0x80001558]:orn<br> [0x8000155c]:sw<br> |
| 231|[0x800033a8]<br>0xe59cf78f|- rs2_val == 0xFFFFFFFE and rs1_val == 0xE59CF78F #nosat<br>                                                                                             |[0x8000156c]:orn<br> [0x80001570]:sw<br> |
| 232|[0x800033ac]<br>0xb66b3284|- rs2_val == 0xFFFFFFFF and rs1_val == 0xB66B3284 #nosat<br>                                                                                             |[0x80001580]:orn<br> [0x80001584]:sw<br> |
| 233|[0x800033b0]<br>0xeffdf8fb|- rs1_val == 0x6F4930C9 and rs2_val == 0x39422745 #nosat<br>                                                                                             |[0x80001598]:orn<br> [0x8000159c]:sw<br> |
| 234|[0x800033b4]<br>0xa7ddf5e7|- rs1_val == 0x85D97467 and rs2_val == 0x58FA6E1C #nosat<br>                                                                                             |[0x800015b0]:orn<br> [0x800015b4]:sw<br> |
| 235|[0x800033b8]<br>0xd7ebfdfb|- rs1_val == 0xC70AFC93 and rs2_val == 0x2D143295 #nosat<br>                                                                                             |[0x800015c8]:orn<br> [0x800015cc]:sw<br> |
| 236|[0x800033bc]<br>0xeddf6fdf|- rs1_val == 0xE911655F and rs2_val == 0xD230B46C #nosat<br>                                                                                             |[0x800015e0]:orn<br> [0x800015e4]:sw<br> |
| 237|[0x800033c0]<br>0xf6abcf3f|- rs1_val == 0xF4AB0A39 and rs2_val == 0x4D753AC1 #nosat<br>                                                                                             |[0x800015f8]:orn<br> [0x800015fc]:sw<br> |
| 238|[0x800033c4]<br>0xf9fdd83d|- rs1_val == 0xF8BD4821 and rs2_val == 0x1E9667C2 #nosat<br>                                                                                             |[0x80001610]:orn<br> [0x80001614]:sw<br> |
| 239|[0x800033c8]<br>0xfdf7e67f|- rs1_val == 0xFCD7E667 and rs2_val == 0xAE4839A1 #nosat<br>                                                                                             |[0x80001628]:orn<br> [0x8000162c]:sw<br> |
| 240|[0x800033cc]<br>0xffffcfff|- rs1_val == 0xFE71CFDF and rs2_val == 0x6A013380 #nosat<br>                                                                                             |[0x80001640]:orn<br> [0x80001644]:sw<br> |
| 241|[0x800033d0]<br>0xffbcd5ee|- rs1_val == 0xFF1C11AE and rs2_val == 0x59432A19 #nosat<br>                                                                                             |[0x80001658]:orn<br> [0x8000165c]:sw<br> |
| 242|[0x800033d4]<br>0xffcbf99b|- rs1_val == 0xFF89799A and rs2_val == 0xCEB506F6 #nosat<br>                                                                                             |[0x80001670]:orn<br> [0x80001674]:sw<br> |
| 243|[0x800033d8]<br>0xffdb9fb7|- rs1_val == 0xFFC80B13 and rs2_val == 0xC5EC6148 #nosat<br>                                                                                             |[0x80001688]:orn<br> [0x8000168c]:sw<br> |
| 244|[0x800033dc]<br>0xfff9e7ef|- rs1_val == 0xFFE94647 and rs2_val == 0x99EF1857 #nosat<br>                                                                                             |[0x800016a0]:orn<br> [0x800016a4]:sw<br> |
| 245|[0x800033e0]<br>0xfff6e3cf|- rs1_val == 0xFFF263CF and rs2_val == 0x14B91C79 #nosat<br>                                                                                             |[0x800016b8]:orn<br> [0x800016bc]:sw<br> |
| 246|[0x800033e4]<br>0xfffd7db1|- rs1_val == 0xFFF919A1 and rs2_val == 0xA86B8A6E #nosat<br>                                                                                             |[0x800016d0]:orn<br> [0x800016d4]:sw<br> |
| 247|[0x800033e8]<br>0xfffffaff|- rs1_val == 0xFFFDE89D and rs2_val == 0x08208D09 #nosat<br>                                                                                             |[0x800016e8]:orn<br> [0x800016ec]:sw<br> |
| 248|[0x800033ec]<br>0xfffeebd0|- rs1_val == 0xFFFEC9D0 and rs2_val == 0x69B1DCBF #nosat<br>                                                                                             |[0x80001700]:orn<br> [0x80001704]:sw<br> |
| 249|[0x800033f0]<br>0xffff5dfe|- rs1_val == 0xFFFF5576 and rs2_val == 0x807DA245 #nosat<br>                                                                                             |[0x80001718]:orn<br> [0x8000171c]:sw<br> |
| 250|[0x800033f4]<br>0xffffbfff|- rs1_val == 0xFFFFB6DF and rs2_val == 0x95A4D257 #nosat<br>                                                                                             |[0x80001730]:orn<br> [0x80001734]:sw<br> |
| 251|[0x800033f8]<br>0xfffffdf5|- rs1_val == 0xFFFFC561 and rs2_val == 0x735C076B #nosat<br>                                                                                             |[0x80001748]:orn<br> [0x8000174c]:sw<br> |
| 252|[0x800033fc]<br>0xffffefb5|- rs1_val == 0xFFFFEAB5 and rs2_val == 0xE5F0307E #nosat<br>                                                                                             |[0x80001760]:orn<br> [0x80001764]:sw<br> |
| 253|[0x80003400]<br>0xffffff9e|- rs1_val == 0xFFFFF602 and rs2_val == 0xE8DAC663 #nosat<br>                                                                                             |[0x80001778]:orn<br> [0x8000177c]:sw<br> |
| 254|[0x80003404]<br>0xfffffdf9|- rs1_val == 0xFFFFF8B1 and rs2_val == 0x0109C207 #nosat<br>                                                                                             |[0x8000178c]:orn<br> [0x80001790]:sw<br> |
| 255|[0x80003408]<br>0xffffffbe|- rs1_val == 0xFFFFFCA0 and rs2_val == 0x600FECC1 #nosat<br>                                                                                             |[0x800017a0]:orn<br> [0x800017a4]:sw<br> |
| 256|[0x8000340c]<br>0xfffffeee|- rs1_val == 0xFFFFFECC and rs2_val == 0xFB7F6F5D #nosat<br>                                                                                             |[0x800017b4]:orn<br> [0x800017b8]:sw<br> |
| 257|[0x80003410]<br>0xffffffef|- rs1_val == 0xFFFFFF6E and rs2_val == 0x5CD2875E #nosat<br>                                                                                             |[0x800017c8]:orn<br> [0x800017cc]:sw<br> |
| 258|[0x80003414]<br>0xfffffff6|- rs1_val == 0xFFFFFF84 and rs2_val == 0xACCA7F0D #nosat<br>                                                                                             |[0x800017dc]:orn<br> [0x800017e0]:sw<br> |
| 259|[0x80003418]<br>0xffffffdf|- rs1_val == 0xFFFFFFDD and rs2_val == 0x5AE6A228 #nosat<br>                                                                                             |[0x800017f0]:orn<br> [0x800017f4]:sw<br> |
| 260|[0x8000341c]<br>0xfffffff7|- rs1_val == 0xFFFFFFE7 and rs2_val == 0xFF1E5BEF #nosat<br>                                                                                             |[0x80001804]:orn<br> [0x80001808]:sw<br> |
| 261|[0x80003420]<br>0xfffffffc|- rs1_val == 0xFFFFFFF4 and rs2_val == 0x137A9777 #nosat<br>                                                                                             |[0x80001818]:orn<br> [0x8000181c]:sw<br> |
| 262|[0x80003424]<br>0xfffffffa|- rs1_val == 0xFFFFFFFA and rs2_val == 0x854A9657 #nosat<br>                                                                                             |[0x8000182c]:orn<br> [0x80001830]:sw<br> |
| 263|[0x80003428]<br>0xfffffffd|- rs1_val == 0xFFFFFFFD and rs2_val == 0xCF84B683 #nosat<br>                                                                                             |[0x80001840]:orn<br> [0x80001844]:sw<br> |
| 264|[0x8000342c]<br>0xffffffff|- rs1_val == 0xFFFFFFFE and rs2_val == 0x93FDCAB8 #nosat<br>                                                                                             |[0x80001854]:orn<br> [0x80001858]:sw<br> |
| 265|[0x80003430]<br>0xffffffff|- rs2_val == 0x80000000 and rs1_val == 0xAFC08ACE #nosat<br>                                                                                             |[0x80001868]:orn<br> [0x8000186c]:sw<br> |
| 266|[0x80003434]<br>0x5fffffff|- rs2_val == 0xE0000000 and rs1_val == 0x5B130474 #nosat<br>                                                                                             |[0x8000187c]:orn<br> [0x80001880]:sw<br> |
| 267|[0x80003438]<br>0xfcffffff|- rs2_val == 0xB7400000 and rs1_val == 0xBC5FB419 #nosat<br>                                                                                             |[0x80001890]:orn<br> [0x80001894]:sw<br> |
| 268|[0x80003440]<br>0xdbbbfbff|- rs2_val == 0xEEC50588 and rs1_val == 0xCB8193EF #nosat<br>                                                                                             |[0x800018bc]:orn<br> [0x800018c0]:sw<br> |
