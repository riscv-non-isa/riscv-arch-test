
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
| SIG_REGION                | [('0x80002010', '0x800021f0', '120 words')]      |
| COV_LABELS                | sha512sig1h      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha512sig1h-01.S/ref.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 120      |
| STAT1                     | 113      |
| STAT2                     | 7      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003bc]:sha512sig1h
      [0x800003c0]:sw
 -- Signature Address: 0x80002098 Data: 0x0b7ffbff
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294950911
      - rs1_val == 3758096383




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000047c]:sha512sig1h
      [0x80000480]:sw
 -- Signature Address: 0x800020bc Data: 0x07bfdffe
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294959103
      - rs1_val == 4294443007




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b8]:sha512sig1h
      [0x800004bc]:sw
 -- Signature Address: 0x800020c8 Data: 0xdc041df8
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 4294934527
      - rs2_val == 65536




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:sha512sig1h
      [0x800004d4]:sw
 -- Signature Address: 0x800020cc Data: 0x03fdfeff
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4290772991
      - rs1_val == 4294950911




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f4]:sha512sig1h
      [0x800009f8]:sw
 -- Signature Address: 0x800021dc Data: 0x01ffeffd
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 3221225471
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a20]:sha512sig1h
      [0x80000a24]:sw
 -- Signature Address: 0x800021e4 Data: 0xffffc017
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4261412863
      - rs1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a48]:sha512sig1h
      [0x80000a4c]:sw
 -- Signature Address: 0x800021ec Data: 0x03bfbfdf
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig1h
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294966783
      - rs1_val == 4294965247






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

|s.no|        signature         |                                                                         coverpoints                                                                          |                      code                       |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
|   1|[0x80002010]<br>0x680d8a65|- opcode : sha512sig1h<br> - rs1 : x14<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br> |[0x80000110]:sha512sig1h<br> [0x80000114]:sw<br> |
|   2|[0x80002014]<br>0xffffe401|- rs1 : x13<br> - rs2 : x31<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs2_val == 2147483647<br> - rs1_val == 128<br>                                        |[0x80000124]:sha512sig1h<br> [0x80000128]:sw<br> |
|   3|[0x80002018]<br>0x01ffeffb|- rs1 : x17<br> - rs2 : x17<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs1_val == 2147483647<br>                                                             |[0x8000013c]:sha512sig1h<br> [0x80000140]:sw<br> |
|   4|[0x8000201c]<br>0xffffe802|- rs1 : x26<br> - rs2 : x13<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3758096383<br> - rs1_val == 256<br>                 |[0x80000150]:sha512sig1h<br> [0x80000154]:sw<br> |
|   5|[0x80002020]<br>0x0bfdfeff|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs2_val == 4294950911<br> - rs1_val == 4294950911<br>                                 |[0x80000168]:sha512sig1h<br> [0x8000016c]:sw<br> |
|   6|[0x80002024]<br>0xffffe405|- rs1 : x6<br> - rs2 : x29<br> - rd : x30<br> - rs2_val == 4160749567<br>                                                                                     |[0x8000017c]:sha512sig1h<br> [0x80000180]:sw<br> |
|   7|[0x80002028]<br>0xff7fe407|- rs1 : x29<br> - rs2 : x30<br> - rd : x2<br> - rs2_val == 4227858431<br> - rs1_val == 536870912<br>                                                          |[0x80000190]:sha512sig1h<br> [0x80000194]:sw<br> |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x30<br> - rs2 : x10<br> - rd : x0<br> - rs2_val == 4261412863<br> - rs1_val == 1024<br>                                                               |[0x800001a4]:sha512sig1h<br> [0x800001a8]:sw<br> |
|   9|[0x80002030]<br>0x03bfdffe|- rs1 : x21<br> - rs2 : x6<br> - rd : x8<br> - rs2_val == 4278190079<br> - rs1_val == 4294443007<br>                                                          |[0x800001bc]:sha512sig1h<br> [0x800001c0]:sw<br> |
|  10|[0x80002034]<br>0xffffe05f|- rs1 : x9<br> - rs2 : x21<br> - rd : x1<br> - rs2_val == 4286578687<br>                                                                                      |[0x800001d0]:sha512sig1h<br> [0x800001d4]:sw<br> |
|  11|[0x80002038]<br>0xffffe067|- rs1 : x8<br> - rs2 : x11<br> - rd : x18<br> - rs2_val == 4290772991<br>                                                                                     |[0x800001e4]:sha512sig1h<br> [0x800001e8]:sw<br> |
|  12|[0x8000203c]<br>0xff7fe407|- rs1 : x5<br> - rs2 : x8<br> - rd : x10<br> - rs2_val == 4292870143<br>                                                                                      |[0x800001f8]:sha512sig1h<br> [0x800001fc]:sw<br> |
|  13|[0x80002040]<br>0xffffe037|- rs1 : x15<br> - rs2 : x4<br> - rd : x6<br> - rs2_val == 4293918719<br>                                                                                      |[0x8000020c]:sha512sig1h<br> [0x80000210]:sw<br> |
|  14|[0x80002044]<br>0xfeffe807|- rs1 : x1<br> - rs2 : x7<br> - rd : x9<br> - rs2_val == 4294443007<br> - rs1_val == 1073741824<br>                                                           |[0x80000220]:sha512sig1h<br> [0x80000224]:sw<br> |
|  15|[0x80002048]<br>0x7fffe07f|- rs1 : x24<br> - rs2 : x15<br> - rd : x31<br> - rs2_val == 4294705151<br>                                                                                    |[0x80000234]:sha512sig1h<br> [0x80000238]:sw<br> |
|  16|[0x8000204c]<br>0xbfffc017|- rs1 : x10<br> - rs2 : x5<br> - rd : x28<br> - rs2_val == 4294836223<br>                                                                                     |[0x80000248]:sha512sig1h<br> [0x8000024c]:sw<br> |
|  17|[0x80002050]<br>0x23fbfdff|- rs1 : x7<br> - rs2 : x1<br> - rd : x4<br> - rs2_val == 4294901759<br> - rs1_val == 4294934527<br>                                                           |[0x80000260]:sha512sig1h<br> [0x80000264]:sw<br> |
|  18|[0x80002054]<br>0x13dfefff|- rs1 : x31<br> - rs2 : x28<br> - rd : x12<br> - rs2_val == 4294934527<br> - rs1_val == 4294705151<br>                                                        |[0x80000278]:sha512sig1h<br> [0x8000027c]:sw<br> |
|  19|[0x80002058]<br>0xf3fde017|- rs1 : x22<br> - rs2 : x3<br> - rd : x17<br> - rs1_val == 8388608<br>                                                                                        |[0x8000028c]:sha512sig1h<br> [0x80000290]:sw<br> |
|  20|[0x8000205c]<br>0x07ffbfdf|- rs1 : x4<br> - rs2 : x18<br> - rd : x23<br> - rs2_val == 4294959103<br> - rs1_val == 4294965247<br>                                                         |[0x800002a4]:sha512sig1h<br> [0x800002a8]:sw<br> |
|  21|[0x80002060]<br>0x00000010|- rs1 : x20<br> - rs2 : x0<br> - rd : x29<br> - rs1_val == 2<br>                                                                                              |[0x800002bc]:sha512sig1h<br> [0x800002c0]:sw<br> |
|  22|[0x80002064]<br>0xfebfc006|- rs1 : x23<br> - rs2 : x16<br> - rd : x7<br> - rs2_val == 4294965247<br> - rs1_val == 524288<br>                                                             |[0x800002d0]:sha512sig1h<br> [0x800002d4]:sw<br> |
|  23|[0x80002068]<br>0xff7fe107|- rs1 : x18<br> - rs2 : x14<br> - rd : x15<br> - rs2_val == 4294966271<br> - rs1_val == 32<br>                                                                |[0x800002e0]:sha512sig1h<br> [0x800002e4]:sw<br> |
|  24|[0x8000206c]<br>0xffbfe007|- rs1 : x0<br> - rs2 : x22<br> - rd : x3<br> - rs2_val == 4294966783<br>                                                                                      |[0x800002f0]:sha512sig1h<br> [0x800002f4]:sw<br> |
|  25|[0x80002070]<br>0x03dfffbf|- rs1 : x27<br> - rs2 : x9<br> - rd : x22<br> - rs2_val == 4294967039<br> - rs1_val == 4294967287<br>                                                         |[0x80000300]:sha512sig1h<br> [0x80000304]:sw<br> |
|  26|[0x80002074]<br>0x036fbffd|- rs1 : x16<br> - rs2 : x23<br> - rd : x20<br> - rs2_val == 4294967167<br> - rs1_val == 4293918719<br>                                                        |[0x80000314]:sha512sig1h<br> [0x80000318]:sw<br> |
|  27|[0x80002078]<br>0xfff7a027|- rs1 : x19<br> - rs2 : x2<br> - rd : x16<br> - rs2_val == 4294967231<br> - rs1_val == 2048<br>                                                               |[0x80000328]:sha512sig1h<br> [0x8000032c]:sw<br> |
|  28|[0x8000207c]<br>0xfffbe01f|- rs1 : x12<br> - rs2 : x27<br> - rd : x24<br> - rs2_val == 4294967263<br>                                                                                    |[0x80000338]:sha512sig1h<br> [0x8000033c]:sw<br> |
|  29|[0x80002080]<br>0xfffda027|- rs1 : x3<br> - rs2 : x24<br> - rd : x14<br> - rs2_val == 4294967279<br>                                                                                     |[0x8000034c]:sha512sig1h<br> [0x80000350]:sw<br> |
|  30|[0x80002084]<br>0xfffee067|- rs1 : x28<br> - rs2 : x12<br> - rd : x5<br> - rs2_val == 4294967287<br>                                                                                     |[0x8000035c]:sha512sig1h<br> [0x80000360]:sw<br> |
|  31|[0x80002088]<br>0x03ff7dfe|- rs1 : x2<br> - rs2 : x26<br> - rd : x27<br> - rs2_val == 4294967291<br> - rs1_val == 4294967231<br>                                                         |[0x8000036c]:sha512sig1h<br> [0x80000370]:sw<br> |
|  32|[0x8000208c]<br>0xffffa087|- rs1 : x11<br> - rs2 : x20<br> - rd : x26<br> - rs2_val == 4294967293<br> - rs1_val == 16<br>                                                                |[0x8000037c]:sha512sig1h<br> [0x80000380]:sw<br> |
|  33|[0x80002090]<br>0x037fdbff|- rs2_val == 4294967294<br> - rs1_val == 3758096383<br>                                                                                                       |[0x80000390]:sha512sig1h<br> [0x80000394]:sw<br> |
|  34|[0x80002094]<br>0xfd0017f8|- rs1_val == 3221225471<br> - rs2_val == 2097152<br>                                                                                                          |[0x800003a4]:sha512sig1h<br> [0x800003a8]:sw<br> |
|  35|[0x8000209c]<br>0x3c401df8|- rs1_val == 4026531839<br> - rs2_val == 131072<br>                                                                                                           |[0x800003d0]:sha512sig1h<br> [0x800003d4]:sw<br> |
|  36|[0x800020a0]<br>0x43dffeff|- rs1_val == 4160749567<br>                                                                                                                                   |[0x800003e8]:sha512sig1h<br> [0x800003ec]:sw<br> |
|  37|[0x800020a4]<br>0xdc101f7c|- rs1_val == 4227858431<br> - rs2_val == 2147483648<br>                                                                                                       |[0x800003fc]:sha512sig1h<br> [0x80000400]:sw<br> |
|  38|[0x800020a8]<br>0xec081fb8|- rs1_val == 4261412863<br> - rs2_val == 8388608<br>                                                                                                          |[0x80000410]:sha512sig1h<br> [0x80000414]:sw<br> |
|  39|[0x800020ac]<br>0xf4059fd8|- rs1_val == 4278190079<br>                                                                                                                                   |[0x80000424]:sha512sig1h<br> [0x80000428]:sw<br> |
|  40|[0x800020b0]<br>0x07fdffef|- rs1_val == 4286578687<br>                                                                                                                                   |[0x8000043c]:sha512sig1h<br> [0x80000440]:sw<br> |
|  41|[0x800020b4]<br>0xfe211ff0|- rs1_val == 4290772991<br> - rs2_val == 256<br>                                                                                                              |[0x80000450]:sha512sig1h<br> [0x80000454]:sw<br> |
|  42|[0x800020b8]<br>0xfd009ffc|- rs1_val == 4292870143<br>                                                                                                                                   |[0x80000464]:sha512sig1h<br> [0x80000468]:sw<br> |
|  43|[0x800020c0]<br>0xdc1017f8|- rs1_val == 4294836223<br> - rs2_val == 65536<br>                                                                                                            |[0x80000490]:sha512sig1h<br> [0x80000494]:sw<br> |
|  44|[0x800020c4]<br>0xfc081bf8|- rs1_val == 4294901759<br> - rs2_val == 67108864<br>                                                                                                         |[0x800004a4]:sha512sig1h<br> [0x800004a8]:sw<br> |
|  45|[0x800020d0]<br>0xfc00ff78|- rs1_val == 4294959103<br>                                                                                                                                   |[0x800004e4]:sha512sig1h<br> [0x800004e8]:sw<br> |
|  46|[0x800020d4]<br>0xfc00dfb8|- rs1_val == 4294963199<br> - rs2_val == 2<br>                                                                                                                |[0x800004f8]:sha512sig1h<br> [0x800004fc]:sw<br> |
|  47|[0x800020d8]<br>0x03ff1fef|- rs1_val == 4294966271<br>                                                                                                                                   |[0x80000508]:sha512sig1h<br> [0x8000050c]:sw<br> |
|  48|[0x800020dc]<br>0x23ffeff7|- rs1_val == 4294966783<br>                                                                                                                                   |[0x8000051c]:sha512sig1h<br> [0x80000520]:sw<br> |
|  49|[0x800020e0]<br>0x03fff7f9|- rs2_val == 3221225471<br> - rs1_val == 4294967039<br>                                                                                                       |[0x80000530]:sha512sig1h<br> [0x80000534]:sw<br> |
|  50|[0x800020e4]<br>0xf4001bfa|- rs1_val == 4294967167<br> - rs2_val == 16384<br>                                                                                                            |[0x80000540]:sha512sig1h<br> [0x80000544]:sw<br> |
|  51|[0x800020e8]<br>0xfc001ef8|- rs1_val == 4294967263<br> - rs2_val == 1048576<br>                                                                                                          |[0x80000550]:sha512sig1h<br> [0x80000554]:sw<br> |
|  52|[0x800020ec]<br>0x83ffff7f|- rs1_val == 4294967279<br>                                                                                                                                   |[0x80000564]:sha512sig1h<br> [0x80000568]:sw<br> |
|  53|[0x800020f0]<br>0xfc007fd8|- rs1_val == 4294967291<br>                                                                                                                                   |[0x80000574]:sha512sig1h<br> [0x80000578]:sw<br> |
|  54|[0x800020f4]<br>0xfc001fe8|- rs1_val == 4294967293<br> - rs2_val == 16777216<br>                                                                                                         |[0x80000584]:sha512sig1h<br> [0x80000588]:sw<br> |
|  55|[0x800020f8]<br>0x01000008|- rs2_val == 2048<br> - rs1_val == 1<br>                                                                                                                      |[0x80000598]:sha512sig1h<br> [0x8000059c]:sw<br> |
|  56|[0x800020fc]<br>0x88ffd081|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                                  |[0x800005b0]:sha512sig1h<br> [0x800005b4]:sw<br> |
|  57|[0x80002100]<br>0xa3f76ea4|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                  |[0x800005c8]:sha512sig1h<br> [0x800005cc]:sw<br> |
|  58|[0x80002104]<br>0xa5f97045|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                  |[0x800005e0]:sha512sig1h<br> [0x800005e4]:sw<br> |
|  59|[0x80002108]<br>0x6fff066b|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                  |[0x800005f8]:sha512sig1h<br> [0x800005fc]:sw<br> |
|  60|[0x8000210c]<br>0x2a20857c|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                  |[0x80000610]:sha512sig1h<br> [0x80000614]:sw<br> |
|  61|[0x80002110]<br>0x388f6a91|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                  |[0x80000628]:sha512sig1h<br> [0x8000062c]:sw<br> |
|  62|[0x80002114]<br>0xd99036bc|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                  |[0x80000640]:sha512sig1h<br> [0x80000644]:sw<br> |
|  63|[0x80002118]<br>0xe1b254f1|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                  |[0x80000658]:sha512sig1h<br> [0x8000065c]:sw<br> |
|  64|[0x8000211c]<br>0x039178eb|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                  |[0x80000670]:sha512sig1h<br> [0x80000674]:sw<br> |
|  65|[0x80002120]<br>0x479fa9ca|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                  |[0x80000688]:sha512sig1h<br> [0x8000068c]:sw<br> |
|  66|[0x80002124]<br>0x99815dec|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                  |[0x800006a0]:sha512sig1h<br> [0x800006a4]:sw<br> |
|  67|[0x80002128]<br>0xefd5efe4|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                  |[0x800006b8]:sha512sig1h<br> [0x800006bc]:sw<br> |
|  68|[0x8000212c]<br>0x4732ca23|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                  |[0x800006d0]:sha512sig1h<br> [0x800006d4]:sw<br> |
|  69|[0x80002130]<br>0xcf7eb99d|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                  |[0x800006e8]:sha512sig1h<br> [0x800006ec]:sw<br> |
|  70|[0x80002134]<br>0x1467db6d|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                  |[0x80000700]:sha512sig1h<br> [0x80000704]:sw<br> |
|  71|[0x80002138]<br>0x5cc3effb|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                  |[0x80000718]:sha512sig1h<br> [0x8000071c]:sw<br> |
|  72|[0x8000213c]<br>0xd29d99d2|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                  |[0x80000730]:sha512sig1h<br> [0x80000734]:sw<br> |
|  73|[0x80002140]<br>0xe204016d|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                  |[0x80000748]:sha512sig1h<br> [0x8000074c]:sw<br> |
|  74|[0x80002144]<br>0x930fda79|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                  |[0x80000760]:sha512sig1h<br> [0x80000764]:sw<br> |
|  75|[0x80002148]<br>0xfc081ff0|- rs1_val == 4294967294<br> - rs2_val == 64<br>                                                                                                               |[0x80000770]:sha512sig1h<br> [0x80000774]:sw<br> |
|  76|[0x8000214c]<br>0xfe000ffa|- rs2_val == 1073741824<br>                                                                                                                                   |[0x80000784]:sha512sig1h<br> [0x80000788]:sw<br> |
|  77|[0x80002150]<br>0x00000011|- rs2_val == 536870912<br>                                                                                                                                    |[0x80000794]:sha512sig1h<br> [0x80000798]:sw<br> |
|  78|[0x80002154]<br>0x00002010|- rs2_val == 268435456<br>                                                                                                                                    |[0x800007a4]:sha512sig1h<br> [0x800007a8]:sw<br> |
|  79|[0x80002158]<br>0x00000100|- rs2_val == 134217728<br>                                                                                                                                    |[0x800007b4]:sha512sig1h<br> [0x800007b8]:sw<br> |
|  80|[0x8000215c]<br>0xfc001fe8|- rs2_val == 33554432<br>                                                                                                                                     |[0x800007c4]:sha512sig1h<br> [0x800007c8]:sw<br> |
|  81|[0x80002160]<br>0x00804002|- rs2_val == 4194304<br> - rs1_val == 1048576<br>                                                                                                             |[0x800007d4]:sha512sig1h<br> [0x800007d8]:sw<br> |
|  82|[0x80002164]<br>0x00800400|- rs2_val == 524288<br>                                                                                                                                       |[0x800007e4]:sha512sig1h<br> [0x800007e8]:sw<br> |
|  83|[0x80002168]<br>0x7e011ff0|- rs2_val == 262144<br>                                                                                                                                       |[0x800007f8]:sha512sig1h<br> [0x800007fc]:sw<br> |
|  84|[0x8000216c]<br>0x10000010|- rs2_val == 32768<br>                                                                                                                                        |[0x80000808]:sha512sig1h<br> [0x8000080c]:sw<br> |
|  85|[0x80002170]<br>0xf9009ffc|- rs2_val == 8192<br>                                                                                                                                         |[0x8000081c]:sha512sig1h<br> [0x80000820]:sw<br> |
|  86|[0x80002174]<br>0x02000000|- rs2_val == 4096<br>                                                                                                                                         |[0x8000082c]:sha512sig1h<br> [0x80000830]:sw<br> |
|  87|[0x80002178]<br>0x00810080|- rs2_val == 1024<br> - rs1_val == 8192<br>                                                                                                                   |[0x8000083c]:sha512sig1h<br> [0x80000840]:sw<br> |
|  88|[0x8000217c]<br>0xfc401fb8|- rs2_val == 512<br>                                                                                                                                          |[0x8000084c]:sha512sig1h<br> [0x80000850]:sw<br> |
|  89|[0x80002180]<br>0x00100018|- rs2_val == 128<br>                                                                                                                                          |[0x8000085c]:sha512sig1h<br> [0x80000860]:sw<br> |
|  90|[0x80002184]<br>0x00040000|- rs2_val == 32<br>                                                                                                                                           |[0x8000086c]:sha512sig1h<br> [0x80000870]:sw<br> |
|  91|[0x80002188]<br>0xfc423ff9|- rs2_val == 16<br>                                                                                                                                           |[0x80000880]:sha512sig1h<br> [0x80000884]:sw<br> |
|  92|[0x8000218c]<br>0x00010201|- rs2_val == 8<br> - rs1_val == 64<br>                                                                                                                        |[0x80000890]:sha512sig1h<br> [0x80000894]:sw<br> |
|  93|[0x80002190]<br>0x03009800|- rs2_val == 4<br>                                                                                                                                            |[0x800008a0]:sha512sig1h<br> [0x800008a4]:sw<br> |
|  94|[0x80002194]<br>0x00002018|- rs2_val == 1<br>                                                                                                                                            |[0x800008b0]:sha512sig1h<br> [0x800008b4]:sw<br> |
|  95|[0x80002198]<br>0x57555005|- rs1_val == 2147483648<br>                                                                                                                                   |[0x800008c4]:sha512sig1h<br> [0x800008c8]:sw<br> |
|  96|[0x8000219c]<br>0x80418200|- rs1_val == 268435456<br>                                                                                                                                    |[0x800008d4]:sha512sig1h<br> [0x800008d8]:sw<br> |
|  97|[0x800021a0]<br>0x40216100|- rs1_val == 134217728<br>                                                                                                                                    |[0x800008e4]:sha512sig1h<br> [0x800008e8]:sw<br> |
|  98|[0x800021a4]<br>0x21100080|- rs1_val == 67108864<br>                                                                                                                                     |[0x800008f8]:sha512sig1h<br> [0x800008fc]:sw<br> |
|  99|[0x800021a8]<br>0x1008c040|- rs1_val == 33554432<br>                                                                                                                                     |[0x80000908]:sha512sig1h<br> [0x8000090c]:sw<br> |
| 100|[0x800021ac]<br>0x08040020|- rs1_val == 16777216<br>                                                                                                                                     |[0x80000918]:sha512sig1h<br> [0x8000091c]:sw<br> |
| 101|[0x800021b0]<br>0x7dfee00f|- rs1_val == 4194304<br>                                                                                                                                      |[0x8000092c]:sha512sig1h<br> [0x80000930]:sw<br> |
| 102|[0x800021b4]<br>0xfeffc003|- rs1_val == 2097152<br>                                                                                                                                      |[0x8000093c]:sha512sig1h<br> [0x80000940]:sw<br> |
| 103|[0x800021b8]<br>0xdfdff007|- rs1_val == 262144<br>                                                                                                                                       |[0x80000950]:sha512sig1h<br> [0x80000954]:sw<br> |
| 104|[0x800021bc]<br>0xefefe807|- rs1_val == 131072<br>                                                                                                                                       |[0x80000964]:sha512sig1h<br> [0x80000968]:sw<br> |
| 105|[0x800021c0]<br>0xfff7e407|- rs1_val == 65536<br>                                                                                                                                        |[0x80000978]:sha512sig1h<br> [0x8000097c]:sw<br> |
| 106|[0x800021c4]<br>0xfffbe207|- rs1_val == 32768<br>                                                                                                                                        |[0x8000098c]:sha512sig1h<br> [0x80000990]:sw<br> |
| 107|[0x800021c8]<br>0x00032100|- rs1_val == 16384<br>                                                                                                                                        |[0x8000099c]:sha512sig1h<br> [0x800009a0]:sw<br> |
| 108|[0x800021cc]<br>0xffbf6047|- rs1_val == 4096<br>                                                                                                                                         |[0x800009ac]:sha512sig1h<br> [0x800009b0]:sw<br> |
| 109|[0x800021d0]<br>0x0000c040|- rs1_val == 8<br>                                                                                                                                            |[0x800009bc]:sha512sig1h<br> [0x800009c0]:sw<br> |
| 110|[0x800021d4]<br>0x04000020|- rs1_val == 4<br>                                                                                                                                            |[0x800009cc]:sha512sig1h<br> [0x800009d0]:sw<br> |
| 111|[0x800021d8]<br>0x00001008|- rs1_val == 512<br>                                                                                                                                          |[0x800009dc]:sha512sig1h<br> [0x800009e0]:sw<br> |
| 112|[0x800021e0]<br>0x03fdfeff|- rs2_val == 4026531839<br>                                                                                                                                   |[0x80000a0c]:sha512sig1h<br> [0x80000a10]:sw<br> |
| 113|[0x800021e8]<br>0xfdffe017|- rs2_val == 4294963199<br>                                                                                                                                   |[0x80000a34]:sha512sig1h<br> [0x80000a38]:sw<br> |
