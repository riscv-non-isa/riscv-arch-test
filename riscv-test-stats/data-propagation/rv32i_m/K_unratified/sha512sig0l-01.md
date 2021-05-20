
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a70')]      |
| SIG_REGION                | [('0x80002010', '0x80002200', '124 words')]      |
| COV_LABELS                | sha512sig0l      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha512sig0l-01.S/ref.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 121      |
| STAT1                     | 118      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c8]:sha512sig0l
      [0x800004cc]:sw
 -- Signature Address: 0x800020c4 Data: 0xf5fffbe7
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig0l
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 4294965247




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a54]:sha512sig0l
      [0x80000a58]:sw
 -- Signature Address: 0x800021ec Data: 0xfffffbe7
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig0l
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294836223
      - rs1_val == 4294965247




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a64]:sha512sig0l
      [0x80000a68]:sw
 -- Signature Address: 0x800021f0 Data: 0x3ffffffc
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig0l
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967231






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

|s.no|        signature         |                                                                         coverpoints                                                                         |                      code                       |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
|   1|[0x80002010]<br>0xb2ca95f4|- opcode : sha512sig0l<br> - rs1 : x7<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br> |[0x80000110]:sha512sig0l<br> [0x80000114]:sw<br> |
|   2|[0x80002014]<br>0x81000001|- rs1 : x21<br> - rs2 : x19<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs2_val == 2147483647<br> - rs1_val == 2<br>                                         |[0x80000124]:sha512sig0l<br> [0x80000128]:sw<br> |
|   3|[0x80002018]<br>0x36000009|- rs1 : x22<br> - rs2 : x22<br> - rd : x31<br> - rs1 == rs2 != rd<br>                                                                                        |[0x80000134]:sha512sig0l<br> [0x80000138]:sw<br> |
|   4|[0x8000201c]<br>0xfff7cfff|- rs1 : x3<br> - rs2 : x28<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3758096383<br> - rs1_val == 4293918719<br>          |[0x8000014c]:sha512sig0l<br> [0x80000150]:sw<br> |
|   5|[0x80002020]<br>0x55555555|- rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br>                                                                                        |[0x80000164]:sha512sig0l<br> [0x80000168]:sw<br> |
|   6|[0x80002024]<br>0xf7cfffff|- rs1 : x15<br> - rs2 : x23<br> - rd : x10<br> - rs2_val == 4160749567<br> - rs1_val == 4026531839<br>                                                       |[0x8000017c]:sha512sig0l<br> [0x80000180]:sw<br> |
|   7|[0x80002028]<br>0x85180000|- rs1 : x2<br> - rs2 : x16<br> - rd : x8<br> - rs2_val == 4227858431<br> - rs1_val == 134217728<br>                                                          |[0x80000190]:sha512sig0l<br> [0x80000194]:sw<br> |
|   8|[0x8000202c]<br>0xbe7fffff|- rs1 : x17<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4261412863<br> - rs1_val == 2147483647<br>                                                       |[0x800001a8]:sha512sig0l<br> [0x800001ac]:sw<br> |
|   9|[0x80002030]<br>0xa1c00000|- rs1 : x4<br> - rs2 : x5<br> - rd : x11<br> - rs2_val == 4278190079<br> - rs1_val == 1073741824<br>                                                         |[0x800001bc]:sha512sig0l<br> [0x800001c0]:sw<br> |
|  10|[0x80002034]<br>0xfff7cfff|- rs1 : x11<br> - rs2 : x24<br> - rd : x25<br> - rs2_val == 4286578687<br>                                                                                   |[0x800001d4]:sha512sig0l<br> [0x800001d8]:sw<br> |
|  11|[0x80002038]<br>0xfff7cfff|- rs1 : x23<br> - rs2 : x3<br> - rd : x9<br> - rs2_val == 4290772991<br>                                                                                     |[0x800001ec]:sha512sig0l<br> [0x800001f0]:sw<br> |
|  12|[0x8000203c]<br>0x81041800|- rs1 : x1<br> - rs2 : x17<br> - rd : x5<br> - rs2_val == 4292870143<br> - rs1_val == 524288<br>                                                             |[0x80000200]:sha512sig0l<br> [0x80000204]:sw<br> |
|  13|[0x80002040]<br>0x85180000|- rs1 : x12<br> - rs2 : x7<br> - rd : x1<br> - rs2_val == 4293918719<br>                                                                                     |[0x80000214]:sha512sig0l<br> [0x80000218]:sw<br> |
|  14|[0x80002044]<br>0xab555555|- rs1 : x9<br> - rs2 : x13<br> - rd : x26<br> - rs2_val == 4294443007<br>                                                                                    |[0x8000022c]:sha512sig0l<br> [0x80000230]:sw<br> |
|  15|[0x80002048]<br>0x81000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x27<br> - rs2_val == 4294705151<br>                                                                                     |[0x80000240]:sha512sig0l<br> [0x80000244]:sw<br> |
|  16|[0x8000204c]<br>0x7efffbe7|- rs1 : x25<br> - rs2 : x0<br> - rd : x18<br> - rs1_val == 4294965247<br>                                                                                    |[0x8000025c]:sha512sig0l<br> [0x80000260]:sw<br> |
|  17|[0x80002050]<br>0xd5aaaaaa|- rs1 : x31<br> - rs2 : x18<br> - rd : x13<br> - rs2_val == 4294901759<br>                                                                                   |[0x80000274]:sha512sig0l<br> [0x80000278]:sw<br> |
|  18|[0x80002054]<br>0xffffff7c|- rs1 : x14<br> - rs2 : x11<br> - rd : x20<br> - rs2_val == 4294934527<br> - rs1_val == 4294967039<br>                                                       |[0x80000288]:sha512sig0l<br> [0x8000028c]:sw<br> |
|  19|[0x80002058]<br>0x81000010|- rs1 : x27<br> - rs2 : x15<br> - rd : x23<br> - rs2_val == 4294950911<br> - rs1_val == 32<br>                                                               |[0x8000029c]:sha512sig0l<br> [0x800002a0]:sw<br> |
|  20|[0x8000205c]<br>0xfffffbe7|- rs1 : x5<br> - rs2 : x12<br> - rd : x6<br> - rs2_val == 4294959103<br>                                                                                     |[0x800002b4]:sha512sig0l<br> [0x800002b8]:sw<br> |
|  21|[0x80002060]<br>0xfffffff7|- rs1 : x24<br> - rs2 : x29<br> - rd : x2<br> - rs2_val == 4294963199<br> - rs1_val == 4294967279<br>                                                        |[0x800002c8]:sha512sig0l<br> [0x800002cc]:sw<br> |
|  22|[0x80002064]<br>0x81000001|- rs1 : x20<br> - rs2 : x31<br> - rd : x24<br> - rs2_val == 4294965247<br>                                                                                   |[0x800002dc]:sha512sig0l<br> [0x800002e0]:sw<br> |
|  23|[0x80002068]<br>0x89300000|- rs1 : x28<br> - rs2 : x25<br> - rd : x22<br> - rs2_val == 4294966271<br> - rs1_val == 268435456<br>                                                        |[0x800002ec]:sha512sig0l<br> [0x800002f0]:sw<br> |
|  24|[0x8000206c]<br>0xfffff7cf|- rs1 : x26<br> - rs2 : x4<br> - rd : x29<br> - rs2_val == 4294966783<br> - rs1_val == 4294963199<br>                                                        |[0x80000300]:sha512sig0l<br> [0x80000304]:sw<br> |
|  25|[0x80002070]<br>0xffff7cff|- rs1 : x6<br> - rs2 : x27<br> - rd : x28<br> - rs2_val == 4294967039<br> - rs1_val == 4294901759<br>                                                        |[0x80000314]:sha512sig0l<br> [0x80000318]:sw<br> |
|  26|[0x80002074]<br>0x5f3fffff|- rs1 : x16<br> - rs2 : x10<br> - rd : x3<br> - rs2_val == 4294967167<br> - rs1_val == 3221225471<br>                                                        |[0x80000328]:sha512sig0l<br> [0x8000032c]:sw<br> |
|  27|[0x80002078]<br>0x00000000|- rs1 : x18<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == 4294967231<br>                                                                                     |[0x80000338]:sha512sig0l<br> [0x8000033c]:sw<br> |
|  28|[0x8000207c]<br>0x9fffffdf|- rs1 : x10<br> - rs2 : x2<br> - rd : x12<br> - rs2_val == 4294967263<br> - rs1_val == 4294967231<br>                                                        |[0x80000348]:sha512sig0l<br> [0x8000034c]:sw<br> |
|  29|[0x80002080]<br>0xb1000002|- rs1 : x8<br> - rs2 : x26<br> - rd : x4<br> - rs2_val == 4294967279<br>                                                                                     |[0x80000358]:sha512sig0l<br> [0x8000035c]:sw<br> |
|  30|[0x80002084]<br>0x99000002|- rs1 : x29<br> - rs2 : x6<br> - rd : x16<br> - rs2_val == 4294967287<br> - rs1_val == 4<br>                                                                 |[0x80000368]:sha512sig0l<br> [0x8000036c]:sw<br> |
|  31|[0x80002088]<br>0xf1f3ffff|- rs1 : x13<br> - rs2 : x9<br> - rd : x17<br> - rs2_val == 4294967291<br> - rs1_val == 4227858431<br>                                                        |[0x8000037c]:sha512sig0l<br> [0x80000380]:sw<br> |
|  32|[0x8000208c]<br>0xf9ff7cff|- rs1 : x19<br> - rs2 : x21<br> - rd : x7<br> - rs2_val == 4294967293<br>                                                                                    |[0x80000390]:sha512sig0l<br> [0x80000394]:sw<br> |
|  33|[0x80002090]<br>0x7cfdf3ff|- rs2_val == 4294967294<br> - rs1_val == 4294705151<br>                                                                                                      |[0x800003ac]:sha512sig0l<br> [0x800003b0]:sw<br> |
|  34|[0x80002094]<br>0xef9fffff|- rs1_val == 3758096383<br>                                                                                                                                  |[0x800003c4]:sha512sig0l<br> [0x800003c8]:sw<br> |
|  35|[0x80002098]<br>0xfbe7ffff|- rs1_val == 4160749567<br>                                                                                                                                  |[0x800003dc]:sha512sig0l<br> [0x800003e0]:sw<br> |
|  36|[0x8000209c]<br>0xfef9ffff|- rs1_val == 4261412863<br>                                                                                                                                  |[0x800003f4]:sha512sig0l<br> [0x800003f8]:sw<br> |
|  37|[0x800020a0]<br>0x7e7cffff|- rs1_val == 4278190079<br> - rs2_val == 131072<br>                                                                                                          |[0x80000408]:sha512sig0l<br> [0x8000040c]:sw<br> |
|  38|[0x800020a4]<br>0x7ebe7fff|- rs1_val == 4286578687<br> - rs2_val == 16384<br>                                                                                                           |[0x8000041c]:sha512sig0l<br> [0x80000420]:sw<br> |
|  39|[0x800020a8]<br>0x7edf3fff|- rs1_val == 4290772991<br> - rs2_val == 134217728<br>                                                                                                       |[0x80000430]:sha512sig0l<br> [0x80000434]:sw<br> |
|  40|[0x800020ac]<br>0x64ef9fff|- rs1_val == 4292870143<br>                                                                                                                                  |[0x80000444]:sha512sig0l<br> [0x80000448]:sw<br> |
|  41|[0x800020b0]<br>0xfffbe7ff|- rs1_val == 4294443007<br>                                                                                                                                  |[0x8000045c]:sha512sig0l<br> [0x80000460]:sw<br> |
|  42|[0x800020b4]<br>0xf7fef9ff|- rs1_val == 4294836223<br>                                                                                                                                  |[0x80000470]:sha512sig0l<br> [0x80000474]:sw<br> |
|  43|[0x800020b8]<br>0x7effbe7f|- rs1_val == 4294934527<br> - rs2_val == 4096<br>                                                                                                            |[0x80000484]:sha512sig0l<br> [0x80000488]:sw<br> |
|  44|[0x800020bc]<br>0xffffdf3f|- rs1_val == 4294950911<br>                                                                                                                                  |[0x8000049c]:sha512sig0l<br> [0x800004a0]:sw<br> |
|  45|[0x800020c0]<br>0xffffef9f|- rs1_val == 4294959103<br>                                                                                                                                  |[0x800004b4]:sha512sig0l<br> [0x800004b8]:sw<br> |
|  46|[0x800020c8]<br>0x7efffdf3|- rs1_val == 4294966271<br> - rs2_val == 1024<br>                                                                                                            |[0x800004d8]:sha512sig0l<br> [0x800004dc]:sw<br> |
|  47|[0x800020cc]<br>0x7efffef9|- rs1_val == 4294966783<br> - rs2_val == 8388608<br>                                                                                                         |[0x800004e8]:sha512sig0l<br> [0x800004ec]:sw<br> |
|  48|[0x800020d0]<br>0x48ffffbe|- rs1_val == 4294967167<br>                                                                                                                                  |[0x800004f8]:sha512sig0l<br> [0x800004fc]:sw<br> |
|  49|[0x800020d4]<br>0xffffffef|- rs1_val == 4294967263<br>                                                                                                                                  |[0x8000050c]:sha512sig0l<br> [0x80000510]:sw<br> |
|  50|[0x800020d8]<br>0x7efffff7|- rs2_val == 67108864<br>                                                                                                                                    |[0x8000051c]:sha512sig0l<br> [0x80000520]:sw<br> |
|  51|[0x800020dc]<br>0xfffffffb|- rs1_val == 4294967287<br>                                                                                                                                  |[0x80000530]:sha512sig0l<br> [0x80000534]:sw<br> |
|  52|[0x800020e0]<br>0xf7fffffd|- rs1_val == 4294967291<br>                                                                                                                                  |[0x80000540]:sha512sig0l<br> [0x80000544]:sw<br> |
|  53|[0x800020e4]<br>0x7efffffe|- rs1_val == 4294967293<br>                                                                                                                                  |[0x80000550]:sha512sig0l<br> [0x80000554]:sw<br> |
|  54|[0x800020e8]<br>0xe7ffffff|- rs1_val == 4294967294<br>                                                                                                                                  |[0x80000560]:sha512sig0l<br> [0x80000564]:sw<br> |
|  55|[0x800020ec]<br>0x7edf3fff|- rs2_val == 2147483648<br>                                                                                                                                  |[0x80000574]:sha512sig0l<br> [0x80000578]:sw<br> |
|  56|[0x800020f0]<br>0x00000010|- rs2_val == 1073741824<br>                                                                                                                                  |[0x80000584]:sha512sig0l<br> [0x80000588]:sw<br> |
|  57|[0x800020f4]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                   |[0x80000594]:sha512sig0l<br> [0x80000598]:sw<br> |
|  58|[0x800020f8]<br>0x7effdf3f|- rs2_val == 268435456<br>                                                                                                                                   |[0x800005a8]:sha512sig0l<br> [0x800005ac]:sw<br> |
|  59|[0x800020fc]<br>0x00000000|- rs2_val == 33554432<br> - rs1_val == 1<br>                                                                                                                 |[0x800005b8]:sha512sig0l<br> [0x800005bc]:sw<br> |
|  60|[0x80002100]<br>0x1408ad00|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                                 |[0x800005d0]:sha512sig0l<br> [0x800005d4]:sw<br> |
|  61|[0x80002104]<br>0x823e08d0|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                 |[0x800005e8]:sha512sig0l<br> [0x800005ec]:sw<br> |
|  62|[0x80002108]<br>0x5825ede0|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                 |[0x80000600]:sha512sig0l<br> [0x80000604]:sw<br> |
|  63|[0x8000210c]<br>0x792a18af|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                 |[0x80000618]:sha512sig0l<br> [0x8000061c]:sw<br> |
|  64|[0x80002110]<br>0x119311a8|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                 |[0x80000630]:sha512sig0l<br> [0x80000634]:sw<br> |
|  65|[0x80002114]<br>0x3ede6354|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                 |[0x80000648]:sha512sig0l<br> [0x8000064c]:sw<br> |
|  66|[0x80002118]<br>0x923ff0d0|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                 |[0x80000660]:sha512sig0l<br> [0x80000664]:sw<br> |
|  67|[0x8000211c]<br>0x06280389|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                 |[0x80000678]:sha512sig0l<br> [0x8000067c]:sw<br> |
|  68|[0x80002120]<br>0xb1e08b7d|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                 |[0x80000690]:sha512sig0l<br> [0x80000694]:sw<br> |
|  69|[0x80002124]<br>0x81d265b6|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                 |[0x800006a8]:sha512sig0l<br> [0x800006ac]:sw<br> |
|  70|[0x80002128]<br>0x47c6ebc8|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                 |[0x800006c0]:sha512sig0l<br> [0x800006c4]:sw<br> |
|  71|[0x8000212c]<br>0x1ac20451|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                 |[0x800006d8]:sha512sig0l<br> [0x800006dc]:sw<br> |
|  72|[0x80002130]<br>0x4e8525e1|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                 |[0x800006f0]:sha512sig0l<br> [0x800006f4]:sw<br> |
|  73|[0x80002134]<br>0x93a290e6|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                 |[0x80000708]:sha512sig0l<br> [0x8000070c]:sw<br> |
|  74|[0x80002138]<br>0xb683db8c|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                 |[0x80000720]:sha512sig0l<br> [0x80000724]:sw<br> |
|  75|[0x8000213c]<br>0xe312aca3|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                 |[0x80000738]:sha512sig0l<br> [0x8000073c]:sw<br> |
|  76|[0x80002140]<br>0xeec1a620|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                 |[0x80000750]:sha512sig0l<br> [0x80000754]:sw<br> |
|  77|[0x80002144]<br>0x3732406a|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                 |[0x80000768]:sha512sig0l<br> [0x8000076c]:sw<br> |
|  78|[0x80002148]<br>0x8c93e46a|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                 |[0x80000780]:sha512sig0l<br> [0x80000784]:sw<br> |
|  79|[0x8000214c]<br>0x7efffdf3|- rs2_val == 16777216<br>                                                                                                                                    |[0x80000790]:sha512sig0l<br> [0x80000794]:sw<br> |
|  80|[0x80002150]<br>0x7effffff|- rs2_val == 4194304<br>                                                                                                                                     |[0x800007a0]:sha512sig0l<br> [0x800007a4]:sw<br> |
|  81|[0x80002154]<br>0x7effffbe|- rs2_val == 2097152<br>                                                                                                                                     |[0x800007b0]:sha512sig0l<br> [0x800007b4]:sw<br> |
|  82|[0x80002158]<br>0x7efffef9|- rs2_val == 1048576<br>                                                                                                                                     |[0x800007c0]:sha512sig0l<br> [0x800007c4]:sw<br> |
|  83|[0x8000215c]<br>0x7effff7c|- rs2_val == 524288<br>                                                                                                                                      |[0x800007d0]:sha512sig0l<br> [0x800007d4]:sw<br> |
|  84|[0x80002160]<br>0x00010600|- rs2_val == 262144<br> - rs1_val == 131072<br>                                                                                                              |[0x800007e0]:sha512sig0l<br> [0x800007e4]:sw<br> |
|  85|[0x80002164]<br>0x08300000|- rs2_val == 65536<br>                                                                                                                                       |[0x800007f0]:sha512sig0l<br> [0x800007f4]:sw<br> |
|  86|[0x80002168]<br>0x00001060|- rs2_val == 32768<br> - rs1_val == 8192<br>                                                                                                                 |[0x80000800]:sha512sig0l<br> [0x80000804]:sw<br> |
|  87|[0x8000216c]<br>0x7efffbe7|- rs2_val == 8192<br>                                                                                                                                        |[0x80000814]:sha512sig0l<br> [0x80000818]:sw<br> |
|  88|[0x80002170]<br>0x7effffbe|- rs2_val == 2048<br>                                                                                                                                        |[0x80000828]:sha512sig0l<br> [0x8000082c]:sw<br> |
|  89|[0x80002174]<br>0x0000020c|- rs2_val == 512<br> - rs1_val == 1024<br>                                                                                                                   |[0x80000838]:sha512sig0l<br> [0x8000083c]:sw<br> |
|  90|[0x80002178]<br>0x7ebe7fff|- rs2_val == 256<br>                                                                                                                                         |[0x8000084c]:sha512sig0l<br> [0x80000850]:sw<br> |
|  91|[0x8000217c]<br>0x80000002|- rs2_val == 128<br>                                                                                                                                         |[0x8000085c]:sha512sig0l<br> [0x80000860]:sw<br> |
|  92|[0x80002180]<br>0xc0000041|- rs2_val == 64<br> - rs1_val == 128<br>                                                                                                                     |[0x8000086c]:sha512sig0l<br> [0x80000870]:sw<br> |
|  93|[0x80002184]<br>0x1effffff|- rs2_val == 32<br>                                                                                                                                          |[0x8000087c]:sha512sig0l<br> [0x80000880]:sw<br> |
|  94|[0x80002188]<br>0x320c0000|- rs2_val == 16<br> - rs1_val == 67108864<br>                                                                                                                |[0x8000088c]:sha512sig0l<br> [0x80000890]:sw<br> |
|  95|[0x8000218c]<br>0x463fffff|- rs2_val == 8<br>                                                                                                                                           |[0x800008a0]:sha512sig0l<br> [0x800008a4]:sw<br> |
|  96|[0x80002190]<br>0x76e7ffff|- rs2_val == 4<br>                                                                                                                                           |[0x800008b4]:sha512sig0l<br> [0x800008b8]:sw<br> |
|  97|[0x80002194]<br>0x06000006|- rs2_val == 2<br>                                                                                                                                           |[0x800008c4]:sha512sig0l<br> [0x800008c8]:sw<br> |
|  98|[0x80002198]<br>0x830020c0|- rs2_val == 1<br> - rs1_val == 16384<br>                                                                                                                    |[0x800008d4]:sha512sig0l<br> [0x800008d8]:sw<br> |
|  99|[0x8000219c]<br>0xc4800000|- rs1_val == 2147483648<br>                                                                                                                                  |[0x800008e4]:sha512sig0l<br> [0x800008e8]:sw<br> |
| 100|[0x800021a0]<br>0x10600000|- rs1_val == 536870912<br>                                                                                                                                   |[0x800008f4]:sha512sig0l<br> [0x800008f8]:sw<br> |
| 101|[0x800021a4]<br>0x01060000|- rs1_val == 33554432<br>                                                                                                                                    |[0x80000904]:sha512sig0l<br> [0x80000908]:sw<br> |
| 102|[0x800021a8]<br>0x81830000|- rs1_val == 16777216<br>                                                                                                                                    |[0x80000918]:sha512sig0l<br> [0x8000091c]:sw<br> |
| 103|[0x800021ac]<br>0x9d418000|- rs1_val == 8388608<br>                                                                                                                                     |[0x80000928]:sha512sig0l<br> [0x8000092c]:sw<br> |
| 104|[0x800021b0]<br>0x0020c000|- rs1_val == 4194304<br>                                                                                                                                     |[0x80000938]:sha512sig0l<br> [0x8000093c]:sw<br> |
| 105|[0x800021b4]<br>0x00106000|- rs1_val == 2097152<br>                                                                                                                                     |[0x80000948]:sha512sig0l<br> [0x8000094c]:sw<br> |
| 106|[0x800021b8]<br>0x1e083000|- rs1_val == 1048576<br>                                                                                                                                     |[0x80000958]:sha512sig0l<br> [0x8000095c]:sw<br> |
| 107|[0x800021bc]<br>0x81020c00|- rs1_val == 262144<br>                                                                                                                                      |[0x8000096c]:sha512sig0l<br> [0x80000970]:sw<br> |
| 108|[0x800021c0]<br>0x8f008300|- rs1_val == 65536<br>                                                                                                                                       |[0x8000097c]:sha512sig0l<br> [0x80000980]:sw<br> |
| 109|[0x800021c4]<br>0x81004180|- rs1_val == 32768<br>                                                                                                                                       |[0x80000990]:sha512sig0l<br> [0x80000994]:sw<br> |
| 110|[0x800021c8]<br>0x1e000830|- rs1_val == 4096<br>                                                                                                                                        |[0x800009a0]:sha512sig0l<br> [0x800009a4]:sw<br> |
| 111|[0x800021cc]<br>0x81000418|- rs2_val == 4294836223<br> - rs1_val == 2048<br>                                                                                                            |[0x800009b8]:sha512sig0l<br> [0x800009bc]:sw<br> |
| 112|[0x800021d0]<br>0x8f000020|- rs1_val == 64<br>                                                                                                                                          |[0x800009c8]:sha512sig0l<br> [0x800009cc]:sw<br> |
| 113|[0x800021d4]<br>0xc0000008|- rs1_val == 16<br>                                                                                                                                          |[0x800009d8]:sha512sig0l<br> [0x800009dc]:sw<br> |
| 114|[0x800021d8]<br>0x81000004|- rs1_val == 8<br>                                                                                                                                           |[0x800009ec]:sha512sig0l<br> [0x800009f0]:sw<br> |
| 115|[0x800021dc]<br>0x00000106|- rs1_val == 512<br>                                                                                                                                         |[0x800009fc]:sha512sig0l<br> [0x80000a00]:sw<br> |
| 116|[0x800021e0]<br>0x81000009|- rs2_val == 3221225471<br>                                                                                                                                  |[0x80000a10]:sha512sig0l<br> [0x80000a14]:sw<br> |
| 117|[0x800021e4]<br>0xab555555|- rs2_val == 4026531839<br>                                                                                                                                  |[0x80000a28]:sha512sig0l<br> [0x80000a2c]:sw<br> |
| 118|[0x800021e8]<br>0x81000083|- rs1_val == 256<br>                                                                                                                                         |[0x80000a3c]:sha512sig0l<br> [0x80000a40]:sw<br> |
