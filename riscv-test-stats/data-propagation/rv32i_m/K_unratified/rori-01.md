
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a30')]      |
| SIG_REGION                | [('0x80002010', '0x80002290', '160 words')]      |
| COV_LABELS                | rori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/rori-01.S/ref.S    |
| Total Number of coverpoints| 228     |
| Total Coverpoints Hit     | 223      |
| Total Signature Updates   | 158      |
| STAT1                     | 157      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a24]:rori
      [0x80000a28]:sw
 -- Signature Address: 0x80002284 Data: 0x001ea979
 -- Redundant Coverpoints hit by the op
      - opcode : rori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0x7AA5E400 and imm_val == 0x0A #nosat






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

|s.no|        signature         |                                                       coverpoints                                                       |                   code                   |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------|------------------------------------------|
|   1|[0x80002010]<br>0xffffffff|- opcode : rori<br> - rs1 : x21<br> - rd : x7<br> - rs1 != rd<br> - rs1_val == 0xFFFFFFFF and imm_val == 0x02 #nosat<br> |[0x80000104]:rori<br> [0x80000108]:sw<br> |
|   2|[0x80002014]<br>0x2dedb6a7|- rs1 : x1<br> - rd : x1<br> - rs1 == rd<br> - imm_val == 0x00 and rs1_val == 0x2DEDB6A7 #nosat<br>                      |[0x80000114]:rori<br> [0x80000118]:sw<br> |
|   3|[0x80002018]<br>0x27283c27|- rs1 : x5<br> - rd : x9<br> - imm_val == 0x10 and rs1_val == 0x3C272728 #nosat<br>                                      |[0x80000124]:rori<br> [0x80000128]:sw<br> |
|   4|[0x8000201c]<br>0x55c73d4f|- rs1 : x12<br> - rd : x31<br> - imm_val == 0x18 and rs1_val == 0x4F55C73D #nosat<br>                                    |[0x80000134]:rori<br> [0x80000138]:sw<br> |
|   5|[0x80002020]<br>0xb577ab0a|- rs1 : x7<br> - rd : x19<br> - imm_val == 0x14 and rs1_val == 0xB0AB577A #nosat<br>                                     |[0x80000144]:rori<br> [0x80000148]:sw<br> |
|   6|[0x80002024]<br>0x3ac86abc|- rs1 : x19<br> - rd : x11<br> - imm_val == 0x1A and rs1_val == 0xF0EB21AA #nosat<br>                                    |[0x80000154]:rori<br> [0x80000158]:sw<br> |
|   7|[0x80002028]<br>0x3c2dc4f5|- rs1 : x28<br> - rd : x10<br> - imm_val == 0x1B and rs1_val == 0xA9E16E27 #nosat<br>                                    |[0x80000164]:rori<br> [0x80000168]:sw<br> |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x30<br> - rd : x13<br> - rs1_val == 0x00000000 and imm_val == 0x0C #nosat<br>                                    |[0x80000170]:rori<br> [0x80000174]:sw<br> |
|   9|[0x80002030]<br>0x04000000|- rs1 : x23<br> - rd : x26<br> - rs1_val == 0x80000000 and imm_val == 0x05 #nosat<br>                                    |[0x8000017c]:rori<br> [0x80000180]:sw<br> |
|  10|[0x80002034]<br>0x20000000|- rs1 : x18<br> - rd : x3<br> - rs1_val == 0x40000000 and imm_val == 0x01 #nosat<br>                                     |[0x80000188]:rori<br> [0x8000018c]:sw<br> |
|  11|[0x80002038]<br>0x00000060|- rs1 : x24<br> - rd : x29<br> - rs1_val == 0x60000000 and imm_val == 0x18 #nosat<br>                                    |[0x80000194]:rori<br> [0x80000198]:sw<br> |
|  12|[0x8000203c]<br>0xc0000002|- rs1 : x3<br> - rd : x18<br> - rs1_val == 0xB0000000 and imm_val == 0x1E #nosat<br>                                     |[0x800001a0]:rori<br> [0x800001a4]:sw<br> |
|  13|[0x80002040]<br>0x00000002|- rs1 : x31<br> - rd : x25<br> - rs1_val == 0x08000000 and imm_val == 0x1A #nosat<br>                                    |[0x800001ac]:rori<br> [0x800001b0]:sw<br> |
|  14|[0x80002044]<br>0x07a00000|- rs1 : x20<br> - rd : x28<br> - rs1_val == 0xF4000000 and imm_val == 0x05 #nosat<br>                                    |[0x800001b8]:rori<br> [0x800001bc]:sw<br> |
|  15|[0x80002048]<br>0x00208000|- rs1 : x26<br> - rd : x14<br> - rs1_val == 0x82000000 and imm_val == 0x0A #nosat<br>                                    |[0x800001c4]:rori<br> [0x800001c8]:sw<br> |
|  16|[0x8000204c]<br>0x1fa00000|- rs1 : x11<br> - rd : x8<br> - rs1_val == 0xFD000000 and imm_val == 0x03 #nosat<br>                                     |[0x800001d0]:rori<br> [0x800001d4]:sw<br> |
|  17|[0x80002050]<br>0x00362000|- rs1 : x10<br> - rd : x21<br> - rs1_val == 0xD8800000 and imm_val == 0x0A #nosat<br>                                    |[0x800001dc]:rori<br> [0x800001e0]:sw<br> |
|  18|[0x80002054]<br>0x00000c8c|- rs1 : x27<br> - rd : x15<br> - rs1_val == 0xC8C00000 and imm_val == 0x14 #nosat<br>                                    |[0x800001e8]:rori<br> [0x800001ec]:sw<br> |
|  19|[0x80002058]<br>0x00a32000|- rs1 : x29<br> - rd : x6<br> - rs1_val == 0xA3200000 and imm_val == 0x08 #nosat<br>                                     |[0x800001f4]:rori<br> [0x800001f8]:sw<br> |
|  20|[0x8000205c]<br>0xf2000018|- rs1 : x16<br> - rd : x20<br> - rs1_val == 0xC7900000 and imm_val == 0x1B #nosat<br>                                    |[0x80000200]:rori<br> [0x80000204]:sw<br> |
|  21|[0x80002060]<br>0x68800004|- rs1 : x25<br> - rd : x16<br> - rs1_val == 0x46880000 and imm_val == 0x1C #nosat<br>                                    |[0x8000020c]:rori<br> [0x80000210]:sw<br> |
|  22|[0x80002064]<br>0x00000000|- rs1 : x0<br> - rd : x27<br>                                                                                            |[0x80000218]:rori<br> [0x8000021c]:sw<br> |
|  23|[0x80002068]<br>0x000295a8|- rs1 : x8<br> - rd : x30<br> - rs1_val == 0xA56A0000 and imm_val == 0x0E #nosat<br>                                     |[0x80000224]:rori<br> [0x80000228]:sw<br> |
|  24|[0x8000206c]<br>0x080ba000|- rs1 : x22<br> - rd : x17<br> - rs1_val == 0x405D0000 and imm_val == 0x03 #nosat<br>                                    |[0x80000230]:rori<br> [0x80000234]:sw<br> |
|  25|[0x80002070]<br>0x06697c00|- rs1 : x6<br> - rd : x4<br> - rs1_val == 0xCD2F8000 and imm_val == 0x05 #nosat<br>                                      |[0x80000244]:rori<br> [0x80000248]:sw<br> |
|  26|[0x80002074]<br>0x60200053|- rs1 : x17<br> - rd : x5<br> - rs1_val == 0xA6C04000 and imm_val == 0x19 #nosat<br>                                     |[0x80000250]:rori<br> [0x80000254]:sw<br> |
|  27|[0x80002078]<br>0xe100019d|- rs1 : x14<br> - rd : x22<br> - rs1_val == 0x33BC2000 and imm_val == 0x15 #nosat<br>                                    |[0x8000025c]:rori<br> [0x80000260]:sw<br> |
|  28|[0x8000207c]<br>0x000f1c6b|- rs1 : x15<br> - rd : x2<br> - rs1_val == 0xF1C6B000 and imm_val == 0x0C #nosat<br>                                     |[0x80000268]:rori<br> [0x8000026c]:sw<br> |
|  29|[0x80002080]<br>0x400551eb|- rs1 : x9<br> - rd : x12<br> - rs1_val == 0xAA3D6800 and imm_val == 0x0D #nosat<br>                                     |[0x80000278]:rori<br> [0x8000027c]:sw<br> |
|  30|[0x80002084]<br>0x00000000|- rs1 : x13<br> - rd : x0<br> - rs1_val == 0x7AA5E400 and imm_val == 0x0A #nosat<br>                                     |[0x80000288]:rori<br> [0x8000028c]:sw<br> |
|  31|[0x80002088]<br>0x1b7ae00c|- rs1 : x4<br> - rd : x23<br> - rs1_val == 0xC1B7AE00 and imm_val == 0x1C #nosat<br>                                     |[0x80000298]:rori<br> [0x8000029c]:sw<br> |
|  32|[0x8000208c]<br>0x80262b5d|- rs1 : x2<br> - rd : x24<br> - rs1_val == 0x4C56BB00 and imm_val == 0x09 #nosat<br>                                     |[0x800002a8]:rori<br> [0x800002ac]:sw<br> |
|  33|[0x80002090]<br>0x72c58380|- rs1_val == 0x72C58380 and imm_val == 0x00 #nosat<br>                                                                   |[0x800002b8]:rori<br> [0x800002bc]:sw<br> |
|  34|[0x80002094]<br>0x1d00caae|- rs1_val == 0x32AB8740 and imm_val == 0x0E #nosat<br>                                                                   |[0x800002c8]:rori<br> [0x800002cc]:sw<br> |
|  35|[0x80002098]<br>0xb66f8d04|- rs1_val == 0x96CDF1A0 and imm_val == 0x1D #nosat<br>                                                                   |[0x800002d8]:rori<br> [0x800002dc]:sw<br> |
|  36|[0x8000209c]<br>0x4f185c3d|- rs1_val == 0xB87A9E30 and imm_val == 0x11 #nosat<br>                                                                   |[0x800002e8]:rori<br> [0x800002ec]:sw<br> |
|  37|[0x800020a0]<br>0x7bff302c|- rs1_val == 0x163DFF98 and imm_val == 0x17 #nosat<br>                                                                   |[0x800002f8]:rori<br> [0x800002fc]:sw<br> |
|  38|[0x800020a4]<br>0x05d39c92|- rs1_val == 0x9205D39C and imm_val == 0x18 #nosat<br>                                                                   |[0x80000308]:rori<br> [0x8000030c]:sw<br> |
|  39|[0x800020a8]<br>0x80f16942|- rs1_val == 0x50A03C5A and imm_val == 0x16 #nosat<br>                                                                   |[0x80000318]:rori<br> [0x8000031c]:sw<br> |
|  40|[0x800020ac]<br>0xbb6fbcbe|- rs1_val == 0x797D76DF and imm_val == 0x11 #nosat<br>                                                                   |[0x80000328]:rori<br> [0x8000032c]:sw<br> |
|  41|[0x800020b0]<br>0xe324496f|- imm_val == 0x08 and rs1_val == 0x24496FE3 #nosat<br>                                                                   |[0x80000338]:rori<br> [0x8000033c]:sw<br> |
|  42|[0x800020b4]<br>0xf0a5ff96|- imm_val == 0x1D and rs1_val == 0xDE14BFF2 #nosat<br>                                                                   |[0x80000348]:rori<br> [0x8000034c]:sw<br> |
|  43|[0x800020b8]<br>0xf70114ce|- imm_val == 0x03 and rs1_val == 0xB808A677 #nosat<br>                                                                   |[0x80000358]:rori<br> [0x8000035c]:sw<br> |
|  44|[0x800020bc]<br>0x7aed63fa|- imm_val == 0x07 and rs1_val == 0x76B1FD3D #nosat<br>                                                                   |[0x80000368]:rori<br> [0x8000036c]:sw<br> |
|  45|[0x800020c0]<br>0x033abb9e|- imm_val == 0x0F and rs1_val == 0x5DCF019D #nosat<br>                                                                   |[0x80000378]:rori<br> [0x8000037c]:sw<br> |
|  46|[0x800020c4]<br>0x8f6e12f6|- imm_val == 0x1F and rs1_val == 0x47B7097B #nosat<br>                                                                   |[0x80000388]:rori<br> [0x8000038c]:sw<br> |
|  47|[0x800020c8]<br>0x1b44759f|- rs1_val == 0x759F1B44 and imm_val == 0x10 #nosat<br>                                                                   |[0x80000398]:rori<br> [0x8000039c]:sw<br> |
|  48|[0x800020cc]<br>0xb2143a81|- rs1_val == 0x40D90A1D and imm_val == 0x17 #nosat<br>                                                                   |[0x800003a8]:rori<br> [0x800003ac]:sw<br> |
|  49|[0x800020d0]<br>0xb7c48cb7|- rs1_val == 0x2DEDF123 and imm_val == 0x16 #nosat<br>                                                                   |[0x800003b8]:rori<br> [0x800003bc]:sw<br> |
|  50|[0x800020d4]<br>0x4e74b163|- rs1_val == 0x4B1634E7 and imm_val == 0x0C #nosat<br>                                                                   |[0x800003c8]:rori<br> [0x800003cc]:sw<br> |
|  51|[0x800020d8]<br>0x05f126b7|- rs1_val == 0x8935B82F and imm_val == 0x0B #nosat<br>                                                                   |[0x800003d8]:rori<br> [0x800003dc]:sw<br> |
|  52|[0x800020dc]<br>0x0bcb8df7|- rs1_val == 0x70BCB8DF and imm_val == 0x1C #nosat<br>                                                                   |[0x800003e8]:rori<br> [0x800003ec]:sw<br> |
|  53|[0x800020e0]<br>0x3f8de1c7|- rs1_val == 0x8DE1C73F and imm_val == 0x08 #nosat<br>                                                                   |[0x800003f8]:rori<br> [0x800003fc]:sw<br> |
|  54|[0x800020e4]<br>0x0e04e7fb|- rs1_val == 0xB0E04E7F and imm_val == 0x1C #nosat<br>                                                                   |[0x80000408]:rori<br> [0x8000040c]:sw<br> |
|  55|[0x800020e8]<br>0x18ff5892|- rs1_val == 0x589218FF and imm_val == 0x10 #nosat<br>                                                                   |[0x80000418]:rori<br> [0x8000041c]:sw<br> |
|  56|[0x800020ec]<br>0xff4f7d33|- rs1_val == 0xA7BE99FF and imm_val == 0x07 #nosat<br>                                                                   |[0x80000428]:rori<br> [0x8000042c]:sw<br> |
|  57|[0x800020f0]<br>0xe33ffa37|- rs1_val == 0xA37E33FF and imm_val == 0x14 #nosat<br>                                                                   |[0x80000438]:rori<br> [0x8000043c]:sw<br> |
|  58|[0x800020f4]<br>0x6fa6fffc|- rs1_val == 0xE37D37FF and imm_val == 0x1B #nosat<br>                                                                   |[0x80000448]:rori<br> [0x8000044c]:sw<br> |
|  59|[0x800020f8]<br>0x699fff57|- rs1_val == 0xABB4CFFF and imm_val == 0x17 #nosat<br>                                                                   |[0x80000458]:rori<br> [0x8000045c]:sw<br> |
|  60|[0x800020fc]<br>0x93bbffef|- rs1_val == 0x7C9DDFFF and imm_val == 0x1B #nosat<br>                                                                   |[0x80000468]:rori<br> [0x8000046c]:sw<br> |
|  61|[0x80002100]<br>0xfffd6c46|- rs1_val == 0x5B11BFFF and imm_val == 0x0E #nosat<br>                                                                   |[0x80000478]:rori<br> [0x8000047c]:sw<br> |
|  62|[0x80002104]<br>0x7fffcb34|- rs1_val == 0xCB347FFF and imm_val == 0x10 #nosat<br>                                                                   |[0x80000488]:rori<br> [0x8000048c]:sw<br> |
|  63|[0x80002108]<br>0xfff306ff|- rs1_val == 0xF306FFFF and imm_val == 0x08 #nosat<br>                                                                   |[0x80000498]:rori<br> [0x8000049c]:sw<br> |
|  64|[0x8000210c]<br>0xd4bffff7|- rs1_val == 0xBEA5FFFF and imm_val == 0x1B #nosat<br>                                                                   |[0x800004a8]:rori<br> [0x800004ac]:sw<br> |
|  65|[0x80002110]<br>0x38bffffd|- rs1_val == 0xD38BFFFF and imm_val == 0x1C #nosat<br>                                                                   |[0x800004b8]:rori<br> [0x800004bc]:sw<br> |
|  66|[0x80002114]<br>0xffff15b7|- rs1_val == 0x15B7FFFF and imm_val == 0x10 #nosat<br>                                                                   |[0x800004c8]:rori<br> [0x800004cc]:sw<br> |
|  67|[0x80002118]<br>0xffeac7ff|- rs1_val == 0xD58FFFFF and imm_val == 0x09 #nosat<br>                                                                   |[0x800004d8]:rori<br> [0x800004dc]:sw<br> |
|  68|[0x8000211c]<br>0xffffff0f|- rs1_val == 0xFE1FFFFF and imm_val == 0x11 #nosat<br>                                                                   |[0x800004e8]:rori<br> [0x800004ec]:sw<br> |
|  69|[0x80002120]<br>0x203fffff|- rs1_val == 0x203FFFFF and imm_val == 0x00 #nosat<br>                                                                   |[0x800004f8]:rori<br> [0x800004fc]:sw<br> |
|  70|[0x80002124]<br>0xefffffe0|- rs1_val == 0x077FFFFF and imm_val == 0x1B #nosat<br>                                                                   |[0x80000508]:rori<br> [0x8000050c]:sw<br> |
|  71|[0x80002128]<br>0xffffefbf|- rs1_val == 0xBEFFFFFF and imm_val == 0x12 #nosat<br>                                                                   |[0x80000518]:rori<br> [0x8000051c]:sw<br> |
|  72|[0x8000212c]<br>0xfffc4fff|- rs1_val == 0x89FFFFFF and imm_val == 0x0D #nosat<br>                                                                   |[0x80000528]:rori<br> [0x8000052c]:sw<br> |
|  73|[0x80002130]<br>0xf23fffff|- rs1_val == 0x23FFFFFF and imm_val == 0x04 #nosat<br>                                                                   |[0x80000538]:rori<br> [0x8000053c]:sw<br> |
|  74|[0x80002134]<br>0xfff4ffff|- rs1_val == 0xA7FFFFFF and imm_val == 0x0B #nosat<br>                                                                   |[0x80000548]:rori<br> [0x8000054c]:sw<br> |
|  75|[0x80002138]<br>0xffff3fff|- rs1_val == 0xCFFFFFFF and imm_val == 0x0E #nosat<br>                                                                   |[0x80000558]:rori<br> [0x8000055c]:sw<br> |
|  76|[0x8000213c]<br>0xffcfffff|- rs1_val == 0x9FFFFFFF and imm_val == 0x09 #nosat<br>                                                                   |[0x80000568]:rori<br> [0x8000056c]:sw<br> |
|  77|[0x80002140]<br>0xfffeffff|- rs1_val == 0xBFFFFFFF and imm_val == 0x0E #nosat<br>                                                                   |[0x80000578]:rori<br> [0x8000057c]:sw<br> |
|  78|[0x80002144]<br>0xffefffff|- rs1_val == 0x7FFFFFFF and imm_val == 0x0B #nosat<br>                                                                   |[0x80000588]:rori<br> [0x8000058c]:sw<br> |
|  79|[0x80002148]<br>0xffffffff|- rs1_val == 0xFFFFFFFF and imm_val == 0x12 #nosat<br>                                                                   |[0x80000594]:rori<br> [0x80000598]:sw<br> |
|  80|[0x8000214c]<br>0xc9e2a262|- imm_val == 0x1B and rs1_val == 0x164F1513 #nosat<br>                                                                   |[0x800005a4]:rori<br> [0x800005a8]:sw<br> |
|  81|[0x80002150]<br>0x7956636c|- imm_val == 0x09 and rs1_val == 0xACC6D8F2 #nosat<br>                                                                   |[0x800005b4]:rori<br> [0x800005b8]:sw<br> |
|  82|[0x80002154]<br>0x06848fd4|- imm_val == 0x06 and rs1_val == 0xA123F501 #nosat<br>                                                                   |[0x800005c4]:rori<br> [0x800005c8]:sw<br> |
|  83|[0x80002158]<br>0x6d5e9a87|- imm_val == 0x02 and rs1_val == 0xB57A6A1D #nosat<br>                                                                   |[0x800005d4]:rori<br> [0x800005d8]:sw<br> |
|  84|[0x8000215c]<br>0xf483ca6f|- imm_val == 0x01 and rs1_val == 0xE90794DF #nosat<br>                                                                   |[0x800005e4]:rori<br> [0x800005e8]:sw<br> |
|  85|[0x80002160]<br>0xaf5570ee|- imm_val == 0x00 and rs1_val == 0xAF5570EE #nosat<br>                                                                   |[0x800005f4]:rori<br> [0x800005f8]:sw<br> |
|  86|[0x80002164]<br>0x7aa1220f|- rs1_val == 0xF542441E and imm_val == 0x01 #nosat<br>                                                                   |[0x80000604]:rori<br> [0x80000608]:sw<br> |
|  87|[0x80002168]<br>0xb62f28d1|- rs1_val == 0x62F28D1B and imm_val == 0x04 #nosat<br>                                                                   |[0x80000614]:rori<br> [0x80000618]:sw<br> |
|  88|[0x8000216c]<br>0x6d174e2e|- rs1_val == 0x38B9B45D and imm_val == 0x12 #nosat<br>                                                                   |[0x80000624]:rori<br> [0x80000628]:sw<br> |
|  89|[0x80002170]<br>0x485a0268|- rs1_val == 0x16809A12 and imm_val == 0x06 #nosat<br>                                                                   |[0x80000634]:rori<br> [0x80000638]:sw<br> |
|  90|[0x80002174]<br>0x4020a85d|- rs1_val == 0x082A1750 and imm_val == 0x06 #nosat<br>                                                                   |[0x80000644]:rori<br> [0x80000648]:sw<br> |
|  91|[0x80002178]<br>0xb079dd25|- rs1_val == 0x079DD25B and imm_val == 0x04 #nosat<br>                                                                   |[0x80000654]:rori<br> [0x80000658]:sw<br> |
|  92|[0x8000217c]<br>0x1a1ec0d3|- rs1_val == 0x034C687B and imm_val == 0x12 #nosat<br>                                                                   |[0x80000664]:rori<br> [0x80000668]:sw<br> |
|  93|[0x80002180]<br>0x07f406d8|- rs1_val == 0x01B601FD and imm_val == 0x0E #nosat<br>                                                                   |[0x80000674]:rori<br> [0x80000678]:sw<br> |
|  94|[0x80002184]<br>0x02fd00b3|- rs1_val == 0x00B302FD and imm_val == 0x10 #nosat<br>                                                                   |[0x80000684]:rori<br> [0x80000688]:sw<br> |
|  95|[0x80002188]<br>0x98031535|- rs1_val == 0x0062A6B3 and imm_val == 0x05 #nosat<br>                                                                   |[0x80000694]:rori<br> [0x80000698]:sw<br> |
|  96|[0x8000218c]<br>0xc91c0019|- rs1_val == 0x00339238 and imm_val == 0x11 #nosat<br>                                                                   |[0x800006a4]:rori<br> [0x800006a8]:sw<br> |
|  97|[0x80002190]<br>0x8000b257|- rs1_val == 0x00164AF0 and imm_val == 0x05 #nosat<br>                                                                   |[0x800006b4]:rori<br> [0x800006b8]:sw<br> |
|  98|[0x80002194]<br>0x0009222a|- rs1_val == 0x0009222A and imm_val == 0x00 #nosat<br>                                                                   |[0x800006c4]:rori<br> [0x800006c8]:sw<br> |
|  99|[0x80002198]<br>0x8a138001|- rs1_val == 0x0006284E and imm_val == 0x12 #nosat<br>                                                                   |[0x800006d4]:rori<br> [0x800006d8]:sw<br> |
| 100|[0x8000219c]<br>0x4584000d|- rs1_val == 0x00035161 and imm_val == 0x0E #nosat<br>                                                                   |[0x800006e4]:rori<br> [0x800006e8]:sw<br> |
| 101|[0x800021a0]<br>0xe2400011|- rs1_val == 0x00011E24 and imm_val == 0x0C #nosat<br>                                                                   |[0x800006f4]:rori<br> [0x800006f8]:sw<br> |
| 102|[0x800021a4]<br>0x000f6140|- rs1_val == 0x0000F614 and imm_val == 0x1C #nosat<br>                                                                   |[0x80000704]:rori<br> [0x80000708]:sw<br> |
| 103|[0x800021a8]<br>0x0002e608|- rs1_val == 0x00005CC1 and imm_val == 0x1D #nosat<br>                                                                   |[0x80000714]:rori<br> [0x80000718]:sw<br> |
| 104|[0x800021ac]<br>0x00001913|- rs1_val == 0x00003226 and imm_val == 0x01 #nosat<br>                                                                   |[0x80000724]:rori<br> [0x80000728]:sw<br> |
| 105|[0x800021b0]<br>0x3a180000|- rs1_val == 0x00001D0C and imm_val == 0x0F #nosat<br>                                                                   |[0x80000734]:rori<br> [0x80000738]:sw<br> |
| 106|[0x800021b4]<br>0x00000375|- rs1_val == 0x00000DD4 and imm_val == 0x02 #nosat<br>                                                                   |[0x80000744]:rori<br> [0x80000748]:sw<br> |
| 107|[0x800021b8]<br>0x1000005d|- rs1_val == 0x000005D1 and imm_val == 0x04 #nosat<br>                                                                   |[0x80000750]:rori<br> [0x80000754]:sw<br> |
| 108|[0x800021bc]<br>0x000002a7|- rs1_val == 0x000002A7 and imm_val == 0x00 #nosat<br>                                                                   |[0x8000075c]:rori<br> [0x80000760]:sw<br> |
| 109|[0x800021c0]<br>0x65c00000|- rs1_val == 0x00000197 and imm_val == 0x0A #nosat<br>                                                                   |[0x80000768]:rori<br> [0x8000076c]:sw<br> |
| 110|[0x800021c4]<br>0x00000b90|- rs1_val == 0x000000B9 and imm_val == 0x1C #nosat<br>                                                                   |[0x80000774]:rori<br> [0x80000778]:sw<br> |
| 111|[0x800021c8]<br>0x00002600|- rs1_val == 0x0000004C and imm_val == 0x19 #nosat<br>                                                                   |[0x80000780]:rori<br> [0x80000784]:sw<br> |
| 112|[0x800021cc]<br>0x80000009|- rs1_val == 0x00000026 and imm_val == 0x02 #nosat<br>                                                                   |[0x8000078c]:rori<br> [0x80000790]:sw<br> |
| 113|[0x800021d0]<br>0x09000000|- rs1_val == 0x00000012 and imm_val == 0x09 #nosat<br>                                                                   |[0x80000798]:rori<br> [0x8000079c]:sw<br> |
| 114|[0x800021d4]<br>0x000000c0|- rs1_val == 0x0000000C and imm_val == 0x1C #nosat<br>                                                                   |[0x800007a4]:rori<br> [0x800007a8]:sw<br> |
| 115|[0x800021d8]<br>0x00c00000|- rs1_val == 0x00000006 and imm_val == 0x0B #nosat<br>                                                                   |[0x800007b0]:rori<br> [0x800007b4]:sw<br> |
| 116|[0x800021dc]<br>0x0000000c|- rs1_val == 0x00000003 and imm_val == 0x1E #nosat<br>                                                                   |[0x800007bc]:rori<br> [0x800007c0]:sw<br> |
| 117|[0x800021e0]<br>0x00100000|- rs1_val == 0x00000001 and imm_val == 0x0C #nosat<br>                                                                   |[0x800007c8]:rori<br> [0x800007cc]:sw<br> |
| 118|[0x800021e4]<br>0x00000000|- rs1_val == 0x00000000 and imm_val == 0x1D #nosat<br>                                                                   |[0x800007d4]:rori<br> [0x800007d8]:sw<br> |
| 119|[0x800021e8]<br>0x5432b286|- imm_val == 0x0F and rs1_val == 0x59432A19 #nosat<br>                                                                   |[0x800007e4]:rori<br> [0x800007e8]:sw<br> |
| 120|[0x800021ec]<br>0x6a0ded9d|- imm_val == 0x17 and rs1_val == 0xCEB506F6 #nosat<br>                                                                   |[0x800007f4]:rori<br> [0x800007f8]:sw<br> |
| 121|[0x800021f0]<br>0xec6148c5|- imm_val == 0x18 and rs1_val == 0xC5EC6148 #nosat<br>                                                                   |[0x80000804]:rori<br> [0x80000808]:sw<br> |
| 122|[0x800021f4]<br>0xcf78c2bc|- imm_val == 0x1D and rs1_val == 0x99EF1857 #nosat<br>                                                                   |[0x80000814]:rori<br> [0x80000818]:sw<br> |
| 123|[0x800021f8]<br>0x52e471e4|- imm_val == 0x1E and rs1_val == 0x14B91C79 #nosat<br>                                                                   |[0x80000824]:rori<br> [0x80000828]:sw<br> |
| 124|[0x800021fc]<br>0x12e7d138|- imm_val == 0x1F and rs1_val == 0x0973E89C #nosat<br>                                                                   |[0x80000834]:rori<br> [0x80000838]:sw<br> |
| 125|[0x80002200]<br>0x10ef6e5e|- rs1_val == 0x7843BDB9 and imm_val == 0x1A #nosat<br>                                                                   |[0x80000844]:rori<br> [0x80000848]:sw<br> |
| 126|[0x80002204]<br>0x27425e63|- rs1_val == 0x9798C9D0 and imm_val == 0x0E #nosat<br>                                                                   |[0x80000854]:rori<br> [0x80000858]:sw<br> |
| 127|[0x80002208]<br>0x5db60535|- rs1_val == 0xD814D576 and imm_val == 0x0A #nosat<br>                                                                   |[0x80000864]:rori<br> [0x80000868]:sw<br> |
| 128|[0x8000220c]<br>0x37559e0a|- rs1_val == 0xE0A37559 and imm_val == 0x14 #nosat<br>                                                                   |[0x80000874]:rori<br> [0x80000878]:sw<br> |
| 129|[0x80002210]<br>0xde7ee663|- rs1_val == 0xF79FB998 and imm_val == 0x1E #nosat<br>                                                                   |[0x80000884]:rori<br> [0x80000888]:sw<br> |
| 130|[0x80002214]<br>0x87a2561f|- rs1_val == 0xF87A2561 and imm_val == 0x1C #nosat<br>                                                                   |[0x80000894]:rori<br> [0x80000898]:sw<br> |
| 131|[0x80002218]<br>0xdafffb4a|- rs1_val == 0xFDA56D7F and imm_val == 0x0F #nosat<br>                                                                   |[0x800008a4]:rori<br> [0x800008a8]:sw<br> |
| 132|[0x8000221c]<br>0x9bd56bfc|- rs1_val == 0xFE4DEAB5 and imm_val == 0x17 #nosat<br>                                                                   |[0x800008b4]:rori<br> [0x800008b8]:sw<br> |
| 133|[0x80002220]<br>0x0eb77fed|- rs1_val == 0xFF6875BB and imm_val == 0x13 #nosat<br>                                                                   |[0x800008c4]:rori<br> [0x800008c8]:sw<br> |
| 134|[0x80002224]<br>0xe4ff93d0|- rs1_val == 0xFF93D0E4 and imm_val == 0x08 #nosat<br>                                                                   |[0x800008d4]:rori<br> [0x800008d8]:sw<br> |
| 135|[0x80002228]<br>0xffd4aa23|- rs1_val == 0xFFD4AA23 and imm_val == 0x00 #nosat<br>                                                                   |[0x800008e4]:rori<br> [0x800008e8]:sw<br> |
| 136|[0x8000222c]<br>0xe2fc91ff|- rs1_val == 0xFFE2FC91 and imm_val == 0x18 #nosat<br>                                                                   |[0x800008f4]:rori<br> [0x800008f8]:sw<br> |
| 137|[0x80002230]<br>0xff1d2a0f|- rs1_val == 0xFFF1D2A0 and imm_val == 0x1C #nosat<br>                                                                   |[0x80000904]:rori<br> [0x80000908]:sw<br> |
| 138|[0x80002234]<br>0x09a3fff2|- rs1_val == 0xFFF904D1 and imm_val == 0x0F #nosat<br>                                                                   |[0x80000914]:rori<br> [0x80000918]:sw<br> |
| 139|[0x80002238]<br>0xffe6d85f|- rs1_val == 0xFFFCDB0B and imm_val == 0x1D #nosat<br>                                                                   |[0x80000924]:rori<br> [0x80000928]:sw<br> |
| 140|[0x8000223c]<br>0xfd8569ff|- rs1_val == 0xFFFEC2B4 and imm_val == 0x17 #nosat<br>                                                                   |[0x80000934]:rori<br> [0x80000938]:sw<br> |
| 141|[0x80002240]<br>0xe3cbffff|- rs1_val == 0xFFFF1E5F and imm_val == 0x13 #nosat<br>                                                                   |[0x80000944]:rori<br> [0x80000948]:sw<br> |
| 142|[0x80002244]<br>0x5ddffff4|- rs1_val == 0xFFFFA2EE and imm_val == 0x0B #nosat<br>                                                                   |[0x80000954]:rori<br> [0x80000958]:sw<br> |
| 143|[0x80002248]<br>0xd410ffff|- rs1_val == 0xFFFFD410 and imm_val == 0x10 #nosat<br>                                                                   |[0x80000964]:rori<br> [0x80000968]:sw<br> |
| 144|[0x8000224c]<br>0xfffb82bf|- rs1_val == 0xFFFFEE0A and imm_val == 0x1A #nosat<br>                                                                   |[0x80000974]:rori<br> [0x80000978]:sw<br> |
| 145|[0x80002250]<br>0xffccabff|- rs1_val == 0xFFFFF32A and imm_val == 0x16 #nosat<br>                                                                   |[0x80000984]:rori<br> [0x80000988]:sw<br> |
| 146|[0x80002254]<br>0x84fffffb|- rs1_val == 0xFFFFFB84 and imm_val == 0x08 #nosat<br>                                                                   |[0x80000990]:rori<br> [0x80000994]:sw<br> |
| 147|[0x80002258]<br>0xffff077f|- rs1_val == 0xFFFFFC1D and imm_val == 0x1A #nosat<br>                                                                   |[0x8000099c]:rori<br> [0x800009a0]:sw<br> |
| 148|[0x8000225c]<br>0xfffc63ff|- rs1_val == 0xFFFFFE31 and imm_val == 0x17 #nosat<br>                                                                   |[0x800009a8]:rori<br> [0x800009ac]:sw<br> |
| 149|[0x80002260]<br>0x4ffffff4|- rs1_val == 0xFFFFFF44 and imm_val == 0x04 #nosat<br>                                                                   |[0x800009b4]:rori<br> [0x800009b8]:sw<br> |
| 150|[0x80002264]<br>0xffffff75|- rs1_val == 0xFFFFFFBA and imm_val == 0x1F #nosat<br>                                                                   |[0x800009c0]:rori<br> [0x800009c4]:sw<br> |
| 151|[0x80002268]<br>0xf1bfffff|- rs1_val == 0xFFFFFFC6 and imm_val == 0x0A #nosat<br>                                                                   |[0x800009cc]:rori<br> [0x800009d0]:sw<br> |
| 152|[0x8000226c]<br>0xfff47fff|- rs1_val == 0xFFFFFFE8 and imm_val == 0x11 #nosat<br>                                                                   |[0x800009d8]:rori<br> [0x800009dc]:sw<br> |
| 153|[0x80002270]<br>0xffffffe5|- rs1_val == 0xFFFFFFF2 and imm_val == 0x1F #nosat<br>                                                                   |[0x800009e4]:rori<br> [0x800009e8]:sw<br> |
| 154|[0x80002274]<br>0xffffffcf|- rs1_val == 0xFFFFFFF9 and imm_val == 0x1D #nosat<br>                                                                   |[0x800009f0]:rori<br> [0x800009f4]:sw<br> |
| 155|[0x80002278]<br>0xfffffffd|- rs1_val == 0xFFFFFFFD and imm_val == 0x00 #nosat<br>                                                                   |[0x800009fc]:rori<br> [0x80000a00]:sw<br> |
| 156|[0x8000227c]<br>0xfffffffb|- rs1_val == 0xFFFFFFFE and imm_val == 0x1E #nosat<br>                                                                   |[0x80000a08]:rori<br> [0x80000a0c]:sw<br> |
| 157|[0x80002280]<br>0xa880000a|- rs1_val == 0x55440000 and imm_val == 0x1B #nosat<br>                                                                   |[0x80000a14]:rori<br> [0x80000a18]:sw<br> |
