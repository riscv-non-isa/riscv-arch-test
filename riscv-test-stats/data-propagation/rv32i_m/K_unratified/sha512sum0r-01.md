
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a50')]      |
| SIG_REGION                | [('0x80002010', '0x80002200', '124 words')]      |
| COV_LABELS                | sha512sum0r      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha512sum0r-01.S/ref.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 121      |
| STAT1                     | 117      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000428]:sha512sum0r
      [0x8000042c]:sw
 -- Signature Address: 0x800020b0 Data: 0xbf555550
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum0r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 4293918719




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000504]:sha512sum0r
      [0x80000508]:sw
 -- Signature Address: 0x800020dc Data: 0x7ffdf7bf
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum0r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294959103
      - rs1_val == 4294967231




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000538]:sha512sum0r
      [0x8000053c]:sw
 -- Signature Address: 0x800020e8 Data: 0x2e00208b
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum0r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 4294967287
      - rs2_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a3c]:sha512sum0r
      [0x80000a40]:sw
 -- Signature Address: 0x800021f0 Data: 0x07ffff72
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum0r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967287






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

|s.no|        signature         |                                                                        coverpoints                                                                         |                      code                       |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
|   1|[0x80002010]<br>0x83ff47b6|- opcode : sha512sum0r<br> - rs1 : x30<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br> |[0x80000110]:sha512sum0r<br> [0x80000114]:sw<br> |
|   2|[0x80002014]<br>0x7cfffff0|- rs1 : x25<br> - rs2 : x26<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs2_val == 2147483647<br>                                                           |[0x80000124]:sha512sum0r<br> [0x80000128]:sw<br> |
|   3|[0x80002018]<br>0x62000114|- rs1 : x18<br> - rs2 : x18<br> - rd : x21<br> - rs1 == rs2 != rd<br>                                                                                       |[0x80000134]:sha512sum0r<br> [0x80000138]:sw<br> |
|   4|[0x8000201c]<br>0xf7bfffff|- rs1 : x29<br> - rs2 : x21<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3758096383<br> - rs1_val == 4292870143<br>        |[0x8000014c]:sha512sum0r<br> [0x80000150]:sw<br> |
|   5|[0x80002020]<br>0xadffff6d|- rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br>                                                                                          |[0x8000015c]:sha512sum0r<br> [0x80000160]:sw<br> |
|   6|[0x80002024]<br>0x7defffff|- rs1 : x26<br> - rs2 : x22<br> - rd : x1<br> - rs2_val == 4160749567<br> - rs1_val == 4286578687<br>                                                       |[0x80000174]:sha512sum0r<br> [0x80000178]:sw<br> |
|   7|[0x80002028]<br>0xbef7ffff|- rs1 : x28<br> - rs2 : x19<br> - rd : x24<br> - rs2_val == 4227858431<br> - rs1_val == 4294705151<br>                                                      |[0x8000018c]:sha512sum0r<br> [0x80000190]:sw<br> |
|   8|[0x8000202c]<br>0xe17bfff2|- rs1 : x22<br> - rs2 : x9<br> - rd : x27<br> - rs2_val == 4261412863<br> - rs1_val == 536870912<br>                                                        |[0x800001a0]:sha512sum0r<br> [0x800001a4]:sw<br> |
|   9|[0x80002030]<br>0xd1bdfff0|- rs1 : x0<br> - rs2 : x3<br> - rd : x22<br> - rs2_val == 4278190079<br>                                                                                    |[0x800001b4]:sha512sum0r<br> [0x800001b8]:sw<br> |
|  10|[0x80002034]<br>0xc9defff0|- rs1 : x5<br> - rs2 : x4<br> - rd : x13<br> - rs2_val == 4286578687<br> - rs1_val == 262144<br>                                                            |[0x800001c8]:sha512sum0r<br> [0x800001cc]:sw<br> |
|  11|[0x80002038]<br>0xc5ef7ff0|- rs1 : x7<br> - rs2 : x2<br> - rd : x9<br> - rs2_val == 4290772991<br> - rs1_val == 2097152<br>                                                            |[0x800001dc]:sha512sum0r<br> [0x800001e0]:sw<br> |
|  12|[0x8000203c]<br>0x15f7bff0|- rs1 : x13<br> - rs2 : x11<br> - rd : x16<br> - rs2_val == 4292870143<br>                                                                                  |[0x800001f0]:sha512sum0r<br> [0x800001f4]:sw<br> |
|  13|[0x80002040]<br>0xfefbdfff|- rs1 : x8<br> - rs2 : x13<br> - rd : x5<br> - rs2_val == 4293918719<br> - rs1_val == 4294967167<br>                                                        |[0x80000204]:sha512sum0r<br> [0x80000208]:sw<br> |
|  14|[0x80002044]<br>0xef7defff|- rs1 : x20<br> - rs2 : x28<br> - rd : x7<br> - rs2_val == 4294443007<br> - rs1_val == 4294967287<br>                                                       |[0x80000218]:sha512sum0r<br> [0x8000021c]:sw<br> |
|  15|[0x80002048]<br>0x15bef7fa|- rs1 : x27<br> - rs2 : x16<br> - rd : x3<br> - rs2_val == 4294705151<br>                                                                                   |[0x80000230]:sha512sum0r<br> [0x80000234]:sw<br> |
|  16|[0x8000204c]<br>0xc1df7bf0|- rs1 : x10<br> - rs2 : x20<br> - rd : x29<br> - rs2_val == 4294836223<br> - rs1_val == 1048576<br>                                                         |[0x80000244]:sha512sum0r<br> [0x80000248]:sw<br> |
|  17|[0x80002050]<br>0x00000000|- rs1 : x17<br> - rs2 : x0<br> - rd : x15<br> - rs1_val == 134217728<br>                                                                                    |[0x80000254]:sha512sum0r<br> [0x80000258]:sw<br> |
|  18|[0x80002054]<br>0xfff7deff|- rs1 : x23<br> - rs2 : x31<br> - rd : x10<br> - rs2_val == 4294934527<br> - rs1_val == 4294967039<br>                                                      |[0x80000270]:sha512sum0r<br> [0x80000274]:sw<br> |
|  19|[0x80002058]<br>0x31fbef7f|- rs1 : x24<br> - rs2 : x12<br> - rd : x20<br> - rs2_val == 4294950911<br>                                                                                  |[0x80000284]:sha512sum0r<br> [0x80000288]:sw<br> |
|  20|[0x8000205c]<br>0x55fdf7b0|- rs1 : x31<br> - rs2 : x29<br> - rd : x23<br> - rs2_val == 4294959103<br>                                                                                  |[0x80000298]:sha512sum0r<br> [0x8000029c]:sw<br> |
|  21|[0x80002060]<br>0xbdfefbdf|- rs1 : x11<br> - rs2 : x25<br> - rd : x28<br> - rs2_val == 4294963199<br> - rs1_val == 4294967294<br>                                                      |[0x800002ac]:sha512sum0r<br> [0x800002b0]:sw<br> |
|  22|[0x80002064]<br>0x7fff7def|- rs1 : x2<br> - rs2 : x23<br> - rd : x18<br> - rs2_val == 4294965247<br> - rs1_val == 4294967231<br>                                                       |[0x800002c0]:sha512sum0r<br> [0x800002c4]:sw<br> |
|  23|[0x80002068]<br>0xc1ffbef9|- rs1 : x1<br> - rs2 : x17<br> - rd : x31<br> - rs2_val == 4294966271<br> - rs1_val == 268435456<br>                                                        |[0x800002d0]:sha512sum0r<br> [0x800002d4]:sw<br> |
|  24|[0x8000206c]<br>0xffffdf7b|- rs1 : x12<br> - rs2 : x1<br> - rd : x17<br> - rs2_val == 4294966783<br> - rs1_val == 4261412863<br>                                                       |[0x800002e4]:sha512sum0r<br> [0x800002e8]:sw<br> |
|  25|[0x80002070]<br>0x5dffefb2|- rs1 : x14<br> - rs2 : x30<br> - rd : x12<br> - rs2_val == 4294967039<br>                                                                                  |[0x800002f4]:sha512sum0r<br> [0x800002f8]:sw<br> |
|  26|[0x80002074]<br>0xc1fff7d1|- rs1 : x9<br> - rs2 : x5<br> - rd : x4<br> - rs2_val == 4294967167<br> - rs1_val == 2048<br>                                                               |[0x80000308]:sha512sum0r<br> [0x8000030c]:sw<br> |
|  27|[0x80002078]<br>0xc1fffbe0|- rs1 : x3<br> - rs2 : x7<br> - rd : x26<br> - rs2_val == 4294967231<br>                                                                                    |[0x80000318]:sha512sum0r<br> [0x8000031c]:sw<br> |
|  28|[0x8000207c]<br>0xfffffdf7|- rs1 : x16<br> - rs2 : x24<br> - rd : x19<br> - rs2_val == 4294967263<br> - rs1_val == 4293918719<br>                                                      |[0x8000032c]:sha512sum0r<br> [0x80000330]:sw<br> |
|  29|[0x80002080]<br>0xfffffef3|- rs1 : x21<br> - rs2 : x15<br> - rd : x11<br> - rs2_val == 4294967279<br> - rs1_val == 2147483647<br>                                                      |[0x80000340]:sha512sum0r<br> [0x80000344]:sw<br> |
|  30|[0x80002084]<br>0x00000000|- rs1 : x4<br> - rs2 : x27<br> - rd : x0<br> - rs2_val == 4294967287<br>                                                                                    |[0x80000350]:sha512sum0r<br> [0x80000354]:sw<br> |
|  31|[0x80002088]<br>0xc1ffffb1|- rs1 : x19<br> - rs2 : x14<br> - rd : x2<br> - rs2_val == 4294967291<br> - rs1_val == 131072<br>                                                           |[0x80000360]:sha512sum0r<br> [0x80000364]:sw<br> |
|  32|[0x8000208c]<br>0x81ffffd0|- rs1 : x15<br> - rs2 : x10<br> - rd : x30<br> - rs2_val == 4294967293<br> - rs1_val == 32<br>                                                              |[0x80000370]:sha512sum0r<br> [0x80000374]:sw<br> |
|  33|[0x80002090]<br>0xffffffef|- rs2_val == 4294967294<br>                                                                                                                                 |[0x80000384]:sha512sum0r<br> [0x80000388]:sw<br> |
|  34|[0x80002094]<br>0x3e00005a|- rs1_val == 3221225471<br>                                                                                                                                 |[0x80000398]:sha512sum0r<br> [0x8000039c]:sw<br> |
|  35|[0x80002098]<br>0x3a20000d|- rs1_val == 3758096383<br> - rs2_val == 268435456<br>                                                                                                      |[0x800003ac]:sha512sum0r<br> [0x800003b0]:sw<br> |
|  36|[0x8000209c]<br>0x3e00005f|- rs1_val == 4026531839<br>                                                                                                                                 |[0x800003c0]:sha512sum0r<br> [0x800003c4]:sw<br> |
|  37|[0x800020a0]<br>0x2e80000f|- rs1_val == 4160749567<br> - rs2_val == 1073741824<br>                                                                                                     |[0x800003d4]:sha512sum0r<br> [0x800003d8]:sw<br> |
|  38|[0x800020a4]<br>0x2e42000f|- rs1_val == 4227858431<br> - rs2_val == 16777216<br>                                                                                                       |[0x800003e8]:sha512sum0r<br> [0x800003ec]:sw<br> |
|  39|[0x800020a8]<br>0x3e00000f|- rs1_val == 4278190079<br>                                                                                                                                 |[0x800003fc]:sha512sum0r<br> [0x80000400]:sw<br> |
|  40|[0x800020ac]<br>0x3e0000fc|- rs1_val == 4290772991<br>                                                                                                                                 |[0x80000410]:sha512sum0r<br> [0x80000414]:sw<br> |
|  41|[0x800020b4]<br>0x3f04200f|- rs1_val == 4294443007<br> - rs2_val == 1048576<br>                                                                                                        |[0x8000043c]:sha512sum0r<br> [0x80000440]:sw<br> |
|  42|[0x800020b8]<br>0xf7bfffff|- rs1_val == 4294836223<br>                                                                                                                                 |[0x80000454]:sha512sum0r<br> [0x80000458]:sw<br> |
|  43|[0x800020bc]<br>0x3e00208b|- rs1_val == 4294901759<br> - rs2_val == 512<br>                                                                                                            |[0x80000468]:sha512sum0r<br> [0x8000046c]:sw<br> |
|  44|[0x800020c0]<br>0xf7bfffff|- rs1_val == 4294934527<br>                                                                                                                                 |[0x80000480]:sha512sum0r<br> [0x80000484]:sw<br> |
|  45|[0x800020c4]<br>0x3e00003f|- rs1_val == 4294950911<br>                                                                                                                                 |[0x80000494]:sha512sum0r<br> [0x80000498]:sw<br> |
|  46|[0x800020c8]<br>0x3e00006e|- rs1_val == 4294959103<br>                                                                                                                                 |[0x800004a8]:sha512sum0r<br> [0x800004ac]:sw<br> |
|  47|[0x800020cc]<br>0x3a20000f|- rs1_val == 4294963199<br>                                                                                                                                 |[0x800004bc]:sha512sum0r<br> [0x800004c0]:sw<br> |
|  48|[0x800020d0]<br>0x3621000f|- rs1_val == 4294965247<br> - rs2_val == 8388608<br>                                                                                                        |[0x800004d0]:sha512sum0r<br> [0x800004d4]:sw<br> |
|  49|[0x800020d4]<br>0x0f80000f|- rs1_val == 4294966271<br>                                                                                                                                 |[0x800004e0]:sha512sum0r<br> [0x800004e4]:sw<br> |
|  50|[0x800020d8]<br>0x3e00008d|- rs1_val == 4294966783<br> - rs2_val == 8<br>                                                                                                              |[0x800004f0]:sha512sum0r<br> [0x800004f4]:sw<br> |
|  51|[0x800020e0]<br>0xafbdffff|- rs1_val == 4294967263<br>                                                                                                                                 |[0x80000518]:sha512sum0r<br> [0x8000051c]:sw<br> |
|  52|[0x800020e4]<br>0x1e004107|- rs1_val == 4294967279<br> - rs2_val == 1024<br>                                                                                                           |[0x80000528]:sha512sum0r<br> [0x8000052c]:sw<br> |
|  53|[0x800020ec]<br>0x3600006e|- rs1_val == 4294967291<br>                                                                                                                                 |[0x80000548]:sha512sum0r<br> [0x8000054c]:sw<br> |
|  54|[0x800020f0]<br>0x6bbdffff|- rs1_val == 4294967293<br>                                                                                                                                 |[0x8000055c]:sha512sum0r<br> [0x80000560]:sw<br> |
|  55|[0x800020f4]<br>0x1f00000f|- rs2_val == 2147483648<br>                                                                                                                                 |[0x80000570]:sha512sum0r<br> [0x80000574]:sw<br> |
|  56|[0x800020f8]<br>0x3640000f|- rs2_val == 536870912<br>                                                                                                                                  |[0x80000584]:sha512sum0r<br> [0x80000588]:sw<br> |
|  57|[0x800020fc]<br>0x5610000a|- rs2_val == 134217728<br>                                                                                                                                  |[0x80000598]:sha512sum0r<br> [0x8000059c]:sw<br> |
|  58|[0x80002100]<br>0x83df7bf0|- rs1_val == 1<br>                                                                                                                                          |[0x800005ac]:sha512sum0r<br> [0x800005b0]:sw<br> |
|  59|[0x80002104]<br>0x06f666bb|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                                |[0x800005c4]:sha512sum0r<br> [0x800005c8]:sw<br> |
|  60|[0x80002108]<br>0x2cacc664|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                |[0x800005dc]:sha512sum0r<br> [0x800005e0]:sw<br> |
|  61|[0x8000210c]<br>0x047f97ee|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                |[0x800005f4]:sha512sum0r<br> [0x800005f8]:sw<br> |
|  62|[0x80002110]<br>0x2fc2ab5d|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                |[0x8000060c]:sha512sum0r<br> [0x80000610]:sw<br> |
|  63|[0x80002114]<br>0x6744a80f|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                |[0x80000624]:sha512sum0r<br> [0x80000628]:sw<br> |
|  64|[0x80002118]<br>0xc26d88aa|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                |[0x8000063c]:sha512sum0r<br> [0x80000640]:sw<br> |
|  65|[0x8000211c]<br>0xccd3bc16|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                |[0x80000654]:sha512sum0r<br> [0x80000658]:sw<br> |
|  66|[0x80002120]<br>0x6ea85c17|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                |[0x8000066c]:sha512sum0r<br> [0x80000670]:sw<br> |
|  67|[0x80002124]<br>0xad1347ed|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                |[0x80000684]:sha512sum0r<br> [0x80000688]:sw<br> |
|  68|[0x80002128]<br>0xa78d3e8c|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                |[0x8000069c]:sha512sum0r<br> [0x800006a0]:sw<br> |
|  69|[0x8000212c]<br>0x1338c71c|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                |[0x800006b4]:sha512sum0r<br> [0x800006b8]:sw<br> |
|  70|[0x80002130]<br>0x59926535|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                |[0x800006cc]:sha512sum0r<br> [0x800006d0]:sw<br> |
|  71|[0x80002134]<br>0xf7628431|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                |[0x800006e4]:sha512sum0r<br> [0x800006e8]:sw<br> |
|  72|[0x80002138]<br>0x4ee976b4|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                |[0x800006fc]:sha512sum0r<br> [0x80000700]:sw<br> |
|  73|[0x8000213c]<br>0xf83cdd02|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                |[0x80000714]:sha512sum0r<br> [0x80000718]:sw<br> |
|  74|[0x80002140]<br>0x8dc915f1|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                |[0x8000072c]:sha512sum0r<br> [0x80000730]:sw<br> |
|  75|[0x80002144]<br>0xd4434ebc|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                |[0x80000744]:sha512sum0r<br> [0x80000748]:sw<br> |
|  76|[0x80002148]<br>0xbdc875f4|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                |[0x8000075c]:sha512sum0r<br> [0x80000760]:sw<br> |
|  77|[0x8000214c]<br>0x21b435fb|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                |[0x80000774]:sha512sum0r<br> [0x80000778]:sw<br> |
|  78|[0x80002150]<br>0x41080000|- rs2_val == 67108864<br> - rs1_val == 256<br>                                                                                                              |[0x80000784]:sha512sum0r<br> [0x80000788]:sw<br> |
|  79|[0x80002154]<br>0x1e84000b|- rs2_val == 33554432<br>                                                                                                                                   |[0x80000798]:sha512sum0r<br> [0x8000079c]:sw<br> |
|  80|[0x80002158]<br>0x3a10800f|- rs2_val == 4194304<br>                                                                                                                                    |[0x800007ac]:sha512sum0r<br> [0x800007b0]:sw<br> |
|  81|[0x8000215c]<br>0x3408400f|- rs2_val == 2097152<br>                                                                                                                                    |[0x800007bc]:sha512sum0r<br> [0x800007c0]:sw<br> |
|  82|[0x80002160]<br>0x00821000|- rs2_val == 524288<br> - rs1_val == 4194304<br>                                                                                                            |[0x800007cc]:sha512sum0r<br> [0x800007d0]:sw<br> |
|  83|[0x80002164]<br>0x3e41080f|- rs2_val == 262144<br>                                                                                                                                     |[0x800007e0]:sha512sum0r<br> [0x800007e4]:sw<br> |
|  84|[0x80002168]<br>0x42208400|- rs2_val == 131072<br>                                                                                                                                     |[0x800007f0]:sha512sum0r<br> [0x800007f4]:sw<br> |
|  85|[0x8000216c]<br>0x40104200|- rs2_val == 65536<br>                                                                                                                                      |[0x80000800]:sha512sum0r<br> [0x80000804]:sw<br> |
|  86|[0x80002170]<br>0x00082100|- rs2_val == 32768<br> - rs1_val == 4096<br>                                                                                                                |[0x80000810]:sha512sum0r<br> [0x80000814]:sw<br> |
|  87|[0x80002174]<br>0xba04108f|- rs2_val == 16384<br>                                                                                                                                      |[0x80000820]:sha512sum0r<br> [0x80000824]:sw<br> |
|  88|[0x80002178]<br>0x00020840|- rs2_val == 8192<br> - rs1_val == 32768<br>                                                                                                                |[0x80000830]:sha512sum0r<br> [0x80000834]:sw<br> |
|  89|[0x8000217c]<br>0x3e01042f|- rs2_val == 4096<br>                                                                                                                                       |[0x80000844]:sha512sum0r<br> [0x80000848]:sw<br> |
|  90|[0x80002180]<br>0x8c008210|- rs2_val == 2048<br>                                                                                                                                       |[0x80000858]:sha512sum0r<br> [0x8000085c]:sw<br> |
|  91|[0x80002184]<br>0x00001042|- rs2_val == 256<br> - rs1_val == 1024<br>                                                                                                                  |[0x80000868]:sha512sum0r<br> [0x8000086c]:sw<br> |
|  92|[0x80002188]<br>0x3e00082e|- rs2_val == 128<br>                                                                                                                                        |[0x8000087c]:sha512sum0r<br> [0x80000880]:sw<br> |
|  93|[0x8000218c]<br>0x42000410|- rs2_val == 64<br>                                                                                                                                         |[0x8000088c]:sha512sum0r<br> [0x80000890]:sw<br> |
|  94|[0x80002190]<br>0x00000208|- rs2_val == 32<br> - rs1_val == 67108864<br>                                                                                                               |[0x8000089c]:sha512sum0r<br> [0x800008a0]:sw<br> |
|  95|[0x80002194]<br>0x3e00010b|- rs2_val == 16<br>                                                                                                                                         |[0x800008b0]:sha512sum0r<br> [0x800008b4]:sw<br> |
|  96|[0x80002198]<br>0x52000041|- rs2_val == 4<br>                                                                                                                                          |[0x800008c0]:sha512sum0r<br> [0x800008c4]:sw<br> |
|  97|[0x8000219c]<br>0x00000020|- rs2_val == 2<br>                                                                                                                                          |[0x800008d0]:sha512sum0r<br> [0x800008d4]:sw<br> |
|  98|[0x800021a0]<br>0x4a000010|- rs2_val == 1<br>                                                                                                                                          |[0x800008e0]:sha512sum0r<br> [0x800008e4]:sw<br> |
|  99|[0x800021a4]<br>0xc1ffbef0|- rs1_val == 2147483648<br>                                                                                                                                 |[0x800008f0]:sha512sum0r<br> [0x800008f4]:sw<br> |
| 100|[0x800021a8]<br>0xc1fffff4|- rs1_val == 1073741824<br>                                                                                                                                 |[0x80000900]:sha512sum0r<br> [0x80000904]:sw<br> |
| 101|[0x800021ac]<br>0xc1fffdf8|- rs1_val == 33554432<br>                                                                                                                                   |[0x80000910]:sha512sum0r<br> [0x80000914]:sw<br> |
| 102|[0x800021b0]<br>0x00082100|- rs1_val == 16777216<br>                                                                                                                                   |[0x80000920]:sha512sum0r<br> [0x80000924]:sw<br> |
| 103|[0x800021b4]<br>0xc1ffefb2|- rs1_val == 8388608<br>                                                                                                                                    |[0x80000930]:sha512sum0r<br> [0x80000934]:sw<br> |
| 104|[0x800021b8]<br>0x82100000|- rs1_val == 524288<br>                                                                                                                                     |[0x80000940]:sha512sum0r<br> [0x80000944]:sw<br> |
| 105|[0x800021bc]<br>0x00821000|- rs1_val == 65536<br>                                                                                                                                      |[0x80000950]:sha512sum0r<br> [0x80000954]:sw<br> |
| 106|[0x800021c0]<br>0xc17deff0|- rs1_val == 16384<br>                                                                                                                                      |[0x80000964]:sha512sum0r<br> [0x80000968]:sw<br> |
| 107|[0x800021c4]<br>0xd1bdfff0|- rs1_val == 8192<br>                                                                                                                                       |[0x80000978]:sha512sum0r<br> [0x8000097c]:sw<br> |
| 108|[0x800021c8]<br>0x00008210|- rs1_val == 512<br>                                                                                                                                        |[0x8000098c]:sha512sum0r<br> [0x80000990]:sw<br> |
| 109|[0x800021cc]<br>0x04200000|- rs1_val == 128<br>                                                                                                                                        |[0x8000099c]:sha512sum0r<br> [0x800009a0]:sw<br> |
| 110|[0x800021d0]<br>0x41fffef4|- rs1_val == 64<br>                                                                                                                                         |[0x800009ac]:sha512sum0r<br> [0x800009b0]:sw<br> |
| 111|[0x800021d4]<br>0x200000f3|- rs1_val == 16<br>                                                                                                                                         |[0x800009bc]:sha512sum0r<br> [0x800009c0]:sw<br> |
| 112|[0x800021d8]<br>0xd1ffff91|- rs1_val == 8<br>                                                                                                                                          |[0x800009cc]:sha512sum0r<br> [0x800009d0]:sw<br> |
| 113|[0x800021dc]<br>0xc97deff0|- rs1_val == 4<br>                                                                                                                                          |[0x800009e0]:sha512sum0r<br> [0x800009e4]:sw<br> |
| 114|[0x800021e0]<br>0x840000c3|- rs1_val == 2<br>                                                                                                                                          |[0x800009f0]:sha512sum0r<br> [0x800009f4]:sw<br> |
| 115|[0x800021e4]<br>0xb37ffff0|- rs2_val == 3221225471<br>                                                                                                                                 |[0x80000a04]:sha512sum0r<br> [0x80000a08]:sw<br> |
| 116|[0x800021e8]<br>0xa9dfffff|- rs2_val == 4026531839<br>                                                                                                                                 |[0x80000a18]:sha512sum0r<br> [0x80000a1c]:sw<br> |
| 117|[0x800021ec]<br>0xc1efbdf0|- rs2_val == 4294901759<br>                                                                                                                                 |[0x80000a2c]:sha512sum0r<br> [0x80000a30]:sw<br> |
