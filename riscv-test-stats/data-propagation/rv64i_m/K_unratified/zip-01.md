
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001d20')]      |
| SIG_REGION                | [('0x80003010', '0x80003830', '260 dwords')]      |
| COV_LABELS                | zip      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/zip-01.S/ref.S    |
| Total Number of coverpoints| 330     |
| Total Coverpoints Hit     | 325      |
| Total Signature Updates   | 260      |
| STAT1                     | 259      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d10]:shfli
      [0x80001d14]:sw
 -- Signature Address: 0x80003828 Data: 0x34380a2a00000000
 -- Redundant Coverpoints hit by the op
      - opcode : shfli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0x4637640000000000 #nosat






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

|s.no|            signature             |                                                 coverpoints                                                  |                   code                    |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------|-------------------------------------------|
|   1|[0x80003010]<br>0xffffffffffffffff|- opcode : shfli<br> - rs1 : x23<br> - rd : x8<br> - rs1 != rd<br> - rs1_val == 0xFFFFFFFFFFFFFFFF #nosat<br> |[0x8000039c]:shfli<br> [0x800003a0]:sw<br> |
|   2|[0x80003018]<br>0x0000000000000000|- rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == 0x0000000000000000 #nosat<br>                     |[0x800003a8]:shfli<br> [0x800003ac]:sw<br> |
|   3|[0x80003020]<br>0x8000000000000000|- rs1 : x15<br> - rd : x13<br> - rs1_val == 0x8000000000000000 #nosat<br>                                     |[0x800003b8]:shfli<br> [0x800003bc]:sw<br> |
|   4|[0x80003028]<br>0xa000000000000000|- rs1 : x27<br> - rd : x15<br> - rs1_val == 0xC000000000000000 #nosat<br>                                     |[0x800003c8]:shfli<br> [0x800003cc]:sw<br> |
|   5|[0x80003030]<br>0x8800000000000000|- rs1 : x2<br> - rd : x26<br> - rs1_val == 0xA000000000000000 #nosat<br>                                      |[0x800003d8]:shfli<br> [0x800003dc]:sw<br> |
|   6|[0x80003038]<br>0x8200000000000000|- rs1 : x14<br> - rd : x3<br> - rs1_val == 0x9000000000000000 #nosat<br>                                      |[0x800003e8]:shfli<br> [0x800003ec]:sw<br> |
|   7|[0x80003040]<br>0x0080000000000000|- rs1 : x6<br> - rd : x12<br> - rs1_val == 0x0800000000000000 #nosat<br>                                      |[0x800003f8]:shfli<br> [0x800003fc]:sw<br> |
|   8|[0x80003048]<br>0x08a0000000000000|- rs1 : x10<br> - rd : x1<br> - rs1_val == 0x2C00000000000000 #nosat<br>                                      |[0x80000408]:shfli<br> [0x8000040c]:sw<br> |
|   9|[0x80003050]<br>0x8228000000000000|- rs1 : x24<br> - rd : x21<br> - rs1_val == 0x9600000000000000 #nosat<br>                                     |[0x80000418]:shfli<br> [0x8000041c]:sw<br> |
|  10|[0x80003058]<br>0x0002000000000000|- rs1 : x25<br> - rd : x24<br> - rs1_val == 0x0100000000000000 #nosat<br>                                     |[0x80000428]:shfli<br> [0x8000042c]:sw<br> |
|  11|[0x80003060]<br>0x8220800000000000|- rs1 : x11<br> - rd : x6<br> - rs1_val == 0x9480000000000000 #nosat<br>                                      |[0x80000438]:shfli<br> [0x8000043c]:sw<br> |
|  12|[0x80003068]<br>0x8a22a00000000000|- rs1 : x19<br> - rd : x14<br> - rs1_val == 0xB5C0000000000000 #nosat<br>                                     |[0x80000448]:shfli<br> [0x8000044c]:sw<br> |
|  13|[0x80003070]<br>0x002a880000000000|- rs1 : x4<br> - rd : x29<br> - rs1_val == 0x07A0000000000000 #nosat<br>                                      |[0x80000458]:shfli<br> [0x8000045c]:sw<br> |
|  14|[0x80003078]<br>0x2a2a8a0000000000|- rs1 : x29<br> - rd : x20<br> - rs1_val == 0x77B0000000000000 #nosat<br>                                     |[0x80000468]:shfli<br> [0x8000046c]:sw<br> |
|  15|[0x80003080]<br>0xaa02088000000000|- rs1 : x1<br> - rd : x27<br> - rs1_val == 0xF128000000000000 #nosat<br>                                      |[0x80000478]:shfli<br> [0x8000047c]:sw<br> |
|  16|[0x80003088]<br>0xa000a82000000000|- rs1 : x13<br> - rd : x4<br> - rs1_val == 0xC0E4000000000000 #nosat<br>                                      |[0x8000048c]:shfli<br> [0x80000490]:sw<br> |
|  17|[0x80003090]<br>0x0000000000000000|- rs1 : x0<br> - rd : x22<br>                                                                                 |[0x80000498]:shfli<br> [0x8000049c]:sw<br> |
|  18|[0x80003098]<br>0x008a0aa200000000|- rs1 : x30<br> - rd : x11<br> - rs1_val == 0x0B3D000000000000 #nosat<br>                                     |[0x800004ac]:shfli<br> [0x800004b0]:sw<br> |
|  19|[0x800030a0]<br>0xca02222000000000|- rs1 : x21<br> - rd : x25<br> - rs1_val == 0xB154800000000000 #nosat<br>                                     |[0x800004c0]:shfli<br> [0x800004c4]:sw<br> |
|  20|[0x800030a8]<br>0x5828008200000000|- rs1 : x20<br> - rd : x30<br> - rs1_val == 0x2609C00000000000 #nosat<br>                                     |[0x800004d4]:shfli<br> [0x800004d8]:sw<br> |
|  21|[0x800030b0]<br>0xf4aa228a00000000|- rs1 : x28<br> - rd : x7<br> - rs1_val == 0xCF5BE00000000000 #nosat<br>                                      |[0x800004e8]:shfli<br> [0x800004ec]:sw<br> |
|  22|[0x800030b8]<br>0x1fa8a20000000000|- rs1 : x3<br> - rd : x5<br> - rs1_val == 0x3ED0700000000000 #nosat<br>                                       |[0x800004fc]:shfli<br> [0x80000500]:sw<br> |
|  23|[0x800030c0]<br>0x79caa2a800000000|- rs1 : x18<br> - rd : x23<br> - rs1_val == 0x6BDED80000000000 #nosat<br>                                     |[0x80000510]:shfli<br> [0x80000514]:sw<br> |
|  24|[0x800030c8]<br>0x0000000000000000|- rs1 : x5<br> - rd : x0<br> - rs1_val == 0x4637640000000000 #nosat<br>                                       |[0x8000052c]:shfli<br> [0x80000530]:sw<br> |
|  25|[0x800030d0]<br>0x3b1c0a8200000000|- rs1 : x7<br> - rd : x9<br> - rs1_val == 0x7239560000000000 #nosat<br>                                       |[0x80000540]:shfli<br> [0x80000544]:sw<br> |
|  26|[0x800030d8]<br>0xd081282000000000|- rs1 : x17<br> - rd : x28<br> - rs1_val == 0x8864C10000000000 #nosat<br>                                     |[0x80000554]:shfli<br> [0x80000558]:sw<br> |
|  27|[0x800030e0]<br>0x79c0e02a00000000|- rs1 : x9<br> - rd : x16<br> - rs1_val == 0x68C7D88000000000 #nosat<br>                                      |[0x80000568]:shfli<br> [0x8000056c]:sw<br> |
|  28|[0x800030e8]<br>0xff22588a00000000|- rs1 : x16<br> - rd : x19<br> - rs1_val == 0xF52BF0C000000000 #nosat<br>                                     |[0x8000057c]:shfli<br> [0x80000580]:sw<br> |
|  29|[0x800030f0]<br>0xcd309caa00000000|- rs1 : x26<br> - rd : x10<br> - rs1_val == 0xA4AFB46000000000 #nosat<br>                                     |[0x80000590]:shfli<br> [0x80000594]:sw<br> |
|  30|[0x800030f8]<br>0x5c6c1b8a00000000|- rs1 : x12<br> - rd : x18<br> - rs1_val == 0x263BEA5000000000 #nosat<br>                                     |[0x800005a4]:shfli<br> [0x800005a8]:sw<br> |
|  31|[0x80003100]<br>0x65f8fc6200000000|- rs1 : x22<br> - rd : x17<br> - rs1_val == 0x4EE5BCE800000000 #nosat<br>                                     |[0x800005b8]:shfli<br> [0x800005bc]:sw<br> |
|  32|[0x80003108]<br>0x7eb422f200000000|- rs1 : x8<br> - rd : x2<br> - rs1_val == 0x7C5DE60C00000000 #nosat<br>                                       |[0x800005cc]:shfli<br> [0x800005d0]:sw<br> |
|  33|[0x80003110]<br>0x9911146600000000|- rs1_val == 0xA005556A00000000 #nosat<br>                                                                    |[0x800005e0]:shfli<br> [0x800005e4]:sw<br> |
|  34|[0x80003118]<br>0x5c4c864b00000000|- rs1_val == 0x2293EA2900000000 #nosat<br>                                                                    |[0x800005f4]:shfli<br> [0x800005f8]:sw<br> |
|  35|[0x80003120]<br>0x4e2c19de80000000|- rs1_val == 0x362BA25E80000000 #nosat<br>                                                                    |[0x80000608]:shfli<br> [0x8000060c]:sw<br> |
|  36|[0x80003128]<br>0x643f0b5e20000000|- rs1_val == 0x4733A71E40000000 #nosat<br>                                                                    |[0x80000624]:shfli<br> [0x80000628]:sw<br> |
|  37|[0x80003130]<br>0x17e921ce08000000|- rs1_val == 0x1E4B791A20000000 #nosat<br>                                                                    |[0x80000640]:shfli<br> [0x80000644]:sw<br> |
|  38|[0x80003138]<br>0x32fba08ea2000000|- rs1_val == 0x5FCB4D02D0000000 #nosat<br>                                                                    |[0x8000065c]:shfli<br> [0x80000660]:sw<br> |
|  39|[0x80003140]<br>0x9384cecc80800000|- rs1_val == 0x98BA52AA88000000 #nosat<br>                                                                    |[0x80000678]:shfli<br> [0x8000067c]:sw<br> |
|  40|[0x80003148]<br>0xacad548202200000|- rs1_val == 0xEE0923E014000000 #nosat<br>                                                                    |[0x80000694]:shfli<br> [0x80000698]:sw<br> |
|  41|[0x80003150]<br>0x35dfb2640a880000|- rs1_val == 0x4BD47F4A3A000000 #nosat<br>                                                                    |[0x800006b0]:shfli<br> [0x800006b4]:sw<br> |
|  42|[0x80003158]<br>0xca5f41bbaa020000|- rs1_val == 0xB30F8F95F1000000 #nosat<br>                                                                    |[0x800006cc]:shfli<br> [0x800006d0]:sw<br> |
|  43|[0x80003160]<br>0x1e83c40808a88000|- rs1_val == 0x398261A02E800000 #nosat<br>                                                                    |[0x800006e8]:shfli<br> [0x800006ec]:sw<br> |
|  44|[0x80003168]<br>0x54c9fe77a22aa000|- rs1_val == 0x0AF5E9EFD7C00000 #nosat<br>                                                                    |[0x80000704]:shfli<br> [0x80000708]:sw<br> |
|  45|[0x80003170]<br>0x758ee1e18822a800|- rs1_val == 0x4BCCF299A5E00000 #nosat<br>                                                                    |[0x80000720]:shfli<br> [0x80000724]:sw<br> |
|  46|[0x80003178]<br>0x9cbabb6388aaaa00|- rs1_val == 0xAFF56459AFF00000 #nosat<br>                                                                    |[0x8000073c]:shfli<br> [0x80000740]:sw<br> |
|  47|[0x80003180]<br>0xbd547bf32080aa80|- rs1_val == 0xE07D7EDD48F80000 #nosat<br>                                                                    |[0x80000758]:shfli<br> [0x8000075c]:sw<br> |
|  48|[0x80003188]<br>0x18783c142a2a8020|- rs1_val == 0x26604C6677840000 #nosat<br>                                                                    |[0x80000774]:shfli<br> [0x80000778]:sw<br> |
|  49|[0x80003190]<br>0x66af2d7a28202088|- rs1_val == 0x5F67A33C644A0000 #nosat<br>                                                                    |[0x80000798]:shfli<br> [0x8000079c]:sw<br> |
|  50|[0x80003198]<br>0xa0f52a5702a0288a|- rs1_val == 0xCC710F0F1C6B0000 #nosat<br>                                                                    |[0x800007bc]:shfli<br> [0x800007c0]:sw<br> |
|  51|[0x800031a0]<br>0x952ddf9ce8a00a20|- rs1_val == 0x86BA73F6EC348000 #nosat<br>                                                                    |[0x800007e0]:shfli<br> [0x800007e4]:sw<br> |
|  52|[0x800031a8]<br>0x7246bc8c92282aa8|- rs1_val == 0x51EACA62967E4000 #nosat<br>                                                                    |[0x80000804]:shfli<br> [0x80000808]:sw<br> |
|  53|[0x800031b0]<br>0xa27609babca2a082|- rs1_val == 0xD52F0E14EDC96000 #nosat<br>                                                                    |[0x80000828]:shfli<br> [0x8000082c]:sw<br> |
|  54|[0x800031b8]<br>0x14a69ba70d820020|- rs1_val == 0x0DBD625329043000 #nosat<br>                                                                    |[0x8000084c]:shfli<br> [0x80000850]:sw<br> |
|  55|[0x800031c0]<br>0x28f3b0ee79488a22|- rs1_val == 0x6DCF0D4A62B5D800 #nosat<br>                                                                    |[0x80000874]:shfli<br> [0x80000878]:sw<br> |
|  56|[0x800031c8]<br>0x8b748f4f837808a0|- rs1_val == 0xB4B31E3B962C1C00 #nosat<br>                                                                    |[0x8000089c]:shfli<br> [0x800008a0]:sw<br> |
|  57|[0x800031d0]<br>0x94a3a5a7be1c08a2|- rs1_val == 0x8DCD6133F22D6600 #nosat<br>                                                                    |[0x800008c4]:shfli<br> [0x800008c8]:sw<br> |
|  58|[0x800031d8]<br>0x2172cdaaa1d988a8|- rs1_val == 0x45AF1CB0CAAE1D00 #nosat<br>                                                                    |[0x800008ec]:shfli<br> [0x800008f0]:sw<br> |
|  59|[0x800031e0]<br>0xed853cbd8ed26aa0|- rs1_val == 0xE86EB367B97C2C80 #nosat<br>                                                                    |[0x80000914]:shfli<br> [0x80000918]:sw<br> |
|  60|[0x800031e8]<br>0x5ca7838b859d1002|- rs1_val == 0x2D9BE3118A013740 #nosat<br>                                                                    |[0x8000093c]:shfli<br> [0x80000940]:sw<br> |
|  61|[0x800031f0]<br>0x2f50ba67aea6bea2|- rs1_val == 0x70F53C4BFDFD2260 #nosat<br>                                                                    |[0x80000964]:shfli<br> [0x80000968]:sw<br> |
|  62|[0x800031f8]<br>0xae1d4d885df52f8a|- rs1_val == 0xF22A27B02C7BFF30 #nosat<br>                                                                    |[0x80000984]:shfli<br> [0x80000988]:sw<br> |
|  63|[0x80003200]<br>0x50f7d7c34c3505ca|- rs1_val == 0x0D99CFF9240BA738 #nosat<br>                                                                    |[0x800009ac]:shfli<br> [0x800009b0]:sw<br> |
|  64|[0x80003208]<br>0x2c2d1cfcc8897c7a|- rs1_val == 0x662E236EAA6781EC #nosat<br>                                                                    |[0x800009d4]:shfli<br> [0x800009d8]:sw<br> |
|  65|[0x80003210]<br>0x05ece9c927509944|- rs1_val == 0x0EEA3A9950A03C5A #nosat<br>                                                                    |[0x800009fc]:shfli<br> [0x80000a00]:sw<br> |
|  66|[0x80003218]<br>0x7164b6e43f967bf7|- rs1_val == 0x44DCDA6A797D76DF #nosat<br>                                                                    |[0x80000a24]:shfli<br> [0x80000a28]:sw<br> |
|  67|[0x80003220]<br>0x1bd2934b459f01fa|- rs1_val == 0x39935C590B0FB71C #nosat<br>                                                                    |[0x80000a4c]:shfli<br> [0x80000a50]:sw<br> |
|  68|[0x80003228]<br>0xe7fd5724ecacb26b|- rs1_val == 0xDE14BFF2EED7A249 #nosat<br>                                                                    |[0x80000a74]:shfli<br> [0x80000a78]:sw<br> |
|  69|[0x80003230]<br>0x7cf486bace9415c5|- rs1_val == 0x6C9FEE24B808A67B #nosat<br>                                                                    |[0x80000a9c]:shfli<br> [0x80000aa0]:sw<br> |
|  70|[0x80003238]<br>0x545594ec6c1ae11d|- rs1_val == 0x008EEF6A63C2A497 #nosat<br>                                                                    |[0x80000abc]:shfli<br> [0x80000ac0]:sw<br> |
|  71|[0x80003240]<br>0x7f798f53bf310c5f|- rs1_val == 0x76B1FD3DF423752F #nosat<br>                                                                    |[0x80000ae4]:shfli<br> [0x80000ae8]:sw<br> |
|  72|[0x80003248]<br>0xd81650da8c288b7f|- rs1_val == 0xA10BC6CCA6B7201F #nosat<br>                                                                    |[0x80000b0c]:shfli<br> [0x80000b10]:sw<br> |
|  73|[0x80003250]<br>0x3da818b3070de55d|- rs1_val == 0x6E2D704512C233BF #nosat<br>                                                                    |[0x80000b34]:shfli<br> [0x80000b38]:sw<br> |
|  74|[0x80003258]<br>0x595281af22a3b5ff|- rs1_val == 0x218FDC135DCF017F #nosat<br>                                                                    |[0x80000b5c]:shfli<br> [0x80000b60]:sw<br> |
|  75|[0x80003260]<br>0xca4f93844f16f5d5|- rs1_val == 0xB3988B5231C8B6FF #nosat<br>                                                                    |[0x80000b84]:shfli<br> [0x80000b88]:sw<br> |
|  76|[0x80003268]<br>0xe94daec61ee17777|- rs1_val == 0xE2F99B2A3C5569FF #nosat<br>                                                                    |[0x80000bac]:shfli<br> [0x80000bb0]:sw<br> |
|  77|[0x80003270]<br>0x8710ca8a1aa5757d|- rs1_val == 0x90BB34803C4643FF #nosat<br>                                                                    |[0x80000bd4]:shfli<br> [0x80000bd8]:sw<br> |
|  78|[0x80003278]<br>0xc0e1a1b87bb7ddd5|- rs1_val == 0x8CCE89147DA8D7FF #nosat<br>                                                                    |[0x80000bfc]:shfli<br> [0x80000c00]:sw<br> |
|  79|[0x80003280]<br>0xc24fa50f58577fdd|- rs1_val == 0x93C38B33217ACFFF #nosat<br>                                                                    |[0x80000c24]:shfli<br> [0x80000c28]:sw<br> |
|  80|[0x80003288]<br>0xa81fd93e39777755|- rs1_val == 0xE3A707D665505FFF #nosat<br>                                                                    |[0x80000c4c]:shfli<br> [0x80000c50]:sw<br> |
|  81|[0x80003290]<br>0x206b9f6fc7df5557|- rs1_val == 0x47B7097B9B01BFFF #nosat<br>                                                                    |[0x80000c74]:shfli<br> [0x80000c78]:sw<br> |
|  82|[0x80003298]<br>0x714e11183f77d7ff|- rs1_val == 0x4302DA54759F7FFF #nosat<br>                                                                    |[0x80000c9c]:shfli<br> [0x80000ca0]:sw<br> |
|  83|[0x800032a0]<br>0x27fa40067555f7d5|- rs1_val == 0x5F013C8240D8FFFF #nosat<br>                                                                    |[0x80000cc4]:shfli<br> [0x80000cc8]:sw<br> |
|  84|[0x800032a8]<br>0x23cb4b4bd577f5f7|- rs1_val == 0x5B33199985CDFFFF #nosat<br>                                                                    |[0x80000cec]:shfli<br> [0x80000cf0]:sw<br> |
|  85|[0x800032b0]<br>0x5da3aca65f5ff7df|- rs1_val == 0x2DEDF12233DBFFFF #nosat<br>                                                                    |[0x80000d14]:shfli<br> [0x80000d18]:sw<br> |
|  86|[0x800032b8]<br>0x259a56295df75f7f|- rs1_val == 0x4B1634E12D37FFFF #nosat<br>                                                                    |[0x80000d34]:shfli<br> [0x80000d38]:sw<br> |
|  87|[0x800032c0]<br>0xc5c20e367f57d5ff|- rs1_val == 0x8935B826718FFFFF #nosat<br>                                                                    |[0x80000d54]:shfli<br> [0x80000d58]:sw<br> |
|  88|[0x800032c8]<br>0x9e9dc2e4ddf777ff|- rs1_val == 0xBA9C678AAD5FFFFF #nosat<br>                                                                    |[0x80000d74]:shfli<br> [0x80000d78]:sw<br> |
|  89|[0x800032d0]<br>0x6f40dea55d5ddfff|- rs1_val == 0x70BCB8E322BFFFFF #nosat<br>                                                                    |[0x80000d94]:shfli<br> [0x80000d98]:sw<br> |
|  90|[0x800032d8]<br>0xaeb5ce7ddfff7fff|- rs1_val == 0xFCB627AFBF7FFFFF #nosat<br>                                                                    |[0x80000db4]:shfli<br> [0x80000db8]:sw<br> |
|  91|[0x800032e0]<br>0xd3f53b2cd5f5ffff|- rs1_val == 0x9C76DF528CFFFFFF #nosat<br>                                                                    |[0x80000dd4]:shfli<br> [0x80000dd8]:sw<br> |
|  92|[0x800032e8]<br>0x7b59e1c0df57ffff|- rs1_val == 0x72C8DD98B1FFFFFF #nosat<br>                                                                    |[0x80000df4]:shfli<br> [0x80000df8]:sw<br> |
|  93|[0x800032f0]<br>0x655f24b4ffdfffff|- rs1_val == 0x434CBF26FBFFFFFF #nosat<br>                                                                    |[0x80000e14]:shfli<br> [0x80000e18]:sw<br> |
|  94|[0x800032f8]<br>0xcd1d4abff57fffff|- rs1_val == 0xA23FB787C7FFFFFF #nosat<br>                                                                    |[0x80000e34]:shfli<br> [0x80000e38]:sw<br> |
|  95|[0x80003300]<br>0xc6814ff4f5ffffff|- rs1_val == 0x983CA1BECFFFFFFF #nosat<br>                                                                    |[0x80000e54]:shfli<br> [0x80000e58]:sw<br> |
|  96|[0x80003308]<br>0x23c0920d57ffffff|- rs1_val == 0x589218431FFFFFFF #nosat<br>                                                                    |[0x80000e74]:shfli<br> [0x80000e78]:sw<br> |
|  97|[0x80003310]<br>0xc96bcefc5fffffff|- rs1_val == 0xA7BE99AE3FFFFFFF #nosat<br>                                                                    |[0x80000e94]:shfli<br> [0x80000e98]:sw<br> |
|  98|[0x80003318]<br>0x8d1f2ee87fffffff|- rs1_val == 0xA37E37287FFFFFFF #nosat<br>                                                                    |[0x80000eb4]:shfli<br> [0x80000eb8]:sw<br> |
|  99|[0x80003320]<br>0xad1f2fe2ffffffff|- rs1_val == 0xE37D3738FFFFFFFF #nosat<br>                                                                    |[0x80000ecc]:shfli<br> [0x80000ed0]:sw<br> |
| 100|[0x80003328]<br>0xd9ce8b71ffffffff|- rs1_val == 0xABB4DA1DFFFFFFFF #nosat<br>                                                                    |[0x80000ee4]:shfli<br> [0x80000ee8]:sw<br> |
| 101|[0x80003330]<br>0xbf8b4badffffffff|- rs1_val == 0xFB3E7193FFFFFFFF #nosat<br>                                                                    |[0x80000efc]:shfli<br> [0x80000f00]:sw<br> |
| 102|[0x80003338]<br>0x91a0ce97ffffffff|- rs1_val == 0x8CB950A7FFFFFFFF #nosat<br>                                                                    |[0x80000f14]:shfli<br> [0x80000f18]:sw<br> |
| 103|[0x80003340]<br>0xa967fe5fffffffff|- rs1_val == 0xE5F31BEFFFFFFFFF #nosat<br>                                                                    |[0x80000f2c]:shfli<br> [0x80000f30]:sw<br> |
| 104|[0x80003348]<br>0x0fdfe9d7ffffffff|- rs1_val == 0x3BE93F9FFFFFFFFF #nosat<br>                                                                    |[0x80000f44]:shfli<br> [0x80000f48]:sw<br> |
| 105|[0x80003350]<br>0x639e4757ffffffff|- rs1_val == 0x5B1196BFFFFFFFFF #nosat<br>                                                                    |[0x80000f5c]:shfli<br> [0x80000f60]:sw<br> |
| 106|[0x80003358]<br>0xa8419575ffffffff|- rs1_val == 0xE084097FFFFFFFFF #nosat<br>                                                                    |[0x80000f74]:shfli<br> [0x80000f78]:sw<br> |
| 107|[0x80003360]<br>0x4d5adf7dffffffff|- rs1_val == 0x23B6BCFFFFFFFFFF #nosat<br>                                                                    |[0x80000f8c]:shfli<br> [0x80000f90]:sw<br> |
| 108|[0x80003368]<br>0x79bbf5ffffffffff|- rs1_val == 0x6FCFD5FFFFFFFFFF #nosat<br>                                                                    |[0x80000fa4]:shfli<br> [0x80000fa8]:sw<br> |
| 109|[0x80003370]<br>0x2a4f7fd7ffffffff|- rs1_val == 0x73790BFFFFFFFFFF #nosat<br>                                                                    |[0x80000fbc]:shfli<br> [0x80000fc0]:sw<br> |
| 110|[0x80003378]<br>0x751f5dffffffffff|- rs1_val == 0x432FF7FFFFFFFFFF #nosat<br>                                                                    |[0x80000fd4]:shfli<br> [0x80000fd8]:sw<br> |
| 111|[0x80003380]<br>0xa85f7ddfffffffff|- rs1_val == 0xE36B0FFFFFFFFFFF #nosat<br>                                                                    |[0x80000fec]:shfli<br> [0x80000ff0]:sw<br> |
| 112|[0x80003388]<br>0xf1df75ddffffffff|- rs1_val == 0xCB4ADFFFFFFFFFFF #nosat<br>                                                                    |[0x80001004]:shfli<br> [0x80001008]:sw<br> |
| 113|[0x80003390]<br>0x0777dfffffffffff|- rs1_val == 0x15BF3FFFFFFFFFFF #nosat<br>                                                                    |[0x8000101c]:shfli<br> [0x80001020]:sw<br> |
| 114|[0x80003398]<br>0xb777d7ddffffffff|- rs1_val == 0xD59A7FFFFFFFFFFF #nosat<br>                                                                    |[0x80001034]:shfli<br> [0x80001038]:sw<br> |
| 115|[0x800033a0]<br>0xfffd5f5dffffffff|- rs1_val == 0xFE32FFFFFFFFFFFF #nosat<br>                                                                    |[0x80001048]:shfli<br> [0x8000104c]:sw<br> |
| 116|[0x800033a8]<br>0xffff7ff7ffffffff|- rs1_val == 0xFF7DFFFFFFFFFFFF #nosat<br>                                                                    |[0x8000105c]:shfli<br> [0x80001060]:sw<br> |
| 117|[0x800033b0]<br>0xddff5d5fffffffff|- rs1_val == 0xAF23FFFFFFFFFFFF #nosat<br>                                                                    |[0x80001074]:shfli<br> [0x80001078]:sw<br> |
| 118|[0x800033b8]<br>0x5d55777fffffffff|- rs1_val == 0x2057FFFFFFFFFFFF #nosat<br>                                                                    |[0x80001088]:shfli<br> [0x8000108c]:sw<br> |
| 119|[0x800033c0]<br>0x557fddffffffffff|- rs1_val == 0x07AFFFFFFFFFFFFF #nosat<br>                                                                    |[0x8000109c]:shfli<br> [0x800010a0]:sw<br> |
| 120|[0x800033c8]<br>0xdffdd7ffffffffff|- rs1_val == 0xBE9FFFFFFFFFFFFF #nosat<br>                                                                    |[0x800010b0]:shfli<br> [0x800010b4]:sw<br> |
| 121|[0x800033d0]<br>0xf7d5dfffffffffff|- rs1_val == 0xD8BFFFFFFFFFFFFF #nosat<br>                                                                    |[0x800010c4]:shfli<br> [0x800010c8]:sw<br> |
| 122|[0x800033d8]<br>0x575d7fffffffffff|- rs1_val == 0x127FFFFFFFFFFFFF #nosat<br>                                                                    |[0x800010d8]:shfli<br> [0x800010dc]:sw<br> |
| 123|[0x800033e0]<br>0x5dfdffffffffffff|- rs1_val == 0x2EFFFFFFFFFFFFFF #nosat<br>                                                                    |[0x800010ec]:shfli<br> [0x800010f0]:sw<br> |
| 124|[0x800033e8]<br>0xdd77ffffffffffff|- rs1_val == 0xA5FFFFFFFFFFFFFF #nosat<br>                                                                    |[0x80001100]:shfli<br> [0x80001104]:sw<br> |
| 125|[0x800033f0]<br>0xf7dfffffffffffff|- rs1_val == 0xDBFFFFFFFFFFFFFF #nosat<br>                                                                    |[0x80001114]:shfli<br> [0x80001118]:sw<br> |
| 126|[0x800033f8]<br>0xdd7fffffffffffff|- rs1_val == 0xA7FFFFFFFFFFFFFF #nosat<br>                                                                    |[0x80001128]:shfli<br> [0x8000112c]:sw<br> |
| 127|[0x80003400]<br>0xddffffffffffffff|- rs1_val == 0xAFFFFFFFFFFFFFFF #nosat<br>                                                                    |[0x8000113c]:shfli<br> [0x80001140]:sw<br> |
| 128|[0x80003408]<br>0xf7ffffffffffffff|- rs1_val == 0xDFFFFFFFFFFFFFFF #nosat<br>                                                                    |[0x80001150]:shfli<br> [0x80001154]:sw<br> |
| 129|[0x80003410]<br>0xdfffffffffffffff|- rs1_val == 0xBFFFFFFFFFFFFFFF #nosat<br>                                                                    |[0x80001164]:shfli<br> [0x80001168]:sw<br> |
| 130|[0x80003418]<br>0x7fffffffffffffff|- rs1_val == 0x7FFFFFFFFFFFFFFF #nosat<br>                                                                    |[0x80001178]:shfli<br> [0x8000117c]:sw<br> |
| 131|[0x80003420]<br>0xdc4c2b6047ad5f24|- rs1_val == 0xA274EA181E34B3F2 #nosat<br>                                                                    |[0x800011a0]:shfli<br> [0x800011a4]:sw<br> |
| 132|[0x80003428]<br>0x6df51afbf50914b9|- rs1_val == 0x6C3FBF4DC20EF165 #nosat<br>                                                                    |[0x800011c8]:shfli<br> [0x800011cc]:sw<br> |
| 133|[0x80003430]<br>0x09c0fbc2ef2cf5e3|- rs1_val == 0x28F918D8F6CDB2F9 #nosat<br>                                                                    |[0x800011f0]:shfli<br> [0x800011f4]:sw<br> |
| 134|[0x80003438]<br>0x531ee80133325d24|- rs1_val == 0x13E0D681552454F2 #nosat<br>                                                                    |[0x80001218]:shfli<br> [0x8000121c]:sw<br> |
| 135|[0x80003440]<br>0x14ff8dde033921ba|- rs1_val == 0x0FAB6F3E164F1514 #nosat<br>                                                                    |[0x80001240]:shfli<br> [0x80001244]:sw<br> |
| 136|[0x80003448]<br>0x416d5ef920271341|- rs1_val == 0x063E9BED45100359 #nosat<br>                                                                    |[0x80001260]:shfli<br> [0x80001264]:sw<br> |
| 137|[0x80003450]<br>0x5148f52cb57a71a0|- rs1_val == 0x02C6D8F2C74C7CD0 #nosat<br>                                                                    |[0x80001280]:shfli<br> [0x80001284]:sw<br> |
| 138|[0x80003458]<br>0x0557f351dd13080e|- rs1_val == 0x01D03FDDA123F502 #nosat<br>                                                                    |[0x800012a8]:shfli<br> [0x800012ac]:sw<br> |
| 139|[0x80003460]<br>0x0540aa7646188b19|- rs1_val == 0x00F5380E12B2A415 #nosat<br>                                                                    |[0x800012c8]:shfli<br> [0x800012cc]:sw<br> |
| 140|[0x80003468]<br>0x15052a7f6966daf2|- rs1_val == 0x0077730F65BD9ACC #nosat<br>                                                                    |[0x800012e8]:shfli<br> [0x800012ec]:sw<br> |
| 141|[0x80003470]<br>0x14440bd9fad9eec4|- rs1_val == 0x003A6A1DFAF8CDAA #nosat<br>                                                                    |[0x80001308]:shfli<br> [0x8000130c]:sw<br> |
| 142|[0x80003478]<br>0x114512b92b942243|- rs1_val == 0x001E5B4578511609 #nosat<br>                                                                    |[0x80001328]:shfli<br> [0x8000132c]:sw<br> |
| 143|[0x80003480]<br>0x000515a6e992542a|- rs1_val == 0x000D0372E90794E0 #nosat<br>                                                                    |[0x80001348]:shfli<br> [0x8000134c]:sw<br> |
| 144|[0x80003488]<br>0x440410290a669b11|- rs1_val == 0x0006A24135B00A55 #nosat<br>                                                                    |[0x80001368]:shfli<br> [0x8000136c]:sw<br> |
| 145|[0x80003490]<br>0x0045515d4514480f|- rs1_val == 0x00020BDF0023B683 #nosat<br>                                                                    |[0x80001388]:shfli<br> [0x8000138c]:sw<br> |
| 146|[0x80003498]<br>0x15005456b2c5a996|- rs1_val == 0x000170EED8E94B16 #nosat<br>                                                                    |[0x800013a8]:shfli<br> [0x800013ac]:sw<br> |
| 147|[0x800034a0]<br>0x54550011ba32215c|- rs1_val == 0x0000EF05F542441E #nosat<br>                                                                    |[0x800013c8]:shfli<br> [0x800013cc]:sw<br> |
| 148|[0x800034a8]<br>0x104444446859ab4d|- rs1_val == 0x00004AAA62F28D1B #nosat<br>                                                                    |[0x800013e8]:shfli<br> [0x800013ec]:sw<br> |
| 149|[0x800034b0]<br>0x05504505e7909bd3|- rs1_val == 0x00003CB3D8B9B45D #nosat<br>                                                                    |[0x80001408]:shfli<br> [0x8000140c]:sw<br> |
| 150|[0x800034b8]<br>0x01455410696c8104|- rs1_val == 0x00001BE466809A12 #nosat<br>                                                                    |[0x80001428]:shfli<br> [0x8000142c]:sw<br> |
| 151|[0x800034c0]<br>0x00410454b5211d8b|- rs1_val == 0x0000092EC42B7171 #nosat<br>                                                                    |[0x80001448]:shfli<br> [0x8000144c]:sw<br> |
| 152|[0x800034c8]<br>0x001510550646fa89|- rs1_val == 0x0000074F11FA2AC1 #nosat<br>                                                                    |[0x80001460]:shfli<br> [0x80001464]:sw<br> |
| 153|[0x800034d0]<br>0x000411446093efa9|- rs1_val == 0x0000025A49FE85B1 #nosat<br>                                                                    |[0x80001478]:shfli<br> [0x8000147c]:sw<br> |
| 154|[0x800034d8]<br>0x000115441e8cb49f|- rs1_val == 0x0000017A3ACB6267 #nosat<br>                                                                    |[0x80001490]:shfli<br> [0x80001494]:sw<br> |
| 155|[0x800034e0]<br>0x000050042201df79|- rs1_val == 0x000000C250B601FD #nosat<br>                                                                    |[0x800014a8]:shfli<br> [0x800014ac]:sw<br> |
| 156|[0x800034e8]<br>0x000014158a265f5b|- rs1_val == 0x00000067B53302FD #nosat<br>                                                                    |[0x800014c0]:shfli<br> [0x800014c4]:sw<br> |
| 157|[0x800034f0]<br>0x00000444b37b53c5|- rs1_val == 0x0000002AD7185DDB #nosat<br>                                                                    |[0x800014d8]:shfli<br> [0x800014dc]:sw<br> |
| 158|[0x800034f8]<br>0x00000155eeb9ed27|- rs1_val == 0x0000001FFEE5A5B3 #nosat<br>                                                                    |[0x800014f0]:shfli<br> [0x800014f4]:sw<br> |
| 159|[0x80003500]<br>0x00000044bebb686c|- rs1_val == 0x0000000AFF66658A #nosat<br>                                                                    |[0x80001508]:shfli<br> [0x8000150c]:sw<br> |
| 160|[0x80003508]<br>0x00000014647f0b73|- rs1_val == 0x000000064735AF1D #nosat<br>                                                                    |[0x80001520]:shfli<br> [0x80001524]:sw<br> |
| 161|[0x80003510]<br>0x000000046b26074a|- rs1_val == 0x0000000275139238 #nosat<br>                                                                    |[0x80001538]:shfli<br> [0x8000153c]:sw<br> |
| 162|[0x80003518]<br>0x0000000198c6d728|- rs1_val == 0x00000001A9964AF0 #nosat<br>                                                                    |[0x80001550]:shfli<br> [0x80001554]:sw<br> |
| 163|[0x80003520]<br>0x00000000aeaeae46|- rs1_val == 0x00000000FFF1222A #nosat<br>                                                                    |[0x80001568]:shfli<br> [0x8000156c]:sw<br> |
| 164|[0x80003528]<br>0x000000002c4ab8dc|- rs1_val == 0x0000000063EA284E #nosat<br>                                                                    |[0x80001578]:shfli<br> [0x8000157c]:sw<br> |
| 165|[0x80003530]<br>0x000000001921bc23|- rs1_val == 0x0000000024E55161 #nosat<br>                                                                    |[0x80001588]:shfli<br> [0x8000158c]:sw<br> |
| 166|[0x80003538]<br>0x00000000127bdcd6|- rs1_val == 0x0000000017A94DEE #nosat<br>                                                                    |[0x80001598]:shfli<br> [0x8000159c]:sw<br> |
| 167|[0x80003540]<br>0x000000004491e569|- rs1_val == 0x0000000008C6A5B9 #nosat<br>                                                                    |[0x800015a8]:shfli<br> [0x800015ac]:sw<br> |
| 168|[0x80003548]<br>0x000000001468e475|- rs1_val == 0x0000000006C468AF #nosat<br>                                                                    |[0x800015b8]:shfli<br> [0x800015bc]:sw<br> |
| 169|[0x80003550]<br>0x00000000155e8b1b|- rs1_val == 0x0000000003B37E15 #nosat<br>                                                                    |[0x800015c8]:shfli<br> [0x800015cc]:sw<br> |
| 170|[0x80003558]<br>0x000000005546adeb|- rs1_val == 0x0000000001EFFA39 #nosat<br>                                                                    |[0x800015d8]:shfli<br> [0x800015dc]:sw<br> |
| 171|[0x80003560]<br>0x0000000015518a52|- rs1_val == 0x0000000000B17D0C #nosat<br>                                                                    |[0x800015e8]:shfli<br> [0x800015ec]:sw<br> |
| 172|[0x80003568]<br>0x0000000045517bb8|- rs1_val == 0x00000000007EBDD4 #nosat<br>                                                                    |[0x800015f8]:shfli<br> [0x800015fc]:sw<br> |
| 173|[0x80003570]<br>0x0000000055544d1f|- rs1_val == 0x000000000023FEB7 #nosat<br>                                                                    |[0x80001608]:shfli<br> [0x8000160c]:sw<br> |
| 174|[0x80003578]<br>0x000000000114423b|- rs1_val == 0x0000000000171685 #nosat<br>                                                                    |[0x80001618]:shfli<br> [0x8000161c]:sw<br> |
| 175|[0x80003580]<br>0x00000000404014c2|- rs1_val == 0x0000000000098868 #nosat<br>                                                                    |[0x80001628]:shfli<br> [0x8000162c]:sw<br> |
| 176|[0x80003588]<br>0x0000000040101577|- rs1_val == 0x000000000005847F #nosat<br>                                                                    |[0x80001638]:shfli<br> [0x8000163c]:sw<br> |
| 177|[0x80003590]<br>0x000000001515411f|- rs1_val == 0x0000000000037797 #nosat<br>                                                                    |[0x80001648]:shfli<br> [0x8000164c]:sw<br> |
| 178|[0x80003598]<br>0x0000000011514543|- rs1_val == 0x0000000000015DB9 #nosat<br>                                                                    |[0x80001658]:shfli<br> [0x8000165c]:sw<br> |
| 179|[0x800035a0]<br>0x0000000040150511|- rs1_val == 0x0000000000008735 #nosat<br>                                                                    |[0x80001668]:shfli<br> [0x8000166c]:sw<br> |
| 180|[0x800035a8]<br>0x0000000014451440|- rs1_val == 0x0000000000006B68 #nosat<br>                                                                    |[0x80001678]:shfli<br> [0x8000167c]:sw<br> |
| 181|[0x800035b0]<br>0x0000000004550440|- rs1_val == 0x0000000000002F28 #nosat<br>                                                                    |[0x80001688]:shfli<br> [0x8000168c]:sw<br> |
| 182|[0x800035b8]<br>0x0000000001511000|- rs1_val == 0x0000000000001D40 #nosat<br>                                                                    |[0x80001698]:shfli<br> [0x8000169c]:sw<br> |
| 183|[0x800035c0]<br>0x0000000000550414|- rs1_val == 0x0000000000000F26 #nosat<br>                                                                    |[0x800016a8]:shfli<br> [0x800016ac]:sw<br> |
| 184|[0x800035c8]<br>0x0000000000104004|- rs1_val == 0x0000000000000482 #nosat<br>                                                                    |[0x800016b4]:shfli<br> [0x800016b8]:sw<br> |
| 185|[0x800035d0]<br>0x0000000000054110|- rs1_val == 0x0000000000000394 #nosat<br>                                                                    |[0x800016c0]:shfli<br> [0x800016c4]:sw<br> |
| 186|[0x800035d8]<br>0x0000000000011110|- rs1_val == 0x0000000000000154 #nosat<br>                                                                    |[0x800016cc]:shfli<br> [0x800016d0]:sw<br> |
| 187|[0x800035e0]<br>0x0000000000005544|- rs1_val == 0x00000000000000FA #nosat<br>                                                                    |[0x800016d8]:shfli<br> [0x800016dc]:sw<br> |
| 188|[0x800035e8]<br>0x0000000000001005|- rs1_val == 0x0000000000000043 #nosat<br>                                                                    |[0x800016e4]:shfli<br> [0x800016e8]:sw<br> |
| 189|[0x800035f0]<br>0x0000000000000541|- rs1_val == 0x0000000000000039 #nosat<br>                                                                    |[0x800016f0]:shfli<br> [0x800016f4]:sw<br> |
| 190|[0x800035f8]<br>0x0000000000000105|- rs1_val == 0x0000000000000013 #nosat<br>                                                                    |[0x800016fc]:shfli<br> [0x80001700]:sw<br> |
| 191|[0x80003600]<br>0x0000000000000054|- rs1_val == 0x000000000000000E #nosat<br>                                                                    |[0x80001708]:shfli<br> [0x8000170c]:sw<br> |
| 192|[0x80003608]<br>0x0000000000000014|- rs1_val == 0x0000000000000006 #nosat<br>                                                                    |[0x80001714]:shfli<br> [0x80001718]:sw<br> |
| 193|[0x80003610]<br>0x0000000000000004|- rs1_val == 0x0000000000000002 #nosat<br>                                                                    |[0x80001720]:shfli<br> [0x80001724]:sw<br> |
| 194|[0x80003618]<br>0x0000000000000001|- rs1_val == 0x0000000000000001 #nosat<br>                                                                    |[0x8000172c]:shfli<br> [0x80001730]:sw<br> |
| 195|[0x80003620]<br>0x77a6288149b2d8ae|- rs1_val == 0x5D68F2012DAF94C2 #nosat<br>                                                                    |[0x80001754]:shfli<br> [0x80001758]:sw<br> |
| 196|[0x80003628]<br>0x9466d3c592bd0035|- rs1_val == 0x85986ADB9E044707 #nosat<br>                                                                    |[0x8000177c]:shfli<br> [0x80001780]:sw<br> |
| 197|[0x80003630]<br>0xb0608ea2753c265c|- rs1_val == 0xC4BD48204652F62E #nosat<br>                                                                    |[0x800017a4]:shfli<br> [0x800017a8]:sw<br> |
| 198|[0x80003638]<br>0xade964815ebcb63f|- rs1_val == 0xEE4839A13ED7E667 #nosat<br>                                                                    |[0x800017cc]:shfli<br> [0x800017d0]:sw<br> |
| 199|[0x80003640]<br>0xbb09165b2d8d4003|- rs1_val == 0xF213516D6A013381 #nosat<br>                                                                    |[0x800017f4]:shfli<br> [0x800017f8]:sw<br> |
| 200|[0x80003648]<br>0xfad57b5638acbd81|- rs1_val == 0xF871CFDE6EE84271 #nosat<br>                                                                    |[0x80001814]:shfli<br> [0x80001818]:sw<br> |
| 201|[0x80003650]<br>0xaee6214bab09c6f4|- rs1_val == 0xFD432A19F29C11AE #nosat<br>                                                                    |[0x8000183c]:shfli<br> [0x80001840]:sw<br> |
| 202|[0x80003658]<br>0xeae8e855a0bcdf37|- rs1_val == 0xFEE0888FCEB506F7 #nosat<br>                                                                    |[0x8000185c]:shfli<br> [0x80001860]:sw<br> |
| 203|[0x80003660]<br>0xbbfe7c145988966d|- rs1_val == 0xFF605EE62A96D06B #nosat<br>                                                                    |[0x80001884]:shfli<br> [0x80001888]:sw<br> |
| 204|[0x80003668]<br>0xbfebc1c306c0dece|- rs1_val == 0xFF89799918BB28EA #nosat<br>                                                                    |[0x800018a4]:shfli<br> [0x800018a8]:sw<br> |
| 205|[0x80003670]<br>0xbeabb0e0a02880c0|- rs1_val == 0xFFCC6148C6880008 #nosat<br>                                                                    |[0x800018c4]:shfli<br> [0x800018c8]:sw<br> |
| 206|[0x80003678]<br>0xbbfeec8b02e5a985|- rs1_val == 0xFFEB5EA11CE80B13 #nosat<br>                                                                    |[0x800018e4]:shfli<br> [0x800018e8]:sw<br> |
| 207|[0x80003680]<br>0xafebff1483c2b9ea|- rs1_val == 0xFFF039F699EF1858 #nosat<br>                                                                    |[0x80001904]:shfli<br> [0x80001908]:sw<br> |
| 208|[0x80003688]<br>0xfeeebe8b76efe493|- rs1_val == 0xFFFBEA615FC9EBA5 #nosat<br>                                                                    |[0x80001924]:shfli<br> [0x80001928]:sw<br> |
| 209|[0x80003690]<br>0xeafbbea193420a78|- rs1_val == 0xFFFC8D619136580C #nosat<br>                                                                    |[0x80001944]:shfli<br> [0x80001948]:sw<br> |
| 210|[0x80003698]<br>0xbabebabc5d3c2742|- rs1_val == 0xFFFE46462651F638 #nosat<br>                                                                    |[0x80001964]:shfli<br> [0x80001968]:sw<br> |
| 211|[0x800036a0]<br>0xabfabfebe299b993|- rs1_val == 0xFFFF1C79DAE98555 #nosat<br>                                                                    |[0x80001984]:shfli<br> [0x80001988]:sw<br> |
| 212|[0x800036a8]<br>0xeafebeff9485d25d|- rs1_val == 0xFFFF8E6F889263CF #nosat<br>                                                                    |[0x800019a4]:shfli<br> [0x800019a8]:sw<br> |
| 213|[0x800036b0]<br>0xfbfefeaec8c43cdf|- rs1_val == 0xFFFFDEE2A86B8A6F #nosat<br>                                                                    |[0x800019c4]:shfli<br> [0x800019c8]:sw<br> |
| 214|[0x800036b8]<br>0xfeaeeeffb3072d6f|- rs1_val == 0xFFFFE2AFD167533B #nosat<br>                                                                    |[0x800019e4]:shfli<br> [0x800019e8]:sw<br> |
| 215|[0x800036c0]<br>0xffabeeaa3eea0c07|- rs1_val == 0xFFFFF1A07F216823 #nosat<br>                                                                    |[0x80001a04]:shfli<br> [0x80001a08]:sw<br> |
| 216|[0x800036c8]<br>0xffebaaeb54c26b5b|- rs1_val == 0xFFFFF9090973E89D #nosat<br>                                                                    |[0x80001a1c]:shfli<br> [0x80001a20]:sw<br> |
| 217|[0x800036d0]<br>0xfffaafbf79d2da02|- rs1_val == 0xFFFFFC3769B1DCC0 #nosat<br>                                                                    |[0x80001a34]:shfli<br> [0x80001a38]:sw<br> |
| 218|[0x800036d8]<br>0xfffeefea4ec22dcf|- rs1_val == 0xFFFFFEB8396BA83B #nosat<br>                                                                    |[0x80001a4c]:shfli<br> [0x80001a50]:sw<br> |
| 219|[0x800036e0]<br>0xffffbaff098155de|- rs1_val == 0xFFFFFF4F280B11FE #nosat<br>                                                                    |[0x80001a64]:shfli<br> [0x80001a68]:sw<br> |
| 220|[0x800036e8]<br>0xffffeabbf3911734|- rs1_val == 0xFFFFFF85D814D576 #nosat<br>                                                                    |[0x80001a7c]:shfli<br> [0x80001a80]:sw<br> |
| 221|[0x800036f0]<br>0xfffffafad3269960|- rs1_val == 0xFFFFFFCC95A4D258 #nosat<br>                                                                    |[0x80001a94]:shfli<br> [0x80001a98]:sw<br> |
| 222|[0x800036f8]<br>0xfffffebe1711994b|- rs1_val == 0xFFFFFFE610A37559 #nosat<br>                                                                    |[0x80001aac]:shfli<br> [0x80001ab0]:sw<br> |
| 223|[0x80003700]<br>0xffffffbe6debc3ea|- rs1_val == 0xFFFFFFF66F9FB998 #nosat<br>                                                                    |[0x80001ac4]:shfli<br> [0x80001ac8]:sw<br> |
| 224|[0x80003708]<br>0xffffffef81e0c58d|- rs1_val == 0xFFFFFFFB8C8A18B3 #nosat<br>                                                                    |[0x80001adc]:shfli<br> [0x80001ae0]:sw<br> |
| 225|[0x80003710]<br>0xfffffffa26113e89|- rs1_val == 0xFFFFFFFC507A2561 #nosat<br>                                                                    |[0x80001af4]:shfli<br> [0x80001af8]:sw<br> |
| 226|[0x80003718]<br>0xfffffffead22bf55|- rs1_val == 0xFFFFFFFEE5F0307F #nosat<br>                                                                    |[0x80001b0c]:shfli<br> [0x80001b10]:sw<br> |
| 227|[0x80003720]<br>0xffffffff67b7dadf|- rs1_val == 0xFFFFFFFF5DBBB7CF #nosat<br>                                                                    |[0x80001b24]:shfli<br> [0x80001b28]:sw<br> |
| 228|[0x80003728]<br>0xffffffff90b38180|- rs1_val == 0xFFFFFFFF8D884510 #nosat<br>                                                                    |[0x80001b34]:shfli<br> [0x80001b38]:sw<br> |
| 229|[0x80003730]<br>0xffffffffe214b923|- rs1_val == 0xFFFFFFFFD0E58651 #nosat<br>                                                                    |[0x80001b44]:shfli<br> [0x80001b48]:sw<br> |
| 230|[0x80003738]<br>0xffffffffa81c20a4|- rs1_val == 0xFFFFFFFFE24C0602 #nosat<br>                                                                    |[0x80001b54]:shfli<br> [0x80001b58]:sw<br> |
| 231|[0x80003740]<br>0xfffffffffa0600c2|- rs1_val == 0xFFFFFFFFF109C208 #nosat<br>                                                                    |[0x80001b64]:shfli<br> [0x80001b68]:sw<br> |
| 232|[0x80003748]<br>0xffffffffeece2625|- rs1_val == 0xFFFFFFFFFB54AA23 #nosat<br>                                                                    |[0x80001b74]:shfli<br> [0x80001b78]:sw<br> |
| 233|[0x80003750]<br>0xfffffffffff24109|- rs1_val == 0xFFFFFFFFFD02FC91 #nosat<br>                                                                    |[0x80001b84]:shfli<br> [0x80001b88]:sw<br> |
| 234|[0x80003758]<br>0xfffffffffbac4c82|- rs1_val == 0xFFFFFFFFFE29D2A0 #nosat<br>                                                                    |[0x80001b94]:shfli<br> [0x80001b98]:sw<br> |
| 235|[0x80003760]<br>0xffffffffbeff3bfe|- rs1_val == 0xFFFFFFFFFF7F6F5E #nosat<br>                                                                    |[0x80001ba4]:shfli<br> [0x80001ba8]:sw<br> |
| 236|[0x80003768]<br>0xffffffffaabad303|- rs1_val == 0xFFFFFFFFFF9104D1 #nosat<br>                                                                    |[0x80001bb4]:shfli<br> [0x80001bb8]:sw<br> |
| 237|[0x80003770]<br>0xfffffffffbefa0cd|- rs1_val == 0xFFFFFFFFFFCADB0B #nosat<br>                                                                    |[0x80001bc4]:shfli<br> [0x80001bc8]:sw<br> |
| 238|[0x80003778]<br>0xfffffffffaaeedb8|- rs1_val == 0xFFFFFFFFFFEEC2B4 #nosat<br>                                                                    |[0x80001bd4]:shfli<br> [0x80001bd8]:sw<br> |
| 239|[0x80003780]<br>0xffffffffebfebb75|- rs1_val == 0xFFFFFFFFFFF49E5F #nosat<br>                                                                    |[0x80001be4]:shfli<br> [0x80001be8]:sw<br> |
| 240|[0x80003788]<br>0xfffffffffeaefedc|- rs1_val == 0xFFFFFFFFFFFAE2EE #nosat<br>                                                                    |[0x80001bf4]:shfli<br> [0x80001bf8]:sw<br> |
| 241|[0x80003790]<br>0xffffffffbfffaaf4|- rs1_val == 0xFFFFFFFFFFFC7F0E #nosat<br>                                                                    |[0x80001c04]:shfli<br> [0x80001c08]:sw<br> |
| 242|[0x80003798]<br>0xffffffffafbaaba8|- rs1_val == 0xFFFFFFFFFFFE3410 #nosat<br>                                                                    |[0x80001c14]:shfli<br> [0x80001c18]:sw<br> |
| 243|[0x800037a0]<br>0xffffffffbefeaaee|- rs1_val == 0xFFFFFFFFFFFF6E0A #nosat<br>                                                                    |[0x80001c24]:shfli<br> [0x80001c28]:sw<br> |
| 244|[0x800037a8]<br>0xffffffffefafaeee|- rs1_val == 0xFFFFFFFFFFFFB32A #nosat<br>                                                                    |[0x80001c34]:shfli<br> [0x80001c38]:sw<br> |
| 245|[0x800037b0]<br>0xfffffffffaafeaba|- rs1_val == 0xFFFFFFFFFFFFC384 #nosat<br>                                                                    |[0x80001c44]:shfli<br> [0x80001c48]:sw<br> |
| 246|[0x800037b8]<br>0xfffffffffefaabfb|- rs1_val == 0xFFFFFFFFFFFFEC1D #nosat<br>                                                                    |[0x80001c54]:shfli<br> [0x80001c58]:sw<br> |
| 247|[0x800037c0]<br>0xffffffffffafffaa|- rs1_val == 0xFFFFFFFFFFFFF3F0 #nosat<br>                                                                    |[0x80001c64]:shfli<br> [0x80001c68]:sw<br> |
| 248|[0x800037c8]<br>0xffffffffffefabaf|- rs1_val == 0xFFFFFFFFFFFFFB13 #nosat<br>                                                                    |[0x80001c70]:shfli<br> [0x80001c74]:sw<br> |
| 249|[0x800037d0]<br>0xfffffffffffaafab|- rs1_val == 0xFFFFFFFFFFFFFC31 #nosat<br>                                                                    |[0x80001c7c]:shfli<br> [0x80001c80]:sw<br> |
| 250|[0x800037d8]<br>0xfffffffffffebaba|- rs1_val == 0xFFFFFFFFFFFFFE44 #nosat<br>                                                                    |[0x80001c88]:shfli<br> [0x80001c8c]:sw<br> |
| 251|[0x800037e0]<br>0xffffffffffffbbea|- rs1_val == 0xFFFFFFFFFFFFFF58 #nosat<br>                                                                    |[0x80001c94]:shfli<br> [0x80001c98]:sw<br> |
| 252|[0x800037e8]<br>0xffffffffffffefaa|- rs1_val == 0xFFFFFFFFFFFFFFB0 #nosat<br>                                                                    |[0x80001ca0]:shfli<br> [0x80001ca4]:sw<br> |
| 253|[0x800037f0]<br>0xfffffffffffffabe|- rs1_val == 0xFFFFFFFFFFFFFFC6 #nosat<br>                                                                    |[0x80001cac]:shfli<br> [0x80001cb0]:sw<br> |
| 254|[0x800037f8]<br>0xfffffffffffffeea|- rs1_val == 0xFFFFFFFFFFFFFFE8 #nosat<br>                                                                    |[0x80001cb8]:shfli<br> [0x80001cbc]:sw<br> |
| 255|[0x80003800]<br>0xffffffffffffffae|- rs1_val == 0xFFFFFFFFFFFFFFF2 #nosat<br>                                                                    |[0x80001cc4]:shfli<br> [0x80001cc8]:sw<br> |
| 256|[0x80003808]<br>0xffffffffffffffeb|- rs1_val == 0xFFFFFFFFFFFFFFF9 #nosat<br>                                                                    |[0x80001cd0]:shfli<br> [0x80001cd4]:sw<br> |
| 257|[0x80003810]<br>0xfffffffffffffffb|- rs1_val == 0xFFFFFFFFFFFFFFFD #nosat<br>                                                                    |[0x80001cdc]:shfli<br> [0x80001ce0]:sw<br> |
| 258|[0x80003818]<br>0xfffffffffffffffe|- rs1_val == 0xFFFFFFFFFFFFFFFE #nosat<br>                                                                    |[0x80001ce8]:shfli<br> [0x80001cec]:sw<br> |
| 259|[0x80003820]<br>0xa2a0220800000000|- rs1_val == 0xDC52000000000000 #nosat<br>                                                                    |[0x80001cfc]:shfli<br> [0x80001d00]:sw<br> |
