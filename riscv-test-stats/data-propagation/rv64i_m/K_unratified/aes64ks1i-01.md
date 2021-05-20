
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000780')]      |
| SIG_REGION                | [('0x80002010', '0x80002120', '34 dwords')]      |
| COV_LABELS                | aes64ks1i      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64ks1i-01.S/ref.S    |
| Total Number of coverpoints| 92     |
| Total Coverpoints Hit     | 87      |
| Total Signature Updates   | 34      |
| STAT1                     | 33      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000076c]:aes64ks1i
      [0x80000770]:sd
 -- Signature Address: 0x80002118 Data: 0x4780bd4a4780bd4a
 -- Redundant Coverpoints hit by the op
      - opcode : aes64ks1i
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0x3acdf61655d98c6e and imm_val == 0x3 #nosat






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

|s.no|            signature             |                                                             coverpoints                                                             |                     code                      |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
|   1|[0x80002010]<br>0x6d9d0a916d9d0a91|- opcode : aes64ks1i<br> - rs1 : x13<br> - rd : x5<br> - rs1 != rd<br> - rs1_val == 0x75a3adb3254a9493 and imm_val == 0x2 #nosat<br> |[0x800003b8]:aes64ks1i<br> [0x800003bc]:sd<br> |
|   2|[0x80002018]<br>0xbca32d60bca32d60|- rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - rs1_val == 0x71fad878b369e102 and imm_val == 0x0 #nosat<br>                         |[0x800003e0]:aes64ks1i<br> [0x800003e4]:sd<br> |
|   3|[0x80002020]<br>0xb649a998b649a998|- rs1 : x16<br> - rd : x13<br> - rs1_val == 0xa4b7f979a8e45869 and imm_val == 0x0 #nosat<br>                                         |[0x80000408]:aes64ks1i<br> [0x8000040c]:sd<br> |
|   4|[0x80002028]<br>0x6b2b75f46b2b75f4|- rs1 : x2<br> - rd : x4<br> - rs1_val == 0x0b3fd605358a9235 and imm_val == 0x1 #nosat<br>                                           |[0x80000430]:aes64ks1i<br> [0x80000434]:sd<br> |
|   5|[0x80002030]<br>0x76e7170076e71700|- rs1 : x1<br> - rd : x14<br> - rs1_val == 0xb0873a0f0334fcca and imm_val == 0x7 #nosat<br>                                          |[0x80000450]:aes64ks1i<br> [0x80000454]:sd<br> |
|   6|[0x80002038]<br>0x95398f7e95398f7e|- rs1 : x20<br> - rd : x19<br> - rs1_val == 0x5b730cad91766f62 and imm_val == 0x7 #nosat<br>                                         |[0x80000478]:aes64ks1i<br> [0x8000047c]:sd<br> |
|   7|[0x80002040]<br>0xcfa978b8cfa978b8|- rs1 : x12<br> - rd : x28<br> - rs1_val == 0xb7c1fc5f1efa1095 and imm_val == 0x3 #nosat<br>                                         |[0x800004a0]:aes64ks1i<br> [0x800004a4]:sd<br> |
|   8|[0x80002048]<br>0x283fe4ec283fe4ec|- rs1 : x8<br> - rd : x15<br> - rs1_val == 0x25ae27ee4113ee60 and imm_val == 0x5 #nosat<br>                                          |[0x800004c8]:aes64ks1i<br> [0x800004cc]:sd<br> |
|   9|[0x80002050]<br>0x6363632363636323|- rs1 : x0<br> - rd : x6<br>                                                                                                         |[0x800004d4]:aes64ks1i<br> [0x800004d8]:sd<br> |
|  10|[0x80002058]<br>0xcd16b8efcd16b8ef|- rs1 : x29<br> - rd : x21<br> - rs1_val == 0xff9a1b805ced7e2e and imm_val == 0x6 #nosat<br>                                         |[0x800004f4]:aes64ks1i<br> [0x800004f8]:sd<br> |
|  11|[0x80002060]<br>0x248893fd248893fd|- rs1 : x26<br> - rd : x30<br> - rs1_val == 0x9722c9a6b0942992 and imm_val == 0x5 #nosat<br>                                         |[0x8000051c]:aes64ks1i<br> [0x80000520]:sd<br> |
|  12|[0x80002068]<br>0x121455ab121455ab|- rs1 : x23<br> - rd : x27<br> - rs1_val == 0x9bedfe390d6ddd9d and imm_val == 0x4 #nosat<br>                                         |[0x80000544]:aes64ks1i<br> [0x80000548]:sd<br> |
|  13|[0x80002070]<br>0x410e5b1a410e5b1a|- rs1 : x31<br> - rd : x29<br> - rs1_val == 0xd75739f82ac177c6 and imm_val == 0x3 #nosat<br>                                         |[0x8000056c]:aes64ks1i<br> [0x80000570]:sd<br> |
|  14|[0x80002078]<br>0x3f60df463f60df46|- rs1 : x19<br> - rd : x22<br> - rs1_val == 0x90efb625d9fbcdb5 and imm_val == 0x3 #nosat<br>                                         |[0x80000594]:aes64ks1i<br> [0x80000598]:sd<br> |
|  15|[0x80002080]<br>0x12d06ffd12d06ffd|- rs1 : x24<br> - rd : x18<br> - rs1_val == 0x60067d39d169a3f8 and imm_val == 0x1 #nosat<br>                                         |[0x800005bc]:aes64ks1i<br> [0x800005c0]:sd<br> |
|  16|[0x80002088]<br>0x4a0356fb4a0356fb|- rs1 : x6<br> - rd : x26<br> - rs1_val == 0xd5b9fe5cf69bdcf3 and imm_val == 0x6 #nosat<br>                                          |[0x800005e4]:aes64ks1i<br> [0x800005e8]:sd<br> |
|  17|[0x80002090]<br>0xac6a0312ac6a0312|- rs1 : x14<br> - rd : x2<br> - rs1_val == 0x58d548aae4921bf7 and imm_val == 0x6 #nosat<br>                                          |[0x8000060c]:aes64ks1i<br> [0x80000610]:sd<br> |
|  18|[0x80002098]<br>0xc6d879b0c6d879b0|- rs1 : x28<br> - rd : x9<br> - rs1_val == 0x2daf9ac7f5faf207 and imm_val == 0x3 #nosat<br>                                          |[0x80000634]:aes64ks1i<br> [0x80000638]:sd<br> |
|  19|[0x800020a0]<br>0x0000000000000000|- rs1 : x7<br> - rd : x0<br> - rs1_val == 0x3acdf61655d98c6e and imm_val == 0x3 #nosat<br>                                           |[0x8000065c]:aes64ks1i<br> [0x80000660]:sd<br> |
|  20|[0x800020a8]<br>0x891aa801891aa801|- rs1 : x30<br> - rd : x10<br> - rs1_val == 0x436f40f274b8de87 and imm_val == 0x3 #nosat<br>                                         |[0x80000684]:aes64ks1i<br> [0x80000688]:sd<br> |
|  21|[0x800020b0]<br>0x6363636263636362|- rs1 : x11<br> - rd : x7<br>                                                                                                        |[0x80000698]:aes64ks1i<br> [0x8000069c]:sd<br> |
|  22|[0x800020b8]<br>0x6363636263636362|- rs1 : x3<br> - rd : x1<br>                                                                                                         |[0x800006a4]:aes64ks1i<br> [0x800006a8]:sd<br> |
|  23|[0x800020c0]<br>0x6363636263636362|- rs1 : x18<br> - rd : x24<br>                                                                                                       |[0x800006b0]:aes64ks1i<br> [0x800006b4]:sd<br> |
|  24|[0x800020c8]<br>0x6363636263636362|- rs1 : x21<br> - rd : x31<br>                                                                                                       |[0x800006bc]:aes64ks1i<br> [0x800006c0]:sd<br> |
|  25|[0x800020d0]<br>0x6363636263636362|- rs1 : x22<br> - rd : x11<br>                                                                                                       |[0x800006c8]:aes64ks1i<br> [0x800006cc]:sd<br> |
|  26|[0x800020d8]<br>0x6363636263636362|- rs1 : x17<br> - rd : x23<br>                                                                                                       |[0x800006d4]:aes64ks1i<br> [0x800006d8]:sd<br> |
|  27|[0x800020e0]<br>0x6363636263636362|- rs1 : x27<br> - rd : x3<br>                                                                                                        |[0x800006e0]:aes64ks1i<br> [0x800006e4]:sd<br> |
|  28|[0x800020e8]<br>0x6363636263636362|- rs1 : x4<br> - rd : x8<br>                                                                                                         |[0x800006ec]:aes64ks1i<br> [0x800006f0]:sd<br> |
|  29|[0x800020f0]<br>0x6363636263636362|- rs1 : x15<br> - rd : x20<br>                                                                                                       |[0x800006f8]:aes64ks1i<br> [0x800006fc]:sd<br> |
|  30|[0x800020f8]<br>0x6363636263636362|- rs1 : x5<br> - rd : x16<br>                                                                                                        |[0x80000704]:aes64ks1i<br> [0x80000708]:sd<br> |
|  31|[0x80002100]<br>0x6363636263636362|- rs1 : x10<br> - rd : x12<br>                                                                                                       |[0x80000710]:aes64ks1i<br> [0x80000714]:sd<br> |
|  32|[0x80002108]<br>0x6363636263636362|- rs1 : x9<br> - rd : x17<br>                                                                                                        |[0x8000071c]:aes64ks1i<br> [0x80000720]:sd<br> |
|  33|[0x80002110]<br>0x0a11bff00a11bff0|- rs1_val == 0xe3f4fca319f046a5 and imm_val == 0x6 #nosat<br>                                                                        |[0x80000744]:aes64ks1i<br> [0x80000748]:sd<br> |
