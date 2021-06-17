
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000720')]      |
| SIG_REGION                | [('0x80002010', '0x80002080', '28 words')]      |
| COV_LABELS                | sm4ed      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ed-rwp1.S/ref.S    |
| Total Number of coverpoints| 348     |
| Total Coverpoints Hit     | 54      |
| Total Signature Updates   | 26      |
| STAT1                     | 26      |
| STAT2                     | 0      |
| STAT3                     | 78     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```
[0x80000128]:sm4ed

[0x8000012c]:sm4ed

[0x80000130]:sm4ed

[0x80000164]:sm4ed

[0x80000168]:sm4ed

[0x8000016c]:sm4ed

[0x800001a0]:sm4ed

[0x800001a4]:sm4ed

[0x800001a8]:sm4ed

[0x800001dc]:sm4ed

[0x800001e0]:sm4ed

[0x800001e4]:sm4ed

[0x80000218]:sm4ed

[0x8000021c]:sm4ed

[0x80000220]:sm4ed

[0x80000254]:sm4ed

[0x80000258]:sm4ed

[0x8000025c]:sm4ed

[0x80000290]:sm4ed

[0x80000294]:sm4ed

[0x80000298]:sm4ed

[0x800002cc]:sm4ed

[0x800002d0]:sm4ed

[0x800002d4]:sm4ed

[0x80000308]:sm4ed

[0x8000030c]:sm4ed

[0x80000310]:sm4ed

[0x80000344]:sm4ed

[0x80000348]:sm4ed

[0x8000034c]:sm4ed

[0x80000380]:sm4ed

[0x80000384]:sm4ed

[0x80000388]:sm4ed

[0x800003bc]:sm4ed

[0x800003c0]:sm4ed

[0x800003c4]:sm4ed

[0x800003f8]:sm4ed

[0x800003fc]:sm4ed

[0x80000400]:sm4ed

[0x80000434]:sm4ed

[0x80000438]:sm4ed

[0x8000043c]:sm4ed

[0x80000470]:sm4ed

[0x80000474]:sm4ed

[0x80000478]:sm4ed

[0x800004ac]:sm4ed

[0x800004b0]:sm4ed

[0x800004b4]:sm4ed

[0x800004e8]:sm4ed

[0x800004ec]:sm4ed

[0x800004f0]:sm4ed

[0x80000524]:sm4ed

[0x80000528]:sm4ed

[0x8000052c]:sm4ed

[0x80000560]:sm4ed

[0x80000564]:sm4ed

[0x80000568]:sm4ed

[0x8000059c]:sm4ed

[0x800005a0]:sm4ed

[0x800005a4]:sm4ed

[0x800005d8]:sm4ed

[0x800005dc]:sm4ed

[0x800005e0]:sm4ed

[0x80000614]:sm4ed

[0x80000618]:sm4ed

[0x8000061c]:sm4ed

[0x80000650]:sm4ed

[0x80000654]:sm4ed

[0x80000658]:sm4ed

[0x8000068c]:sm4ed

[0x80000690]:sm4ed

[0x80000694]:sm4ed

[0x800006c8]:sm4ed

[0x800006cc]:sm4ed

[0x800006d0]:sm4ed

[0x80000704]:sm4ed

[0x80000708]:sm4ed

[0x8000070c]:sm4ed



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

|s.no|        signature         |  coverpoints   |                   code                    |
|---:|--------------------------|----------------|-------------------------------------------|
|   1|[0x80002010]<br>0xe3da6920|- rs2 : x4<br>  |[0x80000134]:sm4ed<br> [0x80000138]:sw<br> |
|   2|[0x80002014]<br>0xb04162f5|- rs2 : x5<br>  |[0x80000170]:sm4ed<br> [0x80000174]:sw<br> |
|   3|[0x80002018]<br>0x0b22ccfe|- rs2 : x6<br>  |[0x800001ac]:sm4ed<br> [0x800001b0]:sw<br> |
|   4|[0x8000201c]<br>0xedacd5fd|- rs2 : x7<br>  |[0x800001e8]:sm4ed<br> [0x800001ec]:sw<br> |
|   5|[0x80002020]<br>0x9184c0c5|- rs2 : x8<br>  |[0x80000224]:sm4ed<br> [0x80000228]:sw<br> |
|   6|[0x80002024]<br>0x00515ea0|- rs2 : x9<br>  |[0x80000260]:sm4ed<br> [0x80000264]:sw<br> |
|   7|[0x80002028]<br>0x5060f7f0|- rs2 : x10<br> |[0x8000029c]:sm4ed<br> [0x800002a0]:sw<br> |
|   8|[0x8000202c]<br>0x2e59a22e|- rs2 : x11<br> |[0x800002d8]:sm4ed<br> [0x800002dc]:sw<br> |
|   9|[0x80002030]<br>0xd2d9e9b2|- rs2 : x12<br> |[0x80000314]:sm4ed<br> [0x80000318]:sw<br> |
|  10|[0x80002034]<br>0x1aea6973|- rs2 : x13<br> |[0x80000350]:sm4ed<br> [0x80000354]:sw<br> |
|  11|[0x80002038]<br>0x13ef5db6|- rs2 : x14<br> |[0x8000038c]:sm4ed<br> [0x80000390]:sw<br> |
|  12|[0x8000203c]<br>0x63282bda|- rs2 : x15<br> |[0x800003c8]:sm4ed<br> [0x800003cc]:sw<br> |
|  13|[0x80002040]<br>0x6de24f33|- rs2 : x16<br> |[0x80000404]:sm4ed<br> [0x80000408]:sw<br> |
|  14|[0x80002044]<br>0xb875fa66|- rs2 : x17<br> |[0x80000440]:sm4ed<br> [0x80000444]:sw<br> |
|  15|[0x80002048]<br>0xb3afe76e|- rs2 : x18<br> |[0x8000047c]:sm4ed<br> [0x80000480]:sw<br> |
|  16|[0x8000204c]<br>0xc1c0c640|- rs2 : x19<br> |[0x800004b8]:sm4ed<br> [0x800004bc]:sw<br> |
|  17|[0x80002050]<br>0xbecd3500|- rs2 : x20<br> |[0x800004f4]:sm4ed<br> [0x800004f8]:sw<br> |
|  18|[0x80002054]<br>0x7a8b6901|- rs2 : x21<br> |[0x80000530]:sm4ed<br> [0x80000534]:sw<br> |
|  19|[0x80002058]<br>0x1e43c3be|- rs2 : x22<br> |[0x8000056c]:sm4ed<br> [0x80000570]:sw<br> |
|  20|[0x8000205c]<br>0xa0eb31db|- rs2 : x23<br> |[0x800005a8]:sm4ed<br> [0x800005ac]:sw<br> |
|  21|[0x80002060]<br>0x81e4b25d|- rs2 : x24<br> |[0x800005e4]:sm4ed<br> [0x800005e8]:sw<br> |
|  22|[0x80002064]<br>0xa900d1cd|- rs2 : x25<br> |[0x80000620]:sm4ed<br> [0x80000624]:sw<br> |
|  23|[0x80002068]<br>0x7ee6ca4b|- rs2 : x26<br> |[0x8000065c]:sm4ed<br> [0x80000660]:sw<br> |
|  24|[0x8000206c]<br>0x03304c8e|- rs2 : x27<br> |[0x80000698]:sm4ed<br> [0x8000069c]:sw<br> |
|  25|[0x80002070]<br>0x827ec148|- rs2 : x28<br> |[0x800006d4]:sm4ed<br> [0x800006d8]:sw<br> |
|  26|[0x80002074]<br>0x19eda649|- rs2 : x29<br> |[0x80000710]:sm4ed<br> [0x80000714]:sw<br> |
