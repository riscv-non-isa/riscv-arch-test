
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
| COV_LABELS                | sm4ks      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ks-rwp1.S/ref.S    |
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
[0x80000128]:sm4ks

[0x8000012c]:sm4ks

[0x80000130]:sm4ks

[0x80000164]:sm4ks

[0x80000168]:sm4ks

[0x8000016c]:sm4ks

[0x800001a0]:sm4ks

[0x800001a4]:sm4ks

[0x800001a8]:sm4ks

[0x800001dc]:sm4ks

[0x800001e0]:sm4ks

[0x800001e4]:sm4ks

[0x80000218]:sm4ks

[0x8000021c]:sm4ks

[0x80000220]:sm4ks

[0x80000254]:sm4ks

[0x80000258]:sm4ks

[0x8000025c]:sm4ks

[0x80000290]:sm4ks

[0x80000294]:sm4ks

[0x80000298]:sm4ks

[0x800002cc]:sm4ks

[0x800002d0]:sm4ks

[0x800002d4]:sm4ks

[0x80000308]:sm4ks

[0x8000030c]:sm4ks

[0x80000310]:sm4ks

[0x80000344]:sm4ks

[0x80000348]:sm4ks

[0x8000034c]:sm4ks

[0x80000380]:sm4ks

[0x80000384]:sm4ks

[0x80000388]:sm4ks

[0x800003bc]:sm4ks

[0x800003c0]:sm4ks

[0x800003c4]:sm4ks

[0x800003f8]:sm4ks

[0x800003fc]:sm4ks

[0x80000400]:sm4ks

[0x80000434]:sm4ks

[0x80000438]:sm4ks

[0x8000043c]:sm4ks

[0x80000470]:sm4ks

[0x80000474]:sm4ks

[0x80000478]:sm4ks

[0x800004ac]:sm4ks

[0x800004b0]:sm4ks

[0x800004b4]:sm4ks

[0x800004e8]:sm4ks

[0x800004ec]:sm4ks

[0x800004f0]:sm4ks

[0x80000524]:sm4ks

[0x80000528]:sm4ks

[0x8000052c]:sm4ks

[0x80000560]:sm4ks

[0x80000564]:sm4ks

[0x80000568]:sm4ks

[0x8000059c]:sm4ks

[0x800005a0]:sm4ks

[0x800005a4]:sm4ks

[0x800005d8]:sm4ks

[0x800005dc]:sm4ks

[0x800005e0]:sm4ks

[0x80000614]:sm4ks

[0x80000618]:sm4ks

[0x8000061c]:sm4ks

[0x80000650]:sm4ks

[0x80000654]:sm4ks

[0x80000658]:sm4ks

[0x8000068c]:sm4ks

[0x80000690]:sm4ks

[0x80000694]:sm4ks

[0x800006c8]:sm4ks

[0x800006cc]:sm4ks

[0x800006d0]:sm4ks

[0x80000704]:sm4ks

[0x80000708]:sm4ks

[0x8000070c]:sm4ks



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
|   1|[0x80002010]<br>0xfdc9628c|- rs2 : x4<br>  |[0x80000134]:sm4ks<br> [0x80000138]:sw<br> |
|   2|[0x80002014]<br>0x1160f4e3|- rs2 : x5<br>  |[0x80000170]:sm4ks<br> [0x80000174]:sw<br> |
|   3|[0x80002018]<br>0x8cd60d19|- rs2 : x6<br>  |[0x800001ac]:sm4ks<br> [0x800001b0]:sw<br> |
|   4|[0x8000201c]<br>0xc152e334|- rs2 : x7<br>  |[0x800001e8]:sm4ks<br> [0x800001ec]:sw<br> |
|   5|[0x80002020]<br>0x14b15c43|- rs2 : x8<br>  |[0x80000224]:sm4ks<br> [0x80000228]:sw<br> |
|   6|[0x80002024]<br>0x1548484a|- rs2 : x9<br>  |[0x80000260]:sm4ks<br> [0x80000264]:sw<br> |
|   7|[0x80002028]<br>0x4325f19c|- rs2 : x10<br> |[0x8000029c]:sm4ks<br> [0x800002a0]:sw<br> |
|   8|[0x8000202c]<br>0xe7ae3894|- rs2 : x11<br> |[0x800002d8]:sm4ks<br> [0x800002dc]:sw<br> |
|   9|[0x80002030]<br>0xb7612210|- rs2 : x12<br> |[0x80000314]:sm4ks<br> [0x80000318]:sw<br> |
|  10|[0x80002034]<br>0x15a27a14|- rs2 : x13<br> |[0x80000350]:sm4ks<br> [0x80000354]:sw<br> |
|  11|[0x80002038]<br>0xb69b80b5|- rs2 : x14<br> |[0x8000038c]:sm4ks<br> [0x80000390]:sw<br> |
|  12|[0x8000203c]<br>0x627fcd12|- rs2 : x15<br> |[0x800003c8]:sm4ks<br> [0x800003cc]:sw<br> |
|  13|[0x80002040]<br>0xcd19a909|- rs2 : x16<br> |[0x80000404]:sm4ks<br> [0x80000408]:sw<br> |
|  14|[0x80002044]<br>0x7c532de8|- rs2 : x17<br> |[0x80000440]:sm4ks<br> [0x80000444]:sw<br> |
|  15|[0x80002048]<br>0x8882e392|- rs2 : x18<br> |[0x8000047c]:sm4ks<br> [0x80000480]:sw<br> |
|  16|[0x8000204c]<br>0xff6816c5|- rs2 : x19<br> |[0x800004b8]:sm4ks<br> [0x800004bc]:sw<br> |
|  17|[0x80002050]<br>0xa04d65a7|- rs2 : x20<br> |[0x800004f4]:sm4ks<br> [0x800004f8]:sw<br> |
|  18|[0x80002054]<br>0xbc5f643c|- rs2 : x21<br> |[0x80000530]:sm4ks<br> [0x80000534]:sw<br> |
|  19|[0x80002058]<br>0x6c94f8e3|- rs2 : x22<br> |[0x8000056c]:sm4ks<br> [0x80000570]:sw<br> |
|  20|[0x8000205c]<br>0x0a0b36d2|- rs2 : x23<br> |[0x800005a8]:sm4ks<br> [0x800005ac]:sw<br> |
|  21|[0x80002060]<br>0x94f48c11|- rs2 : x24<br> |[0x800005e4]:sm4ks<br> [0x800005e8]:sw<br> |
|  22|[0x80002064]<br>0x4797c780|- rs2 : x25<br> |[0x80000620]:sm4ks<br> [0x80000624]:sw<br> |
|  23|[0x80002068]<br>0x101951a0|- rs2 : x26<br> |[0x8000065c]:sm4ks<br> [0x80000660]:sw<br> |
|  24|[0x8000206c]<br>0xa6281314|- rs2 : x27<br> |[0x80000698]:sm4ks<br> [0x8000069c]:sw<br> |
|  25|[0x80002070]<br>0x1f88fdd3|- rs2 : x28<br> |[0x800006d4]:sm4ks<br> [0x800006d8]:sw<br> |
|  26|[0x80002074]<br>0x469bffa0|- rs2 : x29<br> |[0x80000710]:sm4ks<br> [0x80000714]:sw<br> |
