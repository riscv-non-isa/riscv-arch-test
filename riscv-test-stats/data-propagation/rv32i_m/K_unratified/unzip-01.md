
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80002010', '0x80002220', '132 words')]      |
| COV_LABELS                | unzip      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/unzip-01.S/ref.S    |
| Total Number of coverpoints| 202     |
| Total Coverpoints Hit     | 197      |
| Total Signature Updates   | 132      |
| STAT1                     | 131      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000888]:unshfli
      [0x8000088c]:sw
 -- Signature Address: 0x8000221c Data: 0xf1006680
 -- Redundant Coverpoints hit by the op
      - opcode : unshfli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0xBE164000 #nosat






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

|s.no|        signature         |                                              coverpoints                                               |                    code                     |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------|---------------------------------------------|
|   1|[0x80002010]<br>0xffffffff|- opcode : unshfli<br> - rs1 : x13<br> - rd : x6<br> - rs1 != rd<br> - rs1_val == 0xFFFFFFFF #nosat<br> |[0x80000104]:unshfli<br> [0x80000108]:sw<br> |
|   2|[0x80002014]<br>0x00000000|- rs1 : x2<br> - rd : x2<br> - rs1 == rd<br> - rs1_val == 0x00000000 #nosat<br>                         |[0x80000110]:unshfli<br> [0x80000114]:sw<br> |
|   3|[0x80002018]<br>0x80000000|- rs1 : x27<br> - rd : x29<br> - rs1_val == 0x80000000 #nosat<br>                                       |[0x8000011c]:unshfli<br> [0x80000120]:sw<br> |
|   4|[0x8000201c]<br>0x00008000|- rs1 : x24<br> - rd : x1<br> - rs1_val == 0x40000000 #nosat<br>                                        |[0x80000128]:unshfli<br> [0x8000012c]:sw<br> |
|   5|[0x80002020]<br>0xc0000000|- rs1 : x28<br> - rd : x10<br> - rs1_val == 0xA0000000 #nosat<br>                                       |[0x80000134]:unshfli<br> [0x80000138]:sw<br> |
|   6|[0x80002024]<br>0x80004000|- rs1 : x30<br> - rd : x3<br> - rs1_val == 0x90000000 #nosat<br>                                        |[0x80000140]:unshfli<br> [0x80000144]:sw<br> |
|   7|[0x80002028]<br>0xa0008000|- rs1 : x25<br> - rd : x12<br> - rs1_val == 0xC8000000 #nosat<br>                                       |[0x8000014c]:unshfli<br> [0x80000150]:sw<br> |
|   8|[0x8000202c]<br>0x60002000|- rs1 : x26<br> - rd : x15<br> - rs1_val == 0x2C000000 #nosat<br>                                       |[0x80000158]:unshfli<br> [0x8000015c]:sw<br> |
|   9|[0x80002030]<br>0xf0002000|- rs1 : x8<br> - rd : x31<br> - rs1_val == 0xAE000000 #nosat<br>                                        |[0x80000164]:unshfli<br> [0x80000168]:sw<br> |
|  10|[0x80002034]<br>0x10009000|- rs1 : x18<br> - rd : x16<br> - rs1_val == 0x43000000 #nosat<br>                                       |[0x80000170]:unshfli<br> [0x80000174]:sw<br> |
|  11|[0x80002038]<br>0xc800d000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 0xF1800000 #nosat<br>                                        |[0x8000017c]:unshfli<br> [0x80000180]:sw<br> |
|  12|[0x8000203c]<br>0xf8002800|- rs1 : x6<br> - rd : x26<br> - rs1_val == 0xAEC00000 #nosat<br>                                        |[0x80000188]:unshfli<br> [0x8000018c]:sw<br> |
|  13|[0x80002040]<br>0xa4005000|- rs1 : x15<br> - rd : x11<br> - rs1_val == 0x99200000 #nosat<br>                                       |[0x80000194]:unshfli<br> [0x80000198]:sw<br> |
|  14|[0x80002044]<br>0xc4004c00|- rs1 : x21<br> - rd : x24<br> - rs1_val == 0xB0700000 #nosat<br>                                       |[0x800001a0]:unshfli<br> [0x800001a4]:sw<br> |
|  15|[0x80002048]<br>0x4a007000|- rs1 : x3<br> - rd : x17<br> - rs1_val == 0x35880000 #nosat<br>                                        |[0x800001ac]:unshfli<br> [0x800001b0]:sw<br> |
|  16|[0x8000204c]<br>0x3a00ca00|- rs1 : x31<br> - rd : x7<br> - rs1_val == 0x5ACC0000 #nosat<br>                                        |[0x800001b8]:unshfli<br> [0x800001bc]:sw<br> |
|  17|[0x80002050]<br>0x00000000|- rs1 : x0<br> - rd : x4<br>                                                                            |[0x800001c4]:unshfli<br> [0x800001c8]:sw<br> |
|  18|[0x80002054]<br>0xf2002700|- rs1 : x7<br> - rd : x28<br> - rs1_val == 0xAE1D0000 #nosat<br>                                        |[0x800001d0]:unshfli<br> [0x800001d4]:sw<br> |
|  19|[0x80002058]<br>0x7d80a500|- rs1 : x19<br> - rd : x5<br> - rs1_val == 0x6EB38000 #nosat<br>                                        |[0x800001dc]:unshfli<br> [0x800001e0]:sw<br> |
|  20|[0x8000205c]<br>0x00000000|- rs1 : x22<br> - rd : x0<br> - rs1_val == 0xBE164000 #nosat<br>                                        |[0x800001e8]:unshfli<br> [0x800001ec]:sw<br> |
|  21|[0x80002060]<br>0xacc0bd00|- rs1 : x1<br> - rd : x27<br> - rs1_val == 0xCDF1A000 #nosat<br>                                        |[0x800001fc]:unshfli<br> [0x80000200]:sw<br> |
|  22|[0x80002064]<br>0x82800bc0|- rs1 : x11<br> - rd : x21<br> - rs1_val == 0x804DD000 #nosat<br>                                       |[0x80000208]:unshfli<br> [0x8000020c]:sw<br> |
|  23|[0x80002068]<br>0x63207b40|- rs1 : x4<br> - rd : x30<br> - rs1_val == 0x3D4F1800 #nosat<br>                                        |[0x80000218]:unshfli<br> [0x8000021c]:sw<br> |
|  24|[0x8000206c]<br>0xfc2072a0|- rs1 : x29<br> - rd : x13<br> - rs1_val == 0xBFA44C00 #nosat<br>                                       |[0x80000228]:unshfli<br> [0x8000022c]:sw<br> |
|  25|[0x80002070]<br>0x00f0bac0|- rs1 : x14<br> - rd : x22<br> - rs1_val == 0x4544FA00 #nosat<br>                                       |[0x80000238]:unshfli<br> [0x8000023c]:sw<br> |
|  26|[0x80002074]<br>0x9fd0b7d0|- rs1 : x5<br> - rd : x8<br> - rs1_val == 0xC7BFF300 #nosat<br>                                         |[0x80000248]:unshfli<br> [0x8000024c]:sw<br> |
|  27|[0x80002078]<br>0xaa08d700|- rs1 : x17<br> - rd : x19<br> - rs1_val == 0xD99D0080 #nosat<br>                                       |[0x80000258]:unshfli<br> [0x8000025c]:sw<br> |
|  28|[0x8000207c]<br>0x42680f58|- rs1 : x23<br> - rd : x20<br> - rs1_val == 0x205D39C0 #nosat<br>                                       |[0x80000268]:unshfli<br> [0x8000026c]:sw<br> |
|  29|[0x80002080]<br>0x443c5d50|- rs1 : x12<br> - rd : x18<br> - rs1_val == 0x31711BA0 #nosat<br>                                       |[0x80000278]:unshfli<br> [0x8000027c]:sw<br> |
|  30|[0x80002084]<br>0xeb1c1634|- rs1 : x9<br> - rd : x14<br> - rs1_val == 0xA99E07B0 #nosat<br>                                        |[0x80000288]:unshfli<br> [0x8000028c]:sw<br> |
|  31|[0x80002088]<br>0x7ef65088|- rs1 : x16<br> - rd : x23<br> - rs1_val == 0x3BA8EA68 #nosat<br>                                       |[0x80000298]:unshfli<br> [0x8000029c]:sw<br> |
|  32|[0x8000208c]<br>0xc06c18c6|- rs1 : x20<br> - rd : x25<br> - rs1_val == 0xA14078B4 #nosat<br>                                       |[0x800002a8]:unshfli<br> [0x800002ac]:sw<br> |
|  33|[0x80002090]<br>0xaec9156e|- rs1_val == 0x89B9B4D6 #nosat<br>                                                                      |[0x800002b8]:unshfli<br> [0x800002bc]:sw<br> |
|  34|[0x80002094]<br>0x665bdfef|- rs1_val == 0x797D76DF #nosat<br>                                                                      |[0x800002c8]:unshfli<br> [0x800002cc]:sw<br> |
|  35|[0x80002098]<br>0x1c9215fa|- rs1_val == 0x03B1D74C #nosat<br>                                                                      |[0x800002d8]:unshfli<br> [0x800002dc]:sw<br> |
|  36|[0x8000209c]<br>0xf638ffe9|- rs1_val == 0xFF7D5EC1 #nosat<br>                                                                      |[0x800002e8]:unshfli<br> [0x800002ec]:sw<br> |
|  37|[0x800020a0]<br>0xb8755861|- rs1_val == 0x9BC03E23 #nosat<br>                                                                      |[0x800002f8]:unshfli<br> [0x800002fc]:sw<br> |
|  38|[0x800020a4]<br>0xf469331b|- rs1_val == 0xAF2529C7 #nosat<br>                                                                      |[0x80000308]:unshfli<br> [0x8000030c]:sw<br> |
|  39|[0x800020a8]<br>0x94e7ec03|- rs1_val == 0xD670A82F #nosat<br>                                                                      |[0x80000318]:unshfli<br> [0x8000031c]:sw<br> |
|  40|[0x800020ac]<br>0x40fb0ec7|- rs1_val == 0x2054FA9F #nosat<br>                                                                      |[0x80000328]:unshfli<br> [0x8000032c]:sw<br> |
|  41|[0x800020b0]<br>0x7627ae27|- rs1_val == 0x6E7C0C3F #nosat<br>                                                                      |[0x80000338]:unshfli<br> [0x8000033c]:sw<br> |
|  42|[0x800020b4]<br>0x1e3732ff|- rs1_val == 0x07AC5F7F #nosat<br>                                                                      |[0x80000348]:unshfli<br> [0x8000034c]:sw<br> |
|  43|[0x800020b8]<br>0x37cf9a0f|- rs1_val == 0x4B6EA0FF #nosat<br>                                                                      |[0x80000358]:unshfli<br> [0x8000035c]:sw<br> |
|  44|[0x800020bc]<br>0xfc4f623f|- rs1_val == 0xBEA425FF #nosat<br>                                                                      |[0x80000368]:unshfli<br> [0x8000036c]:sw<br> |
|  45|[0x800020c0]<br>0x59df681f|- rs1_val == 0x36C2A3FF #nosat<br>                                                                      |[0x80000378]:unshfli<br> [0x8000037c]:sw<br> |
|  46|[0x800020c4]<br>0xa8dfc37f|- rs1_val == 0xD885B7FF #nosat<br>                                                                      |[0x80000388]:unshfli<br> [0x8000038c]:sw<br> |
|  47|[0x800020c8]<br>0xa07f023f|- rs1_val == 0x88042FFF #nosat<br>                                                                      |[0x80000398]:unshfli<br> [0x8000039c]:sw<br> |
|  48|[0x800020cc]<br>0x14bf417f|- rs1_val == 0x12219FFF #nosat<br>                                                                      |[0x800003a8]:unshfli<br> [0x800003ac]:sw<br> |
|  49|[0x800020d0]<br>0x40ff1f7f|- rs1_val == 0x2155BFFF #nosat<br>                                                                      |[0x800003b8]:unshfli<br> [0x800003bc]:sw<br> |
|  50|[0x800020d4]<br>0x7d7f3fff|- rs1_val == 0x2FF77FFF #nosat<br>                                                                      |[0x800003c8]:unshfli<br> [0x800003cc]:sw<br> |
|  51|[0x800020d8]<br>0xfeff58ff|- rs1_val == 0xBBE8FFFF #nosat<br>                                                                      |[0x800003d8]:unshfli<br> [0x800003dc]:sw<br> |
|  52|[0x800020dc]<br>0xc0ff27ff|- rs1_val == 0xA415FFFF #nosat<br>                                                                      |[0x800003e8]:unshfli<br> [0x800003ec]:sw<br> |
|  53|[0x800020e0]<br>0x6dff51ff|- rs1_val == 0x39A3FFFF #nosat<br>                                                                      |[0x800003f8]:unshfli<br> [0x800003fc]:sw<br> |
|  54|[0x800020e4]<br>0xb9ffe3ff|- rs1_val == 0xDE87FFFF #nosat<br>                                                                      |[0x80000408]:unshfli<br> [0x8000040c]:sw<br> |
|  55|[0x800020e8]<br>0x4fff33ff|- rs1_val == 0x25AFFFFF #nosat<br>                                                                      |[0x80000418]:unshfli<br> [0x8000041c]:sw<br> |
|  56|[0x800020ec]<br>0xfbff07ff|- rs1_val == 0xAA9FFFFF #nosat<br>                                                                      |[0x80000428]:unshfli<br> [0x8000042c]:sw<br> |
|  57|[0x800020f0]<br>0x77ff57ff|- rs1_val == 0x3B3FFFFF #nosat<br>                                                                      |[0x80000438]:unshfli<br> [0x8000043c]:sw<br> |
|  58|[0x800020f4]<br>0xd7ff2fff|- rs1_val == 0xA67FFFFF #nosat<br>                                                                      |[0x80000448]:unshfli<br> [0x8000044c]:sw<br> |
|  59|[0x800020f8]<br>0x7fff2fff|- rs1_val == 0x2EFFFFFF #nosat<br>                                                                      |[0x80000458]:unshfli<br> [0x8000045c]:sw<br> |
|  60|[0x800020fc]<br>0xcfff9fff|- rs1_val == 0xE1FFFFFF #nosat<br>                                                                      |[0x80000468]:unshfli<br> [0x8000046c]:sw<br> |
|  61|[0x80002100]<br>0xbfffdfff|- rs1_val == 0xDBFFFFFF #nosat<br>                                                                      |[0x80000478]:unshfli<br> [0x8000047c]:sw<br> |
|  62|[0x80002104]<br>0x9fffbfff|- rs1_val == 0xC7FFFFFF #nosat<br>                                                                      |[0x80000488]:unshfli<br> [0x8000048c]:sw<br> |
|  63|[0x80002108]<br>0xffff3fff|- rs1_val == 0xAFFFFFFF #nosat<br>                                                                      |[0x80000498]:unshfli<br> [0x8000049c]:sw<br> |
|  64|[0x8000210c]<br>0xbfffffff|- rs1_val == 0xDFFFFFFF #nosat<br>                                                                      |[0x800004a8]:unshfli<br> [0x800004ac]:sw<br> |
|  65|[0x80002110]<br>0xffff7fff|- rs1_val == 0xBFFFFFFF #nosat<br>                                                                      |[0x800004b8]:unshfli<br> [0x800004bc]:sw<br> |
|  66|[0x80002114]<br>0x7fffffff|- rs1_val == 0x7FFFFFFF #nosat<br>                                                                      |[0x800004c8]:unshfli<br> [0x800004cc]:sw<br> |
|  67|[0x80002118]<br>0xf414dd37|- rs1_val == 0xFB710735 #nosat<br>                                                                      |[0x800004d8]:unshfli<br> [0x800004dc]:sw<br> |
|  68|[0x8000211c]<br>0x279aca2a|- rs1_val == 0x586E86CC #nosat<br>                                                                      |[0x800004e8]:unshfli<br> [0x800004ec]:sw<br> |
|  69|[0x80002120]<br>0x7ef60418|- rs1_val == 0x2AB8AB68 #nosat<br>                                                                      |[0x800004f8]:unshfli<br> [0x800004fc]:sw<br> |
|  70|[0x80002124]<br>0x177549f9|- rs1_val == 0x126B7F63 #nosat<br>                                                                      |[0x80000508]:unshfli<br> [0x8000050c]:sw<br> |
|  71|[0x80002128]<br>0x28761330|- rs1_val == 0x09852F28 #nosat<br>                                                                      |[0x80000518]:unshfli<br> [0x8000051c]:sw<br> |
|  72|[0x8000212c]<br>0x1fe83bd9|- rs1_val == 0x07EFF9C1 #nosat<br>                                                                      |[0x80000528]:unshfli<br> [0x8000052c]:sw<br> |
|  73|[0x80002130]<br>0x10a01af8|- rs1_val == 0x0344DD40 #nosat<br>                                                                      |[0x80000538]:unshfli<br> [0x8000053c]:sw<br> |
|  74|[0x80002134]<br>0x0d841bd8|- rs1_val == 0x01E7D160 #nosat<br>                                                                      |[0x80000548]:unshfli<br> [0x8000054c]:sw<br> |
|  75|[0x80002138]<br>0x0d750632|- rs1_val == 0x00B62F26 #nosat<br>                                                                      |[0x80000558]:unshfli<br> [0x8000055c]:sw<br> |
|  76|[0x8000213c]<br>0x02fa0a37|- rs1_val == 0x004CAF9D #nosat<br>                                                                      |[0x80000568]:unshfli<br> [0x8000056c]:sw<br> |
|  77|[0x80002140]<br>0x07c90160|- rs1_val == 0x002BB482 #nosat<br>                                                                      |[0x80000578]:unshfli<br> [0x8000057c]:sw<br> |
|  78|[0x80002144]<br>0x01e905bb|- rs1_val == 0x0013EDC7 #nosat<br>                                                                      |[0x80000588]:unshfli<br> [0x8000058c]:sw<br> |
|  79|[0x80002148]<br>0x026800d6|- rs1_val == 0x00087994 #nosat<br>                                                                      |[0x80000598]:unshfli<br> [0x8000059c]:sw<br> |
|  80|[0x8000214c]<br>0x00050362|- rs1_val == 0x00051426 #nosat<br>                                                                      |[0x800005a8]:unshfli<br> [0x800005ac]:sw<br> |
|  81|[0x80002150]<br>0x01a0000e|- rs1_val == 0x00028854 #nosat<br>                                                                      |[0x800005b8]:unshfli<br> [0x800005bc]:sw<br> |
|  82|[0x80002154]<br>0x005f01ba|- rs1_val == 0x000167EE #nosat<br>                                                                      |[0x800005c8]:unshfli<br> [0x800005cc]:sw<br> |
|  83|[0x80002158]<br>0x00f700ec|- rs1_val == 0x0000FE7A #nosat<br>                                                                      |[0x800005d8]:unshfli<br> [0x800005dc]:sw<br> |
|  84|[0x8000215c]<br>0x003900e3|- rs1_val == 0x00005E87 #nosat<br>                                                                      |[0x800005e8]:unshfli<br> [0x800005ec]:sw<br> |
|  85|[0x80002160]<br>0x00490059|- rs1_val == 0x000031C3 #nosat<br>                                                                      |[0x800005f8]:unshfli<br> [0x800005fc]:sw<br> |
|  86|[0x80002164]<br>0x00270050|- rs1_val == 0x0000192A #nosat<br>                                                                      |[0x80000608]:unshfli<br> [0x8000060c]:sw<br> |
|  87|[0x80002168]<br>0x0036002d|- rs1_val == 0x00000E79 #nosat<br>                                                                      |[0x80000618]:unshfli<br> [0x8000061c]:sw<br> |
|  88|[0x8000216c]<br>0x0017003c|- rs1_val == 0x0000077A #nosat<br>                                                                      |[0x80000624]:unshfli<br> [0x80000628]:sw<br> |
|  89|[0x80002170]<br>0x00150005|- rs1_val == 0x00000233 #nosat<br>                                                                      |[0x80000630]:unshfli<br> [0x80000634]:sw<br> |
|  90|[0x80002174]<br>0x0000001d|- rs1_val == 0x00000151 #nosat<br>                                                                      |[0x8000063c]:unshfli<br> [0x80000640]:sw<br> |
|  91|[0x80002178]<br>0x000f0006|- rs1_val == 0x000000BE #nosat<br>                                                                      |[0x80000648]:unshfli<br> [0x8000064c]:sw<br> |
|  92|[0x8000217c]<br>0x0005000f|- rs1_val == 0x00000077 #nosat<br>                                                                      |[0x80000654]:unshfli<br> [0x80000658]:sw<br> |
|  93|[0x80002180]<br>0x00050000|- rs1_val == 0x00000022 #nosat<br>                                                                      |[0x80000660]:unshfli<br> [0x80000664]:sw<br> |
|  94|[0x80002184]<br>0x00010006|- rs1_val == 0x00000016 #nosat<br>                                                                      |[0x8000066c]:unshfli<br> [0x80000670]:sw<br> |
|  95|[0x80002188]<br>0x00030002|- rs1_val == 0x0000000E #nosat<br>                                                                      |[0x80000678]:unshfli<br> [0x8000067c]:sw<br> |
|  96|[0x8000218c]<br>0x00000002|- rs1_val == 0x00000004 #nosat<br>                                                                      |[0x80000684]:unshfli<br> [0x80000688]:sw<br> |
|  97|[0x80002190]<br>0x00010000|- rs1_val == 0x00000002 #nosat<br>                                                                      |[0x80000690]:unshfli<br> [0x80000694]:sw<br> |
|  98|[0x80002194]<br>0x00000001|- rs1_val == 0x00000001 #nosat<br>                                                                      |[0x8000069c]:unshfli<br> [0x800006a0]:sw<br> |
|  99|[0x80002198]<br>0x4cf394a0|- rs1_val == 0x61B0EE0A #nosat<br>                                                                      |[0x800006ac]:unshfli<br> [0x800006b0]:sw<br> |
| 100|[0x8000219c]<br>0xbdd64a01|- rs1_val == 0x9AE6A229 #nosat<br>                                                                      |[0x800006bc]:unshfli<br> [0x800006c0]:sw<br> |
| 101|[0x800021a0]<br>0xb7d7c850|- rs1_val == 0xDA6AB32A #nosat<br>                                                                      |[0x800006cc]:unshfli<br> [0x800006d0]:sw<br> |
| 102|[0x800021a4]<br>0xd85d911a|- rs1_val == 0xE38123E6 #nosat<br>                                                                      |[0x800006dc]:unshfli<br> [0x800006e0]:sw<br> |
| 103|[0x800021a8]<br>0xc598e512|- rs1_val == 0xF4338384 #nosat<br>                                                                      |[0x800006ec]:unshfli<br> [0x800006f0]:sw<br> |
| 104|[0x800021ac]<br>0xfb08d77b|- rs1_val == 0xFB9F15C5 #nosat<br>                                                                      |[0x800006fc]:unshfli<br> [0x80000700]:sw<br> |
| 105|[0x800021b0]<br>0xe622f827|- rs1_val == 0xFD680C1D #nosat<br>                                                                      |[0x8000070c]:unshfli<br> [0x80000710]:sw<br> |
| 106|[0x800021b4]<br>0xf4c3eeaf|- rs1_val == 0xFE74E45F #nosat<br>                                                                      |[0x8000071c]:unshfli<br> [0x80000720]:sw<br> |
| 107|[0x800021b8]<br>0xf33cf6dc|- rs1_val == 0xFF1E5BF0 #nosat<br>                                                                      |[0x8000072c]:unshfli<br> [0x80000730]:sw<br> |
| 108|[0x800021bc]<br>0xfa4df63b|- rs1_val == 0xFF9C25E7 #nosat<br>                                                                      |[0x8000073c]:unshfli<br> [0x80000740]:sw<br> |
| 109|[0x800021c0]<br>0xfbb1f9b5|- rs1_val == 0xFFCBCF13 #nosat<br>                                                                      |[0x8000074c]:unshfli<br> [0x80000750]:sw<br> |
| 110|[0x800021c4]<br>0xfc79f8b3|- rs1_val == 0xFFE06F87 #nosat<br>                                                                      |[0x8000075c]:unshfli<br> [0x80000760]:sw<br> |
| 111|[0x800021c8]<br>0xfda4ff85|- rs1_val == 0xFFF7C831 #nosat<br>                                                                      |[0x8000076c]:unshfli<br> [0x80000770]:sw<br> |
| 112|[0x800021cc]<br>0xff96fc7c|- rs1_val == 0xFFFA9778 #nosat<br>                                                                      |[0x8000077c]:unshfli<br> [0x80000780]:sw<br> |
| 113|[0x800021d0]<br>0xfef0fe9a|- rs1_val == 0xFFFCEB44 #nosat<br>                                                                      |[0x8000078c]:unshfli<br> [0x80000790]:sw<br> |
| 114|[0x800021d4]<br>0xff7ffe74|- rs1_val == 0xFFFE3FBA #nosat<br>                                                                      |[0x8000079c]:unshfli<br> [0x800007a0]:sw<br> |
| 115|[0x800021d8]<br>0xff12ff6c|- rs1_val == 0xFFFF1658 #nosat<br>                                                                      |[0x800007ac]:unshfli<br> [0x800007b0]:sw<br> |
| 116|[0x800021dc]<br>0xffe7ff24|- rs1_val == 0xFFFFAC3A #nosat<br>                                                                      |[0x800007bc]:unshfli<br> [0x800007c0]:sw<br> |
| 117|[0x800021e0]<br>0xffacffbc|- rs1_val == 0xFFFFCDF0 #nosat<br>                                                                      |[0x800007cc]:unshfli<br> [0x800007d0]:sw<br> |
| 118|[0x800021e4]<br>0xffd8ffa2|- rs1_val == 0xFFFFE684 #nosat<br>                                                                      |[0x800007dc]:unshfli<br> [0x800007e0]:sw<br> |
| 119|[0x800021e8]<br>0xffc9ffda|- rs1_val == 0xFFFFF1C6 #nosat<br>                                                                      |[0x800007ec]:unshfli<br> [0x800007f0]:sw<br> |
| 120|[0x800021ec]<br>0xffe1ffc2|- rs1_val == 0xFFFFF806 #nosat<br>                                                                      |[0x800007f8]:unshfli<br> [0x800007fc]:sw<br> |
| 121|[0x800021f0]<br>0xffe6ffec|- rs1_val == 0xFFFFFC78 #nosat<br>                                                                      |[0x80000804]:unshfli<br> [0x80000808]:sw<br> |
| 122|[0x800021f4]<br>0xfff7ffe5|- rs1_val == 0xFFFFFE3B #nosat<br>                                                                      |[0x80000810]:unshfli<br> [0x80000814]:sw<br> |
| 123|[0x800021f8]<br>0xfff3fffc|- rs1_val == 0xFFFFFF5A #nosat<br>                                                                      |[0x8000081c]:unshfli<br> [0x80000820]:sw<br> |
| 124|[0x800021fc]<br>0xfffafff0|- rs1_val == 0xFFFFFF88 #nosat<br>                                                                      |[0x80000828]:unshfli<br> [0x8000082c]:sw<br> |
| 125|[0x80002200]<br>0xfff8fff9|- rs1_val == 0xFFFFFFC1 #nosat<br>                                                                      |[0x80000834]:unshfli<br> [0x80000838]:sw<br> |
| 126|[0x80002204]<br>0xfffefff8|- rs1_val == 0xFFFFFFE8 #nosat<br>                                                                      |[0x80000840]:unshfli<br> [0x80000844]:sw<br> |
| 127|[0x80002208]<br>0xfffcfffd|- rs1_val == 0xFFFFFFF1 #nosat<br>                                                                      |[0x8000084c]:unshfli<br> [0x80000850]:sw<br> |
| 128|[0x8000220c]<br>0xfffefffd|- rs1_val == 0xFFFFFFF9 #nosat<br>                                                                      |[0x80000858]:unshfli<br> [0x8000085c]:sw<br> |
| 129|[0x80002210]<br>0xfffeffff|- rs1_val == 0xFFFFFFFD #nosat<br>                                                                      |[0x80000864]:unshfli<br> [0x80000868]:sw<br> |
| 130|[0x80002214]<br>0xfffffffe|- rs1_val == 0xFFFFFFFE #nosat<br>                                                                      |[0x80000870]:unshfli<br> [0x80000874]:sw<br> |
| 131|[0x80002218]<br>0x3700e400|- rs1_val == 0x5E3A0000 #nosat<br>                                                                      |[0x8000087c]:unshfli<br> [0x80000880]:sw<br> |
