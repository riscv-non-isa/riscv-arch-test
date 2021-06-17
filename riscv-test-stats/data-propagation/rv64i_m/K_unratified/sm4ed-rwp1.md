
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
| COV_LABELS                | sm4ed      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sm4ed-rwp1.S/ref.S    |
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
[0x80000438]:sm4ed

[0x8000043c]:sm4ed

[0x80000440]:sm4ed

[0x800004e4]:sm4ed

[0x800004e8]:sm4ed

[0x800004ec]:sm4ed

[0x80000598]:sm4ed

[0x8000059c]:sm4ed

[0x800005a0]:sm4ed

[0x8000064c]:sm4ed

[0x80000650]:sm4ed

[0x80000654]:sm4ed

[0x800006f8]:sm4ed

[0x800006fc]:sm4ed

[0x80000700]:sm4ed

[0x800007ac]:sm4ed

[0x800007b0]:sm4ed

[0x800007b4]:sm4ed

[0x80000860]:sm4ed

[0x80000864]:sm4ed

[0x80000868]:sm4ed

[0x80000904]:sm4ed

[0x80000908]:sm4ed

[0x8000090c]:sm4ed

[0x800009b8]:sm4ed

[0x800009bc]:sm4ed

[0x800009c0]:sm4ed

[0x80000a6c]:sm4ed

[0x80000a70]:sm4ed

[0x80000a74]:sm4ed

[0x80000b18]:sm4ed

[0x80000b1c]:sm4ed

[0x80000b20]:sm4ed

[0x80000bcc]:sm4ed

[0x80000bd0]:sm4ed

[0x80000bd4]:sm4ed

[0x80000c78]:sm4ed

[0x80000c7c]:sm4ed

[0x80000c80]:sm4ed

[0x80000d2c]:sm4ed

[0x80000d30]:sm4ed

[0x80000d34]:sm4ed

[0x80000de0]:sm4ed

[0x80000de4]:sm4ed

[0x80000de8]:sm4ed

[0x80000e94]:sm4ed

[0x80000e98]:sm4ed

[0x80000e9c]:sm4ed

[0x80000f48]:sm4ed

[0x80000f4c]:sm4ed

[0x80000f50]:sm4ed

[0x80000ffc]:sm4ed

[0x80001000]:sm4ed

[0x80001004]:sm4ed

[0x800010a8]:sm4ed

[0x800010ac]:sm4ed

[0x800010b0]:sm4ed

[0x8000115c]:sm4ed

[0x80001160]:sm4ed

[0x80001164]:sm4ed

[0x80001208]:sm4ed

[0x8000120c]:sm4ed

[0x80001210]:sm4ed

[0x800012bc]:sm4ed

[0x800012c0]:sm4ed

[0x800012c4]:sm4ed

[0x80001370]:sm4ed

[0x80001374]:sm4ed

[0x80001378]:sm4ed

[0x8000141c]:sm4ed

[0x80001420]:sm4ed

[0x80001424]:sm4ed

[0x800014d0]:sm4ed

[0x800014d4]:sm4ed

[0x800014d8]:sm4ed

[0x80001584]:sm4ed

[0x80001588]:sm4ed

[0x8000158c]:sm4ed



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
|   1|[0x80003010]<br>0x000000004591d4d6|- rs2 : x4<br>  |[0x80000444]:sm4ed<br> [0x80000448]:sd<br> |
|   2|[0x80003018]<br>0x0000000068d4a091|- rs2 : x5<br>  |[0x800004f0]:sm4ed<br> [0x800004f4]:sd<br> |
|   3|[0x80003020]<br>0x00000000055fc122|- rs2 : x6<br>  |[0x800005a4]:sm4ed<br> [0x800005a8]:sd<br> |
|   4|[0x80003028]<br>0x000000000348bb8c|- rs2 : x7<br>  |[0x80000658]:sm4ed<br> [0x8000065c]:sd<br> |
|   5|[0x80003030]<br>0x0000000065d2b9db|- rs2 : x8<br>  |[0x80000704]:sm4ed<br> [0x80000708]:sd<br> |
|   6|[0x80003038]<br>0x000000001eb7e4d0|- rs2 : x9<br>  |[0x800007b8]:sm4ed<br> [0x800007bc]:sd<br> |
|   7|[0x80003040]<br>0x00000000461020b4|- rs2 : x10<br> |[0x8000086c]:sm4ed<br> [0x80000870]:sd<br> |
|   8|[0x80003048]<br>0x000000002094b1a4|- rs2 : x11<br> |[0x80000910]:sm4ed<br> [0x80000914]:sd<br> |
|   9|[0x80003050]<br>0x00000000e0d19134|- rs2 : x12<br> |[0x800009c4]:sm4ed<br> [0x800009c8]:sd<br> |
|  10|[0x80003058]<br>0x0000000061d2a158|- rs2 : x13<br> |[0x80000a78]:sm4ed<br> [0x80000a7c]:sd<br> |
|  11|[0x80003060]<br>0x00000000a85e3a29|- rs2 : x14<br> |[0x80000b24]:sm4ed<br> [0x80000b28]:sd<br> |
|  12|[0x80003068]<br>0x000000004702a286|- rs2 : x15<br> |[0x80000bd8]:sm4ed<br> [0x80000bdc]:sd<br> |
|  13|[0x80003070]<br>0x000000004a7d716d|- rs2 : x16<br> |[0x80000c84]:sm4ed<br> [0x80000c88]:sd<br> |
|  14|[0x80003078]<br>0x00000000c022d77e|- rs2 : x17<br> |[0x80000d38]:sm4ed<br> [0x80000d3c]:sd<br> |
|  15|[0x80003080]<br>0x000000007a2fdfd2|- rs2 : x18<br> |[0x80000dec]:sm4ed<br> [0x80000df0]:sd<br> |
|  16|[0x80003088]<br>0x00000000cae8ca49|- rs2 : x19<br> |[0x80000ea0]:sm4ed<br> [0x80000ea4]:sd<br> |
|  17|[0x80003090]<br>0x00000000d12f7a1b|- rs2 : x20<br> |[0x80000f54]:sm4ed<br> [0x80000f58]:sd<br> |
|  18|[0x80003098]<br>0x0000000042be5d4e|- rs2 : x21<br> |[0x80001008]:sm4ed<br> [0x8000100c]:sd<br> |
|  19|[0x800030a0]<br>0x00000000d840701d|- rs2 : x22<br> |[0x800010b4]:sm4ed<br> [0x800010b8]:sd<br> |
|  20|[0x800030a8]<br>0x00000000f848c5c4|- rs2 : x23<br> |[0x80001168]:sm4ed<br> [0x8000116c]:sd<br> |
|  21|[0x800030b0]<br>0x00000000586edf94|- rs2 : x24<br> |[0x80001214]:sm4ed<br> [0x80001218]:sd<br> |
|  22|[0x800030b8]<br>0x0000000079c264f9|- rs2 : x25<br> |[0x800012c8]:sm4ed<br> [0x800012cc]:sd<br> |
|  23|[0x800030c0]<br>0x000000003eacc2da|- rs2 : x26<br> |[0x8000137c]:sm4ed<br> [0x80001380]:sd<br> |
|  24|[0x800030c8]<br>0x0000000030e75484|- rs2 : x27<br> |[0x80001428]:sm4ed<br> [0x8000142c]:sd<br> |
|  25|[0x800030d0]<br>0x00000000fb4c88b9|- rs2 : x28<br> |[0x800014dc]:sm4ed<br> [0x800014e0]:sd<br> |
|  26|[0x800030d8]<br>0x000000008f75a8a6|- rs2 : x29<br> |[0x80001590]:sm4ed<br> [0x80001594]:sd<br> |
