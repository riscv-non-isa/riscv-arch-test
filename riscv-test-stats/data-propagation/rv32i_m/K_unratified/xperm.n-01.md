
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001ab0')]      |
| SIG_REGION                | [('0x80003010', '0x800034a0', '292 words')]      |
| COV_LABELS                | xperm.n      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/xperm.n-01.S/ref.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 289      |
| STAT1                     | 288      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a90]:xperm.n
      [0x80001a94]:sw
 -- Signature Address: 0x8000348c Data: 0xc0000005
 -- Redundant Coverpoints hit by the op
      - opcode : xperm.n
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat






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

|s.no|        signature         |                                                                       coverpoints                                                                       |                    code                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------|
|   1|[0x80003010]<br>0xf0fff00f|- opcode : xperm.n<br> - rs1 : x31<br> - rs2 : x7<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_val == 0xFFFFFFFF and rs2_val == 0x08577EB1 #nosat<br> |[0x8000010c]:xperm.n<br> [0x80000110]:sw<br> |
|   2|[0x80003014]<br>0x0691101f|- rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br>                                                                                       |[0x80000124]:xperm.n<br> [0x80000128]:sw<br> |
|   3|[0x80003018]<br>0x0d00df00|- rs1 : x12<br> - rs2 : x12<br> - rd : x7<br> - rs1 == rs2 != rd<br>                                                                                     |[0x8000013c]:xperm.n<br> [0x80000140]:sw<br> |
|   4|[0x8000301c]<br>0x909010c0|- rs1 : x28<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                         |[0x80000154]:xperm.n<br> [0x80000158]:sw<br> |
|   5|[0x80003020]<br>0xf200f900|- rs1 : x4<br> - rs2 : x24<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br> |[0x8000016c]:xperm.n<br> [0x80000170]:sw<br> |
|   6|[0x80003024]<br>0x00004200|- rs1 : x29<br> - rs2 : x4<br> - rd : x14<br> - rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                               |[0x80000184]:xperm.n<br> [0x80000188]:sw<br> |
|   7|[0x80003028]<br>0x0300cff0|- rs1 : x19<br> - rs2 : x5<br> - rd : x25<br> - rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                               |[0x8000019c]:xperm.n<br> [0x800001a0]:sw<br> |
|   8|[0x8000302c]<br>0x0ef22000|- rs1 : x23<br> - rs2 : x30<br> - rd : x27<br> - rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                              |[0x800001b4]:xperm.n<br> [0x800001b8]:sw<br> |
|   9|[0x80003030]<br>0x90000902|- rs1 : x16<br> - rs2 : x11<br> - rd : x24<br> - rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                              |[0x800001cc]:xperm.n<br> [0x800001d0]:sw<br> |
|  10|[0x80003034]<br>0xaaaaaaaa|- rs1 : x26<br> - rs2 : x0<br> - rd : x5<br>                                                                                                             |[0x800001e0]:xperm.n<br> [0x800001e4]:sw<br> |
|  11|[0x80003038]<br>0x07000300|- rs1 : x24<br> - rs2 : x31<br> - rd : x11<br> - rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                              |[0x800001f8]:xperm.n<br> [0x800001fc]:sw<br> |
|  12|[0x8000303c]<br>0xb2e50e00|- rs1 : x1<br> - rs2 : x29<br> - rd : x9<br> - rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                |[0x80000210]:xperm.n<br> [0x80000214]:sw<br> |
|  13|[0x80003040]<br>0xfc4a0019|- rs1 : x30<br> - rs2 : x3<br> - rd : x13<br> - rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                               |[0x80000228]:xperm.n<br> [0x8000022c]:sw<br> |
|  14|[0x80003044]<br>0x02e00a00|- rs1 : x27<br> - rs2 : x6<br> - rd : x20<br> - rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                               |[0x80000240]:xperm.n<br> [0x80000244]:sw<br> |
|  15|[0x80003048]<br>0x0903f3f3|- rs1 : x22<br> - rs2 : x26<br> - rd : x23<br> - rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                              |[0x80000258]:xperm.n<br> [0x8000025c]:sw<br> |
|  16|[0x8000304c]<br>0x0ad80058|- rs1 : x21<br> - rs2 : x25<br> - rd : x28<br> - rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                              |[0x80000270]:xperm.n<br> [0x80000274]:sw<br> |
|  17|[0x80003050]<br>0x00000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x0<br> - rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                               |[0x80000290]:xperm.n<br> [0x80000294]:sw<br> |
|  18|[0x80003054]<br>0x0e7d0880|- rs1 : x14<br> - rs2 : x10<br> - rd : x26<br> - rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                              |[0x800002a8]:xperm.n<br> [0x800002ac]:sw<br> |
|  19|[0x80003058]<br>0x00c0202c|- rs1 : x3<br> - rs2 : x9<br> - rd : x1<br> - rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                 |[0x800002c0]:xperm.n<br> [0x800002c4]:sw<br> |
|  20|[0x8000305c]<br>0x004d0000|- rs1 : x13<br> - rs2 : x28<br> - rd : x22<br> - rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                              |[0x800002d8]:xperm.n<br> [0x800002dc]:sw<br> |
|  21|[0x80003060]<br>0x04449553|- rs1 : x20<br> - rs2 : x1<br> - rd : x6<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                |[0x800002f0]:xperm.n<br> [0x800002f4]:sw<br> |
|  22|[0x80003064]<br>0xaaaaaaaa|- rs1 : x9<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == 0x00000000 and rs1_val == 0x4FFE831A #nosat<br>                                               |[0x80000304]:xperm.n<br> [0x80000308]:sw<br> |
|  23|[0x80003068]<br>0x0eeeeeee|- rs1 : x25<br> - rs2 : x20<br> - rd : x4<br> - rs2_val == 0x80000000 and rs1_val == 0xAFC08ACE #nosat<br>                                               |[0x80000318]:xperm.n<br> [0x8000031c]:sw<br> |
|  24|[0x8000306c]<br>0xe5555555|- rs1 : x2<br> - rs2 : x27<br> - rd : x19<br> - rs2_val == 0x40000000 and rs1_val == 0xAF6E9055 #nosat<br>                                               |[0x8000032c]:xperm.n<br> [0x80000330]:sw<br> |
|  25|[0x80003070]<br>0x04444444|- rs1 : x10<br> - rs2 : x17<br> - rd : x30<br> - rs2_val == 0xE0000000 and rs1_val == 0x5B130474 #nosat<br>                                              |[0x80000340]:xperm.n<br> [0x80000344]:sw<br> |
|  26|[0x80003074]<br>0x0eeeeeee|- rs1 : x11<br> - rs2 : x13<br> - rd : x29<br> - rs2_val == 0x90000000 and rs1_val == 0x3EEA126E #nosat<br>                                              |[0x80000354]:xperm.n<br> [0x80000358]:sw<br> |
|  27|[0x80003078]<br>0x00000000|- rs1 : x0<br> - rs2 : x14<br> - rd : x18<br>                                                                                                            |[0x80000364]:xperm.n<br> [0x80000368]:sw<br> |
|  28|[0x8000307c]<br>0x09aaaaaa|- rs1 : x17<br> - rs2 : x16<br> - rd : x21<br> - rs2_val == 0xB4000000 and rs1_val == 0x5A694BCA #nosat<br>                                              |[0x80000378]:xperm.n<br> [0x8000037c]:sw<br> |
|  29|[0x80003080]<br>0xe0aaaaaa|- rs1 : x18<br> - rs2 : x19<br> - rd : x10<br> - rs2_val == 0x3E000000 and rs1_val == 0xED52E4CA #nosat<br>                                              |[0x8000038c]:xperm.n<br> [0x80000390]:sw<br> |
|  30|[0x80003084]<br>0x00333333|- rs1 : x5<br> - rs2 : x23<br> - rd : x16<br> - rs2_val == 0xFB000000 and rs1_val == 0xB5CB2A93 #nosat<br>                                               |[0x800003a0]:xperm.n<br> [0x800003a4]:sw<br> |
|  31|[0x80003088]<br>0x90066666|- rs1 : x6<br> - rs2 : x18<br> - rd : x12<br> - rs2_val == 0x68800000 and rs1_val == 0x29324E16 #nosat<br>                                               |[0x800003b4]:xperm.n<br> [0x800003b8]:sw<br> |
|  32|[0x8000308c]<br>0x0bf99999|- rs1 : x7<br> - rs2 : x22<br> - rd : x3<br> - rs2_val == 0xB7400000 and rs1_val == 0xBC5FB419 #nosat<br>                                                |[0x800003c8]:xperm.n<br> [0x800003cc]:sw<br> |
|  33|[0x80003090]<br>0x90088888|- rs2_val == 0x5CE00000 and rs1_val == 0x8E92E1B8 #nosat<br>                                                                                             |[0x800003e4]:xperm.n<br> [0x800003e8]:sw<br> |
|  34|[0x80003094]<br>0x300bbbbb|- rs2_val == 0x49F00000 and rs1_val == 0x96A3B48B #nosat<br>                                                                                             |[0x800003f8]:xperm.n<br> [0x800003fc]:sw<br> |
|  35|[0x80003098]<br>0x05009999|- rs2_val == 0x53D80000 and rs1_val == 0x0A095049 #nosat<br>                                                                                             |[0x8000040c]:xperm.n<br> [0x80000410]:sw<br> |
|  36|[0x8000309c]<br>0x100e7777|- rs2_val == 0x2EC40000 and rs1_val == 0x6F6E71B7 #nosat<br>                                                                                             |[0x80000420]:xperm.n<br> [0x80000424]:sw<br> |
|  37|[0x800030a0]<br>0x0003dddd|- rs2_val == 0x8E860000 and rs1_val == 0x236CC43D #nosat<br>                                                                                             |[0x80000434]:xperm.n<br> [0x80000438]:sw<br> |
|  38|[0x800030a4]<br>0x20001111|- rs2_val == 0x6FBF0000 and rs1_val == 0xE2ED8971 #nosat<br>                                                                                             |[0x80000448]:xperm.n<br> [0x8000044c]:sw<br> |
|  39|[0x800030a8]<br>0x7fa00eee|- rs2_val == 0x354E8000 and rs1_val == 0x06FA7B3E #nosat<br>                                                                                             |[0x8000045c]:xperm.n<br> [0x80000460]:sw<br> |
|  40|[0x800030ac]<br>0x00140111|- rs2_val == 0xFB07C000 and rs1_val == 0x4143DA51 #nosat<br>                                                                                             |[0x80000470]:xperm.n<br> [0x80000474]:sw<br> |
|  41|[0x800030b0]<br>0x00005111|- rs2_val == 0xDFFA2000 and rs1_val == 0xCAC78511 #nosat<br>                                                                                             |[0x80000484]:xperm.n<br> [0x80000488]:sw<br> |
|  42|[0x800030b4]<br>0x88010111|- rs2_val == 0x45D1F000 and rs1_val == 0xDF880B11 #nosat<br>                                                                                             |[0x80000498]:xperm.n<br> [0x8000049c]:sw<br> |
|  43|[0x800030b8]<br>0x08d00088|- rs2_val == 0x9069A800 and rs1_val == 0xBD230058 #nosat<br>                                                                                             |[0x800004b0]:xperm.n<br> [0x800004b4]:sw<br> |
|  44|[0x800030bc]<br>0x05070977|- rs2_val == 0xF5B1B400 and rs1_val == 0xF2597377 #nosat<br>                                                                                             |[0x800004c8]:xperm.n<br> [0x800004cc]:sw<br> |
|  45|[0x800030c0]<br>0x1a0a0011|- rs2_val == 0x06B6DA00 and rs1_val == 0x5A8E7F31 #nosat<br>                                                                                             |[0x800004e0]:xperm.n<br> [0x800004e4]:sw<br> |
|  46|[0x800030c4]<br>0x00050f55|- rs2_val == 0xBFB0F100 and rs1_val == 0x7A3621F5 #nosat<br>                                                                                             |[0x800004f8]:xperm.n<br> [0x800004fc]:sw<br> |
|  47|[0x800030c8]<br>0x0040000c|- rs2_val == 0xD838C880 and rs1_val == 0x1E3C492C #nosat<br>                                                                                             |[0x80000510]:xperm.n<br> [0x80000514]:sw<br> |
|  48|[0x800030cc]<br>0xf0a40001|- rs2_val == 0x5C46AEC0 and rs1_val == 0xD4FAF4B1 #nosat<br>                                                                                             |[0x80000528]:xperm.n<br> [0x8000052c]:sw<br> |
|  49|[0x800030d0]<br>0x00200784|- rs2_val == 0xCF7AC620 and rs1_val == 0x27A16894 #nosat<br>                                                                                             |[0x80000540]:xperm.n<br> [0x80000544]:sw<br> |
|  50|[0x800030d4]<br>0xe3010a3e|- rs2_val == 0x05C2F650 and rs1_val == 0x0A3EF19E #nosat<br>                                                                                             |[0x80000558]:xperm.n<br> [0x8000055c]:sw<br> |
|  51|[0x800030d8]<br>0x0008f800|- rs2_val == 0xEEC50588 and rs1_val == 0xCB8193EF #nosat<br>                                                                                             |[0x80000570]:xperm.n<br> [0x80000574]:sw<br> |
|  52|[0x800030dc]<br>0x00547700|- rs2_val == 0xCA7160CC and rs1_val == 0x577F8847 #nosat<br>                                                                                             |[0x80000588]:xperm.n<br> [0x8000058c]:sw<br> |
|  53|[0x800030e0]<br>0xba0aa00f|- rs2_val == 0x60E30DA2 and rs1_val == 0x9B5EAF0A #nosat<br>                                                                                             |[0x800005a0]:xperm.n<br> [0x800005a4]:sw<br> |
|  54|[0x800030e4]<br>0x5d00d0b0|- rs2_val == 0x76F86039 and rs1_val == 0x5D3BBCE0 #nosat<br>                                                                                             |[0x800005b8]:xperm.n<br> [0x800005bc]:sw<br> |
|  55|[0x800030e8]<br>0x00000000|- rs1_val == 0x00000000 and rs2_val == 0xFD1032E8 #nosat<br>                                                                                             |[0x800005cc]:xperm.n<br> [0x800005d0]:sw<br> |
|  56|[0x800030ec]<br>0x80000008|- rs1_val == 0x80000000 and rs2_val == 0x7B246C17 #nosat<br>                                                                                             |[0x800005e0]:xperm.n<br> [0x800005e4]:sw<br> |
|  57|[0x800030f0]<br>0x00000000|- rs1_val == 0x40000000 and rs2_val == 0x56F3EEF1 #nosat<br>                                                                                             |[0x800005f4]:xperm.n<br> [0x800005f8]:sw<br> |
|  58|[0x800030f4]<br>0xa0000000|- rs1_val == 0xA0000000 and rs2_val == 0x75923260 #nosat<br>                                                                                             |[0x80000608]:xperm.n<br> [0x8000060c]:sw<br> |
|  59|[0x800030f8]<br>0x00000010|- rs1_val == 0x10000000 and rs2_val == 0xB9D3087C #nosat<br>                                                                                             |[0x8000061c]:xperm.n<br> [0x80000620]:sw<br> |
|  60|[0x800030fc]<br>0x08000000|- rs1_val == 0xA8000000 and rs2_val == 0x46CBD355 #nosat<br>                                                                                             |[0x80000630]:xperm.n<br> [0x80000634]:sw<br> |
|  61|[0x80003100]<br>0x04040e00|- rs1_val == 0xE4000000 and rs2_val == 0x4616E73D #nosat<br>                                                                                             |[0x80000644]:xperm.n<br> [0x80000648]:sw<br> |
|  62|[0x80003104]<br>0x00000080|- rs1_val == 0x8E000000 and rs2_val == 0x8CCAEC71 #nosat<br>                                                                                             |[0x80000658]:xperm.n<br> [0x8000065c]:sw<br> |
|  63|[0x80003108]<br>0x00110000|- rs1_val == 0x13000000 and rs2_val == 0x9B774054 #nosat<br>                                                                                             |[0x8000066c]:xperm.n<br> [0x80000670]:sw<br> |
|  64|[0x8000310c]<br>0xb0800000|- rs1_val == 0x8B800000 and rs2_val == 0x6D5FCD18 #nosat<br>                                                                                             |[0x80000680]:xperm.n<br> [0x80000684]:sw<br> |
|  65|[0x80003110]<br>0x0e0e0ce0|- rs1_val == 0x7EC00000 and rs2_val == 0x0696F561 #nosat<br>                                                                                             |[0x80000694]:xperm.n<br> [0x80000698]:sw<br> |
|  66|[0x80003114]<br>0xd0000000|- rs1_val == 0x3DA00000 and rs2_val == 0x6E1E98E2 #nosat<br>                                                                                             |[0x800006a8]:xperm.n<br> [0x800006ac]:sw<br> |
|  67|[0x80003118]<br>0x00000002|- rs1_val == 0x20100000 and rs2_val == 0x2DEDB6A7 #nosat<br>                                                                                             |[0x800006bc]:xperm.n<br> [0x800006c0]:sw<br> |
|  68|[0x8000311c]<br>0x00090900|- rs1_val == 0x98380000 and rs2_val == 0x3C272728 #nosat<br>                                                                                             |[0x800006d0]:xperm.n<br> [0x800006d4]:sw<br> |
|  69|[0x80003120]<br>0x40ff0800|- rs1_val == 0x80F40000 and rs2_val == 0x4F55C73D #nosat<br>                                                                                             |[0x800006e4]:xperm.n<br> [0x800006e8]:sw<br> |
|  70|[0x80003124]<br>0x00005440|- rs1_val == 0x43560000 and rs2_val == 0xB0AB577A #nosat<br>                                                                                             |[0x800006f8]:xperm.n<br> [0x800006fc]:sw<br> |
|  71|[0x80003128]<br>0x900a06a0|- rs1_val == 0x62A90000 and rs2_val == 0x42F5D75E #nosat<br>                                                                                             |[0x8000070c]:xperm.n<br> [0x80000710]:sw<br> |
|  72|[0x8000312c]<br>0x00000003|- rs1_val == 0x60348000 and rs2_val == 0xB9F09825 #nosat<br>                                                                                             |[0x80000720]:xperm.n<br> [0x80000724]:sw<br> |
|  73|[0x80003130]<br>0x00000060|- rs1_val == 0x5EF6C000 and rs2_val == 0x9BFAD94F #nosat<br>                                                                                             |[0x80000734]:xperm.n<br> [0x80000738]:sw<br> |
|  74|[0x80003134]<br>0x00000000|- rs1_val == 0x79DF6000 and rs2_val == 0x98918DD8 #nosat<br>                                                                                             |[0x80000748]:xperm.n<br> [0x8000074c]:sw<br> |
|  75|[0x80003138]<br>0x000000c8|- rs1_val == 0x864C1000 and rs2_val == 0x9B811F47 #nosat<br>                                                                                             |[0x8000075c]:xperm.n<br> [0x80000760]:sw<br> |
|  76|[0x8000313c]<br>0x00000000|- rs1_val == 0x735CB800 and rs2_val == 0xD0D18FB0 #nosat<br>                                                                                             |[0x80000774]:xperm.n<br> [0x80000778]:sw<br> |
|  77|[0x80003140]<br>0x20004200|- rs1_val == 0x29554400 and rs2_val == 0x71992790 #nosat<br>                                                                                             |[0x8000078c]:xperm.n<br> [0x80000790]:sw<br> |
|  78|[0x80003144]<br>0x0a500006|- rs1_val == 0xA9A56A00 and rs2_val == 0x8248F803 #nosat<br>                                                                                             |[0x800007a4]:xperm.n<br> [0x800007a8]:sw<br> |
|  79|[0x80003148]<br>0x0050c0c5|- rs1_val == 0xC3405D00 and rs2_val == 0xEB3D7873 #nosat<br>                                                                                             |[0x800007bc]:xperm.n<br> [0x800007c0]:sw<br> |
|  80|[0x8000314c]<br>0x03030040|- rs1_val == 0x394D8080 and rs2_val == 0xD7A7BF5E #nosat<br>                                                                                             |[0x800007d4]:xperm.n<br> [0x800007d8]:sw<br> |
|  81|[0x80003150]<br>0x04006000|- rs1_val == 0xC6677840 and rs2_val == 0xD1BA5C0F #nosat<br>                                                                                             |[0x800007ec]:xperm.n<br> [0x800007f0]:sw<br> |
|  82|[0x80003154]<br>0x06008ee9|- rs1_val == 0x70598E60 and rs2_val == 0xD19E3224 #nosat<br>                                                                                             |[0x80000804]:xperm.n<br> [0x80000808]:sw<br> |
|  83|[0x80003158]<br>0x9a090095|- rs1_val == 0x98A59F90 and rs2_val == 0x35D30D74 #nosat<br>                                                                                             |[0x8000081c]:xperm.n<br> [0x80000820]:sw<br> |
|  84|[0x8000315c]<br>0xd80d3060|- rs1_val == 0xD306DEB8 and rs2_val == 0x70A76E49 #nosat<br>                                                                                             |[0x80000834]:xperm.n<br> [0x80000838]:sw<br> |
|  85|[0x80003160]<br>0x00000007|- rs1_val == 0x18A01374 and rs2_val == 0x9FCDB9E1 #nosat<br>                                                                                             |[0x8000084c]:xperm.n<br> [0x80000850]:sw<br> |
|  86|[0x80003164]<br>0x60000000|- rs1_val == 0xC3667402 and rs2_val == 0x5FEFE911 #nosat<br>                                                                                             |[0x80000864]:xperm.n<br> [0x80000868]:sw<br> |
|  87|[0x80003168]<br>0x70000000|- rs1_val == 0x797D76DF and rs2_val == 0x598B88DB #nosat<br>                                                                                             |[0x8000087c]:xperm.n<br> [0x80000880]:sw<br> |
|  88|[0x8000316c]<br>0xe0e70776|- rs2_val == 0x0C04F662 and rs1_val == 0xB7E7669E #nosat<br>                                                                                             |[0x80000894]:xperm.n<br> [0x80000898]:sw<br> |
|  89|[0x80003170]<br>0x00f20002|- rs2_val == 0xCD41CAD1 and rs1_val == 0xD24F0724 #nosat<br>                                                                                             |[0x800008ac]:xperm.n<br> [0x800008b0]:sw<br> |
|  90|[0x80003174]<br>0xa2320850|- rs2_val == 0x1203965B and rs1_val == 0x585022A3 #nosat<br>                                                                                             |[0x800008c4]:xperm.n<br> [0x800008c8]:sw<br> |
|  91|[0x80003178]<br>0xe0000a0e|- rs2_val == 0x7A9AC0A7 and rs1_val == 0xEE8F948A #nosat<br>                                                                                             |[0x800008dc]:xperm.n<br> [0x800008e0]:sw<br> |
|  92|[0x8000317c]<br>0xa00005a0|- rs2_val == 0x2AA8E42F and rs1_val == 0x2655FA99 #nosat<br>                                                                                             |[0x800008f4]:xperm.n<br> [0x800008f8]:sw<br> |
|  93|[0x80003180]<br>0x18800090|- rs2_val == 0x211D785F and rs1_val == 0x0C96A183 #nosat<br>                                                                                             |[0x8000090c]:xperm.n<br> [0x80000910]:sw<br> |
|  94|[0x80003184]<br>0xf0000330|- rs2_val == 0x59DDE33F and rs1_val == 0x88F931F4 #nosat<br>                                                                                             |[0x80000924]:xperm.n<br> [0x80000928]:sw<br> |
|  95|[0x80003188]<br>0x6660f860|- rs2_val == 0x711E627F and rs1_val == 0x6F2BF862 #nosat<br>                                                                                             |[0x8000093c]:xperm.n<br> [0x80000940]:sw<br> |
|  96|[0x8000318c]<br>0xa0036000|- rs2_val == 0x19835AFF and rs1_val == 0x5C6C32A5 #nosat<br>                                                                                             |[0x80000954]:xperm.n<br> [0x80000958]:sw<br> |
|  97|[0x80003190]<br>0x20000000|- rs2_val == 0x088B3DFF and rs1_val == 0x58FC0342 #nosat<br>                                                                                             |[0x8000096c]:xperm.n<br> [0x80000970]:sw<br> |
|  98|[0x80003194]<br>0x00300700|- rs2_val == 0x9A6DA3FF and rs1_val == 0x636A75E3 #nosat<br>                                                                                             |[0x80000984]:xperm.n<br> [0x80000988]:sw<br> |
|  99|[0x80003198]<br>0x24080400|- rs2_val == 0x37E0D7FF and rs1_val == 0x4ED62428 #nosat<br>                                                                                             |[0x8000099c]:xperm.n<br> [0x800009a0]:sw<br> |
| 100|[0x8000319c]<br>0xd0d00000|- rs2_val == 0x5E59CFFF and rs1_val == 0xD2D12745 #nosat<br>                                                                                             |[0x800009b4]:xperm.n<br> [0x800009b8]:sw<br> |
| 101|[0x800031a0]<br>0x003f0000|- rs2_val == 0xDD129FFF and rs1_val == 0x0D770F3C #nosat<br>                                                                                             |[0x800009cc]:xperm.n<br> [0x800009d0]:sw<br> |
| 102|[0x800031a4]<br>0x02c00000|- rs2_val == 0x872EBFFF and rs1_val == 0x2311ACFB #nosat<br>                                                                                             |[0x800009e4]:xperm.n<br> [0x800009e8]:sw<br> |
| 103|[0x800031a8]<br>0xbb3f0000|- rs2_val == 0x55367FFF and rs1_val == 0x0FB13BBC #nosat<br>                                                                                             |[0x800009fc]:xperm.n<br> [0x80000a00]:sw<br> |
| 104|[0x800031ac]<br>0x00030000|- rs2_val == 0xFDD2FFFF and rs1_val == 0x8DFC2307 #nosat<br>                                                                                             |[0x80000a14]:xperm.n<br> [0x80000a18]:sw<br> |
| 105|[0x800031b0]<br>0xbd000000|- rs2_val == 0x30BDFFFF and rs1_val == 0x7312BE6D #nosat<br>                                                                                             |[0x80000a2c]:xperm.n<br> [0x80000a30]:sw<br> |
| 106|[0x800031b4]<br>0x0cb10000|- rs2_val == 0xA743FFFF and rs1_val == 0xC61B1FBF #nosat<br>                                                                                             |[0x80000a44]:xperm.n<br> [0x80000a48]:sw<br> |
| 107|[0x800031b8]<br>0x000e0000|- rs2_val == 0x9987FFFF and rs1_val == 0xEBDA5A4F #nosat<br>                                                                                             |[0x80000a5c]:xperm.n<br> [0x80000a60]:sw<br> |
| 108|[0x800031bc]<br>0x99000000|- rs2_val == 0x118FFFFF and rs1_val == 0xC215E193 #nosat<br>                                                                                             |[0x80000a74]:xperm.n<br> [0x80000a78]:sw<br> |
| 109|[0x800031c0]<br>0x5e000000|- rs2_val == 0x65DFFFFF and rs1_val == 0x75EE935F #nosat<br>                                                                                             |[0x80000a8c]:xperm.n<br> [0x80000a90]:sw<br> |
| 110|[0x800031c4]<br>0x90000000|- rs2_val == 0x6CBFFFFF and rs1_val == 0x09C16162 #nosat<br>                                                                                             |[0x80000aa4]:xperm.n<br> [0x80000aa8]:sw<br> |
| 111|[0x800031c8]<br>0x35a00000|- rs2_val == 0x347FFFFF and rs1_val == 0xA4053175 #nosat<br>                                                                                             |[0x80000abc]:xperm.n<br> [0x80000ac0]:sw<br> |
| 112|[0x800031cc]<br>0x00000000|- rs2_val == 0xC4FFFFFF and rs1_val == 0x499006C8 #nosat<br>                                                                                             |[0x80000ad4]:xperm.n<br> [0x80000ad8]:sw<br> |
| 113|[0x800031d0]<br>0xbe000000|- rs2_val == 0x41FFFFFF and rs1_val == 0x3C5B3EEE #nosat<br>                                                                                             |[0x80000aec]:xperm.n<br> [0x80000af0]:sw<br> |
| 114|[0x800031d4]<br>0x90000000|- rs2_val == 0x6BFFFFFF and rs1_val == 0xD95FD86A #nosat<br>                                                                                             |[0x80000b04]:xperm.n<br> [0x80000b08]:sw<br> |
| 115|[0x800031d8]<br>0x02000000|- rs2_val == 0x87FFFFFF and rs1_val == 0x25784F4F #nosat<br>                                                                                             |[0x80000b1c]:xperm.n<br> [0x80000b20]:sw<br> |
| 116|[0x800031dc]<br>0x00000000|- rs2_val == 0xCFFFFFFF and rs1_val == 0x082018FA #nosat<br>                                                                                             |[0x80000b34]:xperm.n<br> [0x80000b38]:sw<br> |
| 117|[0x800031e0]<br>0x00000000|- rs2_val == 0x9FFFFFFF and rs1_val == 0x350CC530 #nosat<br>                                                                                             |[0x80000b4c]:xperm.n<br> [0x80000b50]:sw<br> |
| 118|[0x800031e4]<br>0xa0000000|- rs2_val == 0x3FFFFFFF and rs1_val == 0x7966A24E #nosat<br>                                                                                             |[0x80000b64]:xperm.n<br> [0x80000b68]:sw<br> |
| 119|[0x800031e8]<br>0x50000000|- rs2_val == 0x7FFFFFFF and rs1_val == 0x51D6D6DA #nosat<br>                                                                                             |[0x80000b7c]:xperm.n<br> [0x80000b80]:sw<br> |
| 120|[0x800031ec]<br>0x00000000|- rs2_val == 0xFFFFFFFF and rs1_val == 0xD5A2038F #nosat<br>                                                                                             |[0x80000b90]:xperm.n<br> [0x80000b94]:sw<br> |
| 121|[0x800031f0]<br>0x700600f7|- rs1_val == 0xFF7746E6 and rs2_val == 0x4F829B65 #nosat<br>                                                                                             |[0x80000ba8]:xperm.n<br> [0x80000bac]:sw<br> |
| 122|[0x800031f4]<br>0x11020104|- rs1_val == 0xF89A7241 and rs2_val == 0x00C2F091 #nosat<br>                                                                                             |[0x80000bc0]:xperm.n<br> [0x80000bc4]:sw<br> |
| 123|[0x800031f8]<br>0x090b00b6|- rs1_val == 0x11B36A93 and rs2_val == 0xB1F5D853 #nosat<br>                                                                                             |[0x80000bd8]:xperm.n<br> [0x80000bdc]:sw<br> |
| 124|[0x800031fc]<br>0x200045c4|- rs1_val == 0xC9932457 and rs2_val == 0x39BE2172 #nosat<br>                                                                                             |[0x80000bf0]:xperm.n<br> [0x80000bf4]:sw<br> |
| 125|[0x80003200]<br>0x68bf6000|- rs1_val == 0x4B9A6C8F and rs2_val == 0x316039EE #nosat<br>                                                                                             |[0x80000c08]:xperm.n<br> [0x80000c0c]:sw<br> |
| 126|[0x80003204]<br>0x49510055|- rs1_val == 0x9541241F and rs2_val == 0x5761A866 #nosat<br>                                                                                             |[0x80000c20]:xperm.n<br> [0x80000c24]:sw<br> |
| 127|[0x80003208]<br>0xf0040b04|- rs1_val == 0x94B431BF and rs2_val == 0x09E4D1F4 #nosat<br>                                                                                             |[0x80000c38]:xperm.n<br> [0x80000c3c]:sw<br> |
| 128|[0x8000320c]<br>0x00fed0e0|- rs1_val == 0xDC8FE97F and rs2_val == 0x9E03793F #nosat<br>                                                                                             |[0x80000c50]:xperm.n<br> [0x80000c54]:sw<br> |
| 129|[0x80003210]<br>0xb0ffbf00|- rs1_val == 0xB903CEFF and rs2_val == 0x7F1071EC #nosat<br>                                                                                             |[0x80000c68]:xperm.n<br> [0x80000c6c]:sw<br> |
| 130|[0x80003214]<br>0x00b00004|- rs1_val == 0xB494A5FF and rs2_val == 0x9A7EF9E4 #nosat<br>                                                                                             |[0x80000c80]:xperm.n<br> [0x80000c84]:sw<br> |
| 131|[0x80003218]<br>0xd00fd000|- rs1_val == 0xE2DD83FF and rs2_val == 0x59C05BB9 #nosat<br>                                                                                             |[0x80000c98]:xperm.n<br> [0x80000c9c]:sw<br> |
| 132|[0x8000321c]<br>0x00fafd0b|- rs1_val == 0xBBAFD7FF and rs2_val == 0xDE451397 #nosat<br>                                                                                             |[0x80000cb0]:xperm.n<br> [0x80000cb4]:sw<br> |
| 133|[0x80003220]<br>0xcf0fcff5|- rs1_val == 0xCE5C4FFF and rs2_val == 0x40F27005 #nosat<br>                                                                                             |[0x80000cc8]:xperm.n<br> [0x80000ccc]:sw<br> |
| 134|[0x80003224]<br>0xf3309005|- rs1_val == 0x39935FFF and rs2_val == 0x24496FE3 #nosat<br>                                                                                             |[0x80000ce0]:xperm.n<br> [0x80000ce4]:sw<br> |
| 135|[0x80003228]<br>0x00f7000f|- rs1_val == 0xEED7BFFF and rs2_val == 0xDE14BFF2 #nosat<br>                                                                                             |[0x80000cf8]:xperm.n<br> [0x80000cfc]:sw<br> |
| 136|[0x8000322c]<br>0x00f00000|- rs1_val == 0x008E7FFF and rs2_val == 0xB808A677 #nosat<br>                                                                                             |[0x80000d10]:xperm.n<br> [0x80000d14]:sw<br> |
| 137|[0x80003230]<br>0x120f00f0|- rs1_val == 0x12C2FFFF and rs2_val == 0x76B1FD3D #nosat<br>                                                                                             |[0x80000d28]:xperm.n<br> [0x80000d2c]:sw<br> |
| 138|[0x80003234]<br>0xa000ff00|- rs1_val == 0xE3A5FFFF and rs2_val == 0x5DCF019D #nosat<br>                                                                                             |[0x80000d40]:xperm.n<br> [0x80000d44]:sw<br> |
| 139|[0x80003238]<br>0x3909f090|- rs1_val == 0x9B03FFFF and rs2_val == 0x47B7097B #nosat<br>                                                                                             |[0x80000d58]:xperm.n<br> [0x80000d5c]:sw<br> |
| 140|[0x8000323c]<br>0x5000f07f|- rs1_val == 0x5F07FFFF and rs2_val == 0x759F1B43 #nosat<br>                                                                                             |[0x80000d70]:xperm.n<br> [0x80000d74]:sw<br> |
| 141|[0x80003240]<br>0xc0fff000|- rs1_val == 0x33CFFFFF and rs2_val == 0x5B331999 #nosat<br>                                                                                             |[0x80000d88]:xperm.n<br> [0x80000d8c]:sw<br> |
| 142|[0x80003244]<br>0xf0f7000f|- rs1_val == 0x709FFFFF and rs2_val == 0x2D37DE81 #nosat<br>                                                                                             |[0x80000da0]:xperm.n<br> [0x80000da4]:sw<br> |
| 143|[0x80003248]<br>0x0001fd00|- rs1_val == 0xD1BFFFFF and rs2_val == 0xFCB627AF #nosat<br>                                                                                             |[0x80000db8]:xperm.n<br> [0x80000dbc]:sw<br> |
| 144|[0x8000324c]<br>0xf0f0f007|- rs1_val == 0xAB7FFFFF and rs2_val == 0x1E0B4EE5 #nosat<br>                                                                                             |[0x80000dd0]:xperm.n<br> [0x80000dd4]:sw<br> |
| 145|[0x80003250]<br>0x00f07f0c|- rs1_val == 0x7CFFFFFF and rs2_val == 0xFB3E7196 #nosat<br>                                                                                             |[0x80000de8]:xperm.n<br> [0x80000dec]:sw<br> |
| 146|[0x80003254]<br>0x000f009f|- rs1_val == 0x59FFFFFF and rs2_val == 0xD9959A62 #nosat<br>                                                                                             |[0x80000e00]:xperm.n<br> [0x80000e04]:sw<br> |
| 147|[0x80003258]<br>0x0f0ff00f|- rs1_val == 0xDBFFFFFF and rs2_val == 0xE08409F0 #nosat<br>                                                                                             |[0x80000e18]:xperm.n<br> [0x80000e1c]:sw<br> |
| 148|[0x8000325c]<br>0xff000000|- rs1_val == 0xF7FFFFFF and rs2_val == 0x258ECECB #nosat<br>                                                                                             |[0x80000e30]:xperm.n<br> [0x80000e34]:sw<br> |
| 149|[0x80003260]<br>0x0060f00f|- rs1_val == 0x6FFFFFFF and rs2_val == 0xFF7D5EC0 #nosat<br>                                                                                             |[0x80000e48]:xperm.n<br> [0x80000e4c]:sw<br> |
| 150|[0x80003264]<br>0xf0f00fff|- rs1_val == 0x9FFFFFFF and rs2_val == 0x4B6EA010 #nosat<br>                                                                                             |[0x80000e60]:xperm.n<br> [0x80000e64]:sw<br> |
| 151|[0x80003268]<br>0x000f0000|- rs1_val == 0x3FFFFFFF and rs2_val == 0xD885BBAC #nosat<br>                                                                                             |[0x80000e78]:xperm.n<br> [0x80000e7c]:sw<br> |
| 152|[0x8000326c]<br>0x00000000|- rs1_val == 0x7FFFFFFF and rs2_val == 0xBBE8F88D #nosat<br>                                                                                             |[0x80000e90]:xperm.n<br> [0x80000e94]:sw<br> |
| 153|[0x80003270]<br>0x0f0f0f00|- rs1_val == 0xFFFFFFFF and rs2_val == 0xE3D6E4B9 #nosat<br>                                                                                             |[0x80000ea4]:xperm.n<br> [0x80000ea8]:sw<br> |
| 154|[0x80003274]<br>0x0026d400|- rs2_val == 0x970216FD and rs1_val == 0x0494B6D2 #nosat<br>                                                                                             |[0x80000ebc]:xperm.n<br> [0x80000ec0]:sw<br> |
| 155|[0x80003278]<br>0x60060000|- rs2_val == 0x5CB58B8F and rs1_val == 0xF2650B71 #nosat<br>                                                                                             |[0x80000ed4]:xperm.n<br> [0x80000ed8]:sw<br> |
| 156|[0x8000327c]<br>0x12000010|- rs2_val == 0x27EFDA6C and rs1_val == 0x21AF214A #nosat<br>                                                                                             |[0x80000eec]:xperm.n<br> [0x80000ef0]:sw<br> |
| 157|[0x80003280]<br>0x60600400|- rs2_val == 0x1D1EF7C0 and rs1_val == 0x482EA760 #nosat<br>                                                                                             |[0x80000f04]:xperm.n<br> [0x80000f08]:sw<br> |
| 158|[0x80003284]<br>0x30040030|- rs2_val == 0x0FC2A909 and rs1_val == 0x0F7A0443 #nosat<br>                                                                                             |[0x80000f1c]:xperm.n<br> [0x80000f20]:sw<br> |
| 159|[0x80003288]<br>0x83000309|- rs2_val == 0x04E9E4A6 and rs1_val == 0x69534048 #nosat<br>                                                                                             |[0x80000f34]:xperm.n<br> [0x80000f38]:sw<br> |
| 160|[0x8000328c]<br>0x5e300000|- rs2_val == 0x025FDCD7 and rs1_val == 0x043E3EF5 #nosat<br>                                                                                             |[0x80000f4c]:xperm.n<br> [0x80000f50]:sw<br> |
| 161|[0x80003290]<br>0x20108000|- rs2_val == 0x01782EBC and rs1_val == 0x12FAD802 #nosat<br>                                                                                             |[0x80000f64]:xperm.n<br> [0x80000f68]:sw<br> |
| 162|[0x80003294]<br>0x55040919|- rs2_val == 0x00A39575 and rs1_val == 0x119B4FE5 #nosat<br>                                                                                             |[0x80000f7c]:xperm.n<br> [0x80000f80]:sw<br> |
| 163|[0x80003298]<br>0xbb2000d0|- rs2_val == 0x0049886F and rs1_val == 0x7DB224CB #nosat<br>                                                                                             |[0x80000f94]:xperm.n<br> [0x80000f98]:sw<br> |
| 164|[0x8000329c]<br>0x33154050|- rs2_val == 0x0025693C and rs1_val == 0xB45F51C3 #nosat<br>                                                                                             |[0x80000fac]:xperm.n<br> [0x80000fb0]:sw<br> |
| 165|[0x800032a0]<br>0x33603660|- rs2_val == 0x0018031A and rs1_val == 0x41536363 #nosat<br>                                                                                             |[0x80000fc4]:xperm.n<br> [0x80000fc8]:sw<br> |
| 166|[0x800032a4]<br>0xaaa00ca1|- rs2_val == 0x000A8267 and rs1_val == 0x1A953CCA #nosat<br>                                                                                             |[0x80000fdc]:xperm.n<br> [0x80000fe0]:sw<br> |
| 167|[0x800032a8]<br>0xfff16fbf|- rs2_val == 0x00073010 and rs1_val == 0x14186EBF #nosat<br>                                                                                             |[0x80000ff4]:xperm.n<br> [0x80000ff8]:sw<br> |
| 168|[0x800032ac]<br>0xfff10f1c|- rs2_val == 0x00038734 and rs1_val == 0xF33C1A7F #nosat<br>                                                                                             |[0x8000100c]:xperm.n<br> [0x80001010]:sw<br> |
| 169|[0x800032b0]<br>0x22250005|- rs2_val == 0x0001EAB1 and rs1_val == 0x8DCE6F52 #nosat<br>                                                                                             |[0x80001024]:xperm.n<br> [0x80001028]:sw<br> |
| 170|[0x800032b4]<br>0x88880000|- rs2_val == 0x0000B8EC and rs1_val == 0x3096C6C8 #nosat<br>                                                                                             |[0x8000103c]:xperm.n<br> [0x80001040]:sw<br> |
| 171|[0x800032b8]<br>0x55559415|- rs2_val == 0x00007530 and rs1_val == 0x9C461CB5 #nosat<br>                                                                                             |[0x80001054]:xperm.n<br> [0x80001058]:sw<br> |
| 172|[0x800032bc]<br>0x11116007|- rs2_val == 0x00003ED5 and rs1_val == 0x27756991 #nosat<br>                                                                                             |[0x8000106c]:xperm.n<br> [0x80001070]:sw<br> |
| 173|[0x800032c0]<br>0x555545dd|- rs2_val == 0x00001055 and rs1_val == 0x62D74145 #nosat<br>                                                                                             |[0x80001084]:xperm.n<br> [0x80001088]:sw<br> |
| 174|[0x800032c4]<br>0xddddd000|- rs2_val == 0x00000E9E and rs1_val == 0x931719FD #nosat<br>                                                                                             |[0x8000109c]:xperm.n<br> [0x800010a0]:sw<br> |
| 175|[0x800032c8]<br>0x00000500|- rs2_val == 0x0000059B and rs1_val == 0x965768E0 #nosat<br>                                                                                             |[0x800010b0]:xperm.n<br> [0x800010b4]:sw<br> |
| 176|[0x800032cc]<br>0x11111210|- rs2_val == 0x00000208 and rs1_val == 0x74057241 #nosat<br>                                                                                             |[0x800010c4]:xperm.n<br> [0x800010c8]:sw<br> |
| 177|[0x800032d0]<br>0xeeeee800|- rs2_val == 0x000001E8 and rs1_val == 0x5E617F8E #nosat<br>                                                                                             |[0x800010d8]:xperm.n<br> [0x800010dc]:sw<br> |
| 178|[0x800032d4]<br>0x88888808|- rs2_val == 0x000000D2 and rs1_val == 0x3E361858 #nosat<br>                                                                                             |[0x800010ec]:xperm.n<br> [0x800010f0]:sw<br> |
| 179|[0x800032d8]<br>0x22222215|- rs2_val == 0x00000071 and rs1_val == 0x13041452 #nosat<br>                                                                                             |[0x80001100]:xperm.n<br> [0x80001104]:sw<br> |
| 180|[0x800032dc]<br>0x000000fb|- rs2_val == 0x00000034 and rs1_val == 0x4BDBF090 #nosat<br>                                                                                             |[0x80001114]:xperm.n<br> [0x80001118]:sw<br> |
| 181|[0x800032e0]<br>0x44444450|- rs2_val == 0x00000019 and rs1_val == 0x9C3ECB54 #nosat<br>                                                                                             |[0x80001128]:xperm.n<br> [0x8000112c]:sw<br> |
| 182|[0x800032e4]<br>0x00000000|- rs2_val == 0x0000000B and rs1_val == 0x421E7A60 #nosat<br>                                                                                             |[0x8000113c]:xperm.n<br> [0x80001140]:sw<br> |
| 183|[0x800032e8]<br>0xccccccc7|- rs2_val == 0x00000005 and rs1_val == 0x2577C1EC #nosat<br>                                                                                             |[0x80001150]:xperm.n<br> [0x80001154]:sw<br> |
| 184|[0x800032ec]<br>0xddddddd8|- rs2_val == 0x00000002 and rs1_val == 0x19AF685D #nosat<br>                                                                                             |[0x80001164]:xperm.n<br> [0x80001168]:sw<br> |
| 185|[0x800032f0]<br>0x77777770|- rs2_val == 0x00000001 and rs1_val == 0x2FF36007 #nosat<br>                                                                                             |[0x80001178]:xperm.n<br> [0x8000117c]:sw<br> |
| 186|[0x800032f4]<br>0xcccccccc|- rs2_val == 0x00000000 and rs1_val == 0xE286852C #nosat<br>                                                                                             |[0x8000118c]:xperm.n<br> [0x80001190]:sw<br> |
| 187|[0x800032f8]<br>0x0c000008|- rs1_val == 0xC511488A and rs2_val == 0x97BDD982 #nosat<br>                                                                                             |[0x800011a4]:xperm.n<br> [0x800011a8]:sw<br> |
| 188|[0x800032fc]<br>0x15601050|- rs1_val == 0x65151C41 and rs2_val == 0x367E5D6D #nosat<br>                                                                                             |[0x800011bc]:xperm.n<br> [0x800011c0]:sw<br> |
| 189|[0x80003300]<br>0x43800002|- rs1_val == 0x24CA83B3 and rs2_val == 0x623D8EB7 #nosat<br>                                                                                             |[0x800011d4]:xperm.n<br> [0x800011d8]:sw<br> |
| 190|[0x80003304]<br>0x6f01b0b0|- rs1_val == 0x1C3B66FB and rs2_val == 0x21870F0B #nosat<br>                                                                                             |[0x800011ec]:xperm.n<br> [0x800011f0]:sw<br> |
| 191|[0x80003308]<br>0x0fa80daa|- rs1_val == 0x0A8A6FD0 and rs2_val == 0x82450164 #nosat<br>                                                                                             |[0x80001204]:xperm.n<br> [0x80001208]:sw<br> |
| 192|[0x8000330c]<br>0x0000006c|- rs1_val == 0x069CA08C and rs2_val == 0x8F2DF760 #nosat<br>                                                                                             |[0x8000121c]:xperm.n<br> [0x80001220]:sw<br> |
| 193|[0x80003310]<br>0x00050203|- rs1_val == 0x03552C95 and rs2_val == 0x7CA07386 #nosat<br>                                                                                             |[0x80001234]:xperm.n<br> [0x80001238]:sw<br> |
| 194|[0x80003314]<br>0x1000a001|- rs1_val == 0x0174EA19 and rs2_val == 0x19DE2BC1 #nosat<br>                                                                                             |[0x8000124c]:xperm.n<br> [0x80001250]:sw<br> |
| 195|[0x80003318]<br>0x00500040|- rs1_val == 0x00A454F2 and rs2_val == 0xEC3FBF4D #nosat<br>                                                                                             |[0x80001264]:xperm.n<br> [0x80001268]:sw<br> |
| 196|[0x8000331c]<br>0xe0e0e7e9|- rs1_val == 0x007E9BEE and rs2_val == 0x164F1513 #nosat<br>                                                                                             |[0x8000127c]:xperm.n<br> [0x80001280]:sw<br> |
| 197|[0x80003320]<br>0x0000000c|- rs1_val == 0x002C7CD0 and rs2_val == 0xACC6D8F2 #nosat<br>                                                                                             |[0x80001294]:xperm.n<br> [0x80001298]:sw<br> |
| 198|[0x80003324]<br>0x01370101|- rs1_val == 0x00177310 and rs2_val == 0xA123F501 #nosat<br>                                                                                             |[0x800012ac]:xperm.n<br> [0x800012b0]:sw<br> |
| 199|[0x80003328]<br>0x00000000|- rs1_val == 0x00091609 and rs2_val == 0xB57A6A1D #nosat<br>                                                                                             |[0x800012c4]:xperm.n<br> [0x800012c8]:sw<br> |
| 200|[0x8000332c]<br>0x00000400|- rs1_val == 0x00040BE0 and rs2_val == 0xE90794DF #nosat<br>                                                                                             |[0x800012dc]:xperm.n<br> [0x800012e0]:sw<br> |
| 201|[0x80003330]<br>0x00000b00|- rs1_val == 0x00028D1B and rs2_val == 0xAF5570EE #nosat<br>                                                                                             |[0x800012f4]:xperm.n<br> [0x800012f8]:sw<br> |
| 202|[0x80003334]<br>0x00000100|- rs1_val == 0x0001FBE5 and rs2_val == 0xD8B9B45C #nosat<br>                                                                                             |[0x8000130c]:xperm.n<br> [0x80001310]:sw<br> |
| 203|[0x80003338]<br>0xc00cc0a0|- rs1_val == 0x0000AAC1 and rs2_val == 0x1BA1192E #nosat<br>                                                                                             |[0x80001324]:xperm.n<br> [0x80001328]:sw<br> |
| 204|[0x8000333c]<br>0x00000003|- rs1_val == 0x000062C3 and rs2_val == 0x49FE85B0 #nosat<br>                                                                                             |[0x8000133c]:xperm.n<br> [0x80001340]:sw<br> |
| 205|[0x80003340]<br>0x0fd00000|- rs1_val == 0x000022FD and rs2_val == 0x4105CCA7 #nosat<br>                                                                                             |[0x80001354]:xperm.n<br> [0x80001358]:sw<br> |
| 206|[0x80003344]<br>0x00b00000|- rs1_val == 0x000016B3 and rs2_val == 0xD7185DDA #nosat<br>                                                                                             |[0x8000136c]:xperm.n<br> [0x80001370]:sw<br> |
| 207|[0x80003348]<br>0x00033008|- rs1_val == 0x00000A38 and rs2_val == 0xA7A11490 #nosat<br>                                                                                             |[0x80001384]:xperm.n<br> [0x80001388]:sw<br> |
| 208|[0x8000334c]<br>0x00000000|- rs1_val == 0x000006A7 and rs2_val == 0xA9964AEF #nosat<br>                                                                                             |[0x80001398]:xperm.n<br> [0x8000139c]:sw<br> |
| 209|[0x80003350]<br>0x00000000|- rs1_val == 0x000003B9 and rs2_val == 0x4B4D8474 #nosat<br>                                                                                             |[0x800013ac]:xperm.n<br> [0x800013b0]:sw<br> |
| 210|[0x80003354]<br>0x00000000|- rs1_val == 0x00000190 and rs2_val == 0x76C468AE #nosat<br>                                                                                             |[0x800013c0]:xperm.n<br> [0x800013c4]:sw<br> |
| 211|[0x80003358]<br>0x40040000|- rs1_val == 0x000000D4 and rs2_val == 0x09208A65 #nosat<br>                                                                                             |[0x800013d4]:xperm.n<br> [0x800013d8]:sw<br> |
| 212|[0x8000335c]<br>0x00000000|- rs1_val == 0x00000067 and rs2_val == 0x8743FEB6 #nosat<br>                                                                                             |[0x800013e8]:xperm.n<br> [0x800013ec]:sw<br> |
| 213|[0x80003360]<br>0x00009000|- rs1_val == 0x00000039 and rs2_val == 0xA66B0D38 #nosat<br>                                                                                             |[0x800013fc]:xperm.n<br> [0x80001400]:sw<br> |
| 214|[0x80003364]<br>0x0001c000|- rs1_val == 0x0000001C and rs2_val == 0xFB710734 #nosat<br>                                                                                             |[0x80001410]:xperm.n<br> [0x80001414]:sw<br> |
| 215|[0x80003368]<br>0x00000000|- rs1_val == 0x0000000E and rs2_val == 0xA26B7F62 #nosat<br>                                                                                             |[0x80001424]:xperm.n<br> [0x80001428]:sw<br> |
| 216|[0x8000336c]<br>0x00000000|- rs1_val == 0x00000007 and rs2_val == 0x4DABB481 #nosat<br>                                                                                             |[0x80001438]:xperm.n<br> [0x8000143c]:sw<br> |
| 217|[0x80003370]<br>0x00000000|- rs1_val == 0x00000003 and rs2_val == 0x2FA91425 #nosat<br>                                                                                             |[0x8000144c]:xperm.n<br> [0x80001450]:sw<br> |
| 218|[0x80003374]<br>0x00000000|- rs1_val == 0x00000001 and rs2_val == 0x965EDA32 #nosat<br>                                                                                             |[0x80001460]:xperm.n<br> [0x80001464]:sw<br> |
| 219|[0x80003378]<br>0x00000000|- rs1_val == 0x00000000 and rs2_val == 0xC7FDE805 #nosat<br>                                                                                             |[0x80001474]:xperm.n<br> [0x80001478]:sw<br> |
| 220|[0x8000337c]<br>0xf030ce00|- rs2_val == 0x6D3F408C and rs1_val == 0xFFEC35FE #nosat<br>                                                                                             |[0x8000148c]:xperm.n<br> [0x80001490]:sw<br> |
| 221|[0x80003380]<br>0x0a70d79a|- rs2_val == 0x946A3674 and rs1_val == 0x976AD220 #nosat<br>                                                                                             |[0x800014a4]:xperm.n<br> [0x800014a8]:sw<br> |
| 222|[0x80003384]<br>0x00999f00|- rs2_val == 0xDC6113A4 and rs1_val == 0x5990FE96 #nosat<br>                                                                                             |[0x800014bc]:xperm.n<br> [0x800014c0]:sw<br> |
| 223|[0x80003388]<br>0x0ed00400|- rs2_val == 0xE42A809C and rs1_val == 0xC96EFDC4 #nosat<br>                                                                                             |[0x800014d4]:xperm.n<br> [0x800014d8]:sw<br> |
| 224|[0x8000338c]<br>0x0c048ab1|- rs2_val == 0xF1A25760 and rs1_val == 0xAB8534C1 #nosat<br>                                                                                             |[0x800014ec]:xperm.n<br> [0x800014f0]:sw<br> |
| 225|[0x80003390]<br>0x002d0000|- rs2_val == 0xFB37BEC9 and rs1_val == 0xD1142724 #nosat<br>                                                                                             |[0x80001504]:xperm.n<br> [0x80001508]:sw<br> |
| 226|[0x80003394]<br>0x00053066|- rs2_val == 0xFCE51A66 and rs1_val == 0xF65E7737 #nosat<br>                                                                                             |[0x8000151c]:xperm.n<br> [0x80001520]:sw<br> |
| 227|[0x80003398]<br>0x00000000|- rs2_val == 0xFEDEBB9C and rs1_val == 0x16CBC21C #nosat<br>                                                                                             |[0x80001534]:xperm.n<br> [0x80001538]:sw<br> |
| 228|[0x8000339c]<br>0x00b04d90|- rs2_val == 0xFF69340A and rs1_val == 0xDBDD4DD9 #nosat<br>                                                                                             |[0x8000154c]:xperm.n<br> [0x80001550]:sw<br> |
| 229|[0x800033a0]<br>0x00000009|- rs2_val == 0xFF9CF3F4 and rs1_val == 0x4BD90A77 #nosat<br>                                                                                             |[0x80001564]:xperm.n<br> [0x80001568]:sw<br> |
| 230|[0x800033a4]<br>0x00099c02|- rs2_val == 0xFFC00793 and rs1_val == 0xCEBE24D9 #nosat<br>                                                                                             |[0x8000157c]:xperm.n<br> [0x80001580]:sw<br> |
| 231|[0x800033a8]<br>0x00008000|- rs2_val == 0xFFEE1FC4 and rs1_val == 0xA0E0BD86 #nosat<br>                                                                                             |[0x80001594]:xperm.n<br> [0x80001598]:sw<br> |
| 232|[0x800033ac]<br>0x0003c370|- rs2_val == 0xFFF06038 and rs1_val == 0x3CC279B3 #nosat<br>                                                                                             |[0x800015ac]:xperm.n<br> [0x800015b0]:sw<br> |
| 233|[0x800033b0]<br>0x00009049|- rs2_val == 0xFFF93D53 and rs1_val == 0x754F9B96 #nosat<br>                                                                                             |[0x800015c4]:xperm.n<br> [0x800015c8]:sw<br> |
| 234|[0x800033b4]<br>0x00004700|- rs2_val == 0xFFFC47E8 and rs1_val == 0x72745307 #nosat<br>                                                                                             |[0x800015dc]:xperm.n<br> [0x800015e0]:sw<br> |
| 235|[0x800033b8]<br>0x0000d62d|- rs2_val == 0xFFFE7302 and rs1_val == 0xDCAE6D62 #nosat<br>                                                                                             |[0x800015f4]:xperm.n<br> [0x800015f8]:sw<br> |
| 236|[0x800033bc]<br>0x00006000|- rs2_val == 0xFFFF1CE8 and rs1_val == 0x7C2C966D #nosat<br>                                                                                             |[0x8000160c]:xperm.n<br> [0x80001610]:sw<br> |
| 237|[0x800033c0]<br>0x00000b0b|- rs2_val == 0xFFFFB5C6 and rs1_val == 0x9BB4752D #nosat<br>                                                                                             |[0x80001624]:xperm.n<br> [0x80001628]:sw<br> |
| 238|[0x800033c4]<br>0x0000000e|- rs2_val == 0xFFFFDFA4 and rs1_val == 0x17BE082F #nosat<br>                                                                                             |[0x8000163c]:xperm.n<br> [0x80001640]:sw<br> |
| 239|[0x800033c8]<br>0x00000050|- rs2_val == 0xFFFFEF0B and rs1_val == 0x109FF475 #nosat<br>                                                                                             |[0x80001654]:xperm.n<br> [0x80001658]:sw<br> |
| 240|[0x800033cc]<br>0x00000970|- rs2_val == 0xFFFFF43F and rs1_val == 0x00B97EA6 #nosat<br>                                                                                             |[0x8000166c]:xperm.n<br> [0x80001670]:sw<br> |
| 241|[0x800033d0]<br>0x00000060|- rs2_val == 0xFFFFFB4A and rs1_val == 0xF956EC0B #nosat<br>                                                                                             |[0x80001680]:xperm.n<br> [0x80001684]:sw<br> |
| 242|[0x800033d4]<br>0x0000000c|- rs2_val == 0xFFFFFDA4 and rs1_val == 0x70FC1AFC #nosat<br>                                                                                             |[0x80001694]:xperm.n<br> [0x80001698]:sw<br> |
| 243|[0x800033d8]<br>0x00000000|- rs2_val == 0xFFFFFECB and rs1_val == 0x6348306E #nosat<br>                                                                                             |[0x800016a8]:xperm.n<br> [0x800016ac]:sw<br> |
| 244|[0x800033dc]<br>0x000000b0|- rs2_val == 0xFFFFFF54 and rs1_val == 0x66B072B9 #nosat<br>                                                                                             |[0x800016bc]:xperm.n<br> [0x800016c0]:sw<br> |
| 245|[0x800033e0]<br>0x00000000|- rs2_val == 0xFFFFFFA9 and rs1_val == 0x7FF822ED #nosat<br>                                                                                             |[0x800016d0]:xperm.n<br> [0x800016d4]:sw<br> |
| 246|[0x800033e4]<br>0x0000000b|- rs2_val == 0xFFFFFFC3 and rs1_val == 0xE918BE9F #nosat<br>                                                                                             |[0x800016e4]:xperm.n<br> [0x800016e8]:sw<br> |
| 247|[0x800033e8]<br>0x0000000e|- rs2_val == 0xFFFFFFE7 and rs1_val == 0xE4BAE7F6 #nosat<br>                                                                                             |[0x800016f8]:xperm.n<br> [0x800016fc]:sw<br> |
| 248|[0x800033ec]<br>0x00000006|- rs2_val == 0xFFFFFFF1 and rs1_val == 0xDE9A896F #nosat<br>                                                                                             |[0x8000170c]:xperm.n<br> [0x80001710]:sw<br> |
| 249|[0x800033f0]<br>0x00000000|- rs2_val == 0xFFFFFFF8 and rs1_val == 0x2881E531 #nosat<br>                                                                                             |[0x80001720]:xperm.n<br> [0x80001724]:sw<br> |
| 250|[0x800033f4]<br>0x00000000|- rs2_val == 0xFFFFFFFC and rs1_val == 0x1475F78D #nosat<br>                                                                                             |[0x80001734]:xperm.n<br> [0x80001738]:sw<br> |
| 251|[0x800033f8]<br>0x00000000|- rs2_val == 0xFFFFFFFE and rs1_val == 0xE59CF78F #nosat<br>                                                                                             |[0x80001748]:xperm.n<br> [0x8000174c]:sw<br> |
| 252|[0x800033fc]<br>0x00000000|- rs2_val == 0xFFFFFFFF and rs1_val == 0xB66B3284 #nosat<br>                                                                                             |[0x8000175c]:xperm.n<br> [0x80001760]:sw<br> |
| 253|[0x80003400]<br>0x30900694|- rs1_val == 0x6F4930C9 and rs2_val == 0x39422745 #nosat<br>                                                                                             |[0x80001774]:xperm.n<br> [0x80001778]:sw<br> |
| 254|[0x80003404]<br>0xd0005060|- rs1_val == 0x85D97467 and rs2_val == 0x58FA6E1C #nosat<br>                                                                                             |[0x8000178c]:xperm.n<br> [0x80001790]:sw<br> |
| 255|[0x80003408]<br>0xc09afc00|- rs1_val == 0xC70AFC93 and rs2_val == 0x2D143295 #nosat<br>                                                                                             |[0x800017a4]:xperm.n<br> [0x800017a8]:sw<br> |
| 256|[0x8000340c]<br>0x056f0190|- rs1_val == 0xE911655F and rs2_val == 0xD230B46C #nosat<br>                                                                                             |[0x800017bc]:xperm.n<br> [0x800017c0]:sw<br> |
| 257|[0x80003410]<br>0xb0fa0003|- rs1_val == 0xF4AB0A39 and rs2_val == 0x4D753AC1 #nosat<br>                                                                                             |[0x800017d4]:xperm.n<br> [0x800017d8]:sw<br> |
| 258|[0x80003414]<br>0x20088f08|- rs1_val == 0xF8BD4821 and rs2_val == 0x1E9667C2 #nosat<br>                                                                                             |[0x800017ec]:xperm.n<br> [0x800017f0]:sw<br> |
| 259|[0x80003418]<br>0x0070e006|- rs1_val == 0xFCD7E667 and rs2_val == 0xAE4839A1 #nosat<br>                                                                                             |[0x80001804]:xperm.n<br> [0x80001808]:sw<br> |
| 260|[0x8000341c]<br>0xe0fdcc0f|- rs1_val == 0xFE71CFDF and rs2_val == 0x6A013380 #nosat<br>                                                                                             |[0x8000181c]:xperm.n<br> [0x80001820]:sw<br> |
| 261|[0x80003420]<br>0x10c110a0|- rs1_val == 0xFF1C11AE and rs2_val == 0x59432A19 #nosat<br>                                                                                             |[0x80001834]:xperm.n<br> [0x80001838]:sw<br> |
| 262|[0x80003424]<br>0x0008af0f|- rs1_val == 0xFF89799A and rs2_val == 0xCEB506F6 #nosat<br>                                                                                             |[0x8000184c]:xperm.n<br> [0x80001850]:sw<br> |
| 263|[0x80003428]<br>0x0c00f180|- rs1_val == 0xFFC80B13 and rs2_val == 0xC5EC6148 #nosat<br>                                                                                             |[0x80001864]:xperm.n<br> [0x80001868]:sw<br> |
| 264|[0x8000342c]<br>0x000040ef|- rs1_val == 0xFFE94647 and rs2_val == 0x99EF1857 #nosat<br>                                                                                             |[0x8000187c]:xperm.n<br> [0x80001880]:sw<br> |
| 265|[0x80003430]<br>0xc200c0f0|- rs1_val == 0xFFF263CF and rs2_val == 0x14B91C79 #nosat<br>                                                                                             |[0x80001894]:xperm.n<br> [0x80001898]:sw<br> |
| 266|[0x80003434]<br>0x00f000f0|- rs1_val == 0xFFF919A1 and rs2_val == 0xA86B8A6E #nosat<br>                                                                                             |[0x800018ac]:xperm.n<br> [0x800018b0]:sw<br> |
| 267|[0x80003438]<br>0xd08d00d0|- rs1_val == 0xFFFDE89D and rs2_val == 0x08208D09 #nosat<br>                                                                                             |[0x800018c4]:xperm.n<br> [0x800018c8]:sw<br> |
| 268|[0x8000343c]<br>0xf00d0000|- rs1_val == 0xFFFEC9D0 and rs2_val == 0x69B1DCBF #nosat<br>                                                                                             |[0x800018dc]:xperm.n<br> [0x800018e0]:sw<br> |
| 269|[0x80003440]<br>0x06f005ff|- rs1_val == 0xFFFF5576 and rs2_val == 0x807DA245 #nosat<br>                                                                                             |[0x800018f4]:xperm.n<br> [0x800018f8]:sw<br> |
| 270|[0x80003444]<br>0x0f0f06ff|- rs1_val == 0xFFFFB6DF and rs2_val == 0x95A4D257 #nosat<br>                                                                                             |[0x8000190c]:xperm.n<br> [0x80001910]:sw<br> |
| 271|[0x80003448]<br>0xfcf01ff0|- rs1_val == 0xFFFFC561 and rs2_val == 0x735C076B #nosat<br>                                                                                             |[0x80001924]:xperm.n<br> [0x80001928]:sw<br> |
| 272|[0x8000344c]<br>0x0f05e5f0|- rs1_val == 0xFFFFEAB5 and rs2_val == 0xE5F0307E #nosat<br>                                                                                             |[0x8000193c]:xperm.n<br> [0x80001940]:sw<br> |
| 273|[0x80003450]<br>0x00000fff|- rs1_val == 0xFFFFF602 and rs2_val == 0xE8DAC663 #nosat<br>                                                                                             |[0x80001954]:xperm.n<br> [0x80001958]:sw<br> |
| 274|[0x80003454]<br>0x1b10081f|- rs1_val == 0xFFFFF8B1 and rs2_val == 0x0109C207 #nosat<br>                                                                                             |[0x80001968]:xperm.n<br> [0x8000196c]:sw<br> |
| 275|[0x80003458]<br>0xf000000a|- rs1_val == 0xFFFFFCA0 and rs2_val == 0x600FECC1 #nosat<br>                                                                                             |[0x8000197c]:xperm.n<br> [0x80001980]:sw<br> |
| 276|[0x8000345c]<br>0x00f0f0f0|- rs1_val == 0xFFFFFECC and rs2_val == 0xFB7F6F5D #nosat<br>                                                                                             |[0x80001990]:xperm.n<br> [0x80001994]:sw<br> |
| 277|[0x80003460]<br>0xf00f0ff0|- rs1_val == 0xFFFFFF6E and rs2_val == 0x5CD2875E #nosat<br>                                                                                             |[0x800019a4]:xperm.n<br> [0x800019a8]:sw<br> |
| 278|[0x80003464]<br>0x0000f040|- rs1_val == 0xFFFFFF84 and rs2_val == 0xACCA7F0D #nosat<br>                                                                                             |[0x800019b8]:xperm.n<br> [0x800019bc]:sw<br> |
| 279|[0x80003468]<br>0xf00f0ff0|- rs1_val == 0xFFFFFFDD and rs2_val == 0x5AE6A228 #nosat<br>                                                                                             |[0x800019cc]:xperm.n<br> [0x800019d0]:sw<br> |
| 280|[0x8000346c]<br>0x00e0f000|- rs1_val == 0xFFFFFFE7 and rs2_val == 0xFF1E5BEF #nosat<br>                                                                                             |[0x800019e0]:xperm.n<br> [0x800019e4]:sw<br> |
| 281|[0x80003470]<br>0xfff00fff|- rs1_val == 0xFFFFFFF4 and rs2_val == 0x137A9777 #nosat<br>                                                                                             |[0x800019f4]:xperm.n<br> [0x800019f8]:sw<br> |
| 282|[0x80003474]<br>0x0ff00fff|- rs1_val == 0xFFFFFFFA and rs2_val == 0x854A9657 #nosat<br>                                                                                             |[0x80001a08]:xperm.n<br> [0x80001a0c]:sw<br> |
| 283|[0x80003478]<br>0x000f0f0f|- rs1_val == 0xFFFFFFFD and rs2_val == 0xCF84B683 #nosat<br>                                                                                             |[0x80001a1c]:xperm.n<br> [0x80001a20]:sw<br> |
| 284|[0x8000347c]<br>0x0f000000|- rs1_val == 0xFFFFFFFE and rs2_val == 0x93FDCAB8 #nosat<br>                                                                                             |[0x80001a30]:xperm.n<br> [0x80001a34]:sw<br> |
| 285|[0x80003480]<br>0x77922060|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                             |[0x80001a48]:xperm.n<br> [0x80001a4c]:sw<br> |
| 286|[0x80003484]<br>0x00df105d|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                             |[0x80001a60]:xperm.n<br> [0x80001a64]:sw<br> |
| 287|[0x80003488]<br>0x00000030|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                             |[0x80001a78]:xperm.n<br> [0x80001a7c]:sw<br> |
| 288|[0x80003490]<br>0x00777777|- rs2_val == 0xB8000000 and rs1_val == 0x9C734D77 #nosat<br>                                                                                             |[0x80001aa4]:xperm.n<br> [0x80001aa8]:sw<br> |
