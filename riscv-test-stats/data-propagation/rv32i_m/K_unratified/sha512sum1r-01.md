
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a40')]      |
| SIG_REGION                | [('0x80002010', '0x800021f0', '120 words')]      |
| COV_LABELS                | sha512sum1r      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha512sum1r-01.S/ref.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 120      |
| STAT1                     | 112      |
| STAT2                     | 8      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000048c]:sha512sum1r
      [0x80000490]:sw
 -- Signature Address: 0x800020c4 Data: 0xffeefff7
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967291
      - rs1_val == 4294836223




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004bc]:sha512sum1r
      [0x800004c0]:sw
 -- Signature Address: 0x800020cc Data: 0xfffffbfd
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294443007
      - rs1_val == 4294934527




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:sha512sum1r
      [0x800004d4]:sw
 -- Signature Address: 0x800020d0 Data: 0xff83c801
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 4294950911
      - rs2_val == 1048576




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000540]:sha512sum1r
      [0x80000544]:sw
 -- Signature Address: 0x800020e8 Data: 0x5dfffffb
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294965247
      - rs1_val == 4294967039




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000550]:sha512sum1r
      [0x80000554]:sw
 -- Signature Address: 0x800020ec Data: 0xbf968000
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 4294967167




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b8]:sha512sum1r
      [0x800007bc]:sw
 -- Signature Address: 0x8000215c Data: 0xaa834000
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 67108864




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f0]:sha512sum1r
      [0x800008f4]:sw
 -- Signature Address: 0x800021a4 Data: 0x007c1fff
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4227858431
      - rs1_val == 2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a34]:sha512sum1r
      [0x80000a38]:sw
 -- Signature Address: 0x800021ec Data: 0x22fc3fbf
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sum1r
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294934527






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
|   1|[0x80002010]<br>0x95fa3573|- opcode : sha512sum1r<br> - rs1 : x12<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br> |[0x80000110]:sha512sum1r<br> [0x80000114]:sw<br> |
|   2|[0x80002014]<br>0xffbfbbff|- rs1 : x19<br> - rs2 : x30<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs2_val == 2147483647<br> - rs1_val == 4026531839<br>                               |[0x80000128]:sha512sum1r<br> [0x8000012c]:sw<br> |
|   3|[0x80002018]<br>0x00021100|- rs1 : x21<br> - rs2 : x21<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs2_val == 67108864<br> - rs1_val == 67108864<br>                                   |[0x80000138]:sha512sum1r<br> [0x8000013c]:sw<br> |
|   4|[0x8000201c]<br>0x006c3fdd|- rs1 : x1<br> - rs2 : x12<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3758096383<br> - rs1_val == 524288<br>              |[0x8000014c]:sha512sum1r<br> [0x80000150]:sw<br> |
|   5|[0x80002020]<br>0xefffffde|- rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs2_val == 4294950911<br> - rs1_val == 4294950911<br>                               |[0x80000164]:sha512sum1r<br> [0x80000168]:sw<br> |
|   6|[0x80002024]<br>0x00783fdd|- rs1 : x16<br> - rs2 : x3<br> - rd : x22<br> - rs2_val == 4160749567<br>                                                                                   |[0x80000178]:sha512sum1r<br> [0x8000017c]:sw<br> |
|   7|[0x80002028]<br>0xfd7dffff|- rs1 : x3<br> - rs2 : x27<br> - rd : x12<br> - rs2_val == 4227858431<br>                                                                                   |[0x8000018c]:sha512sum1r<br> [0x80000190]:sw<br> |
|   8|[0x8000202c]<br>0xfffefbbf|- rs1 : x22<br> - rs2 : x2<br> - rd : x30<br> - rs2_val == 4261412863<br> - rs1_val == 4278190079<br>                                                       |[0x800001a4]:sha512sum1r<br> [0x800001a8]:sw<br> |
|   9|[0x80002030]<br>0xf7ff7fff|- rs1 : x5<br> - rs2 : x29<br> - rd : x20<br> - rs2_val == 4278190079<br> - rs1_val == 4294967279<br>                                                       |[0x800001b8]:sha512sum1r<br> [0x800001bc]:sw<br> |
|  10|[0x80002034]<br>0xffffbf77|- rs1 : x11<br> - rs2 : x28<br> - rd : x3<br> - rs2_val == 4286578687<br> - rs1_val == 4292870143<br>                                                       |[0x800001d0]:sha512sum1r<br> [0x800001d4]:sw<br> |
|  11|[0x80002038]<br>0x007f2fff|- rs1 : x20<br> - rs2 : x18<br> - rd : x26<br> - rs2_val == 4290772991<br>                                                                                  |[0x800001e4]:sha512sum1r<br> [0x800001e8]:sw<br> |
|  12|[0x8000203c]<br>0x00022000|- rs1 : x30<br> - rs2 : x0<br> - rd : x9<br> - rs1_val == 2147483648<br>                                                                                    |[0x800001f4]:sha512sum1r<br> [0x800001f8]:sw<br> |
|  13|[0x80002040]<br>0x077c37ff|- rs1 : x25<br> - rs2 : x26<br> - rd : x23<br> - rs2_val == 4293918719<br>                                                                                  |[0x80000208]:sha512sum1r<br> [0x8000020c]:sw<br> |
|  14|[0x80002044]<br>0x007c3bbb|- rs1 : x18<br> - rs2 : x25<br> - rd : x17<br> - rs2_val == 4294443007<br> - rs1_val == 1048576<br>                                                         |[0x8000021c]:sha512sum1r<br> [0x80000220]:sw<br> |
|  15|[0x80002048]<br>0xfdfffdff|- rs1 : x9<br> - rs2 : x15<br> - rd : x7<br> - rs2_val == 4294705151<br> - rs1_val == 4294967291<br>                                                        |[0x80000230]:sha512sum1r<br> [0x80000234]:sw<br> |
|  16|[0x8000204c]<br>0x807c3eff|- rs1 : x17<br> - rs2 : x23<br> - rd : x1<br> - rs2_val == 4294836223<br> - rs1_val == 1024<br>                                                             |[0x80000244]:sha512sum1r<br> [0x80000248]:sw<br> |
|  17|[0x80002050]<br>0xbfffff3b|- rs1 : x23<br> - rs2 : x5<br> - rd : x24<br> - rs2_val == 4294901759<br> - rs1_val == 4293918719<br>                                                       |[0x8000025c]:sha512sum1r<br> [0x80000260]:sw<br> |
|  18|[0x80002054]<br>0x207c3fbf|- rs1 : x0<br> - rs2 : x7<br> - rd : x29<br> - rs2_val == 4294934527<br>                                                                                    |[0x80000270]:sha512sum1r<br> [0x80000274]:sw<br> |
|  19|[0x80002058]<br>0x107c3fdb|- rs1 : x8<br> - rs2 : x1<br> - rd : x18<br> - rs1_val == 65536<br>                                                                                         |[0x80000284]:sha512sum1r<br> [0x80000288]:sw<br> |
|  20|[0x8000205c]<br>0x37ffffef|- rs1 : x31<br> - rs2 : x13<br> - rd : x5<br> - rs2_val == 4294959103<br> - rs1_val == 4294967167<br>                                                       |[0x80000298]:sha512sum1r<br> [0x8000029c]:sw<br> |
|  21|[0x80002060]<br>0xbbfffff5|- rs1 : x28<br> - rs2 : x9<br> - rd : x27<br> - rs2_val == 4294963199<br> - rs1_val == 4294934527<br>                                                       |[0x800002b8]:sha512sum1r<br> [0x800002bc]:sw<br> |
|  22|[0x80002064]<br>0x227c2efb|- rs1 : x6<br> - rs2 : x22<br> - rd : x11<br> - rs2_val == 4294965247<br>                                                                                   |[0x800002cc]:sha512sum1r<br> [0x800002d0]:sw<br> |
|  23|[0x80002068]<br>0x15fc3ffd|- rs1 : x24<br> - rs2 : x19<br> - rd : x13<br> - rs2_val == 4294966271<br>                                                                                  |[0x800002dc]:sha512sum1r<br> [0x800002e0]:sw<br> |
|  24|[0x8000206c]<br>0x48fc3ffe|- rs1 : x4<br> - rs2 : x14<br> - rd : x31<br> - rs2_val == 4294966783<br> - rs1_val == 128<br>                                                              |[0x800002ec]:sha512sum1r<br> [0x800002f0]:sw<br> |
|  25|[0x80002070]<br>0x043d2fff|- rs1 : x14<br> - rs2 : x4<br> - rd : x28<br> - rs2_val == 4294967039<br> - rs1_val == 1073741824<br>                                                       |[0x800002fc]:sha512sum1r<br> [0x80000300]:sw<br> |
|  26|[0x80002074]<br>0x425c3fff|- rs1 : x15<br> - rs2 : x17<br> - rd : x14<br> - rs2_val == 4294967167<br>                                                                                  |[0x8000030c]:sha512sum1r<br> [0x80000310]:sw<br> |
|  27|[0x80002078]<br>0xf6efffff|- rs1 : x13<br> - rs2 : x8<br> - rd : x2<br> - rs2_val == 4294967231<br>                                                                                    |[0x8000031c]:sha512sum1r<br> [0x80000320]:sw<br> |
|  28|[0x8000207c]<br>0x00f4377f|- rs1 : x7<br> - rs2 : x31<br> - rd : x25<br> - rs2_val == 4294967263<br> - rs1_val == 33554432<br>                                                         |[0x8000032c]:sha512sum1r<br> [0x80000330]:sw<br> |
|  29|[0x80002080]<br>0x00383fff|- rs1 : x27<br> - rs2 : x20<br> - rd : x4<br> - rs2_val == 4294967279<br> - rs1_val == 8192<br>                                                             |[0x8000033c]:sha512sum1r<br> [0x80000340]:sw<br> |
|  30|[0x80002084]<br>0x00000000|- rs1 : x26<br> - rs2 : x16<br> - rd : x0<br> - rs2_val == 4294967287<br> - rs1_val == 4294967039<br>                                                       |[0x8000034c]:sha512sum1r<br> [0x80000350]:sw<br> |
|  31|[0x80002088]<br>0xffeefff7|- rs1 : x2<br> - rs2 : x24<br> - rd : x15<br> - rs2_val == 4294967291<br> - rs1_val == 4294836223<br>                                                       |[0x80000360]:sha512sum1r<br> [0x80000364]:sw<br> |
|  32|[0x8000208c]<br>0x0074bffd|- rs1 : x29<br> - rs2 : x11<br> - rd : x21<br> - rs2_val == 4294967293<br> - rs1_val == 32768<br>                                                           |[0x80000370]:sha512sum1r<br> [0x80000374]:sw<br> |
|  33|[0x80002090]<br>0xfffbbff7|- rs2_val == 4294967294<br>                                                                                                                                 |[0x80000384]:sha512sum1r<br> [0x80000388]:sw<br> |
|  34|[0x80002094]<br>0xff75dfff|- rs1_val == 2147483647<br>                                                                                                                                 |[0x80000398]:sha512sum1r<br> [0x8000039c]:sw<br> |
|  35|[0x80002098]<br>0xbf82d080|- rs1_val == 3221225471<br> - rs2_val == 65536<br>                                                                                                          |[0x800003ac]:sha512sum1r<br> [0x800003b0]:sw<br> |
|  36|[0x8000209c]<br>0xff834800|- rs1_val == 3758096383<br>                                                                                                                                 |[0x800003c0]:sha512sum1r<br> [0x800003c4]:sw<br> |
|  37|[0x800020a0]<br>0x7783e210|- rs1_val == 4160749567<br> - rs2_val == 8192<br>                                                                                                           |[0x800003d4]:sha512sum1r<br> [0x800003d8]:sw<br> |
|  38|[0x800020a4]<br>0xffc3d100|- rs1_val == 4227858431<br> - rs2_val == 2147483648<br>                                                                                                     |[0x800003e8]:sha512sum1r<br> [0x800003ec]:sw<br> |
|  39|[0x800020a8]<br>0xff0bc880|- rs1_val == 4261412863<br> - rs2_val == 32<br>                                                                                                             |[0x800003fc]:sha512sum1r<br> [0x80000400]:sw<br> |
|  40|[0x800020ac]<br>0xff83ca20|- rs1_val == 4286578687<br> - rs2_val == 1048576<br>                                                                                                        |[0x80000410]:sha512sum1r<br> [0x80000414]:sw<br> |
|  41|[0x800020b0]<br>0xffffbeef|- rs1_val == 4290772991<br>                                                                                                                                 |[0x80000428]:sha512sum1r<br> [0x8000042c]:sw<br> |
|  42|[0x800020b4]<br>0xfbc3c088|- rs2_val == 256<br>                                                                                                                                        |[0x8000043c]:sha512sum1r<br> [0x80000440]:sw<br> |
|  43|[0x800020b8]<br>0xffa3c044|- rs2_val == 1073741824<br>                                                                                                                                 |[0x80000450]:sha512sum1r<br> [0x80000454]:sw<br> |
|  44|[0x800020bc]<br>0xffa3c022|- rs1_val == 4294443007<br>                                                                                                                                 |[0x80000464]:sha512sum1r<br> [0x80000468]:sw<br> |
|  45|[0x800020c0]<br>0xffe3c011|- rs1_val == 4294705151<br>                                                                                                                                 |[0x80000478]:sha512sum1r<br> [0x8000047c]:sw<br> |
|  46|[0x800020c8]<br>0xfffffbfb|- rs1_val == 4294901759<br>                                                                                                                                 |[0x800004a4]:sha512sum1r<br> [0x800004a8]:sw<br> |
|  47|[0x800020d4]<br>0xffbc0000|- rs1_val == 4294959103<br>                                                                                                                                 |[0x800004e4]:sha512sum1r<br> [0x800004e8]:sw<br> |
|  48|[0x800020d8]<br>0xffddffff|- rs1_val == 4294963199<br>                                                                                                                                 |[0x800004f8]:sha512sum1r<br> [0x800004fc]:sw<br> |
|  49|[0x800020dc]<br>0xff83c400|- rs1_val == 4294965247<br> - rs2_val == 524288<br>                                                                                                         |[0x8000050c]:sha512sum1r<br> [0x80000510]:sw<br> |
|  50|[0x800020e0]<br>0xfda3c000|- rs1_val == 4294966271<br> - rs2_val == 128<br>                                                                                                            |[0x8000051c]:sha512sum1r<br> [0x80000520]:sw<br> |
|  51|[0x800020e4]<br>0xff93c000|- rs1_val == 4294966783<br> - rs2_val == 536870912<br>                                                                                                      |[0x8000052c]:sha512sum1r<br> [0x80000530]:sw<br> |
|  52|[0x800020f0]<br>0xdfcf4000|- rs1_val == 4294967231<br>                                                                                                                                 |[0x80000560]:sha512sum1r<br> [0x80000564]:sw<br> |
|  53|[0x800020f4]<br>0xef82c000|- rs1_val == 4294967263<br> - rs2_val == 33554432<br>                                                                                                       |[0x80000570]:sha512sum1r<br> [0x80000574]:sw<br> |
|  54|[0x800020f8]<br>0xdbffffbf|- rs1_val == 4294967287<br>                                                                                                                                 |[0x80000584]:sha512sum1r<br> [0x80000588]:sw<br> |
|  55|[0x800020fc]<br>0xfe878000|- rs1_val == 4294967293<br> - rs2_val == 1<br>                                                                                                              |[0x80000594]:sha512sum1r<br> [0x80000598]:sw<br> |
|  56|[0x80002100]<br>0x22fc3ffb|- rs1_val == 1<br>                                                                                                                                          |[0x800005a8]:sha512sum1r<br> [0x800005ac]:sw<br> |
|  57|[0x80002104]<br>0x92161980|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                                |[0x800005c0]:sha512sum1r<br> [0x800005c4]:sw<br> |
|  58|[0x80002108]<br>0x4040f15b|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                |[0x800005d8]:sha512sum1r<br> [0x800005dc]:sw<br> |
|  59|[0x8000210c]<br>0x5fb91029|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                |[0x800005f0]:sha512sum1r<br> [0x800005f4]:sw<br> |
|  60|[0x80002110]<br>0xe95326f2|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                |[0x80000608]:sha512sum1r<br> [0x8000060c]:sw<br> |
|  61|[0x80002114]<br>0x34fdae06|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                |[0x80000620]:sha512sum1r<br> [0x80000624]:sw<br> |
|  62|[0x80002118]<br>0x8c7653bc|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                |[0x80000638]:sha512sum1r<br> [0x8000063c]:sw<br> |
|  63|[0x8000211c]<br>0xa7f8904f|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                |[0x80000650]:sha512sum1r<br> [0x80000654]:sw<br> |
|  64|[0x80002120]<br>0x39de9c28|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                |[0x80000668]:sha512sum1r<br> [0x8000066c]:sw<br> |
|  65|[0x80002124]<br>0xaa2454c7|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                |[0x80000680]:sha512sum1r<br> [0x80000684]:sw<br> |
|  66|[0x80002128]<br>0xcfe25770|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                |[0x80000698]:sha512sum1r<br> [0x8000069c]:sw<br> |
|  67|[0x8000212c]<br>0xbc0c4ff7|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                |[0x800006b0]:sha512sum1r<br> [0x800006b4]:sw<br> |
|  68|[0x80002130]<br>0xf7e218a5|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                |[0x800006c8]:sha512sum1r<br> [0x800006cc]:sw<br> |
|  69|[0x80002134]<br>0xf274afe0|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                |[0x800006e0]:sha512sum1r<br> [0x800006e4]:sw<br> |
|  70|[0x80002138]<br>0x73277b1b|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                |[0x800006f8]:sha512sum1r<br> [0x800006fc]:sw<br> |
|  71|[0x8000213c]<br>0x87d4de2e|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                |[0x80000710]:sha512sum1r<br> [0x80000714]:sw<br> |
|  72|[0x80002140]<br>0xbaba55dd|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                |[0x80000728]:sha512sum1r<br> [0x8000072c]:sw<br> |
|  73|[0x80002144]<br>0x7fdbf617|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                |[0x80000740]:sha512sum1r<br> [0x80000744]:sw<br> |
|  74|[0x80002148]<br>0xe00b3616|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                |[0x80000758]:sha512sum1r<br> [0x8000075c]:sw<br> |
|  75|[0x8000214c]<br>0x23180f81|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                |[0x80000770]:sha512sum1r<br> [0x80000774]:sw<br> |
|  76|[0x80002150]<br>0xff1a4000|- rs1_val == 4294967294<br>                                                                                                                                 |[0x80000780]:sha512sum1r<br> [0x80000784]:sw<br> |
|  77|[0x80002154]<br>0xff8b4800|- rs2_val == 268435456<br>                                                                                                                                  |[0x80000794]:sha512sum1r<br> [0x80000798]:sw<br> |
|  78|[0x80002158]<br>0x00042200|- rs2_val == 134217728<br> - rs1_val == 134217728<br>                                                                                                       |[0x800007a4]:sha512sum1r<br> [0x800007a8]:sw<br> |
|  79|[0x80002160]<br>0x03808000|- rs2_val == 16777216<br>                                                                                                                                   |[0x800007c8]:sha512sum1r<br> [0x800007cc]:sw<br> |
|  80|[0x80002164]<br>0x80004000|- rs2_val == 8388608<br> - rs1_val == 256<br>                                                                                                               |[0x800007d8]:sha512sum1r<br> [0x800007dc]:sw<br> |
|  81|[0x80002168]<br>0xff83e220|- rs2_val == 4194304<br>                                                                                                                                    |[0x800007ec]:sha512sum1r<br> [0x800007f0]:sw<br> |
|  82|[0x8000216c]<br>0xef83d000|- rs2_val == 2097152<br>                                                                                                                                    |[0x800007fc]:sha512sum1r<br> [0x80000800]:sw<br> |
|  83|[0x80002170]<br>0xff83c200|- rs2_val == 262144<br>                                                                                                                                     |[0x8000080c]:sha512sum1r<br> [0x80000810]:sw<br> |
|  84|[0x80002174]<br>0x80000100|- rs2_val == 131072<br>                                                                                                                                     |[0x8000081c]:sha512sum1r<br> [0x80000820]:sw<br> |
|  85|[0x80002178]<br>0x20000040|- rs2_val == 32768<br>                                                                                                                                      |[0x8000082c]:sha512sum1r<br> [0x80000830]:sw<br> |
|  86|[0x8000217c]<br>0x10000020|- rs2_val == 16384<br> - rs1_val == 512<br>                                                                                                                 |[0x8000083c]:sha512sum1r<br> [0x80000840]:sw<br> |
|  87|[0x80002180]<br>0xbb83c080|- rs2_val == 4096<br>                                                                                                                                       |[0x80000850]:sha512sum1r<br> [0x80000854]:sw<br> |
|  88|[0x80002184]<br>0xdd83c006|- rs2_val == 2048<br>                                                                                                                                       |[0x80000868]:sha512sum1r<br> [0x8000086c]:sw<br> |
|  89|[0x80002188]<br>0x12800002|- rs2_val == 1024<br>                                                                                                                                       |[0x80000878]:sha512sum1r<br> [0x8000087c]:sw<br> |
|  90|[0x8000218c]<br>0x0a000001|- rs2_val == 512<br>                                                                                                                                        |[0x80000888]:sha512sum1r<br> [0x8000088c]:sw<br> |
|  91|[0x80002190]<br>0xff93c000|- rs2_val == 64<br>                                                                                                                                         |[0x80000898]:sha512sum1r<br> [0x8000089c]:sw<br> |
|  92|[0x80002194]<br>0xffc7c000|- rs2_val == 16<br>                                                                                                                                         |[0x800008ac]:sha512sum1r<br> [0x800008b0]:sw<br> |
|  93|[0x80002198]<br>0x00220000|- rs2_val == 8<br>                                                                                                                                          |[0x800008bc]:sha512sum1r<br> [0x800008c0]:sw<br> |
|  94|[0x8000219c]<br>0x00110088|- rs2_val == 4<br> - rs1_val == 2097152<br>                                                                                                                 |[0x800008cc]:sha512sum1r<br> [0x800008d0]:sw<br> |
|  95|[0x800021a0]<br>0x00088044|- rs2_val == 2<br>                                                                                                                                          |[0x800008dc]:sha512sum1r<br> [0x800008e0]:sw<br> |
|  96|[0x800021a8]<br>0x0026c800|- rs1_val == 536870912<br>                                                                                                                                  |[0x80000900]:sha512sum1r<br> [0x80000904]:sw<br> |
|  97|[0x800021ac]<br>0x00400400|- rs1_val == 268435456<br>                                                                                                                                  |[0x80000910]:sha512sum1r<br> [0x80000914]:sw<br> |
|  98|[0x800021b0]<br>0x005c3bbf|- rs2_val == 3221225471<br> - rs1_val == 16777216<br>                                                                                                       |[0x80000924]:sha512sum1r<br> [0x80000928]:sw<br> |
|  99|[0x800021b4]<br>0x00154220|- rs1_val == 8388608<br>                                                                                                                                    |[0x80000934]:sha512sum1r<br> [0x80000938]:sw<br> |
| 100|[0x800021b8]<br>0x00330110|- rs1_val == 4194304<br>                                                                                                                                    |[0x80000944]:sha512sum1r<br> [0x80000948]:sw<br> |
| 101|[0x800021bc]<br>0x007c2fee|- rs2_val == 4292870143<br> - rs1_val == 262144<br>                                                                                                         |[0x80000958]:sha512sum1r<br> [0x8000095c]:sw<br> |
| 102|[0x800021c0]<br>0x02200008|- rs1_val == 131072<br>                                                                                                                                     |[0x80000968]:sha512sum1r<br> [0x8000096c]:sw<br> |
| 103|[0x800021c4]<br>0x00880001|- rs1_val == 16384<br>                                                                                                                                      |[0x80000978]:sha512sum1r<br> [0x8000097c]:sw<br> |
| 104|[0x800021c8]<br>0x007c3dff|- rs1_val == 4096<br>                                                                                                                                       |[0x8000098c]:sha512sum1r<br> [0x80000990]:sw<br> |
| 105|[0x800021cc]<br>0x00000200|- rs1_val == 2048<br>                                                                                                                                       |[0x800009a0]:sha512sum1r<br> [0x800009a4]:sw<br> |
| 106|[0x800021d0]<br>0x317c3ffd|- rs1_val == 64<br>                                                                                                                                         |[0x800009b0]:sha512sum1r<br> [0x800009b4]:sw<br> |
| 107|[0x800021d4]<br>0x102ec000|- rs1_val == 32<br>                                                                                                                                         |[0x800009c0]:sha512sum1r<br> [0x800009c4]:sw<br> |
| 108|[0x800021d8]<br>0x08000000|- rs1_val == 16<br>                                                                                                                                         |[0x800009d0]:sha512sum1r<br> [0x800009d4]:sw<br> |
| 109|[0x800021dc]<br>0x147c3fdf|- rs1_val == 8<br>                                                                                                                                          |[0x800009e4]:sha512sum1r<br> [0x800009e8]:sw<br> |
| 110|[0x800021e0]<br>0x02100000|- rs1_val == 4<br>                                                                                                                                          |[0x800009f4]:sha512sum1r<br> [0x800009f8]:sw<br> |
| 111|[0x800021e4]<br>0x017e3fff|- rs1_val == 2<br>                                                                                                                                          |[0x80000a08]:sha512sum1r<br> [0x80000a0c]:sw<br> |
| 112|[0x800021e8]<br>0xfff7fffe|- rs2_val == 4026531839<br>                                                                                                                                 |[0x80000a20]:sha512sum1r<br> [0x80000a24]:sw<br> |
