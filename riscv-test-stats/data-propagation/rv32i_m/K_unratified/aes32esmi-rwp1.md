
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
| COV_LABELS                | aes32esmi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes32esmi-rwp1.S/ref.S    |
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
[0x80000128]:aes32esmi

[0x8000012c]:aes32esmi

[0x80000130]:aes32esmi

[0x80000164]:aes32esmi

[0x80000168]:aes32esmi

[0x8000016c]:aes32esmi

[0x800001a0]:aes32esmi

[0x800001a4]:aes32esmi

[0x800001a8]:aes32esmi

[0x800001dc]:aes32esmi

[0x800001e0]:aes32esmi

[0x800001e4]:aes32esmi

[0x80000218]:aes32esmi

[0x8000021c]:aes32esmi

[0x80000220]:aes32esmi

[0x80000254]:aes32esmi

[0x80000258]:aes32esmi

[0x8000025c]:aes32esmi

[0x80000290]:aes32esmi

[0x80000294]:aes32esmi

[0x80000298]:aes32esmi

[0x800002cc]:aes32esmi

[0x800002d0]:aes32esmi

[0x800002d4]:aes32esmi

[0x80000308]:aes32esmi

[0x8000030c]:aes32esmi

[0x80000310]:aes32esmi

[0x80000344]:aes32esmi

[0x80000348]:aes32esmi

[0x8000034c]:aes32esmi

[0x80000380]:aes32esmi

[0x80000384]:aes32esmi

[0x80000388]:aes32esmi

[0x800003bc]:aes32esmi

[0x800003c0]:aes32esmi

[0x800003c4]:aes32esmi

[0x800003f8]:aes32esmi

[0x800003fc]:aes32esmi

[0x80000400]:aes32esmi

[0x80000434]:aes32esmi

[0x80000438]:aes32esmi

[0x8000043c]:aes32esmi

[0x80000470]:aes32esmi

[0x80000474]:aes32esmi

[0x80000478]:aes32esmi

[0x800004ac]:aes32esmi

[0x800004b0]:aes32esmi

[0x800004b4]:aes32esmi

[0x800004e8]:aes32esmi

[0x800004ec]:aes32esmi

[0x800004f0]:aes32esmi

[0x80000524]:aes32esmi

[0x80000528]:aes32esmi

[0x8000052c]:aes32esmi

[0x80000560]:aes32esmi

[0x80000564]:aes32esmi

[0x80000568]:aes32esmi

[0x8000059c]:aes32esmi

[0x800005a0]:aes32esmi

[0x800005a4]:aes32esmi

[0x800005d8]:aes32esmi

[0x800005dc]:aes32esmi

[0x800005e0]:aes32esmi

[0x80000614]:aes32esmi

[0x80000618]:aes32esmi

[0x8000061c]:aes32esmi

[0x80000650]:aes32esmi

[0x80000654]:aes32esmi

[0x80000658]:aes32esmi

[0x8000068c]:aes32esmi

[0x80000690]:aes32esmi

[0x80000694]:aes32esmi

[0x800006c8]:aes32esmi

[0x800006cc]:aes32esmi

[0x800006d0]:aes32esmi

[0x80000704]:aes32esmi

[0x80000708]:aes32esmi

[0x8000070c]:aes32esmi



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

|s.no|        signature         |  coverpoints   |                     code                      |
|---:|--------------------------|----------------|-----------------------------------------------|
|   1|[0x80002010]<br>0x8f426971|- rs2 : x4<br>  |[0x80000134]:aes32esmi<br> [0x80000138]:sw<br> |
|   2|[0x80002014]<br>0x51cd43f9|- rs2 : x5<br>  |[0x80000170]:aes32esmi<br> [0x80000174]:sw<br> |
|   3|[0x80002018]<br>0x3894c9ec|- rs2 : x6<br>  |[0x800001ac]:aes32esmi<br> [0x800001b0]:sw<br> |
|   4|[0x8000201c]<br>0xadaa05e6|- rs2 : x7<br>  |[0x800001e8]:aes32esmi<br> [0x800001ec]:sw<br> |
|   5|[0x80002020]<br>0x1f37008a|- rs2 : x8<br>  |[0x80000224]:aes32esmi<br> [0x80000228]:sw<br> |
|   6|[0x80002024]<br>0xa69051b8|- rs2 : x9<br>  |[0x80000260]:aes32esmi<br> [0x80000264]:sw<br> |
|   7|[0x80002028]<br>0xa23ca201|- rs2 : x10<br> |[0x8000029c]:aes32esmi<br> [0x800002a0]:sw<br> |
|   8|[0x8000202c]<br>0xd1824d7c|- rs2 : x11<br> |[0x800002d8]:aes32esmi<br> [0x800002dc]:sw<br> |
|   9|[0x80002030]<br>0xc3e14f3d|- rs2 : x12<br> |[0x80000314]:aes32esmi<br> [0x80000318]:sw<br> |
|  10|[0x80002034]<br>0x3b3a6ef9|- rs2 : x13<br> |[0x80000350]:aes32esmi<br> [0x80000354]:sw<br> |
|  11|[0x80002038]<br>0x1afb3981|- rs2 : x14<br> |[0x8000038c]:aes32esmi<br> [0x80000390]:sw<br> |
|  12|[0x8000203c]<br>0x47845934|- rs2 : x15<br> |[0x800003c8]:aes32esmi<br> [0x800003cc]:sw<br> |
|  13|[0x80002040]<br>0x771fe863|- rs2 : x16<br> |[0x80000404]:aes32esmi<br> [0x80000408]:sw<br> |
|  14|[0x80002044]<br>0xb3684647|- rs2 : x17<br> |[0x80000440]:aes32esmi<br> [0x80000444]:sw<br> |
|  15|[0x80002048]<br>0x292dd378|- rs2 : x18<br> |[0x8000047c]:aes32esmi<br> [0x80000480]:sw<br> |
|  16|[0x8000204c]<br>0xb58d630a|- rs2 : x19<br> |[0x800004b8]:aes32esmi<br> [0x800004bc]:sw<br> |
|  17|[0x80002050]<br>0x474014c1|- rs2 : x20<br> |[0x800004f4]:aes32esmi<br> [0x800004f8]:sw<br> |
|  18|[0x80002054]<br>0xd9dc1881|- rs2 : x21<br> |[0x80000530]:aes32esmi<br> [0x80000534]:sw<br> |
|  19|[0x80002058]<br>0xc5b5e463|- rs2 : x22<br> |[0x8000056c]:aes32esmi<br> [0x80000570]:sw<br> |
|  20|[0x8000205c]<br>0xd717a965|- rs2 : x23<br> |[0x800005a8]:aes32esmi<br> [0x800005ac]:sw<br> |
|  21|[0x80002060]<br>0x84f0cf93|- rs2 : x24<br> |[0x800005e4]:aes32esmi<br> [0x800005e8]:sw<br> |
|  22|[0x80002064]<br>0x3335630a|- rs2 : x25<br> |[0x80000620]:aes32esmi<br> [0x80000624]:sw<br> |
|  23|[0x80002068]<br>0x98d5450f|- rs2 : x26<br> |[0x8000065c]:aes32esmi<br> [0x80000660]:sw<br> |
|  24|[0x8000206c]<br>0xf6565ca8|- rs2 : x27<br> |[0x80000698]:aes32esmi<br> [0x8000069c]:sw<br> |
|  25|[0x80002070]<br>0x26b422b3|- rs2 : x28<br> |[0x800006d4]:aes32esmi<br> [0x800006d8]:sw<br> |
|  26|[0x80002074]<br>0xbdeb4ca8|- rs2 : x29<br> |[0x80000710]:aes32esmi<br> [0x80000714]:sw<br> |
