
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800015a0')]      |
| SIG_REGION                | [('0x80003010', '0x800030e0', '26 dwords')]      |
| COV_LABELS                | sm4ks      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ks-rwp1.S/ref.S    |
| Total Number of coverpoints| 220     |
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
[0x80000438]:sm4ks

[0x8000043c]:sm4ks

[0x80000440]:sm4ks

[0x800004e4]:sm4ks

[0x800004e8]:sm4ks

[0x800004ec]:sm4ks

[0x80000598]:sm4ks

[0x8000059c]:sm4ks

[0x800005a0]:sm4ks

[0x8000064c]:sm4ks

[0x80000650]:sm4ks

[0x80000654]:sm4ks

[0x800006f8]:sm4ks

[0x800006fc]:sm4ks

[0x80000700]:sm4ks

[0x800007ac]:sm4ks

[0x800007b0]:sm4ks

[0x800007b4]:sm4ks

[0x80000860]:sm4ks

[0x80000864]:sm4ks

[0x80000868]:sm4ks

[0x80000904]:sm4ks

[0x80000908]:sm4ks

[0x8000090c]:sm4ks

[0x800009b8]:sm4ks

[0x800009bc]:sm4ks

[0x800009c0]:sm4ks

[0x80000a6c]:sm4ks

[0x80000a70]:sm4ks

[0x80000a74]:sm4ks

[0x80000b18]:sm4ks

[0x80000b1c]:sm4ks

[0x80000b20]:sm4ks

[0x80000bcc]:sm4ks

[0x80000bd0]:sm4ks

[0x80000bd4]:sm4ks

[0x80000c78]:sm4ks

[0x80000c7c]:sm4ks

[0x80000c80]:sm4ks

[0x80000d2c]:sm4ks

[0x80000d30]:sm4ks

[0x80000d34]:sm4ks

[0x80000de0]:sm4ks

[0x80000de4]:sm4ks

[0x80000de8]:sm4ks

[0x80000e94]:sm4ks

[0x80000e98]:sm4ks

[0x80000e9c]:sm4ks

[0x80000f48]:sm4ks

[0x80000f4c]:sm4ks

[0x80000f50]:sm4ks

[0x80000ffc]:sm4ks

[0x80001000]:sm4ks

[0x80001004]:sm4ks

[0x800010a8]:sm4ks

[0x800010ac]:sm4ks

[0x800010b0]:sm4ks

[0x8000115c]:sm4ks

[0x80001160]:sm4ks

[0x80001164]:sm4ks

[0x80001208]:sm4ks

[0x8000120c]:sm4ks

[0x80001210]:sm4ks

[0x800012bc]:sm4ks

[0x800012c0]:sm4ks

[0x800012c4]:sm4ks

[0x80001370]:sm4ks

[0x80001374]:sm4ks

[0x80001378]:sm4ks

[0x8000141c]:sm4ks

[0x80001420]:sm4ks

[0x80001424]:sm4ks

[0x800014d0]:sm4ks

[0x800014d4]:sm4ks

[0x800014d8]:sm4ks

[0x80001584]:sm4ks

[0x80001588]:sm4ks

[0x8000158c]:sm4ks



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

|s.no|            signature             |  coverpoints   |                   code                    |
|---:|----------------------------------|----------------|-------------------------------------------|
|   1|[0x80003010]<br>0x000000000c28109a|- rs2 : x4<br>  |[0x80000444]:sm4ks<br> [0x80000448]:sd<br> |
|   2|[0x80003018]<br>0x00000000e6532c14|- rs2 : x5<br>  |[0x800004f0]:sm4ks<br> [0x800004f4]:sd<br> |
|   3|[0x80003020]<br>0x00000000b7203110|- rs2 : x6<br>  |[0x800005a4]:sm4ks<br> [0x800005a8]:sd<br> |
|   4|[0x80003028]<br>0x000000003abb6c4c|- rs2 : x7<br>  |[0x80000658]:sm4ks<br> [0x8000065c]:sd<br> |
|   5|[0x80003030]<br>0x000000002fd24baf|- rs2 : x8<br>  |[0x80000704]:sm4ks<br> [0x80000708]:sd<br> |
|   6|[0x80003038]<br>0x000000002cb5bc59|- rs2 : x9<br>  |[0x800007b8]:sm4ks<br> [0x800007bc]:sd<br> |
|   7|[0x80003040]<br>0x000000001492e616|- rs2 : x10<br> |[0x8000086c]:sm4ks<br> [0x80000870]:sd<br> |
|   8|[0x80003048]<br>0x00000000249767d0|- rs2 : x11<br> |[0x80000910]:sm4ks<br> [0x80000914]:sd<br> |
|   9|[0x80003050]<br>0x0000000021fb1859|- rs2 : x12<br> |[0x800009c4]:sm4ks<br> [0x800009c8]:sd<br> |
|  10|[0x80003058]<br>0x00000000e3c2b8b5|- rs2 : x13<br> |[0x80000a78]:sm4ks<br> [0x80000a7c]:sd<br> |
|  11|[0x80003060]<br>0x00000000e17be5cf|- rs2 : x14<br> |[0x80000b24]:sm4ks<br> [0x80000b28]:sd<br> |
|  12|[0x80003068]<br>0x00000000cb1a9046|- rs2 : x15<br> |[0x80000bd8]:sm4ks<br> [0x80000bdc]:sd<br> |
|  13|[0x80003070]<br>0x00000000281dabba|- rs2 : x16<br> |[0x80000c84]:sm4ks<br> [0x80000c88]:sd<br> |
|  14|[0x80003078]<br>0x00000000be8723c8|- rs2 : x17<br> |[0x80000d38]:sm4ks<br> [0x80000d3c]:sd<br> |
|  15|[0x80003080]<br>0x0000000055727f88|- rs2 : x18<br> |[0x80000dec]:sm4ks<br> [0x80000df0]:sd<br> |
|  16|[0x80003088]<br>0x00000000331fa0cc|- rs2 : x19<br> |[0x80000ea0]:sm4ks<br> [0x80000ea4]:sd<br> |
|  17|[0x80003090]<br>0x00000000dc87fc62|- rs2 : x20<br> |[0x80000f54]:sm4ks<br> [0x80000f58]:sd<br> |
|  18|[0x80003098]<br>0x00000000c94a02d5|- rs2 : x21<br> |[0x80001008]:sm4ks<br> [0x8000100c]:sd<br> |
|  19|[0x800030a0]<br>0x0000000051210727|- rs2 : x22<br> |[0x800010b4]:sm4ks<br> [0x800010b8]:sd<br> |
|  20|[0x800030a8]<br>0x000000003eee27ce|- rs2 : x23<br> |[0x80001168]:sm4ks<br> [0x8000116c]:sd<br> |
|  21|[0x800030b0]<br>0x00000000d9983185|- rs2 : x24<br> |[0x80001214]:sm4ks<br> [0x80001218]:sd<br> |
|  22|[0x800030b8]<br>0x0000000031362cdf|- rs2 : x25<br> |[0x800012c8]:sm4ks<br> [0x800012cc]:sd<br> |
|  23|[0x800030c0]<br>0x00000000488943a2|- rs2 : x26<br> |[0x8000137c]:sm4ks<br> [0x80001380]:sd<br> |
|  24|[0x800030c8]<br>0x00000000f29331f2|- rs2 : x27<br> |[0x80001428]:sm4ks<br> [0x8000142c]:sd<br> |
|  25|[0x800030d0]<br>0x000000008603e2ee|- rs2 : x28<br> |[0x800014dc]:sm4ks<br> [0x800014e0]:sd<br> |
|  26|[0x800030d8]<br>0x0000000062004df6|- rs2 : x29<br> |[0x80001590]:sm4ks<br> [0x80001594]:sd<br> |
