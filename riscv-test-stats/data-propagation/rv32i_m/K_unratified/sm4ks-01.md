
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001720')]      |
| SIG_REGION                | [('0x80003010', '0x80003470', '280 words')]      |
| COV_LABELS                | sm4ks      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ks-01.S/ref.S    |
| Total Number of coverpoints| 348     |
| Total Coverpoints Hit     | 343      |
| Total Signature Updates   | 279      |
| STAT1                     | 279      |
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

|s.no|        signature         |                                                          coverpoints                                                          |                   code                    |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
|   1|[0x80003010]<br>0xc01a6bd6|- opcode : sm4ks<br> - rs1 : x9<br> - rs2 : x9<br> - rs1 == rs2<br>                                                            |[0x80000108]:sm4ks<br> [0x8000010c]:sw<br> |
|   2|[0x80003014]<br>0x27d03e60|- rs1 : x4<br> - rs2 : x3<br> - rs1 != rs2<br> - rs1_val == 0x3fb0fe60 and rs2_val == 0x1826a804 and imm_val == 0x1 #nosat<br> |[0x80000120]:sm4ks<br> [0x80000124]:sw<br> |
|   3|[0x80003018]<br>0xe7e9eb28|- rs1 : x14<br> - rs2 : x16<br> - rs1_val == 0xb369e102 and rs2_val == 0x293f9f60 and imm_val == 0x3 #nosat<br>                |[0x80000138]:sm4ks<br> [0x8000013c]:sw<br> |
|   4|[0x8000301c]<br>0xdaa7a5dd|- rs1 : x31<br> - rs2 : x1<br> - rs1_val == 0x1aa1beeb and rs2_val == 0xa4b7f979 and imm_val == 0x0 #nosat<br>                 |[0x80000150]:sm4ks<br> [0x80000154]:sw<br> |
|   5|[0x80003020]<br>0x8e78f4e7|- rs1 : x24<br> - rs2 : x18<br> - rs1_val == 0x8678f5e3 and rs2_val == 0x358a9235 and imm_val == 0x3 #nosat<br>                |[0x80000168]:sm4ks<br> [0x8000016c]:sw<br> |
|   6|[0x80003024]<br>0xa10889b8|- rs1 : x10<br> - rs2 : x30<br> - rs1_val == 0x74a813d2 and rs2_val == 0xb0873a0f and imm_val == 0x3 #nosat<br>                |[0x80000180]:sm4ks<br> [0x80000184]:sw<br> |
|   7|[0x80003028]<br>0x8c22d8a5|- rs1 : x6<br> - rs2 : x28<br> - rs1_val == 0x9f053821 and rs2_val == 0x91766f62 and imm_val == 0x2 #nosat<br>                 |[0x80000198]:sm4ks<br> [0x8000019c]:sw<br> |
|   8|[0x8000302c]<br>0xd98bb997|- rs1 : x15<br> - rs2 : x27<br> - rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d and imm_val == 0x2 #nosat<br>                |[0x800001b0]:sm4ks<br> [0x800001b4]:sw<br> |
|   9|[0x80003030]<br>0x0d16792d|- rs1 : x27<br> - rs2 : x20<br> - rs1_val == 0xcd157633 and rs2_val == 0x4113ee60 and imm_val == 0x0 #nosat<br>                |[0x800001c8]:sm4ks<br> [0x800001cc]:sw<br> |
|  10|[0x80003034]<br>0x8f2ddc38|- rs1 : x29<br> - rs2 : x24<br> - rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a and imm_val == 0x2 #nosat<br>                |[0x800001e0]:sm4ks<br> [0x800001e4]:sw<br> |
|  11|[0x80003038]<br>0x00000000|- rs1 : x0<br> - rs2 : x19<br>                                                                                                 |[0x800001f4]:sm4ks<br> [0x800001f8]:sw<br> |
|  12|[0x8000303c]<br>0x3e86da2b|- rs1 : x3<br> - rs2 : x26<br> - rs1_val == 0x633dbabc and rs2_val == 0xb6c4fd42 and imm_val == 0x2 #nosat<br>                 |[0x8000020c]:sm4ks<br> [0x80000210]:sw<br> |
|  13|[0x80003040]<br>0x0afcbfde|- rs1 : x25<br> - rs2 : x31<br> - rs1_val == 0x299c3bcf and rs2_val == 0xaa6bb2bd and imm_val == 0x3 #nosat<br>                |[0x80000224]:sm4ks<br> [0x80000228]:sw<br> |
|  14|[0x80003044]<br>0x0ff1ce14|- rs1 : x11<br> - rs2 : x23<br> - rs1_val == 0xa371db42 and rs2_val == 0x2e3ee8c4 and imm_val == 0x3 #nosat<br>                |[0x8000023c]:sm4ks<br> [0x80000240]:sw<br> |
|  15|[0x80003048]<br>0x8b3982ea|- rs1 : x7<br> - rs2 : x6<br> - rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 and imm_val == 0x1 #nosat<br>                  |[0x80000254]:sm4ks<br> [0x80000258]:sw<br> |
|  16|[0x8000304c]<br>0xa8569c72|- rs1 : x17<br> - rs2 : x8<br> - rs1_val == 0xa0569d76 and rs2_val == 0x35f9377f and imm_val == 0x3 #nosat<br>                 |[0x8000026c]:sm4ks<br> [0x80000270]:sw<br> |
|  17|[0x80003050]<br>0x0a50245d|- rs1 : x22<br> - rs2 : x17<br> - rs1_val == 0x240d84d6 and rs2_val == 0xe4921bf7 and imm_val == 0x2 #nosat<br>                |[0x80000284]:sm4ks<br> [0x80000288]:sw<br> |
|  18|[0x80003054]<br>0xa5b30bb6|- rs1 : x28<br> - rs2 : x14<br> - rs1_val == 0x3acdf616 and rs2_val == 0xfcc1b543 and imm_val == 0x1 #nosat<br>                |[0x8000029c]:sm4ks<br> [0x800002a0]:sw<br> |
|  19|[0x80003058]<br>0x5fef3e0d|- rs1 : x30<br> - rs2 : x4<br> - rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c and imm_val == 0x2 #nosat<br>                 |[0x800002b4]:sm4ks<br> [0x800002b8]:sw<br> |
|  20|[0x8000305c]<br>0x7b7bc21b|- rs1 : x20<br> - rs2 : x0<br>                                                                                                 |[0x800002c8]:sm4ks<br> [0x800002cc]:sw<br> |
|  21|[0x80003060]<br>0xf8ea0ffd|- rs1 : x12<br> - rs2 : x5<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 and imm_val == 0x3 #nosat<br>                 |[0x800002e0]:sm4ks<br> [0x800002e4]:sw<br> |
|  22|[0x80003064]<br>0x48000924|- rs1 : x16<br> - rs2 : x12<br> - rs1_val == 0 and rs2_val == 0xfffefdfc and imm_val == 3 #nosat<br>                           |[0x800002fc]:sm4ks<br> [0x80000300]:sw<br> |
|  23|[0x80003068]<br>0x1c392087|- rs1 : x5<br> - rs2 : x15<br> - rs1_val == 0 and rs2_val == 0xfffefdfc and imm_val == 2 #nosat<br>                            |[0x80000310]:sm4ks<br> [0x80000314]:sw<br> |
|  24|[0x8000306c]<br>0x9965cb60|- rs1 : x19<br> - rs2 : x29<br> - rs1_val == 0 and rs2_val == 0xfffefdfc and imm_val == 1 #nosat<br>                           |[0x80000324]:sm4ks<br> [0x80000328]:sw<br> |
|  25|[0x80003070]<br>0xe09a6bd7|- rs1 : x26<br> - rs2 : x2<br> - rs1_val == 0 and rs2_val == 0xfffefdfc and imm_val == 0 #nosat<br>                            |[0x80000338]:sm4ks<br> [0x8000033c]:sw<br> |
|  26|[0x80003074]<br>0x3ec0071f|- rs1 : x18<br> - rs2 : x22<br> - rs1_val == 0 and rs2_val == 0xfbfaf9f8 and imm_val == 3 #nosat<br>                           |[0x8000034c]:sm4ks<br> [0x80000350]:sw<br> |
|  27|[0x80003078]<br>0x2f5fe08b|- rs1 : x1<br> - rs2 : x25<br> - rs1_val == 0 and rs2_val == 0xfbfaf9f8 and imm_val == 2 #nosat<br>                            |[0x80000360]:sm4ks<br> [0x80000364]:sw<br> |
|  28|[0x8000307c]<br>0x1d77eec0|- rs1 : x2<br> - rs2 : x10<br> - rs1_val == 0 and rs2_val == 0xfbfaf9f8 and imm_val == 1 #nosat<br>                            |[0x80000374]:sm4ks<br> [0x80000378]:sw<br> |
|  29|[0x80003080]<br>0x208f3c79|- rs1 : x8<br> - rs2 : x7<br> - rs1_val == 0 and rs2_val == 0xfbfaf9f8 and imm_val == 0 #nosat<br>                             |[0x80000388]:sm4ks<br> [0x8000038c]:sw<br> |
|  30|[0x80003084]<br>0x20000410|- rs1 : x21<br> - rs2 : x13<br> - rs1_val == 0 and rs2_val == 0xf7f6f5f4 and imm_val == 3 #nosat<br>                           |[0x8000039c]:sm4ks<br> [0x800003a0]:sw<br> |
|  31|[0x80003088]<br>0x264da089|- rs1 : x13<br> - rs2 : x21<br> - rs1_val == 0 and rs2_val == 0xf7f6f5f4 and imm_val == 2 #nosat<br>                           |[0x800003b0]:sm4ks<br> [0x800003b4]:sw<br> |
|  32|[0x8000308c]<br>0x1b6edc80|- rs1 : x23<br> - rs2 : x11<br> - rs1_val == 0 and rs2_val == 0xf7f6f5f4 and imm_val == 1 #nosat<br>                           |[0x800003c4]:sm4ks<br> [0x800003c8]:sw<br> |
|  33|[0x80003090]<br>0x40071d3a|- rs1_val == 0 and rs2_val == 0xf7f6f5f4 and imm_val == 0 #nosat<br>                                                           |[0x800003d8]:sm4ks<br> [0x800003dc]:sw<br> |
|  34|[0x80003094]<br>0xec801d76|- rs1_val == 0 and rs2_val == 0xf3f2f1f0 and imm_val == 3 #nosat<br>                                                           |[0x800003ec]:sm4ks<br> [0x800003f0]:sw<br> |
|  35|[0x80003098]<br>0x3e7da08f|- rs1_val == 0 and rs2_val == 0xf3f2f1f0 and imm_val == 2 #nosat<br>                                                           |[0x80000400]:sm4ks<br> [0x80000404]:sw<br> |
|  36|[0x8000309c]<br>0x1e78f000|- rs1_val == 0 and rs2_val == 0xf3f2f1f0 and imm_val == 1 #nosat<br>                                                           |[0x80000414]:sm4ks<br> [0x80000418]:sw<br> |
|  37|[0x800030a0]<br>0x00030c18|- rs1_val == 0 and rs2_val == 0xf3f2f1f0 and imm_val == 0 #nosat<br>                                                           |[0x80000428]:sm4ks<br> [0x8000042c]:sw<br> |
|  38|[0x800030a4]<br>0x84801042|- rs1_val == 0 and rs2_val == 0xefeeedec and imm_val == 3 #nosat<br>                                                           |[0x8000043c]:sm4ks<br> [0x80000440]:sw<br> |
|  39|[0x800030a8]<br>0x63c6c018|- rs1_val == 0 and rs2_val == 0xefeeedec and imm_val == 2 #nosat<br>                                                           |[0x80000450]:sm4ks<br> [0x80000454]:sw<br> |
|  40|[0x800030ac]<br>0x0d376ec0|- rs1_val == 0 and rs2_val == 0xefeeedec and imm_val == 1 #nosat<br>                                                           |[0x80000464]:sm4ks<br> [0x80000468]:sw<br> |
|  41|[0x800030b0]<br>0xa09862c5|- rs1_val == 0 and rs2_val == 0xefeeedec and imm_val == 0 #nosat<br>                                                           |[0x80000478]:sm4ks<br> [0x8000047c]:sw<br> |
|  42|[0x800030b4]<br>0x09208104|- rs1_val == 0 and rs2_val == 0xebeae9e8 and imm_val == 3 #nosat<br>                                                           |[0x8000048c]:sm4ks<br> [0x80000490]:sw<br> |
|  43|[0x800030b8]<br>0x78f1209e|- rs1_val == 0 and rs2_val == 0xebeae9e8 and imm_val == 2 #nosat<br>                                                           |[0x800004a0]:sm4ks<br> [0x800004a4]:sw<br> |
|  44|[0x800030bc]<br>0x975cb920|- rs1_val == 0 and rs2_val == 0xebeae9e8 and imm_val == 1 #nosat<br>                                                           |[0x800004b4]:sm4ks<br> [0x800004b8]:sw<br> |
|  45|[0x800030c0]<br>0xa08c3265|- rs1_val == 0 and rs2_val == 0xebeae9e8 and imm_val == 0 #nosat<br>                                                           |[0x800004c8]:sm4ks<br> [0x800004cc]:sw<br> |
|  46|[0x800030c4]<br>0x7ec00f3f|- rs1_val == 0 and rs2_val == 0xe7e6e5e4 and imm_val == 3 #nosat<br>                                                           |[0x800004dc]:sm4ks<br> [0x800004e0]:sw<br> |
|  47|[0x800030c8]<br>0x3b77e08e|- rs1_val == 0 and rs2_val == 0xe7e6e5e4 and imm_val == 2 #nosat<br>                                                           |[0x800004f0]:sm4ks<br> [0x800004f4]:sw<br> |
|  48|[0x800030cc]<br>0x124b96c0|- rs1_val == 0 and rs2_val == 0xe7e6e5e4 and imm_val == 1 #nosat<br>                                                           |[0x80000504]:sm4ks<br> [0x80000508]:sw<br> |
|  49|[0x800030d0]<br>0x8001060c|- rs1_val == 0 and rs2_val == 0xe7e6e5e4 and imm_val == 0 #nosat<br>                                                           |[0x80000518]:sm4ks<br> [0x8000051c]:sw<br> |
|  50|[0x800030d4]<br>0x4a400925|- rs1_val == 0 and rs2_val == 0xe3e2e1e0 and imm_val == 3 #nosat<br>                                                           |[0x8000052c]:sm4ks<br> [0x80000530]:sw<br> |
|  51|[0x800030d8]<br>0x4b97e092|- rs1_val == 0 and rs2_val == 0xe3e2e1e0 and imm_val == 2 #nosat<br>                                                           |[0x80000540]:sm4ks<br> [0x80000544]:sw<br> |
|  52|[0x800030dc]<br>0x8d346920|- rs1_val == 0 and rs2_val == 0xe3e2e1e0 and imm_val == 1 #nosat<br>                                                           |[0x80000554]:sm4ks<br> [0x80000558]:sw<br> |
|  53|[0x800030e0]<br>0x20914489|- rs1_val == 0 and rs2_val == 0xe3e2e1e0 and imm_val == 0 #nosat<br>                                                           |[0x80000568]:sm4ks<br> [0x8000056c]:sw<br> |
|  54|[0x800030e4]<br>0xb0001658|- rs1_val == 0 and rs2_val == 0xdfdedddc and imm_val == 3 #nosat<br>                                                           |[0x8000057c]:sm4ks<br> [0x80000580]:sw<br> |
|  55|[0x800030e8]<br>0x5ab48016|- rs1_val == 0 and rs2_val == 0xdfdedddc and imm_val == 2 #nosat<br>                                                           |[0x80000590]:sm4ks<br> [0x80000594]:sw<br> |
|  56|[0x800030ec]<br>0x9c72e5a0|- rs1_val == 0 and rs2_val == 0xdfdedddc and imm_val == 1 #nosat<br>                                                           |[0x800005a4]:sm4ks<br> [0x800005a8]:sw<br> |
|  57|[0x800030f0]<br>0x00175cb8|- rs1_val == 0 and rs2_val == 0xdfdedddc and imm_val == 0 #nosat<br>                                                           |[0x800005b8]:sm4ks<br> [0x800005bc]:sw<br> |
|  58|[0x800030f4]<br>0x12400209|- rs1_val == 0 and rs2_val == 0xdbdad9d8 and imm_val == 3 #nosat<br>                                                           |[0x800005cc]:sm4ks<br> [0x800005d0]:sw<br> |
|  59|[0x800030f8]<br>0x68d0001a|- rs1_val == 0 and rs2_val == 0xdbdad9d8 and imm_val == 2 #nosat<br>                                                           |[0x800005e0]:sm4ks<br> [0x800005e4]:sw<br> |
|  60|[0x800030fc]<br>0x0e3a7480|- rs1_val == 0 and rs2_val == 0xdbdad9d8 and imm_val == 1 #nosat<br>                                                           |[0x800005f4]:sm4ks<br> [0x800005f8]:sw<br> |
|  61|[0x80003100]<br>0xa085162d|- rs1_val == 0 and rs2_val == 0xdbdad9d8 and imm_val == 0 #nosat<br>                                                           |[0x80000608]:sm4ks<br> [0x8000060c]:sw<br> |
|  62|[0x80003104]<br>0xbda0975e|- rs1_val == 0 and rs2_val == 0xd7d6d5d4 and imm_val == 3 #nosat<br>                                                           |[0x8000061c]:sm4ks<br> [0x80000620]:sw<br> |
|  63|[0x80003108]<br>0x3d7b608f|- rs1_val == 0 and rs2_val == 0xd7d6d5d4 and imm_val == 2 #nosat<br>                                                           |[0x80000630]:sm4ks<br> [0x80000634]:sw<br> |
|  64|[0x8000310c]<br>0x9966cda0|- rs1_val == 0 and rs2_val == 0xd7d6d5d4 and imm_val == 1 #nosat<br>                                                           |[0x80000644]:sm4ks<br> [0x80000648]:sw<br> |
|  65|[0x80003110]<br>0xa09452a5|- rs1_val == 0 and rs2_val == 0xd7d6d5d4 and imm_val == 0 #nosat<br>                                                           |[0x80000658]:sm4ks<br> [0x8000065c]:sw<br> |
|  66|[0x80003114]<br>0x88001144|- rs1_val == 0 and rs2_val == 0xd3d2d1d0 and imm_val == 3 #nosat<br>                                                           |[0x8000066c]:sm4ks<br> [0x80000670]:sw<br> |
|  67|[0x80003118]<br>0x18312086|- rs1_val == 0 and rs2_val == 0xd3d2d1d0 and imm_val == 2 #nosat<br>                                                           |[0x80000680]:sm4ks<br> [0x80000684]:sw<br> |
|  68|[0x8000311c]<br>0x9860c120|- rs1_val == 0 and rs2_val == 0xd3d2d1d0 and imm_val == 1 #nosat<br>                                                           |[0x80000694]:sm4ks<br> [0x80000698]:sw<br> |
|  69|[0x80003120]<br>0x4001050a|- rs1_val == 0 and rs2_val == 0xd3d2d1d0 and imm_val == 0 #nosat<br>                                                           |[0x800006a8]:sm4ks<br> [0x800006ac]:sw<br> |
|  70|[0x80003124]<br>0xd8001b6c|- rs1_val == 0 and rs2_val == 0xcfcecdcc and imm_val == 3 #nosat<br>                                                           |[0x800006bc]:sm4ks<br> [0x800006c0]:sw<br> |
|  71|[0x80003128]<br>0x2d5a400b|- rs1_val == 0 and rs2_val == 0xcfcecdcc and imm_val == 2 #nosat<br>                                                           |[0x800006d0]:sm4ks<br> [0x800006d4]:sw<br> |
|  72|[0x8000312c]<br>0x02081000|- rs1_val == 0 and rs2_val == 0xcfcecdcc and imm_val == 1 #nosat<br>                                                           |[0x800006e4]:sm4ks<br> [0x800006e8]:sw<br> |
|  73|[0x80003130]<br>0xe0830f1f|- rs1_val == 0 and rs2_val == 0xcfcecdcc and imm_val == 0 #nosat<br>                                                           |[0x800006f8]:sm4ks<br> [0x800006fc]:sw<br> |
|  74|[0x80003134]<br>0x41208820|- rs1_val == 0 and rs2_val == 0xcbcac9c8 and imm_val == 3 #nosat<br>                                                           |[0x8000070c]:sm4ks<br> [0x80000710]:sw<br> |
|  75|[0x80003138]<br>0x2e5c800b|- rs1_val == 0 and rs2_val == 0xcbcac9c8 and imm_val == 2 #nosat<br>                                                           |[0x80000720]:sm4ks<br> [0x80000724]:sw<br> |
|  76|[0x8000313c]<br>0x9b6cd920|- rs1_val == 0 and rs2_val == 0xcbcac9c8 and imm_val == 1 #nosat<br>                                                           |[0x80000734]:sm4ks<br> [0x80000738]:sw<br> |
|  77|[0x80003140]<br>0x20820811|- rs1_val == 0 and rs2_val == 0xcbcac9c8 and imm_val == 0 #nosat<br>                                                           |[0x80000748]:sm4ks<br> [0x8000074c]:sw<br> |
|  78|[0x80003144]<br>0x7fe08f3f|- rs1_val == 0 and rs2_val == 0xc7c6c5c4 and imm_val == 3 #nosat<br>                                                           |[0x8000075c]:sm4ks<br> [0x80000760]:sw<br> |
|  79|[0x80003148]<br>0x5ebc8017|- rs1_val == 0 and rs2_val == 0xc7c6c5c4 and imm_val == 2 #nosat<br>                                                           |[0x80000770]:sm4ks<br> [0x80000774]:sw<br> |
|  80|[0x8000314c]<br>0x9b6edda0|- rs1_val == 0 and rs2_val == 0xc7c6c5c4 and imm_val == 1 #nosat<br>                                                           |[0x80000784]:sm4ks<br> [0x80000788]:sw<br> |
|  81|[0x80003150]<br>0x60975dbb|- rs1_val == 0 and rs2_val == 0xc7c6c5c4 and imm_val == 0 #nosat<br>                                                           |[0x80000798]:sm4ks<br> [0x8000079c]:sw<br> |
|  82|[0x80003154]<br>0x92401249|- rs1_val == 0 and rs2_val == 0xc3c2c1c0 and imm_val == 3 #nosat<br>                                                           |[0x800007ac]:sm4ks<br> [0x800007b0]:sw<br> |
|  83|[0x80003158]<br>0x57afe095|- rs1_val == 0 and rs2_val == 0xc3c2c1c0 and imm_val == 2 #nosat<br>                                                           |[0x800007c0]:sm4ks<br> [0x800007c4]:sw<br> |
|  84|[0x8000315c]<br>0x830d1b60|- rs1_val == 0 and rs2_val == 0xc3c2c1c0 and imm_val == 1 #nosat<br>                                                           |[0x800007d4]:sm4ks<br> [0x800007d8]:sw<br> |
|  85|[0x80003160]<br>0xa091468d|- rs1_val == 0 and rs2_val == 0xc3c2c1c0 and imm_val == 0 #nosat<br>                                                           |[0x800007e8]:sm4ks<br> [0x800007ec]:sw<br> |
|  86|[0x80003164]<br>0x51208a28|- rs1_val == 0 and rs2_val == 0xbfbebdbc and imm_val == 3 #nosat<br>                                                           |[0x800007fc]:sm4ks<br> [0x80000800]:sw<br> |
|  87|[0x80003168]<br>0x2d5b608b|- rs1_val == 0 and rs2_val == 0xbfbebdbc and imm_val == 2 #nosat<br>                                                           |[0x80000810]:sm4ks<br> [0x80000814]:sw<br> |
|  88|[0x8000316c]<br>0x0d366c80|- rs1_val == 0 and rs2_val == 0xbfbebdbc and imm_val == 1 #nosat<br>                                                           |[0x80000824]:sm4ks<br> [0x80000828]:sw<br> |
|  89|[0x80003170]<br>0xa08d366d|- rs1_val == 0 and rs2_val == 0xbfbebdbc and imm_val == 0 #nosat<br>                                                           |[0x80000838]:sm4ks<br> [0x8000083c]:sw<br> |
|  90|[0x80003174]<br>0x72400e39|- rs1_val == 0 and rs2_val == 0xbbbab9b8 and imm_val == 3 #nosat<br>                                                           |[0x8000084c]:sm4ks<br> [0x80000850]:sw<br> |
|  91|[0x80003178]<br>0x356a400d|- rs1_val == 0 and rs2_val == 0xbbbab9b8 and imm_val == 2 #nosat<br>                                                           |[0x80000860]:sm4ks<br> [0x80000864]:sw<br> |
|  92|[0x8000317c]<br>0x9f7fffe0|- rs1_val == 0 and rs2_val == 0xbbbab9b8 and imm_val == 1 #nosat<br>                                                           |[0x80000874]:sm4ks<br> [0x80000878]:sw<br> |
|  93|[0x80003180]<br>0x60800103|- rs1_val == 0 and rs2_val == 0xbbbab9b8 and imm_val == 0 #nosat<br>                                                           |[0x80000888]:sm4ks<br> [0x8000088c]:sw<br> |
|  94|[0x80003184]<br>0x2fe08517|- rs1_val == 0 and rs2_val == 0xb7b6b5b4 and imm_val == 3 #nosat<br>                                                           |[0x8000089c]:sm4ks<br> [0x800008a0]:sw<br> |
|  95|[0x80003188]<br>0x478ec011|- rs1_val == 0 and rs2_val == 0xb7b6b5b4 and imm_val == 2 #nosat<br>                                                           |[0x800008b0]:sm4ks<br> [0x800008b4]:sw<br> |
|  96|[0x8000318c]<br>0x9f7efda0|- rs1_val == 0 and rs2_val == 0xb7b6b5b4 and imm_val == 1 #nosat<br>                                                           |[0x800008c4]:sm4ks<br> [0x800008c8]:sw<br> |
|  97|[0x80003190]<br>0xc01b6fde|- rs1_val == 0 and rs2_val == 0xb7b6b5b4 and imm_val == 0 #nosat<br>                                                           |[0x800008d8]:sm4ks<br> [0x800008dc]:sw<br> |
|  98|[0x80003194]<br>0x45a08822|- rs1_val == 0 and rs2_val == 0xb3b2b1b0 and imm_val == 3 #nosat<br>                                                           |[0x800008ec]:sm4ks<br> [0x800008f0]:sw<br> |
|  99|[0x80003198]<br>0x1b37e086|- rs1_val == 0 and rs2_val == 0xb3b2b1b0 and imm_val == 2 #nosat<br>                                                           |[0x80000900]:sm4ks<br> [0x80000904]:sw<br> |
| 100|[0x8000319c]<br>0x9b6ddb60|- rs1_val == 0 and rs2_val == 0xb3b2b1b0 and imm_val == 1 #nosat<br>                                                           |[0x80000914]:sm4ks<br> [0x80000918]:sw<br> |
| 101|[0x800031a0]<br>0xa09a6ad5|- rs1_val == 0 and rs2_val == 0xb3b2b1b0 and imm_val == 0 #nosat<br>                                                           |[0x80000928]:sm4ks<br> [0x8000092c]:sw<br> |
| 102|[0x800031a4]<br>0x6fe08d37|- rs1_val == 0 and rs2_val == 0xafaeadac and imm_val == 3 #nosat<br>                                                           |[0x8000093c]:sm4ks<br> [0x80000940]:sw<br> |
| 103|[0x800031a8]<br>0x274ec009|- rs1_val == 0 and rs2_val == 0xafaeadac and imm_val == 2 #nosat<br>                                                           |[0x80000950]:sm4ks<br> [0x80000954]:sw<br> |
| 104|[0x800031ac]<br>0x8a295360|- rs1_val == 0 and rs2_val == 0xafaeadac and imm_val == 1 #nosat<br>                                                           |[0x80000964]:sm4ks<br> [0x80000968]:sw<br> |
| 105|[0x800031b0]<br>0xa081060d|- rs1_val == 0 and rs2_val == 0xafaeadac and imm_val == 0 #nosat<br>                                                           |[0x80000978]:sm4ks<br> [0x8000097c]:sw<br> |
| 106|[0x800031b4]<br>0xab609555|- rs1_val == 0 and rs2_val == 0xabaaa9a8 and imm_val == 3 #nosat<br>                                                           |[0x8000098c]:sm4ks<br> [0x80000990]:sw<br> |
| 107|[0x800031b8]<br>0x11236084|- rs1_val == 0 and rs2_val == 0xabaaa9a8 and imm_val == 2 #nosat<br>                                                           |[0x800009a0]:sm4ks<br> [0x800009a4]:sw<br> |
| 108|[0x800031bc]<br>0x85142920|- rs1_val == 0 and rs2_val == 0xabaaa9a8 and imm_val == 1 #nosat<br>                                                           |[0x800009b4]:sm4ks<br> [0x800009b8]:sw<br> |
| 109|[0x800031c0]<br>0x001860c0|- rs1_val == 0 and rs2_val == 0xabaaa9a8 and imm_val == 0 #nosat<br>                                                           |[0x800009c8]:sm4ks<br> [0x800009cc]:sw<br> |
| 110|[0x800031c4]<br>0x60000c30|- rs1_val == 0 and rs2_val == 0xa7a6a5a4 and imm_val == 3 #nosat<br>                                                           |[0x800009dc]:sm4ks<br> [0x800009e0]:sw<br> |
| 111|[0x800031c8]<br>0x65ca4019|- rs1_val == 0 and rs2_val == 0xa7a6a5a4 and imm_val == 2 #nosat<br>                                                           |[0x800009f0]:sm4ks<br> [0x800009f4]:sw<br> |
| 112|[0x800031cc]<br>0x0c3366c0|- rs1_val == 0 and rs2_val == 0xa7a6a5a4 and imm_val == 1 #nosat<br>                                                           |[0x80000a04]:sm4ks<br> [0x80000a08]:sw<br> |
| 113|[0x800031d0]<br>0x40104182|- rs1_val == 0 and rs2_val == 0xa7a6a5a4 and imm_val == 0 #nosat<br>                                                           |[0x80000a18]:sm4ks<br> [0x80000a1c]:sw<br> |
| 114|[0x800031d4]<br>0x2ec00517|- rs1_val == 0 and rs2_val == 0xa3a2a1a0 and imm_val == 3 #nosat<br>                                                           |[0x80000a2c]:sm4ks<br> [0x80000a30]:sw<br> |
| 115|[0x800031d8]<br>0x71e2401c|- rs1_val == 0 and rs2_val == 0xa3a2a1a0 and imm_val == 2 #nosat<br>                                                           |[0x80000a40]:sm4ks<br> [0x80000a44]:sw<br> |
| 116|[0x800031dc]<br>0x1e7bf6c0|- rs1_val == 0 and rs2_val == 0xa3a2a1a0 and imm_val == 1 #nosat<br>                                                           |[0x80000a54]:sm4ks<br> [0x80000a58]:sw<br> |
| 117|[0x800031e0]<br>0xa0830e1d|- rs1_val == 0 and rs2_val == 0xa3a2a1a0 and imm_val == 0 #nosat<br>                                                           |[0x80000a68]:sm4ks<br> [0x80000a6c]:sw<br> |
| 118|[0x800031e4]<br>0xe3609c71|- rs1_val == 0 and rs2_val == 0x9f9e9d9c and imm_val == 3 #nosat<br>                                                           |[0x80000a7c]:sm4ks<br> [0x80000a80]:sw<br> |
| 119|[0x800031e8]<br>0x58b12096|- rs1_val == 0 and rs2_val == 0x9f9e9d9c and imm_val == 2 #nosat<br>                                                           |[0x80000a90]:sm4ks<br> [0x80000a94]:sw<br> |
| 120|[0x800031ec]<br>0x11468c80|- rs1_val == 0 and rs2_val == 0x9f9e9d9c and imm_val == 1 #nosat<br>                                                           |[0x80000aa4]:sm4ks<br> [0x80000aa8]:sw<br> |
| 121|[0x800031f0]<br>0xa09e7af5|- rs1_val == 0 and rs2_val == 0x9f9e9d9c and imm_val == 0 #nosat<br>                                                           |[0x80000ab8]:sm4ks<br> [0x80000abc]:sw<br> |
| 122|[0x800031f4]<br>0x30000618|- rs1_val == 0 and rs2_val == 0x9b9a9998 and imm_val == 3 #nosat<br>                                                           |[0x80000acc]:sm4ks<br> [0x80000ad0]:sw<br> |
| 123|[0x800031f8]<br>0x19324006|- rs1_val == 0 and rs2_val == 0x9b9a9998 and imm_val == 2 #nosat<br>                                                           |[0x80000ae0]:sm4ks<br> [0x80000ae4]:sw<br> |
| 124|[0x800031fc]<br>0x92499360|- rs1_val == 0 and rs2_val == 0x9b9a9998 and imm_val == 1 #nosat<br>                                                           |[0x80000af4]:sm4ks<br> [0x80000af8]:sw<br> |
| 125|[0x80003200]<br>0xa09556ad|- rs1_val == 0 and rs2_val == 0x9b9a9998 and imm_val == 0 #nosat<br>                                                           |[0x80000b08]:sm4ks<br> [0x80000b0c]:sw<br> |
| 126|[0x80003204]<br>0x55a08a2a|- rs1_val == 0 and rs2_val == 0x97969594 and imm_val == 3 #nosat<br>                                                           |[0x80000b1c]:sm4ks<br> [0x80000b20]:sw<br> |
| 127|[0x80003208]<br>0x0d1a4003|- rs1_val == 0 and rs2_val == 0x97969594 and imm_val == 2 #nosat<br>                                                           |[0x80000b30]:sm4ks<br> [0x80000b34]:sw<br> |
| 128|[0x8000320c]<br>0x061a3480|- rs1_val == 0 and rs2_val == 0x97969594 and imm_val == 1 #nosat<br>                                                           |[0x80000b44]:sm4ks<br> [0x80000b48]:sw<br> |
| 129|[0x80003210]<br>0x60934d9b|- rs1_val == 0 and rs2_val == 0x97969594 and imm_val == 0 #nosat<br>                                                           |[0x80000b58]:sm4ks<br> [0x80000b5c]:sw<br> |
| 130|[0x80003214]<br>0xa4801452|- rs1_val == 0 and rs2_val == 0x93929190 and imm_val == 3 #nosat<br>                                                           |[0x80000b6c]:sm4ks<br> [0x80000b70]:sw<br> |
| 131|[0x80003218]<br>0x2e5da08b|- rs1_val == 0 and rs2_val == 0x93929190 and imm_val == 2 #nosat<br>                                                           |[0x80000b80]:sm4ks<br> [0x80000b84]:sw<br> |
| 132|[0x8000321c]<br>0x1557aec0|- rs1_val == 0 and rs2_val == 0x93929190 and imm_val == 1 #nosat<br>                                                           |[0x80000b94]:sm4ks<br> [0x80000b98]:sw<br> |
| 133|[0x80003220]<br>0x001c70e0|- rs1_val == 0 and rs2_val == 0x93929190 and imm_val == 0 #nosat<br>                                                           |[0x80000ba8]:sm4ks<br> [0x80000bac]:sw<br> |
| 134|[0x80003224]<br>0xa1209450|- rs1_val == 0 and rs2_val == 0x8f8e8d8c and imm_val == 3 #nosat<br>                                                           |[0x80000bbc]:sm4ks<br> [0x80000bc0]:sw<br> |
| 135|[0x80003228]<br>0x0a15a082|- rs1_val == 0 and rs2_val == 0x8f8e8d8c and imm_val == 2 #nosat<br>                                                           |[0x80000bd0]:sm4ks<br> [0x80000bd4]:sw<br> |
| 136|[0x8000322c]<br>0x8c306120|- rs1_val == 0 and rs2_val == 0x8f8e8d8c and imm_val == 1 #nosat<br>                                                           |[0x80000be4]:sm4ks<br> [0x80000be8]:sw<br> |
| 137|[0x80003230]<br>0x209f7cf9|- rs1_val == 0 and rs2_val == 0x8f8e8d8c and imm_val == 0 #nosat<br>                                                           |[0x80000bf8]:sm4ks<br> [0x80000bfc]:sw<br> |
| 138|[0x80003234]<br>0xcec01967|- rs1_val == 0 and rs2_val == 0x8b8a8988 and imm_val == 3 #nosat<br>                                                           |[0x80000c0c]:sm4ks<br> [0x80000c10]:sw<br> |
| 139|[0x80003238]<br>0x79f2401e|- rs1_val == 0 and rs2_val == 0x8b8a8988 and imm_val == 2 #nosat<br>                                                           |[0x80000c20]:sm4ks<br> [0x80000c24]:sw<br> |
| 140|[0x8000323c]<br>0x9e7bf7e0|- rs1_val == 0 and rs2_val == 0x8b8a8988 and imm_val == 1 #nosat<br>                                                           |[0x80000c34]:sm4ks<br> [0x80000c38]:sw<br> |
| 141|[0x80003240]<br>0x609451a3|- rs1_val == 0 and rs2_val == 0x8b8a8988 and imm_val == 0 #nosat<br>                                                           |[0x80000c48]:sm4ks<br> [0x80000c4c]:sw<br> |
| 142|[0x80003244]<br>0xb5a0965a|- rs1_val == 0 and rs2_val == 0x87868584 and imm_val == 3 #nosat<br>                                                           |[0x80000c5c]:sm4ks<br> [0x80000c60]:sw<br> |
| 143|[0x80003248]<br>0x1c380007|- rs1_val == 0 and rs2_val == 0x87868584 and imm_val == 2 #nosat<br>                                                           |[0x80000c70]:sm4ks<br> [0x80000c74]:sw<br> |
| 144|[0x8000324c]<br>0x9863c7e0|- rs1_val == 0 and rs2_val == 0x87868584 and imm_val == 1 #nosat<br>                                                           |[0x80000c84]:sm4ks<br> [0x80000c88]:sw<br> |
| 145|[0x80003250]<br>0x00082040|- rs1_val == 0 and rs2_val == 0x87868584 and imm_val == 0 #nosat<br>                                                           |[0x80000c98]:sm4ks<br> [0x80000c9c]:sw<br> |
| 146|[0x80003254]<br>0xd2401a69|- rs1_val == 0 and rs2_val == 0x83828180 and imm_val == 3 #nosat<br>                                                           |[0x80000cac]:sm4ks<br> [0x80000cb0]:sw<br> |
| 147|[0x80003258]<br>0x458a4011|- rs1_val == 0 and rs2_val == 0x83828180 and imm_val == 2 #nosat<br>                                                           |[0x80000cc0]:sm4ks<br> [0x80000cc4]:sw<br> |
| 148|[0x8000325c]<br>0x975fbfe0|- rs1_val == 0 and rs2_val == 0x83828180 and imm_val == 1 #nosat<br>                                                           |[0x80000cd4]:sm4ks<br> [0x80000cd8]:sw<br> |
| 149|[0x80003260]<br>0x401d75ea|- rs1_val == 0 and rs2_val == 0x83828180 and imm_val == 0 #nosat<br>                                                           |[0x80000ce8]:sm4ks<br> [0x80000cec]:sw<br> |
| 150|[0x80003264]<br>0x9ec0134f|- rs1_val == 0 and rs2_val == 0x7f7e7d7c and imm_val == 3 #nosat<br>                                                           |[0x80000cfc]:sm4ks<br> [0x80000d00]:sw<br> |
| 151|[0x80003268]<br>0x64c80019|- rs1_val == 0 and rs2_val == 0x7f7e7d7c and imm_val == 2 #nosat<br>                                                           |[0x80000d10]:sm4ks<br> [0x80000d14]:sw<br> |
| 152|[0x8000326c]<br>0x1862c480|- rs1_val == 0 and rs2_val == 0x7f7e7d7c and imm_val == 1 #nosat<br>                                                           |[0x80000d24]:sm4ks<br> [0x80000d28]:sw<br> |
| 153|[0x80003270]<br>0x001450a0|- rs1_val == 0 and rs2_val == 0x7f7e7d7c and imm_val == 0 #nosat<br>                                                           |[0x80000d38]:sm4ks<br> [0x80000d3c]:sw<br> |
| 154|[0x80003274]<br>0xe7e09c73|- rs1_val == 0 and rs2_val == 0x7b7a7978 and imm_val == 3 #nosat<br>                                                           |[0x80000d4c]:sm4ks<br> [0x80000d50]:sw<br> |
| 155|[0x80003278]<br>0x01024000|- rs1_val == 0 and rs2_val == 0x7b7a7978 and imm_val == 2 #nosat<br>                                                           |[0x80000d60]:sm4ks<br> [0x80000d64]:sw<br> |
| 156|[0x8000327c]<br>0x061b36c0|- rs1_val == 0 and rs2_val == 0x7b7a7978 and imm_val == 1 #nosat<br>                                                           |[0x80000d74]:sm4ks<br> [0x80000d78]:sw<br> |
| 157|[0x80003280]<br>0x8009264c|- rs1_val == 0 and rs2_val == 0x7b7a7978 and imm_val == 0 #nosat<br>                                                           |[0x80000d88]:sm4ks<br> [0x80000d8c]:sw<br> |
| 158|[0x80003284]<br>0x52400a29|- rs1_val == 0 and rs2_val == 0x77767574 and imm_val == 3 #nosat<br>                                                           |[0x80000d9c]:sm4ks<br> [0x80000da0]:sw<br> |
| 159|[0x80003288]<br>0x1327e084|- rs1_val == 0 and rs2_val == 0x77767574 and imm_val == 2 #nosat<br>                                                           |[0x80000db0]:sm4ks<br> [0x80000db4]:sw<br> |
| 160|[0x8000328c]<br>0x9a69d360|- rs1_val == 0 and rs2_val == 0x77767574 and imm_val == 1 #nosat<br>                                                           |[0x80000dc4]:sm4ks<br> [0x80000dc8]:sw<br> |
| 161|[0x80003290]<br>0xe0934f9f|- rs1_val == 0 and rs2_val == 0x77767574 and imm_val == 0 #nosat<br>                                                           |[0x80000dd8]:sm4ks<br> [0x80000ddc]:sw<br> |
| 162|[0x80003294]<br>0x57e08a2b|- rs1_val == 0 and rs2_val == 0x73727170 and imm_val == 3 #nosat<br>                                                           |[0x80000dec]:sm4ks<br> [0x80000df0]:sw<br> |
| 163|[0x80003298]<br>0x2346c008|- rs1_val == 0 and rs2_val == 0x73727170 and imm_val == 2 #nosat<br>                                                           |[0x80000e00]:sm4ks<br> [0x80000e04]:sw<br> |
| 164|[0x8000329c]<br>0x00000000|- rs1_val == 0 and rs2_val == 0x73727170 and imm_val == 1 #nosat<br>                                                           |[0x80000e14]:sm4ks<br> [0x80000e18]:sw<br> |
| 165|[0x800032a0]<br>0x801a6ad4|- rs1_val == 0 and rs2_val == 0x73727170 and imm_val == 0 #nosat<br>                                                           |[0x80000e28]:sm4ks<br> [0x80000e2c]:sw<br> |
| 166|[0x800032a4]<br>0x87e09043|- rs1_val == 0 and rs2_val == 0x6f6e6d6c and imm_val == 3 #nosat<br>                                                           |[0x80000e3c]:sm4ks<br> [0x80000e40]:sw<br> |
| 167|[0x800032a8]<br>0x3c78000f|- rs1_val == 0 and rs2_val == 0x6f6e6d6c and imm_val == 2 #nosat<br>                                                           |[0x80000e50]:sm4ks<br> [0x80000e54]:sw<br> |
| 168|[0x800032ac]<br>0x84102120|- rs1_val == 0 and rs2_val == 0x6f6e6d6c and imm_val == 1 #nosat<br>                                                           |[0x80000e64]:sm4ks<br> [0x80000e68]:sw<br> |
| 169|[0x800032b0]<br>0x20800001|- rs1_val == 0 and rs2_val == 0x6f6e6d6c and imm_val == 0 #nosat<br>                                                           |[0x80000e78]:sm4ks<br> [0x80000e7c]:sw<br> |
| 170|[0x800032b4]<br>0x3b60871d|- rs1_val == 0 and rs2_val == 0x6b6a6968 and imm_val == 3 #nosat<br>                                                           |[0x80000e8c]:sm4ks<br> [0x80000e90]:sw<br> |
| 171|[0x800032b8]<br>0x3e7c800f|- rs1_val == 0 and rs2_val == 0x6b6a6968 and imm_val == 2 #nosat<br>                                                           |[0x80000ea0]:sm4ks<br> [0x80000ea4]:sw<br> |
| 172|[0x800032bc]<br>0x04112240|- rs1_val == 0 and rs2_val == 0x6b6a6968 and imm_val == 1 #nosat<br>                                                           |[0x80000eb4]:sm4ks<br> [0x80000eb8]:sw<br> |
| 173|[0x800032c0]<br>0xa0841225|- rs1_val == 0 and rs2_val == 0x6b6a6968 and imm_val == 0 #nosat<br>                                                           |[0x80000ec8]:sm4ks<br> [0x80000ecc]:sw<br> |
| 174|[0x800032c4]<br>0xa2401451|- rs1_val == 0 and rs2_val == 0x67666564 and imm_val == 3 #nosat<br>                                                           |[0x80000edc]:sm4ks<br> [0x80000ee0]:sw<br> |
| 175|[0x800032c8]<br>0x68d1209a|- rs1_val == 0 and rs2_val == 0x67666564 and imm_val == 2 #nosat<br>                                                           |[0x80000ef0]:sm4ks<br> [0x80000ef4]:sw<br> |
| 176|[0x800032cc]<br>0x0b2c5800|- rs1_val == 0 and rs2_val == 0x67666564 and imm_val == 1 #nosat<br>                                                           |[0x80000f04]:sm4ks<br> [0x80000f08]:sw<br> |
| 177|[0x800032d0]<br>0x608c3163|- rs1_val == 0 and rs2_val == 0x67666564 and imm_val == 0 #nosat<br>                                                           |[0x80000f18]:sm4ks<br> [0x80000f1c]:sw<br> |
| 178|[0x800032d4]<br>0x5ec00b2f|- rs1_val == 0 and rs2_val == 0x63626160 and imm_val == 3 #nosat<br>                                                           |[0x80000f2c]:sm4ks<br> [0x80000f30]:sw<br> |
| 179|[0x800032d8]<br>0x070ec001|- rs1_val == 0 and rs2_val == 0x63626160 and imm_val == 2 #nosat<br>                                                           |[0x80000f40]:sm4ks<br> [0x80000f44]:sw<br> |
| 180|[0x800032dc]<br>0x04122480|- rs1_val == 0 and rs2_val == 0x63626160 and imm_val == 1 #nosat<br>                                                           |[0x80000f54]:sm4ks<br> [0x80000f58]:sw<br> |
| 181|[0x800032e0]<br>0xc0030f1e|- rs1_val == 0 and rs2_val == 0x63626160 and imm_val == 0 #nosat<br>                                                           |[0x80000f68]:sm4ks<br> [0x80000f6c]:sw<br> |
| 182|[0x800032e4]<br>0x35a0861a|- rs1_val == 0 and rs2_val == 0x5f5e5d5c and imm_val == 3 #nosat<br>                                                           |[0x80000f7c]:sm4ks<br> [0x80000f80]:sw<br> |
| 183|[0x800032e8]<br>0x4e9da093|- rs1_val == 0 and rs2_val == 0x5f5e5d5c and imm_val == 2 #nosat<br>                                                           |[0x80000f90]:sm4ks<br> [0x80000f94]:sw<br> |
| 184|[0x800032ec]<br>0x0a2b56c0|- rs1_val == 0 and rs2_val == 0x5f5e5d5c and imm_val == 1 #nosat<br>                                                           |[0x80000fa4]:sm4ks<br> [0x80000fa8]:sw<br> |
| 185|[0x800032f0]<br>0x000e3870|- rs1_val == 0 and rs2_val == 0x5f5e5d5c and imm_val == 0 #nosat<br>                                                           |[0x80000fb8]:sm4ks<br> [0x80000fbc]:sw<br> |
| 186|[0x800032f4]<br>0x4b608925|- rs1_val == 0 and rs2_val == 0x5b5a5958 and imm_val == 3 #nosat<br>                                                           |[0x80000fcc]:sm4ks<br> [0x80000fd0]:sw<br> |
| 187|[0x800032f8]<br>0x070fe081|- rs1_val == 0 and rs2_val == 0x5b5a5958 and imm_val == 2 #nosat<br>                                                           |[0x80000fe0]:sm4ks<br> [0x80000fe4]:sw<br> |
| 188|[0x800032fc]<br>0x9d75eb60|- rs1_val == 0 and rs2_val == 0x5b5a5958 and imm_val == 1 #nosat<br>                                                           |[0x80000ff4]:sm4ks<br> [0x80000ff8]:sw<br> |
| 189|[0x80003300]<br>0x001f7cf8|- rs1_val == 0 and rs2_val == 0x5b5a5958 and imm_val == 0 #nosat<br>                                                           |[0x80001008]:sm4ks<br> [0x8000100c]:sw<br> |
| 190|[0x80003304]<br>0x8b609145|- rs1_val == 0 and rs2_val == 0x57565554 and imm_val == 3 #nosat<br>                                                           |[0x8000101c]:sm4ks<br> [0x80001020]:sw<br> |
| 191|[0x80003308]<br>0x6dda401b|- rs1_val == 0 and rs2_val == 0x57565554 and imm_val == 2 #nosat<br>                                                           |[0x80001030]:sm4ks<br> [0x80001034]:sw<br> |
| 192|[0x8000330c]<br>0x0c326480|- rs1_val == 0 and rs2_val == 0x57565554 and imm_val == 1 #nosat<br>                                                           |[0x80001044]:sm4ks<br> [0x80001048]:sw<br> |
| 193|[0x80003310]<br>0x208e3871|- rs1_val == 0 and rs2_val == 0x57565554 and imm_val == 0 #nosat<br>                                                           |[0x80001058]:sm4ks<br> [0x8000105c]:sw<br> |
| 194|[0x80003314]<br>0xb2401659|- rs1_val == 0 and rs2_val == 0x53525150 and imm_val == 3 #nosat<br>                                                           |[0x8000106c]:sm4ks<br> [0x80001070]:sw<br> |
| 195|[0x80003318]<br>0x40812090|- rs1_val == 0 and rs2_val == 0x53525150 and imm_val == 2 #nosat<br>                                                           |[0x80001080]:sm4ks<br> [0x80001084]:sw<br> |
| 196|[0x8000331c]<br>0x8d356b60|- rs1_val == 0 and rs2_val == 0x53525150 and imm_val == 1 #nosat<br>                                                           |[0x80001094]:sm4ks<br> [0x80001098]:sw<br> |
| 197|[0x80003320]<br>0x000d3468|- rs1_val == 0 and rs2_val == 0x53525150 and imm_val == 0 #nosat<br>                                                           |[0x800010a8]:sm4ks<br> [0x800010ac]:sw<br> |
| 198|[0x80003324]<br>0xa8001554|- rs1_val == 0 and rs2_val == 0x4f4e4d4c and imm_val == 3 #nosat<br>                                                           |[0x800010bc]:sm4ks<br> [0x800010c0]:sw<br> |
| 199|[0x80003328]<br>0x274fe089|- rs1_val == 0 and rs2_val == 0x4f4e4d4c and imm_val == 2 #nosat<br>                                                           |[0x800010d0]:sm4ks<br> [0x800010d4]:sw<br> |
| 200|[0x8000332c]<br>0x904285a0|- rs1_val == 0 and rs2_val == 0x4f4e4d4c and imm_val == 1 #nosat<br>                                                           |[0x800010e4]:sm4ks<br> [0x800010e8]:sw<br> |
| 201|[0x80003330]<br>0xc01c73e6|- rs1_val == 0 and rs2_val == 0x4f4e4d4c and imm_val == 0 #nosat<br>                                                           |[0x800010f8]:sm4ks<br> [0x800010fc]:sw<br> |
| 202|[0x80003334]<br>0x1920830c|- rs1_val == 0 and rs2_val == 0x4b4a4948 and imm_val == 3 #nosat<br>                                                           |[0x8000110c]:sm4ks<br> [0x80001110]:sw<br> |
| 203|[0x80003338]<br>0x1e3c8007|- rs1_val == 0 and rs2_val == 0x4b4a4948 and imm_val == 2 #nosat<br>                                                           |[0x80001120]:sm4ks<br> [0x80001124]:sw<br> |
| 204|[0x8000333c]<br>0x8b2c5920|- rs1_val == 0 and rs2_val == 0x4b4a4948 and imm_val == 1 #nosat<br>                                                           |[0x80001134]:sm4ks<br> [0x80001138]:sw<br> |
| 205|[0x80003340]<br>0x60904183|- rs1_val == 0 and rs2_val == 0x4b4a4948 and imm_val == 0 #nosat<br>                                                           |[0x80001148]:sm4ks<br> [0x8000114c]:sw<br> |
| 206|[0x80003344]<br>0xba40175d|- rs1_val == 0 and rs2_val == 0x47464544 and imm_val == 3 #nosat<br>                                                           |[0x8000115c]:sm4ks<br> [0x80001160]:sw<br> |
| 207|[0x80003348]<br>0x0b17e082|- rs1_val == 0 and rs2_val == 0x47464544 and imm_val == 2 #nosat<br>                                                           |[0x80001170]:sm4ks<br> [0x80001174]:sw<br> |
| 208|[0x8000334c]<br>0x8e397360|- rs1_val == 0 and rs2_val == 0x47464544 and imm_val == 1 #nosat<br>                                                           |[0x80001184]:sm4ks<br> [0x80001188]:sw<br> |
| 209|[0x80003350]<br>0x609e79f3|- rs1_val == 0 and rs2_val == 0x47464544 and imm_val == 0 #nosat<br>                                                           |[0x80001198]:sm4ks<br> [0x8000119c]:sw<br> |
| 210|[0x80003354]<br>0xfc801f7e|- rs1_val == 0 and rs2_val == 0x43424140 and imm_val == 3 #nosat<br>                                                           |[0x800011ac]:sm4ks<br> [0x800011b0]:sw<br> |
| 211|[0x80003358]<br>0x53a7e094|- rs1_val == 0 and rs2_val == 0x43424140 and imm_val == 2 #nosat<br>                                                           |[0x800011c0]:sm4ks<br> [0x800011c4]:sw<br> |
| 212|[0x8000335c]<br>0x800307e0|- rs1_val == 0 and rs2_val == 0x43424140 and imm_val == 1 #nosat<br>                                                           |[0x800011d4]:sm4ks<br> [0x800011d8]:sw<br> |
| 213|[0x80003360]<br>0xe0882347|- rs1_val == 0 and rs2_val == 0x43424140 and imm_val == 0 #nosat<br>                                                           |[0x800011e8]:sm4ks<br> [0x800011ec]:sw<br> |
| 214|[0x80003364]<br>0xa6c01453|- rs1_val == 0 and rs2_val == 0x3f3e3d3c and imm_val == 3 #nosat<br>                                                           |[0x800011fc]:sm4ks<br> [0x80001200]:sw<br> |
| 215|[0x80003368]<br>0x1f3fe087|- rs1_val == 0 and rs2_val == 0x3f3e3d3c and imm_val == 2 #nosat<br>                                                           |[0x80001210]:sm4ks<br> [0x80001214]:sw<br> |
| 216|[0x8000336c]<br>0x91478fe0|- rs1_val == 0 and rs2_val == 0x3f3e3d3c and imm_val == 1 #nosat<br>                                                           |[0x80001224]:sm4ks<br> [0x80001228]:sw<br> |
| 217|[0x80003370]<br>0xa08e3a75|- rs1_val == 0 and rs2_val == 0x3f3e3d3c and imm_val == 0 #nosat<br>                                                           |[0x80001238]:sm4ks<br> [0x8000123c]:sw<br> |
| 218|[0x80003374]<br>0xfa401f7d|- rs1_val == 0 and rs2_val == 0x3b3a3938 and imm_val == 3 #nosat<br>                                                           |[0x8000124c]:sm4ks<br> [0x80001250]:sw<br> |
| 219|[0x80003378]<br>0x4a948012|- rs1_val == 0 and rs2_val == 0x3b3a3938 and imm_val == 2 #nosat<br>                                                           |[0x80001260]:sm4ks<br> [0x80001264]:sw<br> |
| 220|[0x8000337c]<br>0x9b6fdfe0|- rs1_val == 0 and rs2_val == 0x3b3a3938 and imm_val == 1 #nosat<br>                                                           |[0x80001274]:sm4ks<br> [0x80001278]:sw<br> |
| 221|[0x80003380]<br>0x00104080|- rs1_val == 0 and rs2_val == 0x3b3a3938 and imm_val == 0 #nosat<br>                                                           |[0x80001288]:sm4ks<br> [0x8000128c]:sw<br> |
| 222|[0x80003384]<br>0x95a0924a|- rs1_val == 0 and rs2_val == 0x37363534 and imm_val == 3 #nosat<br>                                                           |[0x8000129c]:sm4ks<br> [0x800012a0]:sw<br> |
| 223|[0x80003388]<br>0x74e8001d|- rs1_val == 0 and rs2_val == 0x37363534 and imm_val == 2 #nosat<br>                                                           |[0x800012b0]:sm4ks<br> [0x800012b4]:sw<br> |
| 224|[0x8000338c]<br>0x01040800|- rs1_val == 0 and rs2_val == 0x37363534 and imm_val == 1 #nosat<br>                                                           |[0x800012c4]:sm4ks<br> [0x800012c8]:sw<br> |
| 225|[0x80003390]<br>0x209964c9|- rs1_val == 0 and rs2_val == 0x37363534 and imm_val == 0 #nosat<br>                                                           |[0x800012d8]:sm4ks<br> [0x800012dc]:sw<br> |
| 226|[0x80003394]<br>0xa9209554|- rs1_val == 0 and rs2_val == 0x33323130 and imm_val == 3 #nosat<br>                                                           |[0x800012ec]:sm4ks<br> [0x800012f0]:sw<br> |
| 227|[0x80003398]<br>0x0e1c8003|- rs1_val == 0 and rs2_val == 0x33323130 and imm_val == 2 #nosat<br>                                                           |[0x80001300]:sm4ks<br> [0x80001304]:sw<br> |
| 228|[0x8000339c]<br>0x9659b360|- rs1_val == 0 and rs2_val == 0x33323130 and imm_val == 1 #nosat<br>                                                           |[0x80001314]:sm4ks<br> [0x80001318]:sw<br> |
| 229|[0x800033a0]<br>0x801c72e4|- rs1_val == 0 and rs2_val == 0x33323130 and imm_val == 0 #nosat<br>                                                           |[0x80001328]:sm4ks<br> [0x8000132c]:sw<br> |
| 230|[0x800033a4]<br>0x62400c31|- rs1_val == 0 and rs2_val == 0x2f2e2d2c and imm_val == 3 #nosat<br>                                                           |[0x8000133c]:sm4ks<br> [0x80001340]:sw<br> |
| 231|[0x800033a8]<br>0x56ac8015|- rs1_val == 0 and rs2_val == 0x2f2e2d2c and imm_val == 2 #nosat<br>                                                           |[0x80001350]:sm4ks<br> [0x80001354]:sw<br> |
| 232|[0x800033ac]<br>0x9967cfe0|- rs1_val == 0 and rs2_val == 0x2f2e2d2c and imm_val == 1 #nosat<br>                                                           |[0x80001364]:sm4ks<br> [0x80001368]:sw<br> |
| 233|[0x800033b0]<br>0xa09d76ed|- rs1_val == 0 and rs2_val == 0x2f2e2d2c and imm_val == 0 #nosat<br>                                                           |[0x80001378]:sm4ks<br> [0x8000137c]:sw<br> |
| 234|[0x800033b4]<br>0x43608821|- rs1_val == 0 and rs2_val == 0x2b2a2928 and imm_val == 3 #nosat<br>                                                           |[0x8000138c]:sm4ks<br> [0x80001390]:sw<br> |
| 235|[0x800033b8]<br>0x050b6081|- rs1_val == 0 and rs2_val == 0x2b2a2928 and imm_val == 2 #nosat<br>                                                           |[0x800013a0]:sm4ks<br> [0x800013a4]:sw<br> |
| 236|[0x800033bc]<br>0x0a2a5480|- rs1_val == 0 and rs2_val == 0x2b2a2928 and imm_val == 1 #nosat<br>                                                           |[0x800013b4]:sm4ks<br> [0x800013b8]:sw<br> |
| 237|[0x800033c0]<br>0x60861933|- rs1_val == 0 and rs2_val == 0x2b2a2928 and imm_val == 0 #nosat<br>                                                           |[0x800013c8]:sm4ks<br> [0x800013cc]:sw<br> |
| 238|[0x800033c4]<br>0x7a400f3d|- rs1_val == 0 and rs2_val == 0x27262524 and imm_val == 3 #nosat<br>                                                           |[0x800013dc]:sm4ks<br> [0x800013e0]:sw<br> |
| 239|[0x800033c8]<br>0x4c980013|- rs1_val == 0 and rs2_val == 0x27262524 and imm_val == 2 #nosat<br>                                                           |[0x800013f0]:sm4ks<br> [0x800013f4]:sw<br> |
| 240|[0x800033cc]<br>0x9d77efe0|- rs1_val == 0 and rs2_val == 0x27262524 and imm_val == 1 #nosat<br>                                                           |[0x80001404]:sm4ks<br> [0x80001408]:sw<br> |
| 241|[0x800033d0]<br>0x20924891|- rs1_val == 0 and rs2_val == 0x27262524 and imm_val == 0 #nosat<br>                                                           |[0x80001418]:sm4ks<br> [0x8000141c]:sw<br> |
| 242|[0x800033d4]<br>0xf4801e7a|- rs1_val == 0 and rs2_val == 0x23222120 and imm_val == 3 #nosat<br>                                                           |[0x8000142c]:sm4ks<br> [0x80001430]:sw<br> |
| 243|[0x800033d8]<br>0x2850000a|- rs1_val == 0 and rs2_val == 0x23222120 and imm_val == 2 #nosat<br>                                                           |[0x80001440]:sm4ks<br> [0x80001444]:sw<br> |
| 244|[0x800033dc]<br>0x08214240|- rs1_val == 0 and rs2_val == 0x23222120 and imm_val == 1 #nosat<br>                                                           |[0x80001454]:sm4ks<br> [0x80001458]:sw<br> |
| 245|[0x800033e0]<br>0x80134e9c|- rs1_val == 0 and rs2_val == 0x23222120 and imm_val == 0 #nosat<br>                                                           |[0x80001468]:sm4ks<br> [0x8000146c]:sw<br> |
| 246|[0x800033e4]<br>0x9920934c|- rs1_val == 0 and rs2_val == 0x1f1e1d1c and imm_val == 3 #nosat<br>                                                           |[0x8000147c]:sm4ks<br> [0x80001480]:sw<br> |
| 247|[0x800033e8]<br>0x0306c000|- rs1_val == 0 and rs2_val == 0x1f1e1d1c and imm_val == 2 #nosat<br>                                                           |[0x80001490]:sm4ks<br> [0x80001494]:sw<br> |
| 248|[0x800033ec]<br>0x104386c0|- rs1_val == 0 and rs2_val == 0x1f1e1d1c and imm_val == 1 #nosat<br>                                                           |[0x800014a4]:sm4ks<br> [0x800014a8]:sw<br> |
| 249|[0x800033f0]<br>0x20892449|- rs1_val == 0 and rs2_val == 0x1f1e1d1c and imm_val == 0 #nosat<br>                                                           |[0x800014b8]:sm4ks<br> [0x800014bc]:sw<br> |
| 250|[0x800033f4]<br>0x26c00413|- rs1_val == 0 and rs2_val == 0x1b1a1918 and imm_val == 3 #nosat<br>                                                           |[0x800014cc]:sm4ks<br> [0x800014d0]:sw<br> |
| 251|[0x800033f8]<br>0x09136082|- rs1_val == 0 and rs2_val == 0x1b1a1918 and imm_val == 2 #nosat<br>                                                           |[0x800014e0]:sm4ks<br> [0x800014e4]:sw<br> |
| 252|[0x800033fc]<br>0x08224480|- rs1_val == 0 and rs2_val == 0x1b1a1918 and imm_val == 1 #nosat<br>                                                           |[0x800014f4]:sm4ks<br> [0x800014f8]:sw<br> |
| 253|[0x80003400]<br>0x401555aa|- rs1_val == 0 and rs2_val == 0x1b1a1918 and imm_val == 0 #nosat<br>                                                           |[0x80001508]:sm4ks<br> [0x8000150c]:sw<br> |
| 254|[0x80003404]<br>0xc3609861|- rs1_val == 0 and rs2_val == 0x17161514 and imm_val == 3 #nosat<br>                                                           |[0x8000151c]:sm4ks<br> [0x80001520]:sw<br> |
| 255|[0x80003408]<br>0x02048000|- rs1_val == 0 and rs2_val == 0x17161514 and imm_val == 2 #nosat<br>                                                           |[0x80001530]:sm4ks<br> [0x80001534]:sw<br> |
| 256|[0x8000340c]<br>0x175fbec0|- rs1_val == 0 and rs2_val == 0x17161514 and imm_val == 1 #nosat<br>                                                           |[0x80001544]:sm4ks<br> [0x80001548]:sw<br> |
| 257|[0x80003410]<br>0x4005152a|- rs1_val == 0 and rs2_val == 0x17161514 and imm_val == 0 #nosat<br>                                                           |[0x80001558]:sm4ks<br> [0x8000155c]:sw<br> |
| 258|[0x80003414]<br>0x76c00e3b|- rs1_val == 0 and rs2_val == 0x13121110 and imm_val == 3 #nosat<br>                                                           |[0x8000156c]:sm4ks<br> [0x80001570]:sw<br> |
| 259|[0x80003418]<br>0x4d9a4013|- rs1_val == 0 and rs2_val == 0x13121110 and imm_val == 2 #nosat<br>                                                           |[0x80001580]:sm4ks<br> [0x80001584]:sw<br> |
| 260|[0x8000341c]<br>0x8c3367e0|- rs1_val == 0 and rs2_val == 0x13121110 and imm_val == 1 #nosat<br>                                                           |[0x80001594]:sm4ks<br> [0x80001598]:sw<br> |
| 261|[0x80003420]<br>0x6085152b|- rs1_val == 0 and rs2_val == 0x13121110 and imm_val == 0 #nosat<br>                                                           |[0x800015a8]:sm4ks<br> [0x800015ac]:sw<br> |
| 262|[0x80003424]<br>0x05a08002|- rs1_val == 0 and rs2_val == 0x0f0e0d0c and imm_val == 3 #nosat<br>                                                           |[0x800015bc]:sm4ks<br> [0x800015c0]:sw<br> |
| 263|[0x80003428]<br>0x162c8005|- rs1_val == 0 and rs2_val == 0x0f0e0d0c and imm_val == 2 #nosat<br>                                                           |[0x800015d0]:sm4ks<br> [0x800015d4]:sw<br> |
| 264|[0x8000342c]<br>0x9f7dfb60|- rs1_val == 0 and rs2_val == 0x0f0e0d0c and imm_val == 1 #nosat<br>                                                           |[0x800015e4]:sm4ks<br> [0x800015e8]:sw<br> |
| 265|[0x80003430]<br>0x00051428|- rs1_val == 0 and rs2_val == 0x0f0e0d0c and imm_val == 0 #nosat<br>                                                           |[0x800015f8]:sm4ks<br> [0x800015fc]:sw<br> |
| 266|[0x80003434]<br>0xc2401861|- rs1_val == 0 and rs2_val == 0x0b0a0908 and imm_val == 3 #nosat<br>                                                           |[0x8000160c]:sm4ks<br> [0x80001610]:sw<br> |
| 267|[0x80003438]<br>0x0a148002|- rs1_val == 0 and rs2_val == 0x0b0a0908 and imm_val == 2 #nosat<br>                                                           |[0x80001620]:sm4ks<br> [0x80001624]:sw<br> |
| 268|[0x8000343c]<br>0x165bb6c0|- rs1_val == 0 and rs2_val == 0x0b0a0908 and imm_val == 1 #nosat<br>                                                           |[0x80001634]:sm4ks<br> [0x80001638]:sw<br> |
| 269|[0x80003440]<br>0xc0020b16|- rs1_val == 0 and rs2_val == 0x0b0a0908 and imm_val == 0 #nosat<br>                                                           |[0x80001648]:sm4ks<br> [0x8000164c]:sw<br> |
| 270|[0x80003444]<br>0xb7e0965b|- rs1_val == 0 and rs2_val == 0x07060504 and imm_val == 3 #nosat<br>                                                           |[0x8000165c]:sm4ks<br> [0x80001660]:sw<br> |
| 271|[0x80003448]<br>0x1e3da087|- rs1_val == 0 and rs2_val == 0x07060504 and imm_val == 2 #nosat<br>                                                           |[0x80001670]:sm4ks<br> [0x80001674]:sw<br> |
| 272|[0x8000344c]<br>0x9c70e120|- rs1_val == 0 and rs2_val == 0x07060504 and imm_val == 1 #nosat<br>                                                           |[0x80001684]:sm4ks<br> [0x80001688]:sw<br> |
| 273|[0x80003450]<br>0x801966cc|- rs1_val == 0 and rs2_val == 0x07060504 and imm_val == 0 #nosat<br>                                                           |[0x80001698]:sm4ks<br> [0x8000169c]:sw<br> |
| 274|[0x80003454]<br>0xfec01f7f|- rs1_val == 0 and rs2_val == 0x03020100 and imm_val == 3 #nosat<br>                                                           |[0x800016ac]:sm4ks<br> [0x800016b0]:sw<br> |
| 275|[0x80003458]<br>0x74e9209d|- rs1_val == 0 and rs2_val == 0x03020100 and imm_val == 2 #nosat<br>                                                           |[0x800016c0]:sm4ks<br> [0x800016c4]:sw<br> |
| 276|[0x8000345c]<br>0x12489000|- rs1_val == 0 and rs2_val == 0x03020100 and imm_val == 1 #nosat<br>                                                           |[0x800016d4]:sm4ks<br> [0x800016d8]:sw<br> |
| 277|[0x80003460]<br>0xc01a6bd6|- rs1_val == 0 and rs2_val == 0x03020100 and imm_val == 0 #nosat<br>                                                           |[0x800016e8]:sm4ks<br> [0x800016ec]:sw<br> |
| 278|[0x80003464]<br>0x9b4dc8fb|- rs1_val == 0x7bcad7c4 and rs2_val == 0xc2f1c53e and imm_val == 0x0 #nosat<br>                                                |[0x80001700]:sm4ks<br> [0x80001704]:sw<br> |
| 279|[0x80003468]<br>0xbb64bde5|- rs1_val == 0xbb61a9cd and rs2_val == 0xccce240c and imm_val == 0x0 #nosat<br>                                                |[0x80001718]:sm4ks<br> [0x8000171c]:sw<br> |
