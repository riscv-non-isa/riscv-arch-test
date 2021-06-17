
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ec0')]      |
| SIG_REGION                | [('0x80002010', '0x800024c0', '150 dwords')]      |
| COV_LABELS                | aes64im      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64im-01.S/ref.S    |
| Total Number of coverpoints| 215     |
| Total Coverpoints Hit     | 215      |
| Total Signature Updates   | 150      |
| STAT1                     | 149      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eb8]:aes64im
      [0x80000ebc]:sw
 -- Signature Address: 0x800024b8 Data: 0xe3e9e5edffffffff
 -- Redundant Coverpoints hit by the op
      - opcode : aes64im
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 18302628885633695743






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

|s.no|            signature             |                                                  coverpoints                                                   |                    code                     |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------|---------------------------------------------|
|   1|[0x80002010]<br>0x7d862e1da5d8c4d1|- opcode : aes64im<br> - rs1 : x8<br> - rd : x27<br> - rs1 != rd<br> - rs1_val == 0x75a3adb3254a9493 #nosat<br> |[0x800003b8]:aes64im<br> [0x800003bc]:sw<br> |
|   2|[0x80002018]<br>0xbe082513ffffffff|- rs1 : x11<br> - rd : x11<br> - rs1 == rd<br> - rs1_val == 9223372036854775807<br>                             |[0x800003cc]:aes64im<br> [0x800003d0]:sw<br> |
|   3|[0x80002020]<br>0x52099289ffffffff|- rs1 : x6<br> - rd : x4<br> - rs1_val == 13835058055282163711<br>                                              |[0x800003e0]:aes64im<br> [0x800003e4]:sw<br> |
|   4|[0x80002028]<br>0x0000000000000000|- rs1 : x0<br> - rd : x31<br>                                                                                   |[0x800003ec]:aes64im<br> [0x800003f0]:sw<br> |
|   5|[0x80002030]<br>0x1f4f2f6fffffffff|- rs1 : x3<br> - rd : x22<br> - rs1_val == 17293822569102704639<br>                                             |[0x80000400]:aes64im<br> [0x80000404]:sw<br> |
|   6|[0x80002038]<br>0x8fa797b7ffffffff|- rs1 : x2<br> - rd : x17<br> - rs1_val == 17870283321406128127<br>                                             |[0x80000414]:aes64im<br> [0x80000418]:sw<br> |
|   7|[0x80002040]<br>0xc7d3cbdbffffffff|- rs1 : x31<br> - rd : x23<br> - rs1_val == 18158513697557839871<br>                                            |[0x80000428]:aes64im<br> [0x8000042c]:sw<br> |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x23<br> - rd : x0<br> - rs1_val == 18302628885633695743<br>                                             |[0x8000043c]:aes64im<br> [0x80000440]:sw<br> |
|   9|[0x80002050]<br>0xf1f4f2f6ffffffff|- rs1 : x1<br> - rd : x2<br> - rs1_val == 18374686479671623679<br>                                              |[0x80000450]:aes64im<br> [0x80000454]:sw<br> |
|  10|[0x80002058]<br>0x13be0825ffffffff|- rs1 : x13<br> - rd : x19<br> - rs1_val == 18410715276690587647<br>                                            |[0x80000464]:aes64im<br> [0x80000468]:sw<br> |
|  11|[0x80002060]<br>0x89520992ffffffff|- rs1 : x19<br> - rd : x14<br> - rs1_val == 18428729675200069631<br>                                            |[0x80000478]:aes64im<br> [0x8000047c]:sw<br> |
|  12|[0x80002068]<br>0xc4248444ffffffff|- rs1 : x21<br> - rd : x7<br> - rs1_val == 18437736874454810623<br>                                             |[0x8000048c]:aes64im<br> [0x80000490]:sw<br> |
|  13|[0x80002070]<br>0x6f1f4f2fffffffff|- rs1 : x30<br> - rd : x10<br> - rs1_val == 18442240474082181119<br>                                            |[0x800004a0]:aes64im<br> [0x800004a4]:sw<br> |
|  14|[0x80002078]<br>0xb78fa797ffffffff|- rs1 : x24<br> - rd : x21<br> - rs1_val == 18444492273895866367<br>                                            |[0x800004b4]:aes64im<br> [0x800004b8]:sw<br> |
|  15|[0x80002080]<br>0xdbc7d3cbffffffff|- rs1 : x17<br> - rd : x29<br> - rs1_val == 18445618173802708991<br>                                            |[0x800004c8]:aes64im<br> [0x800004cc]:sw<br> |
|  16|[0x80002088]<br>0xede3e9e5ffffffff|- rs1 : x16<br> - rd : x3<br> - rs1_val == 18446181123756130303<br>                                             |[0x800004dc]:aes64im<br> [0x800004e0]:sw<br> |
|  17|[0x80002090]<br>0xf6f1f4f2ffffffff|- rs1 : x29<br> - rd : x13<br> - rs1_val == 18446462598732840959<br>                                            |[0x800004f0]:aes64im<br> [0x800004f4]:sw<br> |
|  18|[0x80002098]<br>0x2513be08ffffffff|- rs1 : x4<br> - rd : x25<br> - rs1_val == 18446603336221196287<br>                                             |[0x80000504]:aes64im<br> [0x80000508]:sw<br> |
|  19|[0x800020a0]<br>0x92895209ffffffff|- rs1 : x5<br> - rd : x12<br> - rs1_val == 18446673704965373951<br>                                             |[0x80000518]:aes64im<br> [0x8000051c]:sw<br> |
|  20|[0x800020a8]<br>0x44c42484ffffffff|- rs1 : x10<br> - rd : x30<br> - rs1_val == 18446708889337462783<br>                                            |[0x8000052c]:aes64im<br> [0x80000530]:sw<br> |
|  21|[0x800020b0]<br>0x2f6f1f4fffffffff|- rs1 : x25<br> - rd : x9<br> - rs1_val == 18446726481523507199<br>                                             |[0x80000540]:aes64im<br> [0x80000544]:sw<br> |
|  22|[0x800020b8]<br>0x97b78fa7ffffffff|- rs1 : x7<br> - rd : x18<br> - rs1_val == 18446735277616529407<br>                                             |[0x80000554]:aes64im<br> [0x80000558]:sw<br> |
|  23|[0x800020c0]<br>0xcbdbc7d3ffffffff|- rs1 : x15<br> - rd : x16<br> - rs1_val == 18446739675663040511<br>                                            |[0x80000568]:aes64im<br> [0x8000056c]:sw<br> |
|  24|[0x800020c8]<br>0xe5ede3e9ffffffff|- rs1 : x26<br> - rd : x8<br> - rs1_val == 18446741874686296063<br>                                             |[0x80000584]:aes64im<br> [0x80000588]:sw<br> |
|  25|[0x800020d0]<br>0xf2f6f1f4ffffffff|- rs1 : x27<br> - rd : x5<br> - rs1_val == 18446742974197923839<br>                                             |[0x80000598]:aes64im<br> [0x8000059c]:sw<br> |
|  26|[0x800020d8]<br>0x082513beffffffff|- rs1 : x20<br> - rd : x26<br> - rs1_val == 18446743523953737727<br>                                            |[0x800005ac]:aes64im<br> [0x800005b0]:sw<br> |
|  27|[0x800020e0]<br>0x09928952ffffffff|- rs1 : x12<br> - rd : x1<br> - rs1_val == 18446743798831644671<br>                                             |[0x800005c0]:aes64im<br> [0x800005c4]:sw<br> |
|  28|[0x800020e8]<br>0x8444c424ffffffff|- rs1 : x28<br> - rd : x24<br> - rs1_val == 18446743936270598143<br>                                            |[0x800005d4]:aes64im<br> [0x800005d8]:sw<br> |
|  29|[0x800020f0]<br>0x4f2f6f1fffffffff|- rs1 : x14<br> - rd : x28<br> - rs1_val == 18446744004990074879<br>                                            |[0x800005e8]:aes64im<br> [0x800005ec]:sw<br> |
|  30|[0x800020f8]<br>0xa797b78fffffffff|- rs1 : x22<br> - rd : x20<br> - rs1_val == 18446744039349813247<br>                                            |[0x800005fc]:aes64im<br> [0x80000600]:sw<br> |
|  31|[0x80002100]<br>0xd3cbdbc7ffffffff|- rs1 : x18<br> - rd : x6<br> - rs1_val == 18446744056529682431<br>                                             |[0x80000610]:aes64im<br> [0x80000614]:sw<br> |
|  32|[0x80002108]<br>0xe9e5ede3ffffffff|- rs1 : x9<br> - rd : x15<br> - rs1_val == 18446744065119617023<br>                                             |[0x80000624]:aes64im<br> [0x80000628]:sw<br> |
|  33|[0x80002110]<br>0xf4f2f6f1ffffffff|- rs1_val == 18446744069414584319<br>                                                                           |[0x80000638]:aes64im<br> [0x8000063c]:sw<br> |
|  34|[0x80002118]<br>0xffffffffbe082513|- rs1_val == 18446744071562067967<br>                                                                           |[0x8000064c]:aes64im<br> [0x80000650]:sw<br> |
|  35|[0x80002120]<br>0xffffffff52099289|- rs1_val == 18446744072635809791<br>                                                                           |[0x8000065c]:aes64im<br> [0x80000660]:sw<br> |
|  36|[0x80002128]<br>0xffffffff248444c4|- rs1_val == 18446744073172680703<br>                                                                           |[0x8000066c]:aes64im<br> [0x80000670]:sw<br> |
|  37|[0x80002130]<br>0xffffffff1f4f2f6f|- rs1_val == 18446744073441116159<br>                                                                           |[0x8000067c]:aes64im<br> [0x80000680]:sw<br> |
|  38|[0x80002138]<br>0xffffffff8fa797b7|- rs1_val == 18446744073575333887<br>                                                                           |[0x8000068c]:aes64im<br> [0x80000690]:sw<br> |
|  39|[0x80002140]<br>0xffffffffc7d3cbdb|- rs1_val == 18446744073642442751<br>                                                                           |[0x8000069c]:aes64im<br> [0x800006a0]:sw<br> |
|  40|[0x80002148]<br>0xffffffffe3e9e5ed|- rs1_val == 18446744073675997183<br>                                                                           |[0x800006ac]:aes64im<br> [0x800006b0]:sw<br> |
|  41|[0x80002150]<br>0xfffffffff1f4f2f6|- rs1_val == 18446744073692774399<br>                                                                           |[0x800006bc]:aes64im<br> [0x800006c0]:sw<br> |
|  42|[0x80002158]<br>0xffffffff13be0825|- rs1_val == 18446744073701163007<br>                                                                           |[0x800006cc]:aes64im<br> [0x800006d0]:sw<br> |
|  43|[0x80002160]<br>0xffffffff89520992|- rs1_val == 18446744073705357311<br>                                                                           |[0x800006dc]:aes64im<br> [0x800006e0]:sw<br> |
|  44|[0x80002168]<br>0xffffffffc4248444|- rs1_val == 18446744073707454463<br>                                                                           |[0x800006ec]:aes64im<br> [0x800006f0]:sw<br> |
|  45|[0x80002170]<br>0xffffffff6f1f4f2f|- rs1_val == 18446744073708503039<br>                                                                           |[0x800006fc]:aes64im<br> [0x80000700]:sw<br> |
|  46|[0x80002178]<br>0xffffffffb78fa797|- rs1_val == 18446744073709027327<br>                                                                           |[0x8000070c]:aes64im<br> [0x80000710]:sw<br> |
|  47|[0x80002180]<br>0xffffffffdbc7d3cb|- rs1_val == 18446744073709289471<br>                                                                           |[0x8000071c]:aes64im<br> [0x80000720]:sw<br> |
|  48|[0x80002188]<br>0xffffffffede3e9e5|- rs1_val == 18446744073709420543<br>                                                                           |[0x8000072c]:aes64im<br> [0x80000730]:sw<br> |
|  49|[0x80002190]<br>0xfffffffff6f1f4f2|- rs1_val == 18446744073709486079<br>                                                                           |[0x8000073c]:aes64im<br> [0x80000740]:sw<br> |
|  50|[0x80002198]<br>0xffffffff2513be08|- rs1_val == 18446744073709518847<br>                                                                           |[0x8000074c]:aes64im<br> [0x80000750]:sw<br> |
|  51|[0x800021a0]<br>0xffffffff92895209|- rs1_val == 18446744073709535231<br>                                                                           |[0x8000075c]:aes64im<br> [0x80000760]:sw<br> |
|  52|[0x800021a8]<br>0xffffffff44c42484|- rs1_val == 18446744073709543423<br>                                                                           |[0x8000076c]:aes64im<br> [0x80000770]:sw<br> |
|  53|[0x800021b0]<br>0xffffffff2f6f1f4f|- rs1_val == 18446744073709547519<br>                                                                           |[0x8000077c]:aes64im<br> [0x80000780]:sw<br> |
|  54|[0x800021b8]<br>0xffffffff97b78fa7|- rs1_val == 18446744073709549567<br>                                                                           |[0x8000078c]:aes64im<br> [0x80000790]:sw<br> |
|  55|[0x800021c0]<br>0xffffffffcbdbc7d3|- rs1_val == 18446744073709550591<br>                                                                           |[0x80000798]:aes64im<br> [0x8000079c]:sw<br> |
|  56|[0x800021c8]<br>0xffffffffe5ede3e9|- rs1_val == 18446744073709551103<br>                                                                           |[0x800007a4]:aes64im<br> [0x800007a8]:sw<br> |
|  57|[0x800021d0]<br>0xfffffffff2f6f1f4|- rs1_val == 18446744073709551359<br>                                                                           |[0x800007b0]:aes64im<br> [0x800007b4]:sw<br> |
|  58|[0x800021d8]<br>0xffffffff082513be|- rs1_val == 18446744073709551487<br>                                                                           |[0x800007bc]:aes64im<br> [0x800007c0]:sw<br> |
|  59|[0x800021e0]<br>0xffffffff09928952|- rs1_val == 18446744073709551551<br>                                                                           |[0x800007c8]:aes64im<br> [0x800007cc]:sw<br> |
|  60|[0x800021e8]<br>0xffffffff8444c424|- rs1_val == 18446744073709551583<br>                                                                           |[0x800007d4]:aes64im<br> [0x800007d8]:sw<br> |
|  61|[0x800021f0]<br>0xffffffff4f2f6f1f|- rs1_val == 18446744073709551599<br>                                                                           |[0x800007e0]:aes64im<br> [0x800007e4]:sw<br> |
|  62|[0x800021f8]<br>0xffffffffa797b78f|- rs1_val == 18446744073709551607<br>                                                                           |[0x800007ec]:aes64im<br> [0x800007f0]:sw<br> |
|  63|[0x80002200]<br>0xffffffffd3cbdbc7|- rs1_val == 18446744073709551611<br>                                                                           |[0x800007f8]:aes64im<br> [0x800007fc]:sw<br> |
|  64|[0x80002208]<br>0xffffffffe9e5ede3|- rs1_val == 18446744073709551613<br>                                                                           |[0x80000804]:aes64im<br> [0x80000808]:sw<br> |
|  65|[0x80002210]<br>0xfffffffff4f2f6f1|- rs1_val == 18446744073709551614<br>                                                                           |[0x80000810]:aes64im<br> [0x80000814]:sw<br> |
|  66|[0x80002218]<br>0x41f7daec00000000|- rs1_val == 9223372036854775808<br>                                                                            |[0x80000820]:aes64im<br> [0x80000824]:sw<br> |
|  67|[0x80002220]<br>0xadf66d7600000000|- rs1_val == 4611686018427387904<br>                                                                            |[0x80000830]:aes64im<br> [0x80000834]:sw<br> |
|  68|[0x80002228]<br>0xdb7bbb3b00000000|- rs1_val == 2305843009213693952<br>                                                                            |[0x80000840]:aes64im<br> [0x80000844]:sw<br> |
|  69|[0x80002230]<br>0xe0b0d09000000000|- rs1_val == 1152921504606846976<br>                                                                            |[0x80000850]:aes64im<br> [0x80000854]:sw<br> |
|  70|[0x80002238]<br>0x7058684800000000|- rs1_val == 576460752303423488<br>                                                                             |[0x80000860]:aes64im<br> [0x80000864]:sw<br> |
|  71|[0x80002240]<br>0x382c342400000000|- rs1_val == 288230376151711744<br>                                                                             |[0x80000870]:aes64im<br> [0x80000874]:sw<br> |
|  72|[0x80002248]<br>0x1c161a1200000000|- rs1_val == 144115188075855872<br>                                                                             |[0x80000880]:aes64im<br> [0x80000884]:sw<br> |
|  73|[0x80002250]<br>0x0e0b0d0900000000|- rs1_val == 72057594037927936<br>                                                                              |[0x80000890]:aes64im<br> [0x80000894]:sw<br> |
|  74|[0x80002258]<br>0xec41f7da00000000|- rs1_val == 36028797018963968<br>                                                                              |[0x800008a0]:aes64im<br> [0x800008a4]:sw<br> |
|  75|[0x80002260]<br>0x76adf66d00000000|- rs1_val == 18014398509481984<br>                                                                              |[0x800008b0]:aes64im<br> [0x800008b4]:sw<br> |
|  76|[0x80002268]<br>0x3bdb7bbb00000000|- rs1_val == 9007199254740992<br>                                                                               |[0x800008c0]:aes64im<br> [0x800008c4]:sw<br> |
|  77|[0x80002270]<br>0x90e0b0d000000000|- rs1_val == 4503599627370496<br>                                                                               |[0x800008d0]:aes64im<br> [0x800008d4]:sw<br> |
|  78|[0x80002278]<br>0x4870586800000000|- rs1_val == 2251799813685248<br>                                                                               |[0x800008e0]:aes64im<br> [0x800008e4]:sw<br> |
|  79|[0x80002280]<br>0x24382c3400000000|- rs1_val == 1125899906842624<br>                                                                               |[0x800008f0]:aes64im<br> [0x800008f4]:sw<br> |
|  80|[0x80002288]<br>0x121c161a00000000|- rs1_val == 562949953421312<br>                                                                                |[0x80000900]:aes64im<br> [0x80000904]:sw<br> |
|  81|[0x80002290]<br>0x090e0b0d00000000|- rs1_val == 281474976710656<br>                                                                                |[0x80000910]:aes64im<br> [0x80000914]:sw<br> |
|  82|[0x80002298]<br>0xdaec41f700000000|- rs1_val == 140737488355328<br>                                                                                |[0x80000920]:aes64im<br> [0x80000924]:sw<br> |
|  83|[0x800022a0]<br>0x6d76adf600000000|- rs1_val == 70368744177664<br>                                                                                 |[0x80000930]:aes64im<br> [0x80000934]:sw<br> |
|  84|[0x800022a8]<br>0xbb3bdb7b00000000|- rs1_val == 35184372088832<br>                                                                                 |[0x80000940]:aes64im<br> [0x80000944]:sw<br> |
|  85|[0x800022b0]<br>0xd090e0b000000000|- rs1_val == 17592186044416<br>                                                                                 |[0x80000950]:aes64im<br> [0x80000954]:sw<br> |
|  86|[0x800022b8]<br>0x000000000b0d090e|- rs1_val == 1<br>                                                                                              |[0x8000095c]:aes64im<br> [0x80000960]:sw<br> |
|  87|[0x800022c0]<br>0xccefaad9ee815097|- rs1_val == 0xb6f9706fb4f741aa #nosat<br>                                                                      |[0x80000984]:aes64im<br> [0x80000988]:sw<br> |
|  88|[0x800022c8]<br>0x90bbbfdcfbad4f20|- rs1_val == 0x40a5ff526f38a9c7 #nosat<br>                                                                      |[0x800009ac]:aes64im<br> [0x800009b0]:sw<br> |
|  89|[0x800022d0]<br>0x8cfab4828b14c9bc|- rs1_val == 0xd05668ae0fdb82bc #nosat<br>                                                                      |[0x800009d4]:aes64im<br> [0x800009d8]:sw<br> |
|  90|[0x800022d8]<br>0x0532199f607bf0cb|- rs1_val == 0x9bedfe390d6ddd9d #nosat<br>                                                                      |[0x800009fc]:aes64im<br> [0x80000a00]:sw<br> |
|  91|[0x800022e0]<br>0x00639f32814653aa|- rs1_val == 0xaa6bb2bde9ed477d #nosat<br>                                                                      |[0x80000a24]:aes64im<br> [0x80000a28]:sw<br> |
|  92|[0x800022e8]<br>0x63b90f943aacd31f|- rs1_val == 0xd75739f82ac177c6 #nosat<br>                                                                      |[0x80000a4c]:aes64im<br> [0x80000a50]:sw<br> |
|  93|[0x800022f0]<br>0xc9c55914b4d951d0|- rs1_val == 0x299c3bcf90efb625 #nosat<br>                                                                      |[0x80000a74]:aes64im<br> [0x80000a78]:sw<br> |
|  94|[0x800022f8]<br>0x482321f1eaaaa9b2|- rs1_val == 0x9a4e9ef10171f4df #nosat<br>                                                                      |[0x80000a9c]:aes64im<br> [0x80000aa0]:sw<br> |
|  95|[0x80002300]<br>0x56afc5bea4274a82|- rs1_val == 0x1fc493caa371db42 #nosat<br>                                                                      |[0x80000ac4]:aes64im<br> [0x80000ac8]:sw<br> |
|  96|[0x80002308]<br>0xeaca4586c7ef3b79|- rs1_val == 0xd169a3f8cad5e297 #nosat<br>                                                                      |[0x80000aec]:aes64im<br> [0x80000af0]:sw<br> |
|  97|[0x80002310]<br>0x4820d9821ac19d05|- rs1_val == 0xf4c30307672f666d #nosat<br>                                                                      |[0x80000b14]:aes64im<br> [0x80000b18]:sw<br> |
|  98|[0x80002318]<br>0x943c385e309e9e72|- rs1_val == 0xd5b9fe5cf69bdcf3 #nosat<br>                                                                      |[0x80000b3c]:aes64im<br> [0x80000b40]:sw<br> |
|  99|[0x80002320]<br>0x16d411ce94b7345a|- rs1_val == 0xa0569d765ebc64cb #nosat<br>                                                                      |[0x80000b64]:aes64im<br> [0x80000b68]:sw<br> |
| 100|[0x80002328]<br>0x35d7e59dd7bd7a3e|- rs1_val == 0xe4921bf73047c198 #nosat<br>                                                                      |[0x80000b8c]:aes64im<br> [0x80000b90]:sw<br> |
| 101|[0x80002330]<br>0x757667bb7d569544|- rs1_val == 0x2daf9ac7f5faf207 #nosat<br>                                                                      |[0x80000bb4]:aes64im<br> [0x80000bb8]:sw<br> |
| 102|[0x80002338]<br>0x6f4cab438e3a2d4c|- rs1_val == 0xfcc1b543c49cd65b #nosat<br>                                                                      |[0x80000bdc]:aes64im<br> [0x80000be0]:sw<br> |
| 103|[0x80002340]<br>0xee85e7860a0abec7|- rs1_val == 0x3459294ef273b44c #nosat<br>                                                                      |[0x80000c04]:aes64im<br> [0x80000c08]:sw<br> |
| 104|[0x80002348]<br>0x347710cd4696dd98|- rs1_val == 0x436f40f274b8de87 #nosat<br>                                                                      |[0x80000c2c]:aes64im<br> [0x80000c30]:sw<br> |
| 105|[0x80002350]<br>0x5d0757ecb1e354e2|- rs1_val == 0xc5521660f3a3c571 #nosat<br>                                                                      |[0x80000c54]:aes64im<br> [0x80000c58]:sw<br> |
| 106|[0x80002358]<br>0x6848705800000000|- rs1_val == 8796093022208<br>                                                                                  |[0x80000c64]:aes64im<br> [0x80000c68]:sw<br> |
| 107|[0x80002360]<br>0x3424382c00000000|- rs1_val == 4398046511104<br>                                                                                  |[0x80000c74]:aes64im<br> [0x80000c78]:sw<br> |
| 108|[0x80002368]<br>0x1a121c1600000000|- rs1_val == 2199023255552<br>                                                                                  |[0x80000c84]:aes64im<br> [0x80000c88]:sw<br> |
| 109|[0x80002370]<br>0x0d090e0b00000000|- rs1_val == 1099511627776<br>                                                                                  |[0x80000c94]:aes64im<br> [0x80000c98]:sw<br> |
| 110|[0x80002378]<br>0xf7daec4100000000|- rs1_val == 549755813888<br>                                                                                   |[0x80000ca4]:aes64im<br> [0x80000ca8]:sw<br> |
| 111|[0x80002380]<br>0xf66d76ad00000000|- rs1_val == 274877906944<br>                                                                                   |[0x80000cb4]:aes64im<br> [0x80000cb8]:sw<br> |
| 112|[0x80002388]<br>0x7bbb3bdb00000000|- rs1_val == 137438953472<br>                                                                                   |[0x80000cc4]:aes64im<br> [0x80000cc8]:sw<br> |
| 113|[0x80002390]<br>0xb0d090e000000000|- rs1_val == 68719476736<br>                                                                                    |[0x80000cd4]:aes64im<br> [0x80000cd8]:sw<br> |
| 114|[0x80002398]<br>0x5868487000000000|- rs1_val == 34359738368<br>                                                                                    |[0x80000ce4]:aes64im<br> [0x80000ce8]:sw<br> |
| 115|[0x800023a0]<br>0x2c34243800000000|- rs1_val == 17179869184<br>                                                                                    |[0x80000cf4]:aes64im<br> [0x80000cf8]:sw<br> |
| 116|[0x800023a8]<br>0x161a121c00000000|- rs1_val == 8589934592<br>                                                                                     |[0x80000d04]:aes64im<br> [0x80000d08]:sw<br> |
| 117|[0x800023b0]<br>0x0b0d090e00000000|- rs1_val == 4294967296<br>                                                                                     |[0x80000d14]:aes64im<br> [0x80000d18]:sw<br> |
| 118|[0x800023b8]<br>0x0000000041f7daec|- rs1_val == 2147483648<br>                                                                                     |[0x80000d24]:aes64im<br> [0x80000d28]:sw<br> |
| 119|[0x800023c0]<br>0x00000000adf66d76|- rs1_val == 1073741824<br>                                                                                     |[0x80000d30]:aes64im<br> [0x80000d34]:sw<br> |
| 120|[0x800023c8]<br>0x00000000db7bbb3b|- rs1_val == 536870912<br>                                                                                      |[0x80000d3c]:aes64im<br> [0x80000d40]:sw<br> |
| 121|[0x800023d0]<br>0x00000000e0b0d090|- rs1_val == 268435456<br>                                                                                      |[0x80000d48]:aes64im<br> [0x80000d4c]:sw<br> |
| 122|[0x800023d8]<br>0x0000000070586848|- rs1_val == 134217728<br>                                                                                      |[0x80000d54]:aes64im<br> [0x80000d58]:sw<br> |
| 123|[0x800023e0]<br>0x00000000382c3424|- rs1_val == 67108864<br>                                                                                       |[0x80000d60]:aes64im<br> [0x80000d64]:sw<br> |
| 124|[0x800023e8]<br>0x000000001c161a12|- rs1_val == 33554432<br>                                                                                       |[0x80000d6c]:aes64im<br> [0x80000d70]:sw<br> |
| 125|[0x800023f0]<br>0x000000000e0b0d09|- rs1_val == 16777216<br>                                                                                       |[0x80000d78]:aes64im<br> [0x80000d7c]:sw<br> |
| 126|[0x800023f8]<br>0x00000000ec41f7da|- rs1_val == 8388608<br>                                                                                        |[0x80000d84]:aes64im<br> [0x80000d88]:sw<br> |
| 127|[0x80002400]<br>0x0000000076adf66d|- rs1_val == 4194304<br>                                                                                        |[0x80000d90]:aes64im<br> [0x80000d94]:sw<br> |
| 128|[0x80002408]<br>0x000000003bdb7bbb|- rs1_val == 2097152<br>                                                                                        |[0x80000d9c]:aes64im<br> [0x80000da0]:sw<br> |
| 129|[0x80002410]<br>0x0000000090e0b0d0|- rs1_val == 1048576<br>                                                                                        |[0x80000da8]:aes64im<br> [0x80000dac]:sw<br> |
| 130|[0x80002418]<br>0x0000000048705868|- rs1_val == 524288<br>                                                                                         |[0x80000db4]:aes64im<br> [0x80000db8]:sw<br> |
| 131|[0x80002420]<br>0x0000000024382c34|- rs1_val == 262144<br>                                                                                         |[0x80000dc0]:aes64im<br> [0x80000dc4]:sw<br> |
| 132|[0x80002428]<br>0x00000000121c161a|- rs1_val == 131072<br>                                                                                         |[0x80000dcc]:aes64im<br> [0x80000dd0]:sw<br> |
| 133|[0x80002430]<br>0x00000000090e0b0d|- rs1_val == 65536<br>                                                                                          |[0x80000dd8]:aes64im<br> [0x80000ddc]:sw<br> |
| 134|[0x80002438]<br>0x00000000daec41f7|- rs1_val == 32768<br>                                                                                          |[0x80000de4]:aes64im<br> [0x80000de8]:sw<br> |
| 135|[0x80002440]<br>0x000000006d76adf6|- rs1_val == 16384<br>                                                                                          |[0x80000df0]:aes64im<br> [0x80000df4]:sw<br> |
| 136|[0x80002448]<br>0x00000000bb3bdb7b|- rs1_val == 8192<br>                                                                                           |[0x80000dfc]:aes64im<br> [0x80000e00]:sw<br> |
| 137|[0x80002450]<br>0x00000000d090e0b0|- rs1_val == 4096<br>                                                                                           |[0x80000e08]:aes64im<br> [0x80000e0c]:sw<br> |
| 138|[0x80002458]<br>0x0000000068487058|- rs1_val == 2048<br>                                                                                           |[0x80000e18]:aes64im<br> [0x80000e1c]:sw<br> |
| 139|[0x80002460]<br>0x000000003424382c|- rs1_val == 1024<br>                                                                                           |[0x80000e24]:aes64im<br> [0x80000e28]:sw<br> |
| 140|[0x80002468]<br>0x000000001a121c16|- rs1_val == 512<br>                                                                                            |[0x80000e30]:aes64im<br> [0x80000e34]:sw<br> |
| 141|[0x80002470]<br>0x000000000d090e0b|- rs1_val == 256<br>                                                                                            |[0x80000e3c]:aes64im<br> [0x80000e40]:sw<br> |
| 142|[0x80002478]<br>0x00000000f7daec41|- rs1_val == 128<br>                                                                                            |[0x80000e48]:aes64im<br> [0x80000e4c]:sw<br> |
| 143|[0x80002480]<br>0x00000000f66d76ad|- rs1_val == 64<br>                                                                                             |[0x80000e54]:aes64im<br> [0x80000e58]:sw<br> |
| 144|[0x80002488]<br>0x000000007bbb3bdb|- rs1_val == 32<br>                                                                                             |[0x80000e60]:aes64im<br> [0x80000e64]:sw<br> |
| 145|[0x80002490]<br>0x00000000b0d090e0|- rs1_val == 16<br>                                                                                             |[0x80000e6c]:aes64im<br> [0x80000e70]:sw<br> |
| 146|[0x80002498]<br>0x0000000058684870|- rs1_val == 8<br>                                                                                              |[0x80000e78]:aes64im<br> [0x80000e7c]:sw<br> |
| 147|[0x800024a0]<br>0x000000002c342438|- rs1_val == 4<br>                                                                                              |[0x80000e84]:aes64im<br> [0x80000e88]:sw<br> |
| 148|[0x800024a8]<br>0x00000000161a121c|- rs1_val == 2<br>                                                                                              |[0x80000e90]:aes64im<br> [0x80000e94]:sw<br> |
| 149|[0x800024b0]<br>0x248444c4ffffffff|- rs1_val == 16140901064495857663<br>                                                                           |[0x80000ea4]:aes64im<br> [0x80000ea8]:sw<br> |
